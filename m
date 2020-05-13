Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F9D1D1892
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1yBLKunub55B3YTE8F8oMrnd/vIYuZswWjaxrFLtqxw=; b=QAmCQrKI9X3pYS
	rM66y0dMlFxd93bpmc5YJmExQIk13U0CTbsyRMp36Vhrsm1lMAkT3ObyF+eoWJVkzGaB4rC6udHZ+
	UulfzVRcRjDPcAFmMlF6QpRckJoNdwAFykQhbb8twC9HunNtHndgh64GfGs0D9JoJuK4UZgtK7FfG
	8uKA+VxslqbPOfue1t58c8mpvMGHo5SDfwh9njbqRuGTNJeWy5KYJVV3WTY6kGCKeTUbavlhIy5s7
	ygeS/cyYts6kZ4SfMbKomwmcHX5pZl30Cs5xPIXGyMYr9OYuwOI3K3urG6pwJh6Kr1fQnIPjpj6Ov
	amOVOWvhQ7O3Va4LAoxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsuN-0000L9-3R; Wed, 13 May 2020 15:02:55 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsrW-0003uq-EG
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:00:00 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04DEv03b016527; Wed, 13 May 2020 16:59:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=mwyeERxk2B3fi4OoJUIvRQEZ7pcDFkiAPomoxGvPt0U=;
 b=GLLfwc4J0Jvwd0moB7yT47ZWedecVE36DC1qcp8jh4WJLXfSi6l64VpaESlrq/8kwdYM
 mWY9qD5iZ2KDHcrivNxOWECZzMfFpl5IMs2SIDCumF8ZRwYalj/5dum6oQuwDBpFfg0D
 vHj1GlIzppfP/5rD568GPcxihohxPmSDKBOEL+K75LxwhirjygfgbfkW73MtgbqOaT2g
 ZOrGXlYRBV42QaE2+FVWWP3NzD8/OUNnzqskiB/yvofLHyjFehgyY7UOlE9MDuEf8ES6
 8OKpMqZvmiQTmFfh7SqIarS7yb/xQupc34Pp1iCjrTFC5KVzmUhXrwP1kcOo7If+KjhX 9Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vydgmp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 13 May 2020 16:59:53 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A336210002A;
 Wed, 13 May 2020 16:59:52 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 948962D3006;
 Wed, 13 May 2020 16:59:52 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 13 May 2020 16:59:51
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <linus.walleij@linaro.org>, <robh+dt@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH 10/15] ARM: dts: stm32: Update nodes names for stm32h743
 pinctrl
Date: Wed, 13 May 2020 16:59:30 +0200
Message-ID: <20200513145935.22493-11-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200513145935.22493-1-benjamin.gaignard@st.com>
References: <20200513145935.22493-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-13_06:2020-05-13,
 2020-05-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_075958_803764_603F81FB 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the nodes names to be aligned with yaml description

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32h743-pinctrl.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/stm32h743-pinctrl.dtsi b/arch/arm/boot/dts/stm32h743-pinctrl.dtsi
index e44e7baa3f17..fa5dcb6a5fdd 100644
--- a/arch/arm/boot/dts/stm32h743-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32h743-pinctrl.dtsi
@@ -163,7 +163,7 @@
 				#interrupt-cells = <2>;
 			};
 
-			i2c1_pins_a: i2c1@0 {
+			i2c1_pins_a: i2c1-0 {
 				pins {
 					pinmux = <STM32_PINMUX('B', 6, AF4)>, /* I2C1_SCL */
 						 <STM32_PINMUX('B', 7, AF4)>; /* I2C1_SDA */
@@ -173,7 +173,7 @@
 				};
 			};
 
-			ethernet_rmii: rmii@0 {
+			ethernet_rmii: rmii-0 {
 				pins {
 					pinmux = <STM32_PINMUX('G', 11, AF11)>,
 						 <STM32_PINMUX('G', 13, AF11)>,
@@ -256,7 +256,7 @@
 				};
 			};
 
-			usart1_pins: usart1@0 {
+			usart1_pins: usart1-0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('B', 14, AF4)>; /* USART1_TX */
 					bias-disable;
@@ -269,7 +269,7 @@
 				};
 			};
 
-			usart2_pins: usart2@0 {
+			usart2_pins: usart2-0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('D', 5, AF7)>; /* USART2_TX */
 					bias-disable;
@@ -282,7 +282,7 @@
 				};
 			};
 
-			usbotg_hs_pins_a: usbotg-hs@0 {
+			usbotg_hs_pins_a: usbotg-hs-0 {
 				pins {
 					pinmux = <STM32_PINMUX('H', 4, AF10)>,	/* ULPI_NXT */
 							 <STM32_PINMUX('I', 11, AF10)>, /* ULPI_DIR> */
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
