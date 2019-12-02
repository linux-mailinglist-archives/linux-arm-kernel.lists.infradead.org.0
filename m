Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC7910E763
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 10:03:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6C4ZlEu6lkF+icagKt60m6B9ExXpao+QxKgghcQAd3Y=; b=YXHSUEU04KIeRO
	ptb9X2N4PRNdvsqIMlmf/I+zXvc6/EjouYzwnhZDTClZwUhiohEkA03Yih/AlFbNgVnZqCDtG2kIT
	pHokVoFQv8DWI72u3Yy8u/mewGfozGA0XGjE0/Gc+NEJQ1IDGhur/TDzJ6ODfHueEfhi3AGrOUf72
	buxrGZy1cfS5TFeJLdXZCjCFJbewXCMrJ9pAKtky9MzlXOdKkpI7OE9+DalCYAYm+e2mlwhqMydGx
	DhvwmD+YHXN0qKy/hAD/0+QYTilLflfVNjfOzvyB3b+26Ysa+BXRPd7pfKizS2sTqkpbNA1+TEPv6
	1UFTIv2OFkuf5fbKaTLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibhbi-00066O-Fa; Mon, 02 Dec 2019 09:03:02 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibhbL-0005wA-4w
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 09:02:41 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB28v7WJ014947; Mon, 2 Dec 2019 10:02:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=KxG3BCoKOSqzI4K4WcjispGuPeQ0ALDJln5WgXTWrsI=;
 b=UF1I1/wYimSGR8fUMCmBwyfMeVB/KqUceQJhmUNUC51KJ5H1gmr51qxalx5yq7gdstKp
 eT25DfBzoc8SR/o3lyWi9orGzXqwDr3U8KPrQYIztzCE2Hs3R+fh/JMKJCuvu8oDPFbh
 hiVoZGR4ng/k/wYkDfFNCKCs56cmBx4v7cmfrH1omhRHE/t+P7D7kUpieZ+uNkInl1xn
 Vy8tDE3eWamDVGIHAzsKHipe+VTk9FHVNshXckWMTezY3JkEDpZepJ+oYFD6OIO7ibJg
 jmjF2L3i5miCquyxGnqJIP2T/PPltkbkeLn5SOqF7C2ehUY+vD9yIf+GjQzblHqvA5fl Ug== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wkee9rvj0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 02 Dec 2019 10:02:29 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2DE6910003A;
 Mon,  2 Dec 2019 10:02:28 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1729E2ACD4E;
 Mon,  2 Dec 2019 10:02:28 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 2 Dec 2019 10:02:27 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH v2] iio: adc: stm32-adc: Add check on overrun interrupt
Date: Mon, 2 Dec 2019 10:02:19 +0100
Message-ID: <1575277339-30237-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-02_01:2019-11-29,2019-12-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_010239_514988_9DFB91E4 
X-CRM114-Status: GOOD (  21.06  )
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
Cc: lars@metafoo.de, olivier.moysan@st.com, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, pmeerw@pmeerw.net, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable overrun interrupt on STM32 ADC. In case data register hasn't been
read (by CPU or DMA), overrun condition is detected when there's new
conversion data available. Stop grabbing data and log an error message.
Use a threaded irq to avoid printing the error message from hard irq
context.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
Changes in v2:
- Add a comment in the code, to give a hint on how to restart the capture,
  as suggested by Jonathan. Also update the error message to mention a
  restart is needed.
---
 drivers/iio/adc/stm32-adc-core.c | 14 +++++-----
 drivers/iio/adc/stm32-adc-core.h |  9 +++++++
 drivers/iio/adc/stm32-adc.c      | 55 ++++++++++++++++++++++++++++++++++++++--
 3 files changed, 69 insertions(+), 9 deletions(-)

diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
index 6537f4f..97655d7 100644
--- a/drivers/iio/adc/stm32-adc-core.c
+++ b/drivers/iio/adc/stm32-adc-core.c
@@ -280,21 +280,21 @@ static int stm32h7_adc_clk_sel(struct platform_device *pdev,
 static const struct stm32_adc_common_regs stm32f4_adc_common_regs = {
 	.csr = STM32F4_ADC_CSR,
 	.ccr = STM32F4_ADC_CCR,
-	.eoc1_msk = STM32F4_EOC1,
-	.eoc2_msk = STM32F4_EOC2,
-	.eoc3_msk = STM32F4_EOC3,
+	.eoc1_msk = STM32F4_EOC1 | STM32F4_OVR1,
+	.eoc2_msk = STM32F4_EOC2 | STM32F4_OVR2,
+	.eoc3_msk = STM32F4_EOC3 | STM32F4_OVR3,
 	.ier = STM32F4_ADC_CR1,
-	.eocie_msk = STM32F4_EOCIE,
+	.eocie_msk = STM32F4_EOCIE | STM32F4_OVRIE,
 };
 
 /* STM32H7 common registers definitions */
 static const struct stm32_adc_common_regs stm32h7_adc_common_regs = {
 	.csr = STM32H7_ADC_CSR,
 	.ccr = STM32H7_ADC_CCR,
-	.eoc1_msk = STM32H7_EOC_MST,
-	.eoc2_msk = STM32H7_EOC_SLV,
+	.eoc1_msk = STM32H7_EOC_MST | STM32H7_OVR_MST,
+	.eoc2_msk = STM32H7_EOC_SLV | STM32H7_OVR_SLV,
 	.ier = STM32H7_ADC_IER,
-	.eocie_msk = STM32H7_EOCIE,
+	.eocie_msk = STM32H7_EOCIE | STM32H7_OVRIE,
 };
 
 static const unsigned int stm32_adc_offset[STM32_ADC_MAX_ADCS] = {
diff --git a/drivers/iio/adc/stm32-adc-core.h b/drivers/iio/adc/stm32-adc-core.h
index 2579d51..2322809 100644
--- a/drivers/iio/adc/stm32-adc-core.h
+++ b/drivers/iio/adc/stm32-adc-core.h
@@ -51,10 +51,12 @@
 #define STM32F4_ADC_CCR			(STM32_ADCX_COMN_OFFSET + 0x04)
 
 /* STM32F4_ADC_SR - bit fields */
+#define STM32F4_OVR			BIT(5)
 #define STM32F4_STRT			BIT(4)
 #define STM32F4_EOC			BIT(1)
 
 /* STM32F4_ADC_CR1 - bit fields */
+#define STM32F4_OVRIE			BIT(26)
 #define STM32F4_RES_SHIFT		24
 #define STM32F4_RES_MASK		GENMASK(25, 24)
 #define STM32F4_SCAN			BIT(8)
@@ -72,8 +74,11 @@
 #define STM32F4_ADON			BIT(0)
 
 /* STM32F4_ADC_CSR - bit fields */
+#define STM32F4_OVR3			BIT(21)
 #define STM32F4_EOC3			BIT(17)
+#define STM32F4_OVR2			BIT(13)
 #define STM32F4_EOC2			BIT(9)
+#define STM32F4_OVR1			BIT(5)
 #define STM32F4_EOC1			BIT(1)
 
 /* STM32F4_ADC_CCR - bit fields */
@@ -103,10 +108,12 @@
 
 /* STM32H7_ADC_ISR - bit fields */
 #define STM32MP1_VREGREADY		BIT(12)
+#define STM32H7_OVR			BIT(4)
 #define STM32H7_EOC			BIT(2)
 #define STM32H7_ADRDY			BIT(0)
 
 /* STM32H7_ADC_IER - bit fields */
+#define STM32H7_OVRIE			STM32H7_OVR
 #define STM32H7_EOCIE			STM32H7_EOC
 
 /* STM32H7_ADC_CR - bit fields */
@@ -155,7 +162,9 @@ enum stm32h7_adc_dmngt {
 #define STM32H7_LINCALFACT_MASK		GENMASK(29, 0)
 
 /* STM32H7_ADC_CSR - bit fields */
+#define STM32H7_OVR_SLV			BIT(20)
 #define STM32H7_EOC_SLV			BIT(18)
+#define STM32H7_OVR_MST			BIT(4)
 #define STM32H7_EOC_MST			BIT(2)
 
 /* STM32H7_ADC_CCR - bit fields */
diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
index 3b291d7..5f05bf9 100644
--- a/drivers/iio/adc/stm32-adc.c
+++ b/drivers/iio/adc/stm32-adc.c
@@ -117,7 +117,9 @@ struct stm32_adc_regs {
  * struct stm32_adc_regspec - stm32 registers definition
  * @dr:			data register offset
  * @ier_eoc:		interrupt enable register & eocie bitfield
+ * @ier_ovr:		interrupt enable register & overrun bitfield
  * @isr_eoc:		interrupt status register & eoc bitfield
+ * @isr_ovr:		interrupt status register & overrun bitfield
  * @sqr:		reference to sequence registers array
  * @exten:		trigger control register & bitfield
  * @extsel:		trigger selection register & bitfield
@@ -128,7 +130,9 @@ struct stm32_adc_regs {
 struct stm32_adc_regspec {
 	const u32 dr;
 	const struct stm32_adc_regs ier_eoc;
+	const struct stm32_adc_regs ier_ovr;
 	const struct stm32_adc_regs isr_eoc;
+	const struct stm32_adc_regs isr_ovr;
 	const struct stm32_adc_regs *sqr;
 	const struct stm32_adc_regs exten;
 	const struct stm32_adc_regs extsel;
@@ -337,7 +341,9 @@ static const unsigned int stm32f4_adc_smp_cycles[STM32_ADC_MAX_SMP + 1] = {
 static const struct stm32_adc_regspec stm32f4_adc_regspec = {
 	.dr = STM32F4_ADC_DR,
 	.ier_eoc = { STM32F4_ADC_CR1, STM32F4_EOCIE },
+	.ier_ovr = { STM32F4_ADC_CR1, STM32F4_OVRIE },
 	.isr_eoc = { STM32F4_ADC_SR, STM32F4_EOC },
+	.isr_ovr = { STM32F4_ADC_SR, STM32F4_OVR },
 	.sqr = stm32f4_sq,
 	.exten = { STM32F4_ADC_CR2, STM32F4_EXTEN_MASK, STM32F4_EXTEN_SHIFT },
 	.extsel = { STM32F4_ADC_CR2, STM32F4_EXTSEL_MASK,
@@ -429,7 +435,9 @@ static const unsigned int stm32h7_adc_smp_cycles[STM32_ADC_MAX_SMP + 1] = {
 static const struct stm32_adc_regspec stm32h7_adc_regspec = {
 	.dr = STM32H7_ADC_DR,
 	.ier_eoc = { STM32H7_ADC_IER, STM32H7_EOCIE },
+	.ier_ovr = { STM32H7_ADC_IER, STM32H7_OVRIE },
 	.isr_eoc = { STM32H7_ADC_ISR, STM32H7_EOC },
+	.isr_ovr = { STM32H7_ADC_ISR, STM32H7_OVR },
 	.sqr = stm32h7_sq,
 	.exten = { STM32H7_ADC_CFGR, STM32H7_EXTEN_MASK, STM32H7_EXTEN_SHIFT },
 	.extsel = { STM32H7_ADC_CFGR, STM32H7_EXTSEL_MASK,
@@ -506,6 +514,18 @@ static void stm32_adc_conv_irq_disable(struct stm32_adc *adc)
 			   adc->cfg->regs->ier_eoc.mask);
 }
 
+static void stm32_adc_ovr_irq_enable(struct stm32_adc *adc)
+{
+	stm32_adc_set_bits(adc, adc->cfg->regs->ier_ovr.reg,
+			   adc->cfg->regs->ier_ovr.mask);
+}
+
+static void stm32_adc_ovr_irq_disable(struct stm32_adc *adc)
+{
+	stm32_adc_clr_bits(adc, adc->cfg->regs->ier_ovr.reg,
+			   adc->cfg->regs->ier_ovr.mask);
+}
+
 static void stm32_adc_set_res(struct stm32_adc *adc)
 {
 	const struct stm32_adc_regs *res = &adc->cfg->regs->res;
@@ -1205,6 +1225,19 @@ static int stm32_adc_read_raw(struct iio_dev *indio_dev,
 	}
 }
 
+static irqreturn_t stm32_adc_threaded_isr(int irq, void *data)
+{
+	struct stm32_adc *adc = data;
+	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
+	const struct stm32_adc_regspec *regs = adc->cfg->regs;
+	u32 status = stm32_adc_readl(adc, regs->isr_eoc.reg);
+
+	if (status & regs->isr_ovr.mask)
+		dev_err(&indio_dev->dev, "Overrun, stopping: restart needed\n");
+
+	return IRQ_HANDLED;
+}
+
 static irqreturn_t stm32_adc_isr(int irq, void *data)
 {
 	struct stm32_adc *adc = data;
@@ -1212,6 +1245,19 @@ static irqreturn_t stm32_adc_isr(int irq, void *data)
 	const struct stm32_adc_regspec *regs = adc->cfg->regs;
 	u32 status = stm32_adc_readl(adc, regs->isr_eoc.reg);
 
+	if (status & regs->isr_ovr.mask) {
+		/*
+		 * Overrun occurred on regular conversions: data for wrong
+		 * channel may be read. Unconditionally disable interrupts
+		 * to stop processing data and print error message.
+		 * Restarting the capture can be done by disabling, then
+		 * re-enabling it (e.g. write 0, then 1 to buffer/enable).
+		 */
+		stm32_adc_ovr_irq_disable(adc);
+		stm32_adc_conv_irq_disable(adc);
+		return IRQ_WAKE_THREAD;
+	}
+
 	if (status & regs->isr_eoc.mask) {
 		/* Reading DR also clears EOC status flag */
 		adc->buffer[adc->bufi] = stm32_adc_readw(adc, regs->dr);
@@ -1441,6 +1487,8 @@ static int __stm32_adc_buffer_postenable(struct iio_dev *indio_dev)
 	/* Reset adc buffer index */
 	adc->bufi = 0;
 
+	stm32_adc_ovr_irq_enable(adc);
+
 	if (!adc->dma_chan)
 		stm32_adc_conv_irq_enable(adc);
 
@@ -1481,6 +1529,8 @@ static void __stm32_adc_buffer_predisable(struct iio_dev *indio_dev)
 	if (!adc->dma_chan)
 		stm32_adc_conv_irq_disable(adc);
 
+	stm32_adc_ovr_irq_disable(adc);
+
 	if (adc->dma_chan)
 		dmaengine_terminate_sync(adc->dma_chan);
 
@@ -1818,8 +1868,9 @@ static int stm32_adc_probe(struct platform_device *pdev)
 	if (adc->irq < 0)
 		return adc->irq;
 
-	ret = devm_request_irq(&pdev->dev, adc->irq, stm32_adc_isr,
-			       0, pdev->name, adc);
+	ret = devm_request_threaded_irq(&pdev->dev, adc->irq, stm32_adc_isr,
+					stm32_adc_threaded_isr,
+					0, pdev->name, adc);
 	if (ret) {
 		dev_err(&pdev->dev, "failed to request IRQ\n");
 		return ret;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
