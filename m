Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C6DB2211
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 16:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mI6YcIV8s8a5iXYeFnu9GhIxCn4hX+yfeX15OytBhQc=; b=JhQADfF0u1G1W4
	hStOK2gDN/d9Q/X/jPIgAirtm8yPpfN9JHk9t9igLuY4nk+iW3ojJlL7bENIZFYe58v09XCJaExnS
	SZGuJ91zolwjRzB7RyAtB7E6tqj1d7KXbz/EVRfZt0X/vMw7XoAKo99jeZ4YTi4QCUtCorYuy6JtV
	i0xThi7eloSnzBnEzHoraZM7wS/gRal7G0X1WZVcI0dyDkzF8RM5Lvabc07GhPgnpBVyMxdmgR8Tj
	WB58qofQz2XgkuOOGukZQUNq3DOB24cBRFVt7jmAkzz+oirHp/qA0ITrUH25glfiNKgOurq0zYLLw
	uQQWqMVkbU0urMMeo/iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mg9-000223-Ne; Fri, 13 Sep 2019 14:36:06 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mfF-00018U-Ds
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 14:35:10 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8DEUoD2005823; Fri, 13 Sep 2019 16:35:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=r9bCUxv8k2rqzfX0+tEylu2OZfX7xZ0K9dYIQm5sZ6w=;
 b=W/qZJCLLcfrZugV9YgOxipRn7Z6z7LMe8JKXGRv42C6trfe2sEpuY4founWUEy9r4q7o
 u3cNAJo5A4HZT7Oae/86PZNaDJ1ru2/U6KLD4Y2eH1whS6FRASMIIywHsJE0ia8qbJgs
 RC6nNp4oQvOEjDhiJrSCZT+XW5rXrb6XoiythsTWsEix1HZCC1ElozBy2HzaivVGu+S1
 8J8+8zbUAEZyIzwxo852oju28gbsKMds+FU6wf2wZDY+mDqHQ2jLGWMsaW3URtMtHc6V
 FXpQsR+IgyLy7CI90gzwhCm2wDZhKLfX8zLBQJlJMZiMvLP92J78UgsdnazS9oZnYHb/ jg== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2uyte3wm11-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 13 Sep 2019 16:35:04 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id BF8F74E;
 Fri, 13 Sep 2019 14:34:59 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 79A072C86AE;
 Fri, 13 Sep 2019 16:34:59 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 13 Sep
 2019 16:34:59 +0200
Received: from localhost (10.48.1.232) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Fri, 13 Sep 2019 16:34:59 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 2/3] ARM: dts: stm32: add ADC pins used on stm32mp157a-dk1
Date: Fri, 13 Sep 2019 16:34:39 +0200
Message-ID: <1568385280-2633-3-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568385280-2633-1-git-send-email-fabrice.gasnier@st.com>
References: <1568385280-2633-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.1.232]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-13_07:2019-09-11,2019-09-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_073509_766118_6D01707A 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Define pins that can be used for ADC on stm32mp157a-dk1 board:
- AIN connector has ADC input pins
- USB Type-C CC1 & CC2 pins (e.g. in18, in19)

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index e4a0d51..eeb60d0 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -137,6 +137,22 @@
 				status = "disabled";
 			};
 
+			adc12_ain_pins_a: adc12-ain-0 {
+				pins {
+					pinmux = <STM32_PINMUX('C', 3, ANALOG)>, /* ADC1 in13 */
+						 <STM32_PINMUX('F', 12, ANALOG)>, /* ADC1 in6 */
+						 <STM32_PINMUX('F', 13, ANALOG)>, /* ADC2 in2 */
+						 <STM32_PINMUX('F', 14, ANALOG)>; /* ADC2 in6 */
+				};
+			};
+
+			adc12_usb_cc_pins_a: adc12-usb-cc-pins-0 {
+				pins {
+					pinmux = <STM32_PINMUX('A', 4, ANALOG)>, /* ADC12 in18 */
+						 <STM32_PINMUX('A', 5, ANALOG)>; /* ADC12 in19 */
+				};
+			};
+
 			cec_pins_a: cec-0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 15, AF4)>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
