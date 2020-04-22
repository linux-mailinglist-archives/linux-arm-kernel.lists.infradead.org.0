Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F111B40AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=711EKCyaGrxf71ynyd4PNPb5ypcWPIZYQT/PQOTNeb4=; b=eqsUpriYp4G/S5
	sR2aRoJVnW2TEYy3wLgD/VqB2IkYgFYJhiusgl91ciPEs5y+4N+kbuxPhmWFsV0VsrZIeYOL8NepX
	d5dkyVOmyg3y02yTJPvSp8pT6S75hj5XtaQfFQ5pMGSo5Vi/xKH+UwAABZmSdUuLCylrpvtpRboVO
	52vSUpHKqoM8Da/Mtx43TM1foPBz7kY1DB3ubyEDt8IMpv6gBDeUMwwBQ9X9zukYxS2EgFZiGKpmg
	bQkhNgoUdxZ8JArdKdvARazmBey2MbHwOj4JbT1rKabd2u4UqlAKdVUAV1dhoi9ybZEoKqp/UxSjk
	nObqqlAKS7czXKeD6pMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCue-0001Kc-AN; Wed, 22 Apr 2020 10:47:28 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCtl-0000hK-0e
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 10:46:36 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 496cYb4PJrz1qs3D;
 Wed, 22 Apr 2020 12:46:27 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 496cYb3cgqz1qql5;
 Wed, 22 Apr 2020 12:46:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id CbspIRQPiG2s; Wed, 22 Apr 2020 12:46:26 +0200 (CEST)
X-Auth-Info: iEWIM2ZkZgtORfdWZsXsZ1KBnA0Qt+CW2w/JTzzpL4o=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 22 Apr 2020 12:46:26 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 01/20] ARM: dts: stm32: Repair PMIC configuration on AV96
Date: Wed, 22 Apr 2020 12:45:54 +0200
Message-Id: <20200422104613.96944-2-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200422104613.96944-1-marex@denx.de>
References: <20200422104613.96944-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_034633_372022_820C0CE3 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The vdd PMIC buck regulator was misconfigured, which caused instability
of the board and malfunction of high-speed interfaces, like the RGMII.
Configure the PMIC correctly to repair these problems. Also add missing
Enpirion regulator for the IO voltage into the DT.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V2: Model the Enpirion EP53A8LQI on the DHCOR SoM as a fixed regulator
V3: Move this before the SDMMC2 patch, as there is now a dependency
V4: Rebase on stm32-next
V5: Reorder the patch before the SDMMC and ethernet patches
    Set buck1 minimum voltage to 1V2
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index aba38950f2e9..380ce148520f 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -77,6 +77,17 @@ led6 {
 			default-state = "off";
 		};
 	};
+
+	/* Enpirion EP3A8LQI U2 on the DHCOR */
+	vdd_io: regulator-buck-io {
+		compatible = "regulator-fixed";
+		regulator-name = "buck-io";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vdd>;
+	};
 };
 
 &ethernet0 {
@@ -166,8 +177,8 @@ vdd_ddr: buck2 {
 
 			vdd: buck3 {
 				regulator-name = "vdd";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <2900000>;
+				regulator-max-microvolt = <2900000>;
 				regulator-always-on;
 				regulator-initial-mode = <0>;
 				regulator-over-current-protection;
@@ -245,6 +256,7 @@ vbus_otg: pwr_sw1 {
 				regulator-name = "vbus_otg";
 				interrupts = <IT_OCP_OTG 0>;
 				interrupt-parent = <&pmic>;
+				regulator-active-discharge = <1>;
 			};
 
 			vbus_sw: pwr_sw2 {
@@ -275,7 +287,7 @@ &iwdg2 {
 };
 
 &pwr_regulators {
-	vdd-supply = <&vdd>;
+	vdd-supply = <&vdd_io>;
 	vdd_3v3_usbfs-supply = <&vdd_usb>;
 };
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
