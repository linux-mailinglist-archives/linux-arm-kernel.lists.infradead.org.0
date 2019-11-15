Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DAAFD805
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 09:34:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOYJA99IEI+1XqqLY4dw3A48eEh+faagKdexyxP6Oe0=; b=pHUzBXKQQvl40T
	xTfr1lXwaP99AhMkAYzqHZkrI39Bdm1D5mhC12DQWxwtCg92Vtmf0D7w1zK/ji7esom6OaO1WFZ9H
	kHZU23SrFbRQigLviVfKAAAcV1M8iKNpnDw0GX6NKdnL+0GRBRCFw48mrTsJUuXwYV7uIBd3n/m+O
	diZOW5H4Waayu+3QIGpXaB4GEbDSazongSv1LFiN1sMpwDfCKUNtP+t11Ylw8T1cBgufXXmwWg4oz
	ehIXMgg2uaaHH/NoTbt0FIdUp5+dl5H3uOxetWf6VKowj7fnpUOXOWGJefRVlTlr6VBXGs6DS0ZVw
	SBXle72mLrgM9cOhA9ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVX3z-0003pI-UM; Fri, 15 Nov 2019 08:34:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVX3q-0003om-11
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 08:34:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>)
 id 1iVX3l-0003jD-NV; Fri, 15 Nov 2019 09:34:29 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>)
 id 1iVX3l-0007c3-1j; Fri, 15 Nov 2019 09:34:29 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: shawnguo@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 kernel@pengutronix.de, festevam@gmail.com
Subject: [PATCH v2] ARM: dts: imx25: fix usbhost1 node
Date: Fri, 15 Nov 2019 09:34:15 +0100
Message-Id: <20191115083415.28976-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191111114655.9583-1-m.grzeschik@pengutronix.de>
References: <20191111114655.9583-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: mgr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_003434_066194_3EC21B22 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The usb port represented by &usbhost1 uses an USB phy internal to the
SoC. We add the phy_type to the base dtsi so the board dts only have to
overwrite it if they use a different configuration. While at it we also
pin the usbhost port to host mode and limit the speed of the phy to
full-speed only, which it is only capable of.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
v1 -> v2: added the maximum speed limitation of the internal phy

 arch/arm/boot/dts/imx25-eukrea-mbimxsd25-baseboard.dts | 2 --
 arch/arm/boot/dts/imx25-pdk.dts                        | 2 --
 arch/arm/boot/dts/imx25.dtsi                           | 3 +++
 3 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx25-eukrea-mbimxsd25-baseboard.dts b/arch/arm/boot/dts/imx25-eukrea-mbimxsd25-baseboard.dts
index 0fde90df2b546..3f38c2e60a745 100644
--- a/arch/arm/boot/dts/imx25-eukrea-mbimxsd25-baseboard.dts
+++ b/arch/arm/boot/dts/imx25-eukrea-mbimxsd25-baseboard.dts
@@ -165,8 +165,6 @@
 };
 
 &usbhost1 {
-	phy_type = "serial";
-	dr_mode = "host";
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/imx25-pdk.dts b/arch/arm/boot/dts/imx25-pdk.dts
index 05cccd12624cb..fb66884d8a2fa 100644
--- a/arch/arm/boot/dts/imx25-pdk.dts
+++ b/arch/arm/boot/dts/imx25-pdk.dts
@@ -304,8 +304,6 @@
 };
 
 &usbhost1 {
-	phy_type = "serial";
-	dr_mode = "host";
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/imx25.dtsi b/arch/arm/boot/dts/imx25.dtsi
index 9a097ef014af5..40b95a290bd6b 100644
--- a/arch/arm/boot/dts/imx25.dtsi
+++ b/arch/arm/boot/dts/imx25.dtsi
@@ -570,6 +570,9 @@
 				clock-names = "ipg", "ahb", "per";
 				fsl,usbmisc = <&usbmisc 1>;
 				fsl,usbphy = <&usbphy1>;
+				maximum-speed = "full-speed";
+				phy_type = "serial";
+				dr_mode = "host";
 				status = "disabled";
 			};
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
