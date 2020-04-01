Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54AD19ACC7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 15:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNSN7HyZaE21OtOfbxR15eUUKLGFLiy3YANHuIF5EjI=; b=F3iNrsc8aqFsIa
	+T7uyGLLExfT/tBACVH3921Fbh8cSYa0gK3wgcQoHlAzXNY1vx/ZwaUF+6OEQ/a/hNbumYAk9ktI2
	OjxbIx4K8AeGut5nV0RDyTywfHIXntrhFdH55v7vBzXLFw4JN3mRWoU7JKbzEZFbUB2bhUmDVK+3T
	EOjFEX7PZD+gdxup9GYvf8KFh476bCvznnKtIjzhaTZra3UjPEupQNiJ+1M0iCQxJiOSwb2v6wikP
	VPGbS95ohwyRD7ABKTeOLA+Vo7hI1kY+clBPRnVqyPHRdR/MBqfrz4aKZK4D1O8LVN9190I3xpodS
	uRlwKbf0SiMQmZStK97g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJdMW-0006am-Ao; Wed, 01 Apr 2020 13:24:56 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJdKm-0004nV-D9
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 13:23:10 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48sn230Sy9z1qs0H;
 Wed,  1 Apr 2020 15:23:07 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48sn226zLdz1r0cS;
 Wed,  1 Apr 2020 15:23:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id I2HL9L54_M-R; Wed,  1 Apr 2020 15:23:05 +0200 (CEST)
X-Auth-Info: MxncF29Z9c8Pz+M4eXBSQkC5RU5OHA7QpnjDpy9N6is=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  1 Apr 2020 15:23:05 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 07/22] ARM: dts: stm32: Repair PMIC configuration on AV96
Date: Wed,  1 Apr 2020 15:22:22 +0200
Message-Id: <20200401132237.60880-8-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401132237.60880-1-marex@denx.de>
References: <20200401132237.60880-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_062308_756996_188B1BB4 
X-CRM114-Status: GOOD (  11.73  )
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

The core and vdd PMIC buck regulators were misconfigured, which caused
instability of the board and malfunction of high-speed interfaces, like
the RGMII. Configure the PMIC correctly to repair these problems.

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
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index a6f21ac5a94a..260410461dc8 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -91,6 +91,17 @@ sd_switch: regulator-sd_switch {
 		states = <1800000 0x1>,
 			 <2900000 0x0>;
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
@@ -177,7 +188,7 @@ regulators {
 
 			vddcore: buck1 {
 				regulator-name = "vddcore";
-				regulator-min-microvolt = <1200000>;
+				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <1350000>;
 				regulator-always-on;
 				regulator-initial-mode = <0>;
@@ -195,8 +206,8 @@ vdd_ddr: buck2 {
 
 			vdd: buck3 {
 				regulator-name = "vdd";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <2900000>;
+				regulator-max-microvolt = <2900000>;
 				regulator-always-on;
 				regulator-initial-mode = <0>;
 				regulator-over-current-protection;
@@ -274,6 +285,7 @@ vbus_otg: pwr_sw1 {
 				regulator-name = "vbus_otg";
 				interrupts = <IT_OCP_OTG 0>;
 				interrupt-parent = <&pmic>;
+				regulator-active-discharge = <1>;
 			};
 
 			vbus_sw: pwr_sw2 {
@@ -304,7 +316,7 @@ &iwdg2 {
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
