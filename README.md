# FirstImportTest
初回起動のインポート時にシェーダ名が取れない問題のテスト

`OnPostprocessModel` インポートしたfbxのマテリアルからシェーダ名を取得する場合、Libraryが作られていない状態(初回起動時)ではシェーダ名ではなくシェーダのファイル名が返ってくる(Unity 5.6.4p4)
