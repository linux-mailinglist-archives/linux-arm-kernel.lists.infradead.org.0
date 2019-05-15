Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F791FC98
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 00:46:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Z+RgPicIHDRYZ/xGBtWq/UARXl/Ip7nwqZE4cjbd80=; b=N2MwCv3GEVfYTL
	szff+CT34+/IW7Nm2ihbfqG+mDglgk8JtITuODnJUGjrbTDjWfgdeKBgGV6NmUbwMOqFgg6z3k0b+
	FMRtoujJ9v3UE5LHh4zsy9sIYYcDDyDYfuGBJBX8ARRBifFy0d2Z0/Yh/DRcvVnlFPgYvr+Yi+dpl
	GeHrD55KdcNLL7IGA5xKFpIT6Tda0po/IhzM7dTvQDgq19XaElFYBBd/T07lwfc/pFHxNBwfO3bT+
	QwE+BRiNpeYkq846/VBzlb6l8focgI/Coj1gtnzL0megvNLGOdnsjbYXQQg5vTqwuYiRDVpBLwHN2
	X8L6I9PQqElX4TJb8Lpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR2fL-0005gp-1m; Wed, 15 May 2019 22:46:27 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR2fB-0005f8-Ud
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 22:46:19 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 4548mQ4TvMz1rWxB;
 Thu, 16 May 2019 00:46:14 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 4548mQ3qmQz1qqkW;
 Thu, 16 May 2019 00:46:14 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id qfaIjY643yWb; Thu, 16 May 2019 00:46:13 +0200 (CEST)
X-Auth-Info: 7qZ4RSRWKHTk1Va93Edn4Xd5l5lyUmG6LJNriUpJs84=
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz
 [86.49.110.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu, 16 May 2019 00:46:13 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 2/8] ARM: dts: imx53: Update USB configuration on M53Menlo
Date: Thu, 16 May 2019 00:45:55 +0200
Message-Id: <20190515224601.4527-2-marex@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515224601.4527-1-marex@denx.de>
References: <20190515224601.4527-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_154618_157061_E8FDEAB0 
X-CRM114-Status: GOOD (  11.46  )
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
V2: Add enable-active-high property to the regulator node
---
 arch/arm/boot/dts/imx53-m53menlo.dts | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx53-m53menlo.dts b/arch/arm/boot/dts/imx53-m53menlo.dts
index 62bc6a95a477..7dddd7028bec 100644
--- a/arch/arm/boot/dts/imx53-m53menlo.dts
+++ b/arch/arm/boot/dts/imx53-m53menlo.dts
@@ -50,7 +50,8 @@
 		regulator-name = "vbus";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
-		gpio = <&gpio1 2 GPIO_ACTIVE_LOW>;
+		gpio = <&gpio1 2 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
 	};
 };
 
@@ -268,8 +269,10 @@
 
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
@@ -322,7 +325,7 @@
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
