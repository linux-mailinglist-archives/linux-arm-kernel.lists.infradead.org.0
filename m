Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E56611A4DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 08:08:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jFWBnZkPiWBlI+Bk66jryx/htxkmiWh5F6AdMz7/7e0=; b=Cu8uI88VZXS2TE
	P9rrBE6UiP53nhhpc5BZN1aM5dLqa3tFw5Cgh+6u4C5LNBi84lWlRGxeSllnFYueX9nwC4w2lY0YW
	h5z2NtPvxP9Y+uLjkffhYWyUUU0AJ1lOxd31OOv2tOzeM1GRUysL2ikG1/1j1wY+XNGu4fLU+Adfa
	TMSv5G1oN7pyGOs23srK0pF1oYT0GbJJ8RbK5q2miZqgodUHz/ydl57uYTQORU9NQMjvoi+80GA9l
	6rWoBuMmizNHSAVUUXDL8RRTwM9jrjN+TTGfPc/Whx5yqDHMsbvIekT0yJ8LhP138v6rUMpNfeGZe
	HsQ2UQzh79Tn5rIuvE4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iew79-0001PD-4g; Wed, 11 Dec 2019 07:08:51 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iew71-0001Nz-B9; Wed, 11 Dec 2019 07:08:45 +0000
Received: from droid15-sz.amlogic.com (10.28.8.25) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Wed, 11 Dec 2019
 15:09:10 +0800
From: Jian Hu <jian.hu@amlogic.com>
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
Subject: [PATCH] arm64: dts: meson: add A1 periphs and PLL clock nodes
Date: Wed, 11 Dec 2019 15:08:34 +0800
Message-ID: <20191211070835.83489-1-jian.hu@amlogic.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Originating-IP: [10.28.8.25]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_230843_857364_912CA7D6 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
They rely on each other. Compared with the previous series,
the register region is only for the clock. So syscon is not
used in A1.

Signed-off-by: Jian Hu <jian.hu@amlogic.com>
---
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
index 7210ad049d1d..de43a010fa6e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
@@ -5,6 +5,8 @@
 
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/a1-pll-clkc.h>
+#include <dt-bindings/clock/a1-clkc.h>
 
 / {
 	compatible = "amlogic,a1";
@@ -74,6 +76,30 @@
 			#size-cells = <2>;
 			ranges = <0x0 0x0 0x0 0xfe000000 0x0 0x1000000>;
 
+			clkc_periphs: periphs-clock-controller@800 {
+				compatible = "amlogic,a1-periphs-clkc";
+				#clock-cells = <1>;
+				reg = <0 0x800 0 0x104>;
+				clocks = <&clkc_pll CLKID_FCLK_DIV2>,
+					<&clkc_pll CLKID_FCLK_DIV3>,
+					<&clkc_pll CLKID_FCLK_DIV5>,
+					<&clkc_pll CLKID_FCLK_DIV7>,
+					<&clkc_pll CLKID_HIFI_PLL>,
+					<&xtal>;
+				clock-names = "fclk_div2", "fclk_div3",
+					"fclk_div5", "fclk_div7",
+					"hifi_pll", "xtal";
+			};
+
+			clkc_pll: pll-clock-controller@7c80 {
+				compatible = "amlogic,a1-pll-clkc";
+				#clock-cells = <1>;
+				reg = <0 0x7c80 0 0x21c>;
+				clocks = <&clkc_periphs CLKID_XTAL_FIXPLL>,
+					<&clkc_periphs CLKID_XTAL_HIFIPLL>;
+				clock-names = "xtal_fixpll", "xtal_hifipll";
+			};
+
 			uart_AO: serial@1c00 {
 				compatible = "amlogic,meson-gx-uart",
 					     "amlogic,meson-ao-uart";
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
