Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F854D97C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 20:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rkLdX1VophxAxaNWKwQXy95iph1bZAWZ0Rsj+QsEg64=; b=hTInB/AYEqa1hN/WRYsQioL73f
	l+5LKrD60Uiq8XPFt8qN4Hdut1jUaYHl2iu90q7TfRnSE0NZYzA2XR1kRUL9bnAm+jHWdZHZ3zUAD
	7EzJsC0mpLHnJJacJupI4JsHZRvoClyiVBvUFH5hthSJfOMdytUulMUhpDIfXdRmqMMdtyg53Raeo
	eyUe1rPRRp2IjqBBjuCumfb70S3JhMclxAj6GQkq4bgQeHnQS+NWPvIOzrqAXkJZFXj/Bkbb4lNbW
	JyJOUxHZfmmXXnxwVOj1AjC28x1f/sd5DpPuPgMH5rmyJLXXDmbyf6XOMVskykmJOP6C5Z8r2dG32
	2zUOqtHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1wB-0001zs-42; Thu, 20 Jun 2019 18:37:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1ui-000184-4R
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 18:36:01 +0000
Received: from localhost.localdomain (unknown [194.230.155.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ABCB62089C;
 Thu, 20 Jun 2019 18:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561055759;
 bh=si0C0hwqFoNJpgG15iD13hG7RKrfo/vp616+yeNXYPQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=j+Jx6nVsybz+s7tgpto5HwbYR0lmR7xkegBEZc+aEONpbueq52vus9Es2UqeXMQZy
 b5YOvp8FYnLiUJFbjee+A1rr1cs6b0Ou5wTStWswUXTd87nAiujlAHXX94HvVzpLOc
 TfpqkRqXJ/pNy37jv2+stxLG5SrCj4eFfraNgAqo=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sangbeom Kim <sbkim73@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 5/6] ARM: dts: exynos: Add regulator suspend configuration to
 Arndale Octa board
Date: Thu, 20 Jun 2019 20:35:29 +0200
Message-Id: <20190620183530.5386-5-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620183530.5386-1-krzk@kernel.org>
References: <20190620183530.5386-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_113600_332812_5D14B054 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sylwester Nawrocki <snawrocki@kernel.org>, notify@kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the PMIC regulator suspend configuration to Arndale Octa board to
reduce power usage during suspend and keep necessary regulators on.  The
configuration is based on vendor (Insignal) reference kernel.

This is purely for hardware description because board does not support
Suspend to RAM and the S2MPS11 driver does not support
"regulator-on-in-suspend" property.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/boot/dts/exynos5420-arndale-octa.dts | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5420-arndale-octa.dts b/arch/arm/boot/dts/exynos5420-arndale-octa.dts
index dc9162a17475..4463af8fa79d 100644
--- a/arch/arm/boot/dts/exynos5420-arndale-octa.dts
+++ b/arch/arm/boot/dts/exynos5420-arndale-octa.dts
@@ -451,6 +451,10 @@
 				regulator-name = "PVDD_APIO_MMCOFF_2V8";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <2800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
 			};
 
 			ldo14_reg: LDO14 {
@@ -464,12 +468,20 @@
 				regulator-name = "PVDD_PERI_2V8";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
 			};
 
 			ldo16_reg: LDO16 {
 				regulator-name = "PVDD_PERI_3V3";
 				regulator-min-microvolt = <2200000>;
 				regulator-max-microvolt = <2200000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
 			};
 
 			ldo17_reg: LDO17 {
@@ -489,6 +501,10 @@
 				regulator-name = "PVDD_TFLASH_2V8";
 				regulator-min-microvolt = <2800000>;
 				regulator-max-microvolt = <2800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
 			};
 
 			ldo20_reg: LDO20 {
@@ -515,12 +531,20 @@
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <1100000>;
 				regulator-always-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
 			};
 
 			ldo24_reg: LDO24 {
 				regulator-name = "PVDD_CAM1_AVDD_2V8";
 				regulator-min-microvolt = <2800000>;
 				regulator-max-microvolt = <2800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
 			};
 
 			ldo25_reg: LDO25 {
@@ -540,6 +564,10 @@
 				regulator-name = "PVDD_G3DS_1V0";
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <1100000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
 			};
 
 			ldo28_reg: LDO28 {
@@ -617,6 +645,10 @@
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <1300000>;
 				regulator-always-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
 			};
 
 			buck2_reg: BUCK2 {
@@ -624,6 +656,10 @@
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <1500000>;
 				regulator-always-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
 			};
 
 			buck3_reg: BUCK3 {
@@ -631,12 +667,20 @@
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <1400000>;
 				regulator-always-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
 			};
 
 			buck4_reg: BUCK4 {
 				regulator-name = "PVDD_G3D_1V0";
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <1400000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
 			};
 
 			buck5_reg: BUCK5 {
@@ -651,6 +695,10 @@
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <1500000>;
 				regulator-always-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
 			};
 
 			buck7_reg: BUCK7 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
