Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9EF67A12
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 14:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUks5visKgzc1QcEhIGGbARnX9X2wLainBDZ81l+BSc=; b=PM6hpYG5P+G989
	lxBV83GyikC5g/9nKEIY1CCU083KfxN/Y3QMZNS9Dvkn9rV985ru/iRS78mdov6DbZuvaQ4VfKxyu
	GK8mUB+hz2lJJYkMwnjXx15POxko1ZdL9lctshjB+w1A0YIdhSU/j/hTIGaBaQHhBBN5OqP1P8aDU
	913oGilkt1LCc4vXebyIAJnlJbPO6pBdhywU4pFGnngzjE+1H2/WQVzN63vYPTKgrZ59REk7sRexL
	2NhYRMPwpH6Xc483/N2OIlrx7v3HsWLPwL7iD9S/5DsVh7Ta7ThEsOsqxHCT5UsDJ7PkuLwqPa5oi
	MLSGxm4wnLrQJtavQGEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmGlR-0007wV-Fd; Sat, 13 Jul 2019 12:04:29 +0000
Received: from mailoutvs41.siol.net ([185.57.226.232] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmGl5-0007k6-2I
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jul 2019 12:04:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id C04B8520797;
 Sat, 13 Jul 2019 14:04:01 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 9JqdsLTKX2Ig; Sat, 13 Jul 2019 14:04:01 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 7B44B5214F8;
 Sat, 13 Jul 2019 14:04:01 +0200 (CEST)
Received: from localhost.localdomain (cpe-194-152-11-237.cable.triera.net
 [194.152.11.237]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id 0A2A9520797;
 Sat, 13 Jul 2019 14:03:59 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: maxime.ripard@bootlin.com,
	wens@csie.org
Subject: [PATCH 2/3] drm/sun4i: sun8i_csc: Simplify register writes
Date: Sat, 13 Jul 2019 14:03:45 +0200
Message-Id: <20190713120346.30349-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190713120346.30349-1-jernej.skrabec@siol.net>
References: <20190713120346.30349-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_050407_276152_DBBAFBE6 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It turns out addition of 0x200 to constant parts (+0.5) is not really
necessary. Besides, we can consider that before and fix value in CSC
matrix.

This simplifies register writes quiet a bit.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/gpu/drm/sun4i/sun8i_csc.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_csc.c b/drivers/gpu/drm/sun4i/sun8i_csc.c
index b8c059f1a118..e07b7876d89b 100644
--- a/drivers/gpu/drm/sun4i/sun8i_csc.c
+++ b/drivers/gpu/drm/sun4i/sun8i_csc.c
@@ -69,7 +69,7 @@ static void sun8i_csc_set_coefficients(struct regmap *map, u32 base,
 				       enum sun8i_csc_mode mode)
 {
 	const u32 *table;
-	int i, data;
+	u32 base_reg;
 
 	switch (mode) {
 	case SUN8I_CSC_MODE_YUV2RGB:
@@ -83,13 +83,8 @@ static void sun8i_csc_set_coefficients(struct regmap *map, u32 base,
 		return;
 	}
 
-	for (i = 0; i < 12; i++) {
-		data = table[i];
-		/* For some reason, 0x200 must be added to constant parts */
-		if (((i + 1) & 3) == 0)
-			data += 0x200;
-		regmap_write(map, SUN8I_CSC_COEFF(base, i), data);
-	}
+	base_reg = SUN8I_CSC_COEFF(base, 0);
+	regmap_bulk_write(map, base_reg, table, 12);
 }
 
 static void sun8i_de3_ccsc_set_coefficients(struct regmap *map, int layer,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
