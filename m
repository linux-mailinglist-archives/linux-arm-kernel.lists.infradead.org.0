Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CBE1B40E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:49:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=euDmdwgDJh3f+j0EInWZ8jpWwYX1IXUsO+906l7JOuY=; b=ADeoj3HIC1XbB4
	+xYfVyD/6Ja39jBtdwPj1rLh7ofor4d3rK6JvqQD1LYEFnpXkhR9b2GW7PydFmVQM/vU7lN9hcOBt
	FIkGxXh3+NB4Fx9imWTfHUSk5SaL7fGgwZTtOrMBtGEWo3STVyzxQ58vUF+iZMs0aSu/o/xc/Z+yp
	B7wz0li+kAQAu3F1xkGMgtBkPYnO3hjT1fvbySHnDrOaOI46DB1CEQj60LXdQbZ73NA6G3rgfpyhe
	bFc9zIAdJE3IsL0DvCE/RRHGc+R2mXY8ZqeAeu117YKOA7g5mOC2bjPlHtdNrHeM3B8vsUWBE0NS9
	iLYgT97UGUjJsHLoFLKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCvv-0002Tl-Qb; Wed, 22 Apr 2020 10:48:47 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCtp-0000nm-Hy
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 10:46:40 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 496cYm1Hjrz1rt3g;
 Wed, 22 Apr 2020 12:46:36 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 496cYm0WDqz1qr40;
 Wed, 22 Apr 2020 12:46:36 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id oztOSuGfIJ32; Wed, 22 Apr 2020 12:46:34 +0200 (CEST)
X-Auth-Info: 0NZoi3M/0CTzuPSPGKZgFZ2HkXwFSb55HACbb7q/610=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 22 Apr 2020 12:46:34 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 07/20] ARM: dts: stm32: Add alternate pinmux for SDMMC pins
Date: Wed, 22 Apr 2020 12:46:00 +0200
Message-Id: <20200422104613.96944-8-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200422104613.96944-1-marex@denx.de>
References: <20200422104613.96944-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_034638_000448_498D63A8 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add another mux option for SDMMC1_D123DIR direction pins, SDMMC2 pins 4..7,
and SDMMC3 pins PD5_SDMMC3_D2 and PD0_SDMMC3_CMD, this is used on AV96 board.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V2: Fix SDMMC1_D123DIR AF, should be AF11
V3: No change
V4: Rebase on stm32-next
V5: Squash three patches doing three things into one:
    ARM: dts: stm32: Add alternate pinmux for SDMMC1 direction pins
    ARM: dts: stm32: Add alternate pinmux for SDMMC2 pins 4-7
    ARM: dts: stm32: Add alternate pinmux for SDMMC3 pins
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 99 ++++++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 6fce6133d644..0f9a6b1325f9 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -1084,6 +1084,30 @@ pins {
 		};
 	};
 
+	sdmmc1_dir_pins_b: sdmmc1-dir-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 2, AF11)>, /* SDMMC1_D0DIR */
+				 <STM32_PINMUX('E', 14, AF11)>, /* SDMMC1_D123DIR */
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
+	sdmmc1_dir_sleep_pins_b: sdmmc1-dir-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 2, ANALOG)>, /* SDMMC1_D0DIR */
+				 <STM32_PINMUX('E', 14, ANALOG)>, /* SDMMC1_D123DIR */
+				 <STM32_PINMUX('B', 9, ANALOG)>, /* SDMMC1_CDIR */
+				 <STM32_PINMUX('E', 4, ANALOG)>; /* SDMMC1_CKIN */
+		};
+	};
+
 	sdmmc2_b4_pins_a: sdmmc2-b4-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
@@ -1223,6 +1247,27 @@ pins {
 		};
 	};
 
+	sdmmc2_d47_pins_c: sdmmc2-d47-2 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
+				 <STM32_PINMUX('A', 15, AF9)>, /* SDMMC2_D5 */
+				 <STM32_PINMUX('C', 6, AF10)>, /* SDMMC2_D6 */
+				 <STM32_PINMUX('C', 7, AF10)>; /* SDMMC2_D7 */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+	};
+
+	sdmmc2_d47_sleep_pins_c: sdmmc2-d47-sleep-2 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 8, ANALOG)>, /* SDMMC2_D4 */
+				 <STM32_PINMUX('A', 15, ANALOG)>, /* SDMMC2_D5 */
+				 <STM32_PINMUX('C', 6, ANALOG)>, /* SDMMC2_D6 */
+				 <STM32_PINMUX('C', 7, ANALOG)>; /* SDMMC2_D7 */
+		};
+	};
+
 	sdmmc3_b4_pins_a: sdmmc3-b4-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */
@@ -1277,6 +1322,60 @@ pins {
 		};
 	};
 
+	sdmmc3_b4_pins_b: sdmmc3-b4-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */
+				 <STM32_PINMUX('F', 4, AF9)>, /* SDMMC3_D1 */
+				 <STM32_PINMUX('D', 5, AF10)>, /* SDMMC3_D2 */
+				 <STM32_PINMUX('D', 7, AF10)>, /* SDMMC3_D3 */
+				 <STM32_PINMUX('D', 0, AF10)>; /* SDMMC3_CMD */
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
+	sdmmc3_b4_od_pins_b: sdmmc3-b4-od-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */
+				 <STM32_PINMUX('F', 4, AF9)>, /* SDMMC3_D1 */
+				 <STM32_PINMUX('D', 5, AF10)>, /* SDMMC3_D2 */
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
+			pinmux = <STM32_PINMUX('D', 0, AF10)>; /* SDMMC2_CMD */
+			slew-rate = <1>;
+			drive-open-drain;
+			bias-pull-up;
+		};
+	};
+
+	sdmmc3_b4_sleep_pins_b: sdmmc3-b4-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 0, ANALOG)>, /* SDMMC3_D0 */
+				 <STM32_PINMUX('F', 4, ANALOG)>, /* SDMMC3_D1 */
+				 <STM32_PINMUX('D', 5, ANALOG)>, /* SDMMC3_D2 */
+				 <STM32_PINMUX('D', 7, ANALOG)>, /* SDMMC3_D3 */
+				 <STM32_PINMUX('G', 15, ANALOG)>, /* SDMMC3_CK */
+				 <STM32_PINMUX('D', 0, ANALOG)>; /* SDMMC3_CMD */
+		};
+	};
+
 	spdifrx_pins_a: spdifrx-0 {
 		pins {
 			pinmux = <STM32_PINMUX('G', 12, AF8)>; /* SPDIF_IN1 */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
