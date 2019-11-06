Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6ECF137A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjgEimwr0EfyWz3j8CFv2mO0ab6cFL/BzCxOe4DLho0=; b=ig6ZvXo9bI6I66
	pd0TcHzsoCiX3hXEEwFrZ5Bi30XbFu0GKtuIgEuHmS7NxvdQSkso3L7SKTynNL2SFubGJr9W/XR0c
	t+NjbdDPgPzU/84OFv1DR7xiOrNFw80bAHF4h7PObsGnPCiJYYIvE6JhBgCc8w1NXtPgpOMLvHxx4
	rrgrk8QKBa1mMSZqnqcy2wNfwl6G3W9w2UNpse3dP/Ehxp6ofjbJmUNkRpgvWRDs56RV4zN0VmrGn
	Lbqy3H4HB6hiK5auQHQQWTrbX0tdwqnUfbis8xU+2w12rBuUFxIMTdvt0Leew42e0xa/prRbPi9M7
	wtNOGw1iwOfSOi/xTrHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSIGz-0002G3-K5; Wed, 06 Nov 2019 10:10:45 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIG8-0000N5-8p
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:09:54 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA6A7GcI003655; Wed, 6 Nov 2019 11:09:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=FIClY/e3QBNSiXrpeU79siTfTUG1jsOVOKrMfL3AkC4=;
 b=IpWAjo40QpMibeGzZ54Bj1H3AIG115RFdC7woJSdPzo/uNlUdJ9eLeodBedT8O4/opPK
 bK7QIvR3bGFmkl93ezFWnG5RxW/eI9UWpUXmCL9loOt2KHJ+fW63qRB5iVM+EeJMKx1/
 GzekkeVgaHihxUI6S6TFQ0q/HFqJ1MtV4qsBb/p1Sz/kwmrRUkNQuInuq0a6mv/a2uAB
 bX3qUbXHFpo5iWYVb7BJFVT+CBs5Uu9WZ9MEbiRMcKGZ6W98IMSzxNMGXYF6P73/BXkN
 MU434r8BvyQhs/pLAGbqbiP5nswZ4/NAdingYzK8u1u3Qf88Hbo1oO/mv42z+GXmEbsh xQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w1054vs44-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 Nov 2019 11:09:45 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 905B0100038;
 Wed,  6 Nov 2019 11:09:44 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7EB812AD337;
 Wed,  6 Nov 2019 11:09:44 +0100 (CET)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 6 Nov 2019
 11:09:44 +0100
Received: from localhost (10.48.1.131) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Wed, 6 Nov 2019 11:09:44 +0100
From: Yann Gautier <yann.gautier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 3/4] ARM: dts: stm32: enable sdmmc2 node for stm32mp157c-ed1
 board
Date: Wed, 6 Nov 2019 11:09:37 +0100
Message-ID: <20191106100938.11368-4-yann.gautier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106100938.11368-1-yann.gautier@st.com>
References: <20191106100938.11368-1-yann.gautier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.1.131]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-06_02:2019-11-06,2019-11-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_020952_612171_1415BE95 
X-CRM114-Status: GOOD (  14.18  )
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

On STM32MP157C-ED1, the eMMC is connected on instance 2 of SDMMC
peripheral. The sdmmc2 node is then added in the board DT file, as well as
the pins nodes in the pinctrl file.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
Signed-off-by: Yann Gautier <yann.gautier@st.com>
---
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 118 ++++++++++++++++++++++
 arch/arm/boot/dts/stm32mp157c-ed1.dts     |  16 +++
 2 files changed, 134 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index 2904bc8c6a41..a907d93f8916 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -808,6 +808,124 @@
 				};
 			};
 
+			sdmmc2_b4_pins_a: sdmmc2-b4-0 {
+				pins1 {
+					pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
+						 <STM32_PINMUX('B', 15, AF9)>, /* SDMMC2_D1 */
+						 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
+						 <STM32_PINMUX('B', 4, AF9)>, /* SDMMC2_D3 */
+						 <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
+					slew-rate = <1>;
+					drive-push-pull;
+					bias-pull-up;
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('E', 3, AF9)>; /* SDMMC2_CK */
+					slew-rate = <2>;
+					drive-push-pull;
+					bias-pull-up;
+				};
+			};
+
+			sdmmc2_b4_od_pins_a: sdmmc2-b4-od-0 {
+				pins1 {
+					pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
+						 <STM32_PINMUX('B', 15, AF9)>, /* SDMMC2_D1 */
+						 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
+						 <STM32_PINMUX('B', 4, AF9)>; /* SDMMC2_D3 */
+					slew-rate = <1>;
+					drive-push-pull;
+					bias-pull-up;
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('E', 3, AF9)>; /* SDMMC2_CK */
+					slew-rate = <2>;
+					drive-push-pull;
+					bias-pull-up;
+				};
+				pins3 {
+					pinmux = <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
+					slew-rate = <1>;
+					drive-open-drain;
+					bias-pull-up;
+				};
+			};
+
+			sdmmc2_b4_sleep_pins_a: sdmmc2-b4-sleep-0 {
+				pins {
+					pinmux = <STM32_PINMUX('B', 14, ANALOG)>, /* SDMMC2_D0 */
+						 <STM32_PINMUX('B', 15, ANALOG)>, /* SDMMC2_D1 */
+						 <STM32_PINMUX('B', 3, ANALOG)>, /* SDMMC2_D2 */
+						 <STM32_PINMUX('B', 4, ANALOG)>, /* SDMMC2_D3 */
+						 <STM32_PINMUX('E', 3, ANALOG)>, /* SDMMC2_CK */
+						 <STM32_PINMUX('G', 6, ANALOG)>; /* SDMMC2_CMD */
+				};
+			};
+
+			sdmmc2_b4_pins_b: sdmmc2-b4-1 {
+				pins1 {
+					pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
+						 <STM32_PINMUX('B', 15, AF9)>, /* SDMMC2_D1 */
+						 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
+						 <STM32_PINMUX('B', 4, AF9)>, /* SDMMC2_D3 */
+						 <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
+					slew-rate = <1>;
+					drive-push-pull;
+					bias-disable;
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('E', 3, AF9)>; /* SDMMC2_CK */
+					slew-rate = <2>;
+					drive-push-pull;
+					bias-disable;
+				};
+			};
+
+			sdmmc2_b4_od_pins_b: sdmmc2-b4-od-1 {
+				pins1 {
+					pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
+						 <STM32_PINMUX('B', 15, AF9)>, /* SDMMC2_D1 */
+						 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
+						 <STM32_PINMUX('B', 4, AF9)>; /* SDMMC2_D3 */
+					slew-rate = <1>;
+					drive-push-pull;
+					bias-disable;
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('E', 3, AF9)>; /* SDMMC2_CK */
+					slew-rate = <2>;
+					drive-push-pull;
+					bias-disable;
+				};
+				pins3 {
+					pinmux = <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
+					slew-rate = <1>;
+					drive-open-drain;
+					bias-disable;
+				};
+			};
+
+			sdmmc2_d47_pins_a: sdmmc2-d47-0 {
+				pins {
+					pinmux = <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
+						 <STM32_PINMUX('A', 9, AF10)>, /* SDMMC2_D5 */
+						 <STM32_PINMUX('E', 5, AF9)>, /* SDMMC2_D6 */
+						 <STM32_PINMUX('D', 3, AF9)>; /* SDMMC2_D7 */
+					slew-rate = <1>;
+					drive-push-pull;
+					bias-pull-up;
+				};
+			};
+
+			sdmmc2_d47_sleep_pins_a: sdmmc2-d47-sleep-0 {
+				pins {
+					pinmux = <STM32_PINMUX('A', 8, ANALOG)>, /* SDMMC2_D4 */
+						 <STM32_PINMUX('A', 9, ANALOG)>, /* SDMMC2_D5 */
+						 <STM32_PINMUX('E', 5, ANALOG)>, /* SDMMC2_D6 */
+						 <STM32_PINMUX('D', 3, ANALOG)>; /* SDMMC2_D7 */
+				};
+			};
+
 			spdifrx_pins_a: spdifrx-0 {
 				pins {
 					pinmux = <STM32_PINMUX('G', 12, AF8)>; /* SPDIF_IN1 */
diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
index 1d426ea8bdaf..b40a6b9a7aa6 100644
--- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
@@ -302,6 +302,22 @@
 	status = "okay";
 };
 
+&sdmmc2 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
+	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_a>;
+	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_a>;
+	non-removable;
+	no-sd;
+	no-sdio;
+	st,neg-edge;
+	bus-width = <8>;
+	vmmc-supply = <&v3v3>;
+	vqmmc-supply = <&v3v3>;
+	mmc-ddr-3_3v;
+	status = "okay";
+};
+
 &timers6 {
 	status = "okay";
 	/* spare dmas for other usage */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
