Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB841E09B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 11:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N078zgJWeRT0WHHD+SFIcm5c3Tu90fqgl3Llk/x/Emg=; b=In52r+1hwqcGp2
	Xy89zEk9TkikETZt7kRw0BzoOjMqWS8JaUYZsuo6WFoQeohEHawwLHGw64nUP3TQYAsiARfR0sjoX
	wjFIHXJZAlQtr8tveBx1w3LSjvvTcwjBCFFd0eBxvFZKHJFqxTf7nGOoR86MziLUXoBZGLDNWGNHV
	GlrcXQ0rpZA+cNCflUte1bBL3yLXEEgIco41ggrAqiMCT6nlN6INalVeQLWoI4IMQer2cAEBdbDw0
	ZX/ATLpHa562E02FmWzGis2z/Jhjlh0rUAZS8KW2W8xb3c6ibtkqDY2V5xF/PUhXeC0HFgIhh9hOQ
	mrq5v3pxlCUXAYjByRsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd95n-0007zV-NX; Mon, 25 May 2020 09:08:19 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd94v-0007Sb-NL
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 09:07:27 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04P8tMWp020442; Mon, 25 May 2020 05:07:23 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 316wp7x7j0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 May 2020 05:07:23 -0400
Received: from ASHBMBX9.ad.analog.com (ashbmbx9.ad.analog.com [10.64.17.10])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 04P97MUa020845
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL); 
 Mon, 25 May 2020 05:07:22 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Mon, 25 May
 2020 05:07:21 -0400
Received: from zeus.spd.analog.com (10.64.82.11) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Mon, 25 May 2020 05:07:21 -0400
Received: from saturn.ad.analog.com ([10.48.65.112])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 04P97Hse010998;
 Mon, 25 May 2020 05:07:17 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linux-iio@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2] iio: stm32-adc:  remove usage of iio_priv_to_dev() helper
Date: Mon, 25 May 2020 12:07:20 +0300
Message-ID: <20200525090720.72696-1-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522130719.630714-1-alexandru.ardelean@analog.com>
References: <20200522130719.630714-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-25_04:2020-05-22,
 2020-05-25 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 mlxlogscore=999 impostorscore=0 clxscore=1011
 malwarescore=0 mlxscore=0 lowpriorityscore=0 cotscore=-2147483648
 spamscore=0 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005250071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_020725_768192_A71F698C 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: olivier.moysan@st.com, alexandre.torgue@st.com, mcoquelin.stm32@gmail.com,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, fabrice.gasnier@st.com,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We may want to get rid of the iio_priv_to_dev() helper. The reason is that
we will hide some of the members of the iio_dev structure (to prevent
drivers from accessing them directly), and that will also mean hiding the
implementation of the iio_priv_to_dev() helper inside the IIO core.

Hiding the implementation of iio_priv_to_dev() implies that some fast-paths
may not be fast anymore, so a general idea is to try to get rid of the
iio_priv_to_dev() altogether.
The iio_priv() helper won't be affected by the rework, as the iio_dev
struct will keep a reference to the private information.

For this driver, not using iio_priv_to_dev(), means reworking some paths to
pass the iio device and using iio_priv() to access the private information.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/iio/adc/stm32-adc.c | 108 +++++++++++++++++++-----------------
 1 file changed, 58 insertions(+), 50 deletions(-)

diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
index ae622ee6d08c..9428c5c22712 100644
--- a/drivers/iio/adc/stm32-adc.c
+++ b/drivers/iio/adc/stm32-adc.c
@@ -162,10 +162,10 @@ struct stm32_adc_cfg {
 	struct stm32_adc_trig_info	*trigs;
 	bool clk_required;
 	bool has_vregready;
-	int (*prepare)(struct stm32_adc *);
-	void (*start_conv)(struct stm32_adc *, bool dma);
-	void (*stop_conv)(struct stm32_adc *);
-	void (*unprepare)(struct stm32_adc *);
+	int (*prepare)(struct iio_dev *);
+	void (*start_conv)(struct iio_dev *, bool dma);
+	void (*stop_conv)(struct iio_dev *);
+	void (*unprepare)(struct iio_dev *);
 	const unsigned int *smp_cycles;
 };
 
@@ -538,10 +538,11 @@ static void stm32_adc_set_res(struct stm32_adc *adc)
 
 static int stm32_adc_hw_stop(struct device *dev)
 {
-	struct stm32_adc *adc = dev_get_drvdata(dev);
+	struct iio_dev *indio_dev = dev_get_drvdata(dev);
+	struct stm32_adc *adc = iio_priv(indio_dev);
 
 	if (adc->cfg->unprepare)
-		adc->cfg->unprepare(adc);
+		adc->cfg->unprepare(indio_dev);
 
 	if (adc->clk)
 		clk_disable_unprepare(adc->clk);
@@ -551,7 +552,8 @@ static int stm32_adc_hw_stop(struct device *dev)
 
 static int stm32_adc_hw_start(struct device *dev)
 {
-	struct stm32_adc *adc = dev_get_drvdata(dev);
+	struct iio_dev *indio_dev = dev_get_drvdata(dev);
+	struct stm32_adc *adc = iio_priv(indio_dev);
 	int ret;
 
 	if (adc->clk) {
@@ -563,7 +565,7 @@ static int stm32_adc_hw_start(struct device *dev)
 	stm32_adc_set_res(adc);
 
 	if (adc->cfg->prepare) {
-		ret = adc->cfg->prepare(adc);
+		ret = adc->cfg->prepare(indio_dev);
 		if (ret)
 			goto err_clk_dis;
 	}
@@ -587,8 +589,10 @@ static int stm32_adc_hw_start(struct device *dev)
  * conversions, in IIO buffer modes. Otherwise, use ADC interrupt with direct
  * DR read instead (e.g. read_raw, or triggered buffer mode without DMA).
  */
-static void stm32f4_adc_start_conv(struct stm32_adc *adc, bool dma)
+static void stm32f4_adc_start_conv(struct iio_dev *indio_dev, bool dma)
 {
+	struct stm32_adc *adc = iio_priv(indio_dev);
+
 	stm32_adc_set_bits(adc, STM32F4_ADC_CR1, STM32F4_SCAN);
 
 	if (dma)
@@ -605,8 +609,10 @@ static void stm32f4_adc_start_conv(struct stm32_adc *adc, bool dma)
 		stm32_adc_set_bits(adc, STM32F4_ADC_CR2, STM32F4_SWSTART);
 }
 
-static void stm32f4_adc_stop_conv(struct stm32_adc *adc)
+static void stm32f4_adc_stop_conv(struct iio_dev *indio_dev)
 {
+	struct stm32_adc *adc = iio_priv(indio_dev);
+
 	stm32_adc_clr_bits(adc, STM32F4_ADC_CR2, STM32F4_EXTEN_MASK);
 	stm32_adc_clr_bits(adc, STM32F4_ADC_SR, STM32F4_STRT);
 
@@ -615,8 +621,9 @@ static void stm32f4_adc_stop_conv(struct stm32_adc *adc)
 			   STM32F4_ADON | STM32F4_DMA | STM32F4_DDS);
 }
 
-static void stm32h7_adc_start_conv(struct stm32_adc *adc, bool dma)
+static void stm32h7_adc_start_conv(struct iio_dev *indio_dev, bool dma)
 {
+	struct stm32_adc *adc = iio_priv(indio_dev);
 	enum stm32h7_adc_dmngt dmngt;
 	unsigned long flags;
 	u32 val;
@@ -635,9 +642,9 @@ static void stm32h7_adc_start_conv(struct stm32_adc *adc, bool dma)
 	stm32_adc_set_bits(adc, STM32H7_ADC_CR, STM32H7_ADSTART);
 }
 
-static void stm32h7_adc_stop_conv(struct stm32_adc *adc)
+static void stm32h7_adc_stop_conv(struct iio_dev *indio_dev)
 {
-	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
+	struct stm32_adc *adc = iio_priv(indio_dev);
 	int ret;
 	u32 val;
 
@@ -652,9 +659,9 @@ static void stm32h7_adc_stop_conv(struct stm32_adc *adc)
 	stm32_adc_clr_bits(adc, STM32H7_ADC_CFGR, STM32H7_DMNGT_MASK);
 }
 
-static int stm32h7_adc_exit_pwr_down(struct stm32_adc *adc)
+static int stm32h7_adc_exit_pwr_down(struct iio_dev *indio_dev)
 {
-	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
+	struct stm32_adc *adc = iio_priv(indio_dev);
 	int ret;
 	u32 val;
 
@@ -690,9 +697,9 @@ static void stm32h7_adc_enter_pwr_down(struct stm32_adc *adc)
 	stm32_adc_set_bits(adc, STM32H7_ADC_CR, STM32H7_DEEPPWD);
 }
 
-static int stm32h7_adc_enable(struct stm32_adc *adc)
+static int stm32h7_adc_enable(struct iio_dev *indio_dev)
 {
-	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
+	struct stm32_adc *adc = iio_priv(indio_dev);
 	int ret;
 	u32 val;
 
@@ -713,9 +720,9 @@ static int stm32h7_adc_enable(struct stm32_adc *adc)
 	return ret;
 }
 
-static void stm32h7_adc_disable(struct stm32_adc *adc)
+static void stm32h7_adc_disable(struct iio_dev *indio_dev)
 {
-	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
+	struct stm32_adc *adc = iio_priv(indio_dev);
 	int ret;
 	u32 val;
 
@@ -733,9 +740,9 @@ static void stm32h7_adc_disable(struct stm32_adc *adc)
  * @adc: stm32 adc instance
  * Note: Must be called once ADC is enabled, so LINCALRDYW[1..6] are writable
  */
-static int stm32h7_adc_read_selfcalib(struct stm32_adc *adc)
+static int stm32h7_adc_read_selfcalib(struct iio_dev *indio_dev)
 {
-	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
+	struct stm32_adc *adc = iio_priv(indio_dev);
 	int i, ret;
 	u32 lincalrdyw_mask, val;
 
@@ -777,9 +784,9 @@ static int stm32h7_adc_read_selfcalib(struct stm32_adc *adc)
  * @adc: stm32 adc instance
  * Note: ADC must be enabled, with no on-going conversions.
  */
-static int stm32h7_adc_restore_selfcalib(struct stm32_adc *adc)
+static int stm32h7_adc_restore_selfcalib(struct iio_dev *indio_dev)
 {
-	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
+	struct stm32_adc *adc = iio_priv(indio_dev);
 	int i, ret;
 	u32 lincalrdyw_mask, val;
 
@@ -850,9 +857,9 @@ static int stm32h7_adc_restore_selfcalib(struct stm32_adc *adc)
  * @adc: stm32 adc instance
  * Note: Must be called once ADC is out of power down.
  */
-static int stm32h7_adc_selfcalib(struct stm32_adc *adc)
+static int stm32h7_adc_selfcalib(struct iio_dev *indio_dev)
 {
-	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
+	struct stm32_adc *adc = iio_priv(indio_dev);
 	int ret;
 	u32 val;
 
@@ -912,30 +919,31 @@ static int stm32h7_adc_selfcalib(struct stm32_adc *adc)
  * - Only one input is selected for single ended (e.g. 'vinp')
  * - Two inputs are selected for differential channels (e.g. 'vinp' & 'vinn')
  */
-static int stm32h7_adc_prepare(struct stm32_adc *adc)
+static int stm32h7_adc_prepare(struct iio_dev *indio_dev)
 {
+	struct stm32_adc *adc = iio_priv(indio_dev);
 	int calib, ret;
 
-	ret = stm32h7_adc_exit_pwr_down(adc);
+	ret = stm32h7_adc_exit_pwr_down(indio_dev);
 	if (ret)
 		return ret;
 
-	ret = stm32h7_adc_selfcalib(adc);
+	ret = stm32h7_adc_selfcalib(indio_dev);
 	if (ret < 0)
 		goto pwr_dwn;
 	calib = ret;
 
 	stm32_adc_writel(adc, STM32H7_ADC_DIFSEL, adc->difsel);
 
-	ret = stm32h7_adc_enable(adc);
+	ret = stm32h7_adc_enable(indio_dev);
 	if (ret)
 		goto pwr_dwn;
 
 	/* Either restore or read calibration result for future reference */
 	if (calib)
-		ret = stm32h7_adc_restore_selfcalib(adc);
+		ret = stm32h7_adc_restore_selfcalib(indio_dev);
 	else
-		ret = stm32h7_adc_read_selfcalib(adc);
+		ret = stm32h7_adc_read_selfcalib(indio_dev);
 	if (ret)
 		goto disable;
 
@@ -944,16 +952,18 @@ static int stm32h7_adc_prepare(struct stm32_adc *adc)
 	return 0;
 
 disable:
-	stm32h7_adc_disable(adc);
+	stm32h7_adc_disable(indio_dev);
 pwr_dwn:
 	stm32h7_adc_enter_pwr_down(adc);
 
 	return ret;
 }
 
-static void stm32h7_adc_unprepare(struct stm32_adc *adc)
+static void stm32h7_adc_unprepare(struct iio_dev *indio_dev)
 {
-	stm32h7_adc_disable(adc);
+	struct stm32_adc *adc = iio_priv(indio_dev);
+
+	stm32h7_adc_disable(indio_dev);
 	stm32h7_adc_enter_pwr_down(adc);
 }
 
@@ -1160,7 +1170,7 @@ static int stm32_adc_single_conv(struct iio_dev *indio_dev,
 
 	stm32_adc_conv_irq_enable(adc);
 
-	adc->cfg->start_conv(adc, false);
+	adc->cfg->start_conv(indio_dev, false);
 
 	timeout = wait_for_completion_interruptible_timeout(
 					&adc->completion, STM32_ADC_TIMEOUT);
@@ -1173,7 +1183,7 @@ static int stm32_adc_single_conv(struct iio_dev *indio_dev,
 		ret = IIO_VAL_INT;
 	}
 
-	adc->cfg->stop_conv(adc);
+	adc->cfg->stop_conv(indio_dev);
 
 	stm32_adc_conv_irq_disable(adc);
 
@@ -1227,8 +1237,8 @@ static int stm32_adc_read_raw(struct iio_dev *indio_dev,
 
 static irqreturn_t stm32_adc_threaded_isr(int irq, void *data)
 {
-	struct stm32_adc *adc = data;
-	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
+	struct iio_dev *indio_dev = data;
+	struct stm32_adc *adc = iio_priv(indio_dev);
 	const struct stm32_adc_regspec *regs = adc->cfg->regs;
 	u32 status = stm32_adc_readl(adc, regs->isr_eoc.reg);
 
@@ -1240,8 +1250,8 @@ static irqreturn_t stm32_adc_threaded_isr(int irq, void *data)
 
 static irqreturn_t stm32_adc_isr(int irq, void *data)
 {
-	struct stm32_adc *adc = data;
-	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
+	struct iio_dev *indio_dev = data;
+	struct stm32_adc *adc = iio_priv(indio_dev);
 	const struct stm32_adc_regspec *regs = adc->cfg->regs;
 	u32 status = stm32_adc_readl(adc, regs->isr_eoc.reg);
 
@@ -1514,7 +1524,7 @@ static int __stm32_adc_buffer_postenable(struct iio_dev *indio_dev)
 	if (!adc->dma_chan)
 		stm32_adc_conv_irq_enable(adc);
 
-	adc->cfg->start_conv(adc, !!adc->dma_chan);
+	adc->cfg->start_conv(indio_dev, !!adc->dma_chan);
 
 	return 0;
 
@@ -1547,7 +1557,7 @@ static void __stm32_adc_buffer_predisable(struct iio_dev *indio_dev)
 	struct stm32_adc *adc = iio_priv(indio_dev);
 	struct device *dev = indio_dev->dev.parent;
 
-	adc->cfg->stop_conv(adc);
+	adc->cfg->stop_conv(indio_dev);
 	if (!adc->dma_chan)
 		stm32_adc_conv_irq_disable(adc);
 
@@ -1891,7 +1901,7 @@ static int stm32_adc_probe(struct platform_device *pdev)
 	indio_dev->info = &stm32_adc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE | INDIO_HARDWARE_TRIGGERED;
 
-	platform_set_drvdata(pdev, adc);
+	platform_set_drvdata(pdev, indio_dev);
 
 	ret = of_property_read_u32(pdev->dev.of_node, "reg", &adc->offset);
 	if (ret != 0) {
@@ -1905,7 +1915,7 @@ static int stm32_adc_probe(struct platform_device *pdev)
 
 	ret = devm_request_threaded_irq(&pdev->dev, adc->irq, stm32_adc_isr,
 					stm32_adc_threaded_isr,
-					0, pdev->name, adc);
+					0, pdev->name, indio_dev);
 	if (ret) {
 		dev_err(&pdev->dev, "failed to request IRQ\n");
 		return ret;
@@ -1989,8 +1999,8 @@ static int stm32_adc_probe(struct platform_device *pdev)
 
 static int stm32_adc_remove(struct platform_device *pdev)
 {
-	struct stm32_adc *adc = platform_get_drvdata(pdev);
-	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
+	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
+	struct stm32_adc *adc = iio_priv(indio_dev);
 
 	pm_runtime_get_sync(&pdev->dev);
 	iio_device_unregister(indio_dev);
@@ -2012,8 +2022,7 @@ static int stm32_adc_remove(struct platform_device *pdev)
 #if defined(CONFIG_PM_SLEEP)
 static int stm32_adc_suspend(struct device *dev)
 {
-	struct stm32_adc *adc = dev_get_drvdata(dev);
-	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
+	struct iio_dev *indio_dev = dev_get_drvdata(dev);
 
 	if (iio_buffer_enabled(indio_dev))
 		__stm32_adc_buffer_predisable(indio_dev);
@@ -2023,8 +2032,7 @@ static int stm32_adc_suspend(struct device *dev)
 
 static int stm32_adc_resume(struct device *dev)
 {
-	struct stm32_adc *adc = dev_get_drvdata(dev);
-	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
+	struct iio_dev *indio_dev = dev_get_drvdata(dev);
 	int ret;
 
 	ret = pm_runtime_force_resume(dev);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
