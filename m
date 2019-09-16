Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D18DDB39B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 13:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5BL9StldKv6ijAi8YAEmn3NWnn8NmhPDBWli171vg1k=; b=ejnTXwfPEv6hoZ
	QSgldrzqT+SHtdWRB+YGDco2h/EgPJAWN5VPiuopOOMNT7ykOlol0lFjPItKD8oVDIvwlP0+QCgBz
	mrurT/bNjLmsLP9rYfOJwebwVGhSOnke6chIF03VxZ3BYWwTK7KcOxZIXFaC2bKec8qkOmmxgFl7Q
	1LXkbm6OoiEOpgZo1gigWBrUrZuspou2k2+b73H8BtkXnTkmeHowIVwMMAGxOSIxKjb7cixOS1vz9
	Xw0TlRNsdel/J7UV4Ggy+7iZZ56TPqDO6xBmavAbcOj76EnkUqd2j2zBoj3u/+iWIKV/x/sPlSEip
	0hVGV2hf5x36xV7aTveA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9pUF-0005ny-P4; Mon, 16 Sep 2019 11:48:08 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9pU1-0005nN-OP
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 11:47:55 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8GBkeDZ029432; Mon, 16 Sep 2019 13:47:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=Fwu4Jhb6aovviN0KNoYu84KbjQcF2iC9NCe3ugE1sTQ=;
 b=Ct0TXeSna2wRy5lHAN5te3r9qyUeYbPhLW3uJxLJnC/kPAfp8XWp40KYK+GluUjmsHUp
 aKQkxYljv5F6OH6lt6ORkyJbv1v+W+ksgNKsJqL0j+jbCdFC8s5kJyiuDZ6B4VzsdYDf
 37ZeSy0vQuFXLU+LwBDu35cGgyxMZjwcaCXYeTPvWbX4ywHgRA5ab2G7UUvlA4lwA2Pi
 gGCOrSBLInJGKHATqbAl6zmTTarxbGv2Bh5xHXRLgQ/SgVz2NqxySiwcXCkYMHdCjtmW
 0B6d3Yt9GpxHN+cigbWnvPhRfeeeLoToI7uzJW9FP0xx1rMvvLmzLeQnR/rgTB8PkrQC ig== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v0nywtxw6-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 16 Sep 2019 13:47:44 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 229644B;
 Mon, 16 Sep 2019 11:47:37 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CFDC32C7F20;
 Mon, 16 Sep 2019 13:47:36 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 16 Sep
 2019 13:47:36 +0200
Received: from [10.48.1.232] (10.48.1.232) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0;
 Mon, 16 Sep 2019 13:47:36 +0200
Subject: Re: [PATCH] iio: adc: stm32-adc: fix a race when using several adcs
 with dma and irq
To: Jonathan Cameron <jic23@kernel.org>
References: <1568380890-313-1-git-send-email-fabrice.gasnier@st.com>
 <20190915110524.2ec1b41d@archlinux>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <6c330b1f-ef95-d9bd-3c8b-ccda03148561@st.com>
Date: Mon, 16 Sep 2019 13:47:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190915110524.2ec1b41d@archlinux>
Content-Language: en-US
X-Originating-IP: [10.48.1.232]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-16_06:2019-09-11,2019-09-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_044754_159389_8A4C16DD 
X-CRM114-Status: GOOD (  27.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lars@metafoo.de, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/15/19 12:05 PM, Jonathan Cameron wrote:
> On Fri, 13 Sep 2019 15:21:30 +0200
> Fabrice Gasnier <fabrice.gasnier@st.com> wrote:
> 
>> End of conversion may be handled by using IRQ or DMA. There may be a
>> race when two conversions complete at the same time on several ADCs.
>> EOC can be read as 'set' for several ADCs, with:
>> - an ADC configured to use IRQs. EOCIE bit is set. The handler is normally
>>   called in this case.
>> - an ADC configured to use DMA. EOCIE bit isn't set. EOC triggers the DMA
>>   request instead. It's then automatically cleared by DMA read. But the
>>   handler gets called due to status bit is temporarily set (IRQ triggered
>>   by the other ADC).
>> So both EOC status bit in CSR and EOCIE control bit must be checked
>> before invoking the interrupt handler (e.g. call ISR only for
>> IRQ-enabled ADCs).
>>
>> Fixes: 2763ea0585c9 ("iio: adc: stm32: add optional dma support")
>>
>> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> Fix looks fine to me, but I'm not keen on splitting out individual bits from
> register defines.  That's a long term readability nightmare.
> 
> See below,
> 
> Jonathan
> 
>> ---
>>  drivers/iio/adc/stm32-adc-core.c | 43 +++++++++++++++++++++++++++++++++++++---
>>  drivers/iio/adc/stm32-adc-core.h | 13 ++++++++++++
>>  drivers/iio/adc/stm32-adc.c      |  6 ------
>>  3 files changed, 53 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
>> index 9b85fef..7297396 100644
>> --- a/drivers/iio/adc/stm32-adc-core.c
>> +++ b/drivers/iio/adc/stm32-adc-core.c
>> @@ -71,6 +71,8 @@
>>   * @eoc1:	adc1 end of conversion flag in @csr
>>   * @eoc2:	adc2 end of conversion flag in @csr
>>   * @eoc3:	adc3 end of conversion flag in @csr
>> + * @ier:	interrupt enable register offset for each adc
>> + * @eocie_msk:	end of conversion interrupt enable mask in @ier
>>   */
>>  struct stm32_adc_common_regs {
>>  	u32 csr;
>> @@ -78,6 +80,8 @@ struct stm32_adc_common_regs {
>>  	u32 eoc1_msk;
>>  	u32 eoc2_msk;
>>  	u32 eoc3_msk;
>> +	u32 ier;
>> +	u32 eocie_msk;
>>  };
>>  
>>  struct stm32_adc_priv;
>> @@ -303,6 +307,8 @@ static const struct stm32_adc_common_regs stm32f4_adc_common_regs = {
>>  	.eoc1_msk = STM32F4_EOC1,
>>  	.eoc2_msk = STM32F4_EOC2,
>>  	.eoc3_msk = STM32F4_EOC3,
>> +	.ier = STM32F4_ADC_CR1,
>> +	.eocie_msk = STM32F4_EOCIE,
>>  };
>>  
>>  /* STM32H7 common registers definitions */
>> @@ -311,8 +317,24 @@ static const struct stm32_adc_common_regs stm32h7_adc_common_regs = {
>>  	.ccr = STM32H7_ADC_CCR,
>>  	.eoc1_msk = STM32H7_EOC_MST,
>>  	.eoc2_msk = STM32H7_EOC_SLV,
>> +	.ier = STM32H7_ADC_IER,
>> +	.eocie_msk = STM32H7_EOCIE,
>>  };
>>  
>> +static const unsigned int stm32_adc_offset[STM32_ADC_MAX_ADCS] = {
>> +	0, STM32_ADC_OFFSET, STM32_ADC_OFFSET * 2,
>> +};
>> +
>> +static unsigned int stm32_adc_eoc_enabled(struct stm32_adc_priv *priv,
>> +					  unsigned int adc)
>> +{
>> +	u32 ier, offset = stm32_adc_offset[adc];
>> +
>> +	ier = readl_relaxed(priv->common.base + offset + priv->cfg->regs->ier);
>> +
>> +	return ier & priv->cfg->regs->eocie_msk;
>> +}
>> +
>>  /* ADC common interrupt for all instances */
>>  static void stm32_adc_irq_handler(struct irq_desc *desc)
>>  {
>> @@ -323,13 +345,28 @@ static void stm32_adc_irq_handler(struct irq_desc *desc)
>>  	chained_irq_enter(chip, desc);
>>  	status = readl_relaxed(priv->common.base + priv->cfg->regs->csr);
>>  
>> -	if (status & priv->cfg->regs->eoc1_msk)
>> +	/*
>> +	 * End of conversion may be handled by using IRQ or DMA. There may be a
>> +	 * race here when two conversions complete at the same time on several
>> +	 * ADCs. EOC may be read 'set' for several ADCs, with:
>> +	 * - an ADC configured to use DMA (EOC triggers the DMA request, and
>> +	 *   is then automatically cleared by DR read in hardware)
>> +	 * - an ADC configured to use IRQs (EOCIE bit is set. The handler must
>> +	 *   be called in this case)
>> +	 * So both EOC status bit in CSR and EOCIE control bit must be checked
>> +	 * before invoking the interrupt handler (e.g. call ISR only for
>> +	 * IRQ-enabled ADCs).
>> +	 */
>> +	if (status & priv->cfg->regs->eoc1_msk &&
>> +	    stm32_adc_eoc_enabled(priv, 0))
>>  		generic_handle_irq(irq_find_mapping(priv->domain, 0));
>>  
>> -	if (status & priv->cfg->regs->eoc2_msk)
>> +	if (status & priv->cfg->regs->eoc2_msk &&
>> +	    stm32_adc_eoc_enabled(priv, 1))
>>  		generic_handle_irq(irq_find_mapping(priv->domain, 1));
>>  
>> -	if (status & priv->cfg->regs->eoc3_msk)
>> +	if (status & priv->cfg->regs->eoc3_msk &&
>> +	    stm32_adc_eoc_enabled(priv, 2))
>>  		generic_handle_irq(irq_find_mapping(priv->domain, 2));
>>  
>>  	chained_irq_exit(chip, desc);
>> diff --git a/drivers/iio/adc/stm32-adc-core.h b/drivers/iio/adc/stm32-adc-core.h
>> index 8af507b..8dc936b 100644
>> --- a/drivers/iio/adc/stm32-adc-core.h
>> +++ b/drivers/iio/adc/stm32-adc-core.h
>> @@ -25,8 +25,21 @@
>>   * --------------------------------------------------------
>>   */
>>  #define STM32_ADC_MAX_ADCS		3
>> +#define STM32_ADC_OFFSET		0x100
>>  #define STM32_ADCX_COMN_OFFSET		0x300
>>  
>> +/* STM32F4 - registers for each ADC instance */
>> +#define STM32F4_ADC_CR1			0x04
>> +
>> +/* STM32F4_ADC_CR1 - bit fields */
>> +#define STM32F4_EOCIE			BIT(5)
>> +
>> +/* STM32H7 - registers for each instance */
>> +#define STM32H7_ADC_IER			0x04
>> +
>> +/* STM32H7_ADC_IER - bit fields */
>> +#define STM32H7_EOCIE			BIT(2)
>> +
>>  /**
>>   * struct stm32_adc_common - stm32 ADC driver common data (for all instances)
>>   * @base:		control registers base cpu addr
>> diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
>> index 6a7dd08..3c9f456 100644
>> --- a/drivers/iio/adc/stm32-adc.c
>> +++ b/drivers/iio/adc/stm32-adc.c
>> @@ -30,7 +30,6 @@
>>  
>>  /* STM32F4 - Registers for each ADC instance */
>>  #define STM32F4_ADC_SR			0x00
>> -#define STM32F4_ADC_CR1			0x04
>>  #define STM32F4_ADC_CR2			0x08
>>  #define STM32F4_ADC_SMPR1		0x0C
>>  #define STM32F4_ADC_SMPR2		0x10
>> @@ -54,7 +53,6 @@
>>  #define STM32F4_RES_SHIFT		24
>>  #define STM32F4_RES_MASK		GENMASK(25, 24)
>>  #define STM32F4_SCAN			BIT(8)
>> -#define STM32F4_EOCIE			BIT(5)
> Hmm. This is breaking up the definitions of bits in a single register.
> That is rather nasty from a code readability point of view.  
> 
> I am as keen as the next person on only exposing definitions where
> we need to, but in this case we either need to provide an access path
> to it here, or we need to move the whole block to the header.

Hi Jonathan,

I think I'll add a precursor patch in v2 to move the whole block to the
header file. This way, the access path is easy (e.g. readl).
I'm only wondering about the Fixes tag... this will probably not be
straight forward to apply the fix on the maintenance releases ?
Or do I need to add it to the precursor patch as well ?

Thanks for reviewing,
Best regards,
Fabrice

> 
>>  
>>  /* STM32F4_ADC_CR2 - bit fields */
>>  #define STM32F4_SWSTART			BIT(30)
>> @@ -69,7 +67,6 @@
>>  
>>  /* STM32H7 - Registers for each ADC instance */
>>  #define STM32H7_ADC_ISR			0x00
>> -#define STM32H7_ADC_IER			0x04
>>  #define STM32H7_ADC_CR			0x08
>>  #define STM32H7_ADC_CFGR		0x0C
>>  #define STM32H7_ADC_SMPR1		0x14
>> @@ -89,9 +86,6 @@
>>  #define STM32H7_EOC			BIT(2)
>>  #define STM32H7_ADRDY			BIT(0)
>>  
>> -/* STM32H7_ADC_IER - bit fields */
>> -#define STM32H7_EOCIE			STM32H7_EOC
>> -
>>  /* STM32H7_ADC_CR - bit fields */
>>  #define STM32H7_ADCAL			BIT(31)
>>  #define STM32H7_ADCALDIF		BIT(30)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
