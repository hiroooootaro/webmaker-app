class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '美容 ・健康' },
    { id: 3, name: 'コンサルティング' },
    { id: 4, name: 'サービス' },
    { id: 5, name: 'アート ・デザイン' },
    { id: 6, name: '写真・ポートフォリオ' },
    { id: 7, name: 'ネットショップ' },
    { id: 8, name: 'バー ・ レストラン' },
    { id: 9, name: '観光事業' },
    { id: 10, name: '住まい ・ガーデン' },
    { id: 11, name: 'ファッション'},
    { id: 12, name: 'コミュニティ・クラブ'},
    { id: 13, name: '個人向け'},
    { id: 14, name: 'ブログ'},
    { id: 15, name: 'その他'},
  ]
end
