Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC674E375
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/iz52sc8nx9bRy/NLsaNIFcOV3+HrVfjNv+W8EI0rWE=; b=VUwbs85gEMWheWTO3CdpBqZWib
	U9hUhscHDz693Ei0MU4OCTl7WVFeYF8Bh7WgqNi9xKR3kwlBFV1KD8ukwdFU2clfnMIQFkhOBWvxS
	5YcSgykuL1tPD5kzivHhSJdidl176Ci+VmJkoXp+YeSZ8kypRmgqAXMTCKEG5qM0PQmvY6BLIgJK2
	0dMQhqWy2TS66VELiK39/v7IPuMvXDpjidFKC/m1lxZyaJKd87t3vRbk5ZOCQmZVpgqRA9e0qMqNY
	bx+Y+nLDoEiQKnWpQzpaXt4MACxzwoZRsdx2ZKh59Tkw8ofP1AmIEBHzkNFEnNjWHJ7AmdqQRWlQT
	UvaJGqNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFnA-0001IT-Ls; Fri, 21 Jun 2019 09:25:08 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFd0-0008OY-53
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:14:40 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 1879B25BE5E;
 Fri, 21 Jun 2019 19:13:55 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 66206941305; Fri, 21 Jun 2019 11:13:51 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 13/22] ARM: dts: r7s9210: Add USB Host support
Date: Fri, 21 Jun 2019 11:13:40 +0200
Message-Id: <9d8c794e315028fc77350015eaf70fe1d3d0e0dc.1561104194.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561104194.git.horms+renesas@verge.net.au>
References: <cover.1561104194.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021438_552460_60DB39C2 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Simon Horman <horms+renesas@verge.net.au>,
 Chris Brandt <chris.brandt@renesas.com>, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chris Brandt <chris.brandt@renesas.com>

Add EHCI and OHCI host support for RZ/A2.

Signed-off-by: Chris Brandt <chris.brandt@renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm/boot/dts/r7s9210.dtsi | 66 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/arch/arm/boot/dts/r7s9210.dtsi b/arch/arm/boot/dts/r7s9210.dtsi
index 73041f04fef5..066e6fed11aa 100644
--- a/arch/arm/boot/dts/r7s9210.dtsi
+++ b/arch/arm/boot/dts/r7s9210.dtsi
@@ -329,6 +329,72 @@
 			status = "disabled";
 		};
 
+		ohci0: usb@e8218000 {
+			compatible = "generic-ohci";
+			reg = <0xe8218000 0x100>;
+			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 61>;
+			phys = <&usb2_phy0>;
+			phy-names = "usb";
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		ehci0: usb@e8218100 {
+			compatible = "generic-ehci";
+			reg = <0xe8218100 0x100>;
+			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 61>;
+			phys = <&usb2_phy0>;
+			phy-names = "usb";
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		usb2_phy0: usb-phy@e8218200 {
+			compatible = "renesas,usb2-phy-r7s9210", "renesas,rcar-gen3-usb2-phy";
+			reg = <0xe8218200 0x700>;
+			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 61>, <&usb_x1_clk>;
+			clock-names = "fck", "usb_x1";
+			power-domains = <&cpg>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		ohci1: usb@e821a000 {
+			compatible = "generic-ohci";
+			reg = <0xe821a000 0x100>;
+			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 60>;
+			phys = <&usb2_phy1>;
+			phy-names = "usb";
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		ehci1: usb@e821a100 {
+			compatible = "generic-ehci";
+			reg = <0xe821a100 0x100>;
+			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 60>;
+			phys = <&usb2_phy1>;
+			phy-names = "usb";
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		usb2_phy1: usb-phy@e821a200 {
+			compatible = "renesas,usb2-phy-r7s9210", "renesas,rcar-gen3-usb2-phy";
+			reg = <0xe821a200 0x700>;
+			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 60>, <&usb_x1_clk>;
+			clock-names = "fck", "usb_x1";
+			power-domains = <&cpg>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		sdhi0: sd@e8228000 {
 			compatible = "renesas,sdhi-r7s9210";
 			reg = <0xe8228000 0x8c0>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
