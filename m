Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 642A1F137B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:11:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mblI1y13v2IECSHNt8SnghB9dCAbILwEIzJGnYA7i4=; b=I3zgwvMFdhm0TN
	USX6PfFCDTjbP2SLrBHANnOcNP/72lInVUBrV8SWOAru8sPxWoisbmVOH96rDv3oWJBDGBvdI4ow2
	E/2T+LLxtq+Tze+em4pN1B3EWnOCpfTden1qk7JeFuK2Evg/I5FcH0rbQERXN6JvjJX7vJRIPnyhc
	UkK3foW/kmZ5GrU+HzSCskGQ54IJcGEkmGs1/G4sIK/cjOpo+s8rilfQJLL0BVhUP7wG3s0JgljMZ
	Qu2AuvoNV5SYt5paRKw49s/zyb6YhMaNnBkgPvoHPV67B6Lx35tobDrGOxo+qbRfudAkbgXnBTLTR
	eXWZADJ2eBT28+bF0TkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSIHE-0002W4-5w; Wed, 06 Nov 2019 10:11:00 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIGc-0001Gd-3g
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:10:24 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA6A7AGH003297; Wed, 6 Nov 2019 11:09:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=1npB15BkmfpmC8uST3T7d6AtcAiZs2SOxTaIZjMSkes=;
 b=kJZtcreKZPgNJzoK+KSUO2WMy68uSuCCWSZwqE+Juhuuc62HIC7nawPiEAcaf48CFzMj
 Cu8v2nmJdL8zybrh2/GZ7VjnVM7+6dbuQCAgOp0hLtV3yZkAIGk8vla2ForVug07qkvx
 Rme91YYRYs0TY0WmTqoJ/tI8h93DpmE6PC8zQZizAOEeNpfUJrNir3Nrv09LIZZOBQGt
 t9XK4r18jU4y08YChLbFpxxU7sOaJK1Lj0kASsiK78JDyDNro9HEfO31M2Hgi79SN/gC
 lYBCjqOWyjYWWl49wNDqtZwSZS9C7pHoA4C2kvpLc67cUW7tR6gkJzuxquwGDIBKyaAr UQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w10f1mpv0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 Nov 2019 11:09:45 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 86F1910002A;
 Wed,  6 Nov 2019 11:09:45 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 789EB2AD337;
 Wed,  6 Nov 2019 11:09:45 +0100 (CET)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 6 Nov 2019
 11:09:45 +0100
Received: from localhost (10.48.1.131) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Wed, 6 Nov 2019 11:09:44 +0100
From: Yann Gautier <yann.gautier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 4/4] ARM: dts: stm32: add sdmmc3 node for STM32MP1 boards
Date: Wed, 6 Nov 2019 11:09:38 +0100
Message-ID: <20191106100938.11368-5-yann.gautier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106100938.11368-1-yann.gautier@st.com>
References: <20191106100938.11368-1-yann.gautier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.1.131]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-06_02:2019-11-06,2019-11-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_021022_491566_99A2FA27 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Yann Gautier <yann.gautier@st.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Ludovic
 Barre <ludovic.barre@st.com>, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On STM32MP1 EVAL and DISCOVERY boards, the SDMMC3 internal peripheral
can be used through the GPIO extension connector. The sdmmc3 node is then
added in the boards DT files, and the required pins are also added.
The node status is disabled as there is no device connected by default.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
Signed-off-by: Yann Gautier <yann.gautier@st.com>
---
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 54 +++++++++++++++++++++++
 arch/arm/boot/dts/stm32mp157a-dk1.dts     | 12 +++++
 arch/arm/boot/dts/stm32mp157c-ev1.dts     | 12 +++++
 3 files changed, 78 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index a907d93f8916..d31a4661f7b5 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -926,6 +926,60 @@
 				};
 			};
 
+			sdmmc3_b4_pins_a: sdmmc3-b4-0 {
+				pins1 {
+					pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */
+						 <STM32_PINMUX('F', 4, AF9)>, /* SDMMC3_D1 */
+						 <STM32_PINMUX('F', 5, AF9)>, /* SDMMC3_D2 */
+						 <STM32_PINMUX('D', 7, AF10)>, /* SDMMC3_D3 */
+						 <STM32_PINMUX('F', 1, AF9)>; /* SDMMC3_CMD */
+					slew-rate = <1>;
+					drive-push-pull;
+					bias-pull-up;
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('G', 15, AF10)>; /* SDMMC3_CK */
+					slew-rate = <2>;
+					drive-push-pull;
+					bias-pull-up;
+				};
+			};
+
+			sdmmc3_b4_od_pins_a: sdmmc3-b4-od-0 {
+				pins1 {
+					pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */
+						 <STM32_PINMUX('F', 4, AF9)>, /* SDMMC3_D1 */
+						 <STM32_PINMUX('F', 5, AF9)>, /* SDMMC3_D2 */
+						 <STM32_PINMUX('D', 7, AF10)>; /* SDMMC3_D3 */
+					slew-rate = <1>;
+					drive-push-pull;
+					bias-pull-up;
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('G', 15, AF10)>; /* SDMMC3_CK */
+					slew-rate = <2>;
+					drive-push-pull;
+					bias-pull-up;
+				};
+				pins3 {
+					pinmux = <STM32_PINMUX('F', 1, AF9)>; /* SDMMC2_CMD */
+					slew-rate = <1>;
+					drive-open-drain;
+					bias-pull-up;
+				};
+			};
+
+			sdmmc3_b4_sleep_pins_a: sdmmc3-b4-sleep-0 {
+				pins {
+					pinmux = <STM32_PINMUX('F', 0, ANALOG)>, /* SDMMC3_D0 */
+						 <STM32_PINMUX('F', 4, ANALOG)>, /* SDMMC3_D1 */
+						 <STM32_PINMUX('F', 5, ANALOG)>, /* SDMMC3_D2 */
+						 <STM32_PINMUX('D', 7, ANALOG)>, /* SDMMC3_D3 */
+						 <STM32_PINMUX('G', 15, ANALOG)>, /* SDMMC3_CK */
+						 <STM32_PINMUX('F', 1, ANALOG)>; /* SDMMC3_CMD */
+				};
+			};
+
 			spdifrx_pins_a: spdifrx-0 {
 				pins {
 					pinmux = <STM32_PINMUX('G', 12, AF8)>; /* SPDIF_IN1 */
diff --git a/arch/arm/boot/dts/stm32mp157a-dk1.dts b/arch/arm/boot/dts/stm32mp157a-dk1.dts
index 0615d1c8a6fc..b86c32e6a829 100644
--- a/arch/arm/boot/dts/stm32mp157a-dk1.dts
+++ b/arch/arm/boot/dts/stm32mp157a-dk1.dts
@@ -444,6 +444,18 @@
 	status = "okay";
 };
 
+&sdmmc3 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc3_b4_pins_a>;
+	pinctrl-1 = <&sdmmc3_b4_od_pins_a>;
+	pinctrl-2 = <&sdmmc3_b4_sleep_pins_a>;
+	broken-cd;
+	st,neg-edge;
+	bus-width = <4>;
+	vmmc-supply = <&v3v3>;
+	status = "disabled";
+};
+
 &uart4 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart4_pins_a>;
diff --git a/arch/arm/boot/dts/stm32mp157c-ev1.dts b/arch/arm/boot/dts/stm32mp157c-ev1.dts
index 89d29b50c3f4..d047901c51ea 100644
--- a/arch/arm/boot/dts/stm32mp157c-ev1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ev1.dts
@@ -293,6 +293,18 @@
 	};
 };
 
+&sdmmc3 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc3_b4_pins_a>;
+	pinctrl-1 = <&sdmmc3_b4_od_pins_a>;
+	pinctrl-2 = <&sdmmc3_b4_sleep_pins_a>;
+	broken-cd;
+	st,neg-edge;
+	bus-width = <4>;
+	vmmc-supply = <&v3v3>;
+	status = "disabled";
+};
+
 &spi1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&spi1_pins_a>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
