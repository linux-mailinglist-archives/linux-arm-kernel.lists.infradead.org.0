Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AE115BEAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 13:48:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7UuYwzthAPUjF7r5IR4LY2rSCWdov46JNOl5MJnYM0g=; b=IcDcfLB4JTD2GU
	M/I+Tni5iit55y7+SrljeqxmtWLEOEycvJf2Qj4u1JasBmbSOarTwnZ2tc0EHw+mZe77Kw/dsTX5F
	AuB4DVFkXROdvn7l4okLgnz0sEPHSWt4uVF1Sjq1xCxf9TPfHi0MWkywrbjg++pP+6nzcBZ5VW2f+
	3lMENCi872oVDsfXQPn+j+O7YARXHf62Cg9tNO93yFD1BdJpn9krKw64TF5g2D4zkDB/uhvjZ0hmL
	PdRk0D9MXwfoiP9Dn+acZKIw4HCijY5N17K4Bbflovd+VomHcRgv5UI5bJE1f3fLwWT1QscSQShIB
	vOJBw6JND+nV2UBEh5dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2DvF-00035S-N6; Thu, 13 Feb 2020 12:48:49 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Dv8-00034j-GL
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 12:48:44 +0000
Received: by mail-lf1-x142.google.com with SMTP id z18so4191911lfe.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 04:48:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mn+WjjbEETsQlpk4SU5veQcJm6P575D3UCOqa0smQN8=;
 b=fWYvL8RS3p6o84iF5W3UYskmB9JyR1iA+nIstP+Hcm0MxYwC+tAVmd3T4CcvikM2p6
 +zSERhQbW23ib75QeTmD3Oya0jzwEMaKdid3UxJO5i/IgRkD02EjS4jvLS2/CsOae8dk
 nBhxO4Rm0kzLJzX6ODZFwev/EVMf49tNxzAwxZzlH8IaxAci+ElMHnWYWy7Hfifja0l8
 B29jAK5qADWn+lG4gaqVEgM1tAIfzxK/S5bhRIKTty8N3CNpaolJv+yUU1IYp9dcHOvx
 Uj0HU1xxza7RJyYuG7Is2y1dCikxazFp08kOHjaWIqwIg9dqVIrUBmq+S7xeeIK18BOI
 5zwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mn+WjjbEETsQlpk4SU5veQcJm6P575D3UCOqa0smQN8=;
 b=qVgSdK2wv9ZN7EB4USnVk2dTTGPx/AAixOBDsa64UYRFYsMj4vlqUjMNrfIc4Xd2ua
 EwztxR00ClrFWCWm2N4lw9nBaFVSOcCDtbqI+niVtzbbZgPT/xSRl2dkV9zF1jpmTpNB
 WKG1fnUaNhvZX2YBPZ9G8n7E7d2FTxeF97jcZX6+DRuRBuCQMK4BdDpyXnHA2PA0wbGF
 qeJLmxRCFdxliYuXwpRXkTrxw08HINmHtrOtLTvi1bwCn2mri+D07Qr6llrxe4zX6Hkk
 g/RoBIGT7iSgd/XdSC7n5q2eQWvsPWzz03ZWK4NRXai6SyyLeOyQlu5TlPYT6iX/r3Bu
 U+tQ==
X-Gm-Message-State: APjAAAVSTZffe9o+HKtRC04j83f35r+bO8yGotPcCxlsglhpJ/puN97I
 bbwNsjOD12PJa8OgCaBgOi5Zkg==
X-Google-Smtp-Source: APXvYqz5pmx8EwWFgmYNyX74WM0Q3rB9Icvd4JzYZdBsoG+50mQa7O2W+J5gJNv6bNDdOtJguv6Iqg==
X-Received: by 2002:ac2:5ec3:: with SMTP id d3mr9569766lfq.176.1581598119775; 
 Thu, 13 Feb 2020 04:48:39 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id j19sm1482196lfb.90.2020.02.13.04.48.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 04:48:39 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <sean@poorly.run>
Subject: [PATCH] drm/pl111: Support Integrator IM-PD1 module
Date: Thu, 13 Feb 2020 13:48:33 +0100
Message-Id: <20200213124833.35545-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_044842_548660_E4F8CFFF 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The last in-kernel user of the old framebuffer driver is the
IM-PD1 module for the Integrator/AP. Let's implement support for
this remaining user so we can migrate the last user over to
DRM and delete the old FB driver.

On the Integrator/AP the IM-PD1 system controller will exist
alongside the common Integrator system controller so make
sure to do a special lookup for the IM-PD1 syscon and make it
take precedence if found.

Tested on the Integrator/AP with the IM-PD1 mounted.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/pl111/pl111_versatile.c | 73 +++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/drivers/gpu/drm/pl111/pl111_versatile.c b/drivers/gpu/drm/pl111/pl111_versatile.c
index 09aeaffb7660..4f325c410b5d 100644
--- a/drivers/gpu/drm/pl111/pl111_versatile.c
+++ b/drivers/gpu/drm/pl111/pl111_versatile.c
@@ -19,6 +19,7 @@ static struct regmap *versatile_syscon_map;
  * We detect the different syscon types from the compatible strings.
  */
 enum versatile_clcd {
+	INTEGRATOR_IMPD1,
 	INTEGRATOR_CLCD_CM,
 	VERSATILE_CLCD,
 	REALVIEW_CLCD_EB,
@@ -65,6 +66,14 @@ static const struct of_device_id versatile_clcd_of_match[] = {
 	{},
 };
 
+static const struct of_device_id impd1_clcd_of_match[] = {
+	{
+		.compatible = "arm,im-pd1-syscon",
+		.data = (void *)INTEGRATOR_IMPD1,
+	},
+	{},
+};
+
 /*
  * Core module CLCD control on the Integrator/CP, bits
  * 8 thru 19 of the CM_CONTROL register controls a bunch
@@ -125,6 +134,36 @@ static void pl111_integrator_enable(struct drm_device *drm, u32 format)
 			   val);
 }
 
+#define IMPD1_CTRL_OFFSET	0x18
+#define IMPD1_CTRL_DISP_LCD	(0 << 0)
+#define IMPD1_CTRL_DISP_VGA	(1 << 0)
+#define IMPD1_CTRL_DISP_LCD1	(2 << 0)
+#define IMPD1_CTRL_DISP_ENABLE	(1 << 2)
+#define IMPD1_CTRL_DISP_MASK	(7 << 0)
+
+static void pl111_impd1_enable(struct drm_device *drm, u32 format)
+{
+	u32 val;
+
+	dev_info(drm->dev, "enable IM-PD1 CLCD connectors\n");
+	val = IMPD1_CTRL_DISP_VGA | IMPD1_CTRL_DISP_ENABLE;
+
+	regmap_update_bits(versatile_syscon_map,
+			   IMPD1_CTRL_OFFSET,
+			   IMPD1_CTRL_DISP_MASK,
+			   val);
+}
+
+static void pl111_impd1_disable(struct drm_device *drm)
+{
+	dev_info(drm->dev, "disable IM-PD1 CLCD connectors\n");
+
+	regmap_update_bits(versatile_syscon_map,
+			   IMPD1_CTRL_OFFSET,
+			   IMPD1_CTRL_DISP_MASK,
+			   0);
+}
+
 /*
  * This configuration register in the Versatile and RealView
  * family is uniformly present but appears more and more
@@ -270,6 +309,20 @@ static const struct pl111_variant_data pl110_integrator = {
 	.fb_bpp = 16,
 };
 
+/*
+ * The IM-PD1 variant is a PL110 with a bunch of broken, or not
+ * yet implemented features
+ */
+static const struct pl111_variant_data pl110_impd1 = {
+	.name = "PL110 IM-PD1",
+	.is_pl110 = true,
+	.broken_clockdivider = true,
+	.broken_vblank = true,
+	.formats = pl110_integrator_pixel_formats,
+	.nformats = ARRAY_SIZE(pl110_integrator_pixel_formats),
+	.fb_bpp = 16,
+};
+
 /*
  * This is the in-between PL110 variant found in the ARM Versatile,
  * supporting RGB565/BGR565
@@ -322,8 +375,21 @@ int pl111_versatile_init(struct device *dev, struct pl111_drm_dev_private *priv)
 		/* Non-ARM reference designs, just bail out */
 		return 0;
 	}
+
 	versatile_clcd_type = (enum versatile_clcd)clcd_id->data;
 
+	/*
+	 * On the Integrator, check if we should use the IM-PD1 instead,
+	 * if we find it, it will take precedence. This is on the Integrator/AP
+	 * which only has this option for PL110 graphics.
+	 */
+	 if (versatile_clcd_type == INTEGRATOR_CLCD_CM) {
+		np = of_find_matching_node_and_match(NULL, impd1_clcd_of_match,
+						     &clcd_id);
+		if (np)
+			versatile_clcd_type = (enum versatile_clcd)clcd_id->data;
+	}
+
 	/* Versatile Express special handling */
 	if (versatile_clcd_type == VEXPRESS_CLCD_V2M) {
 		struct platform_device *pdev;
@@ -367,6 +433,13 @@ int pl111_versatile_init(struct device *dev, struct pl111_drm_dev_private *priv)
 		priv->variant_display_enable = pl111_integrator_enable;
 		dev_info(dev, "set up callbacks for Integrator PL110\n");
 		break;
+	case INTEGRATOR_IMPD1:
+		versatile_syscon_map = map;
+		priv->variant = &pl110_impd1;
+		priv->variant_display_enable = pl111_impd1_enable;
+		priv->variant_display_disable = pl111_impd1_disable;
+		dev_info(dev, "set up callbacks for IM-PD1 PL110\n");
+		break;
 	case VERSATILE_CLCD:
 		versatile_syscon_map = map;
 		/* This can do RGB565 with external PLD */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
