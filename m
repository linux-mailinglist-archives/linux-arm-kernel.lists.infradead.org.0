Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3F7BB964
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 18:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BkcFi0anDEoScanGVvKZsN1RpRmtQHSICqLkwwDyOiw=; b=qf6+URRJS7Poq+bhD6iMSmaaYt
	N4xNxEP0wzi4uvnGiiiQB/941t1P1zb3O8ZoiBQR6RamOTnhakjcztnjLILUr4bIRuv7RwmBbT8gF
	cLn3KgOTlomLm5Ibjay39rtP6je8wm81aif/lZY3htoy4uid3MNV8zwh3oTvyssXEHRRzswgvEmdQ
	AZX6mdJEZUV/WURfHdEQlMw5wDyQnV18xvEqbqXBGD/hnAGsmWQkqX6uG97FrhjuDG2K26+1La8K9
	Y0MhEOtROevpOP6TEf3VIrpYjsb9u+DJ3H10QXTYTKIO3BpaY8Hnd1uL80LB9MK7gMNqqi7O3f8V4
	rx21wj7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCR1F-0006Kx-MM; Mon, 23 Sep 2019 16:16:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQzE-0003Zt-4X
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 16:14:53 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B95021BE5;
 Mon, 23 Sep 2019 16:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569255291;
 bh=055AApEoZHnhqgk+jRGaMDM2ewIZ2IZaWqUX6PpZBOs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=080ytc1/zsczrnAZzkk/jf+vyHuy1mflRjgCtER/h6Ys3Ydv1bhSixWAn+HLLDF5f
 fXj2G5bKxZYkwqKEmrIhd8NE2wUw106stvVZm3hSJu/CDv+5kT0WAyysLz/KgI2KUR
 XEyVj5JdthFCujY/OeJbz5nMHC9pM1t57MKCanVo=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Andrzej Hajda <a.hajda@samsung.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [PATCH v4 7/8] ARM: dts: exynos: Remove MCT subnode for interrupt map
 on Exynos54xx
Date: Mon, 23 Sep 2019 18:14:10 +0200
Message-Id: <20190923161411.9236-7-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190923161411.9236-1-krzk@kernel.org>
References: <20190923161411.9236-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_091452_295199_340C4DB0 
X-CRM114-Status: GOOD (  11.78  )
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

Multi Core Timer node has interrupts routed to two different parents -
GIC and combiner.  This was modeled with a interrupt-map within a
subnode but can be expressed in an easier and more common way, directly
in the node itself.

Tested on Odroid XU (Exynos5410), Odroid HC1 (Exynos5422) and Arndale
Octa (Exynos5420).

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v3:
1. Use interrupts-extended instead of interrupts-map.
---
 arch/arm/boot/dts/exynos54xx.dtsi | 33 +++++++++++--------------------
 1 file changed, 12 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
index 247d23872384..aca1b4831e38 100644
--- a/arch/arm/boot/dts/exynos54xx.dtsi
+++ b/arch/arm/boot/dts/exynos54xx.dtsi
@@ -67,27 +67,18 @@
 		mct: timer@101c0000 {
 			compatible = "samsung,exynos4210-mct";
 			reg = <0x101c0000 0xb00>;
-			interrupt-parent = <&mct_map>;
-			interrupts = <0>, <1>, <2>, <3>, <4>, <5>, <6>, <7>,
-					<8>, <9>, <10>, <11>;
-
-			mct_map: mct-map {
-				#interrupt-cells = <1>;
-				#address-cells = <0>;
-				#size-cells = <0>;
-				interrupt-map = <0 &combiner 23 3>,
-						<1 &combiner 23 4>,
-						<2 &combiner 25 2>,
-						<3 &combiner 25 3>,
-						<4 &gic 0 120 IRQ_TYPE_LEVEL_HIGH>,
-						<5 &gic 0 121 IRQ_TYPE_LEVEL_HIGH>,
-						<6 &gic 0 122 IRQ_TYPE_LEVEL_HIGH>,
-						<7 &gic 0 123 IRQ_TYPE_LEVEL_HIGH>,
-						<8 &gic 0 128 IRQ_TYPE_LEVEL_HIGH>,
-						<9 &gic 0 129 IRQ_TYPE_LEVEL_HIGH>,
-						<10 &gic 0 130 IRQ_TYPE_LEVEL_HIGH>,
-						<11 &gic 0 131 IRQ_TYPE_LEVEL_HIGH>;
-			};
+			interrupts-extended = <&combiner 23 3>,
+					      <&combiner 23 4>,
+					      <&combiner 25 2>,
+					      <&combiner 25 3>,
+					      <&gic 0 120 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic 0 121 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic 0 122 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic 0 123 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic 0 128 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic 0 129 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic 0 130 IRQ_TYPE_LEVEL_HIGH>,
+					      <&gic 0 131 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		watchdog: watchdog@101d0000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
