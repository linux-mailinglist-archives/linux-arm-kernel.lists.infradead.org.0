Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C4719A796
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 10:41:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewG1OkZWPJeb9f6Bg+x+nPD9WVT3fEFintHiV/YC6jw=; b=Bwy5z31/KTXCVq
	BK1YlfMrZGTn9h4FUwWkocF8hR9k1xkzw3RmVIH/sjvSq6eQcufrmRoBvsckS2qX5lLcL3xb61cC5
	J9HWrtL0Cli6Ozu7EyOJ3/rTKa93s/0FYjZLMdtq6m4I4hEzzUXI5r0WkruhONoRU+NfkN9AS/EQC
	txpDTIC9+kRbO0ONKK9Q5Bp84y/vJ4lQsQH2aL9sOhK2tfUibQvVZtJR3mjMN01/iIQrmAN9qxTw7
	EEkWf8yTE55tcIXuDyVHpwX7EqtNwlyQa70GyMML1sI6tbX6M9HU+AKkAVkXsNgOhJnrs6Bx1y8Eo
	d1bMTkFweKWxFfvhRgGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJYvi-0000es-67; Wed, 01 Apr 2020 08:40:58 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJYuZ-0005i7-Jd
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 08:39:50 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0318bETg029934; Wed, 1 Apr 2020 10:39:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=na/oKumJJlSOAsC4yLKxdvbCb8WJgv/VEAjKtvvJjY0=;
 b=yYkdbvycJiGc349n5Huur97tzbGMxNG5IIqp+sKnhXkV8S8g838vVKx6TZUSkg2id7/H
 oqOZQUxHYlJmvXfVDUZkxr66BsaK5ttR1oVWOW0ZTPmcFUyWcbboK9a6GVxy/JAfYz+g
 HxM2Ur6tNeMOM4ir4UY/1CGSlaelKt1mJIbtFojO4zW2XZXdrNME/viJgkFiyviR6jLL
 /VsBb1+lozKUvZT3+E1tRdM/WGudDDTo6YVwbKxIe86xWqQKBiY7PjPsamjzzpSfJoV9
 0hSf6ZeFtX1DFkDD8XQoOhMi2RU2dIidAflOoC6Amqa8IukrY/zaOOmN+nso0ulT0ceO 4w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 301vkdvaht-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 10:39:37 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 426B410003B;
 Wed,  1 Apr 2020 10:39:36 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3507121CA8F;
 Wed,  1 Apr 2020 10:39:36 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 1 Apr 2020 10:39:35
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <fabrice.gasnier@st.com>, <lee.jones@linaro.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <daniel.lezcano@linaro.org>,
 <tglx@linutronix.de>
Subject: [PATCH v6 2/6] ARM: dts: stm32: Add timer subnodes on stm32mp15 SoCs
Date: Wed, 1 Apr 2020 10:39:05 +0200
Message-ID: <20200401083909.18886-3-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200401083909.18886-1-benjamin.gaignard@st.com>
References: <20200401083909.18886-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_07:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_013948_017817_9F35E2D5 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 arch/arm/boot/dts/stm32mp151.dtsi | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index fb41d0778b00..09e2dc209976 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -358,6 +358,8 @@
 			reg = <0x40009000 0x400>;
 			clocks = <&rcc LPTIM1_K>;
 			clock-names = "mux";
+			interrupts-extended = <&exti 47 IRQ_TYPE_LEVEL_HIGH>;
+			wakeup-source;
 			status = "disabled";
 
 			pwm {
@@ -376,6 +378,11 @@
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
@@ -1135,6 +1142,8 @@
 			reg = <0x50021000 0x400>;
 			clocks = <&rcc LPTIM2_K>;
 			clock-names = "mux";
+			interrupts-extended = <&exti 48 IRQ_TYPE_LEVEL_HIGH>;
+			wakeup-source;
 			status = "disabled";
 
 			pwm {
@@ -1153,6 +1162,11 @@
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
@@ -1162,6 +1176,8 @@
 			reg = <0x50022000 0x400>;
 			clocks = <&rcc LPTIM3_K>;
 			clock-names = "mux";
+			interrupts-extended = <&exti 50 IRQ_TYPE_LEVEL_HIGH>;
+			wakeup-source;
 			status = "disabled";
 
 			pwm {
@@ -1175,6 +1191,11 @@
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
@@ -1182,6 +1203,8 @@
 			reg = <0x50023000 0x400>;
 			clocks = <&rcc LPTIM4_K>;
 			clock-names = "mux";
+			interrupts-extended = <&exti 52 IRQ_TYPE_LEVEL_HIGH>;
+			wakeup-source;
 			status = "disabled";
 
 			pwm {
@@ -1189,6 +1212,11 @@
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
@@ -1196,6 +1224,8 @@
 			reg = <0x50024000 0x400>;
 			clocks = <&rcc LPTIM5_K>;
 			clock-names = "mux";
+			interrupts-extended = <&exti 53 IRQ_TYPE_LEVEL_HIGH>;
+			wakeup-source;
 			status = "disabled";
 
 			pwm {
@@ -1203,6 +1233,11 @@
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
