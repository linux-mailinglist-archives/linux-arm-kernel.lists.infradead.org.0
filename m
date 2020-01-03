Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C11E712FB5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 18:13:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wWJsMq97XliqO1eDCCTtfFZvlXL70xV2Mx4t6cMSSak=; b=pQznzauT9qtlK031d3h6QrIlbd
	fuFVv7PujqhoRqu9LuspOdAoaN6ZB2nLjZdRnEmDMs+63YWgB9hC/1o/IxGuBoJTYZKku9f5rXqZf
	Mm2xnc4khst2FJvkX0DrhZ4J7Kw0kY5iSrFXRkUSVK/dwsVzmmy8G9vcR9TIWK/UciJar/lJf/Tj6
	1FnVl3WjaUSVq6zrqHwUEncYPhn1z7wXJAoKeBHcABlOT30pzSGNAAWGXz2xnABzrHF2A7CmQEU1L
	bJeKDWVQIARM9h7erSg6HF9U/0lvBBQSXIcf6hQ+n8oyvbKTnC/NuzakZyyUUuV6fdPa2meDqr3hh
	4vUGKvBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQVe-0001kn-6G; Fri, 03 Jan 2020 17:13:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQUe-0000y0-61
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 17:12:14 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1544F215A4;
 Fri,  3 Jan 2020 17:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578071531;
 bh=Bq3wSGweNgUnUR2ScgkLGNaGTFe493jXCOPTmwaWkAQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QUj3CD1Iz1tYjBpeeYY40qAazySGz44Eepq4NFeLl1wD3gLnnShAHmeTo48UMEZBz
 gR7Of2G+8ZjlLIsfqNzyPz20R52boqeB1/dsVM7Lf0n82h+CzAmSorq+npjp7pKnzJ
 Gj9f8OjA5S4bfIKmfFHJoUlhllwIipvss8e6x428=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 05/19] thermal: exynos: Rename Samsung and Exynos to lowercase
Date: Fri,  3 Jan 2020 18:11:17 +0100
Message-Id: <20200103171131.9900-6-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103171131.9900-1-krzk@kernel.org>
References: <20200103171131.9900-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_091212_385921_407CFB3F 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-doc@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up inconsistent usage of upper and lowercase letters in "Samsung"
and "Exynos" names.

"SAMSUNG" and "EXYNOS" are not abbreviations but regular trademarked
names.  Therefore they should be written with lowercase letters starting
with capital letter.

The lowercase "Exynos" name is promoted by its manufacturer Samsung
Electronics Co., Ltd., in advertisement materials and on website.

Although advertisement materials usually use uppercase "SAMSUNG", the
lowercase version is used in all legal aspects (e.g. on Wikipedia and in
privacy/legal statements on
https://www.samsung.com/semiconductor/privacy-global/).

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 Documentation/driver-api/thermal/exynos_thermal.rst | 6 +++---
 drivers/thermal/samsung/Kconfig                     | 2 +-
 drivers/thermal/samsung/exynos_tmu.c                | 4 ++--
 include/dt-bindings/thermal/thermal_exynos.h        | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/driver-api/thermal/exynos_thermal.rst b/Documentation/driver-api/thermal/exynos_thermal.rst
index d4e4a5b75805..764df4ab584d 100644
--- a/Documentation/driver-api/thermal/exynos_thermal.rst
+++ b/Documentation/driver-api/thermal/exynos_thermal.rst
@@ -4,7 +4,7 @@ Kernel driver exynos_tmu
 
 Supported chips:
 
-* ARM SAMSUNG EXYNOS4, EXYNOS5 series of SoC
+* ARM Samsung Exynos4, Exynos5 series of SoC
 
   Datasheet: Not publicly available
 
@@ -14,7 +14,7 @@ Authors: Amit Daniel <amit.daniel@samsung.com>
 TMU controller Description:
 ---------------------------
 
-This driver allows to read temperature inside SAMSUNG EXYNOS4/5 series of SoC.
+This driver allows to read temperature inside Samsung Exynos4/5 series of SoC.
 
 The chip only exposes the measured 8-bit temperature code value
 through a register.
@@ -43,7 +43,7 @@ The three equations are:
        Trimming info for 85 degree Celsius (stored at TRIMINFO register)
        Temperature code measured at 85 degree Celsius which is unchanged
 
-TMU(Thermal Management Unit) in EXYNOS4/5 generates interrupt
+TMU(Thermal Management Unit) in Exynos4/5 generates interrupt
 when temperature exceeds pre-defined levels.
 The maximum number of configurable threshold is five.
 The threshold levels are defined as follows::
diff --git a/drivers/thermal/samsung/Kconfig b/drivers/thermal/samsung/Kconfig
index fe0d2ba51392..f4eff5a41a84 100644
--- a/drivers/thermal/samsung/Kconfig
+++ b/drivers/thermal/samsung/Kconfig
@@ -5,7 +5,7 @@ config EXYNOS_THERMAL
 	depends on HAS_IOMEM
 	help
 	  If you say yes here you get support for the TMU (Thermal Management
-	  Unit) driver for SAMSUNG EXYNOS series of SoCs. This driver initialises
+	  Unit) driver for Samsung Exynos series of SoCs. This driver initialises
 	  the TMU, reports temperature and handles cooling action if defined.
 	  This driver uses the Exynos core thermal APIs and TMU configuration
 	  data from the supported SoCs.
diff --git a/drivers/thermal/samsung/exynos_tmu.c b/drivers/thermal/samsung/exynos_tmu.c
index 8193b66a3f83..fd4a17812f33 100644
--- a/drivers/thermal/samsung/exynos_tmu.c
+++ b/drivers/thermal/samsung/exynos_tmu.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
- * exynos_tmu.c - Samsung EXYNOS TMU (Thermal Management Unit)
+ * exynos_tmu.c - Samsung Exynos TMU (Thermal Management Unit)
  *
  *  Copyright (C) 2014 Samsung Electronics
  *  Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
@@ -1186,7 +1186,7 @@ static struct platform_driver exynos_tmu_driver = {
 
 module_platform_driver(exynos_tmu_driver);
 
-MODULE_DESCRIPTION("EXYNOS TMU Driver");
+MODULE_DESCRIPTION("Exynos TMU Driver");
 MODULE_AUTHOR("Donggeun Kim <dg77.kim@samsung.com>");
 MODULE_LICENSE("GPL");
 MODULE_ALIAS("platform:exynos-tmu");
diff --git a/include/dt-bindings/thermal/thermal_exynos.h b/include/dt-bindings/thermal/thermal_exynos.h
index 642e4e7f4084..52fcb51dda3c 100644
--- a/include/dt-bindings/thermal/thermal_exynos.h
+++ b/include/dt-bindings/thermal/thermal_exynos.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0+ */
 /*
- * thermal_exynos.h - Samsung EXYNOS TMU device tree definitions
+ * thermal_exynos.h - Samsung Exynos TMU device tree definitions
  *
  *  Copyright (C) 2014 Samsung Electronics
  *  Lukasz Majewski <l.majewski@samsung.com>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
