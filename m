Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EFE3B9B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuTvDErjZRUCuOLY+912MtfEKqOBgW/ZzPkP0JrClYk=; b=coxfv1ZQLLBzWp
	tI7d+2MeDFHkLu8H4TtcRDPYTRJUYPHQz/BnhaK/o9axp7KBHbO+PhMvXbLsGwvGYH+Z3myhz/7Yv
	lba/nu6GlKjkWy+XRnZc34xERGJ7yZvAxPZuMm4SWCxuCPskzWrdanm18JSPrTgdVjHrx1HfL98wS
	VscgcmWMBNA6AfsEVqfc0Jw/Nv+bWxXNUaOaG+WDZClBNQW+Kns+FcY5bqbg1QxYGLZ8LtI6UozyB
	+DCZlgeTpCl7b+5x4fQDlHQsDvVqdFWM049zkQ9lOc0FWTozxnGFYfS4I7aZvMwS/c69d1rO8flFP
	MFp4CRcYq5zSgKzKZTxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNJp-0007r2-4v; Mon, 10 Jun 2019 16:38:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNJ2-0007G4-2S; Mon, 10 Jun 2019 16:38:01 +0000
Received: by mail-wm1-x341.google.com with SMTP id h19so315732wme.0;
 Mon, 10 Jun 2019 09:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5yNTAIz3mJDkLK+YySgzrs7un+Xy5BvadJQvUdsbk+g=;
 b=OjnpuyGd7JLQGol8L8RK5CUC59JzpdS0vEKP4X//P98JFnVj8yhOXyKUZ4FvPYJUyT
 wPkkM8uYPgBO1ae7ZHtIR5SwCksuSY4PdjDMxKkKEfhVIJrFZEEUcvWd3hajsQ5tqrLk
 fU0tcQSUldoOpDm4NzAKS9bnorh0imHpbRz4p19FNzq/xSace4DGuOzcT+J+zgFErHUb
 OyT54AWOVc2TYX06el7lT8CQLRzxpYIQ+SRM7eB7JqAilZvEGbbtzqLvbfJj3wKDrsuw
 IshjpYuloVu8OlKqg6xFtFAlaj04LEbYmzP2AvMstHD9NmfoOLIZIKE2cnAQ57pm1bp6
 A4Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5yNTAIz3mJDkLK+YySgzrs7un+Xy5BvadJQvUdsbk+g=;
 b=jjH/bJCEJR7DnMjAphvLCrbDwOMIxdjlLOOWlX+JYy2MBjnQYGFEk+Lk4f5ynaknKD
 82lU1sK4m0ERGscJDCb4OsgKgKeuS2jDtgR/DQj8jW8dEdLo5+4pBx65giSh7DigFZIK
 GImZwbnpSA73e91MP2rk3t3CLSNQSFBpj7alQfeQFI3o4u7848jDtlCJyzZU/hNMNAtb
 Hb4YniE5i0TzEbnkmewllEQZF3DcW1LqzhKebXBjFrs40HLG15RJaJjfsZnPj3VNdz0C
 d2roWmftyzjLRLU7CdGeAFSjhAEc/t+x4JNcf/vb3UZUOffRCU7/jWwexfwwYTw54B6U
 od8g==
X-Gm-Message-State: APjAAAVNAQEnt6A3TDaMaYW2Y4oWVF9CjOIIFAGn1P9cX0dscIoTb0Nd
 J458GnJotPQXPUzPExWdUhsLbRZh
X-Google-Smtp-Source: APXvYqymn6rvlpcPNNMw7f+/G8mtoxn4S6Ao+sIHVgyzjum/6MXrQ/JvewfiEWqR9xC/PNBynb0bhQ==
X-Received: by 2002:a1c:e715:: with SMTP id e21mr14832715wmh.16.1560184677982; 
 Mon, 10 Jun 2019 09:37:57 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA40000C4C39937FBD289.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:c4:c399:37fb:d289])
 by smtp.googlemail.com with ESMTPSA id g5sm13900517wrp.29.2019.06.10.09.37.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 09:37:57 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 2/4] ARM: dts: meson: switch to the generic Ethernet PHY reset
 bindings
Date: Mon, 10 Jun 2019 18:37:34 +0200
Message-Id: <20190610163736.6187-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190610163736.6187-1-martin.blumenstingl@googlemail.com>
References: <20190610163736.6187-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_093800_115454_226A79BA 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: andrew@lunn.ch, Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
- RTL8211F PHY on the Odroid-C1 and MXIII-Plus needs a 10ms delay (the
  old settings used 10ms for assert and 1000ms for deassert)
- IP101GR PHY on the EC-100 and MXQ needs a 2.5ms delay (the old
  settings used 10ms for assert and 1000ms for deassert)

No functional changes intended.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b-ec100.dts       | 9 +++++----
 arch/arm/boot/dts/meson8b-mxq.dts         | 9 +++++----
 arch/arm/boot/dts/meson8b-odroidc1.dts    | 9 +++++----
 arch/arm/boot/dts/meson8m2-mxiii-plus.dts | 8 ++++----
 4 files changed, 19 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b-ec100.dts b/arch/arm/boot/dts/meson8b-ec100.dts
index 9bf4249cb60d..e1d4fefa66c0 100644
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
+			reset-assert-us = <2500>;
+			reset-deassert-us = <2500>;
+			reset-gpios = <&gpio GPIOH_4 GPIO_ACTIVE_LOW>;
+
 			icplus,select-interrupt;
 			interrupt-parent = <&gpio_intc>;
 			/* GPIOH_3 */
diff --git a/arch/arm/boot/dts/meson8b-mxq.dts b/arch/arm/boot/dts/meson8b-mxq.dts
index ef602ab45efd..790441bdffa9 100644
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
+			reset-assert-us = <2500>;
+			reset-deassert-us = <2500>;
+			reset-gpios = <&gpio GPIOH_4 GPIO_ACTIVE_LOW>;
+
 			icplus,select-interrupt;
 			interrupt-parent = <&gpio_intc>;
 			/* GPIOH_3 */
diff --git a/arch/arm/boot/dts/meson8b-odroidc1.dts b/arch/arm/boot/dts/meson8b-odroidc1.dts
index 018695b2b83a..c41dbb7acc56 100644
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
+			reset-deassert-us = <10000>;
+			reset-gpios = <&gpio GPIOH_4 GPIO_ACTIVE_LOW>;
+
 			interrupt-parent = <&gpio_intc>;
 			/* GPIOH_3 */
 			interrupts = <17 IRQ_TYPE_LEVEL_LOW>;
diff --git a/arch/arm/boot/dts/meson8m2-mxiii-plus.dts b/arch/arm/boot/dts/meson8m2-mxiii-plus.dts
index 59b07a55e461..46eb656a128f 100644
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
+			reset-deassert-us = <10000>;
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
