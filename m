Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F694E35A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:21:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bv07Qu0B49yFu6Ybsc3PsHQAYJ+D/mLqhedPYCtTpN8=; b=X9AG+21spu9eY/YEsbXB/h79Rq
	sjwqi53lRo+U5WNp/7lrDfHM5uO/QpG/gc+qL1n1SQ+ZgqLrx3OEq4Zedfado3DaYijeFXucSVMys
	I3H9Q5qisEjAKguU1D6pbRtLraEMfduybQwLg5UlHx27ElgtzGvcGX2xzLKEi3Gkd0nNLcTJTA62Q
	+RAskom1Lmq639nHyLWK5Xm6QKZEyde1Ilhr9Tjficxyz16+W98bEdT3xMN4OLSn4WYqJZnP6j1ZR
	XXsrqehPdz0vNJ3rO2PgymhyG8pEp2kRiWWOWFvL019r7W32RSQ1aS4XEXVo94qeSVkuVWTAsqvyP
	vRLBiTVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFjZ-0006y2-3S; Fri, 21 Jun 2019 09:21:25 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFcY-0008OY-Ku
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:14:12 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id DFCD925BE02;
 Fri, 21 Jun 2019 19:13:52 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id C99C3940C81; Fri, 21 Jun 2019 11:13:50 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 05/22] ARM: dts: rza2mevb: Add Ethernet support
Date: Fri, 21 Jun 2019 11:13:32 +0200
Message-Id: <c5dab2e9a90a75ad839764c777a8da091215eee8.1561104194.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561104194.git.horms+renesas@verge.net.au>
References: <cover.1561104194.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021410_845974_6E0894C4 
X-CRM114-Status: UNSURE (   9.62  )
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

The RZ/A2M EVB sub board has 2 Ethernet jacks on it.

Set switch SW6_4	to ON to use Ethernet Ch-0
Set switch SW6_5	to ON to use Ethernet Ch-1

Signed-off-by: Chris Brandt <chris.brandt@renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm/boot/dts/r7s9210-rza2mevb.dts | 50 ++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm/boot/dts/r7s9210-rza2mevb.dts b/arch/arm/boot/dts/r7s9210-rza2mevb.dts
index 991e09de1219..1544f3bab3f8 100644
--- a/arch/arm/boot/dts/r7s9210-rza2mevb.dts
+++ b/arch/arm/boot/dts/r7s9210-rza2mevb.dts
@@ -62,6 +62,34 @@
 		pinmux = <RZA2_PINMUX(PORT9, 0, 4)>,	/* TxD4 */
 			 <RZA2_PINMUX(PORT9, 1, 4)>;	/* RxD4 */
 	};
+
+	eth0_pins: eth0 {
+		pinmux = <RZA2_PINMUX(PORTE, 0, 7)>, /* REF50CK0 */
+			 <RZA2_PINMUX(PORT6, 1, 7)>, /* RMMI0_TXDEN */
+			 <RZA2_PINMUX(PORT6, 2, 7)>, /* RMII0_TXD0 */
+			 <RZA2_PINMUX(PORT6, 3, 7)>, /* RMII0_TXD1 */
+			 <RZA2_PINMUX(PORTE, 4, 7)>, /* RMII0_CRSDV */
+			 <RZA2_PINMUX(PORTE, 1, 7)>, /* RMII0_RXD0 */
+			 <RZA2_PINMUX(PORTE, 2, 7)>, /* RMII0_RXD1 */
+			 <RZA2_PINMUX(PORTE, 3, 7)>, /* RMII0_RXER */
+			 <RZA2_PINMUX(PORTE, 5, 1)>, /* ET0_MDC */
+			 <RZA2_PINMUX(PORTE, 6, 1)>, /* ET0_MDIO */
+			 <RZA2_PINMUX(PORTL, 0, 5)>; /* IRQ4 */
+	};
+
+	eth1_pins: eth1 {
+		pinmux = <RZA2_PINMUX(PORTK, 3, 7)>, /* REF50CK1 */
+			 <RZA2_PINMUX(PORTK, 0, 7)>, /* RMMI1_TXDEN */
+			 <RZA2_PINMUX(PORTK, 1, 7)>, /* RMII1_TXD0 */
+			 <RZA2_PINMUX(PORTK, 2, 7)>, /* RMII1_TXD1 */
+			 <RZA2_PINMUX(PORT3, 2, 7)>, /* RMII1_CRSDV */
+			 <RZA2_PINMUX(PORTK, 4, 7)>, /* RMII1_RXD0 */
+			 <RZA2_PINMUX(PORT3, 5, 7)>, /* RMII1_RXD1 */
+			 <RZA2_PINMUX(PORT3, 1, 7)>, /* RMII1_RXER */
+			 <RZA2_PINMUX(PORT3, 3, 1)>, /* ET1_MDC */
+			 <RZA2_PINMUX(PORT3, 4, 1)>, /* ET1_MDIO */
+			 <RZA2_PINMUX(PORTL, 1, 5)>; /* IRQ5 */
+	};
 };
 
 /* High resolution System tick timers */
@@ -80,3 +108,25 @@
 
 	status = "okay";
 };
+
+&ether0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&eth0_pins>;
+	status = "okay";
+	renesas,no-ether-link;
+	phy-handle = <&phy0>;
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+	};
+};
+
+&ether1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&eth1_pins>;
+	status = "okay";
+	renesas,no-ether-link;
+	phy-handle = <&phy1>;
+	phy1: ethernet-phy@1 {
+		reg = <0>;
+	};
+};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
