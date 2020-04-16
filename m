Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D47F1AC0FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 14:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBIla/qvCEDhToWEnhIMpVKjdZV+0SinzHV11v0ei/U=; b=H1f/OuCRHxkKkS
	iQoIcGPFTJC19Am1nOnqhPqDocIFcIIABkJ24I6vj44glpM+gMKWQOPtzvMtWeQexee5WwCtMyh+G
	s4Kav7pNG6kcTQFg+ZxUnly4P5kXIl4elmX6NWB7lJvBk35X8KI0+4wGfIS8zFI68u0QSXs67npsx
	CLWFLGkH8T4pLsxeR7Gvls83D0w8HSNDHLnxrSumZYsq1RW6AE5bdpxc35UH33jJiOXxGnQe89w6L
	StPjp5tTRGzzkyvN5OQ+yjcMe31GFim8d4ZaUK4pwc1JAzWlxf0fDHkjqy7E0FO8jr9/+L2F1eAea
	FUQbKtfzfUuYZjumXitQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3Vh-0001XI-Va; Thu, 16 Apr 2020 12:20:49 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP3UK-0006Bd-1X
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 12:19:26 +0000
Received: by mail-wr1-x443.google.com with SMTP id k11so4576997wrp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 05:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=06VGvFqoKzw4MknpDhao8YAaiP1E4E7GXSjBetVzutg=;
 b=wvjeMK7HR4FoRHPkWHI0bxnUL93aaV365SmQNatQtaw6gD3FR2FadqzhJwPwOEivCF
 0casg7mHUSwwwsrR4bgTCmGiHJsO/Tc52BodFaE86fFetRn7E77aS1EIxp7bqgwxbzbe
 +JXZ8G0sREMF0hvytrr0YztLvWAVLHaDSaOkSrZoErYY+pCWw70SP9mVsF7J9AsfOg45
 ZJVDvIyT7NKZAvSDqYjNU157edpdWL+eqI+mqTihmHZb8xJHKbswUoSU2QhVCDxe0UJm
 t5sYc/CVDPFSnFCj/CQwjELlOLu5wNHjzvjrpCSpNzKXn0wNeBn+pRQzUxOxwILmt1Md
 z2VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=06VGvFqoKzw4MknpDhao8YAaiP1E4E7GXSjBetVzutg=;
 b=igpufYKIgTYZ3AIArEVH8itul2LxyfkWVUOnTyC2W5pMfG15SX4tpHuNq2mtFQWwp4
 vdxUFT63zRM9YKLEFw29vuAZgGVjeWB1H5InouBshEPKn4oH+4rvv62uSE6aNx7F7cT9
 zs2bRkBfEDG1HQ929r5DK7xEk/RQga33VIvQVVQMy/87TDxkIfEZ2zdPqaawROnY8j4W
 8kebnbgd5265ei+ggp0ReNGuxTniAbZw6uCj39TNTa8o9ajET0haHgn9f5B5uv6ItBmG
 U6NlIWqNKB/QmQdnAiNC6HGo/c29E1QmEd4JWW+UwhpwJe4CYv/H/bdy7bd4MwT9joPl
 +DKQ==
X-Gm-Message-State: AGi0PuYj5KAnaB6TQeOWF638lVc6Gn36hTnpiQMoL64Qalddnk3vv58R
 9glMy77NJFeZCqSgLA3FTJLUbzCC1DdYNQ==
X-Google-Smtp-Source: APiQypKDTddSSH2JXLBwj7aK/XAzpbQoRwIA7O2CRlO23e0BOWPclA7dY1h9ztPZ6WPcQVQezZGSSQ==
X-Received: by 2002:a5d:48cc:: with SMTP id p12mr36460646wrs.170.1587039561826; 
 Thu, 16 Apr 2020 05:19:21 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 i13sm22035602wro.50.2020.04.16.05.19.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 05:19:21 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com
Subject: [PATCH v3 4/8] arm64: dts: amlogic: use the new USB control driver
 for GXL and GXM
Date: Thu, 16 Apr 2020 14:19:06 +0200
Message-Id: <20200416121910.12723-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200416121910.12723-1-narmstrong@baylibre.com>
References: <20200416121910.12723-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_051924_113104_BED7F353 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Add the correcly architectured USB Glue node and adapt all the Amlogic
GXL and GXM board to the new organization.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../dts/amlogic/meson-gx-libretech-pc.dtsi    |  3 +-
 .../boot/dts/amlogic/meson-gx-p23x-q20x.dtsi  |  3 +-
 .../amlogic/meson-gxl-s805x-libretech-ac.dts  |  3 +-
 .../boot/dts/amlogic/meson-gxl-s805x-p241.dts |  3 +-
 .../amlogic/meson-gxl-s905d-phicomm-n1.dts    |  4 ++
 .../boot/dts/amlogic/meson-gxl-s905w-p281.dts |  4 ++
 .../dts/amlogic/meson-gxl-s905w-tx3-mini.dts  |  4 ++
 .../amlogic/meson-gxl-s905x-khadas-vim.dts    |  4 ++
 .../amlogic/meson-gxl-s905x-libretech-cc.dts  |  3 +-
 .../amlogic/meson-gxl-s905x-nexbox-a95x.dts   |  3 +-
 .../dts/amlogic/meson-gxl-s905x-p212.dtsi     |  3 +-
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    | 45 ++++++++++---------
 .../dts/amlogic/meson-gxm-khadas-vim2.dts     |  3 +-
 .../boot/dts/amlogic/meson-gxm-nexbox-a1.dts  |  3 +-
 .../boot/dts/amlogic/meson-gxm-vega-s96.dts   |  4 ++
 arch/arm64/boot/dts/amlogic/meson-gxm.dtsi    |  7 ++-
 16 files changed, 68 insertions(+), 31 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
index 248b018c83d5..ed9f89ee86a8 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
@@ -360,8 +360,9 @@
 	status = "okay";
 };
 
-&usb0 {
+&usb {
 	status = "okay";
+	dr_mode = "host";
 };
 
 &usb2_phy0 {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
index 12d5e333e5f2..d853981f1ab5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
@@ -223,6 +223,7 @@
 	pinctrl-names = "default";
 };
 
-&usb0 {
+&usb {
 	status = "okay";
+	dr_mode = "otg";
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts
index 4d5949496596..2cfea3094f6c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts
@@ -243,6 +243,7 @@
 	pinctrl-names = "default";
 };
 
-&usb0 {
+&usb {
 	status = "okay";
+	dr_mode = "host";
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
index a1119cfb0280..867e30f1d62b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
@@ -216,6 +216,7 @@
 	pinctrl-names = "default";
 };
 
-&usb0 {
+&usb {
 	status = "okay";
+	dr_mode = "host";
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-phicomm-n1.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-phicomm-n1.dts
index b5667f1fb2c8..9ef210f17b4a 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-phicomm-n1.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-phicomm-n1.dts
@@ -29,3 +29,7 @@
 &cvbs_vdac_port {
 	status = "disabled";
 };
+
+&usb {
+	dr_mode = "host";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-p281.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-p281.dts
index 6509c4950950..ecc9df7ca023 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-p281.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-p281.dts
@@ -20,3 +20,7 @@
 		reg = <0x0 0x0 0x0 0x40000000>;
 	};
 };
+
+&usb {
+	dr_mode = "host";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-tx3-mini.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-tx3-mini.dts
index dd729ac2300d..6705c2082a78 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-tx3-mini.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-tx3-mini.dts
@@ -24,3 +24,7 @@
 &ir {
 	linux,rc-map-name = "rc-tanix-tx3mini";
 };
+
+&usb {
+	dr_mode = "host";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
index 440bc23c7342..8bcdffdf55d0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
@@ -207,3 +207,7 @@
 	pinctrl-0 = <&uart_ao_b_pins>;
 	pinctrl-names = "default";
 };
+
+&usb {
+	dr_mode = "peripheral";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts
index e8348b2728db..e493831a80f0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts
@@ -272,8 +272,9 @@
 	pinctrl-names = "default";
 };
 
-&usb0 {
+&usb {
 	status = "okay";
+	dr_mode = "host";
 };
 
 &usb2_phy0 {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts
index 62dd87821ce5..f1acca5c4434 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts
@@ -218,6 +218,7 @@
 	pinctrl-names = "default";
 };
 
-&usb0 {
+&usb {
 	status = "okay";
+	dr_mode = "host";
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
index 6ac678f88bd8..05cb2f5e5c36 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
@@ -195,8 +195,9 @@
 	pinctrl-names = "default";
 };
 
-&usb0 {
+&usb {
 	status = "okay";
+	dr_mode = "host";
 };
 
 &usb2_phy0 {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index 259d86399390..95b301a7c725 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -14,26 +14,43 @@
 	compatible = "amlogic,meson-gxl";
 
 	soc {
-		usb0: usb@c9000000 {
-			status = "disabled";
-			compatible = "amlogic,meson-gxl-dwc3";
+		usb: usb@d0078080 {
+			compatible = "amlogic,meson-gxl-usb-ctrl";
+			reg = <0x0 0xd0078080 0x0 0x20>;
+			interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
 
-			clocks = <&clkc CLKID_USB>;
-			clock-names = "usb_general";
+			clocks = <&clkc CLKID_USB>, <&clkc CLKID_USB1_DDR_BRIDGE>;
+			clock-names = "usb_ctrl", "ddr";
 			resets = <&reset RESET_USB_OTG>;
-			reset-names = "usb_otg";
 
-			dwc3: dwc3@c9000000 {
+			dr_mode = "otg";
+
+			phys = <&usb2_phy0>, <&usb2_phy1>;
+			phy-names = "usb2-phy0", "usb2-phy1";
+
+			dwc2: usb@c9100000 {
+				compatible = "amlogic,meson-g12a-usb", "snps,dwc2";
+				reg = <0x0 0xc9100000 0x0 0x40000>;
+				interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clkc CLKID_USB1>;
+				clock-names = "otg";
+				phys = <&usb2_phy1>;
+				dr_mode = "peripheral";
+				g-rx-fifo-size = <192>;
+				g-np-tx-fifo-size = <128>;
+				g-tx-fifo-size = <128 128 16 16 16>;
+			};
+
+			dwc3: usb@c9000000 {
 				compatible = "snps,dwc3";
 				reg = <0x0 0xc9000000 0x0 0x100000>;
 				interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
 				dr_mode = "host";
 				maximum-speed = "high-speed";
 				snps,dis_u2_susphy_quirk;
-				phys = <&usb3_phy>, <&usb2_phy0>, <&usb2_phy1>;
 			};
 		};
 
@@ -71,18 +88,6 @@
 		reset-names = "phy";
 		status = "okay";
 	};
-
-	usb3_phy: phy@78080 {
-		compatible = "amlogic,meson-gxl-usb3-phy";
-		#phy-cells = <0>;
-		reg = <0x0 0x78080 0x0 0x20>;
-		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&clkc CLKID_USB>, <&clkc_AO CLKID_AO_CEC_32K>;
-		clock-names = "phy", "peripheral";
-		resets = <&reset RESET_USB_OTG>, <&reset RESET_USB_OTG>;
-		reset-names = "phy", "peripheral";
-		status = "okay";
-	};
 };
 
 &efuse {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
index 27eeab71ec77..bff8ec2c1c70 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
@@ -380,6 +380,7 @@
 	vref-supply = <&vddio_ao18>;
 };
 
-&usb0 {
+&usb {
 	status = "okay";
+	dr_mode = "peripheral";
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
index c2bd4dbbf38c..83eca3af44ce 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
@@ -179,6 +179,7 @@
 	pinctrl-names = "default";
 };
 
-&usb0 {
+&usb {
 	status = "okay";
+	dr_mode = "host";
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-vega-s96.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-vega-s96.dts
index 0bdf51d041ae..d3fdba4da9a6 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-vega-s96.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-vega-s96.dts
@@ -39,3 +39,7 @@
 &ir {
 	linux,rc-map-name = "rc-vega-s9x";
 };
+
+&usb {
+	dr_mode = "host";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
index b6f89f108e28..40e3e123e05b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
@@ -169,8 +169,11 @@
 	compatible = "amlogic,meson-gxm-dw-hdmi", "amlogic,meson-gx-dw-hdmi";
 };
 
-&dwc3 {
-	phys = <&usb3_phy>, <&usb2_phy0>, <&usb2_phy1>, <&usb2_phy2>;
+&usb {
+	compatible = "amlogic,meson-gxm-usb-ctrl";
+
+	phy-names = "usb2-phy0", "usb2-phy1", "usb2-phy2";
+	phys = <&usb2_phy0>, <&usb2_phy1>, <&usb2_phy2>;
 };
 
 &vdec {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
