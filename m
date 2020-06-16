Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2ADD1FB637
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 17:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mUGBBWJKUdcwfjO+72ksmimju9/QPYJBd2PRXgngv+Q=; b=eN/6tXXp93N6+e
	AuGw6CuB5aPaFmYOsPz3N2YuZ32I/Aq8LG/6mguMgPQjY1RvJTpeLOG91vjp645zdhm3jUi98OLD5
	ZlakRAS+tovlOLiWHNlUTCsuFINrQDrA0p1C2ZKgFOXgZgQK2xPpWDaEwLBPE6niPpFiJcL2W4MTK
	+JPz49B8ZCLK7vVwzsFSqkhgc60ArhqxMCVGMacSTv9QMvBopsMa1ewM1SJ5FdZ0el399vT6Si6yf
	sndxKs2/REnSf3t8E7ry8qrLlyKYDA8LybfUuHXZ1/+qq6QToycBS7UVI/fWzhkrprq9HqT29f8QV
	mCDkhKXFu4G+Y6nW+OOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDb6-0000yA-BU; Tue, 16 Jun 2020 15:34:00 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDav-0000x6-Lr
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 15:33:53 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05GFD1Et005397; Tue, 16 Jun 2020 17:33:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=ywECLfS8RJnUvCXHRDqenH4W2P5mGI7YRrQh1zdXSqs=;
 b=SKbzkvZ8Sh8AH5bW88BqONOypCrZFZCdlCxIv5kAzNuKFlU+HOUcNMI/OqCgpZraSC6Y
 6/jibWFEnMfpx+LCOJD2IEtbKiNRFSDWq13MmFX0TdF1aPS/lPX2/gAzvc6JXjTXkYjF
 cLbYGA/zbJI7uw3SrKaYGTMycWh9OObAYos44B+jqFs1RZW9pJJoqRPyrfV+M+5jGujZ
 sxeKePJ8Mi/VK5O2MY+oHQ//6Ey9NhhBC2sKNYUQhQjJ0GdrAe78wvcYNUbVkIZyXbjm
 Vg8fQbwcA/ypu5Hl9oW+qtwrMlOHRpcZZ+EyuA2kkFQJdJZwxXbH5sZBZTeG+RrryVo2 pw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31mmjw05cy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 16 Jun 2020 17:33:41 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 075B010002A;
 Tue, 16 Jun 2020 17:33:41 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E90032C890A;
 Tue, 16 Jun 2020 17:33:40 +0200 (CEST)
Received: from localhost (10.75.127.49) by SFHDAG6NODE3.st.com (10.75.127.18)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 16 Jun 2020 17:33:40 +0200
From: Patrick Delaunay <patrick.delaunay@st.com>
To: <linux-kernel@vger.kernel.org>
Subject: [PATCH] ARM: dts: stm32: cosmetic update in stm32mp15-pinctrl.dtsi
Date: Tue, 16 Jun 2020 17:33:29 +0200
Message-ID: <20200616153329.15148-1-patrick.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG6NODE3.st.com (10.75.127.18) To SFHDAG6NODE3.st.com
 (10.75.127.18)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-16_04:2020-06-16,
 2020-06-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_083350_073980_7FF8F64F 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use tabs where possible and remove multiple blanks lines.

Signed-off-by: Patrick Delaunay <patrick.delaunay@st.com>
---

 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 7eb858732d6d..7d351757f2f8 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -210,8 +210,8 @@
 				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_TXD3 */
 				 <STM32_PINMUX('B', 11, ANALOG)>, /* ETH_RGMII_TX_CTL */
 				 <STM32_PINMUX('C', 1, ANALOG)>, /* ETH_MDC */
-			         <STM32_PINMUX('A', 2, ANALOG)>, /* ETH_MDIO */
-			         <STM32_PINMUX('C', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
+				 <STM32_PINMUX('A', 2, ANALOG)>, /* ETH_MDIO */
+				 <STM32_PINMUX('C', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
 				 <STM32_PINMUX('C', 5, ANALOG)>, /* ETH_RGMII_RXD1 */
 				 <STM32_PINMUX('H', 6, ANALOG)>, /* ETH_RGMII_RXD2 */
 				 <STM32_PINMUX('H', 7, ANALOG)>, /* ETH_RGMII_RXD3 */
@@ -453,7 +453,7 @@
 	i2c5_pins_b: i2c5-1 {
 		pins {
 			pinmux = <STM32_PINMUX('D', 0, AF4)>, /* I2C5_SCL */
-			         <STM32_PINMUX('D', 1, AF4)>; /* I2C5_SDA */
+				 <STM32_PINMUX('D', 1, AF4)>; /* I2C5_SDA */
 			bias-disable;
 			drive-open-drain;
 			slew-rate = <0>;
@@ -463,7 +463,7 @@
 	i2c5_sleep_pins_b: i2c5-sleep-1 {
 		pins {
 			pinmux = <STM32_PINMUX('D', 0, ANALOG)>, /* I2C5_SCL */
-			         <STM32_PINMUX('D', 1, ANALOG)>; /* I2C5_SDA */
+				 <STM32_PINMUX('D', 1, ANALOG)>; /* I2C5_SDA */
 		};
 	};
 
@@ -1072,7 +1072,6 @@
 		};
 	};
 
-
 	sai2a_pins_b: sai2a-1 {
 		pins1 {
 			pinmux = <STM32_PINMUX('I', 6, AF10)>,	/* SAI2_SD_A */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
