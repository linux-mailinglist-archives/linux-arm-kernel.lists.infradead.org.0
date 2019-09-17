Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6DBB4DFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 14:40:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oLfloaAMfrLEXo08lyhNb4Rsxs/JhHXdVNSvSaqjYsg=; b=HV1StvTA44p4P9
	k1bZXzdEc4lAkcSBRWmlKvTH0GhIWmYwSnqeiqJ7qJesIHhVS+iO8D8bJpoCjy/fReWINRDT6lhAK
	RKxwHXcCUo6aIjPvmV4DCO62GDXaNvgmfQhFwZiSj6quOo+vfCqyx5PB4xR88KHKq1zffy4BwQBH8
	kBqXa7KGv1mEP9KSa1XBxbAz9TlXx21Mk2enN8ALkyukCYfEKY23/ZWHdvIH1x7UuPgEGy62f+4Ad
	c5Y3ttaEoS5w0pQQJwWJ82lRH8hmuzjYe0tVh9EjQL/wmtm8HGOC14eEzamCIq5iXXSosTtwVH6Pq
	c5pZAQZz44gAwnoFc9Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAClv-0002xA-Ca; Tue, 17 Sep 2019 12:39:56 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iACkw-0002i7-NB
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 12:38:56 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8HCV7lC014188; Tue, 17 Sep 2019 14:38:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=qg2VRZ3FLUdPLqfly5fLD9QSw93pB/E+jMQZP4//0tI=;
 b=Y6Waow0DZ5m9Mj5fZ3UawFuERUHP9vnLeo3CXToMXbmPEpZaxgnhLTk0ynLNVNF6TpIz
 pt02Be5WhH4BZYR7vBlJ/7+/VROumADAkK+CzUF4F8mCpMOQANzyN9f5OWS/w+dmjNbZ
 7G2Xhy+VGDta5PyZZt9PR00KwFqhj40gn3MgPCUE4hSlJzW2XXsOSByO1EiIlW18MJ+9
 CuX/iu2Kb1crJP/r493HwcDsedpmBMblNkLnbHSbi6C+D4AoYYrSEKuOGOXIMo1QH/VB
 X/1XfukEcwHPM93iAtfRt62cv63nH3FzAoncoFSd53FyKQaVlwlYCM65QpRTfmEB2ha6 nw== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v0nyx1hnp-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 17 Sep 2019 14:38:44 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 6314C50;
 Tue, 17 Sep 2019 12:38:35 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C315E2BDA80;
 Tue, 17 Sep 2019 14:38:34 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 17 Sep
 2019 14:38:34 +0200
Received: from localhost (10.48.1.232) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Tue, 17 Sep 2019 14:38:34 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH v2 1/2] iio: adc: stm32-adc: move registers definitions
Date: Tue, 17 Sep 2019 14:38:15 +0200
Message-ID: <1568723896-19063-2-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568723896-19063-1-git-send-email-fabrice.gasnier@st.com>
References: <1568723896-19063-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.1.232]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-17_06:2019-09-17,2019-09-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_053855_236396_2CFF4EC8 
X-CRM114-Status: GOOD (  13.54  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lars@metafoo.de, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move STM32 ADC registers definitions to common header.
This is precursor patch to:
- iio: adc: stm32-adc: fix a race when using several adcs with dma and irq

It keeps registers definitions as a whole block, to ease readability and
allow simple access path to EOC bits (readl) in stm32-adc-core driver.

Fixes: 2763ea0585c9 ("iio: adc: stm32: add optional dma support")

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/iio/adc/stm32-adc-core.c |  27 --------
 drivers/iio/adc/stm32-adc-core.h | 136 +++++++++++++++++++++++++++++++++++++++
 drivers/iio/adc/stm32-adc.c      | 109 -------------------------------
 3 files changed, 136 insertions(+), 136 deletions(-)

diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
index 9b85fef..84ac326 100644
--- a/drivers/iio/adc/stm32-adc-core.c
+++ b/drivers/iio/adc/stm32-adc-core.c
@@ -24,33 +24,6 @@
 
 #include "stm32-adc-core.h"
 
-/* STM32F4 - common registers for all ADC instances: 1, 2 & 3 */
-#define STM32F4_ADC_CSR			(STM32_ADCX_COMN_OFFSET + 0x00)
-#define STM32F4_ADC_CCR			(STM32_ADCX_COMN_OFFSET + 0x04)
-
-/* STM32F4_ADC_CSR - bit fields */
-#define STM32F4_EOC3			BIT(17)
-#define STM32F4_EOC2			BIT(9)
-#define STM32F4_EOC1			BIT(1)
-
-/* STM32F4_ADC_CCR - bit fields */
-#define STM32F4_ADC_ADCPRE_SHIFT	16
-#define STM32F4_ADC_ADCPRE_MASK		GENMASK(17, 16)
-
-/* STM32H7 - common registers for all ADC instances */
-#define STM32H7_ADC_CSR			(STM32_ADCX_COMN_OFFSET + 0x00)
-#define STM32H7_ADC_CCR			(STM32_ADCX_COMN_OFFSET + 0x08)
-
-/* STM32H7_ADC_CSR - bit fields */
-#define STM32H7_EOC_SLV			BIT(18)
-#define STM32H7_EOC_MST			BIT(2)
-
-/* STM32H7_ADC_CCR - bit fields */
-#define STM32H7_PRESC_SHIFT		18
-#define STM32H7_PRESC_MASK		GENMASK(21, 18)
-#define STM32H7_CKMODE_SHIFT		16
-#define STM32H7_CKMODE_MASK		GENMASK(17, 16)
-
 #define STM32_ADC_CORE_SLEEP_DELAY_MS	2000
 
 /* SYSCFG registers */
diff --git a/drivers/iio/adc/stm32-adc-core.h b/drivers/iio/adc/stm32-adc-core.h
index 8af507b..94aa2d2 100644
--- a/drivers/iio/adc/stm32-adc-core.h
+++ b/drivers/iio/adc/stm32-adc-core.h
@@ -27,6 +27,142 @@
 #define STM32_ADC_MAX_ADCS		3
 #define STM32_ADCX_COMN_OFFSET		0x300
 
+/* STM32F4 - Registers for each ADC instance */
+#define STM32F4_ADC_SR			0x00
+#define STM32F4_ADC_CR1			0x04
+#define STM32F4_ADC_CR2			0x08
+#define STM32F4_ADC_SMPR1		0x0C
+#define STM32F4_ADC_SMPR2		0x10
+#define STM32F4_ADC_HTR			0x24
+#define STM32F4_ADC_LTR			0x28
+#define STM32F4_ADC_SQR1		0x2C
+#define STM32F4_ADC_SQR2		0x30
+#define STM32F4_ADC_SQR3		0x34
+#define STM32F4_ADC_JSQR		0x38
+#define STM32F4_ADC_JDR1		0x3C
+#define STM32F4_ADC_JDR2		0x40
+#define STM32F4_ADC_JDR3		0x44
+#define STM32F4_ADC_JDR4		0x48
+#define STM32F4_ADC_DR			0x4C
+
+/* STM32F4 - common registers for all ADC instances: 1, 2 & 3 */
+#define STM32F4_ADC_CSR			(STM32_ADCX_COMN_OFFSET + 0x00)
+#define STM32F4_ADC_CCR			(STM32_ADCX_COMN_OFFSET + 0x04)
+
+/* STM32F4_ADC_SR - bit fields */
+#define STM32F4_STRT			BIT(4)
+#define STM32F4_EOC			BIT(1)
+
+/* STM32F4_ADC_CR1 - bit fields */
+#define STM32F4_RES_SHIFT		24
+#define STM32F4_RES_MASK		GENMASK(25, 24)
+#define STM32F4_SCAN			BIT(8)
+#define STM32F4_EOCIE			BIT(5)
+
+/* STM32F4_ADC_CR2 - bit fields */
+#define STM32F4_SWSTART			BIT(30)
+#define STM32F4_EXTEN_SHIFT		28
+#define STM32F4_EXTEN_MASK		GENMASK(29, 28)
+#define STM32F4_EXTSEL_SHIFT		24
+#define STM32F4_EXTSEL_MASK		GENMASK(27, 24)
+#define STM32F4_EOCS			BIT(10)
+#define STM32F4_DDS			BIT(9)
+#define STM32F4_DMA			BIT(8)
+#define STM32F4_ADON			BIT(0)
+
+/* STM32F4_ADC_CSR - bit fields */
+#define STM32F4_EOC3			BIT(17)
+#define STM32F4_EOC2			BIT(9)
+#define STM32F4_EOC1			BIT(1)
+
+/* STM32F4_ADC_CCR - bit fields */
+#define STM32F4_ADC_ADCPRE_SHIFT	16
+#define STM32F4_ADC_ADCPRE_MASK		GENMASK(17, 16)
+
+/* STM32H7 - Registers for each ADC instance */
+#define STM32H7_ADC_ISR			0x00
+#define STM32H7_ADC_IER			0x04
+#define STM32H7_ADC_CR			0x08
+#define STM32H7_ADC_CFGR		0x0C
+#define STM32H7_ADC_SMPR1		0x14
+#define STM32H7_ADC_SMPR2		0x18
+#define STM32H7_ADC_PCSEL		0x1C
+#define STM32H7_ADC_SQR1		0x30
+#define STM32H7_ADC_SQR2		0x34
+#define STM32H7_ADC_SQR3		0x38
+#define STM32H7_ADC_SQR4		0x3C
+#define STM32H7_ADC_DR			0x40
+#define STM32H7_ADC_DIFSEL		0xC0
+#define STM32H7_ADC_CALFACT		0xC4
+#define STM32H7_ADC_CALFACT2		0xC8
+
+/* STM32H7 - common registers for all ADC instances */
+#define STM32H7_ADC_CSR			(STM32_ADCX_COMN_OFFSET + 0x00)
+#define STM32H7_ADC_CCR			(STM32_ADCX_COMN_OFFSET + 0x08)
+
+/* STM32H7_ADC_ISR - bit fields */
+#define STM32MP1_VREGREADY		BIT(12)
+#define STM32H7_EOC			BIT(2)
+#define STM32H7_ADRDY			BIT(0)
+
+/* STM32H7_ADC_IER - bit fields */
+#define STM32H7_EOCIE			STM32H7_EOC
+
+/* STM32H7_ADC_CR - bit fields */
+#define STM32H7_ADCAL			BIT(31)
+#define STM32H7_ADCALDIF		BIT(30)
+#define STM32H7_DEEPPWD			BIT(29)
+#define STM32H7_ADVREGEN		BIT(28)
+#define STM32H7_LINCALRDYW6		BIT(27)
+#define STM32H7_LINCALRDYW5		BIT(26)
+#define STM32H7_LINCALRDYW4		BIT(25)
+#define STM32H7_LINCALRDYW3		BIT(24)
+#define STM32H7_LINCALRDYW2		BIT(23)
+#define STM32H7_LINCALRDYW1		BIT(22)
+#define STM32H7_ADCALLIN		BIT(16)
+#define STM32H7_BOOST			BIT(8)
+#define STM32H7_ADSTP			BIT(4)
+#define STM32H7_ADSTART			BIT(2)
+#define STM32H7_ADDIS			BIT(1)
+#define STM32H7_ADEN			BIT(0)
+
+/* STM32H7_ADC_CFGR bit fields */
+#define STM32H7_EXTEN_SHIFT		10
+#define STM32H7_EXTEN_MASK		GENMASK(11, 10)
+#define STM32H7_EXTSEL_SHIFT		5
+#define STM32H7_EXTSEL_MASK		GENMASK(9, 5)
+#define STM32H7_RES_SHIFT		2
+#define STM32H7_RES_MASK		GENMASK(4, 2)
+#define STM32H7_DMNGT_SHIFT		0
+#define STM32H7_DMNGT_MASK		GENMASK(1, 0)
+
+enum stm32h7_adc_dmngt {
+	STM32H7_DMNGT_DR_ONLY,		/* Regular data in DR only */
+	STM32H7_DMNGT_DMA_ONESHOT,	/* DMA one shot mode */
+	STM32H7_DMNGT_DFSDM,		/* DFSDM mode */
+	STM32H7_DMNGT_DMA_CIRC,		/* DMA circular mode */
+};
+
+/* STM32H7_ADC_CALFACT - bit fields */
+#define STM32H7_CALFACT_D_SHIFT		16
+#define STM32H7_CALFACT_D_MASK		GENMASK(26, 16)
+#define STM32H7_CALFACT_S_SHIFT		0
+#define STM32H7_CALFACT_S_MASK		GENMASK(10, 0)
+
+/* STM32H7_ADC_CALFACT2 - bit fields */
+#define STM32H7_LINCALFACT_SHIFT	0
+#define STM32H7_LINCALFACT_MASK		GENMASK(29, 0)
+
+/* STM32H7_ADC_CSR - bit fields */
+#define STM32H7_EOC_SLV			BIT(18)
+#define STM32H7_EOC_MST			BIT(2)
+
+/* STM32H7_ADC_CCR - bit fields */
+#define STM32H7_PRESC_SHIFT		18
+#define STM32H7_PRESC_MASK		GENMASK(21, 18)
+#define STM32H7_CKMODE_SHIFT		16
+#define STM32H7_CKMODE_MASK		GENMASK(17, 16)
+
 /**
  * struct stm32_adc_common - stm32 ADC driver common data (for all instances)
  * @base:		control registers base cpu addr
diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
index 6a7dd08..663f8a5 100644
--- a/drivers/iio/adc/stm32-adc.c
+++ b/drivers/iio/adc/stm32-adc.c
@@ -28,115 +28,6 @@
 
 #include "stm32-adc-core.h"
 
-/* STM32F4 - Registers for each ADC instance */
-#define STM32F4_ADC_SR			0x00
-#define STM32F4_ADC_CR1			0x04
-#define STM32F4_ADC_CR2			0x08
-#define STM32F4_ADC_SMPR1		0x0C
-#define STM32F4_ADC_SMPR2		0x10
-#define STM32F4_ADC_HTR			0x24
-#define STM32F4_ADC_LTR			0x28
-#define STM32F4_ADC_SQR1		0x2C
-#define STM32F4_ADC_SQR2		0x30
-#define STM32F4_ADC_SQR3		0x34
-#define STM32F4_ADC_JSQR		0x38
-#define STM32F4_ADC_JDR1		0x3C
-#define STM32F4_ADC_JDR2		0x40
-#define STM32F4_ADC_JDR3		0x44
-#define STM32F4_ADC_JDR4		0x48
-#define STM32F4_ADC_DR			0x4C
-
-/* STM32F4_ADC_SR - bit fields */
-#define STM32F4_STRT			BIT(4)
-#define STM32F4_EOC			BIT(1)
-
-/* STM32F4_ADC_CR1 - bit fields */
-#define STM32F4_RES_SHIFT		24
-#define STM32F4_RES_MASK		GENMASK(25, 24)
-#define STM32F4_SCAN			BIT(8)
-#define STM32F4_EOCIE			BIT(5)
-
-/* STM32F4_ADC_CR2 - bit fields */
-#define STM32F4_SWSTART			BIT(30)
-#define STM32F4_EXTEN_SHIFT		28
-#define STM32F4_EXTEN_MASK		GENMASK(29, 28)
-#define STM32F4_EXTSEL_SHIFT		24
-#define STM32F4_EXTSEL_MASK		GENMASK(27, 24)
-#define STM32F4_EOCS			BIT(10)
-#define STM32F4_DDS			BIT(9)
-#define STM32F4_DMA			BIT(8)
-#define STM32F4_ADON			BIT(0)
-
-/* STM32H7 - Registers for each ADC instance */
-#define STM32H7_ADC_ISR			0x00
-#define STM32H7_ADC_IER			0x04
-#define STM32H7_ADC_CR			0x08
-#define STM32H7_ADC_CFGR		0x0C
-#define STM32H7_ADC_SMPR1		0x14
-#define STM32H7_ADC_SMPR2		0x18
-#define STM32H7_ADC_PCSEL		0x1C
-#define STM32H7_ADC_SQR1		0x30
-#define STM32H7_ADC_SQR2		0x34
-#define STM32H7_ADC_SQR3		0x38
-#define STM32H7_ADC_SQR4		0x3C
-#define STM32H7_ADC_DR			0x40
-#define STM32H7_ADC_DIFSEL		0xC0
-#define STM32H7_ADC_CALFACT		0xC4
-#define STM32H7_ADC_CALFACT2		0xC8
-
-/* STM32H7_ADC_ISR - bit fields */
-#define STM32MP1_VREGREADY		BIT(12)
-#define STM32H7_EOC			BIT(2)
-#define STM32H7_ADRDY			BIT(0)
-
-/* STM32H7_ADC_IER - bit fields */
-#define STM32H7_EOCIE			STM32H7_EOC
-
-/* STM32H7_ADC_CR - bit fields */
-#define STM32H7_ADCAL			BIT(31)
-#define STM32H7_ADCALDIF		BIT(30)
-#define STM32H7_DEEPPWD			BIT(29)
-#define STM32H7_ADVREGEN		BIT(28)
-#define STM32H7_LINCALRDYW6		BIT(27)
-#define STM32H7_LINCALRDYW5		BIT(26)
-#define STM32H7_LINCALRDYW4		BIT(25)
-#define STM32H7_LINCALRDYW3		BIT(24)
-#define STM32H7_LINCALRDYW2		BIT(23)
-#define STM32H7_LINCALRDYW1		BIT(22)
-#define STM32H7_ADCALLIN		BIT(16)
-#define STM32H7_BOOST			BIT(8)
-#define STM32H7_ADSTP			BIT(4)
-#define STM32H7_ADSTART			BIT(2)
-#define STM32H7_ADDIS			BIT(1)
-#define STM32H7_ADEN			BIT(0)
-
-/* STM32H7_ADC_CFGR bit fields */
-#define STM32H7_EXTEN_SHIFT		10
-#define STM32H7_EXTEN_MASK		GENMASK(11, 10)
-#define STM32H7_EXTSEL_SHIFT		5
-#define STM32H7_EXTSEL_MASK		GENMASK(9, 5)
-#define STM32H7_RES_SHIFT		2
-#define STM32H7_RES_MASK		GENMASK(4, 2)
-#define STM32H7_DMNGT_SHIFT		0
-#define STM32H7_DMNGT_MASK		GENMASK(1, 0)
-
-enum stm32h7_adc_dmngt {
-	STM32H7_DMNGT_DR_ONLY,		/* Regular data in DR only */
-	STM32H7_DMNGT_DMA_ONESHOT,	/* DMA one shot mode */
-	STM32H7_DMNGT_DFSDM,		/* DFSDM mode */
-	STM32H7_DMNGT_DMA_CIRC,		/* DMA circular mode */
-};
-
-/* STM32H7_ADC_CALFACT - bit fields */
-#define STM32H7_CALFACT_D_SHIFT		16
-#define STM32H7_CALFACT_D_MASK		GENMASK(26, 16)
-#define STM32H7_CALFACT_S_SHIFT		0
-#define STM32H7_CALFACT_S_MASK		GENMASK(10, 0)
-
-/* STM32H7_ADC_CALFACT2 - bit fields */
-#define STM32H7_LINCALFACT_SHIFT	0
-#define STM32H7_LINCALFACT_MASK		GENMASK(29, 0)
-
 /* Number of linear calibration shadow registers / LINCALRDYW control bits */
 #define STM32H7_LINCALFACT_NUM		6
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
