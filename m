Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41470178C55
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 09:10:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DW3PeklCFi5hV4/3D0s/yMdkr03EK2WavyTLmEJ1xg=; b=ZCY8A9hDp8g+fQ
	xXgQNpBe+xgyyOJpKBanAFnZtkzrv4vclqqli/ESjiVit+pOxJD0rb7lqdCtl/qi0qnRYyP4FykPm
	EmG4kQGPlUrCAjxO+r7bGh88L+ZDXtffGUo4wYOPJmygteC5mkPFsCbqdq66P73WjyN105HO0STwX
	66cBsw4XSqNvj5D2TNpVoJX71EPxn2A6h5FMpvb/45djBtvhCdODSiml7CP4PejfGCbgsiFsFDI/B
	YQlVLDlnbpmijni+0sTwSZIDNfi/EsjnicLbUTWrKn6027KeFXBYfKDO8g+s8kvvEhpZfOsQy8XN4
	qwuBhrZK3umXaIPt4tCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9P6t-0006VW-Cu; Wed, 04 Mar 2020 08:10:31 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9P6k-0006Tm-Ga
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 08:10:24 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02487rck032634; Wed, 4 Mar 2020 09:10:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=9+Gur4liQxZrb9Zq6YHMLRkrSMJr+7zsVz7UDw2bPG8=;
 b=q9IMOaqvtnNPcV8kSycSRkPVCm0vA3gqtvkWM5uqnE7hGaAj2Q5xtiYVNnE6HnnwUt8o
 jZqcvPcYTNl+nwB/iIXnkBeIOqPu7mLU1D5AFYcnpCC0iaGOyxX5xmEe17i39uaPuUxi
 oNkTOeN9FXi33XdUMoyA6zWY079DKnsLTWuwf/V2/MOaj/+EunG1G/g88EQNdnaLRsdp
 B1Yfkw6q6w7atnZWZzPiGZw2qbhYK0SMvrgmZIlBOGTlD87fO7BCj0QSiWxB1ppb+roY
 kBJusWnBpZNyjXraXxf7YTUa3Eqa0xMIPyjPhQdrYson5R5jWnYPjjcrC/o9Xnk/ZM0H 5Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yfem0ybx6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Mar 2020 09:10:09 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 70A1110003E;
 Wed,  4 Mar 2020 09:10:07 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6361821FE85;
 Wed,  4 Mar 2020 09:10:07 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 4 Mar 2020 09:10:06 +0100
From: Yann Gautier <yann.gautier@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/3] ARM: dts: stm32: add disable-wp property for SD-card on
 STM32MP1 boards
Date: Wed, 4 Mar 2020 09:09:55 +0100
Message-ID: <20200304080956.7699-3-yann.gautier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200304080956.7699-1-yann.gautier@st.com>
References: <20200304080956.7699-1-yann.gautier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-04_01:2020-03-03,
 2020-03-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_001022_973826_0033FB55 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yann Gautier <yann.gautier@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On STM32MP1 DK1, DK2, ED1 and EV1 boards, there is only a micro SD socket.
This is also the case on Avenger board.
They don't support the Write Protect pin.
The disable-wp is then added in the SD-cards sdmmc1 nodes.
This avoids executing some code and a warning during driver probe.

Signed-off-by: Yann Gautier <yann.gautier@st.com>
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 1 +
 arch/arm/boot/dts/stm32mp157c-ed1.dts       | 1 +
 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi      | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 2bdfab192a39..8e060219751b 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -301,6 +301,7 @@
 	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
 	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
 	cd-gpios = <&gpioi 8 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+	disable-wp;
 	st,sig-dir;
 	st,neg-edge;
 	st,use-ckin;
diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
index 5daaec3aec9b..6f8d23a7d4a6 100644
--- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
@@ -314,6 +314,7 @@
 	pinctrl-1 = <&sdmmc1_b4_od_pins_a &sdmmc1_dir_pins_a>;
 	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a &sdmmc1_dir_sleep_pins_a>;
 	cd-gpios = <&gpiog 1 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+	disable-wp;
 	st,sig-dir;
 	st,neg-edge;
 	st,use-ckin;
diff --git a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
index 02d52eb3c34f..6897119cadc9 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
@@ -480,6 +480,7 @@
 	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
 	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
 	cd-gpios = <&gpiob 7 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+	disable-wp;
 	st,neg-edge;
 	bus-width = <4>;
 	vmmc-supply = <&v3v3>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
