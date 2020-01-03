Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CA612FB38
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 18:12:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Y1MBQb5cpw4tuwJWvO7gNh1/gF5MxBxMPzbjOxJ/WfY=; b=eSzdTz/E7UDS5LO9xCHodtkCJ8
	G35EuJMWpmvtTzD7RwFC6J6CFdFcx7xQTvDxuUVnJUmctEoGHAaTTdQsmmOp51pb79TbO7RWK2kGq
	xwBLne/eF6SGgEkeshV1U01dNlLcncxlHDqqDdmGa0EF1s9UzJ+KNBpRsRKIHWQGCmcPsUFv/MHVW
	3eSQc9nl1zjgSYDTyQ5yOs2VPBsDWyJfirQzSkfBHN7Vrt4FFxQfSdakVoOhC/hr0cFmjk8y5IQd4
	PMmRCOrqdAHz9/MGIYg8QLCkI9OCNGafbQKS0QTsxFFeHXXvMYGPbvK/0ZDo+xVbDBGEv57Ia3+u6
	Grd1T98g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQUj-0000lz-Je; Fri, 03 Jan 2020 17:12:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQUO-0000dv-03
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 17:11:58 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AAEB2222C4;
 Fri,  3 Jan 2020 17:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578071515;
 bh=oHfzo/HLcd7ztLldtrLgjwS2veYiZ28vrLG8OXZd81w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zJ9Op1zA+9pJQNZkUkInlCEshQY/V6WoQ9+9MEs8jml3Fhh/K5nomk4G76m9gSmho
 n17ofdnP5LB91FHwJHw6UL7QzMjKxBGhj1huMFGLue+ICj54cjlSgH1t4jRJfua8Oa
 IySeD80y/GRYiH+25XQAFySwjL9L18/KYOhX4aJs=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 02/19] ARM: dts: samsung: Rename Samsung and Exynos to
 lowercase
Date: Fri,  3 Jan 2020 18:11:14 +0100
Message-Id: <20200103171131.9900-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103171131.9900-1-krzk@kernel.org>
References: <20200103171131.9900-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_091156_101697_F81BE2D8 
X-CRM114-Status: GOOD (  15.74  )
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
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
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
 arch/arm/boot/dts/exynos5250-arndale.dts      | 2 +-
 arch/arm/boot/dts/exynos5250-smdk5250.dts     | 4 ++--
 arch/arm/boot/dts/exynos5250.dtsi             | 8 ++++----
 arch/arm/boot/dts/exynos5260-xyref5260.dts    | 4 ++--
 arch/arm/boot/dts/exynos5260.dtsi             | 2 +-
 arch/arm/boot/dts/exynos5410-smdk5410.dts     | 4 ++--
 arch/arm/boot/dts/exynos5410.dtsi             | 6 +++---
 arch/arm/boot/dts/exynos5420-arndale-octa.dts | 2 +-
 arch/arm/boot/dts/exynos5420-cpus.dtsi        | 2 +-
 arch/arm/boot/dts/exynos5420-smdk5420.dts     | 4 ++--
 arch/arm/boot/dts/exynos5420.dtsi             | 6 +++---
 arch/arm/boot/dts/exynos5422-cpus.dtsi        | 2 +-
 arch/arm/boot/dts/exynos5800.dtsi             | 6 +++---
 arch/arm/boot/dts/s3c2416-smdk2416.dts        | 2 +-
 arch/arm/boot/dts/s3c6410-smdk6410.dts        | 4 ++--
 15 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5250-arndale.dts b/arch/arm/boot/dts/exynos5250-arndale.dts
index 3eddf5dbcf7b..f8ebc620f42d 100644
--- a/arch/arm/boot/dts/exynos5250-arndale.dts
+++ b/arch/arm/boot/dts/exynos5250-arndale.dts
@@ -15,7 +15,7 @@
 #include "exynos5250.dtsi"
 
 / {
-	model = "Insignal Arndale evaluation board based on EXYNOS5250";
+	model = "Insignal Arndale evaluation board based on Exynos5250";
 	compatible = "insignal,arndale", "samsung,exynos5250", "samsung,exynos5";
 
 	memory@40000000 {
diff --git a/arch/arm/boot/dts/exynos5250-smdk5250.dts b/arch/arm/boot/dts/exynos5250-smdk5250.dts
index 6dc96948a9cc..5c42df024adf 100644
--- a/arch/arm/boot/dts/exynos5250-smdk5250.dts
+++ b/arch/arm/boot/dts/exynos5250-smdk5250.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG SMDK5250 board device tree source
+ * Samsung SMDK5250 board device tree source
  *
  * Copyright (c) 2012 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
@@ -12,7 +12,7 @@
 #include "exynos5250.dtsi"
 
 / {
-	model = "SAMSUNG SMDK5250 board based on EXYNOS5250";
+	model = "Samsung SMDK5250 board based on Exynos5250";
 	compatible = "samsung,smdk5250", "samsung,exynos5250", "samsung,exynos5";
 
 	aliases {
diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
index ec983283f573..b6135af7ef39 100644
--- a/arch/arm/boot/dts/exynos5250.dtsi
+++ b/arch/arm/boot/dts/exynos5250.dtsi
@@ -1,16 +1,16 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG EXYNOS5250 SoC device tree source
+ * Samsung Exynos5250 SoC device tree source
  *
  * Copyright (c) 2012 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
  *
- * SAMSUNG EXYNOS5250 SoC device nodes are listed in this file.
- * EXYNOS5250 based board files can include this file and provide
+ * Samsung Exynos5250 SoC device nodes are listed in this file.
+ * Exynos5250 based board files can include this file and provide
  * values for board specfic bindings.
  *
  * Note: This file does not include device nodes for all the controllers in
- * EXYNOS5250 SoC. As device tree coverage for EXYNOS5250 increases,
+ * Exynos5250 SoC. As device tree coverage for Exynos5250 increases,
  * additional nodes can be added to this file.
  */
 
diff --git a/arch/arm/boot/dts/exynos5260-xyref5260.dts b/arch/arm/boot/dts/exynos5260-xyref5260.dts
index 36a2b77eeb9d..0dc2ec16aa0a 100644
--- a/arch/arm/boot/dts/exynos5260-xyref5260.dts
+++ b/arch/arm/boot/dts/exynos5260-xyref5260.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG XYREF5260 board device tree source
+ * Samsung XYREF5260 board device tree source
  *
  * Copyright (c) 2013 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
@@ -10,7 +10,7 @@
 #include "exynos5260.dtsi"
 
 / {
-	model = "SAMSUNG XYREF5260 board based on EXYNOS5260";
+	model = "Samsung XYREF5260 board based on Exynos5260";
 	compatible = "samsung,xyref5260", "samsung,exynos5260", "samsung,exynos5";
 
 	memory@20000000 {
diff --git a/arch/arm/boot/dts/exynos5260.dtsi b/arch/arm/boot/dts/exynos5260.dtsi
index b0811dbbb362..154df70128f3 100644
--- a/arch/arm/boot/dts/exynos5260.dtsi
+++ b/arch/arm/boot/dts/exynos5260.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG EXYNOS5260 SoC device tree source
+ * Samsung Exynos5260 SoC device tree source
  *
  * Copyright (c) 2013 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
diff --git a/arch/arm/boot/dts/exynos5410-smdk5410.dts b/arch/arm/boot/dts/exynos5410-smdk5410.dts
index dffa5e3ed90c..5282b5deca86 100644
--- a/arch/arm/boot/dts/exynos5410-smdk5410.dts
+++ b/arch/arm/boot/dts/exynos5410-smdk5410.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG SMDK5410 board device tree source
+ * Samsung SMDK5410 board device tree source
  *
  * Copyright (c) 2013 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
@@ -10,7 +10,7 @@
 #include "exynos5410.dtsi"
 #include <dt-bindings/interrupt-controller/irq.h>
 / {
-	model = "Samsung SMDK5410 board based on EXYNOS5410";
+	model = "Samsung SMDK5410 board based on Exynos5410";
 	compatible = "samsung,smdk5410", "samsung,exynos5410", "samsung,exynos5";
 
 	memory@40000000 {
diff --git a/arch/arm/boot/dts/exynos5410.dtsi b/arch/arm/boot/dts/exynos5410.dtsi
index a4b03d4c3de5..2eab80bf5f3a 100644
--- a/arch/arm/boot/dts/exynos5410.dtsi
+++ b/arch/arm/boot/dts/exynos5410.dtsi
@@ -1,12 +1,12 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG EXYNOS5410 SoC device tree source
+ * Samsung Exynos5410 SoC device tree source
  *
  * Copyright (c) 2013 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
  *
- * SAMSUNG EXYNOS5410 SoC device nodes are listed in this file.
- * EXYNOS5410 based board files can include this file and provide
+ * Samsung Exynos5410 SoC device nodes are listed in this file.
+ * Exynos5410 based board files can include this file and provide
  * values for board specfic bindings.
  */
 
diff --git a/arch/arm/boot/dts/exynos5420-arndale-octa.dts b/arch/arm/boot/dts/exynos5420-arndale-octa.dts
index 592d7b45ecc8..ee28d30f5476 100644
--- a/arch/arm/boot/dts/exynos5420-arndale-octa.dts
+++ b/arch/arm/boot/dts/exynos5420-arndale-octa.dts
@@ -15,7 +15,7 @@
 #include <dt-bindings/clock/samsung,s2mps11.h>
 
 / {
-	model = "Insignal Arndale Octa evaluation board based on EXYNOS5420";
+	model = "Insignal Arndale Octa evaluation board based on Exynos5420";
 	compatible = "insignal,arndale-octa", "samsung,exynos5420", "samsung,exynos5";
 
 	memory@20000000 {
diff --git a/arch/arm/boot/dts/exynos5420-cpus.dtsi b/arch/arm/boot/dts/exynos5420-cpus.dtsi
index 0ee6e92a3c29..58d1c54cf925 100644
--- a/arch/arm/boot/dts/exynos5420-cpus.dtsi
+++ b/arch/arm/boot/dts/exynos5420-cpus.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG EXYNOS5420 SoC cpu device tree source
+ * Samsung Exynos5420 SoC cpu device tree source
  *
  * Copyright (c) 2015 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
diff --git a/arch/arm/boot/dts/exynos5420-smdk5420.dts b/arch/arm/boot/dts/exynos5420-smdk5420.dts
index 8240e5186972..e3f2afe8359a 100644
--- a/arch/arm/boot/dts/exynos5420-smdk5420.dts
+++ b/arch/arm/boot/dts/exynos5420-smdk5420.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG SMDK5420 board device tree source
+ * Samsung SMDK5420 board device tree source
  *
  * Copyright (c) 2013 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
@@ -12,7 +12,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
-	model = "Samsung SMDK5420 board based on EXYNOS5420";
+	model = "Samsung SMDK5420 board based on Exynos5420";
 	compatible = "samsung,smdk5420", "samsung,exynos5420", "samsung,exynos5";
 
 	memory@20000000 {
diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index f66a2d1b3428..b672080e7469 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -1,12 +1,12 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG EXYNOS5420 SoC device tree source
+ * Samsung Exynos5420 SoC device tree source
  *
  * Copyright (c) 2013 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
  *
- * SAMSUNG EXYNOS5420 SoC device nodes are listed in this file.
- * EXYNOS5420 based board files can include this file and provide
+ * Samsung Exynos5420 SoC device nodes are listed in this file.
+ * Exynos5420 based board files can include this file and provide
  * values for board specfic bindings.
  */
 
diff --git a/arch/arm/boot/dts/exynos5422-cpus.dtsi b/arch/arm/boot/dts/exynos5422-cpus.dtsi
index e4a5857c135f..1b8605cf2407 100644
--- a/arch/arm/boot/dts/exynos5422-cpus.dtsi
+++ b/arch/arm/boot/dts/exynos5422-cpus.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG EXYNOS5422 SoC cpu device tree source
+ * Samsung Exynos5422 SoC cpu device tree source
  *
  * Copyright (c) 2015 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
diff --git a/arch/arm/boot/dts/exynos5800.dtsi b/arch/arm/boot/dts/exynos5800.dtsi
index b4fd53496450..dfb99ab53c3e 100644
--- a/arch/arm/boot/dts/exynos5800.dtsi
+++ b/arch/arm/boot/dts/exynos5800.dtsi
@@ -1,12 +1,12 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG EXYNOS5800 SoC device tree source
+ * Samsung Exynos5800 SoC device tree source
  *
  * Copyright (c) 2014 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
  *
- * SAMSUNG EXYNOS5800 SoC device nodes are listed in this file.
- * EXYNOS5800 based board files can include this file and provide
+ * Samsung Exynos5800 SoC device nodes are listed in this file.
+ * Exynos5800 based board files can include this file and provide
  * values for board specfic bindings.
  */
 
diff --git a/arch/arm/boot/dts/s3c2416-smdk2416.dts b/arch/arm/boot/dts/s3c2416-smdk2416.dts
index cb371bf72f64..811bfdef4e9b 100644
--- a/arch/arm/boot/dts/s3c2416-smdk2416.dts
+++ b/arch/arm/boot/dts/s3c2416-smdk2416.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG SMDK2416 board device tree source
+ * Samsung SMDK2416 board device tree source
  *
  * Copyright (c) 2013 Heiko Stuebner <heiko@sntech.de>
  */
diff --git a/arch/arm/boot/dts/s3c6410-smdk6410.dts b/arch/arm/boot/dts/s3c6410-smdk6410.dts
index 3bf6c450a26e..96267f5f02a8 100644
--- a/arch/arm/boot/dts/s3c6410-smdk6410.dts
+++ b/arch/arm/boot/dts/s3c6410-smdk6410.dts
@@ -4,7 +4,7 @@
  *
  * Copyright (c) 2013 Tomasz Figa <tomasz.figa@gmail.com>
  *
- * Device tree source file for SAMSUNG SMDK6410 board which is based on
+ * Device tree source file for Samsung SMDK6410 board which is based on
  * Samsung's S3C6410 SoC.
  */
 
@@ -16,7 +16,7 @@
 #include "s3c6410.dtsi"
 
 / {
-	model = "SAMSUNG SMDK6410 board based on S3C6410";
+	model = "Samsung SMDK6410 board based on S3C6410";
 	compatible = "samsung,mini6410", "samsung,s3c6410";
 
 	memory@50000000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
