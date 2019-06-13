Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D09436F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:53:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ffXiyAjH8rQmDhBPIIVv5oAyKQwQVXIQXOziu81kjs=; b=IvNEf8uBDvA5z/
	pGJtV4j1vSrrahNhxKGwqYKjYyce2DiJzvm24agevmWXr1ZJQkNmBLjEVfAMsuZJPTjT1N/EPCXDr
	j3EEd+ufXuG2r4PpUvzNb7QptTwR3NqHoZMOEqS7M0yfOAg3wgjHTKy/EntVeStG1ooWXVtIlouCX
	ICuoO2CeITFYgQicApWJeqCLC0qmeY6Xtmv8bJpXD73/Etiamh0l/zI2sMrtjkelpqKBZmCbCtmlN
	zNZL+E+4da2g4mxAJQHZHn6l8K1AaK9XMmgW7VpVNfe/tG6QTZ5KHrYBWhKVmAtsPKxHjJ287iFqE
	n/OJ4xmHjignaqYEXV3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQAo-0003uS-Ra; Thu, 13 Jun 2019 13:53:50 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQ7k-000110-8F
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:50:42 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5DDkN54026656; Thu, 13 Jun 2019 15:50:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Bc+KS/X3joAnx5lC8TCpo/aZhNkGuBuIX5CpxV56wqo=;
 b=gq4i08DOwlwSyQQAcJAADFPkS8X6ru1H9mDxHINRTP+nb3qtO7AnKbsYwjJqrzvcW5np
 gOiXUMOKziaAPWfUUHjQtyqd/QWM8AGgR0suEFyLkiBmRdUip4yNsSZeQLY+66N1Z/4A
 aVj2F20dULsj9o3jLnELfkiJ4KaFxoI2nSIFpp1VE4x5oDDwDwjuzWXtmgD3xZBLV5Qb
 97IsgOocdSJYiHPc6IW3E9JP0JAXxStbl0Jr+/q5CHkIcG/G1GIXi2K5rLJOJdgGj6br
 3pZULPju+85cgusd7QpeGlGi9k1K/ZZpSm5xl0ugQklNNMTYTZDcYkmhrukPObKpcWoZ Yg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t2k3cb6fh-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 13 Jun 2019 15:50:34 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CDFAA3A;
 Thu, 13 Jun 2019 13:50:33 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A584D2BC2;
 Thu, 13 Jun 2019 13:50:33 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 13 Jun
 2019 15:50:33 +0200
Received: from localhost (10.201.23.31) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 13 Jun 2019 15:50:24
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>
Subject: [PATCH v3 10/10] ARM: dts: stm32: add wakeup capability on each
 usart/uart on stm32mp157c
Date: Thu, 13 Jun 2019 15:50:00 +0200
Message-ID: <1560433800-12255-11-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560433800-12255-1-git-send-email-erwan.leray@st.com>
References: <1560433800-12255-1-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-13_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_065040_636789_4DB44FC5 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
