Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7744EB2C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 16:51:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnTfA5z7f5Z/M3oEgKSV260tNyGz/OYH9dnB1Brddtg=; b=uBVg+mRgGaTE0T
	NBdiVgq/saYAFLtIXpp4EGYbc/qoZc1gOPAXGHW4/6yf+95qn+2X2/Y0yuv5Xj4aAf8+4z4qgku6J
	tg/QrnF5iI4vELWPwkhJA/w4V5ROTo5MxlcZK49yyHs9l5gA14o7wH4/NwCkNX3GcWmhyXVv5/bpR
	sPwVxMm0DVGl/yByc1FspK8x8yKb2IQk9deFFWlOWDvILm0+V5Djf93gLL+qtIsH9KQKV+jSDIAuX
	gmag1OCW3NGxwa5xqKsSaUtXWg+30hR9JoyoNezSzfVnyiX1DnQyAIJDqefvLFvw3kMTQ493EEPZP
	Fs+ABmQnR2YEjPaN6xcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heKtF-0007vf-Vx; Fri, 21 Jun 2019 14:51:46 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heKsW-0007Wf-Iu
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 14:51:02 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5LEaSHX008663; Fri, 21 Jun 2019 16:50:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=xJzSb0vLMvQQqcR+GwMSOIjeQUxGRSb+qqQ5nd442G0=;
 b=CK+1gUTMPz86IMV3Nb4kmBzUGcCz3eFXE1s5vL9etIIOaYl+NQKaAl7iLUbWpOKpsYEH
 rZE21C0UsUd1xYKaOcJJGb+lVptDChGU9ZXuZ6lwRefDpqiyBaarLbR9zRLocJc//ZCs
 g7FL6mmfd0sqQHFRSrR9w0RLPt3VYtb11jQlCAI7tRI6Pjzs5e3X19uL2LcO3ZN23jyz
 rxMw3TjCK7Hol5RGHvphC01dZHvjPRI10s5TEa1HHk2jIshU9cKOWp3ECcptJqJRObTN
 xtLfbz8Pk+Fjqh+AvkB0n0BBc9tGIsAVF1tJHqk8CN8himEY9y5mJwLjN9OakAtmnwXP 6Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t781388p1-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 21 Jun 2019 16:50:53 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A4DE434;
 Fri, 21 Jun 2019 14:50:52 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7E79B2BDF;
 Fri, 21 Jun 2019 14:50:52 +0000 (GMT)
Received: from localhost (10.75.127.50) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 21 Jun 2019 16:50:52 +0200
From: Christophe Kerello <christophe.kerello@st.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <alexandre.torgue@st.com>,
 <linux@armlinux.org.uk>, <olof@lixom.net>, <arnd@arndb.de>
Subject: [PATCH 2/4] ARM: dts: stm32: add FMC2 NAND controller pins muxing on
 stm32mp157c-ev1
Date: Fri, 21 Jun 2019 16:49:48 +0200
Message-ID: <1561128590-14621-3-git-send-email-christophe.kerello@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1561128590-14621-1-git-send-email-christophe.kerello@st.com>
References: <1561128590-14621-1-git-send-email-christophe.kerello@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-21_10:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_075101_015246_39558117 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Christophe Kerello <christophe.kerello@st.com>,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds FMC2 NAND controller pins muxing used on stm32mp157c-ev1.

Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
---
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 44 +++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index df64701..c4f2b23 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -276,6 +276,50 @@
 				};
 			};
 
+			fmc_pins_a: fmc-0 {
+				pins1 {
+					pinmux = <STM32_PINMUX('D', 4, AF12)>, /* FMC_NOE */
+						 <STM32_PINMUX('D', 5, AF12)>, /* FMC_NWE */
+						 <STM32_PINMUX('D', 11, AF12)>, /* FMC_A16_FMC_CLE */
+						 <STM32_PINMUX('D', 12, AF12)>, /* FMC_A17_FMC_ALE */
+						 <STM32_PINMUX('D', 14, AF12)>, /* FMC_D0 */
+						 <STM32_PINMUX('D', 15, AF12)>, /* FMC_D1 */
+						 <STM32_PINMUX('D', 0, AF12)>, /* FMC_D2 */
+						 <STM32_PINMUX('D', 1, AF12)>, /* FMC_D3 */
+						 <STM32_PINMUX('E', 7, AF12)>, /* FMC_D4 */
+						 <STM32_PINMUX('E', 8, AF12)>, /* FMC_D5 */
+						 <STM32_PINMUX('E', 9, AF12)>, /* FMC_D6 */
+						 <STM32_PINMUX('E', 10, AF12)>, /* FMC_D7 */
+						 <STM32_PINMUX('G', 9, AF12)>; /* FMC_NE2_FMC_NCE */
+					bias-disable;
+					drive-push-pull;
+					slew-rate = <1>;
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('D', 6, AF12)>; /* FMC_NWAIT */
+					bias-pull-up;
+				};
+			};
+
+			fmc_sleep_pins_a: fmc-sleep-0 {
+				pins {
+					pinmux = <STM32_PINMUX('D', 4, ANALOG)>, /* FMC_NOE */
+						 <STM32_PINMUX('D', 5, ANALOG)>, /* FMC_NWE */
+						 <STM32_PINMUX('D', 11, ANALOG)>, /* FMC_A16_FMC_CLE */
+						 <STM32_PINMUX('D', 12, ANALOG)>, /* FMC_A17_FMC_ALE */
+						 <STM32_PINMUX('D', 14, ANALOG)>, /* FMC_D0 */
+						 <STM32_PINMUX('D', 15, ANALOG)>, /* FMC_D1 */
+						 <STM32_PINMUX('D', 0, ANALOG)>, /* FMC_D2 */
+						 <STM32_PINMUX('D', 1, ANALOG)>, /* FMC_D3 */
+						 <STM32_PINMUX('E', 7, ANALOG)>, /* FMC_D4 */
+						 <STM32_PINMUX('E', 8, ANALOG)>, /* FMC_D5 */
+						 <STM32_PINMUX('E', 9, ANALOG)>, /* FMC_D6 */
+						 <STM32_PINMUX('E', 10, ANALOG)>, /* FMC_D7 */
+						 <STM32_PINMUX('D', 6, ANALOG)>, /* FMC_NWAIT */
+						 <STM32_PINMUX('G', 9, ANALOG)>; /* FMC_NE2_FMC_NCE */
+				};
+			};
+
 			i2c1_pins_a: i2c1-0 {
 				pins {
 					pinmux = <STM32_PINMUX('D', 12, AF5)>, /* I2C1_SCL */
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
