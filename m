Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AEB1AD004
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LOhT5fqA11QdmcoxNT0hjLA5Msw8e/fw3p1up25EXqU=; b=MWcfZiFhYHQ82Q
	pdPvFmwfwncT7xn2YOw8CttiZ5ZQsG2VeETFV7aOVxmEa5EkyzrMq9oumksYHBGDUNHPTy9oshEl8
	8i9zliLgo97qZjAA5Sa1sRN70QHps0KSV52bUjgtLfT1S8sEwEcGUlLYF5bh9+OtbLo3uXOgGFPP3
	9t9pS6/yI87qNcxtdhgvlFCaZMHa1T13B99QeKUfY/UEiDnJuSlZ2Zs+HFnWEVUkY8NVffjm/oPZo
	Z738ECH9EgarYXYHb8syzhXb7SSocHr2zIyrtJr/RnSqZJ2qauMQ5ORB0dLGmyXotPeNm6DeSC4vL
	/j1d7WYHvqeB4YDkHGwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP9j7-0002aR-Tf; Thu, 16 Apr 2020 18:59:05 +0000
Received: from mailoutvs59.siol.net ([185.57.226.250] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP9iO-000281-QR
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 18:58:22 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id C3EFA5246A7;
 Thu, 16 Apr 2020 20:58:18 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id AfVCf8zZKDrT; Thu, 16 Apr 2020 20:58:18 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 7F20552469F;
 Thu, 16 Apr 2020 20:58:18 +0200 (CEST)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id DEC325246A5;
 Thu, 16 Apr 2020 20:58:15 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 hkallweit1@gmail.com
Subject: [RFC PATCH 4/4] arm64: dts: allwinner: h6: tanix-tx6: Enable ethernet
Date: Thu, 16 Apr 2020 20:57:58 +0200
Message-Id: <20200416185758.1388148-5-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200416185758.1388148-1-jernej.skrabec@siol.net>
References: <20200416185758.1388148-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_115821_026342_12C25673 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.250 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org, linux@armlinux.org.uk,
 mripard@kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 lee.jones@linaro.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tanix TX6 uses ethernet PHY from copackaged AC200 IC.

Enable it.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../dts/allwinner/sun50i-h6-tanix-tx6.dts     | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
index 83e6cb0e59ce..41a2e3454be5 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
@@ -12,6 +12,7 @@ / {
 	compatible = "oranth,tanix-tx6", "allwinner,sun50i-h6";
 
 	aliases {
+		ethernet0 = &emac;
 		serial0 = &uart0;
 	};
 
@@ -39,6 +40,14 @@ reg_vcc3v3: vcc3v3 {
 	};
 };
 
+&ac200_ephy {
+	status = "okay";
+};
+
+&ac200_pwm_clk {
+	status = "okay";
+};
+
 &de {
 	status = "okay";
 };
@@ -47,6 +56,14 @@ &dwc3 {
 	status = "okay";
 };
 
+&emac {
+	pinctrl-names = "default";
+	pinctrl-0 = <&ext_rmii_pins>;
+	phy-mode = "rmii";
+	phy-handle = <&ext_rmii_phy>;
+	status = "okay";
+};
+
 &ehci0 {
 	status = "okay";
 };
@@ -69,6 +86,17 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&i2c3 {
+	status = "okay";
+};
+
+&mdio {
+	ext_rmii_phy: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc0_pins>;
@@ -86,6 +114,10 @@ &ohci3 {
 	status = "okay";
 };
 
+&pwm {
+	status = "okay";
+};
+
 &r_ir {
 	linux,rc-map-name = "rc-tanix-tx5max";
 	status = "okay";
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
