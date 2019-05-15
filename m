Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1C21EA0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 10:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7YBH/StDXDaVPyuIOPO6512XnMK78L7KVwl5Bvl/9Q4=; b=lygX6ehedQICgl
	RVQdr2RepA7mehrZXlC25/iFp7whLV0OTwT4x7NZHO6VpAr9+9XZMUcHHG1APCk02uZKP/WYdEDN2
	L/O6ljUlsrJH0TiVlm0jqoTqM+AeKwJSKfnNzMbWWBiJRBsOk/pZlh0lD1ow/Vz0IQV4Uzs+vrjMj
	mhNm8Hkmw+wpZQ4hIYSMM1ItGv+APxl1L+gcSIwQZKnqLgEqSNTV8vdWxUn7naPbX9CHuaZUZT0Cz
	Zf7eHYK6vuLP4PcGtfRvOh8GD+6WDAgbc0TGAKyB2Ik9jEh1D336R2KrSctuSHg6QaNO6EQgH42Tr
	W6cGEMW/DwEZJXeM8YqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQpCl-0000Dh-9s; Wed, 15 May 2019 08:24:03 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQpCH-0008Fd-IO
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 08:23:35 +0000
Received: by mail-wr1-x441.google.com with SMTP id c5so1563770wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 01:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p7UfUoQHdw2V5T9OO4cQVjr7I+4K0hfjSDR08/46NM8=;
 b=JC6JGU/R5mOXdJnFMhHg9NhRrwjnm9/rq3d0NNAv8tm1qyeK4yIS8VFjmNXISdFTzc
 fGZzqtAKXwKFac0gFgiZXEqme9KgtGgepWpAZj+yhHPWdvQLj+lzANnWRy/cSXRQgxQl
 GQtgi135wmcDG8au3xgNbrRsNJt39/zUx+62UX+zRkZM/LaF5Ke9bLTqDSRF1Gb+h9wW
 ZVP0qNW30wCv5gjNQnuM9QMFko5v+O1VRLZsFZHnUDy9Sqin7ZUT9SuNgONbuhJt9uCN
 9zN1aRLQ55opZWibPHxKzKe2PXBItE7xF/BCoGEzKX5ueYMNAkNA78i2ZhLNS2iYyHkF
 IQlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p7UfUoQHdw2V5T9OO4cQVjr7I+4K0hfjSDR08/46NM8=;
 b=TF6PQRcxAbk8X5mBr2JY4AA1hvrF83X71o7x2BNffwKyEjtUyMFcOvIgPAdWkJeFJv
 nIKWx8h3Qx4QfD2JACmN4lTIUA9gltNDNBVVN4ddpPE/CmdH1lIIE3EufEXox4LSdpeN
 SsoXyfNQWbObPzCfjgdHLkUoox69QeZkYci1wfaJzYMr90xQCRVrqBiUCRNcNEgPfJv1
 2B+3mNjhYRjn9TGKj5OaxFVy5ua9KDgaDlhTL/YaclmU4MiYcw9Exja9mpEItlnKvpKz
 BbEpXMTutw751jj6xCUMvpJIea/oENHoziAQw1um843IPf5t7QqDtVbUFgGnJQCzbTZT
 xSjw==
X-Gm-Message-State: APjAAAXpJyaZsk9wnq4TpZzv3KeZlL2oZ9ybvG1BL3XJNutjtl7V4Tsa
 jPOrnPM8soAqj83n0Rx4Wg1GpnLn
X-Google-Smtp-Source: APXvYqz91y91dnV4ymzUsPIk3oy6/2Qv8YL1PsZz/LsOBy8zoFbWLf+WGENcF7zET4VwvFgZtqyK0Q==
X-Received: by 2002:a5d:658f:: with SMTP id q15mr14507822wru.213.1557908611333; 
 Wed, 15 May 2019 01:23:31 -0700 (PDT)
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz.
 [86.49.110.70])
 by smtp.gmail.com with ESMTPSA id o8sm1970678wra.4.2019.05.15.01.23.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 01:23:30 -0700 (PDT)
From: marek.vasut@gmail.com
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2] ARM: dts: r8a779x: Configure PMIC IRQ pinmux
Date: Wed, 15 May 2019 10:23:26 +0200
Message-Id: <20190515082326.6449-1-marek.vasut@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_012333_634367_BD0A6A44 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-renesas-soc@vger.kernel.org,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Vasut <marek.vasut+renesas@gmail.com>

The PMIC IRQ line pin multiplexing configuration is missing from the DTs.
Since the line is configured correctly by default, the system works fine.
However, add the IRQ line pin multiplexing configuration for completeness.

Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Simon Horman <horms+renesas@verge.net.au>
Cc: linux-renesas-soc@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
V2: Move the pin control node from iic3 controller to pmic on 7792 Blanche,
    since there's only one PMIC on that board.
---
 arch/arm/boot/dts/r8a7790-lager.dts   | 7 +++++++
 arch/arm/boot/dts/r8a7790-stout.dts   | 7 ++++++-
 arch/arm/boot/dts/r8a7791-koelsch.dts | 7 +++++++
 arch/arm/boot/dts/r8a7791-porter.dts  | 7 +++++++
 arch/arm/boot/dts/r8a7792-blanche.dts | 7 +++++++
 arch/arm/boot/dts/r8a7793-gose.dts    | 7 +++++++
 6 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/r8a7790-lager.dts b/arch/arm/boot/dts/r8a7790-lager.dts
index 7b9508e83d46..d637b9727808 100644
--- a/arch/arm/boot/dts/r8a7790-lager.dts
+++ b/arch/arm/boot/dts/r8a7790-lager.dts
@@ -423,6 +423,8 @@
 	 */
 	i2cpwr: i2c-13 {
 		compatible = "i2c-demux-pinctrl";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_irq_pins>;
 		i2c-parent = <&iic3>, <&i2c3>;
 		i2c-bus-name = "i2c-pwr";
 		#address-cells = <1>;
@@ -615,6 +617,11 @@
 		function = "iic3";
 	};
 
+	pmic_irq_pins: pmicirq {
+		groups = "intc_irq2";
+		function = "intc";
+	};
+
 	hsusb_pins: hsusb {
 		groups = "usb0_ovc_vbus";
 		function = "usb0";
diff --git a/arch/arm/boot/dts/r8a7790-stout.dts b/arch/arm/boot/dts/r8a7790-stout.dts
index 7a7d3b84d1a6..ad68e6034b43 100644
--- a/arch/arm/boot/dts/r8a7790-stout.dts
+++ b/arch/arm/boot/dts/r8a7790-stout.dts
@@ -179,6 +179,11 @@
 		function = "iic3";
 	};
 
+	pmic_irq_pins: pmicirq {
+		groups = "intc_irq2";
+		function = "intc";
+	};
+
 	usb0_pins: usb0 {
 		groups = "usb0";
 		function = "usb0";
@@ -317,7 +322,7 @@
 
 &iic3 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&iic3_pins>;
+	pinctrl-0 = <&iic3_pins &pmic_irq_pins>;
 	status = "okay";
 
 	pmic@58 {
diff --git a/arch/arm/boot/dts/r8a7791-koelsch.dts b/arch/arm/boot/dts/r8a7791-koelsch.dts
index e6580aa0cea3..a116bfc11f0b 100644
--- a/arch/arm/boot/dts/r8a7791-koelsch.dts
+++ b/arch/arm/boot/dts/r8a7791-koelsch.dts
@@ -540,6 +540,11 @@
 		function = "intc";
 	};
 
+	pmic_irq_pins: pmicirq {
+		groups = "intc_irq2";
+		function = "intc";
+	};
+
 	sdhi0_pins: sd0 {
 		groups = "sdhi0_data4", "sdhi0_ctrl";
 		function = "sdhi0";
@@ -776,6 +781,8 @@
 };
 
 &i2c6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pmic_irq_pins>;
 	status = "okay";
 	clock-frequency = <100000>;
 
diff --git a/arch/arm/boot/dts/r8a7791-porter.dts b/arch/arm/boot/dts/r8a7791-porter.dts
index fefdf8238bbe..e08d257f5d0c 100644
--- a/arch/arm/boot/dts/r8a7791-porter.dts
+++ b/arch/arm/boot/dts/r8a7791-porter.dts
@@ -228,6 +228,11 @@
 		function = "intc";
 	};
 
+	pmic_irq_pins: pmicirq {
+		groups = "intc_irq2";
+		function = "intc";
+	};
+
 	sdhi0_pins: sd0 {
 		groups = "sdhi0_data4", "sdhi0_ctrl";
 		function = "sdhi0";
@@ -373,6 +378,8 @@
 };
 
 &i2c6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pmic_irq_pins>;
 	status = "okay";
 	clock-frequency = <100000>;
 
diff --git a/arch/arm/boot/dts/r8a7792-blanche.dts b/arch/arm/boot/dts/r8a7792-blanche.dts
index b6fa80c3b07e..b7af14de7c8e 100644
--- a/arch/arm/boot/dts/r8a7792-blanche.dts
+++ b/arch/arm/boot/dts/r8a7792-blanche.dts
@@ -234,6 +234,11 @@
 		groups = "du1_rgb666", "du1_sync", "du1_disp";
 		function = "du1";
 	};
+
+	pmic_irq_pins: pmicirq {
+		groups = "intc_irq2";
+		function = "intc";
+	};
 };
 
 &rwdt {
@@ -314,6 +319,8 @@
 	pmic@58 {
 		compatible = "dlg,da9063";
 		reg = <0x58>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_irq_pins>;
 		interrupt-parent = <&irqc>;
 		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
 		interrupt-controller;
diff --git a/arch/arm/boot/dts/r8a7793-gose.dts b/arch/arm/boot/dts/r8a7793-gose.dts
index f51601af89a2..9984ebf06695 100644
--- a/arch/arm/boot/dts/r8a7793-gose.dts
+++ b/arch/arm/boot/dts/r8a7793-gose.dts
@@ -514,6 +514,11 @@
 		function = "intc";
 	};
 
+	pmic_irq_pins: pmicirq {
+		groups = "intc_irq2";
+		function = "intc";
+	};
+
 	sdhi0_pins: sd0 {
 		groups = "sdhi0_data4", "sdhi0_ctrl";
 		function = "sdhi0";
@@ -711,6 +716,8 @@
 };
 
 &i2c6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pmic_irq_pins>;
 	status = "okay";
 	clock-frequency = <100000>;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
