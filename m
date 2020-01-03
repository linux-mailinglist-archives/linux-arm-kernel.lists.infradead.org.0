Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7167612FB65
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 18:13:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F2Ka34/E5gf1PQY3RJ6Myld5ECXR5KSvx0gK4bsjLSo=; b=qqWDc0fWdaZLkCqTpkc1hdbrhs
	Fqu1CJQEtP27sXn1TjDDvdi9xOYiq+wIA+emlxkxvCJ3cQyR7X0ZjZKHZvfHyRX5MLJMUesAX5LQJ
	W+R8u+sZhGBR89Ajh71cwYy+oLpnfxM0Lu697/HgE+y08TZIatI3qaJc+XdHqDVIF4pDFXyLpbxSL
	FoXTAb8C6ZB97MjIvV7ERPhnnQPlXgWffy4FhBz+pjKcU6zcx2sTePTU5/Dw8Rc8boKrcpPWo6zAV
	Y8YV5Aa8ayB5mLruS40rlO81TCGKIUXMBQdlTplJkqIJIUuzpjTMpEqbJAgoqGrSuoJL3SYu9/aqZ
	8sRzTcXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQVs-00021k-S3; Fri, 03 Jan 2020 17:13:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQUj-00013w-NM
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 17:12:20 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCD77215A4;
 Fri,  3 Jan 2020 17:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578071537;
 bh=CzIa2N9KGP+EU0AOPbMu7y5bL3h/GE34GGQxLaUQRxs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XzfXWud9ou17ogSUbC65mr/HJKbT5kLK8tCal03+UL6i3M+4DpZL63h/M7cGaFNE8
 GMTzc2LARA27yR6uu8A1cpLrs2ct4R0zt7e2+bRo+08fySLCjwOnVlExkQWY6tWKdU
 TtGKvU0O5Y9evv3B9//vsqdJC31jiNwGS9FkfBP0=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 06/19] media: samsung: Rename Samsung and Exynos to lowercase
Date: Fri,  3 Jan 2020 18:11:18 +0100
Message-Id: <20200103171131.9900-7-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103171131.9900-1-krzk@kernel.org>
References: <20200103171131.9900-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_091217_827661_1529590A 
X-CRM114-Status: GOOD (  14.97  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
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
 .../devicetree/bindings/media/exynos-jpeg-codec.txt         | 2 +-
 Documentation/devicetree/bindings/media/exynos5-gsc.txt     | 2 +-
 Documentation/devicetree/bindings/media/samsung-fimc.txt    | 2 +-
 .../devicetree/bindings/media/samsung-mipi-csis.txt         | 2 +-
 Documentation/media/v4l-drivers/fimc.rst                    | 6 +++---
 Documentation/media/v4l-drivers/tuners.rst                  | 2 +-
 drivers/media/platform/exynos4-is/media-dev.c               | 2 +-
 drivers/media/platform/s3c-camif/camif-core.c               | 2 +-
 8 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/exynos-jpeg-codec.txt b/Documentation/devicetree/bindings/media/exynos-jpeg-codec.txt
index 38941db23dd2..ce9a22689e53 100644
--- a/Documentation/devicetree/bindings/media/exynos-jpeg-codec.txt
+++ b/Documentation/devicetree/bindings/media/exynos-jpeg-codec.txt
@@ -1,4 +1,4 @@
-Samsung S5P/EXYNOS SoC series JPEG codec
+Samsung S5P/Exynos SoC series JPEG codec
 
 Required properties:
 
diff --git a/Documentation/devicetree/bindings/media/exynos5-gsc.txt b/Documentation/devicetree/bindings/media/exynos5-gsc.txt
index bc963a6d305a..1872688fa408 100644
--- a/Documentation/devicetree/bindings/media/exynos5-gsc.txt
+++ b/Documentation/devicetree/bindings/media/exynos5-gsc.txt
@@ -1,6 +1,6 @@
 * Samsung Exynos5 G-Scaler device
 
-G-Scaler is used for scaling and color space conversion on EXYNOS5 SoCs.
+G-Scaler is used for scaling and color space conversion on Exynos5 SoCs.
 
 Required properties:
 - compatible: should be one of
diff --git a/Documentation/devicetree/bindings/media/samsung-fimc.txt b/Documentation/devicetree/bindings/media/samsung-fimc.txt
index 48c599dacbdf..f91b9dc80eb3 100644
--- a/Documentation/devicetree/bindings/media/samsung-fimc.txt
+++ b/Documentation/devicetree/bindings/media/samsung-fimc.txt
@@ -1,4 +1,4 @@
-Samsung S5P/EXYNOS SoC Camera Subsystem (FIMC)
+Samsung S5P/Exynos SoC Camera Subsystem (FIMC)
 ----------------------------------------------
 
 The S5P/Exynos SoC Camera subsystem comprises of multiple sub-devices
diff --git a/Documentation/devicetree/bindings/media/samsung-mipi-csis.txt b/Documentation/devicetree/bindings/media/samsung-mipi-csis.txt
index be45f0b1a449..a4149c9434ea 100644
--- a/Documentation/devicetree/bindings/media/samsung-mipi-csis.txt
+++ b/Documentation/devicetree/bindings/media/samsung-mipi-csis.txt
@@ -1,4 +1,4 @@
-Samsung S5P/EXYNOS SoC series MIPI CSI-2 receiver (MIPI CSIS)
+Samsung S5P/Exynos SoC series MIPI CSI-2 receiver (MIPI CSIS)
 -------------------------------------------------------------
 
 Required properties:
diff --git a/Documentation/media/v4l-drivers/fimc.rst b/Documentation/media/v4l-drivers/fimc.rst
index 74585ba48b7f..2783aef65c01 100644
--- a/Documentation/media/v4l-drivers/fimc.rst
+++ b/Documentation/media/v4l-drivers/fimc.rst
@@ -2,7 +2,7 @@
 
 .. include:: <isonum.txt>
 
-The Samsung S5P/EXYNOS4 FIMC driver
+The Samsung S5P/Exynos4 FIMC driver
 ===================================
 
 Copyright |copy| 2012 - 2013 Samsung Electronics Co., Ltd.
@@ -19,7 +19,7 @@ drivers/media/platform/exynos4-is directory.
 Supported SoCs
 --------------
 
-S5PC100 (mem-to-mem only), S5PV210, EXYNOS4210
+S5PC100 (mem-to-mem only), S5PV210, Exynos4210
 
 Supported features
 ------------------
@@ -65,7 +65,7 @@ Media device interface
 ~~~~~~~~~~~~~~~~~~~~~~
 
 The driver supports Media Controller API as defined at :ref:`media_controller`.
-The media device driver name is "SAMSUNG S5P FIMC".
+The media device driver name is "Samsung S5P FIMC".
 
 The purpose of this interface is to allow changing assignment of FIMC instances
 to the SoC peripheral camera input at runtime and optionally to control internal
diff --git a/Documentation/media/v4l-drivers/tuners.rst b/Documentation/media/v4l-drivers/tuners.rst
index 7509be888909..d7924141c544 100644
--- a/Documentation/media/v4l-drivers/tuners.rst
+++ b/Documentation/media/v4l-drivers/tuners.rst
@@ -18,7 +18,7 @@ These differ mainly by the bandswitch byte.
 Tuner Manufacturers
 -------------------
 
-- SAMSUNG Tuner identification: (e.g. TCPM9091PD27)
+- Samsung Tuner identification: (e.g. TCPM9091PD27)
 
 .. code-block:: none
 
diff --git a/drivers/media/platform/exynos4-is/media-dev.c b/drivers/media/platform/exynos4-is/media-dev.c
index 9aaf3b8060d5..96e336b19cc3 100644
--- a/drivers/media/platform/exynos4-is/media-dev.c
+++ b/drivers/media/platform/exynos4-is/media-dev.c
@@ -1439,7 +1439,7 @@ static int fimc_md_probe(struct platform_device *pdev)
 	INIT_LIST_HEAD(&fmd->pipelines);
 	fmd->pdev = pdev;
 
-	strscpy(fmd->media_dev.model, "SAMSUNG S5P FIMC",
+	strscpy(fmd->media_dev.model, "Samsung S5P FIMC",
 		sizeof(fmd->media_dev.model));
 	fmd->media_dev.ops = &fimc_md_ops;
 	fmd->media_dev.dev = dev;
diff --git a/drivers/media/platform/s3c-camif/camif-core.c b/drivers/media/platform/s3c-camif/camif-core.c
index c6fbcd7036d6..92f43c0cbc0c 100644
--- a/drivers/media/platform/s3c-camif/camif-core.c
+++ b/drivers/media/platform/s3c-camif/camif-core.c
@@ -304,7 +304,7 @@ static int camif_media_dev_init(struct camif_dev *camif)
 	int ret;
 
 	memset(md, 0, sizeof(*md));
-	snprintf(md->model, sizeof(md->model), "SAMSUNG S3C%s CAMIF",
+	snprintf(md->model, sizeof(md->model), "Samsung S3C%s CAMIF",
 		 ip_rev == S3C6410_CAMIF_IP_REV ? "6410" : "244X");
 	strscpy(md->bus_info, "platform", sizeof(md->bus_info));
 	md->hw_revision = ip_rev;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
