Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2927D698
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k1FpMcP1TEhquWeeP3z0lY+Dss0OOFnZjWgq5hJVmwo=; b=fGFNEyNYBKZDoA
	GaN9uz8BNsc8hGPaT4h+KehAIb4dTSu/qZO40eGMy4Q+UeIo2ys43JuSUEg8g+8gYDxYnhDWzjTvU
	iHoinRZr5zjbbY3+0Zd2hob+pHd6CzcXD8jgaM7LYh1AFOjQ2cZly99RGhJxPcbPY1RCn8oTudgkT
	WQf/qATx8CCHyXUKk1dMkea0mV8crhH2pLf7wLrLOci1AHsvTCnu2eRYl7GzsySfTQJYrTywEz7zX
	YSOGaayNsB014iIHX4yl4+fYA1OJDwDqIhVlAPvH5fU1KLPco6YJ5kdKt7Zyn22UcsGBpr0b+gLAA
	Q2vf5oNXXD3p4z5htpOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5nr-0007Sj-EK; Thu, 01 Aug 2019 07:47:11 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5nl-0007Rj-C6
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:47:07 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x717kCJb019571; Thu, 1 Aug 2019 09:46:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=zzC3uAed5A7dYU4IrlXdMoYN39GbIOLsffQotC5fMd8=;
 b=M8BdWzYZnMQYkSfcoFZtJrebjGiRAYOh2MHKEsmXkyVFsjVuq9lBSG2yzBklvajlkV2a
 ZFLLZqIHDVjrXApEi2gMZMWtB9/zBV7qjghyg+hvp38JGV++V62oy2pDUEmduJY+Uqo0
 4bkxk/JofI2kv2tnnvdHF2QCEZSADSuJuQlIkkldN4YzhY5rrh1Uctkek3gxVNOn4xko
 BHTMEdIwXU7fGJ0i64ogZEc4eogpmFqF3530IyGYbEVIdXKgIrZdRpLeqa4Isx3NjF9P
 iR0pClbF0o6DcZLtg0w8qK5yzcIsvNYN7J1RMKDjlT+fcbu4tmi30D2QE1FWPgLE7ArT Fw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2u0c2yn1m2-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 01 Aug 2019 09:46:41 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CCE1238;
 Thu,  1 Aug 2019 07:46:38 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 939C5CEA35;
 Thu,  1 Aug 2019 09:46:38 +0200 (CEST)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 1 Aug 2019
 09:46:38 +0200
Received: from localhost (10.201.23.16) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 1 Aug 2019 09:46:38
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <linux-stm32@st-md-mailman.stormreply.com>, <alexandre.torgue@st.com>,
 <robh@kernel.org>, <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH] ARM: dts: stm32: add DFSDM pins to stm32mp157c
Date: Thu, 1 Aug 2019 09:46:07 +0200
Message-ID: <1564645567-13156-1-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-01_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_004705_882953_7A1E45B4 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DFSDM pins to stm32mp157c.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 39 +++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index 9eaec9bf8cb8..f96a928cbc49 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -230,6 +230,45 @@
 				};
 			};
 
+			dfsdm_clkout_pins_a: dfsdm-clkout-pins-0 {
+				pins {
+					pinmux = <STM32_PINMUX('B', 13, AF3)>; /* DFSDM_CKOUT */
+					bias-disable;
+					drive-push-pull;
+					slew-rate = <0>;
+				};
+			};
+
+			dfsdm_clkout_sleep_pins_a: dfsdm-clkout-sleep-pins-0 {
+				pins {
+					pinmux = <STM32_PINMUX('B', 13, ANALOG)>; /* DFSDM_CKOUT */
+				};
+			};
+
+			dfsdm_data1_pins_a: dfsdm-data1-pins-0 {
+				pins {
+					pinmux = <STM32_PINMUX('C', 3, AF3)>; /* DFSDM_DATA1 */
+				};
+			};
+
+			dfsdm_data1_sleep_pins_a: dfsdm-data1-sleep-pins-0 {
+				pins {
+					pinmux = <STM32_PINMUX('C', 3, ANALOG)>; /* DFSDM_DATA1 */
+				};
+			};
+
+			dfsdm_data3_pins_a: dfsdm-data3-pins-0 {
+				pins {
+					pinmux = <STM32_PINMUX('F', 13, AF6)>; /* DFSDM_DATA3 */
+				};
+			};
+
+			dfsdm_data3_sleep_pins_a: dfsdm-data3-sleep-pins-0 {
+				pins {
+					pinmux = <STM32_PINMUX('F', 13, ANALOG)>; /* DFSDM_DATA3 */
+				};
+			};
+
 			ethernet0_rgmii_pins_a: rgmii-0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('G', 5, AF11)>, /* ETH_RGMII_CLK125 */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
