# init_db.py (Dengan Perbaikan Koneksi & Transaksi)

from app import app, db, User
from sqlalchemy import text, inspect

# --- DATA PENGGUNA AWAL ---
INITIAL_USERS = [
    {
        "username": "Admin",
        "password": "Admin123!!",
        "role": "admin"
    }
]

# Fungsi untuk inisialisasi database
def initialize_database():
    with app.app_context():
        print("Memulai inisialisasi database...")
        
        # Menggunakan satu koneksi dan transaksi untuk semua operasi
        with db.engine.connect() as connection:
            # Memulai transaksi
            trans = connection.begin()
            
            try:
                print("Menonaktifkan pengecekan foreign key...")
                connection.execute(text('SET FOREIGN_KEY_CHECKS=0;'))

                # [MODIFIKASI] Dapatkan semua nama tabel dari metadata dan hapus satu per satu
                inspector = inspect(db.engine)
                tables = inspector.get_table_names()
                print(f"Menemukan tabel: {', '.join(tables)}. Menghapus...")
                for table in reversed(tables): # Dihapus dengan urutan terbalik untuk keamanan
                     connection.execute(text(f'DROP TABLE IF EXISTS `{table}`;'))

                print("Mengaktifkan kembali pengecekan foreign key...")
                connection.execute(text('SET FOREIGN_KEY_CHECKS=1;'))
                
                # Commit transaksi jika semua berhasil
                trans.commit()
                print("Semua tabel lama berhasil dihapus.")

            except Exception as e:
                # Batalkan semua perubahan jika terjadi error
                trans.rollback()
                print(f"Terjadi error saat menghapus tabel: {e}")
                return

        # Membuat tabel baru di luar koneksi manual
        print("Membuat semua tabel baru...")
        db.create_all()

        print("Menambahkan pengguna awal...")
        for user_data in INITIAL_USERS:
            existing_user = User.query.filter_by(username=user_data['username']).first()
            if not existing_user:
                new_user = User(
                    username=user_data['username'],
                    role=user_data['role']
                )
                new_user.set_password(user_data['password'])
                db.session.add(new_user)
        
        db.session.commit()
        print(f">>> Database berhasil diinisialisasi dengan {len(INITIAL_USERS)} pengguna awal. <<<")
        print(">>> Akun 'Admin' dengan password 'Admin123!!' siap digunakan. <<<")

# Menjalankan fungsi saat script dieksekusi
if __name__ == '__main__':
    initialize_database()