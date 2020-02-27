Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD561716C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:07:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jlcj7fYdidkuVHJSJlhzIAAjA4c510hX+Y1w05+B6cg=; b=pokG+aKUC/D13C
	UhxUF68Aa4mvvoWK6PCmYhEh0p67OB6sv+DTMPAXk373bB79igdoTTIa3hkYXqxlR2/vLaI2UD3z4
	2kvF6BuKORIS4/5NRDW9cAcMUS+t8CWMpaKq/5vNvfcjwNiftCffEzDJwX6TTS+e9ykLNezVckJGf
	C2DT7OjIyU7s5nnovBuO//aCd9XzK1Pb3HVnMx93iZ3q+/xN9+AE6nqjtjaCkoHmC67qlzR0bDdHU
	i7Z1W/FMe6tI/brDjok+PI2vJoyT4I+7GagTZNraX6pRc1CquEMSx9Utln/nbzC1lHye2pWRZFrfA
	j06GaH4uWiRh/d3Tqf1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7HwK-0003JD-Eg; Thu, 27 Feb 2020 12:06:52 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Hw8-0003IO-S7
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:06:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nCNdMaWEfduPAMCaE6L4kg6W7UcTSqXi+QarMl3lYVA=; b=cAJJELBkatdG6fb1vnsY+W7EOF
 zEWC8vEtjGIFYB44+yjg5BJYNTbW8XJSx9DT8MoA/iQEm9yLTYUQcT21HQ1GefUVIG13HE4rfVZ6R
 qCt7VEG0V7b7kvuHW5EKshh9Qg+jlw7c9Y9cheJZSF6Ae0Lozi2N8mK9+bVnVDon5l6F66wWyD9Ri
 KpcNTVU3yW2lm7c87kgNUfoambz2xppPqbRET4iryptXaEfyfIUIO4DYLTDknXMgdBiX3Mz/Uv0I3
 vJIs58jzGd+J2XCu5q8EayySI42dhW2B/RfnpM0/GrltAv+gLdHZFM9oWS+mTt/z+RpmO/JjulhKx
 uRwwRKrQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:45872 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j7Hvw-0005OX-Ev; Thu, 27 Feb 2020 12:06:28 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j7Hvv-0004Vy-BO; Thu, 27 Feb 2020 12:06:27 +0000
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] arm64: dts: lx2160a-cex7: add on-module eeproms
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1j7Hvv-0004Vy-BO@rmk-PC.armlinux.org.uk>
Date: Thu, 27 Feb 2020 12:06:27 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_040640_909627_590658D0 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rabeeh Khoury <rabeeh@solid-run.com>

This patch adds 4 eeprom support on i2c mux channel #0 -
1. Bootable 512Kbit eeprom at address 0x50.
2. Memory SO-DIMMs SPD channels at 0x51 (upper SO-DIMM) and 0x53.
3. 2Kb eeprom at 0x57 will be used by SolidRun to hold manufacturing
   data.

Signed-off-by: Rabeeh Khoury <rabeeh@solid-run.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 .../boot/dts/freescale/fsl-lx2160a-cex7.dtsi  | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
index 01c5420f334e..d87d16460875 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
@@ -59,6 +59,32 @@
 		#size-cells = <0>;
 		reg = <0x77>;
 
+		i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+
+			eeprom@50 {
+				compatible = "atmel,24c512";
+				reg = <0x50>;
+			};
+
+			eeprom@51 {
+				compatible = "atmel,spd";
+				reg = <0x51>;
+			};
+
+			eeprom@53 {
+				compatible = "atmel,spd";
+				reg = <0x53>;
+			};
+
+			eeprom@57 {
+				compatible = "atmel,24c02";
+				reg = <0x57>;
+			};
+		};
+
 		i2c@1 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
