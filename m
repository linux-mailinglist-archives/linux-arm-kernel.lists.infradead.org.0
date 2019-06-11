Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6A03CB83
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:30:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ffXiyAjH8rQmDhBPIIVv5oAyKQwQVXIQXOziu81kjs=; b=l0uvlxGWfoaTk8
	FAJAT9S5aWn12CgPk0+9WmIJUEdTYiu0PWvLi8d7oPIFCylTzCvVJipLIE72akdJ0hI/Umyuwb7/S
	onM0iedjq8YS+g0tfL+xHbJrcpz1nMPjKMI7Ya7mzdy8ubyKn3QmHViGpfjvtVQj68saq0C7ku7uT
	xnP4wuj6CVhSubVVrVeQuhKjRELhZRMRt/dEQoQxncKMlTlFZxixfNlMqVxAYXXEPJ/as2iUpATee
	teeslkCxiWmkJ6o0sRaX2TBz6eqgFylgzyGX5WyBJZgGqTWuG6n/NwRJxiu80rDig7crCJwqQ4Ybt
	zZj9Fa2uA9OyU0KU0Ebw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafur-00056J-Rb; Tue, 11 Jun 2019 12:30:17 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafqp-0002EZ-Sd
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:26:11 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5BCPlkg026682; Tue, 11 Jun 2019 14:26:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Bc+KS/X3joAnx5lC8TCpo/aZhNkGuBuIX5CpxV56wqo=;
 b=xEI5FhZFwitj8/78fd4/NJhFpZZPx9zvWl4eS3LOTUBv6rdVrdolUWzPqOD5Nke2zDQh
 tPMI0Qkk0SKuF0MwazbsAt9m39otPXsVlsuCjy5MgKG7/7e1dOtZ2cWcyI4M8Ed5N3gL
 gb8Vcpxba7NhgQ7NhVvpm3JGo95v3Cef7cHCysitwpBpgLzG3UZQpYFOUrqfwB3jvIvo
 1XpBvS1Db1Rowc98dsIBSrLK8TQ9jtou+Ro5FQ6z5FZ1RRZiiC/avF6oSSBOxh4XVIEH
 EMTWOH7Scfcak7cADeKHTy71fZ48Ix7lhWgqVIoSsMzeHkQq5SXcM+LUq05yaJDUatuf 3w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t26rm9ve1-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 11 Jun 2019 14:26:02 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0E5DD31;
 Tue, 11 Jun 2019 12:26:02 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A6E922A38;
 Tue, 11 Jun 2019 12:26:01 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 11 Jun
 2019 14:26:01 +0200
Received: from localhost (10.201.23.31) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 11 Jun 2019 14:26:01
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>
Subject: [PATCH v2 10/10] ARM: dts: stm32: add wakeup capability on each
 usart/uart on stm32mp157c
Date: Tue, 11 Jun 2019 14:25:30 +0200
Message-ID: <1560255930-22554-11-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560255930-22554-1-git-send-email-erwan.leray@st.com>
References: <1560255930-22554-1-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-11_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_052608_314916_35807E53 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Erwan Le Ray <erwan.leray@st.com>, linux-serial@vger.kernel.org, Fabrice
 Gasnier <fabrice.gasnier@st.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

- Mark all usart/uart devices as wakeup source.
- Identify all dedicated interrupts with a specific interrupt name (either
 "event" or "wakeup").
- add interrupts-extended wakeup interrupt

Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index 2afeee6..de5b1bf 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -395,32 +395,44 @@
 		usart2: serial@4000e000 {
 			compatible = "st,stm32h7-uart";
 			reg = <0x4000e000 0x400>;
-			interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "event", "wakeup";
+			interrupts-extended = <&intc GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>,
+					      <&exti 27 1>;
 			clocks = <&rcc USART2_K>;
+			wakeup-source;
 			status = "disabled";
 		};
 
 		usart3: serial@4000f000 {
 			compatible = "st,stm32h7-uart";
 			reg = <0x4000f000 0x400>;
-			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "event", "wakeup";
+			interrupts-extended = <&intc GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
+					      <&exti 28 1>;
 			clocks = <&rcc USART3_K>;
+			wakeup-source;
 			status = "disabled";
 		};
 
 		uart4: serial@40010000 {
 			compatible = "st,stm32h7-uart";
 			reg = <0x40010000 0x400>;
-			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "event", "wakeup";
+			interrupts-extended = <&intc GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>,
+					      <&exti 30 1>;
 			clocks = <&rcc UART4_K>;
+			wakeup-source;
 			status = "disabled";
 		};
 
 		uart5: serial@40011000 {
 			compatible = "st,stm32h7-uart";
 			reg = <0x40011000 0x400>;
-			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "event", "wakeup";
+			interrupts-extended = <&intc GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>,
+					      <&exti 31 1>;
 			clocks = <&rcc UART5_K>;
+			wakeup-source;
 			status = "disabled";
 		};
 
@@ -512,16 +524,22 @@
 		uart7: serial@40018000 {
 			compatible = "st,stm32h7-uart";
 			reg = <0x40018000 0x400>;
-			interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "event", "wakeup";
+			interrupts-extended = <&intc GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>,
+					      <&exti 32 1>;
 			clocks = <&rcc UART7_K>;
+			wakeup-source;
 			status = "disabled";
 		};
 
 		uart8: serial@40019000 {
 			compatible = "st,stm32h7-uart";
 			reg = <0x40019000 0x400>;
-			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "event", "wakeup";
+			interrupts-extended = <&intc GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>,
+					      <&exti 33 1>;
 			clocks = <&rcc UART8_K>;
+			wakeup-source;
 			status = "disabled";
 		};
 
@@ -588,8 +606,11 @@
 		usart6: serial@44003000 {
 			compatible = "st,stm32h7-uart";
 			reg = <0x44003000 0x400>;
-			interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "event", "wakeup";
+			interrupts-extended = <&intc GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
+					      <&exti 29 1>;
 			clocks = <&rcc USART6_K>;
+			wakeup-source;
 			status = "disabled";
 		};
 
@@ -1201,8 +1222,11 @@
 		usart1: serial@5c000000 {
 			compatible = "st,stm32h7-uart";
 			reg = <0x5c000000 0x400>;
-			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "event", "wakeup";
+			interrupts-extended = <&intc GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>,
+					      <&exti 26 1>;
 			clocks = <&rcc USART1_K>;
+			wakeup-source;
 			status = "disabled";
 		};
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
