Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D506C103D89
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 15:43:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvDEKKopDM2aSJ0yE5f3hKByue7hBLA06b2SDkR3tHs=; b=ZGmSEIUPGf09fz
	0LFauebD7aNtXAZ9vpqgKWZqY5Dz1sgwgSSPnwndsOd58+gyUalnItqvJ5bmDZeuapdR3hPTmdt06
	JKM09RlAs7Ajp83TdP92INlvpVH16iSQIdjcxXYoGqxYYfCMkV1w1Svrr2gIfTGJgRReg0zsh96TZ
	mnnsSRG9SJ2HLW0dZX+GrcStzYfRxNMH25U6bxjoP2iAHqfb7OpY8dLngUwSHMJgvsBoKfNjBILRT
	nsg/XlrFtOQhqiXPi4G5skRQgJAnl0/koty+fPT0YQqOrXhqw63dlWEulzIxcJClrClYdz/NyLsFI
	hgxIKXK/hd8422Mq2mjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXRCL-0007HV-Qk; Wed, 20 Nov 2019 14:43:13 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXRAW-0005f7-Ta
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 14:41:29 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAKEbFcK013640; Wed, 20 Nov 2019 15:41:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=+SsgLFDAsh3bZV23/LTgaxIRNAUdS4yIIwxILK9zVos=;
 b=Ge3fIstn6+YB3/edClj/Elwygb2vg8u7DkTI1T/RMnN24+nqpzETxXSe0FvtXfXdP5mF
 Dp18UBSCf+nR0fSna9Kl6W36wnZyJxXfB3ELQHlHsMBV98/Hxxz/rP5ECOJgEKoSvecD
 vMagxfjULuDyWSRzEQRwA+0pVRIWiDlhJ58G4o/5L4YiwQqALHgYMaNNR2zNiYGmoC5W
 3vSem1q04mBN3P2XoFAV+Ye3/bsJtnZF4BmedPL1/7U6Jptr9dr/tbopkLNChVZCoG+8
 1ZZxZNt4ZXJpiRu5SBT1r7COs+bLk9DZGY659btJF/v3zn/h5yJ4h5PGelLsay4Vr0Ro Bw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wa9up6hy4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 20 Nov 2019 15:41:12 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 45735100034;
 Wed, 20 Nov 2019 15:41:12 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 33FCB2BE22E;
 Wed, 20 Nov 2019 15:41:12 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 20 Nov 2019 15:41:11
 +0100
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, <arnd@arndb.de>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH 1/6] ARM: dts: stm32: Adapt stm32mp157 pinctrl to manage
 STM32MP15xx SOCs family
Date: Wed, 20 Nov 2019 15:41:04 +0100
Message-ID: <20191120144109.25321-2-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191120144109.25321-1-alexandre.torgue@st.com>
References: <20191120144109.25321-1-alexandre.torgue@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-20_04:2019-11-15,2019-11-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_064121_564980_C3D4E871 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit modifies stm32mp157 pinctrl files to better manage STM32MP15xx
SOCs diversity. Pin controller and gpio controller are moved to common SOC
dtsi file. Only pin groups remain in the main pinctrl dtsi file.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index e8dfed4b6ade..14e0ee82d94d 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -5,1236 +5,1083 @@
  */
 #include <dt-bindings/pinctrl/stm32-pinfunc.h>
 
-/ {
-	soc {
-		pinctrl: pin-controller@50002000 {
-			#address-cells = <1>;
-			#size-cells = <1>;
-			compatible = "st,stm32mp157-pinctrl";
-			ranges = <0 0x50002000 0xa400>;
-			interrupt-parent = <&exti>;
-			st,syscfg = <&exti 0x60 0xff>;
-			pins-are-numbered;
-
-			gpioa: gpio@50002000 {
-				gpio-controller;
-				#gpio-cells = <2>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				reg = <0x0 0x400>;
-				clocks = <&rcc GPIOA>;
-				st,bank-name = "GPIOA";
-				status = "disabled";
-			};
-
-			gpiob: gpio@50003000 {
-				gpio-controller;
-				#gpio-cells = <2>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				reg = <0x1000 0x400>;
-				clocks = <&rcc GPIOB>;
-				st,bank-name = "GPIOB";
-				status = "disabled";
-			};
-
-			gpioc: gpio@50004000 {
-				gpio-controller;
-				#gpio-cells = <2>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				reg = <0x2000 0x400>;
-				clocks = <&rcc GPIOC>;
-				st,bank-name = "GPIOC";
-				status = "disabled";
-			};
-
-			gpiod: gpio@50005000 {
-				gpio-controller;
-				#gpio-cells = <2>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				reg = <0x3000 0x400>;
-				clocks = <&rcc GPIOD>;
-				st,bank-name = "GPIOD";
-				status = "disabled";
-			};
-
-			gpioe: gpio@50006000 {
-				gpio-controller;
-				#gpio-cells = <2>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				reg = <0x4000 0x400>;
-				clocks = <&rcc GPIOE>;
-				st,bank-name = "GPIOE";
-				status = "disabled";
-			};
-
-			gpiof: gpio@50007000 {
-				gpio-controller;
-				#gpio-cells = <2>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				reg = <0x5000 0x400>;
-				clocks = <&rcc GPIOF>;
-				st,bank-name = "GPIOF";
-				status = "disabled";
-			};
-
-			gpiog: gpio@50008000 {
-				gpio-controller;
-				#gpio-cells = <2>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				reg = <0x6000 0x400>;
-				clocks = <&rcc GPIOG>;
-				st,bank-name = "GPIOG";
-				status = "disabled";
-			};
-
-			gpioh: gpio@50009000 {
-				gpio-controller;
-				#gpio-cells = <2>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				reg = <0x7000 0x400>;
-				clocks = <&rcc GPIOH>;
-				st,bank-name = "GPIOH";
-				status = "disabled";
-			};
-
-			gpioi: gpio@5000a000 {
-				gpio-controller;
-				#gpio-cells = <2>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				reg = <0x8000 0x400>;
-				clocks = <&rcc GPIOI>;
-				st,bank-name = "GPIOI";
-				status = "disabled";
-			};
-
-			gpioj: gpio@5000b000 {
-				gpio-controller;
-				#gpio-cells = <2>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				reg = <0x9000 0x400>;
-				clocks = <&rcc GPIOJ>;
-				st,bank-name = "GPIOJ";
-				status = "disabled";
-			};
-
-			gpiok: gpio@5000c000 {
-				gpio-controller;
-				#gpio-cells = <2>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				reg = <0xa000 0x400>;
-				clocks = <&rcc GPIOK>;
-				st,bank-name = "GPIOK";
-				status = "disabled";
-			};
-
-			adc1_in6_pins_a: adc1-in6 {
-				pins {
-					pinmux = <STM32_PINMUX('F', 12, ANALOG)>;
-				};
-			};
-
-			adc12_ain_pins_a: adc12-ain-0 {
-				pins {
-					pinmux = <STM32_PINMUX('C', 3, ANALOG)>, /* ADC1 in13 */
-						 <STM32_PINMUX('F', 12, ANALOG)>, /* ADC1 in6 */
-						 <STM32_PINMUX('F', 13, ANALOG)>, /* ADC2 in2 */
-						 <STM32_PINMUX('F', 14, ANALOG)>; /* ADC2 in6 */
-				};
-			};
-
-			adc12_usb_cc_pins_a: adc12-usb-cc-pins-0 {
-				pins {
-					pinmux = <STM32_PINMUX('A', 4, ANALOG)>, /* ADC12 in18 */
-						 <STM32_PINMUX('A', 5, ANALOG)>; /* ADC12 in19 */
-				};
-			};
-
-			cec_pins_a: cec-0 {
-				pins {
-					pinmux = <STM32_PINMUX('A', 15, AF4)>;
-					bias-disable;
-					drive-open-drain;
-					slew-rate = <0>;
-				};
-			};
-
-			cec_pins_sleep_a: cec-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('A', 15, ANALOG)>; /* HDMI_CEC */
-				};
-			};
-
-			cec_pins_b: cec-1 {
-				pins {
-					pinmux = <STM32_PINMUX('B', 6, AF5)>;
-					bias-disable;
-					drive-open-drain;
-					slew-rate = <0>;
-				};
-			};
-
-			cec_pins_sleep_b: cec-sleep-1 {
-				pins {
-					pinmux = <STM32_PINMUX('B', 6, ANALOG)>; /* HDMI_CEC */
-				};
-			};
-
-			dac_ch1_pins_a: dac-ch1 {
-				pins {
-					pinmux = <STM32_PINMUX('A', 4, ANALOG)>;
-				};
-			};
-
-			dac_ch2_pins_a: dac-ch2 {
-				pins {
-					pinmux = <STM32_PINMUX('A', 5, ANALOG)>;
-				};
-			};
-
-			dcmi_pins_a: dcmi-0 {
-				pins {
-					pinmux = <STM32_PINMUX('H', 8,  AF13)>,/* DCMI_HSYNC */
-						 <STM32_PINMUX('B', 7,  AF13)>,/* DCMI_VSYNC */
-						 <STM32_PINMUX('A', 6,  AF13)>,/* DCMI_PIXCLK */
-						 <STM32_PINMUX('H', 9,  AF13)>,/* DCMI_D0 */
-						 <STM32_PINMUX('H', 10, AF13)>,/* DCMI_D1 */
-						 <STM32_PINMUX('H', 11, AF13)>,/* DCMI_D2 */
-						 <STM32_PINMUX('H', 12, AF13)>,/* DCMI_D3 */
-						 <STM32_PINMUX('H', 14, AF13)>,/* DCMI_D4 */
-						 <STM32_PINMUX('I', 4,  AF13)>,/* DCMI_D5 */
-						 <STM32_PINMUX('B', 8,  AF13)>,/* DCMI_D6 */
-						 <STM32_PINMUX('E', 6,  AF13)>,/* DCMI_D7 */
-						 <STM32_PINMUX('I', 1,  AF13)>,/* DCMI_D8 */
-						 <STM32_PINMUX('H', 7,  AF13)>,/* DCMI_D9 */
-						 <STM32_PINMUX('I', 3,  AF13)>,/* DCMI_D10 */
-						 <STM32_PINMUX('H', 15, AF13)>;/* DCMI_D11 */
-					bias-disable;
-				};
-			};
-
-			dcmi_sleep_pins_a: dcmi-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('H', 8,  ANALOG)>,/* DCMI_HSYNC */
-						 <STM32_PINMUX('B', 7,  ANALOG)>,/* DCMI_VSYNC */
-						 <STM32_PINMUX('A', 6,  ANALOG)>,/* DCMI_PIXCLK */
-						 <STM32_PINMUX('H', 9,  ANALOG)>,/* DCMI_D0 */
-						 <STM32_PINMUX('H', 10, ANALOG)>,/* DCMI_D1 */
-						 <STM32_PINMUX('H', 11, ANALOG)>,/* DCMI_D2 */
-						 <STM32_PINMUX('H', 12, ANALOG)>,/* DCMI_D3 */
-						 <STM32_PINMUX('H', 14, ANALOG)>,/* DCMI_D4 */
-						 <STM32_PINMUX('I', 4,  ANALOG)>,/* DCMI_D5 */
-						 <STM32_PINMUX('B', 8,  ANALOG)>,/* DCMI_D6 */
-						 <STM32_PINMUX('E', 6,  ANALOG)>,/* DCMI_D7 */
-						 <STM32_PINMUX('I', 1,  ANALOG)>,/* DCMI_D8 */
-						 <STM32_PINMUX('H', 7,  ANALOG)>,/* DCMI_D9 */
-						 <STM32_PINMUX('I', 3,  ANALOG)>,/* DCMI_D10 */
-						 <STM32_PINMUX('H', 15, ANALOG)>;/* DCMI_D11 */
-				};
-			};
-
-			ethernet0_rgmii_pins_a: rgmii-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('G', 5, AF11)>, /* ETH_RGMII_CLK125 */
-						 <STM32_PINMUX('G', 4, AF11)>, /* ETH_RGMII_GTX_CLK */
-						 <STM32_PINMUX('G', 13, AF11)>, /* ETH_RGMII_TXD0 */
-						 <STM32_PINMUX('G', 14, AF11)>, /* ETH_RGMII_TXD1 */
-						 <STM32_PINMUX('C', 2, AF11)>, /* ETH_RGMII_TXD2 */
-						 <STM32_PINMUX('E', 2, AF11)>, /* ETH_RGMII_TXD3 */
-						 <STM32_PINMUX('B', 11, AF11)>, /* ETH_RGMII_TX_CTL */
-						 <STM32_PINMUX('A', 2, AF11)>, /* ETH_MDIO */
-						 <STM32_PINMUX('C', 1, AF11)>; /* ETH_MDC */
-					bias-disable;
-					drive-push-pull;
-					slew-rate = <3>;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('C', 4, AF11)>, /* ETH_RGMII_RXD0 */
-						 <STM32_PINMUX('C', 5, AF11)>, /* ETH_RGMII_RXD1 */
-						 <STM32_PINMUX('B', 0, AF11)>, /* ETH_RGMII_RXD2 */
-						 <STM32_PINMUX('B', 1, AF11)>, /* ETH_RGMII_RXD3 */
-						 <STM32_PINMUX('A', 1, AF11)>, /* ETH_RGMII_RX_CLK */
-						 <STM32_PINMUX('A', 7, AF11)>; /* ETH_RGMII_RX_CTL */
-					bias-disable;
-				};
-			};
-
-			ethernet0_rgmii_pins_sleep_a: rgmii-sleep-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('G', 5, ANALOG)>, /* ETH_RGMII_CLK125 */
-						 <STM32_PINMUX('G', 4, ANALOG)>, /* ETH_RGMII_GTX_CLK */
-						 <STM32_PINMUX('G', 13, ANALOG)>, /* ETH_RGMII_TXD0 */
-						 <STM32_PINMUX('G', 14, ANALOG)>, /* ETH_RGMII_TXD1 */
-						 <STM32_PINMUX('C', 2, ANALOG)>, /* ETH_RGMII_TXD2 */
-						 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_TXD3 */
-						 <STM32_PINMUX('B', 11, ANALOG)>, /* ETH_RGMII_TX_CTL */
-						 <STM32_PINMUX('A', 2, ANALOG)>, /* ETH_MDIO */
-						 <STM32_PINMUX('C', 1, ANALOG)>, /* ETH_MDC */
-						 <STM32_PINMUX('C', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
-						 <STM32_PINMUX('C', 5, ANALOG)>, /* ETH_RGMII_RXD1 */
-						 <STM32_PINMUX('B', 0, ANALOG)>, /* ETH_RGMII_RXD2 */
-						 <STM32_PINMUX('B', 1, ANALOG)>, /* ETH_RGMII_RXD3 */
-						 <STM32_PINMUX('A', 1, ANALOG)>, /* ETH_RGMII_RX_CLK */
-						 <STM32_PINMUX('A', 7, ANALOG)>; /* ETH_RGMII_RX_CTL */
-				};
-			};
-
-			fmc_pins_a: fmc-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('D', 4, AF12)>, /* FMC_NOE */
-						 <STM32_PINMUX('D', 5, AF12)>, /* FMC_NWE */
-						 <STM32_PINMUX('D', 11, AF12)>, /* FMC_A16_FMC_CLE */
-						 <STM32_PINMUX('D', 12, AF12)>, /* FMC_A17_FMC_ALE */
-						 <STM32_PINMUX('D', 14, AF12)>, /* FMC_D0 */
-						 <STM32_PINMUX('D', 15, AF12)>, /* FMC_D1 */
-						 <STM32_PINMUX('D', 0, AF12)>, /* FMC_D2 */
-						 <STM32_PINMUX('D', 1, AF12)>, /* FMC_D3 */
-						 <STM32_PINMUX('E', 7, AF12)>, /* FMC_D4 */
-						 <STM32_PINMUX('E', 8, AF12)>, /* FMC_D5 */
-						 <STM32_PINMUX('E', 9, AF12)>, /* FMC_D6 */
-						 <STM32_PINMUX('E', 10, AF12)>, /* FMC_D7 */
-						 <STM32_PINMUX('G', 9, AF12)>; /* FMC_NE2_FMC_NCE */
-					bias-disable;
-					drive-push-pull;
-					slew-rate = <1>;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('D', 6, AF12)>; /* FMC_NWAIT */
-					bias-pull-up;
-				};
-			};
-
-			fmc_sleep_pins_a: fmc-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('D', 4, ANALOG)>, /* FMC_NOE */
-						 <STM32_PINMUX('D', 5, ANALOG)>, /* FMC_NWE */
-						 <STM32_PINMUX('D', 11, ANALOG)>, /* FMC_A16_FMC_CLE */
-						 <STM32_PINMUX('D', 12, ANALOG)>, /* FMC_A17_FMC_ALE */
-						 <STM32_PINMUX('D', 14, ANALOG)>, /* FMC_D0 */
-						 <STM32_PINMUX('D', 15, ANALOG)>, /* FMC_D1 */
-						 <STM32_PINMUX('D', 0, ANALOG)>, /* FMC_D2 */
-						 <STM32_PINMUX('D', 1, ANALOG)>, /* FMC_D3 */
-						 <STM32_PINMUX('E', 7, ANALOG)>, /* FMC_D4 */
-						 <STM32_PINMUX('E', 8, ANALOG)>, /* FMC_D5 */
-						 <STM32_PINMUX('E', 9, ANALOG)>, /* FMC_D6 */
-						 <STM32_PINMUX('E', 10, ANALOG)>, /* FMC_D7 */
-						 <STM32_PINMUX('D', 6, ANALOG)>, /* FMC_NWAIT */
-						 <STM32_PINMUX('G', 9, ANALOG)>; /* FMC_NE2_FMC_NCE */
-				};
-			};
-
-			i2c1_pins_a: i2c1-0 {
-				pins {
-					pinmux = <STM32_PINMUX('D', 12, AF5)>, /* I2C1_SCL */
-						 <STM32_PINMUX('F', 15, AF5)>; /* I2C1_SDA */
-					bias-disable;
-					drive-open-drain;
-					slew-rate = <0>;
-				};
-			};
-
-			i2c1_pins_sleep_a: i2c1-1 {
-				pins {
-					pinmux = <STM32_PINMUX('D', 12, ANALOG)>, /* I2C1_SCL */
-						 <STM32_PINMUX('F', 15, ANALOG)>; /* I2C1_SDA */
-				};
-			};
-
-			i2c1_pins_b: i2c1-2 {
-				pins {
-					pinmux = <STM32_PINMUX('F', 14, AF5)>, /* I2C1_SCL */
-						 <STM32_PINMUX('F', 15, AF5)>; /* I2C1_SDA */
-					bias-disable;
-					drive-open-drain;
-					slew-rate = <0>;
-				};
-			};
-
-			i2c1_pins_sleep_b: i2c1-3 {
-				pins {
-					pinmux = <STM32_PINMUX('F', 14, ANALOG)>, /* I2C1_SCL */
-						 <STM32_PINMUX('F', 15, ANALOG)>; /* I2C1_SDA */
-				};
-			};
-
-			i2c2_pins_a: i2c2-0 {
-				pins {
-					pinmux = <STM32_PINMUX('H', 4, AF4)>, /* I2C2_SCL */
-						 <STM32_PINMUX('H', 5, AF4)>; /* I2C2_SDA */
-					bias-disable;
-					drive-open-drain;
-					slew-rate = <0>;
-				};
-			};
-
-			i2c2_pins_sleep_a: i2c2-1 {
-				pins {
-					pinmux = <STM32_PINMUX('H', 4, ANALOG)>, /* I2C2_SCL */
-						 <STM32_PINMUX('H', 5, ANALOG)>; /* I2C2_SDA */
-				};
-			};
-
-			i2c2_pins_b1: i2c2-2 {
-				pins {
-					pinmux = <STM32_PINMUX('H', 5, AF4)>; /* I2C2_SDA */
-					bias-disable;
-					drive-open-drain;
-					slew-rate = <0>;
-				};
-			};
-
-			i2c2_pins_sleep_b1: i2c2-3 {
-				pins {
-					pinmux = <STM32_PINMUX('H', 5, ANALOG)>; /* I2C2_SDA */
-				};
-			};
-
-			i2c5_pins_a: i2c5-0 {
-				pins {
-					pinmux = <STM32_PINMUX('A', 11, AF4)>, /* I2C5_SCL */
-						 <STM32_PINMUX('A', 12, AF4)>; /* I2C5_SDA */
-					bias-disable;
-					drive-open-drain;
-					slew-rate = <0>;
-				};
-			};
-
-			i2c5_pins_sleep_a: i2c5-1 {
-				pins {
-					pinmux = <STM32_PINMUX('A', 11, ANALOG)>, /* I2C5_SCL */
-						 <STM32_PINMUX('A', 12, ANALOG)>; /* I2C5_SDA */
-
-				};
-			};
-
-			i2s2_pins_a: i2s2-0 {
-				pins {
-					pinmux = <STM32_PINMUX('I', 3, AF5)>, /* I2S2_SDO */
-						 <STM32_PINMUX('B', 9, AF5)>, /* I2S2_WS */
-						 <STM32_PINMUX('A', 9, AF5)>; /* I2S2_CK */
-					slew-rate = <1>;
-					drive-push-pull;
-					bias-disable;
-				};
-			};
-
-			i2s2_pins_sleep_a: i2s2-1 {
-				pins {
-					pinmux = <STM32_PINMUX('I', 3, ANALOG)>, /* I2S2_SDO */
-						 <STM32_PINMUX('B', 9, ANALOG)>, /* I2S2_WS */
-						 <STM32_PINMUX('A', 9, ANALOG)>; /* I2S2_CK */
-				};
-			};
-
-			ltdc_pins_a: ltdc-a-0 {
-				pins {
-					pinmux = <STM32_PINMUX('G',  7, AF14)>, /* LCD_CLK */
-						 <STM32_PINMUX('I', 10, AF14)>, /* LCD_HSYNC */
-						 <STM32_PINMUX('I',  9, AF14)>, /* LCD_VSYNC */
-						 <STM32_PINMUX('F', 10, AF14)>, /* LCD_DE */
-						 <STM32_PINMUX('H',  2, AF14)>, /* LCD_R0 */
-						 <STM32_PINMUX('H',  3, AF14)>, /* LCD_R1 */
-						 <STM32_PINMUX('H',  8, AF14)>, /* LCD_R2 */
-						 <STM32_PINMUX('H',  9, AF14)>, /* LCD_R3 */
-						 <STM32_PINMUX('H', 10, AF14)>, /* LCD_R4 */
-						 <STM32_PINMUX('C',  0, AF14)>, /* LCD_R5 */
-						 <STM32_PINMUX('H', 12, AF14)>, /* LCD_R6 */
-						 <STM32_PINMUX('E', 15, AF14)>, /* LCD_R7 */
-						 <STM32_PINMUX('E',  5, AF14)>, /* LCD_G0 */
-						 <STM32_PINMUX('E',  6, AF14)>, /* LCD_G1 */
-						 <STM32_PINMUX('H', 13, AF14)>, /* LCD_G2 */
-						 <STM32_PINMUX('H', 14, AF14)>, /* LCD_G3 */
-						 <STM32_PINMUX('H', 15, AF14)>, /* LCD_G4 */
-						 <STM32_PINMUX('I',  0, AF14)>, /* LCD_G5 */
-						 <STM32_PINMUX('I',  1, AF14)>, /* LCD_G6 */
-						 <STM32_PINMUX('I',  2, AF14)>, /* LCD_G7 */
-						 <STM32_PINMUX('D',  9, AF14)>, /* LCD_B0 */
-						 <STM32_PINMUX('G', 12, AF14)>, /* LCD_B1 */
-						 <STM32_PINMUX('G', 10, AF14)>, /* LCD_B2 */
-						 <STM32_PINMUX('D', 10, AF14)>, /* LCD_B3 */
-						 <STM32_PINMUX('I',  4, AF14)>, /* LCD_B4 */
-						 <STM32_PINMUX('A',  3, AF14)>, /* LCD_B5 */
-						 <STM32_PINMUX('B',  8, AF14)>, /* LCD_B6 */
-						 <STM32_PINMUX('D',  8, AF14)>; /* LCD_B7 */
-					bias-disable;
-					drive-push-pull;
-					slew-rate = <1>;
-				};
-			};
-
-			ltdc_pins_sleep_a: ltdc-a-1 {
-				pins {
-					pinmux = <STM32_PINMUX('G',  7, ANALOG)>, /* LCD_CLK */
-						 <STM32_PINMUX('I', 10, ANALOG)>, /* LCD_HSYNC */
-						 <STM32_PINMUX('I',  9, ANALOG)>, /* LCD_VSYNC */
-						 <STM32_PINMUX('F', 10, ANALOG)>, /* LCD_DE */
-						 <STM32_PINMUX('H',  2, ANALOG)>, /* LCD_R0 */
-						 <STM32_PINMUX('H',  3, ANALOG)>, /* LCD_R1 */
-						 <STM32_PINMUX('H',  8, ANALOG)>, /* LCD_R2 */
-						 <STM32_PINMUX('H',  9, ANALOG)>, /* LCD_R3 */
-						 <STM32_PINMUX('H', 10, ANALOG)>, /* LCD_R4 */
-						 <STM32_PINMUX('C',  0, ANALOG)>, /* LCD_R5 */
-						 <STM32_PINMUX('H', 12, ANALOG)>, /* LCD_R6 */
-						 <STM32_PINMUX('E', 15, ANALOG)>, /* LCD_R7 */
-						 <STM32_PINMUX('E',  5, ANALOG)>, /* LCD_G0 */
-						 <STM32_PINMUX('E',  6, ANALOG)>, /* LCD_G1 */
-						 <STM32_PINMUX('H', 13, ANALOG)>, /* LCD_G2 */
-						 <STM32_PINMUX('H', 14, ANALOG)>, /* LCD_G3 */
-						 <STM32_PINMUX('H', 15, ANALOG)>, /* LCD_G4 */
-						 <STM32_PINMUX('I',  0, ANALOG)>, /* LCD_G5 */
-						 <STM32_PINMUX('I',  1, ANALOG)>, /* LCD_G6 */
-						 <STM32_PINMUX('I',  2, ANALOG)>, /* LCD_G7 */
-						 <STM32_PINMUX('D',  9, ANALOG)>, /* LCD_B0 */
-						 <STM32_PINMUX('G', 12, ANALOG)>, /* LCD_B1 */
-						 <STM32_PINMUX('G', 10, ANALOG)>, /* LCD_B2 */
-						 <STM32_PINMUX('D', 10, ANALOG)>, /* LCD_B3 */
-						 <STM32_PINMUX('I',  4, ANALOG)>, /* LCD_B4 */
-						 <STM32_PINMUX('A',  3, ANALOG)>, /* LCD_B5 */
-						 <STM32_PINMUX('B',  8, ANALOG)>, /* LCD_B6 */
-						 <STM32_PINMUX('D',  8, ANALOG)>; /* LCD_B7 */
-				};
-			};
-
-			ltdc_pins_b: ltdc-b-0 {
-				pins {
-					pinmux = <STM32_PINMUX('I', 14, AF14)>, /* LCD_CLK */
-						 <STM32_PINMUX('I', 12, AF14)>, /* LCD_HSYNC */
-						 <STM32_PINMUX('I', 13, AF14)>, /* LCD_VSYNC */
-						 <STM32_PINMUX('K',  7, AF14)>, /* LCD_DE */
-						 <STM32_PINMUX('I', 15, AF14)>, /* LCD_R0 */
-						 <STM32_PINMUX('J',  0, AF14)>, /* LCD_R1 */
-						 <STM32_PINMUX('J',  1, AF14)>, /* LCD_R2 */
-						 <STM32_PINMUX('J',  2, AF14)>, /* LCD_R3 */
-						 <STM32_PINMUX('J',  3, AF14)>, /* LCD_R4 */
-						 <STM32_PINMUX('J',  4, AF14)>, /* LCD_R5 */
-						 <STM32_PINMUX('J',  5, AF14)>, /* LCD_R6 */
-						 <STM32_PINMUX('J',  6, AF14)>, /* LCD_R7 */
-						 <STM32_PINMUX('J',  7, AF14)>, /* LCD_G0 */
-						 <STM32_PINMUX('J',  8, AF14)>, /* LCD_G1 */
-						 <STM32_PINMUX('J',  9, AF14)>, /* LCD_G2 */
-						 <STM32_PINMUX('J', 10, AF14)>, /* LCD_G3 */
-						 <STM32_PINMUX('J', 11, AF14)>, /* LCD_G4 */
-						 <STM32_PINMUX('K',  0, AF14)>, /* LCD_G5 */
-						 <STM32_PINMUX('K',  1, AF14)>, /* LCD_G6 */
-						 <STM32_PINMUX('K',  2, AF14)>, /* LCD_G7 */
-						 <STM32_PINMUX('J', 12, AF14)>, /* LCD_B0 */
-						 <STM32_PINMUX('J', 13, AF14)>, /* LCD_B1 */
-						 <STM32_PINMUX('J', 14, AF14)>, /* LCD_B2 */
-						 <STM32_PINMUX('J', 15, AF14)>, /* LCD_B3 */
-						 <STM32_PINMUX('K',  3, AF14)>, /* LCD_B4 */
-						 <STM32_PINMUX('K',  4, AF14)>, /* LCD_B5 */
-						 <STM32_PINMUX('K',  5, AF14)>, /* LCD_B6 */
-						 <STM32_PINMUX('K',  6, AF14)>; /* LCD_B7 */
-					bias-disable;
-					drive-push-pull;
-					slew-rate = <1>;
-				};
-			};
-
-			ltdc_pins_sleep_b: ltdc-b-1 {
-				pins {
-					pinmux = <STM32_PINMUX('I', 14, ANALOG)>, /* LCD_CLK */
-						 <STM32_PINMUX('I', 12, ANALOG)>, /* LCD_HSYNC */
-						 <STM32_PINMUX('I', 13, ANALOG)>, /* LCD_VSYNC */
-						 <STM32_PINMUX('K',  7, ANALOG)>, /* LCD_DE */
-						 <STM32_PINMUX('I', 15, ANALOG)>, /* LCD_R0 */
-						 <STM32_PINMUX('J',  0, ANALOG)>, /* LCD_R1 */
-						 <STM32_PINMUX('J',  1, ANALOG)>, /* LCD_R2 */
-						 <STM32_PINMUX('J',  2, ANALOG)>, /* LCD_R3 */
-						 <STM32_PINMUX('J',  3, ANALOG)>, /* LCD_R4 */
-						 <STM32_PINMUX('J',  4, ANALOG)>, /* LCD_R5 */
-						 <STM32_PINMUX('J',  5, ANALOG)>, /* LCD_R6 */
-						 <STM32_PINMUX('J',  6, ANALOG)>, /* LCD_R7 */
-						 <STM32_PINMUX('J',  7, ANALOG)>, /* LCD_G0 */
-						 <STM32_PINMUX('J',  8, ANALOG)>, /* LCD_G1 */
-						 <STM32_PINMUX('J',  9, ANALOG)>, /* LCD_G2 */
-						 <STM32_PINMUX('J', 10, ANALOG)>, /* LCD_G3 */
-						 <STM32_PINMUX('J', 11, ANALOG)>, /* LCD_G4 */
-						 <STM32_PINMUX('K',  0, ANALOG)>, /* LCD_G5 */
-						 <STM32_PINMUX('K',  1, ANALOG)>, /* LCD_G6 */
-						 <STM32_PINMUX('K',  2, ANALOG)>, /* LCD_G7 */
-						 <STM32_PINMUX('J', 12, ANALOG)>, /* LCD_B0 */
-						 <STM32_PINMUX('J', 13, ANALOG)>, /* LCD_B1 */
-						 <STM32_PINMUX('J', 14, ANALOG)>, /* LCD_B2 */
-						 <STM32_PINMUX('J', 15, ANALOG)>, /* LCD_B3 */
-						 <STM32_PINMUX('K',  3, ANALOG)>, /* LCD_B4 */
-						 <STM32_PINMUX('K',  4, ANALOG)>, /* LCD_B5 */
-						 <STM32_PINMUX('K',  5, ANALOG)>, /* LCD_B6 */
-						 <STM32_PINMUX('K',  6, ANALOG)>; /* LCD_B7 */
-				};
-			};
-
-			m_can1_pins_a: m-can1-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('H', 13, AF9)>; /* CAN1_TX */
-					slew-rate = <1>;
-					drive-push-pull;
-					bias-disable;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('I', 9, AF9)>; /* CAN1_RX */
-					bias-disable;
-				};
-			};
-
-			m_can1_sleep_pins_a: m_can1-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('H', 13, ANALOG)>, /* CAN1_TX */
-						 <STM32_PINMUX('I', 9, ANALOG)>; /* CAN1_RX */
-				};
-			};
-
-			pwm1_pins_a: pwm1-0 {
-				pins {
-					pinmux = <STM32_PINMUX('E', 9, AF1)>, /* TIM1_CH1 */
-						 <STM32_PINMUX('E', 11, AF1)>, /* TIM1_CH2 */
-						 <STM32_PINMUX('E', 14, AF1)>; /* TIM1_CH4 */
-					bias-pull-down;
-					drive-push-pull;
-					slew-rate = <0>;
-				};
-			};
-
-			pwm1_sleep_pins_a: pwm1-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('E', 9, ANALOG)>, /* TIM1_CH1 */
-						 <STM32_PINMUX('E', 11, ANALOG)>, /* TIM1_CH2 */
-						 <STM32_PINMUX('E', 14, ANALOG)>; /* TIM1_CH4 */
-				};
-			};
-
-			pwm2_pins_a: pwm2-0 {
-				pins {
-					pinmux = <STM32_PINMUX('A', 3, AF1)>; /* TIM2_CH4 */
-					bias-pull-down;
-					drive-push-pull;
-					slew-rate = <0>;
-				};
-			};
-
-			pwm2_sleep_pins_a: pwm2-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('A', 3, ANALOG)>; /* TIM2_CH4 */
-				};
-			};
-
-			pwm3_pins_a: pwm3-0 {
-				pins {
-					pinmux = <STM32_PINMUX('C', 7, AF2)>; /* TIM3_CH2 */
-					bias-pull-down;
-					drive-push-pull;
-					slew-rate = <0>;
-				};
-			};
-
-			pwm3_sleep_pins_a: pwm3-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('C', 7, ANALOG)>; /* TIM3_CH2 */
-				};
-			};
-
-			pwm4_pins_a: pwm4-0 {
-				pins {
-					pinmux = <STM32_PINMUX('D', 14, AF2)>, /* TIM4_CH3 */
-						 <STM32_PINMUX('D', 15, AF2)>; /* TIM4_CH4 */
-					bias-pull-down;
-					drive-push-pull;
-					slew-rate = <0>;
-				};
-			};
-
-			pwm4_sleep_pins_a: pwm4-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('D', 14, ANALOG)>, /* TIM4_CH3 */
-						 <STM32_PINMUX('D', 15, ANALOG)>; /* TIM4_CH4 */
-				};
-			};
-
-			pwm4_pins_b: pwm4-1 {
-				pins {
-					pinmux = <STM32_PINMUX('D', 13, AF2)>; /* TIM4_CH2 */
-					bias-pull-down;
-					drive-push-pull;
-					slew-rate = <0>;
-				};
-			};
-
-			pwm4_sleep_pins_b: pwm4-sleep-1 {
-				pins {
-					pinmux = <STM32_PINMUX('D', 13, ANALOG)>; /* TIM4_CH2 */
-				};
-			};
-
-			pwm5_pins_a: pwm5-0 {
-				pins {
-					pinmux = <STM32_PINMUX('H', 11, AF2)>; /* TIM5_CH2 */
-					bias-pull-down;
-					drive-push-pull;
-					slew-rate = <0>;
-				};
-			};
-
-			pwm5_sleep_pins_a: pwm5-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('H', 11, ANALOG)>; /* TIM5_CH2 */
-				};
-			};
-
-			pwm8_pins_a: pwm8-0 {
-				pins {
-					pinmux = <STM32_PINMUX('I', 2, AF3)>; /* TIM8_CH4 */
-					bias-pull-down;
-					drive-push-pull;
-					slew-rate = <0>;
-				};
-			};
-
-			pwm8_sleep_pins_a: pwm8-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('I', 2, ANALOG)>; /* TIM8_CH4 */
-				};
-			};
-
-			pwm12_pins_a: pwm12-0 {
-				pins {
-					pinmux = <STM32_PINMUX('H', 6, AF2)>; /* TIM12_CH1 */
-					bias-pull-down;
-					drive-push-pull;
-					slew-rate = <0>;
-				};
-			};
-
-			pwm12_sleep_pins_a: pwm12-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('H', 6, ANALOG)>; /* TIM12_CH1 */
-				};
-			};
-
-			qspi_clk_pins_a: qspi-clk-0 {
-				pins {
-					pinmux = <STM32_PINMUX('F', 10, AF9)>; /* QSPI_CLK */
-					bias-disable;
-					drive-push-pull;
-					slew-rate = <3>;
-				};
-			};
-
-			qspi_clk_sleep_pins_a: qspi-clk-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('F', 10, ANALOG)>; /* QSPI_CLK */
-				};
-			};
-
-			qspi_bk1_pins_a: qspi-bk1-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('F', 8, AF10)>, /* QSPI_BK1_IO0 */
-						 <STM32_PINMUX('F', 9, AF10)>, /* QSPI_BK1_IO1 */
-						 <STM32_PINMUX('F', 7, AF9)>, /* QSPI_BK1_IO2 */
-						 <STM32_PINMUX('F', 6, AF9)>; /* QSPI_BK1_IO3 */
-					bias-disable;
-					drive-push-pull;
-					slew-rate = <1>;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('B', 6, AF10)>; /* QSPI_BK1_NCS */
-					bias-pull-up;
-					drive-push-pull;
-					slew-rate = <1>;
-				};
-			};
-
-			qspi_bk1_sleep_pins_a: qspi-bk1-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('F', 8, ANALOG)>, /* QSPI_BK1_IO0 */
-						 <STM32_PINMUX('F', 9, ANALOG)>, /* QSPI_BK1_IO1 */
-						 <STM32_PINMUX('F', 7, ANALOG)>, /* QSPI_BK1_IO2 */
-						 <STM32_PINMUX('F', 6, ANALOG)>, /* QSPI_BK1_IO3 */
-						 <STM32_PINMUX('B', 6, ANALOG)>; /* QSPI_BK1_NCS */
-				};
-			};
-
-			qspi_bk2_pins_a: qspi-bk2-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('H', 2, AF9)>, /* QSPI_BK2_IO0 */
-						 <STM32_PINMUX('H', 3, AF9)>, /* QSPI_BK2_IO1 */
-						 <STM32_PINMUX('G', 10, AF11)>, /* QSPI_BK2_IO2 */
-						 <STM32_PINMUX('G', 7, AF11)>; /* QSPI_BK2_IO3 */
-					bias-disable;
-					drive-push-pull;
-					slew-rate = <1>;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('C', 0, AF10)>; /* QSPI_BK2_NCS */
-					bias-pull-up;
-					drive-push-pull;
-					slew-rate = <1>;
-				};
-			};
-
-			qspi_bk2_sleep_pins_a: qspi-bk2-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('H', 2, ANALOG)>, /* QSPI_BK2_IO0 */
-						 <STM32_PINMUX('H', 3, ANALOG)>, /* QSPI_BK2_IO1 */
-						 <STM32_PINMUX('G', 10, ANALOG)>, /* QSPI_BK2_IO2 */
-						 <STM32_PINMUX('G', 7, ANALOG)>, /* QSPI_BK2_IO3 */
-						 <STM32_PINMUX('C', 0, ANALOG)>; /* QSPI_BK2_NCS */
-				};
-			};
-
-			sai2a_pins_a: sai2a-0 {
-				pins {
-					pinmux = <STM32_PINMUX('I', 5, AF10)>, /* SAI2_SCK_A */
-						 <STM32_PINMUX('I', 6, AF10)>, /* SAI2_SD_A */
-						 <STM32_PINMUX('I', 7, AF10)>, /* SAI2_FS_A */
-						 <STM32_PINMUX('E', 0, AF10)>; /* SAI2_MCLK_A */
-					slew-rate = <0>;
-					drive-push-pull;
-					bias-disable;
-				};
-			};
-
-			sai2a_sleep_pins_a: sai2a-1 {
-				pins {
-					pinmux = <STM32_PINMUX('I', 5, ANALOG)>, /* SAI2_SCK_A */
-						 <STM32_PINMUX('I', 6, ANALOG)>, /* SAI2_SD_A */
-						 <STM32_PINMUX('I', 7, ANALOG)>, /* SAI2_FS_A */
-						 <STM32_PINMUX('E', 0, ANALOG)>; /* SAI2_MCLK_A */
-				};
-			};
-
-			sai2b_pins_a: sai2b-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('E', 12, AF10)>, /* SAI2_SCK_B */
-						 <STM32_PINMUX('E', 13, AF10)>, /* SAI2_FS_B */
-						 <STM32_PINMUX('E', 14, AF10)>; /* SAI2_MCLK_B */
-					slew-rate = <0>;
-					drive-push-pull;
-					bias-disable;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('F', 11, AF10)>; /* SAI2_SD_B */
-					bias-disable;
-				};
-			};
-
-			sai2b_sleep_pins_a: sai2b-1 {
-				pins {
-					pinmux = <STM32_PINMUX('F', 11, ANALOG)>, /* SAI2_SD_B */
-						 <STM32_PINMUX('E', 12, ANALOG)>, /* SAI2_SCK_B */
-						 <STM32_PINMUX('E', 13, ANALOG)>, /* SAI2_FS_B */
-						 <STM32_PINMUX('E', 14, ANALOG)>; /* SAI2_MCLK_B */
-				};
-			};
-
-			sai2b_pins_b: sai2b-2 {
-				pins {
-					pinmux = <STM32_PINMUX('F', 11, AF10)>; /* SAI2_SD_B */
-					bias-disable;
-				};
-			};
-
-			sai2b_sleep_pins_b: sai2b-3 {
-				pins {
-					pinmux = <STM32_PINMUX('F', 11, ANALOG)>; /* SAI2_SD_B */
-				};
-			};
-
-			sai4a_pins_a: sai4a-0 {
-				pins {
-					pinmux = <STM32_PINMUX('B', 5, AF10)>; /* SAI4_SD_A */
-					slew-rate = <0>;
-					drive-push-pull;
-					bias-disable;
-				};
-			};
-
-			sai4a_sleep_pins_a: sai4a-1 {
-				pins {
-					pinmux = <STM32_PINMUX('B', 5, ANALOG)>; /* SAI4_SD_A */
-				};
-			};
-
-			sdmmc1_b4_pins_a: sdmmc1-b4-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1_D0 */
-						 <STM32_PINMUX('C', 9, AF12)>, /* SDMMC1_D1 */
-						 <STM32_PINMUX('C', 10, AF12)>, /* SDMMC1_D2 */
-						 <STM32_PINMUX('C', 11, AF12)>, /* SDMMC1_D3 */
-						 <STM32_PINMUX('D', 2, AF12)>; /* SDMMC1_CMD */
-					slew-rate = <1>;
-					drive-push-pull;
-					bias-disable;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('C', 12, AF12)>; /* SDMMC1_CK */
-					slew-rate = <2>;
-					drive-push-pull;
-					bias-disable;
-				};
-			};
-
-			sdmmc1_b4_od_pins_a: sdmmc1-b4-od-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1_D0 */
-						 <STM32_PINMUX('C', 9, AF12)>, /* SDMMC1_D1 */
-						 <STM32_PINMUX('C', 10, AF12)>, /* SDMMC1_D2 */
-						 <STM32_PINMUX('C', 11, AF12)>; /* SDMMC1_D3 */
-					slew-rate = <1>;
-					drive-push-pull;
-					bias-disable;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('C', 12, AF12)>; /* SDMMC1_CK */
-					slew-rate = <2>;
-					drive-push-pull;
-					bias-disable;
-				};
-				pins3 {
-					pinmux = <STM32_PINMUX('D', 2, AF12)>; /* SDMMC1_CMD */
-					slew-rate = <1>;
-					drive-open-drain;
-					bias-disable;
-				};
-			};
-
-			sdmmc1_b4_sleep_pins_a: sdmmc1-b4-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('C', 8, ANALOG)>, /* SDMMC1_D0 */
-						 <STM32_PINMUX('C', 9, ANALOG)>, /* SDMMC1_D1 */
-						 <STM32_PINMUX('C', 10, ANALOG)>, /* SDMMC1_D2 */
-						 <STM32_PINMUX('C', 11, ANALOG)>, /* SDMMC1_D3 */
-						 <STM32_PINMUX('C', 12, ANALOG)>, /* SDMMC1_CK */
-						 <STM32_PINMUX('D', 2, ANALOG)>; /* SDMMC1_CMD */
-				};
-			};
-
-			sdmmc1_dir_pins_a: sdmmc1-dir-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('F', 2, AF11)>, /* SDMMC1_D0DIR */
-						 <STM32_PINMUX('C', 7, AF8)>, /* SDMMC1_D123DIR */
-						 <STM32_PINMUX('B', 9, AF11)>; /* SDMMC1_CDIR */
-					slew-rate = <1>;
-					drive-push-pull;
-					bias-pull-up;
-				};
-				pins2{
-					pinmux = <STM32_PINMUX('E', 4, AF8)>; /* SDMMC1_CKIN */
-					bias-pull-up;
-				};
-			};
-
-			sdmmc1_dir_sleep_pins_a: sdmmc1-dir-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('F', 2, ANALOG)>, /* SDMMC1_D0DIR */
-						 <STM32_PINMUX('C', 7, ANALOG)>, /* SDMMC1_D123DIR */
-						 <STM32_PINMUX('B', 9, ANALOG)>, /* SDMMC1_CDIR */
-						 <STM32_PINMUX('E', 4, ANALOG)>; /* SDMMC1_CKIN */
-				};
-			};
-
-			sdmmc2_b4_pins_a: sdmmc2-b4-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
-						 <STM32_PINMUX('B', 15, AF9)>, /* SDMMC2_D1 */
-						 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
-						 <STM32_PINMUX('B', 4, AF9)>, /* SDMMC2_D3 */
-						 <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
-					slew-rate = <1>;
-					drive-push-pull;
-					bias-pull-up;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('E', 3, AF9)>; /* SDMMC2_CK */
-					slew-rate = <2>;
-					drive-push-pull;
-					bias-pull-up;
-				};
-			};
-
-			sdmmc2_b4_od_pins_a: sdmmc2-b4-od-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
-						 <STM32_PINMUX('B', 15, AF9)>, /* SDMMC2_D1 */
-						 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
-						 <STM32_PINMUX('B', 4, AF9)>; /* SDMMC2_D3 */
-					slew-rate = <1>;
-					drive-push-pull;
-					bias-pull-up;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('E', 3, AF9)>; /* SDMMC2_CK */
-					slew-rate = <2>;
-					drive-push-pull;
-					bias-pull-up;
-				};
-				pins3 {
-					pinmux = <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
-					slew-rate = <1>;
-					drive-open-drain;
-					bias-pull-up;
-				};
-			};
-
-			sdmmc2_b4_sleep_pins_a: sdmmc2-b4-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('B', 14, ANALOG)>, /* SDMMC2_D0 */
-						 <STM32_PINMUX('B', 15, ANALOG)>, /* SDMMC2_D1 */
-						 <STM32_PINMUX('B', 3, ANALOG)>, /* SDMMC2_D2 */
-						 <STM32_PINMUX('B', 4, ANALOG)>, /* SDMMC2_D3 */
-						 <STM32_PINMUX('E', 3, ANALOG)>, /* SDMMC2_CK */
-						 <STM32_PINMUX('G', 6, ANALOG)>; /* SDMMC2_CMD */
-				};
-			};
-
-			sdmmc2_b4_pins_b: sdmmc2-b4-1 {
-				pins1 {
-					pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
-						 <STM32_PINMUX('B', 15, AF9)>, /* SDMMC2_D1 */
-						 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
-						 <STM32_PINMUX('B', 4, AF9)>, /* SDMMC2_D3 */
-						 <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
-					slew-rate = <1>;
-					drive-push-pull;
-					bias-disable;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('E', 3, AF9)>; /* SDMMC2_CK */
-					slew-rate = <2>;
-					drive-push-pull;
-					bias-disable;
-				};
-			};
-
-			sdmmc2_b4_od_pins_b: sdmmc2-b4-od-1 {
-				pins1 {
-					pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
-						 <STM32_PINMUX('B', 15, AF9)>, /* SDMMC2_D1 */
-						 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
-						 <STM32_PINMUX('B', 4, AF9)>; /* SDMMC2_D3 */
-					slew-rate = <1>;
-					drive-push-pull;
-					bias-disable;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('E', 3, AF9)>; /* SDMMC2_CK */
-					slew-rate = <2>;
-					drive-push-pull;
-					bias-disable;
-				};
-				pins3 {
-					pinmux = <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
-					slew-rate = <1>;
-					drive-open-drain;
-					bias-disable;
-				};
-			};
-
-			sdmmc2_d47_pins_a: sdmmc2-d47-0 {
-				pins {
-					pinmux = <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
-						 <STM32_PINMUX('A', 9, AF10)>, /* SDMMC2_D5 */
-						 <STM32_PINMUX('E', 5, AF9)>, /* SDMMC2_D6 */
-						 <STM32_PINMUX('D', 3, AF9)>; /* SDMMC2_D7 */
-					slew-rate = <1>;
-					drive-push-pull;
-					bias-pull-up;
-				};
-			};
-
-			sdmmc2_d47_sleep_pins_a: sdmmc2-d47-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('A', 8, ANALOG)>, /* SDMMC2_D4 */
-						 <STM32_PINMUX('A', 9, ANALOG)>, /* SDMMC2_D5 */
-						 <STM32_PINMUX('E', 5, ANALOG)>, /* SDMMC2_D6 */
-						 <STM32_PINMUX('D', 3, ANALOG)>; /* SDMMC2_D7 */
-				};
-			};
-
-			sdmmc3_b4_pins_a: sdmmc3-b4-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */
-						 <STM32_PINMUX('F', 4, AF9)>, /* SDMMC3_D1 */
-						 <STM32_PINMUX('F', 5, AF9)>, /* SDMMC3_D2 */
-						 <STM32_PINMUX('D', 7, AF10)>, /* SDMMC3_D3 */
-						 <STM32_PINMUX('F', 1, AF9)>; /* SDMMC3_CMD */
-					slew-rate = <1>;
-					drive-push-pull;
-					bias-pull-up;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('G', 15, AF10)>; /* SDMMC3_CK */
-					slew-rate = <2>;
-					drive-push-pull;
-					bias-pull-up;
-				};
-			};
-
-			sdmmc3_b4_od_pins_a: sdmmc3-b4-od-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */
-						 <STM32_PINMUX('F', 4, AF9)>, /* SDMMC3_D1 */
-						 <STM32_PINMUX('F', 5, AF9)>, /* SDMMC3_D2 */
-						 <STM32_PINMUX('D', 7, AF10)>; /* SDMMC3_D3 */
-					slew-rate = <1>;
-					drive-push-pull;
-					bias-pull-up;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('G', 15, AF10)>; /* SDMMC3_CK */
-					slew-rate = <2>;
-					drive-push-pull;
-					bias-pull-up;
-				};
-				pins3 {
-					pinmux = <STM32_PINMUX('F', 1, AF9)>; /* SDMMC2_CMD */
-					slew-rate = <1>;
-					drive-open-drain;
-					bias-pull-up;
-				};
-			};
-
-			sdmmc3_b4_sleep_pins_a: sdmmc3-b4-sleep-0 {
-				pins {
-					pinmux = <STM32_PINMUX('F', 0, ANALOG)>, /* SDMMC3_D0 */
-						 <STM32_PINMUX('F', 4, ANALOG)>, /* SDMMC3_D1 */
-						 <STM32_PINMUX('F', 5, ANALOG)>, /* SDMMC3_D2 */
-						 <STM32_PINMUX('D', 7, ANALOG)>, /* SDMMC3_D3 */
-						 <STM32_PINMUX('G', 15, ANALOG)>, /* SDMMC3_CK */
-						 <STM32_PINMUX('F', 1, ANALOG)>; /* SDMMC3_CMD */
-				};
-			};
-
-			spdifrx_pins_a: spdifrx-0 {
-				pins {
-					pinmux = <STM32_PINMUX('G', 12, AF8)>; /* SPDIF_IN1 */
-					bias-disable;
-				};
-			};
-
-			spdifrx_sleep_pins_a: spdifrx-1 {
-				pins {
-					pinmux = <STM32_PINMUX('G', 12, ANALOG)>; /* SPDIF_IN1 */
-				};
-			};
-
-			uart4_pins_a: uart4-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('G', 11, AF6)>; /* UART4_TX */
-					bias-disable;
-					drive-push-pull;
-					slew-rate = <0>;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
-					bias-disable;
-				};
-			};
-
-			uart4_pins_b: uart4-1 {
-				pins1 {
-					pinmux = <STM32_PINMUX('D', 1, AF8)>; /* UART4_TX */
-					bias-disable;
-					drive-push-pull;
-					slew-rate = <0>;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
-					bias-disable;
-				};
-			};
-
-			uart7_pins_a: uart7-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('E', 8, AF7)>; /* UART4_TX */
-					bias-disable;
-					drive-push-pull;
-					slew-rate = <0>;
-				};
-				pins2 {
-					pinmux = <STM32_PINMUX('E', 7, AF7)>, /* UART4_RX */
-						 <STM32_PINMUX('E', 10, AF7)>, /* UART4_CTS */
-						 <STM32_PINMUX('E', 9, AF7)>; /* UART4_RTS */
-					bias-disable;
-				};
-			};
-		};
-
-		pinctrl_z: pin-controller-z@54004000 {
-			#address-cells = <1>;
-			#size-cells = <1>;
-			compatible = "st,stm32mp157-z-pinctrl";
-			ranges = <0 0x54004000 0x400>;
-			pins-are-numbered;
-			interrupt-parent = <&exti>;
-			st,syscfg = <&exti 0x60 0xff>;
-
-			gpioz: gpio@54004000 {
-				gpio-controller;
-				#gpio-cells = <2>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				reg = <0 0x400>;
-				clocks = <&rcc GPIOZ>;
-				st,bank-name = "GPIOZ";
-				st,bank-ioport = <11>;
-				status = "disabled";
-			};
-
-			i2c2_pins_b2: i2c2-0 {
-				pins {
-					pinmux = <STM32_PINMUX('Z', 0, AF3)>; /* I2C2_SCL */
-					bias-disable;
-					drive-open-drain;
-					slew-rate = <0>;
-				};
-			};
-
-			i2c2_pins_sleep_b2: i2c2-1 {
-				pins {
-					pinmux = <STM32_PINMUX('Z', 0, ANALOG)>; /* I2C2_SCL */
-				};
-			};
-
-			i2c4_pins_a: i2c4-0 {
-				pins {
-					pinmux = <STM32_PINMUX('Z', 4, AF6)>, /* I2C4_SCL */
-						 <STM32_PINMUX('Z', 5, AF6)>; /* I2C4_SDA */
-					bias-disable;
-					drive-open-drain;
-					slew-rate = <0>;
-				};
-			};
-
-			i2c4_pins_sleep_a: i2c4-1 {
-				pins {
-					pinmux = <STM32_PINMUX('Z', 4, ANALOG)>, /* I2C4_SCL */
-						 <STM32_PINMUX('Z', 5, ANALOG)>; /* I2C4_SDA */
-				};
-			};
-
-			spi1_pins_a: spi1-0 {
-				pins1 {
-					pinmux = <STM32_PINMUX('Z', 0, AF5)>, /* SPI1_SCK */
-						 <STM32_PINMUX('Z', 2, AF5)>; /* SPI1_MOSI */
-					bias-disable;
-					drive-push-pull;
-					slew-rate = <1>;
-				};
-
-				pins2 {
-					pinmux = <STM32_PINMUX('Z', 1, AF5)>; /* SPI1_MISO */
-					bias-disable;
-				};
-			};
+&pinctrl {
+	adc1_in6_pins_a: adc1-in6 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 12, ANALOG)>;
+		};
+	};
+
+	adc12_ain_pins_a: adc12-ain-0 {
+		pins {
+			pinmux = <STM32_PINMUX('C', 3, ANALOG)>, /* ADC1 in13 */
+				 <STM32_PINMUX('F', 12, ANALOG)>, /* ADC1 in6 */
+				 <STM32_PINMUX('F', 13, ANALOG)>, /* ADC2 in2 */
+				 <STM32_PINMUX('F', 14, ANALOG)>; /* ADC2 in6 */
+		};
+	};
+
+	adc12_usb_cc_pins_a: adc12-usb-cc-pins-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 4, ANALOG)>, /* ADC12 in18 */
+				 <STM32_PINMUX('A', 5, ANALOG)>; /* ADC12 in19 */
+		};
+	};
+
+	cec_pins_a: cec-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 15, AF4)>;
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	cec_pins_sleep_a: cec-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 15, ANALOG)>; /* HDMI_CEC */
+		};
+	};
+
+	cec_pins_b: cec-1 {
+		pins {
+			pinmux = <STM32_PINMUX('B', 6, AF5)>;
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	cec_pins_sleep_b: cec-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('B', 6, ANALOG)>; /* HDMI_CEC */
+		};
+	};
+
+	dac_ch1_pins_a: dac-ch1 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 4, ANALOG)>;
+		};
+	};
+
+	dac_ch2_pins_a: dac-ch2 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 5, ANALOG)>;
+		};
+	};
+
+	dcmi_pins_a: dcmi-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 8,  AF13)>,/* DCMI_HSYNC */
+				 <STM32_PINMUX('B', 7,  AF13)>,/* DCMI_VSYNC */
+				 <STM32_PINMUX('A', 6,  AF13)>,/* DCMI_PIXCLK */
+				 <STM32_PINMUX('H', 9,  AF13)>,/* DCMI_D0 */
+				 <STM32_PINMUX('H', 10, AF13)>,/* DCMI_D1 */
+				 <STM32_PINMUX('H', 11, AF13)>,/* DCMI_D2 */
+				 <STM32_PINMUX('H', 12, AF13)>,/* DCMI_D3 */
+				 <STM32_PINMUX('H', 14, AF13)>,/* DCMI_D4 */
+				 <STM32_PINMUX('I', 4,  AF13)>,/* DCMI_D5 */
+				 <STM32_PINMUX('B', 8,  AF13)>,/* DCMI_D6 */
+				 <STM32_PINMUX('E', 6,  AF13)>,/* DCMI_D7 */
+				 <STM32_PINMUX('I', 1,  AF13)>,/* DCMI_D8 */
+				 <STM32_PINMUX('H', 7,  AF13)>,/* DCMI_D9 */
+				 <STM32_PINMUX('I', 3,  AF13)>,/* DCMI_D10 */
+				 <STM32_PINMUX('H', 15, AF13)>;/* DCMI_D11 */
+			bias-disable;
+		};
+	};
+
+	dcmi_sleep_pins_a: dcmi-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 8,  ANALOG)>,/* DCMI_HSYNC */
+				 <STM32_PINMUX('B', 7,  ANALOG)>,/* DCMI_VSYNC */
+				 <STM32_PINMUX('A', 6,  ANALOG)>,/* DCMI_PIXCLK */
+				 <STM32_PINMUX('H', 9,  ANALOG)>,/* DCMI_D0 */
+				 <STM32_PINMUX('H', 10, ANALOG)>,/* DCMI_D1 */
+				 <STM32_PINMUX('H', 11, ANALOG)>,/* DCMI_D2 */
+				 <STM32_PINMUX('H', 12, ANALOG)>,/* DCMI_D3 */
+				 <STM32_PINMUX('H', 14, ANALOG)>,/* DCMI_D4 */
+				 <STM32_PINMUX('I', 4,  ANALOG)>,/* DCMI_D5 */
+				 <STM32_PINMUX('B', 8,  ANALOG)>,/* DCMI_D6 */
+				 <STM32_PINMUX('E', 6,  ANALOG)>,/* DCMI_D7 */
+				 <STM32_PINMUX('I', 1,  ANALOG)>,/* DCMI_D8 */
+				 <STM32_PINMUX('H', 7,  ANALOG)>,/* DCMI_D9 */
+				 <STM32_PINMUX('I', 3,  ANALOG)>,/* DCMI_D10 */
+				 <STM32_PINMUX('H', 15, ANALOG)>;/* DCMI_D11 */
+		};
+	};
+
+	ethernet0_rgmii_pins_a: rgmii-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 5, AF11)>, /* ETH_RGMII_CLK125 */
+				 <STM32_PINMUX('G', 4, AF11)>, /* ETH_RGMII_GTX_CLK */
+				 <STM32_PINMUX('G', 13, AF11)>, /* ETH_RGMII_TXD0 */
+				 <STM32_PINMUX('G', 14, AF11)>, /* ETH_RGMII_TXD1 */
+				 <STM32_PINMUX('C', 2, AF11)>, /* ETH_RGMII_TXD2 */
+				 <STM32_PINMUX('E', 2, AF11)>, /* ETH_RGMII_TXD3 */
+				 <STM32_PINMUX('B', 11, AF11)>, /* ETH_RGMII_TX_CTL */
+				 <STM32_PINMUX('A', 2, AF11)>, /* ETH_MDIO */
+				 <STM32_PINMUX('C', 1, AF11)>; /* ETH_MDC */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <3>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('C', 4, AF11)>, /* ETH_RGMII_RXD0 */
+				 <STM32_PINMUX('C', 5, AF11)>, /* ETH_RGMII_RXD1 */
+				 <STM32_PINMUX('B', 0, AF11)>, /* ETH_RGMII_RXD2 */
+				 <STM32_PINMUX('B', 1, AF11)>, /* ETH_RGMII_RXD3 */
+				 <STM32_PINMUX('A', 1, AF11)>, /* ETH_RGMII_RX_CLK */
+				 <STM32_PINMUX('A', 7, AF11)>; /* ETH_RGMII_RX_CTL */
+			bias-disable;
+		};
+	};
+
+	ethernet0_rgmii_pins_sleep_a: rgmii-sleep-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 5, ANALOG)>, /* ETH_RGMII_CLK125 */
+				 <STM32_PINMUX('G', 4, ANALOG)>, /* ETH_RGMII_GTX_CLK */
+				 <STM32_PINMUX('G', 13, ANALOG)>, /* ETH_RGMII_TXD0 */
+				 <STM32_PINMUX('G', 14, ANALOG)>, /* ETH_RGMII_TXD1 */
+				 <STM32_PINMUX('C', 2, ANALOG)>, /* ETH_RGMII_TXD2 */
+				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_TXD3 */
+				 <STM32_PINMUX('B', 11, ANALOG)>, /* ETH_RGMII_TX_CTL */
+				 <STM32_PINMUX('A', 2, ANALOG)>, /* ETH_MDIO */
+				 <STM32_PINMUX('C', 1, ANALOG)>, /* ETH_MDC */
+				 <STM32_PINMUX('C', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
+				 <STM32_PINMUX('C', 5, ANALOG)>, /* ETH_RGMII_RXD1 */
+				 <STM32_PINMUX('B', 0, ANALOG)>, /* ETH_RGMII_RXD2 */
+				 <STM32_PINMUX('B', 1, ANALOG)>, /* ETH_RGMII_RXD3 */
+				 <STM32_PINMUX('A', 1, ANALOG)>, /* ETH_RGMII_RX_CLK */
+				 <STM32_PINMUX('A', 7, ANALOG)>; /* ETH_RGMII_RX_CTL */
+		};
+	};
+
+	fmc_pins_a: fmc-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('D', 4, AF12)>, /* FMC_NOE */
+				 <STM32_PINMUX('D', 5, AF12)>, /* FMC_NWE */
+				 <STM32_PINMUX('D', 11, AF12)>, /* FMC_A16_FMC_CLE */
+				 <STM32_PINMUX('D', 12, AF12)>, /* FMC_A17_FMC_ALE */
+				 <STM32_PINMUX('D', 14, AF12)>, /* FMC_D0 */
+				 <STM32_PINMUX('D', 15, AF12)>, /* FMC_D1 */
+				 <STM32_PINMUX('D', 0, AF12)>, /* FMC_D2 */
+				 <STM32_PINMUX('D', 1, AF12)>, /* FMC_D3 */
+				 <STM32_PINMUX('E', 7, AF12)>, /* FMC_D4 */
+				 <STM32_PINMUX('E', 8, AF12)>, /* FMC_D5 */
+				 <STM32_PINMUX('E', 9, AF12)>, /* FMC_D6 */
+				 <STM32_PINMUX('E', 10, AF12)>, /* FMC_D7 */
+				 <STM32_PINMUX('G', 9, AF12)>; /* FMC_NE2_FMC_NCE */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('D', 6, AF12)>; /* FMC_NWAIT */
+			bias-pull-up;
+		};
+	};
+
+	fmc_sleep_pins_a: fmc-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 4, ANALOG)>, /* FMC_NOE */
+				 <STM32_PINMUX('D', 5, ANALOG)>, /* FMC_NWE */
+				 <STM32_PINMUX('D', 11, ANALOG)>, /* FMC_A16_FMC_CLE */
+				 <STM32_PINMUX('D', 12, ANALOG)>, /* FMC_A17_FMC_ALE */
+				 <STM32_PINMUX('D', 14, ANALOG)>, /* FMC_D0 */
+				 <STM32_PINMUX('D', 15, ANALOG)>, /* FMC_D1 */
+				 <STM32_PINMUX('D', 0, ANALOG)>, /* FMC_D2 */
+				 <STM32_PINMUX('D', 1, ANALOG)>, /* FMC_D3 */
+				 <STM32_PINMUX('E', 7, ANALOG)>, /* FMC_D4 */
+				 <STM32_PINMUX('E', 8, ANALOG)>, /* FMC_D5 */
+				 <STM32_PINMUX('E', 9, ANALOG)>, /* FMC_D6 */
+				 <STM32_PINMUX('E', 10, ANALOG)>, /* FMC_D7 */
+				 <STM32_PINMUX('D', 6, ANALOG)>, /* FMC_NWAIT */
+				 <STM32_PINMUX('G', 9, ANALOG)>; /* FMC_NE2_FMC_NCE */
+		};
+	};
+
+	i2c1_pins_a: i2c1-0 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 12, AF5)>, /* I2C1_SCL */
+				 <STM32_PINMUX('F', 15, AF5)>; /* I2C1_SDA */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	i2c1_pins_sleep_a: i2c1-1 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 12, ANALOG)>, /* I2C1_SCL */
+				 <STM32_PINMUX('F', 15, ANALOG)>; /* I2C1_SDA */
+		};
+	};
+
+	i2c1_pins_b: i2c1-2 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 14, AF5)>, /* I2C1_SCL */
+				 <STM32_PINMUX('F', 15, AF5)>; /* I2C1_SDA */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	i2c1_pins_sleep_b: i2c1-3 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 14, ANALOG)>, /* I2C1_SCL */
+				 <STM32_PINMUX('F', 15, ANALOG)>; /* I2C1_SDA */
+		};
+	};
+
+	i2c2_pins_a: i2c2-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 4, AF4)>, /* I2C2_SCL */
+				 <STM32_PINMUX('H', 5, AF4)>; /* I2C2_SDA */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	i2c2_pins_sleep_a: i2c2-1 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 4, ANALOG)>, /* I2C2_SCL */
+				 <STM32_PINMUX('H', 5, ANALOG)>; /* I2C2_SDA */
+		};
+	};
+
+	i2c2_pins_b1: i2c2-2 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 5, AF4)>; /* I2C2_SDA */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	i2c2_pins_sleep_b1: i2c2-3 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 5, ANALOG)>; /* I2C2_SDA */
+		};
+	};
+
+	i2c5_pins_a: i2c5-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 11, AF4)>, /* I2C5_SCL */
+				 <STM32_PINMUX('A', 12, AF4)>; /* I2C5_SDA */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	i2c5_pins_sleep_a: i2c5-1 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 11, ANALOG)>, /* I2C5_SCL */
+				 <STM32_PINMUX('A', 12, ANALOG)>; /* I2C5_SDA */
+
+		};
+	};
+
+	i2s2_pins_a: i2s2-0 {
+		pins {
+			pinmux = <STM32_PINMUX('I', 3, AF5)>, /* I2S2_SDO */
+				 <STM32_PINMUX('B', 9, AF5)>, /* I2S2_WS */
+				 <STM32_PINMUX('A', 9, AF5)>; /* I2S2_CK */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-disable;
+		};
+	};
+
+	i2s2_pins_sleep_a: i2s2-1 {
+		pins {
+			pinmux = <STM32_PINMUX('I', 3, ANALOG)>, /* I2S2_SDO */
+				 <STM32_PINMUX('B', 9, ANALOG)>, /* I2S2_WS */
+				 <STM32_PINMUX('A', 9, ANALOG)>; /* I2S2_CK */
+		};
+	};
+
+	ltdc_pins_a: ltdc-a-0 {
+		pins {
+			pinmux = <STM32_PINMUX('G',  7, AF14)>, /* LCD_CLK */
+				 <STM32_PINMUX('I', 10, AF14)>, /* LCD_HSYNC */
+				 <STM32_PINMUX('I',  9, AF14)>, /* LCD_VSYNC */
+				 <STM32_PINMUX('F', 10, AF14)>, /* LCD_DE */
+				 <STM32_PINMUX('H',  2, AF14)>, /* LCD_R0 */
+				 <STM32_PINMUX('H',  3, AF14)>, /* LCD_R1 */
+				 <STM32_PINMUX('H',  8, AF14)>, /* LCD_R2 */
+				 <STM32_PINMUX('H',  9, AF14)>, /* LCD_R3 */
+				 <STM32_PINMUX('H', 10, AF14)>, /* LCD_R4 */
+				 <STM32_PINMUX('C',  0, AF14)>, /* LCD_R5 */
+				 <STM32_PINMUX('H', 12, AF14)>, /* LCD_R6 */
+				 <STM32_PINMUX('E', 15, AF14)>, /* LCD_R7 */
+				 <STM32_PINMUX('E',  5, AF14)>, /* LCD_G0 */
+				 <STM32_PINMUX('E',  6, AF14)>, /* LCD_G1 */
+				 <STM32_PINMUX('H', 13, AF14)>, /* LCD_G2 */
+				 <STM32_PINMUX('H', 14, AF14)>, /* LCD_G3 */
+				 <STM32_PINMUX('H', 15, AF14)>, /* LCD_G4 */
+				 <STM32_PINMUX('I',  0, AF14)>, /* LCD_G5 */
+				 <STM32_PINMUX('I',  1, AF14)>, /* LCD_G6 */
+				 <STM32_PINMUX('I',  2, AF14)>, /* LCD_G7 */
+				 <STM32_PINMUX('D',  9, AF14)>, /* LCD_B0 */
+				 <STM32_PINMUX('G', 12, AF14)>, /* LCD_B1 */
+				 <STM32_PINMUX('G', 10, AF14)>, /* LCD_B2 */
+				 <STM32_PINMUX('D', 10, AF14)>, /* LCD_B3 */
+				 <STM32_PINMUX('I',  4, AF14)>, /* LCD_B4 */
+				 <STM32_PINMUX('A',  3, AF14)>, /* LCD_B5 */
+				 <STM32_PINMUX('B',  8, AF14)>, /* LCD_B6 */
+				 <STM32_PINMUX('D',  8, AF14)>; /* LCD_B7 */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+	};
+
+	ltdc_pins_sleep_a: ltdc-a-1 {
+		pins {
+			pinmux = <STM32_PINMUX('G',  7, ANALOG)>, /* LCD_CLK */
+				 <STM32_PINMUX('I', 10, ANALOG)>, /* LCD_HSYNC */
+				 <STM32_PINMUX('I',  9, ANALOG)>, /* LCD_VSYNC */
+				 <STM32_PINMUX('F', 10, ANALOG)>, /* LCD_DE */
+				 <STM32_PINMUX('H',  2, ANALOG)>, /* LCD_R0 */
+				 <STM32_PINMUX('H',  3, ANALOG)>, /* LCD_R1 */
+				 <STM32_PINMUX('H',  8, ANALOG)>, /* LCD_R2 */
+				 <STM32_PINMUX('H',  9, ANALOG)>, /* LCD_R3 */
+				 <STM32_PINMUX('H', 10, ANALOG)>, /* LCD_R4 */
+				 <STM32_PINMUX('C',  0, ANALOG)>, /* LCD_R5 */
+				 <STM32_PINMUX('H', 12, ANALOG)>, /* LCD_R6 */
+				 <STM32_PINMUX('E', 15, ANALOG)>, /* LCD_R7 */
+				 <STM32_PINMUX('E',  5, ANALOG)>, /* LCD_G0 */
+				 <STM32_PINMUX('E',  6, ANALOG)>, /* LCD_G1 */
+				 <STM32_PINMUX('H', 13, ANALOG)>, /* LCD_G2 */
+				 <STM32_PINMUX('H', 14, ANALOG)>, /* LCD_G3 */
+				 <STM32_PINMUX('H', 15, ANALOG)>, /* LCD_G4 */
+				 <STM32_PINMUX('I',  0, ANALOG)>, /* LCD_G5 */
+				 <STM32_PINMUX('I',  1, ANALOG)>, /* LCD_G6 */
+				 <STM32_PINMUX('I',  2, ANALOG)>, /* LCD_G7 */
+				 <STM32_PINMUX('D',  9, ANALOG)>, /* LCD_B0 */
+				 <STM32_PINMUX('G', 12, ANALOG)>, /* LCD_B1 */
+				 <STM32_PINMUX('G', 10, ANALOG)>, /* LCD_B2 */
+				 <STM32_PINMUX('D', 10, ANALOG)>, /* LCD_B3 */
+				 <STM32_PINMUX('I',  4, ANALOG)>, /* LCD_B4 */
+				 <STM32_PINMUX('A',  3, ANALOG)>, /* LCD_B5 */
+				 <STM32_PINMUX('B',  8, ANALOG)>, /* LCD_B6 */
+				 <STM32_PINMUX('D',  8, ANALOG)>; /* LCD_B7 */
+		};
+	};
+
+	ltdc_pins_b: ltdc-b-0 {
+		pins {
+			pinmux = <STM32_PINMUX('I', 14, AF14)>, /* LCD_CLK */
+				 <STM32_PINMUX('I', 12, AF14)>, /* LCD_HSYNC */
+				 <STM32_PINMUX('I', 13, AF14)>, /* LCD_VSYNC */
+				 <STM32_PINMUX('K',  7, AF14)>, /* LCD_DE */
+				 <STM32_PINMUX('I', 15, AF14)>, /* LCD_R0 */
+				 <STM32_PINMUX('J',  0, AF14)>, /* LCD_R1 */
+				 <STM32_PINMUX('J',  1, AF14)>, /* LCD_R2 */
+				 <STM32_PINMUX('J',  2, AF14)>, /* LCD_R3 */
+				 <STM32_PINMUX('J',  3, AF14)>, /* LCD_R4 */
+				 <STM32_PINMUX('J',  4, AF14)>, /* LCD_R5 */
+				 <STM32_PINMUX('J',  5, AF14)>, /* LCD_R6 */
+				 <STM32_PINMUX('J',  6, AF14)>, /* LCD_R7 */
+				 <STM32_PINMUX('J',  7, AF14)>, /* LCD_G0 */
+				 <STM32_PINMUX('J',  8, AF14)>, /* LCD_G1 */
+				 <STM32_PINMUX('J',  9, AF14)>, /* LCD_G2 */
+				 <STM32_PINMUX('J', 10, AF14)>, /* LCD_G3 */
+				 <STM32_PINMUX('J', 11, AF14)>, /* LCD_G4 */
+				 <STM32_PINMUX('K',  0, AF14)>, /* LCD_G5 */
+				 <STM32_PINMUX('K',  1, AF14)>, /* LCD_G6 */
+				 <STM32_PINMUX('K',  2, AF14)>, /* LCD_G7 */
+				 <STM32_PINMUX('J', 12, AF14)>, /* LCD_B0 */
+				 <STM32_PINMUX('J', 13, AF14)>, /* LCD_B1 */
+				 <STM32_PINMUX('J', 14, AF14)>, /* LCD_B2 */
+				 <STM32_PINMUX('J', 15, AF14)>, /* LCD_B3 */
+				 <STM32_PINMUX('K',  3, AF14)>, /* LCD_B4 */
+				 <STM32_PINMUX('K',  4, AF14)>, /* LCD_B5 */
+				 <STM32_PINMUX('K',  5, AF14)>, /* LCD_B6 */
+				 <STM32_PINMUX('K',  6, AF14)>; /* LCD_B7 */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+	};
+
+	ltdc_pins_sleep_b: ltdc-b-1 {
+		pins {
+			pinmux = <STM32_PINMUX('I', 14, ANALOG)>, /* LCD_CLK */
+				 <STM32_PINMUX('I', 12, ANALOG)>, /* LCD_HSYNC */
+				 <STM32_PINMUX('I', 13, ANALOG)>, /* LCD_VSYNC */
+				 <STM32_PINMUX('K',  7, ANALOG)>, /* LCD_DE */
+				 <STM32_PINMUX('I', 15, ANALOG)>, /* LCD_R0 */
+				 <STM32_PINMUX('J',  0, ANALOG)>, /* LCD_R1 */
+				 <STM32_PINMUX('J',  1, ANALOG)>, /* LCD_R2 */
+				 <STM32_PINMUX('J',  2, ANALOG)>, /* LCD_R3 */
+				 <STM32_PINMUX('J',  3, ANALOG)>, /* LCD_R4 */
+				 <STM32_PINMUX('J',  4, ANALOG)>, /* LCD_R5 */
+				 <STM32_PINMUX('J',  5, ANALOG)>, /* LCD_R6 */
+				 <STM32_PINMUX('J',  6, ANALOG)>, /* LCD_R7 */
+				 <STM32_PINMUX('J',  7, ANALOG)>, /* LCD_G0 */
+				 <STM32_PINMUX('J',  8, ANALOG)>, /* LCD_G1 */
+				 <STM32_PINMUX('J',  9, ANALOG)>, /* LCD_G2 */
+				 <STM32_PINMUX('J', 10, ANALOG)>, /* LCD_G3 */
+				 <STM32_PINMUX('J', 11, ANALOG)>, /* LCD_G4 */
+				 <STM32_PINMUX('K',  0, ANALOG)>, /* LCD_G5 */
+				 <STM32_PINMUX('K',  1, ANALOG)>, /* LCD_G6 */
+				 <STM32_PINMUX('K',  2, ANALOG)>, /* LCD_G7 */
+				 <STM32_PINMUX('J', 12, ANALOG)>, /* LCD_B0 */
+				 <STM32_PINMUX('J', 13, ANALOG)>, /* LCD_B1 */
+				 <STM32_PINMUX('J', 14, ANALOG)>, /* LCD_B2 */
+				 <STM32_PINMUX('J', 15, ANALOG)>, /* LCD_B3 */
+				 <STM32_PINMUX('K',  3, ANALOG)>, /* LCD_B4 */
+				 <STM32_PINMUX('K',  4, ANALOG)>, /* LCD_B5 */
+				 <STM32_PINMUX('K',  5, ANALOG)>, /* LCD_B6 */
+				 <STM32_PINMUX('K',  6, ANALOG)>; /* LCD_B7 */
+		};
+	};
+
+	m_can1_pins_a: m-can1-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('H', 13, AF9)>; /* CAN1_TX */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-disable;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('I', 9, AF9)>; /* CAN1_RX */
+			bias-disable;
+		};
+	};
+
+	m_can1_sleep_pins_a: m_can1-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 13, ANALOG)>, /* CAN1_TX */
+				 <STM32_PINMUX('I', 9, ANALOG)>; /* CAN1_RX */
+		};
+	};
+
+	pwm1_pins_a: pwm1-0 {
+		pins {
+			pinmux = <STM32_PINMUX('E', 9, AF1)>, /* TIM1_CH1 */
+				 <STM32_PINMUX('E', 11, AF1)>, /* TIM1_CH2 */
+				 <STM32_PINMUX('E', 14, AF1)>; /* TIM1_CH4 */
+			bias-pull-down;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	pwm1_sleep_pins_a: pwm1-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('E', 9, ANALOG)>, /* TIM1_CH1 */
+				 <STM32_PINMUX('E', 11, ANALOG)>, /* TIM1_CH2 */
+				 <STM32_PINMUX('E', 14, ANALOG)>; /* TIM1_CH4 */
+		};
+	};
+
+	pwm2_pins_a: pwm2-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 3, AF1)>; /* TIM2_CH4 */
+			bias-pull-down;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	pwm2_sleep_pins_a: pwm2-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 3, ANALOG)>; /* TIM2_CH4 */
+		};
+	};
+
+	pwm3_pins_a: pwm3-0 {
+		pins {
+			pinmux = <STM32_PINMUX('C', 7, AF2)>; /* TIM3_CH2 */
+			bias-pull-down;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	pwm3_sleep_pins_a: pwm3-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('C', 7, ANALOG)>; /* TIM3_CH2 */
+		};
+	};
+
+	pwm4_pins_a: pwm4-0 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 14, AF2)>, /* TIM4_CH3 */
+				 <STM32_PINMUX('D', 15, AF2)>; /* TIM4_CH4 */
+			bias-pull-down;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	pwm4_sleep_pins_a: pwm4-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 14, ANALOG)>, /* TIM4_CH3 */
+				 <STM32_PINMUX('D', 15, ANALOG)>; /* TIM4_CH4 */
+		};
+	};
+
+	pwm4_pins_b: pwm4-1 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 13, AF2)>; /* TIM4_CH2 */
+			bias-pull-down;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	pwm4_sleep_pins_b: pwm4-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 13, ANALOG)>; /* TIM4_CH2 */
+		};
+	};
+
+	pwm5_pins_a: pwm5-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 11, AF2)>; /* TIM5_CH2 */
+			bias-pull-down;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	pwm5_sleep_pins_a: pwm5-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 11, ANALOG)>; /* TIM5_CH2 */
+		};
+	};
+
+	pwm8_pins_a: pwm8-0 {
+		pins {
+			pinmux = <STM32_PINMUX('I', 2, AF3)>; /* TIM8_CH4 */
+			bias-pull-down;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	pwm8_sleep_pins_a: pwm8-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('I', 2, ANALOG)>; /* TIM8_CH4 */
+		};
+	};
+
+	pwm12_pins_a: pwm12-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 6, AF2)>; /* TIM12_CH1 */
+			bias-pull-down;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	pwm12_sleep_pins_a: pwm12-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 6, ANALOG)>; /* TIM12_CH1 */
+		};
+	};
+
+	qspi_clk_pins_a: qspi-clk-0 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 10, AF9)>; /* QSPI_CLK */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <3>;
+		};
+	};
+
+	qspi_clk_sleep_pins_a: qspi-clk-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 10, ANALOG)>; /* QSPI_CLK */
+		};
+	};
+
+	qspi_bk1_pins_a: qspi-bk1-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 8, AF10)>, /* QSPI_BK1_IO0 */
+				 <STM32_PINMUX('F', 9, AF10)>, /* QSPI_BK1_IO1 */
+				 <STM32_PINMUX('F', 7, AF9)>, /* QSPI_BK1_IO2 */
+				 <STM32_PINMUX('F', 6, AF9)>; /* QSPI_BK1_IO3 */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('B', 6, AF10)>; /* QSPI_BK1_NCS */
+			bias-pull-up;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+	};
+
+	qspi_bk1_sleep_pins_a: qspi-bk1-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 8, ANALOG)>, /* QSPI_BK1_IO0 */
+				 <STM32_PINMUX('F', 9, ANALOG)>, /* QSPI_BK1_IO1 */
+				 <STM32_PINMUX('F', 7, ANALOG)>, /* QSPI_BK1_IO2 */
+				 <STM32_PINMUX('F', 6, ANALOG)>, /* QSPI_BK1_IO3 */
+				 <STM32_PINMUX('B', 6, ANALOG)>; /* QSPI_BK1_NCS */
+		};
+	};
+
+	qspi_bk2_pins_a: qspi-bk2-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('H', 2, AF9)>, /* QSPI_BK2_IO0 */
+				 <STM32_PINMUX('H', 3, AF9)>, /* QSPI_BK2_IO1 */
+				 <STM32_PINMUX('G', 10, AF11)>, /* QSPI_BK2_IO2 */
+				 <STM32_PINMUX('G', 7, AF11)>; /* QSPI_BK2_IO3 */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('C', 0, AF10)>; /* QSPI_BK2_NCS */
+			bias-pull-up;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+	};
+
+	qspi_bk2_sleep_pins_a: qspi-bk2-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 2, ANALOG)>, /* QSPI_BK2_IO0 */
+				 <STM32_PINMUX('H', 3, ANALOG)>, /* QSPI_BK2_IO1 */
+				 <STM32_PINMUX('G', 10, ANALOG)>, /* QSPI_BK2_IO2 */
+				 <STM32_PINMUX('G', 7, ANALOG)>, /* QSPI_BK2_IO3 */
+				 <STM32_PINMUX('C', 0, ANALOG)>; /* QSPI_BK2_NCS */
+		};
+	};
+
+	sai2a_pins_a: sai2a-0 {
+		pins {
+			pinmux = <STM32_PINMUX('I', 5, AF10)>, /* SAI2_SCK_A */
+				 <STM32_PINMUX('I', 6, AF10)>, /* SAI2_SD_A */
+				 <STM32_PINMUX('I', 7, AF10)>, /* SAI2_FS_A */
+				 <STM32_PINMUX('E', 0, AF10)>; /* SAI2_MCLK_A */
+			slew-rate = <0>;
+			drive-push-pull;
+			bias-disable;
+		};
+	};
+
+	sai2a_sleep_pins_a: sai2a-1 {
+		pins {
+			pinmux = <STM32_PINMUX('I', 5, ANALOG)>, /* SAI2_SCK_A */
+				 <STM32_PINMUX('I', 6, ANALOG)>, /* SAI2_SD_A */
+				 <STM32_PINMUX('I', 7, ANALOG)>, /* SAI2_FS_A */
+				 <STM32_PINMUX('E', 0, ANALOG)>; /* SAI2_MCLK_A */
+		};
+	};
+
+	sai2b_pins_a: sai2b-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('E', 12, AF10)>, /* SAI2_SCK_B */
+				 <STM32_PINMUX('E', 13, AF10)>, /* SAI2_FS_B */
+				 <STM32_PINMUX('E', 14, AF10)>; /* SAI2_MCLK_B */
+			slew-rate = <0>;
+			drive-push-pull;
+			bias-disable;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('F', 11, AF10)>; /* SAI2_SD_B */
+			bias-disable;
+		};
+	};
+
+	sai2b_sleep_pins_a: sai2b-1 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 11, ANALOG)>, /* SAI2_SD_B */
+				 <STM32_PINMUX('E', 12, ANALOG)>, /* SAI2_SCK_B */
+				 <STM32_PINMUX('E', 13, ANALOG)>, /* SAI2_FS_B */
+				 <STM32_PINMUX('E', 14, ANALOG)>; /* SAI2_MCLK_B */
+		};
+	};
+
+	sai2b_pins_b: sai2b-2 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 11, AF10)>; /* SAI2_SD_B */
+			bias-disable;
+		};
+	};
+
+	sai2b_sleep_pins_b: sai2b-3 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 11, ANALOG)>; /* SAI2_SD_B */
+		};
+	};
+
+	sai4a_pins_a: sai4a-0 {
+		pins {
+			pinmux = <STM32_PINMUX('B', 5, AF10)>; /* SAI4_SD_A */
+			slew-rate = <0>;
+			drive-push-pull;
+			bias-disable;
+		};
+	};
+
+	sai4a_sleep_pins_a: sai4a-1 {
+		pins {
+			pinmux = <STM32_PINMUX('B', 5, ANALOG)>; /* SAI4_SD_A */
+		};
+	};
+
+	sdmmc1_b4_pins_a: sdmmc1-b4-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1_D0 */
+				 <STM32_PINMUX('C', 9, AF12)>, /* SDMMC1_D1 */
+				 <STM32_PINMUX('C', 10, AF12)>, /* SDMMC1_D2 */
+				 <STM32_PINMUX('C', 11, AF12)>, /* SDMMC1_D3 */
+				 <STM32_PINMUX('D', 2, AF12)>; /* SDMMC1_CMD */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-disable;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('C', 12, AF12)>; /* SDMMC1_CK */
+			slew-rate = <2>;
+			drive-push-pull;
+			bias-disable;
+		};
+	};
+
+	sdmmc1_b4_od_pins_a: sdmmc1-b4-od-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1_D0 */
+				 <STM32_PINMUX('C', 9, AF12)>, /* SDMMC1_D1 */
+				 <STM32_PINMUX('C', 10, AF12)>, /* SDMMC1_D2 */
+				 <STM32_PINMUX('C', 11, AF12)>; /* SDMMC1_D3 */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-disable;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('C', 12, AF12)>; /* SDMMC1_CK */
+			slew-rate = <2>;
+			drive-push-pull;
+			bias-disable;
+		};
+		pins3 {
+			pinmux = <STM32_PINMUX('D', 2, AF12)>; /* SDMMC1_CMD */
+			slew-rate = <1>;
+			drive-open-drain;
+			bias-disable;
+		};
+	};
+
+	sdmmc1_b4_sleep_pins_a: sdmmc1-b4-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('C', 8, ANALOG)>, /* SDMMC1_D0 */
+				 <STM32_PINMUX('C', 9, ANALOG)>, /* SDMMC1_D1 */
+				 <STM32_PINMUX('C', 10, ANALOG)>, /* SDMMC1_D2 */
+				 <STM32_PINMUX('C', 11, ANALOG)>, /* SDMMC1_D3 */
+				 <STM32_PINMUX('C', 12, ANALOG)>, /* SDMMC1_CK */
+				 <STM32_PINMUX('D', 2, ANALOG)>; /* SDMMC1_CMD */
+		};
+	};
+
+	sdmmc1_dir_pins_a: sdmmc1-dir-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 2, AF11)>, /* SDMMC1_D0DIR */
+				 <STM32_PINMUX('C', 7, AF8)>, /* SDMMC1_D123DIR */
+				 <STM32_PINMUX('B', 9, AF11)>; /* SDMMC1_CDIR */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+		pins2{
+			pinmux = <STM32_PINMUX('E', 4, AF8)>; /* SDMMC1_CKIN */
+			bias-pull-up;
+		};
+	};
+
+	sdmmc1_dir_sleep_pins_a: sdmmc1-dir-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 2, ANALOG)>, /* SDMMC1_D0DIR */
+				 <STM32_PINMUX('C', 7, ANALOG)>, /* SDMMC1_D123DIR */
+				 <STM32_PINMUX('B', 9, ANALOG)>, /* SDMMC1_CDIR */
+				 <STM32_PINMUX('E', 4, ANALOG)>; /* SDMMC1_CKIN */
+		};
+	};
+
+	sdmmc2_b4_pins_a: sdmmc2-b4-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
+				 <STM32_PINMUX('B', 15, AF9)>, /* SDMMC2_D1 */
+				 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
+				 <STM32_PINMUX('B', 4, AF9)>, /* SDMMC2_D3 */
+				 <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('E', 3, AF9)>; /* SDMMC2_CK */
+			slew-rate = <2>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+	};
+
+	sdmmc2_b4_od_pins_a: sdmmc2-b4-od-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
+				 <STM32_PINMUX('B', 15, AF9)>, /* SDMMC2_D1 */
+				 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
+				 <STM32_PINMUX('B', 4, AF9)>; /* SDMMC2_D3 */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('E', 3, AF9)>; /* SDMMC2_CK */
+			slew-rate = <2>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+		pins3 {
+			pinmux = <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
+			slew-rate = <1>;
+			drive-open-drain;
+			bias-pull-up;
+		};
+	};
+
+	sdmmc2_b4_sleep_pins_a: sdmmc2-b4-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('B', 14, ANALOG)>, /* SDMMC2_D0 */
+				 <STM32_PINMUX('B', 15, ANALOG)>, /* SDMMC2_D1 */
+				 <STM32_PINMUX('B', 3, ANALOG)>, /* SDMMC2_D2 */
+				 <STM32_PINMUX('B', 4, ANALOG)>, /* SDMMC2_D3 */
+				 <STM32_PINMUX('E', 3, ANALOG)>, /* SDMMC2_CK */
+				 <STM32_PINMUX('G', 6, ANALOG)>; /* SDMMC2_CMD */
+		};
+	};
+
+	sdmmc2_b4_pins_b: sdmmc2-b4-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
+				 <STM32_PINMUX('B', 15, AF9)>, /* SDMMC2_D1 */
+				 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
+				 <STM32_PINMUX('B', 4, AF9)>, /* SDMMC2_D3 */
+				 <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-disable;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('E', 3, AF9)>; /* SDMMC2_CK */
+			slew-rate = <2>;
+			drive-push-pull;
+			bias-disable;
+		};
+	};
+
+	sdmmc2_b4_od_pins_b: sdmmc2-b4-od-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
+				 <STM32_PINMUX('B', 15, AF9)>, /* SDMMC2_D1 */
+				 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
+				 <STM32_PINMUX('B', 4, AF9)>; /* SDMMC2_D3 */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-disable;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('E', 3, AF9)>; /* SDMMC2_CK */
+			slew-rate = <2>;
+			drive-push-pull;
+			bias-disable;
+		};
+		pins3 {
+			pinmux = <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
+			slew-rate = <1>;
+			drive-open-drain;
+			bias-disable;
+		};
+	};
+
+	sdmmc2_d47_pins_a: sdmmc2-d47-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
+				 <STM32_PINMUX('A', 9, AF10)>, /* SDMMC2_D5 */
+				 <STM32_PINMUX('E', 5, AF9)>, /* SDMMC2_D6 */
+				 <STM32_PINMUX('D', 3, AF9)>; /* SDMMC2_D7 */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+	};
+
+	sdmmc2_d47_sleep_pins_a: sdmmc2-d47-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 8, ANALOG)>, /* SDMMC2_D4 */
+				 <STM32_PINMUX('A', 9, ANALOG)>, /* SDMMC2_D5 */
+				 <STM32_PINMUX('E', 5, ANALOG)>, /* SDMMC2_D6 */
+				 <STM32_PINMUX('D', 3, ANALOG)>; /* SDMMC2_D7 */
+		};
+	};
+
+	sdmmc3_b4_pins_a: sdmmc3-b4-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */
+				 <STM32_PINMUX('F', 4, AF9)>, /* SDMMC3_D1 */
+				 <STM32_PINMUX('F', 5, AF9)>, /* SDMMC3_D2 */
+				 <STM32_PINMUX('D', 7, AF10)>, /* SDMMC3_D3 */
+				 <STM32_PINMUX('F', 1, AF9)>; /* SDMMC3_CMD */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('G', 15, AF10)>; /* SDMMC3_CK */
+			slew-rate = <2>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+	};
+
+	sdmmc3_b4_od_pins_a: sdmmc3-b4-od-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */
+				 <STM32_PINMUX('F', 4, AF9)>, /* SDMMC3_D1 */
+				 <STM32_PINMUX('F', 5, AF9)>, /* SDMMC3_D2 */
+				 <STM32_PINMUX('D', 7, AF10)>; /* SDMMC3_D3 */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('G', 15, AF10)>; /* SDMMC3_CK */
+			slew-rate = <2>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+		pins3 {
+			pinmux = <STM32_PINMUX('F', 1, AF9)>; /* SDMMC2_CMD */
+			slew-rate = <1>;
+			drive-open-drain;
+			bias-pull-up;
+		};
+	};
+
+	sdmmc3_b4_sleep_pins_a: sdmmc3-b4-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 0, ANALOG)>, /* SDMMC3_D0 */
+				 <STM32_PINMUX('F', 4, ANALOG)>, /* SDMMC3_D1 */
+				 <STM32_PINMUX('F', 5, ANALOG)>, /* SDMMC3_D2 */
+				 <STM32_PINMUX('D', 7, ANALOG)>, /* SDMMC3_D3 */
+				 <STM32_PINMUX('G', 15, ANALOG)>, /* SDMMC3_CK */
+				 <STM32_PINMUX('F', 1, ANALOG)>; /* SDMMC3_CMD */
+		};
+	};
+
+	spdifrx_pins_a: spdifrx-0 {
+		pins {
+			pinmux = <STM32_PINMUX('G', 12, AF8)>; /* SPDIF_IN1 */
+			bias-disable;
+		};
+	};
+
+	spdifrx_sleep_pins_a: spdifrx-1 {
+		pins {
+			pinmux = <STM32_PINMUX('G', 12, ANALOG)>; /* SPDIF_IN1 */
+		};
+	};
+
+	uart4_pins_a: uart4-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 11, AF6)>; /* UART4_TX */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
+			bias-disable;
+		};
+	};
+
+	uart4_pins_b: uart4-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('D', 1, AF8)>; /* UART4_TX */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
+			bias-disable;
+		};
+	};
+
+	uart7_pins_a: uart7-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('E', 8, AF7)>; /* UART4_TX */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('E', 7, AF7)>, /* UART4_RX */
+				 <STM32_PINMUX('E', 10, AF7)>, /* UART4_CTS */
+				 <STM32_PINMUX('E', 9, AF7)>; /* UART4_RTS */
+			bias-disable;
+		};
+	};
+};
+
+&pinctrl_z {
+	i2c2_pins_b2: i2c2-0 {
+		pins {
+			pinmux = <STM32_PINMUX('Z', 0, AF3)>; /* I2C2_SCL */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	i2c2_pins_sleep_b2: i2c2-1 {
+		pins {
+			pinmux = <STM32_PINMUX('Z', 0, ANALOG)>; /* I2C2_SCL */
+		};
+	};
+
+	i2c4_pins_a: i2c4-0 {
+		pins {
+			pinmux = <STM32_PINMUX('Z', 4, AF6)>, /* I2C4_SCL */
+				 <STM32_PINMUX('Z', 5, AF6)>; /* I2C4_SDA */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	i2c4_pins_sleep_a: i2c4-1 {
+		pins {
+			pinmux = <STM32_PINMUX('Z', 4, ANALOG)>, /* I2C4_SCL */
+				 <STM32_PINMUX('Z', 5, ANALOG)>; /* I2C4_SDA */
+		};
+	};
+
+	spi1_pins_a: spi1-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('Z', 0, AF5)>, /* SPI1_SCK */
+				 <STM32_PINMUX('Z', 2, AF5)>; /* SPI1_MOSI */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+
+		pins2 {
+			pinmux = <STM32_PINMUX('Z', 1, AF5)>; /* SPI1_MISO */
+			bias-disable;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index d3a9791a0fda..ce641c4359cf 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -1572,6 +1572,163 @@
 			#size-cells = <0>;
 			status = "disabled";
 		};
+
+		/*
+		 * Break node order to solve dependency probe issue between
+		 * pinctrl and exti.
+		 */
+		pinctrl: pin-controller@50002000 {
+			#address-cells = <1>;
+			#size-cells = <1>;
+			compatible = "st,stm32mp157-pinctrl";
+			ranges = <0 0x50002000 0xa400>;
+			interrupt-parent = <&exti>;
+			st,syscfg = <&exti 0x60 0xff>;
+			pins-are-numbered;
+
+			gpioa: gpio@50002000 {
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				reg = <0x0 0x400>;
+				clocks = <&rcc GPIOA>;
+				st,bank-name = "GPIOA";
+				status = "disabled";
+			};
+
+			gpiob: gpio@50003000 {
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				reg = <0x1000 0x400>;
+				clocks = <&rcc GPIOB>;
+				st,bank-name = "GPIOB";
+				status = "disabled";
+			};
+
+			gpioc: gpio@50004000 {
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				reg = <0x2000 0x400>;
+				clocks = <&rcc GPIOC>;
+				st,bank-name = "GPIOC";
+				status = "disabled";
+			};
+
+			gpiod: gpio@50005000 {
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				reg = <0x3000 0x400>;
+				clocks = <&rcc GPIOD>;
+				st,bank-name = "GPIOD";
+				status = "disabled";
+			};
+
+			gpioe: gpio@50006000 {
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				reg = <0x4000 0x400>;
+				clocks = <&rcc GPIOE>;
+				st,bank-name = "GPIOE";
+				status = "disabled";
+			};
+
+			gpiof: gpio@50007000 {
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				reg = <0x5000 0x400>;
+				clocks = <&rcc GPIOF>;
+				st,bank-name = "GPIOF";
+				status = "disabled";
+			};
+
+			gpiog: gpio@50008000 {
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				reg = <0x6000 0x400>;
+				clocks = <&rcc GPIOG>;
+				st,bank-name = "GPIOG";
+				status = "disabled";
+			};
+
+			gpioh: gpio@50009000 {
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				reg = <0x7000 0x400>;
+				clocks = <&rcc GPIOH>;
+				st,bank-name = "GPIOH";
+				status = "disabled";
+			};
+
+			gpioi: gpio@5000a000 {
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				reg = <0x8000 0x400>;
+				clocks = <&rcc GPIOI>;
+				st,bank-name = "GPIOI";
+				status = "disabled";
+			};
+
+			gpioj: gpio@5000b000 {
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				reg = <0x9000 0x400>;
+				clocks = <&rcc GPIOJ>;
+				st,bank-name = "GPIOJ";
+				status = "disabled";
+			};
+
+			gpiok: gpio@5000c000 {
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				reg = <0xa000 0x400>;
+				clocks = <&rcc GPIOK>;
+				st,bank-name = "GPIOK";
+				status = "disabled";
+			};
+		};
+
+		pinctrl_z: pin-controller-z@54004000 {
+			#address-cells = <1>;
+			#size-cells = <1>;
+			compatible = "st,stm32mp157-z-pinctrl";
+			ranges = <0 0x54004000 0x400>;
+			pins-are-numbered;
+			interrupt-parent = <&exti>;
+			st,syscfg = <&exti 0x60 0xff>;
+
+			gpioz: gpio@54004000 {
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				reg = <0 0x400>;
+				clocks = <&rcc GPIOZ>;
+				st,bank-name = "GPIOZ";
+				st,bank-ioport = <11>;
+				status = "disabled";
+			};
+		};
 	};
 
 	mlahb {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
