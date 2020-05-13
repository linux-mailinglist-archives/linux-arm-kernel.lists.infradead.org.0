Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A061D1895
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WF6mZIju+4ciFmWZrXLdoys2123WRT2mZc27ddItAcI=; b=u1L5ZxXC3HpvPI
	L0viV69hRCytHwEeACt32ita/fQ1vvvf9LwNE22M0EtPv0pv+G2C23vJ70bMx/V//Bs6McLcCpY+F
	guOZFvpyCuXoTiw+PrmoOVhwMGMqfNWNnqJunOT3NcYSmKL3gAu2DxnMkTMPHmnk30sekPMX/kGk6
	YEajvNuhzEnFYta8vDbgLzZkXnXSDCDJTbokfsk8sx8h0OQRt3YKh/WCUlXxeeocC7vpQlxk0zvGK
	H91aqvdb7gq0rN5wXL3NPnlw6xu3V3VfbKdBWUz8+zZTh4Mq79CnYCaJGyx6xaqkPza5THF8g/5EL
	ra0t2Z1oArUPjSVPU0og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsuh-0000lh-Rr; Wed, 13 May 2020 15:03:15 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsrY-0003xX-IC
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:00:02 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04DEv0Gi016533; Wed, 13 May 2020 16:59:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Pit1yGQ8rKbEnItW2XQ3WIj9sJXNVZ5buvtUs435QEA=;
 b=zM3B0oDb0K/d+ADdlje0vEXF5ADVB/v1xS6cJBMPMFaQ00+tG9IuS6xnhq/7nl4305UQ
 +tatHYT9YMWkp0cN7rEDvTehwe0ej0g35BVFHbXvtHLDCI6ci2UkPMaiS/r76fkxeVXl
 TEF67CXzQIz/aGJKjoMGqvtTyVBwWbr6EWUf3gO4AjSl6+cCbHhPky1JI5GJF1ruPwek
 LSVPjHsK0k8UPQ/bUyQ0Uv4CpfwTggOjMB/HicbOnGu/9Ujr1k+4WvDWfGP3oBbsK1Rx
 mqKXg9yevD6qdsrS5YOg9Y4mW9VI5X9+50EFsYZVm0SiafA8jDCVZCEwOW/N8878Jl2X WQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vydgmv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 13 May 2020 16:59:55 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BED1A10002A;
 Wed, 13 May 2020 16:59:53 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B0CE62D3006;
 Wed, 13 May 2020 16:59:53 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 13 May 2020 16:59:52
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <linus.walleij@linaro.org>, <robh+dt@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH 11/15] ARM: dts: stm32: Update nodes names for stm32mp15
 pinctrl
Date: Wed, 13 May 2020 16:59:31 +0200
Message-ID: <20200513145935.22493-12-benjamin.gaignard@st.com>
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
X-CRM114-CacheID: sfid-20200513_080000_897484_1551E545 
X-CRM114-Status: GOOD (  13.87  )
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
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 73c07f0dfad2..e87a59cd9d48 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -6,7 +6,7 @@
 #include <dt-bindings/pinctrl/stm32-pinfunc.h>
 
 &pinctrl {
-	adc1_in6_pins_a: adc1-in6 {
+	adc1_in6_pins_a: adc1-in6-0 {
 		pins {
 			pinmux = <STM32_PINMUX('F', 12, ANALOG)>;
 		};
@@ -58,13 +58,13 @@
 		};
 	};
 
-	dac_ch1_pins_a: dac-ch1 {
+	dac_ch1_pins_a: dac-ch1-0 {
 		pins {
 			pinmux = <STM32_PINMUX('A', 4, ANALOG)>;
 		};
 	};
 
-	dac_ch2_pins_a: dac-ch2 {
+	dac_ch2_pins_a: dac-ch2-0 {
 		pins {
 			pinmux = <STM32_PINMUX('A', 5, ANALOG)>;
 		};
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
