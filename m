Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47C6F1376
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2pAUp2P5tL/EDcRCVJjrc5xPveQly7j5RTLKpUaUgJg=; b=eDcnDYoyz33GdE
	J5ph7Ju67lxapovvHsw0InI7GakVbWbAuTN6ryR6UlWGiysa+rx+LLGLCgPHgQCUsGC43WEfwRk/m
	BDL7+XvpSVtOJSqL7itmAUPV5awq3C+ttNhCkdDX6RhiaTkWgO28IXj9F7OEYzYFySKPA93KYuf3V
	02AQIYz3+OLMVb0J2iEO8I5GHPRB9fKE7AK0EJrqeaAKKg7wk0Q7HjUl2+eSe26GfU2YMJqR3YGbt
	Tuepw/1Pa6bU5gAFpXvWliY1RIAI/UVwAe+HAJZx+xjW6fIqG+xvMJNXbw1EVjpU41tmz7J9h1Sxe
	JUgRRzw/PyPQCAKUScoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSIGc-0000ZB-KT; Wed, 06 Nov 2019 10:10:22 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIG7-0000N7-5g
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:09:52 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA6A7AGF003297; Wed, 6 Nov 2019 11:09:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=jhrwb4GJ5N7MbgDVj22lmG3ajS2c9NSSIBuynieXO2c=;
 b=KQ0BZ/ZCvaCkJSt/+B0t7jshJafF1s9X0DDwNfbBE9xkusjVXNDJUAGf6FzRACmH9yPo
 ybTP0uMxB1352UKH6jC2yVUmjx1Y+wEQj7UrxMtX66MkqFNEhzlnYbvVe6/rn52c1OPX
 a6ZeYoZNjZOvFIED5tVMBAYmVdZeIs4tmq+GyrVDgZIko17VjnZ74pql//SHPyZEWke5
 FzmPbVg2Jsvr9HGZ/KH0CHSeeNCXNx/icrypZNiFSo+Ii/5umLmaTTQZNf6lfJjEJVFd
 8HDYMaYRJWkPEx0iPap69N7yfw/+OcBIYXdQ64uFmS5XS/1+74/Knq1P/dHkD7HcOQi8 qw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w10f1mpux-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 Nov 2019 11:09:44 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B25D9100034;
 Wed,  6 Nov 2019 11:09:43 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A61C72AD337;
 Wed,  6 Nov 2019 11:09:43 +0100 (CET)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 6 Nov 2019
 11:09:43 +0100
Received: from localhost (10.48.1.131) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Wed, 6 Nov 2019 11:09:42 +0100
From: Yann Gautier <yann.gautier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 2/4] ARM: dts: stm32: add sdmmc2 & 3 nodes for STM32MP157 SoC
Date: Wed, 6 Nov 2019 11:09:36 +0100
Message-ID: <20191106100938.11368-3-yann.gautier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106100938.11368-1-yann.gautier@st.com>
References: <20191106100938.11368-1-yann.gautier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.1.131]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-06_02:2019-11-06,2019-11-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_020951_566908_FC8CAF73 
X-CRM114-Status: GOOD (  14.15  )
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

The STM32MP157 SoC series includes 3 instances of the SDMMC peripheral.
The sdmmc2 and sdmmc3 nodes are added in STM32MP157 SoC DT file.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
Signed-off-by: Yann Gautier <yann.gautier@st.com>
---
 arch/arm/boot/dts/stm32mp157c.dtsi | 33 +++++++++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index 9b11654a0a39..fa71aac0b0c5 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -1030,6 +1030,21 @@
 			};
 		};
 
+		sdmmc3: sdmmc@48004000 {
+			compatible = "arm,pl18x", "arm,primecell";
+			arm,primecell-periphid = <0x10153180>;
+			reg = <0x48004000 0x400>;
+			interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "cmd_irq";
+			clocks = <&rcc SDMMC3_K>;
+			clock-names = "apb_pclk";
+			resets = <&rcc SDMMC3_R>;
+			cap-sd-highspeed;
+			cap-mmc-highspeed;
+			max-frequency = <120000000>;
+			status = "disabled";
+		};
+
 		usbotg_hs: usb-otg@49000000 {
 			compatible = "snps,dwc2";
 			reg = <0x49000000 0x10000>;
@@ -1295,13 +1310,29 @@
 			arm,primecell-periphid = <0x10153180>;
 			reg = <0x58005000 0x1000>;
 			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names	= "cmd_irq";
+			interrupt-names = "cmd_irq";
 			clocks = <&rcc SDMMC1_K>;
 			clock-names = "apb_pclk";
 			resets = <&rcc SDMMC1_R>;
 			cap-sd-highspeed;
 			cap-mmc-highspeed;
 			max-frequency = <120000000>;
+			status = "disabled";
+		};
+
+		sdmmc2: sdmmc@58007000 {
+			compatible = "arm,pl18x", "arm,primecell";
+			arm,primecell-periphid = <0x10153180>;
+			reg = <0x58007000 0x1000>;
+			interrupts = <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "cmd_irq";
+			clocks = <&rcc SDMMC2_K>;
+			clock-names = "apb_pclk";
+			resets = <&rcc SDMMC2_R>;
+			cap-sd-highspeed;
+			cap-mmc-highspeed;
+			max-frequency = <120000000>;
+			status = "disabled";
 		};
 
 		crc1: crc@58009000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
