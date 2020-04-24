Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FFD1B7AFE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JciyRizrQJajBEZ0A/rPONTBW0cajlSHqVx40affYrM=; b=T6C+BceA5mr3JZ
	UtsNZgniTpB7J5QG6/whkgLzGZDZLPu3vS4MEi6P+YPwi6Aurp4BNFBmIK+5apysz9QheK6cRFAlX
	iy65ecUl5dksHy9jpdgx0TaU8q6VK5TJTZnUcDHf0z6rBJ6up5L37cdLAsNgRX/7htURNUmMFlIsm
	3RnrOrATGaDtp+uHyn9Uv45bl++Db5C10dXYrN1HvLOlHvuBdj5eVyyn7MuOMUjM8gbDgfTCt7O6Q
	9minudn4adaee4dM8UEOHnaZH7zkCFpN7sa36dlNZjlP4dai1DRVUBuN1M22qGF9LhdrIMSydC5n4
	ut/ULrScBy9ec19OpvlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0mO-0000YT-FQ; Fri, 24 Apr 2020 16:02:16 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0OB-0000O3-2S; Fri, 24 Apr 2020 15:37:20 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 239A11461;
 Fri, 24 Apr 2020 11:37:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:37:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=4gbeJ1neY6PRy
 YOdg83Vrr06ONFPkgKT+hUqnCfpgBE=; b=mdGJxBOifSOZqThxFw3YXh8yGaDd6
 MGEuJAWGCzK/riXQpriKW1fhqkGbgwxtdYoRbA4bRCxRjyKJ7A1hDi2GIWD54GoO
 1Fc2iBufdiO0z8oaNsCz4jcs+G6vZbP360TohdrtPasaEl0/yH3yTCSg2kUFoHeB
 kRJE6wdhCQckWuvzrQPlw4dm2IHsyPTT8n8eQWN9Rqi+9HAtyQxBkm7uptbCc/Y/
 2uZW0n5xg9VSjus5R9qtK9IFs2Krm5E2as8nRFA1jUpOdWWtrQDQjLsNVpxmEJij
 b0inZLsmfbSBiDbBCIbwCBeKL1OkPmdk1hR795+Wp/pkSu/ctz7IOTEmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=4gbeJ1neY6PRyYOdg83Vrr06ONFPkgKT+hUqnCfpgBE=; b=mBpc/h/J
 OSXmQXe9kdtItqzbEApSrqmoDo1518f7XUtj53bLqBmACQRA1QQs8MZfJ2IVQE8N
 X2vW3IuzBb3vk92d2n6u0hDdveJ/PDN8lTmuRs36Vv9V/QDYSTuGtmiGT6OefXhV
 fcq1wj7GPSRh3E1sWAUg/J2QuN+Yl27UQ+caG4g7le77RR74awNEiuB178C+yej7
 730P3H+Irewv2peDiaq+cPn55Fka3WtolDBPnS9HVts0rIg01dFxIGUQ6WNkp3Z2
 +q6KtW/YofQcn5Acvsmy0RCBXjqNYZ5kNgWzInMAMt+NNNBsMu2uAZv7u2C1Oweo
 u8n/IGuAGQA5zw==
X-ME-Sender: <xms:qAejXj561ZX2016MkOY8O_Addumprkxr61VZPb0RMl4hyCPGiVbu4w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeejtdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:qAejXvMISqCJYKyU5xw82jpL2h_bOZ86n-2uvPaG9J1lM7v2kekuuw>
 <xmx:qAejXgeXIK8Zhx9LJH7SGIaqAfv6qJ8c1shB3ghbPltUw8UlNlHXaw>
 <xmx:qAejXhc5AYRU6Km3OM_AX_-MgxszADui9pVx1Uu2cmWOYh3D0zMdXw>
 <xmx:qAejXq-qM9Fhob-GzMmJInOwRIvZQ2S3ti7nq0J1a2W7TTeFjovTzG2tdmM>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 738C33065D9A;
 Fri, 24 Apr 2020 11:37:12 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 79/91] drm/vc4: hdmi: Deal with multiple debugfs files
Date: Fri, 24 Apr 2020 17:35:00 +0200
Message-Id: <4cd617827cc28875ef36f3632122a83cff2ea4a7.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083715_313206_23F175B9 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The HDMI driver was registering a single debugfs file so far with the name
hdmi_regs.

Obviously, this is not going to work anymore when will have multiple HDMI
controllers since we will end up trying to register two files with the same
name.

Let's use the ID to avoid that name conflict.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 5 ++++-
 drivers/gpu/drm/vc4/vc4_hdmi.h | 3 +++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index aaf96420d0ec..aae5b10a2d11 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -1377,7 +1377,9 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		goto err_destroy_encoder;
 
-	vc4_debugfs_add_file(drm, "hdmi_regs", vc4_hdmi_debugfs_regs, vc4_hdmi);
+	vc4_debugfs_add_file(drm, variant->debugfs_name,
+			     vc4_hdmi_debugfs_regs,
+			     vc4_hdmi);
 
 	return 0;
 
@@ -1439,6 +1441,7 @@ static int vc4_hdmi_dev_remove(struct platform_device *pdev)
 
 static const struct vc4_hdmi_variant bcm2835_variant = {
 	.encoder_type		= VC4_ENCODER_TYPE_HDMI0,
+	.debugfs_name		= "hdmi_regs",
 	.registers		= vc4_hdmi_fields,
 	.num_registers		= ARRAY_SIZE(vc4_hdmi_fields),
 
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index 4240c5ea7fde..22100820c81b 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -30,6 +30,9 @@ struct vc4_hdmi_variant {
 	/* Encoder Type for that controller */
 	enum vc4_encoder_type encoder_type;
 
+	/* Filename to expose the registers in debugfs */
+	const char *debugfs_name;
+
 	/* List of the registers available on that variant */
 	const struct vc4_hdmi_register *registers;
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
