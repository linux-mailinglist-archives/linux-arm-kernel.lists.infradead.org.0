Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D31B0B4DF4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 14:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzilyF4ztWNVG0aYONLsOHMJ6q771osw99IgBF4H7fg=; b=bt2BfvluBnZfu1
	UY5t81IWGeY7xCQWCMtddpDYvbmNtKy8EDVpqMrYI78vvJTeZJQtZsMRoSf/8p0u59eMkCSYHMvri
	qQLuwJbsAQBVLzZgJZngXly/8pkBqKpvErHH9qYE8qYA/eJekoSCOARumJpuYPer74h0eHCluwycY
	Ijq0jDYaJQMyCZ5e94CkdWm55Hv9lxqsccYxB7QlAT303/Sd4eeicreStdSP/d8UdECpUGjxW4XKH
	W5ldussr1M8Uw/i7IaLOTcVZmjcHlibEspm2pyv4hB3fXiLb4qLzwGSnbMBxl1Yt50OOgZzkaW7C2
	TUPXcomg7GVYmcRkRd1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAClN-0002jU-TY; Tue, 17 Sep 2019 12:39:21 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iACkx-0002i5-4x
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 12:38:56 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8HCUsGj028794; Tue, 17 Sep 2019 14:38:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=QkRCYsDXVXhFgyT8aCcIU1yLANBURobzqeomhnBIHLE=;
 b=Ft6l6A+LX9udX9LGWjbwgFpHqZt7GblezpZjY42GBsw2xvwZG5DRQElZBGoPgm8WTkQW
 8U2GNIZXHblsCHQsVlYRrrwz+V/39Ckst8fK+B3A5BryLfcm2doS2BNl0c3e/WzumTyP
 slb9JEj/1RzKZgHo8jWEEf6gikv9KbgnHWpu9Vv5wevzvWABxQrHXhVw22xKRZVoYdwV
 es8La7+RYl5ARoMaTusjibJ4/yfswYsJxDyBUuuE7sk3hqgKvlk2xxW4Qhhhzt+BvKWt
 9/3pmYWeSeMlZRreA/tzLur7mv8Vw8HKks3VcoTSBVIYYw5zF7yuIC/XcEKlA4Tq7WCC qQ== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v0np11k7a-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 17 Sep 2019 14:38:44 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 1444D52;
 Tue, 17 Sep 2019 12:38:36 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C166E2BCDD9;
 Tue, 17 Sep 2019 14:38:35 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 17 Sep
 2019 14:38:35 +0200
Received: from localhost (10.48.1.232) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Tue, 17 Sep 2019 14:38:35 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH v2 2/2] iio: adc: stm32-adc: fix a race when using several
 adcs with dma and irq
Date: Tue, 17 Sep 2019 14:38:16 +0200
Message-ID: <1568723896-19063-3-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568723896-19063-1-git-send-email-fabrice.gasnier@st.com>
References: <1568723896-19063-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.1.232]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-17_06:2019-09-17,2019-09-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_053855_482618_EC395A87 
X-CRM114-Status: GOOD (  21.43  )
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

End of conversion may be handled by using IRQ or DMA. There may be a
race when two conversions complete at the same time on several ADCs.
EOC can be read as 'set' for several ADCs, with:
- an ADC configured to use IRQs. EOCIE bit is set. The handler is normally
  called in this case.
- an ADC configured to use DMA. EOCIE bit isn't set. EOC triggers the DMA
  request instead. It's then automatically cleared by DMA read. But the
  handler gets called due to status bit is temporarily set (IRQ triggered
  by the other ADC).
So both EOC status bit in CSR and EOCIE control bit must be checked
before invoking the interrupt handler (e.g. call ISR only for
IRQ-enabled ADCs).

Fixes: 2763ea0585c9 ("iio: adc: stm32: add optional dma support")

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
Changes in v2:
- Keep registers definitions as a whole block to ease readability (add
  a precursor patch to move them to header file)
---
 drivers/iio/adc/stm32-adc-core.c | 43 +++++++++++++++++++++++++++++++++++++---
 drivers/iio/adc/stm32-adc-core.h |  1 +
 2 files changed, 41 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
index 84ac326..93a096a 100644
--- a/drivers/iio/adc/stm32-adc-core.c
+++ b/drivers/iio/adc/stm32-adc-core.c
@@ -44,6 +44,8 @@
  * @eoc1:	adc1 end of conversion flag in @csr
  * @eoc2:	adc2 end of conversion flag in @csr
  * @eoc3:	adc3 end of conversion flag in @csr
+ * @ier:	interrupt enable register offset for each adc
+ * @eocie_msk:	end of conversion interrupt enable mask in @ier
  */
 struct stm32_adc_common_regs {
 	u32 csr;
@@ -51,6 +53,8 @@ struct stm32_adc_common_regs {
 	u32 eoc1_msk;
 	u32 eoc2_msk;
 	u32 eoc3_msk;
+	u32 ier;
+	u32 eocie_msk;
 };
 
 struct stm32_adc_priv;
@@ -276,6 +280,8 @@ static const struct stm32_adc_common_regs stm32f4_adc_common_regs = {
 	.eoc1_msk = STM32F4_EOC1,
 	.eoc2_msk = STM32F4_EOC2,
 	.eoc3_msk = STM32F4_EOC3,
+	.ier = STM32F4_ADC_CR1,
+	.eocie_msk = STM32F4_EOCIE,
 };
 
 /* STM32H7 common registers definitions */
@@ -284,8 +290,24 @@ static const struct stm32_adc_common_regs stm32h7_adc_common_regs = {
 	.ccr = STM32H7_ADC_CCR,
 	.eoc1_msk = STM32H7_EOC_MST,
 	.eoc2_msk = STM32H7_EOC_SLV,
+	.ier = STM32H7_ADC_IER,
+	.eocie_msk = STM32H7_EOCIE,
 };
 
+static const unsigned int stm32_adc_offset[STM32_ADC_MAX_ADCS] = {
+	0, STM32_ADC_OFFSET, STM32_ADC_OFFSET * 2,
+};
+
+static unsigned int stm32_adc_eoc_enabled(struct stm32_adc_priv *priv,
+					  unsigned int adc)
+{
+	u32 ier, offset = stm32_adc_offset[adc];
+
+	ier = readl_relaxed(priv->common.base + offset + priv->cfg->regs->ier);
+
+	return ier & priv->cfg->regs->eocie_msk;
+}
+
 /* ADC common interrupt for all instances */
 static void stm32_adc_irq_handler(struct irq_desc *desc)
 {
@@ -296,13 +318,28 @@ static void stm32_adc_irq_handler(struct irq_desc *desc)
 	chained_irq_enter(chip, desc);
 	status = readl_relaxed(priv->common.base + priv->cfg->regs->csr);
 
-	if (status & priv->cfg->regs->eoc1_msk)
+	/*
+	 * End of conversion may be handled by using IRQ or DMA. There may be a
+	 * race here when two conversions complete at the same time on several
+	 * ADCs. EOC may be read 'set' for several ADCs, with:
+	 * - an ADC configured to use DMA (EOC triggers the DMA request, and
+	 *   is then automatically cleared by DR read in hardware)
+	 * - an ADC configured to use IRQs (EOCIE bit is set. The handler must
+	 *   be called in this case)
+	 * So both EOC status bit in CSR and EOCIE control bit must be checked
+	 * before invoking the interrupt handler (e.g. call ISR only for
+	 * IRQ-enabled ADCs).
+	 */
+	if (status & priv->cfg->regs->eoc1_msk &&
+	    stm32_adc_eoc_enabled(priv, 0))
 		generic_handle_irq(irq_find_mapping(priv->domain, 0));
 
-	if (status & priv->cfg->regs->eoc2_msk)
+	if (status & priv->cfg->regs->eoc2_msk &&
+	    stm32_adc_eoc_enabled(priv, 1))
 		generic_handle_irq(irq_find_mapping(priv->domain, 1));
 
-	if (status & priv->cfg->regs->eoc3_msk)
+	if (status & priv->cfg->regs->eoc3_msk &&
+	    stm32_adc_eoc_enabled(priv, 2))
 		generic_handle_irq(irq_find_mapping(priv->domain, 2));
 
 	chained_irq_exit(chip, desc);
diff --git a/drivers/iio/adc/stm32-adc-core.h b/drivers/iio/adc/stm32-adc-core.h
index 94aa2d2..2579d51 100644
--- a/drivers/iio/adc/stm32-adc-core.h
+++ b/drivers/iio/adc/stm32-adc-core.h
@@ -25,6 +25,7 @@
  * --------------------------------------------------------
  */
 #define STM32_ADC_MAX_ADCS		3
+#define STM32_ADC_OFFSET		0x100
 #define STM32_ADCX_COMN_OFFSET		0x300
 
 /* STM32F4 - Registers for each ADC instance */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
