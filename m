Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF9611AD2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 16:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u+8JnCcH6Uesh/vd7kKxrw00nveECeqgtgfHMhyaH9o=; b=IaKDmFFgIojbdb
	nctRZAunDXuV/B0oBvGTlR0V1x5TMBPp6mbVPBDqyNwGRwOdzb41kPhQ4RqNs3stsL+hGqEiA8Eo5
	rAvQsqasusV4eKEI5QgmD8fZJKVqpYcy55GMPw8JwpH+SrBdMlkP732SOWSFPXNLI0VXMXbxTNbyG
	LqETZU4RYooe6n9t9KZdVxQj4EfxKE8ZPsawsed+glVLO9k3xB1tHz3NU4rjdRg/A/kJ1JmkJWb4G
	xwkBnvXN2yw5FgIoeglDx6vn63Fo0qGnllIODeYXlw/m3OzX95V6qBgNdoklPS8JiTQIWm0O68Dxn
	9cHhxFJEiT3/rACBnCgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMCMU-00079L-SW; Thu, 02 May 2019 14:06:58 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMCMK-00077L-Ol
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 14:06:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id t76so3043890wmt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 07:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rvLXOgtsoKyORI6UV06ucWVqWeG0EvZKDx3T+a6oXjE=;
 b=TOCR+LouXmGE6yBg6AOSogcSwwhuNa893u94KhQrC2F3UaQTKaFgRnXLFlK0WoxpiS
 xvo1ZlWGgOr4hPuSMeVc4YESBmNowKadSxZGY9JltsJkfX+I1pk2F5wxufUgLc26ELvC
 LfF63yJ3g4B1jFp89ci83dPuf6dUFXT2D4I9JDARmo9TlpRHDBaxoOhb9pnR1xKnGv9B
 eDw92y2imM5695zsBBiNSg7rjUhy0QChwBg5yL2jMQkfgBFF7rqjQwPsTMgpbvkUXnvU
 x7kv0A8+jFnNZCheAZw8D5WCrX6RWEil9VGZOk5G5SpsvzbjZjh6fxCJhOiU5BL3g902
 5Yfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rvLXOgtsoKyORI6UV06ucWVqWeG0EvZKDx3T+a6oXjE=;
 b=M/hGzXKfrPT80RDaU8p3TfjAaIuxI4G8CpJfUNaa4pwSZDu6WRSkXp5p3KyrYQyCYA
 ZEYLHxNpnlHXDSOURW1EDrAtQyjMrpWTuyLYcw3kDO/ElDNnxNgOeungxt3GP12qPP0Z
 ZDnTwRe7B7DSy/ilJlCZ28UxDuGpRZrTvIpQzgdtspV2zywdutkiOYxZ/MFpI1nZNqY+
 6lMWWjYCcUTPCnwMD6vMykue79W+F5+1F8SG2Tn+WrvPg0HCtOpUU9mlIMcoewg7KklQ
 Mi7z9Ihm1JHTrUXXI2qcEJH4gG/cgxM0zobrVK177RJNWJ20w5k+hfxCs5mjTY2k44sm
 r1eQ==
X-Gm-Message-State: APjAAAWiwTn2PXLkq1Fyw0LpbNZKTXaHC3S4/npdmLZ37El2uGJwpE/u
 bcJl2PIr9pJjjssEgHinZB38QOBN
X-Google-Smtp-Source: APXvYqyd3UGceOx/s9OVjIUn0NDg9Ced/63IpolYqJ3NuH7zUpvAMq2dQtYdmEkz9zz1YTXRgecf/A==
X-Received: by 2002:a1c:4602:: with SMTP id t2mr2471965wma.120.1556806006260; 
 Thu, 02 May 2019 07:06:46 -0700 (PDT)
Received: from localhost.localdomain (cst-prg-80-10.cust.vodafone.cz.
 [46.135.80.10])
 by smtp.gmail.com with ESMTPSA id u11sm10396979wrg.35.2019.05.02.07.06.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 07:06:45 -0700 (PDT)
From: marek.vasut@gmail.com
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: r8a779x: Configure PMIC IRQ pinmux
Date: Thu,  2 May 2019 16:06:34 +0200
Message-Id: <20190502140634.4529-1-marek.vasut@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_070648_845321_0955B60D 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index b6fa80c3b07e..7b0d17ee87fb 100644
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
@@ -309,6 +314,8 @@
 };
 
 &iic3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pmic_irq_pins>;
 	status = "okay";
 
 	pmic@58 {
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
