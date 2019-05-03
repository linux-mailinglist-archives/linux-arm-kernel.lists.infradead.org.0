Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 293DC1317E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:53:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UnOxMshbS6tEFpDx6PpNqfGZTz8KHmo0maKvv8ciN1s=; b=PM0ebfz9oVvAtx
	vAKbIatTeC1pkbLEKoYu39MbXhQbgTYCYznq2PKM8d55HtTjmqxykfafPQi0pNgFO7+WbBkPa77Bq
	/Scbis3FuRa2ahbYQBNzunui5ddgEGtm6nl0vB7wwh0YqrylOF7kkwArejVN5QHT1FPsdwTV6/bJu
	f9BAeoAdaotvezp02xdhhMg7RJvXn/fv3z4ixGwtwsB6vwVzeSzlgTW8ga3W/rlf/d/ONFDBm9HGg
	CmDd6Uf132NbiEYJf7PDallE4ZMD+PP0rAFtj7jf5lPFQOHkEgqOizwOBUclEmqAyXh5NVFL+KdXp
	fd0/f+oCkhfJ4C+6dW+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaUf-0002bG-Sx; Fri, 03 May 2019 15:53:01 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaUX-0002Zy-Fu
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:52:56 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 44wc8x4Jtjz1rXvw;
 Fri,  3 May 2019 17:52:49 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 44wc8x3tGGz1qtf0;
 Fri,  3 May 2019 17:52:49 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id SaZPej5K4w1h; Fri,  3 May 2019 17:52:48 +0200 (CEST)
X-Auth-Info: IhF6HWpEMmiS+nR7RyS+V1qDLpD84szhCJvszJsZYrA=
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz
 [86.49.110.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri,  3 May 2019 17:52:48 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/8] ARM: dts: imx53: Update USB configuration on M53Menlo
Date: Fri,  3 May 2019 17:52:29 +0200
Message-Id: <20190503155235.6414-2-marex@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503155235.6414-1-marex@denx.de>
References: <20190503155235.6414-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_085253_755440_4A6F998D 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
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
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Turn USBH1 into Host and update the GPIO polarity of the
regulator to match new hardware.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/imx53-m53menlo.dts | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx53-m53menlo.dts b/arch/arm/boot/dts/imx53-m53menlo.dts
index 62bc6a95a477..46f990759660 100644
--- a/arch/arm/boot/dts/imx53-m53menlo.dts
+++ b/arch/arm/boot/dts/imx53-m53menlo.dts
@@ -50,7 +50,7 @@
 		regulator-name = "vbus";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
-		gpio = <&gpio1 2 GPIO_ACTIVE_LOW>;
+		gpio = <&gpio1 2 GPIO_ACTIVE_HIGH>;
 	};
 };
 
@@ -268,8 +268,10 @@
 
 		pinctrl_usb: usbgrp {
 			fsl,pins = <
-				MX53_PAD_GPIO_2__GPIO1_2		0x1d5
-				MX53_PAD_GPIO_3__USBOH3_USBH1_OC	0x1d5
+				MX53_PAD_GPIO_2__GPIO1_2		0x1c4
+				MX53_PAD_GPIO_3__USBOH3_USBH1_OC	0x1c4
+				MX53_PAD_GPIO_4__GPIO1_4		0x1c4
+				MX53_PAD_GPIO_18__GPIO7_13		0x1c4
 			>;
 		};
 	};
@@ -322,7 +324,7 @@
 	pinctrl-0 = <&pinctrl_usb>;
 	vbus-supply = <&reg_usbh1_vbus>;
 	phy_type = "utmi";
-	dr_mode = "peripheral";
+	dr_mode = "host";
 	status = "okay";
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
