Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCCA1A2D65
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 03:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKBN4XZg9q2rFY4f9U8qs6DFljnOrW+8tTYmKSy+w94=; b=jPgtrAdAqwA9vO
	ZRq+vKK7SoTc9IUp/VFXNwbQFQnijAsMuzHTy+I/abxKpxH+soAWInT9RVGPKG8+K7rigLLLKCv0V
	3lOc+FXr40AUU/u7b++3P4NT/5R1gcqPOsNaF1YQxtJMOGQnHL7iJtfhTToX0aKzwgPeUd822of7r
	C7iAiG/bOKr142vxgIjVgRknagEeWJpVTEkj345WQ4UCe7hOBZEH3UQgvLVHOCYZDn/cRHvm2cPs2
	asYPVk6sPLKrI557C9V0NMQsR/Yx4v2lOjTmBczCVUrGvVKSlEiWMTmyPhMWmBDN5jiTzUy7GOzxJ
	JC0+wGAaXAZE81tfLr2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMMBa-0005j9-RR; Thu, 09 Apr 2020 01:40:54 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMMAb-0002ha-Vl
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 01:39:55 +0000
Received: by mail-il1-f196.google.com with SMTP id o11so4514695ilq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 18:39:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NeMxgJdH/jWjk4OdPtDmPyqe4xiEJf5jOviRoYI8eDQ=;
 b=ZGuyurkSJjZ96KVMOezjCxWH1NHM0QFgjG03U5mKEqaqjMP1R7Wg0xHkRuj4Zmmugr
 0nbxtGl+IKiMB1vZosNMgqVff5SSAmJHPs1oWN2VslGpkBgPrlBgSpttB2Rpe2QZb3Cm
 qgL/y0dX6DgqDKE8aa4zHK2aJ/LSf7bDKUzYiuebhE4CIttD0jprqLWCeBeD4mwBjyKy
 Ov0oJC0itYU6sdlrkC/z2fe/DyNa64TR4hBF2ENMK95N2PlrJRStv013nfdoSNqmkIOa
 fog+Q/AOTpBY1TMpKVSygByGy2HTdLalRisJrNNpPWnIPym5G8Nvi0xHbr9RFet/kaA9
 We/A==
X-Gm-Message-State: AGi0PuaALaart5aMzsIX7TobMPMJTG/HGDR48tB6KbOoyVK3+d8worZE
 1XlL8eefOF2nphvhsmzkmpGwWZ8=
X-Google-Smtp-Source: APiQypJDvvUA1E07FL+7EPjit+1Aevzg7BjR6K3kcQX1/FdaqpMlNVcBBsvTg8H0nzmvnygDavWRYw==
X-Received: by 2002:a92:af03:: with SMTP id n3mr2858690ili.180.1586396393315; 
 Wed, 08 Apr 2020 18:39:53 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.248])
 by smtp.googlemail.com with ESMTPSA id b5sm2353026ilf.23.2020.04.08.18.39.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 18:39:52 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Eric Anholt <eric@anholt.net>
Subject: [PATCH 3/3] drm: pl111: Move VExpress setup into versatile init
Date: Wed,  8 Apr 2020 19:39:47 -0600
Message-Id: <20200409013947.12667-4-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200409013947.12667-1-robh@kernel.org>
References: <20200409013947.12667-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_183954_023014_3EA1C29E 
X-CRM114-Status: GOOD (  22.44  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the VExpress setup in pl111_vexpress.c is now just a single
function call, let's move it into pl111_versatile.c and we can further
simplify pl111_versatile_init() by moving the other pieces for VExpress
into pl111_vexpress_clcd_init().

Cc: Eric Anholt <eric@anholt.net>
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/gpu/drm/pl111/Makefile          |   1 -
 drivers/gpu/drm/pl111/pl111_versatile.c | 122 ++++++++++++++++++++----
 drivers/gpu/drm/pl111/pl111_vexpress.c  |  96 -------------------
 drivers/gpu/drm/pl111/pl111_vexpress.h  |  22 -----
 4 files changed, 102 insertions(+), 139 deletions(-)
 delete mode 100644 drivers/gpu/drm/pl111/pl111_vexpress.c
 delete mode 100644 drivers/gpu/drm/pl111/pl111_vexpress.h

diff --git a/drivers/gpu/drm/pl111/Makefile b/drivers/gpu/drm/pl111/Makefile
index 0c70f0e91d21..67d430d433e0 100644
--- a/drivers/gpu/drm/pl111/Makefile
+++ b/drivers/gpu/drm/pl111/Makefile
@@ -3,7 +3,6 @@ pl111_drm-y +=	pl111_display.o \
 		pl111_versatile.o \
 		pl111_drv.o
 
-pl111_drm-$(CONFIG_ARCH_VEXPRESS) += pl111_vexpress.o
 pl111_drm-$(CONFIG_ARCH_NOMADIK) += pl111_nomadik.o
 pl111_drm-$(CONFIG_DEBUG_FS) += pl111_debugfs.o
 
diff --git a/drivers/gpu/drm/pl111/pl111_versatile.c b/drivers/gpu/drm/pl111/pl111_versatile.c
index 8c2551088f26..1b55f977e945 100644
--- a/drivers/gpu/drm/pl111/pl111_versatile.c
+++ b/drivers/gpu/drm/pl111/pl111_versatile.c
@@ -11,7 +11,6 @@
 #include <linux/vexpress.h>
 
 #include "pl111_versatile.h"
-#include "pl111_vexpress.h"
 #include "pl111_drm.h"
 
 static struct regmap *versatile_syscon_map;
@@ -309,13 +308,110 @@ static const struct pl111_variant_data pl111_vexpress = {
 	.broken_clockdivider = true,
 };
 
+#define VEXPRESS_FPGAMUX_MOTHERBOARD		0x00
+#define VEXPRESS_FPGAMUX_DAUGHTERBOARD_1	0x01
+#define VEXPRESS_FPGAMUX_DAUGHTERBOARD_2	0x02
+
+static int pl111_vexpress_clcd_init(struct device *dev, struct device_node *np,
+				    struct pl111_drm_dev_private *priv)
+{
+	struct platform_device *pdev;
+	struct device_node *root;
+	struct device_node *child;
+	struct device_node *ct_clcd = NULL;
+	struct regmap *map;
+	bool has_coretile_clcd = false;
+	bool has_coretile_hdlcd = false;
+	bool mux_motherboard = true;
+	u32 val;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_VEXPRESS_CONFIG))
+		return -ENODEV;
+
+	/*
+	 * Check if we have a CLCD or HDLCD on the core tile by checking if a
+	 * CLCD or HDLCD is available in the root of the device tree.
+	 */
+	root = of_find_node_by_path("/");
+	if (!root)
+		return -EINVAL;
+
+	for_each_available_child_of_node(root, child) {
+		if (of_device_is_compatible(child, "arm,pl111")) {
+			has_coretile_clcd = true;
+			ct_clcd = child;
+			break;
+		}
+		if (of_device_is_compatible(child, "arm,hdlcd")) {
+			has_coretile_hdlcd = true;
+			of_node_put(child);
+			break;
+		}
+	}
+
+	of_node_put(root);
+
+	/*
+	 * If there is a coretile HDLCD and it has a driver,
+	 * do not mux the CLCD on the motherboard to the DVI.
+	 */
+	if (has_coretile_hdlcd && IS_ENABLED(CONFIG_DRM_HDLCD))
+		mux_motherboard = false;
+
+	/*
+	 * On the Vexpress CA9 we let the CLCD on the coretile
+	 * take precedence, so also in this case do not mux the
+	 * motherboard to the DVI.
+	 */
+	if (has_coretile_clcd)
+		mux_motherboard = false;
+
+	if (mux_motherboard) {
+		dev_info(dev, "DVI muxed to motherboard CLCD\n");
+		val = VEXPRESS_FPGAMUX_MOTHERBOARD;
+	} else if (ct_clcd == dev->of_node) {
+		dev_info(dev,
+			 "DVI muxed to daughterboard 1 (core tile) CLCD\n");
+		val = VEXPRESS_FPGAMUX_DAUGHTERBOARD_1;
+	} else {
+		dev_info(dev, "core tile graphics present\n");
+		dev_info(dev, "this device will be deactivated\n");
+		return -ENODEV;
+	}
+
+	/* Call into deep Vexpress configuration API */
+	pdev = of_find_device_by_node(np);
+	if (!pdev) {
+		dev_err(dev, "can't find the sysreg device, deferring\n");
+		return -EPROBE_DEFER;
+	}
+
+	map = devm_regmap_init_vexpress_config(&pdev->dev);
+	if (IS_ERR(map)) {
+		platform_device_put(pdev);
+		return PTR_ERR(map);
+	}
+
+	ret = regmap_write(map, 0, val);
+	platform_device_put(pdev);
+	if (ret) {
+		dev_err(dev, "error setting DVI muxmode\n");
+		return -ENODEV;
+	}
+
+	priv->variant = &pl111_vexpress;
+	dev_info(dev, "initializing Versatile Express PL111\n");
+
+	return 0;
+}
+
 int pl111_versatile_init(struct device *dev, struct pl111_drm_dev_private *priv)
 {
 	const struct of_device_id *clcd_id;
 	enum versatile_clcd versatile_clcd_type;
 	struct device_node *np;
 	struct regmap *map;
-	int ret;
 
 	np = of_find_matching_node_and_match(NULL, versatile_clcd_of_match,
 					     &clcd_id);
@@ -326,17 +422,10 @@ int pl111_versatile_init(struct device *dev, struct pl111_drm_dev_private *priv)
 	versatile_clcd_type = (enum versatile_clcd)clcd_id->data;
 
 	/* Versatile Express special handling */
-	if (IS_ENABLED(CONFIG_VEXPRESS_CONFIG) && versatile_clcd_type == VEXPRESS_CLCD_V2M) {
-		struct platform_device *pdev;
-		/* Call into deep Vexpress configuration API */
-		pdev = of_find_device_by_node(np);
-		if (!pdev) {
-			dev_err(dev, "can't find the sysreg device, deferring\n");
-			of_node_put(np);
-			return -EPROBE_DEFER;
-		}
-		map = devm_regmap_init_vexpress_config(&pdev->dev);
-		platform_device_put(pdev);
+	if (versatile_clcd_type == VEXPRESS_CLCD_V2M) {
+		int ret = pl111_vexpress_clcd_init(dev, np, priv);
+		of_node_put(np);
+		return ret;
 	} else {
 		map = syscon_node_to_regmap(np);
 	}
@@ -380,13 +469,6 @@ int pl111_versatile_init(struct device *dev, struct pl111_drm_dev_private *priv)
 		priv->variant_display_disable = pl111_realview_clcd_disable;
 		dev_info(dev, "set up callbacks for RealView PL111\n");
 		break;
-	case VEXPRESS_CLCD_V2M:
-		priv->variant = &pl111_vexpress;
-		dev_info(dev, "initializing Versatile Express PL111\n");
-		ret = pl111_vexpress_clcd_init(dev, priv, map);
-		if (ret)
-			return ret;
-		break;
 	default:
 		dev_info(dev, "unknown Versatile system controller\n");
 		break;
diff --git a/drivers/gpu/drm/pl111/pl111_vexpress.c b/drivers/gpu/drm/pl111/pl111_vexpress.c
deleted file mode 100644
index 37ed3f1da820..000000000000
--- a/drivers/gpu/drm/pl111/pl111_vexpress.c
+++ /dev/null
@@ -1,96 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * Versatile Express PL111 handling
- * Copyright (C) 2018 Linus Walleij
- *
- * This module binds to the "arm,vexpress-muxfpga" device on the
- * Versatile Express configuration bus and sets up which CLCD instance
- * gets muxed out on the DVI bridge.
- */
-#include <linux/device.h>
-#include <linux/module.h>
-#include <linux/regmap.h>
-#include <linux/vexpress.h>
-#include <linux/platform_device.h>
-#include <linux/of.h>
-#include <linux/of_address.h>
-#include <linux/of_platform.h>
-#include "pl111_drm.h"
-#include "pl111_vexpress.h"
-
-#define VEXPRESS_FPGAMUX_MOTHERBOARD		0x00
-#define VEXPRESS_FPGAMUX_DAUGHTERBOARD_1	0x01
-#define VEXPRESS_FPGAMUX_DAUGHTERBOARD_2	0x02
-
-int pl111_vexpress_clcd_init(struct device *dev,
-			     struct pl111_drm_dev_private *priv,
-			     struct regmap *map)
-{
-	struct device_node *root;
-	struct device_node *child;
-	struct device_node *ct_clcd = NULL;
-	bool has_coretile_clcd = false;
-	bool has_coretile_hdlcd = false;
-	bool mux_motherboard = true;
-	u32 val;
-	int ret;
-
-	/*
-	 * Check if we have a CLCD or HDLCD on the core tile by checking if a
-	 * CLCD or HDLCD is available in the root of the device tree.
-	 */
-	root = of_find_node_by_path("/");
-	if (!root)
-		return -EINVAL;
-
-	for_each_available_child_of_node(root, child) {
-		if (of_device_is_compatible(child, "arm,pl111")) {
-			has_coretile_clcd = true;
-			ct_clcd = child;
-			break;
-		}
-		if (of_device_is_compatible(child, "arm,hdlcd")) {
-			has_coretile_hdlcd = true;
-			of_node_put(child);
-			break;
-		}
-	}
-
-	of_node_put(root);
-
-	/*
-	 * If there is a coretile HDLCD and it has a driver,
-	 * do not mux the CLCD on the motherboard to the DVI.
-	 */
-	if (has_coretile_hdlcd && IS_ENABLED(CONFIG_DRM_HDLCD))
-		mux_motherboard = false;
-
-	/*
-	 * On the Vexpress CA9 we let the CLCD on the coretile
-	 * take precedence, so also in this case do not mux the
-	 * motherboard to the DVI.
-	 */
-	if (has_coretile_clcd)
-		mux_motherboard = false;
-
-	if (mux_motherboard) {
-		dev_info(dev, "DVI muxed to motherboard CLCD\n");
-		val = VEXPRESS_FPGAMUX_MOTHERBOARD;
-	} else if (ct_clcd == dev->of_node) {
-		dev_info(dev,
-			 "DVI muxed to daughterboard 1 (core tile) CLCD\n");
-		val = VEXPRESS_FPGAMUX_DAUGHTERBOARD_1;
-	} else {
-		dev_info(dev, "core tile graphics present\n");
-		dev_info(dev, "this device will be deactivated\n");
-		return -ENODEV;
-	}
-
-	ret = regmap_write(map, 0, val);
-	if (ret) {
-		dev_err(dev, "error setting DVI muxmode\n");
-		return -ENODEV;
-	}
-
-	return 0;
-}
diff --git a/drivers/gpu/drm/pl111/pl111_vexpress.h b/drivers/gpu/drm/pl111/pl111_vexpress.h
deleted file mode 100644
index bb54864ca91e..000000000000
--- a/drivers/gpu/drm/pl111/pl111_vexpress.h
+++ /dev/null
@@ -1,22 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-
-struct device;
-struct pl111_drm_dev_private;
-struct regmap;
-
-#ifdef CONFIG_ARCH_VEXPRESS
-
-int pl111_vexpress_clcd_init(struct device *dev,
-			     struct pl111_drm_dev_private *priv,
-			     struct regmap *map);
-
-#else
-
-static inline int pl111_vexpress_clcd_init(struct device *dev,
-					   struct pl111_drm_dev_private *priv,
-					   struct regmap *map)
-{
-	return -ENODEV;
-}
-
-#endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
