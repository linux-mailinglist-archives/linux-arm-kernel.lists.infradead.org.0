Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C09525E8C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 09:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K/yX0kF+jn/i7IMLF+tesw4pyQbeSk62/R7biHgPEXI=; b=Hu8bQD7qbCVuz2
	HDLINIEewW735qMXXEb+4vUrruwnXlnhzCcfUKP5/oZGUnPNZ9JrwA0mRUmd5bcolR2evMPA2mkfG
	x+xNr3RxCTxE0YweiHcXzPjMobx/Sn7mafVlyMNGsZntjYOcxhjLyopf9M2P6bJDGrsFROkQTYwUC
	FyuYUzpBKpgCW8Atb5Dnufvl7IroGjZa3oxZLJIeecIpmwX5B7Ouy6R2IliixULJ0NYkLJxjM0oTK
	yQhebtCrIMwOoSvAH1W/nurmiqVNyXy5DER3WGpk6eg/AcbGSoZAg2mwSHr+l45gfD3Efkm3d7VXZ
	M8Xq9skWwhziftEe0Uow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTLQr-0002s6-GQ; Wed, 22 May 2019 07:13:01 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLQk-0002rA-Mt
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 07:12:56 +0000
Received: by mail-pf1-x42f.google.com with SMTP id q17so823969pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 00:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y+ikAHe5H6cJDxQps6RFExVZnEaf5yDl3L1XyAXd3r8=;
 b=DytbhWq6ySi9MXbobO4HIqFBhETJGWOMaCVPI4FKxn3XahvFeqhGvSWvU2RmWBl5Jj
 n0d+uXAP9T2U9FY09AKJ7zamTwGoUUqZDqFoNyyfBItjEqRlbAd3H+oDj1WK5QIfHOjY
 y2AjoN581iXYsLVwkusI6KmL3cm6oLyz0inTHPtfAX4qCwrZYaAQw0Nyjhti6TdCE9PR
 5MbHUFx9uvDz3mdoOTEMaKn9BPfwpRvJzT668QMimRMg2HOwweNMVA7T0XgxK9qfEXf+
 nqYga7skasjjPKIpenrl9wkwKK75E7YqaYlmb4Tdr5jCjwPVIBL/6uMwDWeaORMwgdGF
 Wuxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y+ikAHe5H6cJDxQps6RFExVZnEaf5yDl3L1XyAXd3r8=;
 b=IxIaIhzxRcfcnMdSYMfjYC9v+r1W9B8Cxt7KPvTAhBFz64Tnxro0O4R+UEeSpsQdGz
 Z6zSEAO7v017rCIEyW3+dZRDW5DCMjLFpF2fTf1L/r8guav8aZMQhtI8knK2Ho69s4iA
 WClLoaRAOBLxmBSCiWhsA80vVby5EkA6CHBc/WWUbtpuVAeGbfw8ANnLq/wno36ehcgI
 zRQZKmUzfYVFExJClp+oavsV5XXhWi5Flny9Yq46JtRVi488wtgQLpi+tUF2J29m/sYd
 YQleMkvd6GhtJjsgDT+fKQ2eYlCa6jQBonD38/x6GzUzjo79ANTVbBYB9Be30iok1B+S
 Dynw==
X-Gm-Message-State: APjAAAX3siBH8jkDJ2Hz0p6enG4HVn3sdVz2PL2sCDbUd4ts8OOhNGkm
 ouYlq+tGvPvAAv8VTvrLEYjGWRNRNJ8=
X-Google-Smtp-Source: APXvYqwFQRFV81l6ZNeI96JS1jb5yClap1R4nZqkP37ckSpuR9djAaEF6jzS4FbQdZ2vuTfHVCcfMw==
X-Received: by 2002:a62:3381:: with SMTP id z123mr95435958pfz.42.1558509172976; 
 Wed, 22 May 2019 00:12:52 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id n127sm22750178pga.57.2019.05.22.00.12.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 00:12:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] ARM: dts: imx6: rdu2: Add node for UCS1002 USB charger
 chip
Date: Wed, 22 May 2019 00:12:25 -0700
Message-Id: <20190522071227.31488-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_001254_859505_873BC49F 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add node for UCS1002 USB charger chip connected to front panel USB and
replace "regulator-fixed" previously used to control VBUS.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 35 ++++++++++++-------------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index 93be00a60c88..977d923e35df 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -60,18 +60,6 @@
 		regulator-always-on;
 	};
 
-	reg_5p0v_user_usb: regulator-5p0v-user-usb {
-		compatible = "regulator-fixed";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_reg_user_usb>;
-		vin-supply = <&reg_5p0v_main>;
-		regulator-name = "5V_USER_USB";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		gpio = <&gpio3 22 GPIO_ACTIVE_LOW>;
-		startup-delay-us = <1000>;
-	};
-
 	reg_3p3v_pmic: regulator-3p3v-pmic {
 		compatible = "regulator-fixed";
 		vin-supply = <&reg_12p0v>;
@@ -590,6 +578,16 @@
 		status = "disabled";
 	};
 
+	reg_5p0v_user_usb: charger@32 {
+		compatible = "microchip,ucs1002";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ucs1002_pins>;
+		reg = <0x32>;
+		interrupts-extended = <&gpio5 2 IRQ_TYPE_EDGE_BOTH>,
+				      <&gpio3 21 IRQ_TYPE_EDGE_BOTH>;
+		interrupt-names = "a_det", "alert";
+	};
+
 	hpa1: amp@60 {
 		compatible = "ti,tpa6130a2";
 		pinctrl-names = "default";
@@ -982,12 +980,6 @@
 		>;
 	};
 
-	pinctrl_reg_user_usb: usbotggrp {
-		fsl,pins = <
-			MX6QDL_PAD_EIM_D22__GPIO3_IO22		0x40000038
-		>;
-	};
-
 	pinctrl_rmii_phy_irq: phygrp {
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D30__GPIO3_IO30		0x40010000
@@ -1047,6 +1039,13 @@
 		>;
 	};
 
+	pinctrl_ucs1002_pins: ucs1002grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_A25__GPIO5_IO02  	0x1b0b0
+			MX6QDL_PAD_EIM_D21__GPIO3_IO21  	0x1b0b0
+		>;
+	};
+
 	pinctrl_usdhc2: usdhc2grp {
 		fsl,pins = <
 			MX6QDL_PAD_SD2_CMD__SD2_CMD		0x10059
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
