Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4C3130309
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 16:22:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HjeKyzC3qMJ/ubtQZSXP0o/y8fFA7ohN+qGnPyPGKYg=; b=j/w3TdiBx88xCCgnsfDgtCis7O
	q5OqgRXJ5vq4DZ+jfoJ5o4ru9oydRK+s+b7FCHTDj8STZQaftOWB4nZotNGJ2ZYl/OeGwo281r/U7
	9c5ZoWKDJhmgjd5Y5KiRzrB4JWDrNs4pFly264e3D1o8+IF50SBziPiPXu2ZEXzhMArs83yOIBLyA
	hT6P31JKGCTFMGDxCxzq3CfFO8PTt0I+/uYnlDvIw6Q/YjaNid3HS7iza70fw3qpPR2PqLyPXhXxE
	BAEFi729CkuEmJG4oHPGjNs9y9oJwe0uORePHnQXTeTsBuealqpuyKC+MNPaTTRNVfeLE1A8FJeXd
	H/3RVK6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inlFh-0000xg-Rc; Sat, 04 Jan 2020 15:22:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inlFJ-0000qk-Ow
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 15:21:47 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AEC8D2464E;
 Sat,  4 Jan 2020 15:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578151305;
 bh=Y7L88PCTUdeR29N/KZb0qXw8Sim4EahW7H2Nh1Q54qk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=df4GISARj1IPmd74Ka2Y0gJovuqv1YPjFUbPDMoGbRVrTZPESYqMSNUICPVE/5V4m
 fYddVW0ZVE5imK6jc+V8RlJahRCRWbfwXV8twb1nm8zMr07AvFsJd4ICRSyzsR4XXq
 3iRzwo49M9TdG+vf4VUhXPK3wmYTJGkUIdSoCk6c=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/20] arm64: dts: exynos: Rename Samsung and Exynos to
 lowercase
Date: Sat,  4 Jan 2020 16:20:49 +0100
Message-Id: <20200104152107.11407-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200104152107.11407-1-krzk@kernel.org>
References: <20200104152107.11407-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_072145_848686_4F18E118 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi | 2 +-
 arch/arm64/boot/dts/exynos/exynos5433-tm2.dts         | 2 +-
 arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts        | 2 +-
 arch/arm64/boot/dts/exynos/exynos7-espresso.dts       | 4 ++--
 arch/arm64/boot/dts/exynos/exynos7.dtsi               | 2 +-
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
index 6f90b0e62cba..250fc01de78d 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG Exynos5433 TM2 board device tree source
+ * Samsung Exynos5433 TM2 board device tree source
  *
  * Copyright (c) 2016 Samsung Electronics Co., Ltd.
  *
diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2.dts b/arch/arm64/boot/dts/exynos/exynos5433-tm2.dts
index dda5d2746a74..fdd0796b29d4 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2.dts
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG Exynos5433 TM2 board device tree source
+ * Samsung Exynos5433 TM2 board device tree source
  *
  * Copyright (c) 2016 Samsung Electronics Co., Ltd.
  *
diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts b/arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts
index 1e207ce8b97b..089fc7a1af67 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG Exynos5433 TM2E board device tree source
+ * Samsung Exynos5433 TM2E board device tree source
  *
  * Copyright (c) 2016 Samsung Electronics Co., Ltd.
  *
diff --git a/arch/arm64/boot/dts/exynos/exynos7-espresso.dts b/arch/arm64/boot/dts/exynos/exynos7-espresso.dts
index 080e0f56e108..7af288fa9475 100644
--- a/arch/arm64/boot/dts/exynos/exynos7-espresso.dts
+++ b/arch/arm64/boot/dts/exynos/exynos7-espresso.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG Exynos7 Espresso board device tree source
+ * Samsung Exynos7 Espresso board device tree source
  *
  * Copyright (c) 2014 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
@@ -13,7 +13,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
-	model = "Samsung Exynos7 Espresso board based on EXYNOS7";
+	model = "Samsung Exynos7 Espresso board based on Exynos7";
 	compatible = "samsung,exynos7-espresso", "samsung,exynos7";
 
 	aliases {
diff --git a/arch/arm64/boot/dts/exynos/exynos7.dtsi b/arch/arm64/boot/dts/exynos/exynos7.dtsi
index 3a00ef0a17ff..5558045637ac 100644
--- a/arch/arm64/boot/dts/exynos/exynos7.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * SAMSUNG EXYNOS7 SoC device tree source
+ * Samsung Exynos7 SoC device tree source
  *
  * Copyright (c) 2014 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
