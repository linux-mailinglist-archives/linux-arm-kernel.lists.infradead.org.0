Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7719611A46
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 15:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9GIlGxpx/uF5P5T6qVCFPl3HjKy1WFch2GdPLSuU/Kk=; b=FdOF49UdSqc3l2Eg+n9lVgdbwK
	rZuk+/iICwNoBLqYHOp6TSHv2qRXAgqs9LymXedSBW9og/AvGnuWMsbvqoxTfmhBJ1odwEhvOhJR3
	KGIfmpO4Q3yYTH0tJasSw74xkXbe+hZqWn8bgq6z+K920nEMYyscfWfE/R8CdSMYdzhH2Ulj3yS3b
	MW+fFgmlZNI9JxJptHdDJLq/rewNMDufOidlGpwMKhq6OPcElynhocBLsynMi05iRq/FCJDsZNFrd
	CJt2/Csk+3XcU/ki4Xs5l1lDGgL/4Et+cDXXJIaW93IEwK7F9YRF3QETdA95nyLGBXDlvE+r8foU2
	manDUVVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBr8-0001kx-S1; Thu, 02 May 2019 13:34:34 +0000
Received: from mail2.sp2max.com.br ([138.185.4.9])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBqe-0001JM-Q6
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 13:34:07 +0000
Received: from pgsop.sopnet.com.ar (unknown [179.40.38.12])
 (Authenticated sender: pablo@fliagreco.com.ar)
 by mail2.sp2max.com.br (Postfix) with ESMTPA id 5AC4E7B3003;
 Thu,  2 May 2019 10:34:01 -0300 (-03)
From: Pablo Greco <pgreco@centosproject.org>
To: linux-sunxi@googlegroups.com
Subject: [PATCH v6 2/5] ARM: dts: sun8i: v40: bananapi-m2-berry: Enable GMAC
 ethernet controller
Date: Thu,  2 May 2019 10:33:46 -0300
Message-Id: <1556804030-25291-3-git-send-email-pgreco@centosproject.org>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1556804030-25291-1-git-send-email-pgreco@centosproject.org>
References: <1556804030-25291-1-git-send-email-pgreco@centosproject.org>
X-SP2Max-MailScanner-Information: Please contact the ISP for more information
X-SP2Max-MailScanner-ID: 5AC4E7B3003.A19EB
X-SP2Max-MailScanner: Sem Virus encontrado
X-SP2Max-MailScanner-SpamCheck: nao spam, SpamAssassin (not cached,
 escore=-2.9, requerido 6, autolearn=not spam, ALL_TRUSTED -1.00,
 BAYES_00 -1.90)
X-SP2Max-MailScanner-From: pgreco@centosproject.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_063405_062499_05798D62 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Pablo Greco <pgreco@centosproject.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Just like the Bananapi M2 Ultra, the Bananapi M2 Berry has a Realtek
RTL8211E RGMII PHY tied to the GMAC.
The PMIC's DC1SW output provides power for the PHY, while the ALDO2
output provides I/O voltages on both sides.

Signed-off-by: Pablo Greco <pgreco@centosproject.org>
---
 arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts b/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
index 27297f4..0dfde58 100644
--- a/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
+++ b/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
@@ -50,6 +50,7 @@
 	compatible = "sinovoip,bpi-m2-berry", "allwinner,sun8i-r40";
 
 	aliases {
+		ethernet0 = &gmac;
 		serial0 = &uart0;
 	};
 
@@ -92,6 +93,22 @@
 	status = "okay";
 };
 
+&gmac {
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac_rgmii_pins>;
+	phy-handle = <&phy1>;
+	phy-mode = "rgmii";
+	phy-supply = <&reg_dc1sw>;
+	status = "okay";
+};
+
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <1>;
+	};
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -145,6 +162,12 @@
 	regulator-name = "avcc";
 };
 
+&reg_dc1sw {
+	regulator-min-microvolt = <3000000>;
+	regulator-max-microvolt = <3000000>;
+	regulator-name = "vcc-gmac-phy";
+};
+
 &reg_dcdc1 {
 	regulator-always-on;
 	regulator-min-microvolt = <3000000>;
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
