Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5A711F97A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:02:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D8IsWyrgHkVwqGPo0MvVRbtfEcID0iUO8Qoeibm/BOI=; b=lFYMuXti5sPGhr
	c7H/IdPWnUI/yVjwUIzcsb8VHrdBxhMC8v3bs+G/KwdI+dEYBRWH2uV9Lj8qoL7YMZ8RwTbSSZI1e
	Aq5FW9R3MIiazlkoare0315o3q+ROhd3bJ7zQCDWhfRZgohq8kSnnNrnEASDq1K9Icx4tH7N4RU5D
	vfjVXU54JuwdAPBJ4vPXl3tyeMDkO0IaYXNXTqmYO17SDWzX2YZi6pVnU7vU4N60Czh5A4NvmZmqd
	OglrYnottuG2MLeIqkmuJDFLyUmdyjAXxRnJuAf1o2Ui/369HUI9+yjBkGXbEHbWwfPw45zZkgYsb
	ebjJpmnhF8BDbZa2pTUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXHc-0000gg-1Q; Sun, 15 Dec 2019 17:02:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXF3-0005ms-IB
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 16:59:40 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9114D24682;
 Sun, 15 Dec 2019 16:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576429171;
 bh=p2Yk04lSXEPWoex3Y1O8riiRlK5G3iH1Tys7J7+B3o8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LUPNYD1OWdsrcYwcbkmcQkooPutjW5PbLh2mVYdomXCucnPWv3+MNCkcBv/slwdR+
 xd06MXKjknUg224R+4jO5D97MX/f7tw07Mst6kGuUBCIHJbaSoRAt8vLNj+iECTyyX
 jSrik9KNfNdc16z8O53hBYQX22RjcQafO4lVD0fs=
Received: by wens.tw (Postfix, from userid 1000)
 id 7FE985FF5A; Mon, 16 Dec 2019 00:59:26 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 11/14] ARM: dts: sun8i: r40: Add device node for CSI0
Date: Mon, 16 Dec 2019 00:59:21 +0800
Message-Id: <20191215165924.28314-12-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191215165924.28314-1-wens@kernel.org>
References: <20191215165924.28314-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_085937_645769_4296F082 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
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
index 82ea0b5b0710..2d1e97cc4155 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -180,6 +180,20 @@ nmi_intc: interrupt-controller@1c00030 {
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
@@ -355,6 +369,20 @@ clk_out_a_pin: clk-out-a-pin {
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
@@ -624,6 +652,14 @@ gmac_mdio: mdio {
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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
