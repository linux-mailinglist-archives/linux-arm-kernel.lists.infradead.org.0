Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13ABB46FA2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 12:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NhfkYsxhXoclzt4cDdz9bD/G4diDqMADtycWJ+oO8Cc=; b=DiLA2P8yzH05fS
	PZN658wJLN4drS7vrGVmeQe6AcDd4oWguFoallqkVmoKcuuZZarq9xJlUkw16z7VSCc97el+Ubv/d
	NFWhMrMFJKny9kO3kWqg77anuyTztiN2FLW3bXZY59rycKLvsiozV68WLZRYbYd8VwYjOizDudPbG
	3dTW70PtPbelg0pCcSx5WvdzojNA0j3Vb9wZRO6TB57q/xYVub6s+UCOByaZUmKD4M4oVcjJOj79X
	yv0Tf9ufgYt123F7+USnUEoJtblYQdkXYe+4SeI4zxFW8f4fDP+ZEsdfMjAoT5aDEe3pcv1A0FAeg
	zU2QUUXDGZ28ewxwbonA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc66q-00023q-Mj; Sat, 15 Jun 2019 10:40:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc65e-0008Hn-Fe; Sat, 15 Jun 2019 10:39:21 +0000
Received: by mail-wm1-x342.google.com with SMTP id 207so4755381wma.1;
 Sat, 15 Jun 2019 03:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=853Aek+SKODz/QOY+OBf6Tf8GdbBpJrd1dF6+Fob5wE=;
 b=TgMVGiZhuNBTIXbxRmE2GSEqqZmzIMG8VGkhKT33TTB7won+moLiDkfiLUMn4VJ4IW
 AUy8SNiW6mza9Q8USVbLg5+/BlWkbtkKussXWjqyftt5QZqDtgNDO65FgskGPB/+uEtC
 skJ2cOOC74QcpM99SaA9JiHfMuZgQHxPevvlEJVo755MO2pioKAyfZH24xskuAt0a1R+
 trP+Q/28ilECs/R2+XcKZuAD81AopaeFJM5AfTocSY5L6ZVht128g7iHZDwo3Q+doWrW
 xq5mE6KOkPUDtY17uXBPc8HmgFdHsDOFfO7b7QI9JM5n2il2xARs2YEIVM7xzBGeLMXu
 RBGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=853Aek+SKODz/QOY+OBf6Tf8GdbBpJrd1dF6+Fob5wE=;
 b=DWgGQ3lXJYnyjaBe5wkC2Yfh5J+gPEY3WLEY2CnTcMsByCMHE/Iw6NYRDK8dDTsoWP
 2I+43fkElSyrbyZ6NDzM84Cg/RM/nShksWZQwT2NQphs9gCPQXJyKy1frB09B0Y1Kfin
 eCRbjMF2pCwzkqDjASH9v2KLMJjGyF+kH5+q/tKwK43kUtLsPUkHnlwDw9mg4irHbVmL
 gWoEfVmOS1u0BZFiQghNizutzUoo04j7jV7Eu+YzhVEjq6kPhAyijeHV7/swx3MyKIG5
 dFmSPfUAf8j6EsDW1PwdVE1LDMOlZ3qLuN4Z4IU+b+LGkYIRxy/NPLAzjgwPuEZhuLF8
 xvEQ==
X-Gm-Message-State: APjAAAXXlUWYdF0kX0LsgCVrlau3lvnchIEBbnJ4zid+hJs3YAjWIAq8
 1S91T47+vMd7pYBhlhECys5esKsNWeU=
X-Google-Smtp-Source: APXvYqzbNypG20U2K7S1SzUGMKhwwSrHLxZcPr3aYQsX8NayQ53mk/2UF8TMoRpY9YWA6YGC9h0Vzg==
X-Received: by 2002:a7b:c7c2:: with SMTP id z2mr10419269wmk.147.1560595156779; 
 Sat, 15 Jun 2019 03:39:16 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C20E00A9A405DFDBBC0790.dip0.t-ipconnect.de.
 [2003:f1:33c2:e00:a9a4:5df:dbbc:790])
 by smtp.googlemail.com with ESMTPSA id
 o126sm12209031wmo.31.2019.06.15.03.39.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 15 Jun 2019 03:39:15 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH v3 3/4] arm64: dts: meson: use the generic Ethernet PHY reset
 GPIO bindings
Date: Sat, 15 Jun 2019 12:38:31 +0200
Message-Id: <20190615103832.5126-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190615103832.5126-1-martin.blumenstingl@googlemail.com>
References: <20190615103832.5126-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_033918_570780_6332CC91 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: andrew@lunn.ch, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The snps,reset-gpio bindings are deprecated in favour of the generic
"Ethernet PHY reset" bindings.

Replace snps,reset-gpio from the &ethmac node with reset-gpios in the
ethernet-phy node. The old snps,reset-active-low property is now encoded
directly as GPIO flag inside the reset-gpios property.

snps,reset-delays-us is converted to reset-assert-us and
reset-deassert-us. reset-assert-us is the second cell from
snps,reset-delays-us while reset-deassert-us was the third cell.

Instead of blindly copying the old values (which seems strange since
they gave the PHY one second to come out of reset) over this also
updates the delays based on the datasheets:
- the Realtek RTL8211F PHY needs a 10ms assert delay (the datasheet
  mentions: "For a complete PHY reset, this pin must be asserted low
  for at least 10ms") and a 30ms deassert delay (the datasheet
  mentions: "Wait for a further 30ms (for internal circuits settling
  time) before accessing the PHY register". This applies to the
  following boards: GXBB NanoPi K2, GXBB Odroid-C2, GXBB Vega S95
  variants, GXBB Wetek variants, GXL P230, GXM Khadas VIM2, GXM Nexbox
  A1, GXM Q200, GXM RBox Pro boards.
- the ICPlus IP101GR PHY needs a 10ms assert delay (the datasheet
  mentions: "Trst | Reset period | 10ms") and a deassert delay of 10ms
  as well (the datasheet mentions: "Tclk_MII_rdy | MII/RMII clock
  output ready after reset released | 10ms"). This applies to the GXBB
  Nexbox A95X board.
- the Micrel KSZ9031 seems to require a 100us delay but use the same
  (seemingly safe) values from RTL8211F due to lack of a board to verify
  this. This applies to the GXBB P200 board.

The GXBB P201 board is left out from this conversion because it doesn't
have a dedicated PHY node (because it's not clear which PHY is used on
that board).

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts  |  9 +++++----
 .../arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts |  8 ++++----
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts   |  9 +++++----
 arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts       |  9 +++++----
 arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi  |  9 +++++----
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi     |  8 ++++----
 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-p230.dts  | 11 ++++++-----
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts | 10 +++++-----
 arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts   |  8 ++++----
 arch/arm64/boot/dts/amlogic/meson-gxm-q200.dts        | 11 ++++++-----
 arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts    |  8 ++++----
 11 files changed, 53 insertions(+), 47 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
index 849c01650c4d..c34c1c90ccb6 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
@@ -154,10 +154,6 @@
 
 	amlogic,tx-delay-ns = <2>;
 
-	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
-
 	mdio {
 		compatible = "snps,dwmac-mdio";
 		#address-cells = <1>;
@@ -166,6 +162,11 @@
 		eth_phy0: ethernet-phy@0 {
 			/* Realtek RTL8211F (0x001cc916) */
 			reg = <0>;
+
+			reset-assert-us = <10000>;
+			reset-deassert-us = <30000>;
+			reset-gpios = <&gpio GPIOZ_14 GPIO_ACTIVE_LOW>;
+
 			interrupt-parent = <&gpio_intc>;
 			/* MAC_INTR on GPIOZ_15 */
 			interrupts = <29 IRQ_TYPE_LEVEL_LOW>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
index 3c54f26eef15..b636912a2715 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
@@ -162,10 +162,6 @@
 	phy-handle = <&eth_phy0>;
 	phy-mode = "rmii";
 
-	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
-
 	mdio {
 		compatible = "snps,dwmac-mdio";
 		#address-cells = <1>;
@@ -174,6 +170,10 @@
 		eth_phy0: ethernet-phy@0 {
 			/* IC Plus IP101GR (0x02430c54) */
 			reg = <0>;
+
+			reset-assert-us = <10000>;
+			reset-deassert-us = <10000>;
+			reset-gpios = <&gpio GPIOZ_14 GPIO_ACTIVE_LOW>;
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 5a139e7b1c60..9972b1515da6 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -126,10 +126,6 @@
 	phy-handle = <&eth_phy0>;
 	phy-mode = "rgmii";
 
-	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
-
 	amlogic,tx-delay-ns = <2>;
 
 	mdio {
@@ -140,6 +136,11 @@
 		eth_phy0: ethernet-phy@0 {
 			/* Realtek RTL8211F (0x001cc916) */
 			reg = <0>;
+
+			reset-assert-us = <10000>;
+			reset-deassert-us = <30000>;
+			reset-gpios = <&gpio GPIOZ_14 GPIO_ACTIVE_LOW>;
+
 			interrupt-parent = <&gpio_intc>;
 			/* MAC_INTR on GPIOZ_15 */
 			interrupts = <29 IRQ_TYPE_LEVEL_LOW>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts
index 9d2406a7c4fa..3c93d1898b40 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts
@@ -68,10 +68,6 @@
 
 	amlogic,tx-delay-ns = <2>;
 
-	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
-
 	mdio {
 		compatible = "snps,dwmac-mdio";
 		#address-cells = <1>;
@@ -80,6 +76,11 @@
 		eth_phy0: ethernet-phy@3 {
 			/* Micrel KSZ9031 (0x00221620) */
 			reg = <3>;
+
+			reset-assert-us = <10000>;
+			reset-deassert-us = <30000>;
+			reset-gpios = <&gpio GPIOZ_14 GPIO_ACTIVE_LOW>;
+
 			interrupt-parent = <&gpio_intc>;
 			/* MAC_INTR on GPIOZ_15 */
 			interrupts = <29 IRQ_TYPE_LEVEL_LOW>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
index 18856f28fd60..43b11e3dfe11 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
@@ -116,10 +116,6 @@
 
 	amlogic,tx-delay-ns = <2>;
 
-	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
-
 	mdio {
 		compatible = "snps,dwmac-mdio";
 		#address-cells = <1>;
@@ -128,6 +124,11 @@
 		eth_phy0: ethernet-phy@0 {
 			/* Realtek RTL8211F (0x001cc916) */
 			reg = <0>;
+
+			reset-assert-us = <10000>;
+			reset-deassert-us = <30000>;
+			reset-gpios = <&gpio GPIOZ_14 GPIO_ACTIVE_LOW>;
+
 			interrupt-parent = <&gpio_intc>;
 			/* MAC_INTR on GPIOZ_15 */
 			interrupts = <29 IRQ_TYPE_LEVEL_LOW>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
index 9ef6858779c1..4c539881fbb7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
@@ -137,10 +137,6 @@
 
 	amlogic,tx-delay-ns = <2>;
 
-	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
-
 	mdio {
 		compatible = "snps,dwmac-mdio";
 		#address-cells = <1>;
@@ -149,6 +145,10 @@
 		eth_phy0: ethernet-phy@0 {
 			/* Realtek RTL8211F (0x001cc916) */
 			reg = <0>;
+
+			reset-assert-us = <10000>;
+			reset-deassert-us = <30000>;
+			reset-gpios = <&gpio GPIOZ_14 GPIO_ACTIVE_LOW>;
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-p230.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-p230.dts
index 767b1763a612..b08c4537f260 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-p230.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-p230.dts
@@ -70,11 +70,6 @@
 
 	amlogic,tx-delay-ns = <2>;
 
-	/* External PHY reset is shared with internal PHY Led signals */
-	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
-
 	/* External PHY is in RGMII */
 	phy-mode = "rgmii";
 };
@@ -84,6 +79,12 @@
 		/* Realtek RTL8211F (0x001cc916) */
 		reg = <0>;
 		max-speed = <1000>;
+
+		/* External PHY reset is shared with internal PHY Led signal */
+		reset-assert-us = <10000>;
+		reset-deassert-us = <30000>;
+		reset-gpios = <&gpio GPIOZ_14 GPIO_ACTIVE_LOW>;
+
 		interrupt-parent = <&gpio_intc>;
 		interrupts = <29 IRQ_TYPE_LEVEL_LOW>;
 		eee-broken-1000t;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
index ff4f0780824d..989d33ac6eae 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
@@ -239,11 +239,6 @@
 
 	amlogic,tx-delay-ns = <2>;
 
-	/* External PHY reset is shared with internal PHY Led signals */
-	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
-
 	/* External PHY is in RGMII */
 	phy-mode = "rgmii";
 
@@ -254,6 +249,11 @@
 	external_phy: ethernet-phy@0 {
 		/* Realtek RTL8211F (0x001cc916) */
 		reg = <0>;
+
+		reset-assert-us = <10000>;
+		reset-deassert-us = <30000>;
+		reset-gpios = <&gpio GPIOZ_14 GPIO_ACTIVE_LOW>;
+
 		interrupt-parent = <&gpio_intc>;
 		/* MAC_INTR on GPIOZ_15 */
 		interrupts = <25 IRQ_TYPE_LEVEL_LOW>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
index 29715eae14a9..c2bd4dbbf38c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
@@ -101,10 +101,6 @@
 
 	amlogic,tx-delay-ns = <2>;
 
-	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
-
 	/* External PHY is in RGMII */
 	phy-mode = "rgmii";
 };
@@ -114,6 +110,10 @@
 		/* Realtek RTL8211F (0x001cc916) */
 		reg = <0>;
 		max-speed = <1000>;
+
+		reset-assert-us = <10000>;
+		reset-deassert-us = <30000>;
+		reset-gpios = <&gpio GPIOZ_14 GPIO_ACTIVE_LOW>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-q200.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-q200.dts
index 8939c0fc5b62..ea45ae0c71b7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-q200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-q200.dts
@@ -52,11 +52,6 @@
 
 	amlogic,tx-delay-ns = <2>;
 
-	/* External PHY reset is shared with internal PHY Led signals */
-	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
-
 	/* External PHY is in RGMII */
 	phy-mode = "rgmii";
 };
@@ -66,6 +61,12 @@
 		/* Realtek RTL8211F (0x001cc916) */
 		reg = <0>;
 		max-speed = <1000>;
+
+		/* External PHY reset is shared with internal PHY Led signal */
+		reset-assert-us = <10000>;
+		reset-deassert-us = <30000>;
+		reset-gpios = <&gpio GPIOZ_14 GPIO_ACTIVE_LOW>;
+
 		interrupt-parent = <&gpio_intc>;
 		/* MAC_INTR on GPIOZ_15 */
 		interrupts = <25 IRQ_TYPE_LEVEL_LOW>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
index 13de1e8f58b5..5cd4d35006d0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
@@ -101,10 +101,6 @@
 	/* Select external PHY by default */
 	phy-handle = <&external_phy>;
 
-	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
-
 	amlogic,tx-delay-ns = <2>;
 
 	/* External PHY is in RGMII */
@@ -116,6 +112,10 @@
 		/* Realtek RTL8211F (0x001cc916) */
 		reg = <0>;
 		max-speed = <1000>;
+
+		reset-assert-us = <10000>;
+		reset-deassert-us = <30000>;
+		reset-gpios = <&gpio GPIOZ_14 GPIO_ACTIVE_LOW>;
 	};
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
