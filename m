Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A759BB966
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 18:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oe64in8k9oGQrgs8MOiNjCiIfetBZ9aIdmty+1OfVBk=; b=HXC0L3jDaiQeOd4wEPMaNAO+C0
	/QgeYc1gsz4pUv4AM/Gh71FG0CdUffsqNYjfdxZl72SJC6c+/xsy6BKt3lGDPqAPI2TjpVj5aogOM
	xnYfIJfj+QCmi892G2pU2gtXNmp79O3SBn79gvO9C2E6vtIF3ymcjwqlnKjUXA1VVCn6JR89ZJXvg
	sF6EkfPkuJWc/dhTDTxw61HeuMKCLLmazNXG9T4w4mOWW52gZnRzf5mgqLtgqPwo4x9zfl3c5/Og5
	P0KnfcO0hk9Nk5DZF3qODLUUaRHBwqzVpIqpLJlJnYt3G05Bf0GAY/PZOiyRlsmcWPiezaRAxh0Yw
	4Ok4wgMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCR1T-0006bc-IH; Mon, 23 Sep 2019 16:17:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQzH-0003dl-NC
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 16:14:57 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48A7F20B7C;
 Mon, 23 Sep 2019 16:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569255295;
 bh=qXqV0J88N2dypvGBO7A/lZfZUOS9/+hk7Rbjthl+2/U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HSgzdn01o5ejN576RO+vqEPDnxHhjrna19PWbCUd2zXNLjFC1QnsYCWkiYH8VT0rb
 2Grlxp+4Rad0kYSiRLsC6HLh7IpYUr+SPtegbvff5omkvf5pTvDqJ+8d1QPyxCEPfP
 dRqokgYw+O0yLG7WzUkTjBcF8HpkwBNkHVAtI/4U=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Andrzej Hajda <a.hajda@samsung.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [PATCH v4 8/8] ARM: dts: exynos: Use defines for MCT interrupt GIC
 SPI/PPI specifier
Date: Mon, 23 Sep 2019 18:14:11 +0200
Message-Id: <20190923161411.9236-8-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190923161411.9236-1-krzk@kernel.org>
References: <20190923161411.9236-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_091455_965045_ACDFA139 
X-CRM114-Status: GOOD (  12.19  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sylwester Nawrocki <snawrocki@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace hard-coded number with appropriate define for GIC SPI or PPI
specifier in interrupt.  This makes code easier to read.  No expected
functionality change.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/boot/dts/exynos4210.dtsi |  8 ++++----
 arch/arm/boot/dts/exynos4412.dtsi |  4 ++--
 arch/arm/boot/dts/exynos5250.dtsi |  4 ++--
 arch/arm/boot/dts/exynos54xx.dtsi | 16 ++++++++--------
 4 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boot/dts/exynos4210.dtsi b/arch/arm/boot/dts/exynos4210.dtsi
index 5fa33d43821e..aac3b7a20a37 100644
--- a/arch/arm/boot/dts/exynos4210.dtsi
+++ b/arch/arm/boot/dts/exynos4210.dtsi
@@ -111,12 +111,12 @@
 			reg = <0x10050000 0x800>;
 			clocks = <&clock CLK_FIN_PLL>, <&clock CLK_MCT>;
 			clock-names = "fin_pll", "mct";
-			interrupts-extended = <&gic 0 57 IRQ_TYPE_LEVEL_HIGH>,
-					      <&gic 0 69 IRQ_TYPE_LEVEL_HIGH>,
+			interrupts-extended = <&gic GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
 					      <&combiner 12 6>,
 					      <&combiner 12 7>,
-					      <&gic 0 42 IRQ_TYPE_LEVEL_HIGH>,
-					      <&gic 0 48 IRQ_TYPE_LEVEL_HIGH>;
+					      <&gic GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		watchdog: watchdog@10060000 {
diff --git a/arch/arm/boot/dts/exynos4412.dtsi b/arch/arm/boot/dts/exynos4412.dtsi
index 9b5fb4e54d7c..96a5ef3a2864 100644
--- a/arch/arm/boot/dts/exynos4412.dtsi
+++ b/arch/arm/boot/dts/exynos4412.dtsi
@@ -248,11 +248,11 @@
 			reg = <0x10050000 0x800>;
 			clocks = <&clock CLK_FIN_PLL>, <&clock CLK_MCT>;
 			clock-names = "fin_pll", "mct";
-			interrupts-extended = <&gic 0 57 IRQ_TYPE_LEVEL_HIGH>,
+			interrupts-extended = <&gic GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
 					      <&combiner 12 5>,
 					      <&combiner 12 6>,
 					      <&combiner 12 7>,
-					      <&gic 1 12 IRQ_TYPE_LEVEL_HIGH>;
+					      <&gic GIC_PPI 12 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		watchdog: watchdog@10060000 {
diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
index a549eafd2c64..f01e3156191d 100644
--- a/arch/arm/boot/dts/exynos5250.dtsi
+++ b/arch/arm/boot/dts/exynos5250.dtsi
@@ -242,8 +242,8 @@
 					      <&combiner 23 4>,
 					      <&combiner 25 2>,
 					      <&combiner 25 3>,
-					      <&gic 0 120 IRQ_TYPE_LEVEL_HIGH>,
-					      <&gic 0 121 IRQ_TYPE_LEVEL_HIGH>;
+					      <&gic GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		pinctrl_0: pinctrl@11400000 {
diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
index aca1b4831e38..06ae40a2f1e9 100644
--- a/arch/arm/boot/dts/exynos54xx.dtsi
+++ b/arch/arm/boot/dts/exynos54xx.dtsi
@@ -71,14 +71,14 @@
 					      <&combiner 23 4>,
 					      <&combiner 25 2>,
 					      <&combiner 25 3>,
-					      <&gic 0 120 IRQ_TYPE_LEVEL_HIGH>,
-					      <&gic 0 121 IRQ_TYPE_LEVEL_HIGH>,
-					      <&gic 0 122 IRQ_TYPE_LEVEL_HIGH>,
-					      <&gic 0 123 IRQ_TYPE_LEVEL_HIGH>,
-					      <&gic 0 128 IRQ_TYPE_LEVEL_HIGH>,
-					      <&gic 0 129 IRQ_TYPE_LEVEL_HIGH>,
-					      <&gic 0 130 IRQ_TYPE_LEVEL_HIGH>,
-					      <&gic 0 131 IRQ_TYPE_LEVEL_HIGH>;
+					      <&gic GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		watchdog: watchdog@101d0000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
