Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B00CFEFDC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 13:53:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnrYK0nL74lk3AL4wKhtdacEq4Ir7DYfFaEI0rVEvW4=; b=suznTDe33Nh+Gl
	kvuqZagKS8xrfT3wTqwmJgFj3uq96db6kA/TtHcSCyLDe22C+iNFaEWmaORbX9kkZrEIiB/e8igTw
	hZ3LLTGqDiEy2O+4OPzI2GrW8WyM5VPz1M+bTOdVdzR7aMBlnEa0UKyaYaw9lLCs4ZFA4A1LB3XgK
	MUkOg3yGCiPA9WXV4zJMiWBXgsEeZrQYSApwAfiGSVN7pYD3QqIbIyZEwucyfZS7+8bGR7iYcVfkD
	xnZoiQmkNzo/dTCGbC0cZSVrDvQyUY/ZqlS1IG9Xa85M5hkJ8ibnzkSJ8XuhYOjmgSubi3Qp/e/VN
	m2/vuOCWJ1qzj8yaCKxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyKz-0007h4-Cn; Tue, 05 Nov 2019 12:53:33 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyKB-0006tQ-AT
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 12:52:44 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA5CnPFZ027895; Tue, 5 Nov 2019 13:52:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=7qTkJgeLvJG9yVLjxR53YS50TdExPF24lYbqfsmrqvk=;
 b=HsMOixEbY1ruOLkQkxxCJ1z3pter8jt/eEfoLcOYQqmjh7Fv3GAyTVc/l1Hn9ukj0tUS
 slRGdrwyy4uWHmWBxf3TvSk4HFbieyaZUV9cXJIsJQ60oVXEbMe2HYE1r3WVRX8QXecX
 WdW9shpbHGw1KVLyIbKRs0Joh3sIATuyIcqVis9gyCqeaA727HWJRe4/EJSjtja46Hct
 6r7fFv5lpPL4sdTv1Ovzmf2pSFad+MdOLPXyRSp7orBkO7EC6ibMGafkIq4Imfek8vqp
 JPTeQf93GdFRa09InEEkwP+TNrwNF8VqdNUx8wRpktlBt3v/k2W55DhXMbfp2hWeit76 9A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w11jn7kg9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 Nov 2019 13:52:36 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 09340100039;
 Tue,  5 Nov 2019 13:52:36 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EC5372BC5E7;
 Tue,  5 Nov 2019 13:52:35 +0100 (CET)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 5 Nov 2019
 13:52:35 +0100
Received: from localhost (10.48.0.192) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Tue, 5 Nov 2019 13:52:35 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 2/4] ARM: dts: stm32: add pwm pin muxing for stm32mp157a-dk1
Date: Tue, 5 Nov 2019 13:52:19 +0100
Message-ID: <1572958341-12404-3-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572958341-12404-1-git-send-email-fabrice.gasnier@st.com>
References: <1572958341-12404-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-05_04:2019-11-05,2019-11-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_045243_683437_1B5F61E8 
X-CRM114-Status: GOOD (  12.07  )
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
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add all PWM pinctrl definitions that can be used on stm32mp157a-dk1 board.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 81 +++++++++++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index de5679f..0f42ab1 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -587,6 +587,25 @@
 				};
 			};
 
+			pwm1_pins_a: pwm1-0 {
+				pins {
+					pinmux = <STM32_PINMUX('E', 9, AF1)>, /* TIM1_CH1 */
+						 <STM32_PINMUX('E', 11, AF1)>, /* TIM1_CH2 */
+						 <STM32_PINMUX('E', 14, AF1)>; /* TIM1_CH4 */
+					bias-pull-down;
+					drive-push-pull;
+					slew-rate = <0>;
+				};
+			};
+
+			pwm1_sleep_pins_a: pwm1-sleep-0 {
+				pins {
+					pinmux = <STM32_PINMUX('E', 9, ANALOG)>, /* TIM1_CH1 */
+						 <STM32_PINMUX('E', 11, ANALOG)>, /* TIM1_CH2 */
+						 <STM32_PINMUX('E', 14, ANALOG)>; /* TIM1_CH4 */
+				};
+			};
+
 			pwm2_pins_a: pwm2-0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 3, AF1)>; /* TIM2_CH4 */
@@ -602,6 +621,68 @@
 				};
 			};
 
+			pwm3_pins_a: pwm3-0 {
+				pins {
+					pinmux = <STM32_PINMUX('C', 7, AF2)>; /* TIM3_CH2 */
+					bias-pull-down;
+					drive-push-pull;
+					slew-rate = <0>;
+				};
+			};
+
+			pwm3_sleep_pins_a: pwm3-sleep-0 {
+				pins {
+					pinmux = <STM32_PINMUX('C', 7, ANALOG)>; /* TIM3_CH2 */
+				};
+			};
+
+			pwm4_pins_a: pwm4-0 {
+				pins {
+					pinmux = <STM32_PINMUX('D', 14, AF2)>, /* TIM4_CH3 */
+						 <STM32_PINMUX('D', 15, AF2)>; /* TIM4_CH4 */
+					bias-pull-down;
+					drive-push-pull;
+					slew-rate = <0>;
+				};
+			};
+
+			pwm4_sleep_pins_a: pwm4-sleep-0 {
+				pins {
+					pinmux = <STM32_PINMUX('D', 14, ANALOG)>, /* TIM4_CH3 */
+						 <STM32_PINMUX('D', 15, ANALOG)>; /* TIM4_CH4 */
+				};
+			};
+
+			pwm4_pins_b: pwm4-1 {
+				pins {
+					pinmux = <STM32_PINMUX('D', 13, AF2)>; /* TIM4_CH2 */
+					bias-pull-down;
+					drive-push-pull;
+					slew-rate = <0>;
+				};
+			};
+
+			pwm4_sleep_pins_b: pwm4-sleep-1 {
+				pins {
+					pinmux = <STM32_PINMUX('D', 13, ANALOG)>; /* TIM4_CH2 */
+				};
+			};
+
+			pwm5_pins_a: pwm5-0 {
+				pins {
+					pinmux = <STM32_PINMUX('H', 11, AF2)>; /* TIM5_CH2 */
+					bias-pull-down;
+					drive-push-pull;
+					slew-rate = <0>;
+				};
+			};
+
+			pwm5_sleep_pins_a: pwm5-sleep-0 {
+				pins {
+					pinmux = <STM32_PINMUX('H', 11, ANALOG)>; /* TIM5_CH2 */
+				};
+			};
+
 			pwm8_pins_a: pwm8-0 {
 				pins {
 					pinmux = <STM32_PINMUX('I', 2, AF3)>; /* TIM8_CH4 */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
