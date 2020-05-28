Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DC21E59AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:47:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e21RlHU32qYnKGvpCzuelB6raSVwTWLG4bl9b9T5+cc=; b=enD7kuSFlk+BV6
	2PxAOAqUt/Y7ugJIU5AbAi+Zw27xRMJhdc72ddNvW0Jki3grFUIAhsZmKjBlAZh+5xFD7PD0hpQkD
	S3Owl0Z2j5OIa3QV8JYRFrbSTpH7AqUI0chD/WKoFZQGyZ9Sx4E9JqUzN2dtns8S0SsCHwPtCbbX7
	tWXuPwTCr2yzwd1JMzCsWATJf804sXWbAeV9VeMIyfBAFH/SLlnZlDQ929IoGcVRtIs/YXgLVrZxC
	8l2DXdo86r9hf1z10UVrRL58QEC0ReNRjkk6pCTkq/FZ4czdYO1RKJEhUcqLIAGgAgTavPRjw0zAZ
	7vAw85loywOFcLvXRHFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDFj-0007Py-FK; Thu, 28 May 2020 07:46:59 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDDO-0002ok-W7; Thu, 28 May 2020 07:44:37 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D494069D223870CB3645;
 Thu, 28 May 2020 15:44:24 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Thu, 28 May 2020 15:44:15 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi83@gmail.com>, Ryder Lee <ryder.lee@mediatek.com>, "Kalle
 Valo" <kvalo@codeaurora.org>, Jakub Kicinski <kuba@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Sean Wang <sean.wang@mediatek.com>
Subject: [PATCH] mt76: mt7615: Use kmemdup in mt7615_queue_key_update()
Date: Thu, 28 May 2020 07:48:56 +0000
Message-ID: <20200528074856.118279-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_004435_210052_04B4B73F 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: YueHaibing <yuehaibing@huawei.com>, kernel-janitors@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use kmemdup rather than duplicating its implementation

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/wireless/mediatek/mt76/mt7615/main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index 2e9e9d3519d7..c32f06c85f0f 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -289,12 +289,11 @@ mt7615_queue_key_update(struct mt7615_dev *dev, enum set_key_cmd cmd,
 	wd->type = MT7615_WTBL_KEY_DESC;
 	wd->sta = msta;
 
-	wd->key.key = kzalloc(key->keylen, GFP_KERNEL);
+	wd->key.key = kmemdup(key->key, key->keylen, GFP_KERNEL);
 	if (!wd->key.key) {
 		kfree(wd);
 		return -ENOMEM;
 	}
-	memcpy(wd->key.key, key->key, key->keylen);
 	wd->key.cipher = key->cipher;
 	wd->key.keyidx = key->keyidx;
 	wd->key.keylen = key->keylen;




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
