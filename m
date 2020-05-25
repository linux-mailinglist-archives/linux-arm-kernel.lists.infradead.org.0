Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 859791E12A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 18:28:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FXSqLxL638N2QYueNBbz5hp+gFcMN2D1t0cYzKtA2tk=; b=fCOPLwH7hLCsF0
	b230jAEjM9Ehb6OBFko8IvmLjqfJsxK76i5XcLkFTitpg3fvAWmL0vUkxWkyotNlaYoJ8W1Ov38ru
	P+BURgUGFCDtcx+RhkwtplEHDuS/2Jm8IA+rOTP8TjLPTRqZ8Z8clBDV9y9dqkz2F7q+l34KfRa2p
	WYv8XIjIdoUTnWdQ0g9oI7YJmUTKkvz1xDDxSGQ48qzNzuGW4wbBJ3/4df55SAi2uM5V9NGqmhlFH
	ZAMaviabelHcy8jK8oefld49QPHHI2mFqyQmPAeW7QRlpvELA+c8C0pe9CBmRr20Bp3WAyVnxm2vD
	dqV0zBYyKZ+oFVVcu94w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdFxI-0000qc-3S; Mon, 25 May 2020 16:28:00 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdFx9-0000pz-4G
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 16:27:53 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04PGR5Ar018914; Mon, 25 May 2020 18:27:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=mK5xX80vuFkvmZhLsaCNBEAQnYbhUaMKCHYyJ0RTpJ8=;
 b=rcbAFrJgCSYfJsthIKa3htTubI3kcRF49HjXaPfWmfBtGfuNPC/42719l0APGVee0uF3
 2t9R088srT+SuemATp+3YMeZW7QbWAJ/nbvyD/pdUCX/B6Syar/oz4A4gPDRY+nhOkIa
 wskfe3tWZT8FNwhZq2ijTL1Agdtk7DOpKYarpCRO9GZL4f+EeUGBlzCMWUmx4D3zGFjR
 iMmEL6yi3delNK2wyhQDN6NT2eRhesGTTMs1kZz7Lm6Wf27AtSn7dWvSIcIvkLa4J5Jc
 VvrLyGv4liEsvCmu9Cc1lJiimbXPKY/W8gm0m+LGSEeWDXbjHmAeMigOlYMygSzprKDG tw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316tqgtvkv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 May 2020 18:27:41 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E388A10002A;
 Mon, 25 May 2020 18:27:39 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CBB1C2B4D20;
 Mon, 25 May 2020 18:27:39 +0200 (CEST)
Received: from [10.211.0.68] (10.75.127.45) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 25 May
 2020 18:27:38 +0200
Subject: Re: [PATCH v2] iio: stm32-adc: remove usage of iio_priv_to_dev()
 helper
To: Alexandru Ardelean <alexandru.ardelean@analog.com>,
 <linux-iio@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20200522130719.630714-1-alexandru.ardelean@analog.com>
 <20200525090720.72696-1-alexandru.ardelean@analog.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <447a0db3-0c20-859c-b5f2-7716c57a7e0e@st.com>
Date: Mon, 25 May 2020 18:27:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200525090720.72696-1-alexandru.ardelean@analog.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-25_09:2020-05-25,
 2020-05-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_092751_779179_EBBCF8C5 
X-CRM114-Status: GOOD (  27.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: olivier.moysan@st.com, mcoquelin.stm32@gmail.com, jic23@kernel.org,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/25/20 11:07 AM, Alexandru Ardelean wrote:
> We may want to get rid of the iio_priv_to_dev() helper. The reason is that
> we will hide some of the members of the iio_dev structure (to prevent
> drivers from accessing them directly), and that will also mean hiding the
> implementation of the iio_priv_to_dev() helper inside the IIO core.
> 
> Hiding the implementation of iio_priv_to_dev() implies that some fast-paths
> may not be fast anymore, so a general idea is to try to get rid of the
> iio_priv_to_dev() altogether.
> The iio_priv() helper won't be affected by the rework, as the iio_dev
> struct will keep a reference to the private information.
> 
> For this driver, not using iio_priv_to_dev(), means reworking some paths to
> pass the iio device and using iio_priv() to access the private information.
> 
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> ---
>  drivers/iio/adc/stm32-adc.c | 108 +++++++++++++++++++-----------------
>  1 file changed, 58 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
> index ae622ee6d08c..9428c5c22712 100644
> --- a/drivers/iio/adc/stm32-adc.c
> +++ b/drivers/iio/adc/stm32-adc.c
> @@ -162,10 +162,10 @@ struct stm32_adc_cfg {
>  	struct stm32_adc_trig_info	*trigs;
>  	bool clk_required;
>  	bool has_vregready;
> -	int (*prepare)(struct stm32_adc *);
> -	void (*start_conv)(struct stm32_adc *, bool dma);
> -	void (*stop_conv)(struct stm32_adc *);
> -	void (*unprepare)(struct stm32_adc *);
> +	int (*prepare)(struct iio_dev *);
> +	void (*start_conv)(struct iio_dev *, bool dma);
> +	void (*stop_conv)(struct iio_dev *);
> +	void (*unprepare)(struct iio_dev *);
>  	const unsigned int *smp_cycles;
>  };
>  
> @@ -538,10 +538,11 @@ static void stm32_adc_set_res(struct stm32_adc *adc)
>  
>  static int stm32_adc_hw_stop(struct device *dev)
>  {
> -	struct stm32_adc *adc = dev_get_drvdata(dev);
> +	struct iio_dev *indio_dev = dev_get_drvdata(dev);
> +	struct stm32_adc *adc = iio_priv(indio_dev);
>  
>  	if (adc->cfg->unprepare)
> -		adc->cfg->unprepare(adc);
> +		adc->cfg->unprepare(indio_dev);
>  
>  	if (adc->clk)
>  		clk_disable_unprepare(adc->clk);
> @@ -551,7 +552,8 @@ static int stm32_adc_hw_stop(struct device *dev)
>  
>  static int stm32_adc_hw_start(struct device *dev)
>  {
> -	struct stm32_adc *adc = dev_get_drvdata(dev);
> +	struct iio_dev *indio_dev = dev_get_drvdata(dev);
> +	struct stm32_adc *adc = iio_priv(indio_dev);
>  	int ret;
>  
>  	if (adc->clk) {
> @@ -563,7 +565,7 @@ static int stm32_adc_hw_start(struct device *dev)
>  	stm32_adc_set_res(adc);
>  
>  	if (adc->cfg->prepare) {
> -		ret = adc->cfg->prepare(adc);
> +		ret = adc->cfg->prepare(indio_dev);
>  		if (ret)
>  			goto err_clk_dis;
>  	}
> @@ -587,8 +589,10 @@ static int stm32_adc_hw_start(struct device *dev)
>   * conversions, in IIO buffer modes. Otherwise, use ADC interrupt with direct
>   * DR read instead (e.g. read_raw, or triggered buffer mode without DMA).
>   */
> -static void stm32f4_adc_start_conv(struct stm32_adc *adc, bool dma)
> +static void stm32f4_adc_start_conv(struct iio_dev *indio_dev, bool dma)

Hi Alexandru,

I've tested your patch. I've no objection, but found few build warnings
(some of these routines have kernel-doc style).

Building with W=1 makes warnings appear, like:
drivers/iio/adc/stm32-adc.c:593: warning: Function parameter or member
'indio_dev' not described in 'stm32f4_adc_start_conv'
drivers/iio/adc/stm32-adc.c:593: warning: Excess function parameter
'adc' description in 'stm32f4_adc_start_conv'
...

Could you update routine's doc as well ?

e.g. something like:
- * @adc: stm32 adc instance
+ * @indio_dev: IIO device

>  {
> +	struct stm32_adc *adc = iio_priv(indio_dev);
> +
>  	stm32_adc_set_bits(adc, STM32F4_ADC_CR1, STM32F4_SCAN);
>  
>  	if (dma)
> @@ -605,8 +609,10 @@ static void stm32f4_adc_start_conv(struct stm32_adc *adc, bool dma)
>  		stm32_adc_set_bits(adc, STM32F4_ADC_CR2, STM32F4_SWSTART);
>  }
>  
> -static void stm32f4_adc_stop_conv(struct stm32_adc *adc)
> +static void stm32f4_adc_stop_conv(struct iio_dev *indio_dev)
>  {
> +	struct stm32_adc *adc = iio_priv(indio_dev);
> +
>  	stm32_adc_clr_bits(adc, STM32F4_ADC_CR2, STM32F4_EXTEN_MASK);
>  	stm32_adc_clr_bits(adc, STM32F4_ADC_SR, STM32F4_STRT);
>  
> @@ -615,8 +621,9 @@ static void stm32f4_adc_stop_conv(struct stm32_adc *adc)
>  			   STM32F4_ADON | STM32F4_DMA | STM32F4_DDS);
>  }
>  
> -static void stm32h7_adc_start_conv(struct stm32_adc *adc, bool dma)
> +static void stm32h7_adc_start_conv(struct iio_dev *indio_dev, bool dma)
>  {
> +	struct stm32_adc *adc = iio_priv(indio_dev);
>  	enum stm32h7_adc_dmngt dmngt;
>  	unsigned long flags;
>  	u32 val;
> @@ -635,9 +642,9 @@ static void stm32h7_adc_start_conv(struct stm32_adc *adc, bool dma)
>  	stm32_adc_set_bits(adc, STM32H7_ADC_CR, STM32H7_ADSTART);
>  }
>  
> -static void stm32h7_adc_stop_conv(struct stm32_adc *adc)
> +static void stm32h7_adc_stop_conv(struct iio_dev *indio_dev)
>  {
> -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> +	struct stm32_adc *adc = iio_priv(indio_dev);
>  	int ret;
>  	u32 val;
>  
> @@ -652,9 +659,9 @@ static void stm32h7_adc_stop_conv(struct stm32_adc *adc)
>  	stm32_adc_clr_bits(adc, STM32H7_ADC_CFGR, STM32H7_DMNGT_MASK);
>  }
>  
> -static int stm32h7_adc_exit_pwr_down(struct stm32_adc *adc)
> +static int stm32h7_adc_exit_pwr_down(struct iio_dev *indio_dev)
>  {
> -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> +	struct stm32_adc *adc = iio_priv(indio_dev);
>  	int ret;
>  	u32 val;
>  
> @@ -690,9 +697,9 @@ static void stm32h7_adc_enter_pwr_down(struct stm32_adc *adc)
>  	stm32_adc_set_bits(adc, STM32H7_ADC_CR, STM32H7_DEEPPWD);
>  }
>  
> -static int stm32h7_adc_enable(struct stm32_adc *adc)
> +static int stm32h7_adc_enable(struct iio_dev *indio_dev)
>  {
> -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> +	struct stm32_adc *adc = iio_priv(indio_dev);
>  	int ret;
>  	u32 val;
>  
> @@ -713,9 +720,9 @@ static int stm32h7_adc_enable(struct stm32_adc *adc)
>  	return ret;
>  }
>  
> -static void stm32h7_adc_disable(struct stm32_adc *adc)
> +static void stm32h7_adc_disable(struct iio_dev *indio_dev)
>  {
> -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> +	struct stm32_adc *adc = iio_priv(indio_dev);
>  	int ret;
>  	u32 val;
>  
> @@ -733,9 +740,9 @@ static void stm32h7_adc_disable(struct stm32_adc *adc)
>   * @adc: stm32 adc instance
>   * Note: Must be called once ADC is enabled, so LINCALRDYW[1..6] are writable
>   */
> -static int stm32h7_adc_read_selfcalib(struct stm32_adc *adc)
> +static int stm32h7_adc_read_selfcalib(struct iio_dev *indio_dev)

Same here.

>  {
> -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> +	struct stm32_adc *adc = iio_priv(indio_dev);
>  	int i, ret;
>  	u32 lincalrdyw_mask, val;
>  
> @@ -777,9 +784,9 @@ static int stm32h7_adc_read_selfcalib(struct stm32_adc *adc)
>   * @adc: stm32 adc instance
>   * Note: ADC must be enabled, with no on-going conversions.
>   */
> -static int stm32h7_adc_restore_selfcalib(struct stm32_adc *adc)
> +static int stm32h7_adc_restore_selfcalib(struct iio_dev *indio_dev)

Same here.

>  {
> -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> +	struct stm32_adc *adc = iio_priv(indio_dev);
>  	int i, ret;
>  	u32 lincalrdyw_mask, val;
>  
> @@ -850,9 +857,9 @@ static int stm32h7_adc_restore_selfcalib(struct stm32_adc *adc)
>   * @adc: stm32 adc instance
>   * Note: Must be called once ADC is out of power down.
>   */
> -static int stm32h7_adc_selfcalib(struct stm32_adc *adc)
> +static int stm32h7_adc_selfcalib(struct iio_dev *indio_dev)

Same here

>  {
> -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> +	struct stm32_adc *adc = iio_priv(indio_dev);
>  	int ret;
>  	u32 val;
>  
> @@ -912,30 +919,31 @@ static int stm32h7_adc_selfcalib(struct stm32_adc *adc)
>   * - Only one input is selected for single ended (e.g. 'vinp')
>   * - Two inputs are selected for differential channels (e.g. 'vinp' & 'vinn')
>   */
> -static int stm32h7_adc_prepare(struct stm32_adc *adc)
> +static int stm32h7_adc_prepare(struct iio_dev *indio_dev)

Same here.

With the comments updated, you can add my:

Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Thanks for the patch,
Fabrice

>  {
> +	struct stm32_adc *adc = iio_priv(indio_dev);
>  	int calib, ret;
>  
> -	ret = stm32h7_adc_exit_pwr_down(adc);
> +	ret = stm32h7_adc_exit_pwr_down(indio_dev);
>  	if (ret)
>  		return ret;
>  
> -	ret = stm32h7_adc_selfcalib(adc);
> +	ret = stm32h7_adc_selfcalib(indio_dev);
>  	if (ret < 0)
>  		goto pwr_dwn;
>  	calib = ret;
>  
>  	stm32_adc_writel(adc, STM32H7_ADC_DIFSEL, adc->difsel);
>  
> -	ret = stm32h7_adc_enable(adc);
> +	ret = stm32h7_adc_enable(indio_dev);
>  	if (ret)
>  		goto pwr_dwn;
>  
>  	/* Either restore or read calibration result for future reference */
>  	if (calib)
> -		ret = stm32h7_adc_restore_selfcalib(adc);
> +		ret = stm32h7_adc_restore_selfcalib(indio_dev);
>  	else
> -		ret = stm32h7_adc_read_selfcalib(adc);
> +		ret = stm32h7_adc_read_selfcalib(indio_dev);
>  	if (ret)
>  		goto disable;
>  
> @@ -944,16 +952,18 @@ static int stm32h7_adc_prepare(struct stm32_adc *adc)
>  	return 0;
>  
>  disable:
> -	stm32h7_adc_disable(adc);
> +	stm32h7_adc_disable(indio_dev);
>  pwr_dwn:
>  	stm32h7_adc_enter_pwr_down(adc);
>  
>  	return ret;
>  }
>  
> -static void stm32h7_adc_unprepare(struct stm32_adc *adc)
> +static void stm32h7_adc_unprepare(struct iio_dev *indio_dev)
>  {
> -	stm32h7_adc_disable(adc);
> +	struct stm32_adc *adc = iio_priv(indio_dev);
> +
> +	stm32h7_adc_disable(indio_dev);
>  	stm32h7_adc_enter_pwr_down(adc);
>  }
>  
> @@ -1160,7 +1170,7 @@ static int stm32_adc_single_conv(struct iio_dev *indio_dev,
>  
>  	stm32_adc_conv_irq_enable(adc);
>  
> -	adc->cfg->start_conv(adc, false);
> +	adc->cfg->start_conv(indio_dev, false);
>  
>  	timeout = wait_for_completion_interruptible_timeout(
>  					&adc->completion, STM32_ADC_TIMEOUT);
> @@ -1173,7 +1183,7 @@ static int stm32_adc_single_conv(struct iio_dev *indio_dev,
>  		ret = IIO_VAL_INT;
>  	}
>  
> -	adc->cfg->stop_conv(adc);
> +	adc->cfg->stop_conv(indio_dev);
>  
>  	stm32_adc_conv_irq_disable(adc);
>  
> @@ -1227,8 +1237,8 @@ static int stm32_adc_read_raw(struct iio_dev *indio_dev,
>  
>  static irqreturn_t stm32_adc_threaded_isr(int irq, void *data)
>  {
> -	struct stm32_adc *adc = data;
> -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> +	struct iio_dev *indio_dev = data;
> +	struct stm32_adc *adc = iio_priv(indio_dev);
>  	const struct stm32_adc_regspec *regs = adc->cfg->regs;
>  	u32 status = stm32_adc_readl(adc, regs->isr_eoc.reg);
>  
> @@ -1240,8 +1250,8 @@ static irqreturn_t stm32_adc_threaded_isr(int irq, void *data)
>  
>  static irqreturn_t stm32_adc_isr(int irq, void *data)
>  {
> -	struct stm32_adc *adc = data;
> -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> +	struct iio_dev *indio_dev = data;
> +	struct stm32_adc *adc = iio_priv(indio_dev);
>  	const struct stm32_adc_regspec *regs = adc->cfg->regs;
>  	u32 status = stm32_adc_readl(adc, regs->isr_eoc.reg);
>  
> @@ -1514,7 +1524,7 @@ static int __stm32_adc_buffer_postenable(struct iio_dev *indio_dev)
>  	if (!adc->dma_chan)
>  		stm32_adc_conv_irq_enable(adc);
>  
> -	adc->cfg->start_conv(adc, !!adc->dma_chan);
> +	adc->cfg->start_conv(indio_dev, !!adc->dma_chan);
>  
>  	return 0;
>  
> @@ -1547,7 +1557,7 @@ static void __stm32_adc_buffer_predisable(struct iio_dev *indio_dev)
>  	struct stm32_adc *adc = iio_priv(indio_dev);
>  	struct device *dev = indio_dev->dev.parent;
>  
> -	adc->cfg->stop_conv(adc);
> +	adc->cfg->stop_conv(indio_dev);
>  	if (!adc->dma_chan)
>  		stm32_adc_conv_irq_disable(adc);
>  
> @@ -1891,7 +1901,7 @@ static int stm32_adc_probe(struct platform_device *pdev)
>  	indio_dev->info = &stm32_adc_iio_info;
>  	indio_dev->modes = INDIO_DIRECT_MODE | INDIO_HARDWARE_TRIGGERED;
>  
> -	platform_set_drvdata(pdev, adc);
> +	platform_set_drvdata(pdev, indio_dev);
>  
>  	ret = of_property_read_u32(pdev->dev.of_node, "reg", &adc->offset);
>  	if (ret != 0) {
> @@ -1905,7 +1915,7 @@ static int stm32_adc_probe(struct platform_device *pdev)
>  
>  	ret = devm_request_threaded_irq(&pdev->dev, adc->irq, stm32_adc_isr,
>  					stm32_adc_threaded_isr,
> -					0, pdev->name, adc);
> +					0, pdev->name, indio_dev);
>  	if (ret) {
>  		dev_err(&pdev->dev, "failed to request IRQ\n");
>  		return ret;
> @@ -1989,8 +1999,8 @@ static int stm32_adc_probe(struct platform_device *pdev)
>  
>  static int stm32_adc_remove(struct platform_device *pdev)
>  {
> -	struct stm32_adc *adc = platform_get_drvdata(pdev);
> -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> +	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
> +	struct stm32_adc *adc = iio_priv(indio_dev);
>  
>  	pm_runtime_get_sync(&pdev->dev);
>  	iio_device_unregister(indio_dev);
> @@ -2012,8 +2022,7 @@ static int stm32_adc_remove(struct platform_device *pdev)
>  #if defined(CONFIG_PM_SLEEP)
>  static int stm32_adc_suspend(struct device *dev)
>  {
> -	struct stm32_adc *adc = dev_get_drvdata(dev);
> -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> +	struct iio_dev *indio_dev = dev_get_drvdata(dev);
>  
>  	if (iio_buffer_enabled(indio_dev))
>  		__stm32_adc_buffer_predisable(indio_dev);
> @@ -2023,8 +2032,7 @@ static int stm32_adc_suspend(struct device *dev)
>  
>  static int stm32_adc_resume(struct device *dev)
>  {
> -	struct stm32_adc *adc = dev_get_drvdata(dev);
> -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> +	struct iio_dev *indio_dev = dev_get_drvdata(dev);
>  	int ret;
>  
>  	ret = pm_runtime_force_resume(dev);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
