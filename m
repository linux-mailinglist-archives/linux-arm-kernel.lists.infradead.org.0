Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4EF2244D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 19:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kloiuJaVWW8WAWjhapbv4eP8qh8yxBFmi1u1IM8nPkM=; b=ef3PQwoJK0c0oH
	sMygu4xKV/zwL9ArIEt2rIZN8rZUXBK8LXZ72QFBPik/GU9ScF4SOQRqWjUd+unOQCIhiTZH3kXaX
	FKDQko5vkBBeP5wBwMPupAt+hfaLvok8TTBTTMYlpXGh+CXqwqgp9xSZo4TgG4EMOCLcnQycK6XzH
	Cst2auXbsSXrA0eyHlpNb4jNa2/sLKbFwZSGHoVBC1hHK5kjowpol/6rWLJlD5osKBSy3KaFj4tsP
	EQbOmhezv8ZMEJ7hoqTgjdW0F7ASKXmhCe5gpBhUcPy5ZDTWH2rXNbz9WpLEbCQi462aWL5lNTJDE
	grnQd+yYUgRV3p3Ft/TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS3Ns-0001EE-RY; Sat, 18 May 2019 17:44:36 +0000
Received: from mailoutvs50.siol.net ([185.57.226.241] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS3Nj-0001DP-VI
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 17:44:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 3DCC6520A8D;
 Sat, 18 May 2019 19:44:22 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id GueISRJvbvib; Sat, 18 May 2019 19:44:21 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id C2B30520939;
 Sat, 18 May 2019 19:44:21 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id F058D520A8D;
 Sat, 18 May 2019 19:44:20 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	maxime.ripard@bootlin.com
Subject: [PATCH] media: cedrus: Allow different mod clock rates
Date: Sat, 18 May 2019 19:44:15 +0200
Message-Id: <20190518174415.17795-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_104428_175508_3AB0A321 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.241 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some VPU variants may run at higher clock speeds. They actually need
extra speed to be capable of decoding more complex codecs like HEVC or
bigger image sizes (4K).

Expand variant structure with mod_rate information.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus.c    | 11 ++++++++---
 drivers/staging/media/sunxi/cedrus/cedrus.h    |  1 +
 drivers/staging/media/sunxi/cedrus/cedrus_hw.c |  2 +-
 drivers/staging/media/sunxi/cedrus/cedrus_hw.h |  2 --
 4 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
index d0429c0e6b6b..9349a082a29c 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
@@ -369,36 +369,41 @@ static int cedrus_remove(struct platform_device *pdev)
 }
 
 static const struct cedrus_variant sun4i_a10_cedrus_variant = {
-	/* No particular capability. */
+	.mod_rate	= 320000000,
 };
 
 static const struct cedrus_variant sun5i_a13_cedrus_variant = {
-	/* No particular capability. */
+	.mod_rate	= 320000000,
 };
 
 static const struct cedrus_variant sun7i_a20_cedrus_variant = {
-	/* No particular capability. */
+	.mod_rate	= 320000000,
 };
 
 static const struct cedrus_variant sun8i_a33_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED,
+	.mod_rate	= 320000000,
 };
 
 static const struct cedrus_variant sun8i_h3_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED,
+	.mod_rate	= 402000000,
 };
 
 static const struct cedrus_variant sun50i_a64_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED,
+	.mod_rate	= 402000000,
 };
 
 static const struct cedrus_variant sun50i_h5_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED,
+	.mod_rate	= 402000000,
 };
 
 static const struct cedrus_variant sun50i_h6_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED,
 	.quirks		= CEDRUS_QUIRK_NO_DMA_OFFSET,
+	.mod_rate	= 600000000,
 };
 
 static const struct of_device_id cedrus_dt_match[] = {
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index c57c04b41d2e..25ee1f80f2c7 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -94,6 +94,7 @@ struct cedrus_dec_ops {
 struct cedrus_variant {
 	unsigned int	capabilities;
 	unsigned int	quirks;
+	unsigned int	mod_rate;
 };
 
 struct cedrus_dev {
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
index fbfff7c1c771..60406b2d4595 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
@@ -236,7 +236,7 @@ int cedrus_hw_probe(struct cedrus_dev *dev)
 		goto err_sram;
 	}
 
-	ret = clk_set_rate(dev->mod_clk, CEDRUS_CLOCK_RATE_DEFAULT);
+	ret = clk_set_rate(dev->mod_clk, variant->mod_rate);
 	if (ret) {
 		dev_err(dev->dev, "Failed to set clock rate\n");
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h b/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
index b43c77d54b95..27d0882397aa 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
@@ -16,8 +16,6 @@
 #ifndef _CEDRUS_HW_H_
 #define _CEDRUS_HW_H_
 
-#define CEDRUS_CLOCK_RATE_DEFAULT	320000000
-
 int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec codec);
 void cedrus_engine_disable(struct cedrus_dev *dev);
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
