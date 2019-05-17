Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6359E219E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 16:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TbMQRAKP8KZ5yfKftlCzV5BLOuyXJdtH1j3pn8xWVuA=; b=PHS
	591iLgKUnJK3rjlgaRlTwK33VGsp02IGoNfGJaiQf/qvymq+qL5CmyDG2tbcxynERwlF9b/SvltMa
	wqltICor9VDfn3IzOFkVoq0N4+MQCr3mNwCrBI6+D0+3xmrHmJqHGDv9s6ZFFolADiH5Ve1XOKB7P
	VFPoOh8f5YYPpxXe2oUrIMnTUk89V2H8MVLPVgjSV5Anee+rerldNRAwAQYyL4KXJTQ07D3dr5Iyj
	E+7gUdbhgiTtk0vThf5Mv7ljqZa+WBXLhfbznKf/oXfj897U/tYRADLZ72TWadLdESX2ZdEi9A6b4
	+/YyQuyzYu3INQcVXqYagbwwWMXzB/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRe50-000511-Rq; Fri, 17 May 2019 14:43:26 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRe4u-00050Q-2Z
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 14:43:21 +0000
Received: by mail-pg1-x543.google.com with SMTP id z16so3391323pgv.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 07:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=qalnLftG8BGXufJW9Y1XxKgDlaGf8qdtZjfLnyDTaDY=;
 b=Lr7ZEuS4guPaPWxHmyxqVA60Z7hDws4wiAA2x3CNhcPpXXowz7VycdoFmhXT9i5rGq
 NMiXRw3rgxK3eYyyJXPLIiH8fZeQE9gSb+OLJpy1evlORo7TQuesrlxHIHgOXAFsDZal
 7TSXIxEQ+gzNRaDKupwfzJwRm0SX7GgGimpYLo44emMvkWhbgxKHbvMBRfQzIb5qFwmi
 V5rk1zbI1YiyvcrzmoaQuN4xUebbyvCzT15PGA/iIwdn8UnZLgXeyexB+l+ZUxXLQP89
 m99RwYz/HbPTODGMf5xvrYeEEJi0iTTL/m3xNJA4WRCJIm8gOZEgFeVQWOs9nCvFjQRO
 hecQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qalnLftG8BGXufJW9Y1XxKgDlaGf8qdtZjfLnyDTaDY=;
 b=recVsxph4SJT28mK4pmsFjL1Uudqj3qNEG/uLPAVhtcBiP+b3gKl6dyP6LFt57f7eP
 mEoxPvp7JI5/zC5et0LHT6RAa5eMrwyrjjlj03A3Y1rloFIqMeR0rBY4zEVB8sWpSEkC
 2xUiABLYO7oMQIJkcST6ogyKRHF7T7v1OAqGAaGzKgHLnIPw6Wzv17jEPaZoYvi75ULH
 TKoXWp6bqsWpmSR4DQ8A2wIqVF5ifTcAK2mO1Z2dZzSbvKPyU3frGXo0xiV7vKuIjAFC
 OJ2Zpe/KavXoUnpU2ueqGavxLqfeMlHFsSxUEd93V3aiojsRUUm7FX5msAi6d3+T003c
 WBQw==
X-Gm-Message-State: APjAAAV+qZctHYM4bUVwFiKIO8HGGvrfi+383UDNEwTRl7i9L6mV3Si3
 xGNCGh99LDro2TstVRgkA48=
X-Google-Smtp-Source: APXvYqwn/ZaiN3K+fBgNdBDQ9lJQsMUhnLwY9QRcif3KBUu7XvGpc5MFy0DXSd1Pzq3+OcF7j4nNZA==
X-Received: by 2002:aa7:881a:: with SMTP id c26mr54130569pfo.254.1558104197811; 
 Fri, 17 May 2019 07:43:17 -0700 (PDT)
Received: from localhost.localdomain
 (p8554011-ipngn42901marunouchi.tokyo.ocn.ne.jp. [180.57.220.11])
 by smtp.gmail.com with ESMTPSA id 194sm5687959pgd.33.2019.05.17.07.43.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 17 May 2019 07:43:15 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH/RFT] arm: dts: renesas: r7s9210-rza2mevb: sort nodes of
 rza2mevb board
Date: Fri, 17 May 2019 23:43:07 +0900
Message-Id: <1558104187-2842-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_074320_143063_350636BE 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch sorts the nodes of arch/arm/boot/dts/r7s9210-rza2mevb.dts.

* Sort subnodes of root ("/") node alphabetically
* Sort following top-level nodes alphabetically
* Sort subnodes of pinctrl alphabetically

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the devel branch of Simon Horman's renesas tree.

 arch/arm/boot/dts/r7s9210-rza2mevb.dts | 92 +++++++++++++++++-----------------
 1 file changed, 46 insertions(+), 46 deletions(-)

diff --git a/arch/arm/boot/dts/r7s9210-rza2mevb.dts b/arch/arm/boot/dts/r7s9210-rza2mevb.dts
index fa44e35..71808ce 100644
--- a/arch/arm/boot/dts/r7s9210-rza2mevb.dts
+++ b/arch/arm/boot/dts/r7s9210-rza2mevb.dts
@@ -26,11 +26,6 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory@40000000 {
-		device_type = "memory";
-		reg = <0x40000000 0x00800000>;	 /* HyperRAM */
-	};
-
 	lbsc {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -46,6 +41,33 @@
 			gpios = <&pinctrl RZA2_PIN(PORTC, 1) GPIO_ACTIVE_HIGH>;
 		};
 	};
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x40000000 0x00800000>;	 /* HyperRAM */
+	};
+};
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
 };
 
 /* EXTAL */
@@ -53,23 +75,16 @@
 	clock-frequency = <24000000>;	/* 24MHz */
 };
 
-/* RTC_X1 */
-&rtc_x1_clk {
-	clock-frequency = <32768>;
+/* High resolution System tick timers */
+&ostm0 {
+	status = "okay";
 };
 
-/* USB_X1 */
-&usb_x1_clk {
-	clock-frequency = <48000000>;
+&ostm1 {
+	status = "okay";
 };
 
 &pinctrl {
-	/* Serial Console */
-	scif4_pins: serial4 {
-		pinmux = <RZA2_PINMUX(PORT9, 0, 4)>,	/* TxD4 */
-			 <RZA2_PINMUX(PORT9, 1, 4)>;	/* RxD4 */
-	};
-
 	eth0_pins: eth0 {
 		pinmux = <RZA2_PINMUX(PORTE, 0, 7)>, /* REF50CK0 */
 			 <RZA2_PINMUX(PORT6, 1, 7)>, /* RMMI0_TXDEN */
@@ -98,6 +113,12 @@
 			 <RZA2_PINMUX(PORTL, 1, 5)>; /* IRQ5 */
 	};
 
+	/* Serial Console */
+	scif4_pins: serial4 {
+		pinmux = <RZA2_PINMUX(PORT9, 0, 4)>,	/* TxD4 */
+			 <RZA2_PINMUX(PORT9, 1, 4)>;	/* RxD4 */
+	};
+
 	sdhi0_pins: sdhi0 {
 		pinmux = <RZA2_PINMUX(PORT5, 0, 3)>,	/* SD0_CD */
 			 <RZA2_PINMUX(PORT5, 1, 3)>;	/* SD0_WP */
@@ -109,13 +130,9 @@
 	};
 };
 
-/* High resolution System tick timers */
-&ostm0 {
-	status = "okay";
-};
-
-&ostm1 {
-	status = "okay";
+/* RTC_X1 */
+&rtc_x1_clk {
+	clock-frequency = <32768>;
 };
 
 /* Serial Console */
@@ -126,28 +143,6 @@
 	status = "okay";
 };
 
-&ether0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&eth0_pins>;
-	status = "okay";
-	renesas,no-ether-link;
-	phy-handle = <&phy0>;
-	phy0: ethernet-phy@0 {
-		reg = <0>;
-	};
-};
-
-&ether1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&eth1_pins>;
-	status = "okay";
-	renesas,no-ether-link;
-	phy-handle = <&phy1>;
-	phy1: ethernet-phy@1 {
-		reg = <0>;
-	};
-};
-
 &sdhi0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdhi0_pins>;
@@ -161,3 +156,8 @@
 	bus-width = <4>;
 	status = "okay";
 };
+
+/* USB_X1 */
+&usb_x1_clk {
+	clock-frequency = <48000000>;
+};
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
