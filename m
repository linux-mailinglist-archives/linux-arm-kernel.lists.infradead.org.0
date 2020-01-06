Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EAF130ECA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 09:43:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oG9Hcx0nWh45ajxp93ePcVH3PGmUI1Locoa7WXeOGeY=; b=oFfrUM3Bn5yZ+Q
	Z27S7mTQQksFkFoPzyU1ITnhH13DiDS97eNZ6V/DueoPSYQ533roy+I910+CgEXrFRWOHwCoUjSlJ
	HzM0gwr2toiZNRheV8AzIQn2w4P3lEUt/Db+9iKuuWXisMIZ2aixfDUwtUsFLeraRek1KSq+KDbwG
	lazIAFtI518kp916VAQbYKsBWoolFGphObo4F4Ee9gzOTt2vN4rtvIbw6vemYrWt4rF7R58MxgQlH
	GLAio1PquxA3n87Ppw7KRscGfVqTwPKZlSEebgHAFKLFIy+wlBpXOk74ybvGrhgRstOHOqVANRk9L
	Mk89lnfVEt6LNie33ikw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioNyh-0001ky-3M; Mon, 06 Jan 2020 08:43:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioNyH-0001Z6-DC
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 08:42:46 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 605E221734;
 Mon,  6 Jan 2020 08:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578300163;
 bh=VJ4ImZ00cxy3xkCVmZ6KZaFMceyqzh4UVXc9csKCJc0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Jy2xk/me0XoytAHWGwDMuBVDqNtR7ItKlG980kKOeHCSXvb2oamlqMb0VFYEZSkSz
 aIC0LdHDay20/0Goe6o4x3cmR22PzfOLbioj2kyxn6laabk1Mfbqa71O+p2cq19vLv
 ibfxE/BxKLtWTGhQzVmyv6hEe8hWINX4ZnJAQdws=
Received: by wens.tw (Postfix, from userid 1000)
 id 60F0D5FD64; Mon,  6 Jan 2020 16:42:41 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 4/7] ARM: dts: sun8i: r40: Add device node for CSI0
Date: Mon,  6 Jan 2020 16:42:37 +0800
Message-Id: <20200106084240.1076-5-wens@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106084240.1076-1-wens@kernel.org>
References: <20200106084240.1076-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_004245_482850_A28FA28A 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The CSI0 and CSI1 blocks are the same as found on the A20. However only
CSI0 is supported upstream right now.

Add a device node for CSI0 using the A20 compatible as a fallback, and
the standard pinctrl options. Also add the MBUS interconnect.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 36 ++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 7c940b20b81c..84d240c39f0f 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -181,6 +181,20 @@ nmi_intc: interrupt-controller@1c00030 {
 			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		csi0: csi@1c09000 {
+			compatible = "allwinner,sun8i-r40-csi0",
+				     "allwinner,sun7i-a20-csi0";
+			reg = <0x01c09000 0x1000>;
+			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CSI0>, <&ccu CLK_CSI_SCLK>,
+				 <&ccu CLK_DRAM_CSI0>;
+			clock-names = "bus", "isp", "ram";
+			resets = <&ccu RST_BUS_CSI0>;
+			interconnects = <&mbus 5>;
+			interconnect-names = "dma-mem";
+			status = "disabled";
+		};
+
 		mmc0: mmc@1c0f000 {
 			compatible = "allwinner,sun8i-r40-mmc",
 				     "allwinner,sun50i-a64-mmc";
@@ -356,6 +370,20 @@ clk_out_a_pin: clk-out-a-pin {
 				function = "clk_out_a";
 			};
 
+			/omit-if-no-ref/
+			csi0_8bits_pins: csi0-8bits-pins {
+				pins = "PE0", "PE2", "PE3", "PE4", "PE5",
+				       "PE6", "PE7", "PE8", "PE9", "PE10",
+				       "PE11";
+				function = "csi0";
+			};
+
+			/omit-if-no-ref/
+			csi0_mclk_pin: csi0-mclk-pin {
+				pins = "PE1";
+				function = "csi0";
+			};
+
 			gmac_rgmii_pins: gmac-rgmii-pins {
 				pins = "PA0", "PA1", "PA2", "PA3",
 				       "PA4", "PA5", "PA6", "PA7",
@@ -625,6 +653,14 @@ gmac_mdio: mdio {
 			};
 		};
 
+		mbus: dram-controller@1c62000 {
+			compatible = "allwinner,sun8i-r40-mbus";
+			reg = <0x01c62000 0x1000>;
+			clocks = <&ccu 155>;
+			dma-ranges = <0x00000000 0x40000000 0x80000000>;
+			#interconnect-cells = <1>;
+		};
+
 		tcon_top: tcon-top@1c70000 {
 			compatible = "allwinner,sun8i-r40-tcon-top";
 			reg = <0x01c70000 0x1000>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
