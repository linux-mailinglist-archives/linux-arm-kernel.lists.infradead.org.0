Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4C01967FC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 18:15:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnJiBVeRzOP6VFATb2uLnwBsFldyPzPXUFlW1E7cY2A=; b=iavLS0r5fL/9Xp
	rsjXUP6A8/DASkjGUFxcRuXBavTrFEDSSPp8F3PKsta6nW1L+fXWuoxbaHU7KJunA3198M5VVBYzS
	o64cWptHvZIKclPzj0aYhsj7EGtv5AOgkZHLuM2aDYo1fDt+P5w1Dx9bQsLlveMITX00ZHdDGiiD3
	ZmtolYdH+WJAxLeO1dVC4+S9uX9ZYaFdM38l78hDHsrzSknBquQQIuiciPxUENK0SDMWqPfSCIVQq
	6t2chZcMs6E/dKnPTzam9T9/fZ+PZM9lWx0b25VlluGD/st2SBFZ3xv3Q3YjmD5ih973STdkCUL5s
	McHtjLUBuWw8B7u7XdOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIF3G-0000s5-FA; Sat, 28 Mar 2020 17:15:18 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIF0D-00073J-2u
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 17:12:10 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48qQJ72jLkz1rqRq;
 Sat, 28 Mar 2020 18:12:07 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48qQJ72Tl2z1qqlF;
 Sat, 28 Mar 2020 18:12:07 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id vt8O6zu64S36; Sat, 28 Mar 2020 18:12:06 +0100 (CET)
X-Auth-Info: 1IFhfU3NFzOVP5R5YEQoHmgQX5ZP2a3YnHp4OHdh2AQ=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sat, 28 Mar 2020 18:12:06 +0100 (CET)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 10/22] ARM: dts: stm32: Repair PMIC interrupt on AV96
Date: Sat, 28 Mar 2020 18:11:32 +0100
Message-Id: <20200328171144.51888-11-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200328171144.51888-1-marex@denx.de>
References: <20200328171144.51888-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_101209_429536_4ABE963E 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 01ffb4c60caa..01f57ba64478 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -160,7 +160,7 @@ &i2c4 {
 	pmic: stpmic@33 {
 		compatible = "st,stpmic1";
 		reg = <0x33>;
-		interrupts-extended = <&exti 55 IRQ_TYPE_EDGE_FALLING>;
+		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
 		status = "okay";
@@ -217,7 +217,6 @@ vdda: ldo1 {
 				regulator-min-microvolt = <2900000>;
 				regulator-max-microvolt = <2900000>;
 				interrupts = <IT_CURLIM_LDO1 0>;
-				interrupt-parent = <&pmic>;
 			};
 
 			v2v8: ldo2 {
@@ -225,7 +224,6 @@ v2v8: ldo2 {
 				regulator-min-microvolt = <2800000>;
 				regulator-max-microvolt = <2800000>;
 				interrupts = <IT_CURLIM_LDO2 0>;
-				interrupt-parent = <&pmic>;
 			};
 
 			vtt_ddr: ldo3 {
@@ -239,7 +237,6 @@ vtt_ddr: ldo3 {
 			vdd_usb: ldo4 {
 				regulator-name = "vdd_usb";
 				interrupts = <IT_CURLIM_LDO4 0>;
-				interrupt-parent = <&pmic>;
 			};
 
 			vdd_sd: ldo5 {
@@ -247,7 +244,6 @@ vdd_sd: ldo5 {
 				regulator-min-microvolt = <2900000>;
 				regulator-max-microvolt = <2900000>;
 				interrupts = <IT_CURLIM_LDO5 0>;
-				interrupt-parent = <&pmic>;
 				regulator-boot-on;
 			};
 
@@ -256,7 +252,6 @@ v1v8: ldo6 {
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 				interrupts = <IT_CURLIM_LDO6 0>;
-				interrupt-parent = <&pmic>;
 				regulator-enable-ramp-delay = <300000>;
 			};
 
@@ -268,20 +263,17 @@ vref_ddr: vref_ddr {
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
