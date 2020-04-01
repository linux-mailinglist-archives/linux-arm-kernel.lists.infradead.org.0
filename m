Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB1C19ACD9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 15:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hw3WN6IlpU4K/tFhrPD+BgSikpE1vbCxORk5MiZ7BE=; b=tFu83nesmC/Viw
	RaQ5rVqCTeeK8+zhOr9AkdOJTPpCTkOJplCvHOALY9pMlVr85dAdJZVzR+i/wHKykJwpzU7m+kLgQ
	laukanI2+GHuaoCSkxt0Zgw2ANJUUqdbeMfrLNHp4AZD7GerjJf8XyTHWJS60SWcm3ulXFFl+zHRo
	dzkfxI53/GepgfLiwv5t4cePY5I3MsS/i3HrOXrC1yP5ZsgkIXvozrcfGEqfBm3nH2llxK1ueQ5im
	kCxm3EtGrIf0Ef/sV7fOUz4Y5mNcj2zI7plvSSWa0ejAdeRlb6EA47wBzJRTqs8P7SqiYPge1Ssgh
	5oIZEbF+Y/6TbzoYwtjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJdPO-0003PS-D5; Wed, 01 Apr 2020 13:27:54 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJdL4-0005FO-Iy
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 13:23:28 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48sn2P1ZvWz1rrKd;
 Wed,  1 Apr 2020 15:23:25 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48sn2P0qN8z1r0cX;
 Wed,  1 Apr 2020 15:23:25 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 7UgiKwth9GSM; Wed,  1 Apr 2020 15:23:23 +0200 (CEST)
X-Auth-Info: OUsstcjRphcpkaTLkXHlAcX3ln2WFIvf2CSNNBxWsbA=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  1 Apr 2020 15:23:23 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 19/22] ARM: dts: stm32: Add alternate pinmux for SAI2 pins
Date: Wed,  1 Apr 2020 15:22:34 +0200
Message-Id: <20200401132237.60880-20-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401132237.60880-1-marex@denx.de>
References: <20200401132237.60880-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_062326_779894_F18A93EF 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Add new mux option for SAI2 pins, this is used on AV96 board.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V4: New patch
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 32 ++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index c3a7402860af..aeddcaadb829 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -1028,6 +1028,25 @@ pins {
 		};
 	};
 
+	sai2a_pins_c: sai2a-4 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 13, AF10)>, /* SAI2_SCK_A */
+				 <STM32_PINMUX('D', 11, AF10)>, /* SAI2_SD_A */
+				 <STM32_PINMUX('D', 12, AF10)>; /* SAI2_FS_A */
+			slew-rate = <0>;
+			drive-push-pull;
+			bias-disable;
+		};
+	};
+
+	sai2a_sleep_pins_c: sai2a-5 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 13, ANALOG)>, /* SAI2_SCK_A */
+				 <STM32_PINMUX('D', 11, ANALOG)>, /* SAI2_SD_A */
+				 <STM32_PINMUX('D', 12, ANALOG)>; /* SAI2_FS_A */
+		};
+	};
+
 	sai2b_pins_a: sai2b-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('E', 12, AF10)>, /* SAI2_SCK_B */
@@ -1065,6 +1084,19 @@ pins {
 		};
 	};
 
+	sai2b_pins_c: sai2a-4 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 11, AF10)>; /* SAI2_SD_B */
+			bias-disable;
+		};
+	};
+
+	sai2b_sleep_pins_c: sai2a-sleep-5 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 11, ANALOG)>; /* SAI2_SD_B */
+		};
+	};
+
 	sai4a_pins_a: sai4a-0 {
 		pins {
 			pinmux = <STM32_PINMUX('B', 5, AF10)>; /* SAI4_SD_A */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
