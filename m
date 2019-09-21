Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF6FB9F14
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 19:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jMYa7XsH1zM27OXEQCWQSW/oqBik1jY+uOKFyZMh9mw=; b=dgdlO3UlKK3cspZB8zFJcIEhFU
	/sJ07tBfBJjfY7y+RNKmMPtqqPcZX0HvRTKz/2et6E+gLDdUcFeu7O38ZtYtLt22tB04NTu+s72i9
	DGvYgViteKN6HSzG7WAfuJPvu2L/U3aHvAlTbVkpxVFScN+5VIottChVGozPzkL6CuTgYpOvzW4tz
	2ExyCn8Dm85yBBL8yPy1mjJXWtFqzQ6ex02QUMuNEdGWZJlotRPfdueSM1odAyLB8Db3YjkZmZNrU
	f1+vL5+/o1DdbRhOPmcMZEnC9NZmJxqlkWIXtG2mGk9Sta9uuVqIOpQmza/EZFfIoTeQE1CysrlHe
	LxlQgbdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBioB-0003gq-Vz; Sat, 21 Sep 2019 17:04:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBimD-0002Ed-VZ
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Sep 2019 17:02:31 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F78F21907;
 Sat, 21 Sep 2019 17:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569085349;
 bh=WMIbHRXqKnTwV8Qyk4jQI2KbATovpC39pOQTs+GXcc0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Jn4oa/WZlNu7XYMRyE3vTpcyy7SDnSQ+LtCys+Cm8vBnYTyInxGkF//s24yG0dQ6j
 tlH9/OEOS4zVc9KHgRphEc3DrVt8hSdMjy24cqhja0nhBFxCFv5DJnD2VyhB2Qerql
 Oc5FC5g6t8yJv1hwGkHoSZkBI7VJFDIThDe+dFaQ=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [PATCH v3 8/8] ARM: dts: exynos: Use defines for MCT interrupt GIC
 SPI/PPI specifier
Date: Sat, 21 Sep 2019 19:01:52 +0200
Message-Id: <20190921170152.5033-8-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190921170152.5033-1-krzk@kernel.org>
References: <20190921170152.5033-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_100230_102895_60A5B7FE 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sylwester Nawrocki <snawrocki@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
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
index 38c49ab8c733..650bee6355e4 100644
--- a/arch/arm/boot/dts/exynos4210.dtsi
+++ b/arch/arm/boot/dts/exynos4210.dtsi
@@ -116,12 +116,12 @@
 			#interrupt-cells = <1>;
 			interrupt-parent = <&mct>;
 			interrupts = <0>, <1>, <2>, <3>, <4>, <5>;
-			interrupt-map = <0 &gic 0 57 IRQ_TYPE_LEVEL_HIGH>,
-					<1 &gic 0 69 IRQ_TYPE_LEVEL_HIGH>,
+			interrupt-map = <0 &gic GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+					<1 &gic GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
 					<2 &combiner 12 6>,
 					<3 &combiner 12 7>,
-					<4 &gic 0 42 IRQ_TYPE_LEVEL_HIGH>,
-					<5 &gic 0 48 IRQ_TYPE_LEVEL_HIGH>;
+					<4 &gic GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
+					<5 &gic GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		watchdog: watchdog@10060000 {
diff --git a/arch/arm/boot/dts/exynos4412.dtsi b/arch/arm/boot/dts/exynos4412.dtsi
index 7e2dabefd53f..0810c14bf424 100644
--- a/arch/arm/boot/dts/exynos4412.dtsi
+++ b/arch/arm/boot/dts/exynos4412.dtsi
@@ -253,11 +253,11 @@
 			#interrupt-cells = <1>;
 			interrupt-parent = <&mct>;
 			interrupts = <0>, <1>, <2>, <3>, <4>;
-			interrupt-map = <0 &gic 0 57 IRQ_TYPE_LEVEL_HIGH>,
+			interrupt-map = <0 &gic GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
 					<1 &combiner 12 5>,
 					<2 &combiner 12 6>,
 					<3 &combiner 12 7>,
-					<4 &gic 1 12 IRQ_TYPE_LEVEL_HIGH>;
+					<4 &gic GIC_PPI 12 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		watchdog: watchdog@10060000 {
diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
index e0fcf3c2f537..61f22feefda9 100644
--- a/arch/arm/boot/dts/exynos5250.dtsi
+++ b/arch/arm/boot/dts/exynos5250.dtsi
@@ -247,8 +247,8 @@
 					<1 &combiner 23 4>,
 					<2 &combiner 25 2>,
 					<3 &combiner 25 3>,
-					<4 &gic 0 120 IRQ_TYPE_LEVEL_HIGH>,
-					<5 &gic 0 121 IRQ_TYPE_LEVEL_HIGH>;
+					<4 &gic GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
+					<5 &gic GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		pinctrl_0: pinctrl@11400000 {
diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
index a1c10a9a86f8..f52c7ce5d320 100644
--- a/arch/arm/boot/dts/exynos54xx.dtsi
+++ b/arch/arm/boot/dts/exynos54xx.dtsi
@@ -77,14 +77,14 @@
 					<1 &combiner 23 4>,
 					<2 &combiner 25 2>,
 					<3 &combiner 25 3>,
-					<4 &gic 0 120 IRQ_TYPE_LEVEL_HIGH>,
-					<5 &gic 0 121 IRQ_TYPE_LEVEL_HIGH>,
-					<6 &gic 0 122 IRQ_TYPE_LEVEL_HIGH>,
-					<7 &gic 0 123 IRQ_TYPE_LEVEL_HIGH>,
-					<8 &gic 0 128 IRQ_TYPE_LEVEL_HIGH>,
-					<9 &gic 0 129 IRQ_TYPE_LEVEL_HIGH>,
-					<10 &gic 0 130 IRQ_TYPE_LEVEL_HIGH>,
-					<11 &gic 0 131 IRQ_TYPE_LEVEL_HIGH>;
+					<4 &gic GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
+					<5 &gic GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
+					<6 &gic GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
+					<7 &gic GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+					<8 &gic GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>,
+					<9 &gic GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>,
+					<10 &gic GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+					<11 &gic GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		watchdog: watchdog@101d0000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
