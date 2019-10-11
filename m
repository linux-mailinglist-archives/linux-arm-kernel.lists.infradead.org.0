Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AADCD4249
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5fAbncw6vs8oUk0GFRWp51jG4DA2AiTWGo60AhdI7w=; b=kbz+LIBPp8rZi8
	s2A0t3OMkagv6kUV8VzHz6NlizwZRP90QipvzSgoyGIBz0Aao2nFLPZavyp43mujWGtLhDMv6zQxc
	ujzkutCFK9zZtF1vB07p2ye45iBLx51hejjE2D4so1bIs8B/BFqpYIyZYx8vXWiDVKiKCUnJ0YDXE
	ufvzdFP2H10dMTIzpPVdkFBOpQJ8rOjpdO2qzxHxCyMfX50XFM6/Gd/9Hu0s9yMbK5U+RnU6E006/
	kj5owfUiQ4/GtuxnUDixY7pQJ6Bu8N2CDi8cmhMHfCHk51lI51uqMQqpI42zMcjeIO/t3wKanAwyT
	ZVnA5oYEJ11WXOJy9H7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvZB-00044t-GE; Fri, 11 Oct 2019 14:06:49 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvY8-0003Im-Ot
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:05:47 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9BE0xxA032015; Fri, 11 Oct 2019 16:05:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=iXQdHQC1Vzt4u1oBwlG3Nk7u0ghc+s1kyGaXxrAG8kI=;
 b=HI0KpiazPlN017QQYkGcLGamTHqLBa7xNYi36utUAwhus/rXvR2SkXvNuQ7zFcBoNFas
 B0p76kVctaKjemBCGqo9xtSm2W15VfdfDG5ykIraQmvYFqbRO7/uI7ABWlodMMN3jMbQ
 IUxTRj5yeiowoqUUJQKT+X3Mk7qjYrzrYiZ6s5fRFA54ETJ4s2Nojbnvs7zOvBwmNS0z
 NVGMUq4BBb+qbaPJ7wtUVVX4WDAyZu/rSOgccpd1Ukejd8iCF2lnnNVssGf90GMDaUjQ
 3wEjHqowlqXhM4JOvCl/+2hqA1JpkfK2Wg4MzUwbl4m+ChwqO3LegMLBDQ62tYb4wh2G Rg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vej2ptnww-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 16:05:38 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6752910002A;
 Fri, 11 Oct 2019 16:05:38 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5CC562AB8AF;
 Fri, 11 Oct 2019 16:05:38 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 11 Oct 2019 16:05:37 +0200
From: Pascal Paillet <p.paillet@st.com>
To: <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/4] ARM: dts: stm32: add PWR regulators support on stm32mp157
Date: Fri, 11 Oct 2019 16:05:30 +0200
Message-ID: <20191011140533.32619-2-p.paillet@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011140533.32619-1-p.paillet@st.com>
References: <20191011140533.32619-1-p.paillet@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_08:2019-10-10,2019-10-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_070545_109824_B23C39D6 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: p.paillet@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds support of STM32 PWR regulators on
stm32mp157c. This replace dummy fixed regulators on
stm32mp157c-ed1 and stm32mp157c-dk2.

Signed-off-by: Pascal Paillet <p.paillet@st.com>
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts |  5 +++++
 arch/arm/boot/dts/stm32mp157a-dk1.dts       |  5 +++++
 arch/arm/boot/dts/stm32mp157c-dk2.dts       |  8 -------
 arch/arm/boot/dts/stm32mp157c-ed1.dts       | 21 +++++--------------
 arch/arm/boot/dts/stm32mp157c.dtsi          | 23 +++++++++++++++++++++
 5 files changed, 38 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 2e4742c53d04..5f35b0146017 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -282,6 +282,11 @@
 	status = "okay";
 };
 
+&pwr_regulators {
+	vdd-supply = <&vdd>;
+	vdd_3v3_usbfs-supply = <&vdd_usb>;
+};
+
 &rng1 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/stm32mp157a-dk1.dts b/arch/arm/boot/dts/stm32mp157a-dk1.dts
index 5ad4cef9e971..26fb7c77092c 100644
--- a/arch/arm/boot/dts/stm32mp157a-dk1.dts
+++ b/arch/arm/boot/dts/stm32mp157a-dk1.dts
@@ -406,6 +406,11 @@
 	status = "okay";
 };
 
+&pwr_regulators {
+	vdd-supply = <&vdd>;
+	vdd_3v3_usbfs-supply = <&vdd_usb>;
+};
+
 &rng1 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/stm32mp157c-dk2.dts b/arch/arm/boot/dts/stm32mp157c-dk2.dts
index d44a7c6c2e20..d26adcbeba33 100644
--- a/arch/arm/boot/dts/stm32mp157c-dk2.dts
+++ b/arch/arm/boot/dts/stm32mp157c-dk2.dts
@@ -11,14 +11,6 @@
 / {
 	model = "STMicroelectronics STM32MP157C-DK2 Discovery Board";
 	compatible = "st,stm32mp157c-dk2", "st,stm32mp157";
-
-	reg18: reg18 {
-		compatible = "regulator-fixed";
-		regulator-name = "reg18";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		regulator-always-on;
-	};
 };
 
 &dsi {
diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
index 1d426ea8bdaf..1dbcc580e43c 100644
--- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
@@ -74,22 +74,6 @@
 		serial0 = &uart4;
 	};
 
-	reg11: reg11 {
-		compatible = "regulator-fixed";
-		regulator-name = "reg11";
-		regulator-min-microvolt = <1100000>;
-		regulator-max-microvolt = <1100000>;
-		regulator-always-on;
-	};
-
-	reg18: reg18 {
-		compatible = "regulator-fixed";
-		regulator-name = "reg18";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		regulator-always-on;
-	};
-
 	sd_switch: regulator-sd_switch {
 		compatible = "regulator-gpio";
 		regulator-name = "sd_switch";
@@ -279,6 +263,11 @@
 	status = "okay";
 };
 
+&pwr_regulators {
+	vdd-supply = <&vdd>;
+	vdd_3v3_usbfs-supply = <&vdd_usb>;
+};
+
 &rng1 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index 9b11654a0a39..e0f3d4c62b4f 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -1079,6 +1079,29 @@
 			#reset-cells = <1>;
 		};
 
+		pwr_regulators: pwr@50001000 {
+			compatible = "st,stm32mp1,pwr-reg";
+			reg = <0x50001000 0x10>;
+
+			reg11: reg11 {
+				regulator-name = "reg11";
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+			};
+
+			reg18: reg18 {
+				regulator-name = "reg18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+			};
+
+			usb33: usb33 {
+				regulator-name = "usb33";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+			};
+		};
+
 		exti: interrupt-controller@5000d000 {
 			compatible = "st,stm32mp1-exti", "syscon";
 			interrupt-controller;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
