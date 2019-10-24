Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C06E2F8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kI5sfVNg4UJ3iDq2dZcGFANT0U998sFzWQ1gWQRA5Y=; b=nl8HsH/oNJb3D1
	sbcsYLVLXDWi3cJ+N6QXRm4Tz7w8dTTBgLvknAa/mc6HxKPviMhEnlDXJrEsjeF0KUUF3eraYboxk
	IuJ2ZuUJtQfZ40RL/EtSHBMcjZ1A1A0s0HX6iFI2BkY6Yn/i2m1h1hc/2vYI3FoEqgaJdQy1v7yyu
	+vAmCQoeva5w7DkGZMzFPceSQTbmXkpVe4euTOkJeIPO60MJJ3GDXESRSB9/OnQ6a7fGjL7DRN2ci
	DflH5jOqQ7dSL/owXE1wsH2RXzHmRq9eAtK4EBK1hgtby1Pz7706rSLU+Qiu9f0EuPGNjJ+xIl/1S
	cSBrzwklXkfb9Cvl9otQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNamZ-0003Hq-PT; Thu, 24 Oct 2019 10:55:55 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNalr-0002Nj-W3
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:55:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1571914508; bh=HFSrXSPJyZ/r/g3KvWIYj4ef7s1MoOfxTtkAX4wXq50=;
 h=From:To:Cc:Subject:Date:References:From;
 b=oq65D8PRWktFv0x9bU7Jk6SEk/wEqhbyf0qhYKLyGZ3fN8tymjHYEswyGtFyeicY0
 GBVembdw4qlbzN6MTq7X9UFylMmHcO3RE0t7aOSZ1iaw4pvjJ7gpBDAjBZJgksLdet
 3XrR2P/fL7oiH59N/e6zC5+JbjN9eo2ZJHzox0i0=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Icenowy Zheng <icenowy@aosc.io>, Thomas Gleixner <tglx@linutronix.de>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 3/4] arm64: dts: allwinner: h6: add USB3 device nodes
Date: Thu, 24 Oct 2019 12:54:59 +0200
Message-Id: <20191024105500.2252707-4-megous@megous.com>
In-Reply-To: <20191024105500.2252707-1-megous@megous.com>
References: <20191024105500.2252707-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_035512_203114_84DD7DCC 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

Allwinner H6 SoC features USB3 functionality, with a DWC3 controller and
a custom PHY.

Add device tree nodes for them.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Reviewed-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 32 ++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 0d5ea19336a1..80233db478e6 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -537,6 +537,38 @@
 			status = "disabled";
 		};
 
+		dwc3: dwc3@5200000 {
+			compatible = "snps,dwc3";
+			reg = <0x05200000 0x10000>;
+			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_XHCI>,
+				 <&ccu CLK_BUS_XHCI>,
+				 <&rtc 0>;
+			clock-names = "ref", "bus_early", "suspend";
+			resets = <&ccu RST_BUS_XHCI>;
+			/*
+			 * The datasheet of the chip doesn't declare the
+			 * peripheral function, and there's no boards known
+			 * to have a USB Type-B port routed to the port.
+			 * In addition, no one has tested the peripheral
+			 * function yet.
+			 * So set the dr_mode to "host" in the DTSI file.
+			 */
+			dr_mode = "host";
+			phys = <&usb3phy>;
+			phy-names = "usb3-phy";
+			status = "disabled";
+		};
+
+		usb3phy: phy@5210000 {
+			compatible = "allwinner,sun50i-h6-usb3-phy";
+			reg = <0x5210000 0x10000>;
+			clocks = <&ccu CLK_USB_PHY1>;
+			resets = <&ccu RST_USB_PHY1>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		ehci3: usb@5311000 {
 			compatible = "allwinner,sun50i-h6-ehci", "generic-ehci";
 			reg = <0x05311000 0x100>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
