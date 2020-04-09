Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A651A2D64
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 03:40:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSMDC+qLcTjFZf0qq+hoNgmgpEaJB2meu9MysL+2DBE=; b=pHr4Miw5dzUkLy
	PyH5vB7yTVnXMAfF3RvZAx8uLd1PliwHwh5nYhLJ6iYphkfwvoc6woTHp0r44U8G/eKXGNIaPZyVo
	ULRYF1x7x81Q2SmkbU9RHeIHz+engSbnmf0B3ZZw3ljDPMlXORT9CycdfP8fkxuDb15veXcxBylFA
	qPBoOCF7rQ4rkFyMzOt4n03H8tsphzGpKbTzqRKz8XfF4YWzS8+5WGfez9PxoXswzoyYXkrpb5K/D
	0efNLtlAODsI38P0mUSfEMH3QVjsB3iwJiqUEsblW6tBcmyDlAQ8n56oEHMPAbjlEqdzZ/p7RwOEi
	LVC+Q9aoCSeX7JXW3kAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMMBJ-0005TF-3l; Thu, 09 Apr 2020 01:40:37 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMMAa-0002hB-K6
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 01:39:54 +0000
Received: by mail-il1-f196.google.com with SMTP id i14so3657394ilr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 18:39:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HFS4oexa8VbxIfGS3dCImonH0q6N8MSETlkblsu0EG8=;
 b=BzEqyM8/keydd/xqYmp5kklkvRs9UsMuMoOTrldEdCQ+4rIx88W/4EpnRh42JWR5gS
 ZOWiKY3mTnKoFUD0yK6NchQ/FRYPyk9a6hJ9bSWzk640CXLwSUmdO5qVWh3Kysom/8HM
 LaGzLntYQ/yyvEe233GJbxDo4erPVWW+HTmXUoF4OVWNby+SPVYQYsQlxoDx1xXmJ3mg
 BdaW23lZyMYMpDWba9DXy4+kMlNbEiHri+MvxciEr2xV4axMYJinZXn4e66NA3Ts7Aap
 TQR4B7p7pADAKtaOA7Du+c830cL3wI1igUT2Oi8wzZiGzHXTRXZ4mFY1IKedN2yC1xw9
 v1fg==
X-Gm-Message-State: AGi0Pua1c+vjPS3IacxfXh25NvVGQri38DUMPnAVsZzP0bE5tfSxhEYN
 qyOblSNTkIyA8KBgKQ78Mw==
X-Google-Smtp-Source: APiQypLQ7roonLNXmPwaFrhmHM5FOyTwNVh6VW+W1cZaaPuEcLAxJDFk+kj0iC9HkPT2OY35Q+wo0g==
X-Received: by 2002:a92:3548:: with SMTP id c69mr10886585ila.216.1586396391699; 
 Wed, 08 Apr 2020 18:39:51 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.248])
 by smtp.googlemail.com with ESMTPSA id b5sm2353026ilf.23.2020.04.08.18.39.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 18:39:51 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Eric Anholt <eric@anholt.net>
Subject: [PATCH 2/3] drm: pl111: Simplify vexpress init
Date: Wed,  8 Apr 2020 19:39:46 -0600
Message-Id: <20200409013947.12667-3-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200409013947.12667-1-robh@kernel.org>
References: <20200409013947.12667-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_183952_655828_CA5608C1 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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

The init VExpress variants currently instantiates a 'muxfpga' driver for
the sole purpose of getting a regmap for it. There's no reason to
instantiate a driver and doing so just complicates things. The muxfpga
driver also isn't unregistered properly on module unload. Let's
just simplify all this this by just calling
devm_regmap_init_vexpress_config() directly.

Cc: Eric Anholt <eric@anholt.net>
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/gpu/drm/pl111/pl111_versatile.c | 21 +++----------
 drivers/gpu/drm/pl111/pl111_vexpress.c  | 42 -------------------------
 drivers/gpu/drm/pl111/pl111_vexpress.h  |  7 -----
 3 files changed, 4 insertions(+), 66 deletions(-)

diff --git a/drivers/gpu/drm/pl111/pl111_versatile.c b/drivers/gpu/drm/pl111/pl111_versatile.c
index 09aeaffb7660..8c2551088f26 100644
--- a/drivers/gpu/drm/pl111/pl111_versatile.c
+++ b/drivers/gpu/drm/pl111/pl111_versatile.c
@@ -8,6 +8,7 @@
 #include <linux/of.h>
 #include <linux/of_platform.h>
 #include <linux/regmap.h>
+#include <linux/vexpress.h>
 
 #include "pl111_versatile.h"
 #include "pl111_vexpress.h"
@@ -325,17 +326,8 @@ int pl111_versatile_init(struct device *dev, struct pl111_drm_dev_private *priv)
 	versatile_clcd_type = (enum versatile_clcd)clcd_id->data;
 
 	/* Versatile Express special handling */
-	if (versatile_clcd_type == VEXPRESS_CLCD_V2M) {
+	if (IS_ENABLED(CONFIG_VEXPRESS_CONFIG) && versatile_clcd_type == VEXPRESS_CLCD_V2M) {
 		struct platform_device *pdev;
-
-		/* Registers a driver for the muxfpga */
-		ret = vexpress_muxfpga_init();
-		if (ret) {
-			dev_err(dev, "unable to initialize muxfpga driver\n");
-			of_node_put(np);
-			return ret;
-		}
-
 		/* Call into deep Vexpress configuration API */
 		pdev = of_find_device_by_node(np);
 		if (!pdev) {
@@ -343,13 +335,8 @@ int pl111_versatile_init(struct device *dev, struct pl111_drm_dev_private *priv)
 			of_node_put(np);
 			return -EPROBE_DEFER;
 		}
-		map = dev_get_drvdata(&pdev->dev);
-		if (!map) {
-			dev_err(dev, "sysreg has not yet probed\n");
-			platform_device_put(pdev);
-			of_node_put(np);
-			return -EPROBE_DEFER;
-		}
+		map = devm_regmap_init_vexpress_config(&pdev->dev);
+		platform_device_put(pdev);
 	} else {
 		map = syscon_node_to_regmap(np);
 	}
diff --git a/drivers/gpu/drm/pl111/pl111_vexpress.c b/drivers/gpu/drm/pl111/pl111_vexpress.c
index 350570fe06b5..37ed3f1da820 100644
--- a/drivers/gpu/drm/pl111/pl111_vexpress.c
+++ b/drivers/gpu/drm/pl111/pl111_vexpress.c
@@ -94,45 +94,3 @@ int pl111_vexpress_clcd_init(struct device *dev,
 
 	return 0;
 }
-
-/*
- * This sets up the regmap pointer that will then be retrieved by
- * the detection code in pl111_versatile.c and passed in to the
- * pl111_vexpress_clcd_init() function above.
- */
-static int vexpress_muxfpga_probe(struct platform_device *pdev)
-{
-	struct device *dev = &pdev->dev;
-	struct regmap *map;
-
-	map = devm_regmap_init_vexpress_config(&pdev->dev);
-	if (IS_ERR(map))
-		return PTR_ERR(map);
-	dev_set_drvdata(dev, map);
-
-	return 0;
-}
-
-static const struct of_device_id vexpress_muxfpga_match[] = {
-	{ .compatible = "arm,vexpress-muxfpga", },
-	{}
-};
-
-static struct platform_driver vexpress_muxfpga_driver = {
-	.driver = {
-		.name = "vexpress-muxfpga",
-		.of_match_table = of_match_ptr(vexpress_muxfpga_match),
-	},
-	.probe = vexpress_muxfpga_probe,
-};
-
-int vexpress_muxfpga_init(void)
-{
-	int ret;
-
-	ret = platform_driver_register(&vexpress_muxfpga_driver);
-	/* -EBUSY just means this driver is already registered */
-	if (ret == -EBUSY)
-		ret = 0;
-	return ret;
-}
diff --git a/drivers/gpu/drm/pl111/pl111_vexpress.h b/drivers/gpu/drm/pl111/pl111_vexpress.h
index 5d3681bb4c00..bb54864ca91e 100644
--- a/drivers/gpu/drm/pl111/pl111_vexpress.h
+++ b/drivers/gpu/drm/pl111/pl111_vexpress.h
@@ -10,8 +10,6 @@ int pl111_vexpress_clcd_init(struct device *dev,
 			     struct pl111_drm_dev_private *priv,
 			     struct regmap *map);
 
-int vexpress_muxfpga_init(void);
-
 #else
 
 static inline int pl111_vexpress_clcd_init(struct device *dev,
@@ -21,9 +19,4 @@ static inline int pl111_vexpress_clcd_init(struct device *dev,
 	return -ENODEV;
 }
 
-static inline int vexpress_muxfpga_init(void)
-{
-	return 0;
-}
-
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
