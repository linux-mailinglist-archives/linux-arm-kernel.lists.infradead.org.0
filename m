Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A16B198E92
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 10:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qmbuoZmMcH2RRY/cGZOs6I4jsFkt/zTGCtATt5PTpQ=; b=IhkH1mlSemzBrh
	ozRi/vEodXudahcanLk83cpqxOpgaPLC9ZVvYePzPHyS5jZjuwa+Hcl0xxhxEtq8G1pKgtRLPKEW4
	O0bdc1zRFbDcUXMLPV1YNuO65NoZkZ5l/C4OvvabuyA9eSrQt+wUluD7D0aBpjHA9pHOvAU+8dUg0
	D6t+IWZj+dgJkNehd56/qIewi/8L6GbrMGNZUUURuWh8Pw1vx/1lTDn+JrHsaI5H/Y1FJXukjD8dN
	m+fOqd+hcS19sIF8fn8UUn/TKIBYsEYj09AjayROSEL22+39wLVkPdz+BAxseeOTwANuN4G3V/rIE
	c7I18LIRs81zAo9WH8lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJCKh-00014M-Bu; Tue, 31 Mar 2020 08:33:15 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJCJl-0000W9-UI
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 08:32:21 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02V8SjZ3011728; Tue, 31 Mar 2020 10:32:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=1v1U4r1IuuaW9QqrxsAf4ezFvjw5plmmtNHpo6Hw1F0=;
 b=agKWTWd45e2PIS39MINNzpssx3of5D9H9mL0wDT0/AKXSpqp7+WjK5Kes5Naf3j4uwmt
 vrIPKnRq1BJdPu2LW8k+DKFyAdS932xcnkdlH1X+o6jZEf+CNEmLz9HkGvxTVTke94Jh
 lNCYyoveQ4/W2asqY4uJUwE3BRzpRyz4+g8ELjiSUVIRkZSQFWz9bXCwQZQDL5Gl9jye
 gLBRq4JzHMKw+/rCQVO2IT0FdIjhc3pPSkQ0q2tOZLvgiO/nb57LO9DogoDtJoT6DUrN
 LWBF9gmiPfyL6SJsnUD2+Nr3clMO513v+g/1JQqxAEcIBT3Rpp0RfKbHFzn0qcP+Kavn GA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 301xbmdsum-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 31 Mar 2020 10:32:06 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0AC0110003A;
 Tue, 31 Mar 2020 10:32:03 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EEF7B21E675;
 Tue, 31 Mar 2020 10:32:02 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 31 Mar 2020 10:32:02
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <fabrice.gasnier@st.com>, <lee.jones@linaro.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <daniel.lezcano@linaro.org>,
 <tglx@linutronix.de>
Subject: [PATCH v5 2/6] ARM: dts: stm32: Add timer subnodes on stm32mp15 SoCs
Date: Tue, 31 Mar 2020 10:31:42 +0200
Message-ID: <20200331083146.10462-3-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200331083146.10462-1-benjamin.gaignard@st.com>
References: <20200331083146.10462-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_03:2020-03-30,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_013218_279026_EA6035AB 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add timer subnode and interrupts to low power timer nodes for
all stm32mp15x SoCs.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 45 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index fb41d0778b00..424925068baf 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -358,6 +358,10 @@
 			reg = <0x40009000 0x400>;
 			clocks = <&rcc LPTIM1_K>;
 			clock-names = "mux";
+			interrupt-names = "event", "wakeup";
+			interrupts-extended = <&intc GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,
+					      <&exti 47 IRQ_TYPE_LEVEL_HIGH>;
+			wakeup-source;
 			status = "disabled";
 
 			pwm {
@@ -376,6 +380,11 @@
 				compatible = "st,stm32-lptimer-counter";
 				status = "disabled";
 			};
+
+			timer {
+				compatible = "st,stm32-lptimer-timer";
+				status = "disabled";
+			};
 		};
 
 		spi2: spi@4000b000 {
@@ -1135,6 +1144,10 @@
 			reg = <0x50021000 0x400>;
 			clocks = <&rcc LPTIM2_K>;
 			clock-names = "mux";
+			interrupt-names = "event", "wakeup";
+			interrupts-extended = <&intc GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
+					      <&exti 48 IRQ_TYPE_LEVEL_HIGH>;
+			wakeup-source;
 			status = "disabled";
 
 			pwm {
@@ -1153,6 +1166,11 @@
 				compatible = "st,stm32-lptimer-counter";
 				status = "disabled";
 			};
+
+			timer {
+				compatible = "st,stm32-lptimer-timer";
+				status = "disabled";
+			};
 		};
 
 		lptimer3: timer@50022000 {
@@ -1162,6 +1180,10 @@
 			reg = <0x50022000 0x400>;
 			clocks = <&rcc LPTIM3_K>;
 			clock-names = "mux";
+			interrupt-names = "event", "wakeup";
+			interrupts-extended = <&intc GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>,
+					      <&exti 50 IRQ_TYPE_LEVEL_HIGH>;
+			wakeup-source;
 			status = "disabled";
 
 			pwm {
@@ -1175,6 +1197,11 @@
 				reg = <2>;
 				status = "disabled";
 			};
+
+			timer {
+				compatible = "st,stm32-lptimer-timer";
+				status = "disabled";
+			};
 		};
 
 		lptimer4: timer@50023000 {
@@ -1182,6 +1209,10 @@
 			reg = <0x50023000 0x400>;
 			clocks = <&rcc LPTIM4_K>;
 			clock-names = "mux";
+			interrupt-names = "event", "wakeup";
+			interrupts-extended = <&intc GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
+					      <&exti 52 IRQ_TYPE_LEVEL_HIGH>;
+			wakeup-source;
 			status = "disabled";
 
 			pwm {
@@ -1189,6 +1220,11 @@
 				#pwm-cells = <3>;
 				status = "disabled";
 			};
+
+			timer {
+				compatible = "st,stm32-lptimer-timer";
+				status = "disabled";
+			};
 		};
 
 		lptimer5: timer@50024000 {
@@ -1196,6 +1232,10 @@
 			reg = <0x50024000 0x400>;
 			clocks = <&rcc LPTIM5_K>;
 			clock-names = "mux";
+			interrupt-names = "event", "wakeup";
+			interrupts-extended = <&intc GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+					      <&exti 53 IRQ_TYPE_LEVEL_HIGH>;
+			wakeup-source;
 			status = "disabled";
 
 			pwm {
@@ -1203,6 +1243,11 @@
 				#pwm-cells = <3>;
 				status = "disabled";
 			};
+
+			timer {
+				compatible = "st,stm32-lptimer-timer";
+				status = "disabled";
+			};
 		};
 
 		vrefbuf: vrefbuf@50025000 {
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
