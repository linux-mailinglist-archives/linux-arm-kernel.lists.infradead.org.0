Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D35319FF
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 09:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9NlkeLTV5ZVkFfjQI4PxK75gUSZBD3t+lFRtGtszLu0=; b=McVeuIG88hGS6I
	wXW3lsKDN9fxbM0s8hfY2fNKvzUbWh6/T7hRzCEOp9LVe/11qIuwxGQ5b36EVF1eOJJMINDqqUGve
	qXcjOPZaY7BuyIE5dJCIpMIhAslWKjykrn3Utmy/VKrdB7yTiIjziOZ7qbUp8GmTRHJTzYI3DPzYR
	lLXyd5nvfvpW9MTcoQETlUVlxFeZmXS8X6qIo2iAAIQAfjStyE3w+1/kOCpPSFaXj5nJd9gKZSVei
	4cC1Y5mOCIgNKb2+523QTbiA6zc5X2db8lcW7KePsNLLNbVu7jbgt3QRzCEGFTbRGa+nR8v9u449A
	HN2mU1pIu0w4wiZ5kmGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWy7S-0002Ka-TU; Sat, 01 Jun 2019 07:07:58 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWy72-0001wG-5r
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 07:07:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id f8so7889630wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 01 Jun 2019 00:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9lL5CgHcd0LZEFcnEjtQYPA7xSFuJCxrXyXWXhxW8WE=;
 b=JhWaX8UQaa8+V7uFIGcC9hxXJeyEEsg+W5+B5NXAVFuxgzgfgvnpt+Fc4NtYUjUvhq
 Mg2J6I+odS0v3LTRy6lbJr3bTKMD9V+O/JXMT8G8avwjjme03qZCPTv/N8SBwuHVFJ9w
 NEQ/2pkLBPbDrE/63TFN5SvAMEwHUUwxWC2hgTJ1AOKtVscYg1g5YHXyd+HWUGjxZMSB
 6uC5V7SQa5mv7lK/aikG5MA8jZQ4DNxB276V7qCv58sLoR2IRIc2xwEGHuPNCGLTBa7o
 jBtQ4YpcjzX/fs8ZEt2C67YF426DIWVMhOvVL1cy/+JTFobBj1A8r4X79lvRUENgM4k9
 0Tfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9lL5CgHcd0LZEFcnEjtQYPA7xSFuJCxrXyXWXhxW8WE=;
 b=hnHj6Ge+hp6JKfvB+3MmPryjtkiqtSf2npyyxdvkcCIVk+Vyg1p+WGph50UpNRbuJZ
 FrYWoSABW2FXr43c+ZN+//3BtFGFNEv48cidsi/kNp6koQ1yTvzETXTfc6sQEoQ1UdYC
 SxcOW7EZTNxCLuQ9mqGakxAmOOHgsfDk15JwC3bhC9aMlJy4tn8QXW0iy19eOxkQiXtg
 a8ZhS7ucOFiB13SF04h+t1YxLumE+ZQhycd6FpHK10wnO4irVHoZLjdvgv7ZG4yc9UJa
 bHFVb5y+S9T8kXgz+TBfBeYebGstkkKeOZbFwpRJCTi/xu8HOdIZKa7aJClOSLpIAqR6
 k05Q==
X-Gm-Message-State: APjAAAWERlSQOt2t1eDy6guDlmfZLKbZlNVtGcsHrs7PRj13hQ+LWq0+
 KhkREtW61YL96iRwS8VRHUQ=
X-Google-Smtp-Source: APXvYqzWHYyI7f4522H/ds8l8XyFO1Cbr+RerwEo87fol1T4saiJ3SHofTlPq5DOiurs4uLMNYmsFQ==
X-Received: by 2002:adf:e945:: with SMTP id m5mr9269179wrn.90.1559372850859;
 Sat, 01 Jun 2019 00:07:30 -0700 (PDT)
Received: from morpheus.roving-it.com.com
 (2.e.6.5.c.a.a.1.a.8.0.3.1.e.3.c.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:fb11:2681:c3e1:308a:1aac:56e2])
 by smtp.googlemail.com with ESMTPSA id h8sm19008382wmf.5.2019.06.01.00.07.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 01 Jun 2019 00:07:30 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] ARM: dts: imx6sx-udoo-neo: add bluetooth config to uart3
Date: Sat,  1 Jun 2019 08:07:18 +0100
Message-Id: <20190601070718.26971-4-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190601070718.26971-1-pbrobinson@gmail.com>
References: <20190601070718.26971-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_000732_214901_40E49097 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pbrobinson[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peter Robinson <pbrobinson@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This updates the WL1831 bluetooth to use the serial serdev driver
interface.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../arm/boot/dts/imx6sx-udoo-neo-extended.dts |  4 ++++
 arch/arm/boot/dts/imx6sx-udoo-neo-full.dts    |  4 ++++
 arch/arm/boot/dts/imx6sx-udoo-neo.dtsi        | 24 ++++++++-----------
 3 files changed, 18 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
index 04a9f8780b8c..5c50d44eb8d8 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
@@ -20,3 +20,7 @@
 &i2c4 { /* Onboard Motion sensors */
 	status = "okay";
 };
+
+&uart3 { /* Bluetooth */
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
index 3cc6b0231ff6..ba051a755177 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
@@ -35,3 +35,7 @@
 &i2c4 { /* Onboard Motion sensors */
 	status = "okay";
 };
+
+&uart3 { /* Bluetooth */
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi b/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
index 26373e3f3afd..f35c3af43780 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
@@ -70,18 +70,6 @@
 		startup-delay-us = <70000>;
 		enable-active-high;
 	};
-
-	reg_bt: regulator-bt {
-		compatible = "regulator-fixed";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_bt_reg>;
-		enable-active-high;
-		gpio = <&gpio2 17 GPIO_ACTIVE_HIGH>;
-		regulator-name = "bt_reg";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		regulator-always-on;
-	};
 };
 
 &fec1 {
@@ -343,11 +331,19 @@
 	status = "disabled";
 };
 
-&uart3 { /* Bluetooth */
+&uart3 { /* Bluetooth - only on Extended/Full versions */
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart3>;
 	uart-has-rtscts;
-	status = "okay";
+	status = "disabled";
+
+	bluetooth {
+		compatible = "ti,wl1831-st";
+		enable-gpios = <&gpio2 17 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_bt_reg>;
+		max-speed = <921600>;
+	};
 };
 
 /* Arduino serial */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
