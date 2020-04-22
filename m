Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7E41B40BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apRAE3IVTG2YH5VTNLZqq0CW/4iwfRZk/c75DX6GQTY=; b=YFlwyIkrT2G71J
	2LM4QX/JJCQ9PiqRBVFzTC9NM+4ySExIF/ifSot65ZOFex+axAVBnGnTiYsR15zlbbRKQglSlaVIY
	+27OeT+oWNvr/1a4Pon2SpGZA0MBEYjcWVX3zp2dvsVjERPA9S1hAEOtuoQlwTN1dAkG4Eheeij4o
	sQRHaobd7y+4GUww7ueDTy+JVAln9fC1owI0VrRhIQ6OuTtTmECciM3P3qidTpoWx+otozia6hQkU
	HqeE1dPr3C/i7hiT0uLTXmXTu71AuY80mmNhwnU1gaMqoNRBQxFicoYJoCV6HpGlGxmekLcc+Q9Ro
	w9mnNlvThEQ5zeaP680g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCv1-0001bh-IT; Wed, 22 Apr 2020 10:47:51 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCtk-0000hv-VQ
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 10:46:36 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 496cYd0pXDz1qs3k;
 Wed, 22 Apr 2020 12:46:29 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 496cYc718Pz1qql5;
 Wed, 22 Apr 2020 12:46:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id QBJ02uAf5Prs; Wed, 22 Apr 2020 12:46:27 +0200 (CEST)
X-Auth-Info: J00tCuseQG09sie0l30l627GPjjICIcArxdKZuXGBUs=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 22 Apr 2020 12:46:27 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 02/20] ARM: dts: stm32: Repair PMIC interrupt on AV96
Date: Wed, 22 Apr 2020 12:45:55 +0200
Message-Id: <20200422104613.96944-3-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200422104613.96944-1-marex@denx.de>
References: <20200422104613.96944-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_034633_317595_2FA05BCC 
X-CRM114-Status: GOOD (  12.25  )
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
V5: Reorder the patch before the SDMMC and ethernet patches
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 380ce148520f..010b7cdf8926 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -141,7 +141,7 @@ &i2c4 {
 	pmic: stpmic@33 {
 		compatible = "st,stpmic1";
 		reg = <0x33>;
-		interrupts-extended = <&exti 55 IRQ_TYPE_EDGE_FALLING>;
+		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
 		status = "okay";
@@ -198,7 +198,6 @@ vdda: ldo1 {
 				regulator-min-microvolt = <2900000>;
 				regulator-max-microvolt = <2900000>;
 				interrupts = <IT_CURLIM_LDO1 0>;
-				interrupt-parent = <&pmic>;
 			};
 
 			v2v8: ldo2 {
@@ -206,7 +205,6 @@ v2v8: ldo2 {
 				regulator-min-microvolt = <2800000>;
 				regulator-max-microvolt = <2800000>;
 				interrupts = <IT_CURLIM_LDO2 0>;
-				interrupt-parent = <&pmic>;
 			};
 
 			vtt_ddr: ldo3 {
@@ -220,7 +218,6 @@ vtt_ddr: ldo3 {
 			vdd_usb: ldo4 {
 				regulator-name = "vdd_usb";
 				interrupts = <IT_CURLIM_LDO4 0>;
-				interrupt-parent = <&pmic>;
 			};
 
 			vdd_sd: ldo5 {
@@ -228,7 +225,6 @@ vdd_sd: ldo5 {
 				regulator-min-microvolt = <2900000>;
 				regulator-max-microvolt = <2900000>;
 				interrupts = <IT_CURLIM_LDO5 0>;
-				interrupt-parent = <&pmic>;
 				regulator-boot-on;
 			};
 
@@ -237,7 +233,6 @@ v1v8: ldo6 {
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 				interrupts = <IT_CURLIM_LDO6 0>;
-				interrupt-parent = <&pmic>;
 				regulator-enable-ramp-delay = <300000>;
 			};
 
@@ -249,20 +244,17 @@ vref_ddr: vref_ddr {
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
