Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5057817902D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 13:20:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZeWlh9sh69tdxOJKU92KqPqoSTpaAhN+ID1IW/oY3BU=; b=W1alUgdTCrGDdF
	RB28p61MnUc9YBUppkGNGPM1tU4b62c/in2iap93xVL4bvgtqeqAMvtLSnMoUevUj0E+jtD0Qlxpi
	RgyUaurEsOY5oTnWO+QYzuKWxW/s2QpGZSZ0LRQZauxe1txBOwHYho19oSZCfWUJe6lrlAh2Ryn+w
	DH7CbjL6T0IXobQgQT17qPzHyeDwVg/EfkJuZL3oKBdU/MMVnlbKkJw/+t1rKJXWkmvRvZokjb0ZC
	pYQKdeNPDMoXvGkbFCCuAeM2y/8tLaBCUnZfCc2Qtt7qFFMB+8GA6dv8V0OxxBWbo+YuSmUKo9fTm
	Ut4CimGBWLa1nCxl18wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9T0N-0002Kl-06; Wed, 04 Mar 2020 12:20:03 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9T09-0002Jj-VM; Wed, 04 Mar 2020 12:19:51 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id BB74A70B5BC42A7D5B3D;
 Wed,  4 Mar 2020 20:19:38 +0800 (CST)
Received: from euler.huawei.com (10.175.104.193) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.439.0; Wed, 4 Mar 2020 20:19:30 +0800
From: Chen Wandun <chenwandun@huawei.com>
To: <nbd@nbd.name>, <lorenzo.bianconi83@gmail.com>, <ryder.lee@mediatek.com>, 
 <linux-wireless@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] mt76: remove variable 'val' set but not used
Date: Wed, 4 Mar 2020 20:34:11 +0800
Message-ID: <20200304123411.33499-1-chenwandun@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.193]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_041950_174158_5B5374E0 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: chenwandun@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/net/wireless/mediatek/mt76/mt76x0/phy.c: In function mt76x0_phy_rf_init:
drivers/net/wireless/mediatek/mt76/mt76x0/phy.c:1158:5: warning: variable val set but not used [-Wunused-but-set-variable]

Fixes: 10de7a8b4ab9 ("mt76x0: phy files")
Signed-off-by: Chen Wandun <chenwandun@huawei.com>
---
 drivers/net/wireless/mediatek/mt76/mt76x0/phy.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/phy.c b/drivers/net/wireless/mediatek/mt76/mt76x0/phy.c
index b56397c05218..09f34deb6ba1 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76x0/phy.c
+++ b/drivers/net/wireless/mediatek/mt76/mt76x0/phy.c
@@ -1155,7 +1155,6 @@ static void mt76x0_rf_patch_reg_array(struct mt76x02_dev *dev,
 static void mt76x0_phy_rf_init(struct mt76x02_dev *dev)
 {
 	int i;
-	u8 val;
 
 	mt76x0_rf_patch_reg_array(dev, mt76x0_rf_central_tab,
 				  ARRAY_SIZE(mt76x0_rf_central_tab));
@@ -1188,7 +1187,7 @@ static void mt76x0_phy_rf_init(struct mt76x02_dev *dev)
 	 */
 	mt76x0_rf_wr(dev, MT_RF(0, 22),
 		     min_t(u8, dev->cal.rx.freq_offset, 0xbf));
-	val = mt76x0_rf_rr(dev, MT_RF(0, 22));
+	mt76x0_rf_rr(dev, MT_RF(0, 22));
 
 	/* Reset procedure DAC during power-up:
 	 * - set B0.R73<7>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
