Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B69D146FA0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 12:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3ksUKNxWld7NsrGQ/qat2Jja1/Od5NgJ1YLcYZB3Ek=; b=fKvGUzEWa73ZZ4
	OboeOMHqKfbl5fssk1NXPq2ByqVJZE3GTbNl7y7ZMH1COuydVT+wWxmstRjEwYOo2KpsjUIAEmjD9
	VOgbtiTN2cOKeLDq4Y7vJf3kjoJk2aOC2yRuKjwfJC77+k4uXdpmPMmQM+u2N3fAm0K0FFK7P/8Ko
	IozxSiocIFpo+tNZDStj39Wm35ToqTuuM5kabSUZ5xJ+fVkBIiIxTqAadmO2zdsRea144MNRTU5eL
	rcJxArQhoCMrWJqCpbONj815lPqK0GWtiJ+kNRydDVUgT0Y11duFc8wKP0eD7P7JyWeCTLovIbr/L
	EejR6sRngtGs3RF82A7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc66c-0000Uq-AX; Sat, 15 Jun 2019 10:40:18 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc65d-0008HB-2t; Sat, 15 Jun 2019 10:39:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id x4so5020307wrt.6;
 Sat, 15 Jun 2019 03:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P/QzgniEGEGclZRpn0KBLWO6OR92A4BDuZ9FnJJVEA8=;
 b=AlwC1tIRdEsAvi9VVVpHVrUDgkd8VLGzLgaMll9PnQSGv07Pe2vtxIA5N5sa7FsK4A
 ogctEvFj/2UQNv+OCPc1MY1BZmqc75dANmN5GPWp87gpSX45JyHnt0GSOGH/ik1LBG8L
 jjPNqzWbzZi8U2sW1kNzvwbXo3iBEIy+zsmcz56B+MJILExti5aVzJZfA2wSavQtrQNO
 tTbCGpk2n8Liq4IGjGaYipznJwoOoQIVbEcbfBQQUcHrYJ4gf+6dHC8PgfR/SdzuEbVI
 7MUhILIiS2VjtnzyBEWuhO0dQwhVmwS7fgY0zmMhfTAUz3YJfT0bHx8Q+35A/0gBrshn
 HjzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P/QzgniEGEGclZRpn0KBLWO6OR92A4BDuZ9FnJJVEA8=;
 b=H95fZBv9jw5JsGy5zF/BUWLXQ+W36cQtTtrFMoJvT/kP80bwG0iDI+3uH9t8iqAuAC
 DQ1ooSnAYsYKBgcJ4EnyqSYQkQLLwsGKPaWrRXFhB/Z4dQNXTSGDJqL0NMUtgoFnKbkF
 O29m2SycLJQ/di0/mIleljPDvGfipOupb6zDE0e9qTm4mR/24/oUbQ6Lrlm2XPBrQLeA
 NwiDQ4efYyYeN248dTqUs28T6Qe6mwuxlHEeBU4F31BJOW4YPx6rBN5eQ/YiUAN6Q8W/
 usx1LJdPaDliiMmN5VvEcv85iVapUExsUgIg94pF2ph33jlSL/pxW64ay1PPk57FmXVv
 3btA==
X-Gm-Message-State: APjAAAXEz8C4VlWI0yz8V73VuS9ixbFlNxkCpe80dY7iZ/09Hjjr1lDm
 9IVSkM7xNuG5M8owG2E1iPZEiTP+gqs=
X-Google-Smtp-Source: APXvYqxwZcfDY15BDA87kog2PnIW1s/kC9IFZFwJu8gtBOIDtptJuvKR7G46QVBVuO6F98UWNpQdYQ==
X-Received: by 2002:a5d:4087:: with SMTP id o7mr54775869wrp.277.1560595155210; 
 Sat, 15 Jun 2019 03:39:15 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C20E00A9A405DFDBBC0790.dip0.t-ipconnect.de.
 [2003:f1:33c2:e00:a9a4:5df:dbbc:790])
 by smtp.googlemail.com with ESMTPSA id
 o126sm12209031wmo.31.2019.06.15.03.39.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 15 Jun 2019 03:39:14 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH v3 2/4] ARM: dts: meson: switch to the generic Ethernet PHY
 reset bindings
Date: Sat, 15 Jun 2019 12:38:30 +0200
Message-Id: <20190615103832.5126-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190615103832.5126-1-martin.blumenstingl@googlemail.com>
References: <20190615103832.5126-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_033917_148869_E472E2D5 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
- RTL8211F PHY on the Odroid-C1 and MXIII-Plus needs a 10ms assert
  delay (the datasheet mentions: "For a complete PHY reset, this pin
  must be asserted low for at least 10ms") and a 30ms deassert delay
  (the datasheet mentions: "Wait for a further 30ms (for internal
  circuits settling time) before accessing the PHY register"). The
  old settings used 10ms for assert and 1000ms for deassert.
- IP101GR PHY on the EC-100 and MXQ needs a 10ms assert delay (the
  datasheet mentions: "Trst | Reset period | 10ms") and a 10ms deassert
  delay as well (the datasheet mentions: "Tclk_MII_rdy | MII/RMII clock
  output ready after reset released | 10ms")). The old settings used
  10ms for assert and 1000ms for deassert.

No functional changes intended.

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b-ec100.dts       | 9 +++++----
 arch/arm/boot/dts/meson8b-mxq.dts         | 9 +++++----
 arch/arm/boot/dts/meson8b-odroidc1.dts    | 9 +++++----
 arch/arm/boot/dts/meson8m2-mxiii-plus.dts | 8 ++++----
 4 files changed, 19 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b-ec100.dts b/arch/arm/boot/dts/meson8b-ec100.dts
index 9bf4249cb60d..96d239d8334e 100644
--- a/arch/arm/boot/dts/meson8b-ec100.dts
+++ b/arch/arm/boot/dts/meson8b-ec100.dts
@@ -234,10 +234,6 @@
 	phy-handle = <&eth_phy0>;
 	phy-mode = "rmii";
 
-	snps,reset-gpio = <&gpio GPIOH_4 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
-
 	mdio {
 		compatible = "snps,dwmac-mdio";
 		#address-cells = <1>;
@@ -246,6 +242,11 @@
 		eth_phy0: ethernet-phy@0 {
 			/* IC Plus IP101A/G (0x02430c54) */
 			reg = <0>;
+
+			reset-assert-us = <10000>;
+			reset-deassert-us = <10000>;
+			reset-gpios = <&gpio GPIOH_4 GPIO_ACTIVE_LOW>;
+
 			icplus,select-interrupt;
 			interrupt-parent = <&gpio_intc>;
 			/* GPIOH_3 */
diff --git a/arch/arm/boot/dts/meson8b-mxq.dts b/arch/arm/boot/dts/meson8b-mxq.dts
index ef602ab45efd..bb27b34eb346 100644
--- a/arch/arm/boot/dts/meson8b-mxq.dts
+++ b/arch/arm/boot/dts/meson8b-mxq.dts
@@ -91,10 +91,6 @@
 	phy-handle = <&eth_phy0>;
 	phy-mode = "rmii";
 
-	snps,reset-gpio = <&gpio GPIOH_4 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
-
 	mdio {
 		compatible = "snps,dwmac-mdio";
 		#address-cells = <1>;
@@ -103,6 +99,11 @@
 		eth_phy0: ethernet-phy@0 {
 			/* IC Plus IP101A/G (0x02430c54) */
 			reg = <0>;
+
+			reset-assert-us = <10000>;
+			reset-deassert-us = <10000>;
+			reset-gpios = <&gpio GPIOH_4 GPIO_ACTIVE_LOW>;
+
 			icplus,select-interrupt;
 			interrupt-parent = <&gpio_intc>;
 			/* GPIOH_3 */
diff --git a/arch/arm/boot/dts/meson8b-odroidc1.dts b/arch/arm/boot/dts/meson8b-odroidc1.dts
index 018695b2b83a..86c4614e0a38 100644
--- a/arch/arm/boot/dts/meson8b-odroidc1.dts
+++ b/arch/arm/boot/dts/meson8b-odroidc1.dts
@@ -176,10 +176,6 @@
 &ethmac {
 	status = "okay";
 
-	snps,reset-gpio = <&gpio GPIOH_4 GPIO_ACTIVE_HIGH>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 10000 30000>;
-
 	pinctrl-0 = <&eth_rgmii_pins>;
 	pinctrl-names = "default";
 
@@ -195,6 +191,11 @@
 		/* Realtek RTL8211F (0x001cc916) */
 		eth_phy: ethernet-phy@0 {
 			reg = <0>;
+
+			reset-assert-us = <10000>;
+			reset-deassert-us = <30000>;
+			reset-gpios = <&gpio GPIOH_4 GPIO_ACTIVE_LOW>;
+
 			interrupt-parent = <&gpio_intc>;
 			/* GPIOH_3 */
 			interrupts = <17 IRQ_TYPE_LEVEL_LOW>;
diff --git a/arch/arm/boot/dts/meson8m2-mxiii-plus.dts b/arch/arm/boot/dts/meson8m2-mxiii-plus.dts
index 59b07a55e461..d54477b1001c 100644
--- a/arch/arm/boot/dts/meson8m2-mxiii-plus.dts
+++ b/arch/arm/boot/dts/meson8m2-mxiii-plus.dts
@@ -73,10 +73,6 @@
 
 	amlogic,tx-delay-ns = <4>;
 
-	snps,reset-gpio = <&gpio GPIOH_4 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
-
 	mdio {
 		compatible = "snps,dwmac-mdio";
 		#address-cells = <1>;
@@ -85,6 +81,10 @@
 		eth_phy0: ethernet-phy@0 {
 			/* Realtek RTL8211F (0x001cc916) */
 			reg = <0>;
+
+			reset-assert-us = <10000>;
+			reset-deassert-us = <30000>;
+			reset-gpios = <&gpio GPIOH_4 GPIO_ACTIVE_LOW>;
 		};
 	};
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
