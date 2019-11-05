Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA5DEFDBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 13:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7gfa8zIZuK69n/qJUphMk9/p9mp0eWhb7il1zaqoxPw=; b=FZiEoBMwCYJ6o4
	7EBj7bfAn2OwpwHDnS9cNqm7J19oA2NzyTRxk4/O82DuHgh6e/h8Mq2SgwzUj7K7ZRktdfiFyn568
	74frZGUXfIqbCIAsBysCVLii/RQpFWBNOWGnF7ksdoSSGO7Ub/k7FS3Mlg3WZ5GACAF+zTWCbuHj9
	EgsLY6HMj1jMZKlpSUQJE8VkAr1ETIeS0Gb2UbqVKKkXtSEIz6TDUkc+6f1chvcXrGiasVatbzdgD
	7D8nNO3KlJrloFepuzhKMu20f+gr7IfNpd4ZHf0z1OmyTBra3I7zDE8nSlGqFXP6Vzg/or6CrFkj+
	VXb2tfB9ZDU+5xUcgUHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyKp-0007SE-Qb; Tue, 05 Nov 2019 12:53:23 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyKA-0006tK-2D
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 12:52:44 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA5Cq6Gb024537; Tue, 5 Nov 2019 13:52:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=clWmFbgtH5kIExt6BYDWdMXSbKq1vqi70ItRquBcd0w=;
 b=O59bKtIuxJnrklY5sc+fpWiImpUJDRelWT24Pp6GxVY3p/xsPHeqO1VbqUHykMM8DJ9/
 J5jjTm4aaTQ/BNr7C93DHPIbIE8p2VF/AXXTLMhXP6Uxc/iGDLdyoqfxE85oibcOn+Jw
 3pPawXDE0zvZMwuWPXpOgrJ2GQpUSLWA9vMLpjEuLIMwjmoECn/wxG/kNlRT6WLv/L6y
 8RbgZNgh/mXhpIIZTVmhYz9FwXpqbnWH3FqRCzi99R7WgG0C9e06QypgBaUUfdtyZiB8
 ztXww1tmg90jfQFmYMA1zFASPTg3cTDfDlH7PH3P5har6M/BOl/FuXtJ7ieR4Ee+wtMO Ug== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w0ytcr0bg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 Nov 2019 13:52:35 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D2A8010002A;
 Tue,  5 Nov 2019 13:52:34 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C6E3F2BC5E5;
 Tue,  5 Nov 2019 13:52:34 +0100 (CET)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 5 Nov 2019
 13:52:34 +0100
Received: from localhost (10.48.0.192) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Tue, 5 Nov 2019 13:52:34 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 1/4] ARM: dts: stm32: add pwm sleep pin muxing for
 stm32mp157c-ed1
Date: Tue, 5 Nov 2019 13:52:18 +0100
Message-ID: <1572958341-12404-2-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572958341-12404-1-git-send-email-fabrice.gasnier@st.com>
References: <1572958341-12404-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-05_04:2019-11-05,2019-11-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_045242_386656_B372553B 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add PWM pinctrl definitions used in low-power (sleep) mode on
stm32mp157c-ed1.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index 1e45b75..de5679f 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -596,6 +596,12 @@
 				};
 			};
 
+			pwm2_sleep_pins_a: pwm2-sleep-0 {
+				pins {
+					pinmux = <STM32_PINMUX('A', 3, ANALOG)>; /* TIM2_CH4 */
+				};
+			};
+
 			pwm8_pins_a: pwm8-0 {
 				pins {
 					pinmux = <STM32_PINMUX('I', 2, AF3)>; /* TIM8_CH4 */
@@ -605,6 +611,12 @@
 				};
 			};
 
+			pwm8_sleep_pins_a: pwm8-sleep-0 {
+				pins {
+					pinmux = <STM32_PINMUX('I', 2, ANALOG)>; /* TIM8_CH4 */
+				};
+			};
+
 			pwm12_pins_a: pwm12-0 {
 				pins {
 					pinmux = <STM32_PINMUX('H', 6, AF2)>; /* TIM12_CH1 */
@@ -614,6 +626,12 @@
 				};
 			};
 
+			pwm12_sleep_pins_a: pwm12-sleep-0 {
+				pins {
+					pinmux = <STM32_PINMUX('H', 6, ANALOG)>; /* TIM12_CH1 */
+				};
+			};
+
 			qspi_clk_pins_a: qspi-clk-0 {
 				pins {
 					pinmux = <STM32_PINMUX('F', 10, AF9)>; /* QSPI_CLK */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
