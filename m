Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BD619ACC9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 15:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YdZA8DCVdIPYZyspO5Lcv2MoC+XbTb7tpjGU8alxzY=; b=NsIA+HDszaBMfe
	OK4ce9xzxRN7y/rmh9QqV6MhOvbxzPKfBxe1nTuhmiOrR+ALVrgvrs63r4+XXYG3PLg7PEZqRIytj
	IDQzTVP1HQwT94b7M5BwuloRHuF+lD/dYn6BqxFfUmZTvZR8kOVzrJ76D4yvVOAiKfKkEaWBFNN2o
	tO4n7Yc+sSUWDnP3C7VeOJV2GDYvyab31pWNW2+cg2/lkx8DSGr6h/hLexEb6CwHjx3PMn4imek33
	m+4J9mByfyk7TLScXT5bfpBIK28mpfztJXb2W6+WUYDOUoGxQai8G/gyyCTU14oWdGCMAWrLDSBUO
	UYiostsmJ1SS/rQVY4Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJdMs-0006oe-SO; Wed, 01 Apr 2020 13:25:18 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJdKo-0004sL-2O
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 13:23:11 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48sn243BLCz1qs0Q;
 Wed,  1 Apr 2020 15:23:08 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48sn242ycpz1r0cS;
 Wed,  1 Apr 2020 15:23:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id hDgFomBxf0VC; Wed,  1 Apr 2020 15:23:07 +0200 (CEST)
X-Auth-Info: /MXVYUNbE28EmCCMDYkcYUcf/O8cNK10hBtW4lYGNHA=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  1 Apr 2020 15:23:07 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 08/22] ARM: dts: stm32: Repair PMIC interrupt on AV96
Date: Wed,  1 Apr 2020 15:22:23 +0200
Message-Id: <20200401132237.60880-9-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401132237.60880-1-marex@denx.de>
References: <20200401132237.60880-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_062310_420321_294ABED9 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

The PMIC interrupt line is connected to PA0 on the DHCOR SoM, fix it.
This makes the POWER button on the AV96 working, and also all the other
PMIC interrupts. Furthermore, scrub the bogus interrupt-parent props.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V2: No change
V3: Move this before the SDMMC2 patch
V4: Rebase on stm32-next
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 260410461dc8..c824ff4e6127 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -170,7 +170,7 @@ &i2c4 {
 	pmic: stpmic@33 {
 		compatible = "st,stpmic1";
 		reg = <0x33>;
-		interrupts-extended = <&exti 55 IRQ_TYPE_EDGE_FALLING>;
+		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
 		status = "okay";
@@ -227,7 +227,6 @@ vdda: ldo1 {
 				regulator-min-microvolt = <2900000>;
 				regulator-max-microvolt = <2900000>;
 				interrupts = <IT_CURLIM_LDO1 0>;
-				interrupt-parent = <&pmic>;
 			};
 
 			v2v8: ldo2 {
@@ -235,7 +234,6 @@ v2v8: ldo2 {
 				regulator-min-microvolt = <2800000>;
 				regulator-max-microvolt = <2800000>;
 				interrupts = <IT_CURLIM_LDO2 0>;
-				interrupt-parent = <&pmic>;
 			};
 
 			vtt_ddr: ldo3 {
@@ -249,7 +247,6 @@ vtt_ddr: ldo3 {
 			vdd_usb: ldo4 {
 				regulator-name = "vdd_usb";
 				interrupts = <IT_CURLIM_LDO4 0>;
-				interrupt-parent = <&pmic>;
 			};
 
 			vdd_sd: ldo5 {
@@ -257,7 +254,6 @@ vdd_sd: ldo5 {
 				regulator-min-microvolt = <2900000>;
 				regulator-max-microvolt = <2900000>;
 				interrupts = <IT_CURLIM_LDO5 0>;
-				interrupt-parent = <&pmic>;
 				regulator-boot-on;
 			};
 
@@ -266,7 +262,6 @@ v1v8: ldo6 {
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 				interrupts = <IT_CURLIM_LDO6 0>;
-				interrupt-parent = <&pmic>;
 				regulator-enable-ramp-delay = <300000>;
 			};
 
@@ -278,20 +273,17 @@ vref_ddr: vref_ddr {
 			bst_out: boost {
 				regulator-name = "bst_out";
 				interrupts = <IT_OCP_BOOST 0>;
-				interrupt-parent = <&pmic>;
 			};
 
 			vbus_otg: pwr_sw1 {
 				regulator-name = "vbus_otg";
 				interrupts = <IT_OCP_OTG 0>;
-				interrupt-parent = <&pmic>;
 				regulator-active-discharge = <1>;
 			};
 
 			vbus_sw: pwr_sw2 {
 				regulator-name = "vbus_sw";
 				interrupts = <IT_OCP_SWOUT 0>;
-				interrupt-parent = <&pmic>;
 				regulator-active-discharge = <1>;
 			};
 		};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
