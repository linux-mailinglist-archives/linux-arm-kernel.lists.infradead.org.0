Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3D29B99D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 02:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1xUeUsABvLXG1qfeSPhO8C1iSm8quvFWpOf5ZGkvao0=; b=AEYGJKegL/IkLh
	Xd7AhywvhKALxGbYgSXbgwCBGuy/WUnSaUSqMzndwQS8+EhKfCYazfNR5L+PS2M2MPTCQ0ZioiYH/
	jDYZFnCnwOP13bTywO1zN4tsY5EBKWurpzzzISBzpZ8jVxbY3ILnLp407qHWWx/oE3U2J2pK48mr1
	MwTnmFHXSLpFow0MaQM5uA50hk+DmSYrL//TV1TB1ZKxnSVyVWImupMyYNaIME1/3rLzaCWCXiBi4
	ZGOPzFuxbiCgO10uVgvLyNz9EXWiJHr8nVrHfUtscSD8oRctBDrYQxaY9BzulTUotKI+C/+aalhHD
	G1PFYkSUJdYa0imqsArg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1JuX-0000x9-0Y; Sat, 24 Aug 2019 00:28:05 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1JuM-0000wU-Nk
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 00:27:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id m3so6639668pgv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 17:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4aDP2sxBH+DTF0SIc0YSQecsbsINEtcbFoqwgL4lwgo=;
 b=kRMv8aoArR05QyuJAV0pHnmHwOy7NURhHQwyCrpJUp+MqOx9q+yo62ThQgTKpT2Kox
 G9wS1+W5Ov+jNi1jdSVwiaPszp9qAUlL8qA2cErpDOCXPyH06o0hUaARLQ32nGx8e1hq
 eVJ/pmQ8v2ARVAqe1b9rl4ijys+cQ3C5Lmo+SsjSnc7tO6JzzG7J5OzIAjBQYgoF5Ds6
 tjqEBDEg21fsHLQTNFTU/N5EsLiZQEqH0H2rBNhV1+C8JUT2V4+EkrOv49COMhegLyWs
 YaZ+vM+/fk4HR7//YKWTRjQim6RPo5a9WWD7V8hPjuoHPX2tf7jLqhOZ9pnkwbzC1iVi
 29fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4aDP2sxBH+DTF0SIc0YSQecsbsINEtcbFoqwgL4lwgo=;
 b=UDodncPgZd2k3kHVfwipQN0dOyiCInzkvChiQWKf/0mFPCfjB1J438M084hQi1hq4L
 6DqlImUC51B/GcCuktMqOVeX2dBRbfhSv+A2Ml+r0pRhTodIrfNDhGLwWkwPZDlrw+OL
 67yhBBNQCofojdYknwH0jBgKYqnhZ9tqXBV1m03s93E2Yhrsglkw66yhbJuMa5VtH2wz
 yr8m+qCcukD1hQFFOHHOVE7YLkFrpd2pwtjPrk4PLD6RIP/25JLbLcli5I2Ti0SOLucR
 68kexXcULaNhsOcZjALqW7BALbHlSP6k+4ix/WwyXbWS/JoFfvrfSUqxHAIAHsFjwNvP
 9YoQ==
X-Gm-Message-State: APjAAAUiL43W0OxsbA7nme1tYaTjTLDr5uHmBGf7py2GfoT8LMz2Nr3A
 P4grSP2ZtSTn8FknDFvj2IgLAUyWplA=
X-Google-Smtp-Source: APXvYqxHED+qBSwU9pUxCHsWXp/N6MoD+4BzaRj4J7K2JFacCcje8EPZATwu/yV8TrNs4dx8Zr8+mQ==
X-Received: by 2002:a65:448a:: with SMTP id l10mr6098897pgq.327.1566606473580; 
 Fri, 23 Aug 2019 17:27:53 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id b13sm3471442pjz.10.2019.08.23.17.27.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 17:27:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: vf610-zii-scu4-aib: Use generic names for DT nodes
Date: Fri, 23 Aug 2019 17:27:47 -0700
Message-Id: <20190824002747.14610-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_172754_770929_EC58BB9E 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Cory Tusar <cory.tusar@zii.aero>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The devicetree specification recommends using generic node names.

Some ZII dts files already follow such recommendation, but some don't,
so use generic node names for consistency among the ZII dts files.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Cory Tusar <cory.tusar@zii.aero>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-scu4-aib.dts | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
index 45a978defbdc..6edd682dbd29 100644
--- a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
+++ b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
@@ -417,7 +417,7 @@
 	pinctrl-0 = <&pinctrl_dspi1>;
 	status = "okay";
 
-	spi-flash@0 {
+	flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "jedec,spi-nor";
@@ -430,7 +430,7 @@
 		};
 	};
 
-	spi-flash@1 {
+	flash@1 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "jedec,spi-nor";
@@ -519,7 +519,7 @@
 		#gpio-cells = <2>;
 	};
 
-	lm75@48 {
+	temp-sensor@48 {
 		compatible = "national,lm75";
 		reg = <0x48>;
 	};
@@ -534,7 +534,7 @@
 		reg = <0x52>;
 	};
 
-	ds1682@6b {
+	elapsed-time-recorder@6b {
 		compatible = "dallas,ds1682";
 		reg = <0x6b>;
 	};
@@ -551,7 +551,7 @@
 		reg = <0x38>;
 	};
 
-	adt7411@4a {
+	adc@4a {
 		compatible = "adi,adt7411";
 		reg = <0x4a>;
 	};
@@ -563,7 +563,7 @@
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
 
-	gpio9: sx1503q@20 {
+	gpio9: io-expander@20 {
 		compatible = "semtech,sx1503q";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_sx1503_20>;
@@ -574,12 +574,12 @@
 		interrupts = <31 IRQ_TYPE_EDGE_FALLING>;
 	};
 
-	lm75@4e {
+	temp-sensor@4e {
 		compatible = "national,lm75";
 		reg = <0x4e>;
 	};
 
-	lm75@4f {
+	temp-sensor@4f {
 		compatible = "national,lm75";
 		reg = <0x4f>;
 	};
@@ -591,17 +591,17 @@
 		reg = <0x23>;
 	};
 
-	adt7411@4a {
+	adc@4a {
 		compatible = "adi,adt7411";
 		reg = <0x4a>;
 	};
 
-	at24c08@54 {
+	eeprom@54 {
 		compatible = "atmel,24c08";
 		reg = <0x54>;
 	};
 
-	tca9548@70 {
+	i2c-mux@70 {
 		compatible = "nxp,pca9548";
 		pinctrl-names = "default";
 		#address-cells = <1>;
@@ -639,7 +639,7 @@
 		};
 	};
 
-	tca9548@71 {
+	i2c-mux@71 {
 		compatible = "nxp,pca9548";
 		pinctrl-names = "default";
 		reg = <0x71>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
