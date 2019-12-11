Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA3011AC03
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 14:24:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SP2EQwf10p/4jVsQI6q+BosXpGuoj7PAY8dWImCHlpQ=; b=aTw0Rb9nk8eM/6
	2qCL6SrHhP0ZTtqjhP089bYo/ltLZwK0my8di7VoHcapgWF1DYcwDC6fuP5b3Pu/5/ziqp7F90Aob
	lcaJUDp3d+vJM8TZyJl6fnJ94TfxFqWTD5w+40606ti0l2Qke94jarixeXmnqzu93WvKpuNqrr+v+
	DUlnvWKdIqesNErGff1Bv9z76wDUoQq6S+7SgBxdkGJXOuBR0ia4Yrf5L3KB6mXDkRuEnH6uISHkH
	a4DT23CIO9DEti7ztsx5DkQcGl8eJ4+dx7ToCYaHiv9/zD3QI2Q9NdifHweZgMpF5n6r6XeANRaRq
	y6jO1tIGsJhcTcQtZ1AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if1yZ-0005tm-3n; Wed, 11 Dec 2019 13:24:23 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if1yR-0005tC-Kw; Wed, 11 Dec 2019 13:24:17 +0000
Received: from droid15-sz.amlogic.com (10.28.8.25) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Wed, 11 Dec 2019
 21:24:35 +0800
From: Jian Hu <jian.hu@amlogic.com>
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
Subject: [PATCH v2] arm64: dts: meson: add A1 periphs and PLL clock nodes
Date: Wed, 11 Dec 2019 21:23:59 +0800
Message-ID: <20191211132359.53647-1-jian.hu@amlogic.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Originating-IP: [10.28.8.25]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_052415_687641_50FD804A 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 linux-arm-kernel@lists.infradead.org, Qiufang Dai <qiufang.dai@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 Chandle Zou <chandle.zou@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add A1 periphs and PLL clock controller nodes, Some clocks
in periphs controller are the parents of PLL clocks, Meanwhile
some clocks in PLL controller are those of periphs clocks.
They rely on each other.

Signed-off-by: Jian Hu <jian.hu@amlogic.com>
---
Compared with the previous series, the register region
is only for the clock. So syscon is not used in A1.

This patch depends on A1 clock patchset at [0]

Changes since v1 at [1]:
-remove the compared message in commit description,
 And put it after the '---'
-reorder order the includes
-reorder the clock node
-change the clock node name

[0] https://lkml.kernel.org/r/20191206074052.15557-1-jian.hu@amlogic.com
[1] https://lkml.kernel.org/r/20191211070835.83489-1-jian.hu@amlogic.com

---
---
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
index 7210ad049d1d..48ba3eba547d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
@@ -3,6 +3,8 @@
  * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
  */
 
+#include <dt-bindings/clock/a1-pll-clkc.h>
+#include <dt-bindings/clock/a1-clkc.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 
@@ -74,6 +76,21 @@
 			#size-cells = <2>;
 			ranges = <0x0 0x0 0x0 0xfe000000 0x0 0x1000000>;
 
+			clkc_periphs: clock-controller@800 {
+				compatible = "amlogic,a1-periphs-clkc";
+				#clock-cells = <1>;
+				reg = <0 0x800 0 0x104>;
+				clocks = <&clkc_pll CLKID_FCLK_DIV2>,
+					 <&clkc_pll CLKID_FCLK_DIV3>,
+					 <&clkc_pll CLKID_FCLK_DIV5>,
+					 <&clkc_pll CLKID_FCLK_DIV7>,
+					 <&clkc_pll CLKID_HIFI_PLL>,
+					 <&xtal>;
+				clock-names = "fclk_div2", "fclk_div3",
+					      "fclk_div5", "fclk_div7",
+					      "hifi_pll", "xtal";
+			};
+
 			uart_AO: serial@1c00 {
 				compatible = "amlogic,meson-gx-uart",
 					     "amlogic,meson-ao-uart";
@@ -93,6 +110,15 @@
 				clock-names = "xtal", "pclk", "baud";
 				status = "disabled";
 			};
+
+			clkc_pll: clock-controller@7c80 {
+				compatible = "amlogic,a1-pll-clkc";
+				#clock-cells = <1>;
+				reg = <0 0x7c80 0 0x21c>;
+				clocks = <&clkc_periphs CLKID_XTAL_FIXPLL>,
+					 <&clkc_periphs CLKID_XTAL_HIFIPLL>;
+				clock-names = "xtal_fixpll", "xtal_hifipll";
+			};
 		};
 
 		gic: interrupt-controller@ff901000 {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
