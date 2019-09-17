Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B182B51A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 17:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CEg2PXsYQ0GzyG15fsluuC+HVqJmZJ2OkQoNmgUa6to=; b=tjOxOtgaDEd6GE
	yX26N4QyEdxt/zo2Qj4SRzlccUqMc/VtjpZCEhA29fFATsFacgf22zx7+tDeO38TvTIfsFhdKkFlF
	QKQv+sJ+8lqx84y0N23v4d/YoH8j5TAia7QWTehasUDaHHto0w/ZRuMK4JM5s4mrI4hGW7RRr5rHu
	x/fNN2ehxOab6tZtBCCNhEz7KkqEWKN0pLoeDuiyFYKF1DgOnu84+CYx/9/n47n/qqYPE6MJ3BQNd
	WS5MkHhvVTafHIWXrt0F6U250UigldXeCVQaR/GV17bVAun8EonH84usGj0otHsIQ87dMW2ofvH6M
	2wEbud/e2od3yufDsp6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAFVv-0001iB-1r; Tue, 17 Sep 2019 15:35:35 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFVd-0001bb-MB
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 15:35:19 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 46XnHR2BlSz1rKJ7;
 Tue, 17 Sep 2019 17:35:15 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 46XnHR1gfLz1qqkJ;
 Tue, 17 Sep 2019 17:35:15 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id DtwsTFX-ru1U; Tue, 17 Sep 2019 17:35:14 +0200 (CEST)
X-Auth-Info: xDkdGSTG6FAOEyigwfsk+woklxO4y0kRhB/toIe5PrY=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 17 Sep 2019 17:35:14 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2] ARM: dts: imx6q-dhcom: Enable CAN in board DTS
Date: Tue, 17 Sep 2019 17:35:12 +0200
Message-Id: <20190917153512.6102-1-marex@denx.de>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_083517_892924_92E1B0BD 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Ludwig Zenz <lzenz@dh-electronics.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move the CAN enablement from SoM DTSi to board DTS, as each board might need
different CAN configuration. Moreover, disable CAN2 on the PDK2 as it is not
available on any connector. This also fixes on-SoM SD slot operation, as it
shares pins with the CAN2.

Signed-off-by: Marek Vasut <marex@denx.de>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Ludwig Zenz <lzenz@dh-electronics.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
To: linux-arm-kernel@lists.infradead.org
---
V2: Add board name to subject
---
 arch/arm/boot/dts/imx6q-dhcom-pdk2.dts | 8 ++++++++
 arch/arm/boot/dts/imx6q-dhcom-som.dtsi | 2 --
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6q-dhcom-pdk2.dts b/arch/arm/boot/dts/imx6q-dhcom-pdk2.dts
index 9c61e3be2d9a..5219553df1e7 100644
--- a/arch/arm/boot/dts/imx6q-dhcom-pdk2.dts
+++ b/arch/arm/boot/dts/imx6q-dhcom-pdk2.dts
@@ -43,6 +43,14 @@
 	status = "okay";
 };
 
+&can1 {
+	status = "okay";
+};
+
+&can2 {
+	status = "disabled";
+};
+
 &hdmi {
 	ddc-i2c-bus = <&i2c2>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/imx6q-dhcom-som.dtsi b/arch/arm/boot/dts/imx6q-dhcom-som.dtsi
index 387801dde02e..845cfad99bf9 100644
--- a/arch/arm/boot/dts/imx6q-dhcom-som.dtsi
+++ b/arch/arm/boot/dts/imx6q-dhcom-som.dtsi
@@ -51,13 +51,11 @@
 &can1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_flexcan1>;
-	status = "okay";
 };
 
 &can2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_flexcan2>;
-	status = "okay";
 };
 
 &ecspi1 {
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
