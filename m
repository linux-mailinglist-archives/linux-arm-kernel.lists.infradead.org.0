Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D994B8C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9w8vNJr5oE/kizSlQbdg1LSG/NLwGmIjpmJWcLtHntE=; b=tXFpG8oNG46+KV
	cyL+HEDWzUvys0vmqgO3+sHIwOQPYwJY3wB4PoAZauFaOA/SNGrYhXXRnS5lczphqDxH16Yqm/Fqy
	7ZgtYlruNnt5FqSrji0bRAN7GaLy7GPNdNTpqLliiKdWY1saL8JEzK+FuAoJjXmpP94/2FGaZ3k40
	nKecqzUpWYCr5euMZybxcj21e0BwKdZpw8Gc0LKqx+AfdeXVDTnWKtXBVYesm07HQGb+N08hIp9dk
	lxAMT17drY8I3gHsJVHNTek4fftTA/NN2WOch/wf5FNyqT14NcQTh5g6bQtbFJCubuLGI5wl6RsHE
	DA1Mrd9DiYzV9ncebA8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZrj-0007ig-MI; Wed, 19 Jun 2019 12:39:03 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZrX-0007hO-QR
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 12:38:54 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5JCa85v016334; Wed, 19 Jun 2019 14:38:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : from : to : cc
 : references : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=YYxfJig86eVTNL7jpT0jLolnAss3pcwbPluOculVa9s=;
 b=Tw9rBjdvU9s1AKWlyuwt50zFWsP7yKTB7OQXFNZuboun+lVyHSxaqHBjZyWpCnHQ7cjp
 v5wp/3T7m2ElSX9fZ2kujygxYKlcEcmUuqc1r7chPTZ1fg2H3lLiQW8EO2pZRcAlXKSL
 nUqkrePTcv5GvNhJH5sbArwDhDRngYRfI3Y3DAughvL7ezGockdIqWOfWiZzdneUm1l2
 qW97abo1pID1hcl7x+sCnVc7x2nki0uVYqdJnL4OIlHLgEfqGbmjbk7LpHZ2roF02LhF
 GHdvGfifOS/SnwqhMf/zlQez/NWjn6WQrHL1vlb/endgHunzuKJEZBCyaAtPjm5kQdFH GQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t781a3v6j-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 19 Jun 2019 14:38:45 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5C1EE31;
 Wed, 19 Jun 2019 12:38:44 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1C26826B4;
 Wed, 19 Jun 2019 12:38:44 +0000 (GMT)
Received: from [10.48.0.167] (10.75.127.51) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 19 Jun
 2019 14:38:43 +0200
Subject: Re: [PATCH 2/3] iio: adc: stm32-adc: add analog switches supply
 control
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: Jonathan Cameron <jic23@kernel.org>
References: <1560324276-681-1-git-send-email-fabrice.gasnier@st.com>
 <1560324276-681-3-git-send-email-fabrice.gasnier@st.com>
 <20190616160732.124a1eb9@archlinux>
 <f1d4b47a-5910-53fe-5d63-d51da429dacd@st.com>
Message-ID: <5ea9f65d-2feb-1ec5-1ca1-0cfd2964f160@st.com>
Date: Wed, 19 Jun 2019 14:38:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <f1d4b47a-5910-53fe-5d63-d51da429dacd@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_053852_159791_8330ED34 
X-CRM114-Status: GOOD (  28.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/17/19 2:43 PM, Fabrice Gasnier wrote:
> On 6/16/19 5:07 PM, Jonathan Cameron wrote:
>> On Wed, 12 Jun 2019 09:24:35 +0200
>> Fabrice Gasnier <fabrice.gasnier@st.com> wrote:
>>
>>> On stm32h7 and stm32mp1, the ADC inputs are multiplexed with analog
>>> switches which have reduced performances when their supply is below 2.7V
>>> (vdda by default):
>>> - vdd supply can be selected if above 2.7V by setting ANASWVDD syscfg bit
>>>   (STM32MP1 only).
>>> - Voltage booster can be used, to get full ADC performances by setting
>>>   BOOSTE/EN_BOOSTER syscfg bit (increases power consumption).
>>>
>>> Make this optional, since this is a trade-off between analog performance
>>> and power consumption.
>>>
>>> Note: STM32H7 syscfg has a set and clear register for "BOOSTE" control.
>>> STM32MP1 has separate set and clear registers pair to control EN_BOOSTER
>>> and ANASWVDD bits.
>>>
>>> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
>>
>> A few minor bits inline, but mostly seems fine to me.
>>
>> Jonathan
>>
>>> ---
>>>  drivers/iio/adc/stm32-adc-core.c | 232 ++++++++++++++++++++++++++++++++++++++-
>>>  1 file changed, 230 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
>>> index 2327ec1..9d41b16 100644
>>> --- a/drivers/iio/adc/stm32-adc-core.c
>>> +++ b/drivers/iio/adc/stm32-adc-core.c
>>> @@ -14,9 +14,11 @@
>>>  #include <linux/irqchip/chained_irq.h>
>>>  #include <linux/irqdesc.h>
>>>  #include <linux/irqdomain.h>
>>> +#include <linux/mfd/syscon.h>
>>>  #include <linux/module.h>
>>>  #include <linux/of_device.h>
>>>  #include <linux/pm_runtime.h>
>>> +#include <linux/regmap.h>
>>>  #include <linux/regulator/consumer.h>
>>>  #include <linux/slab.h>
>>>  
>>> @@ -51,6 +53,20 @@
>>>  
>>>  #define STM32_ADC_CORE_SLEEP_DELAY_MS	2000
>>>  
>>> +/* SYSCFG registers */
>>> +#define STM32H7_SYSCFG_PMCR		0x04
>>> +#define STM32MP1_SYSCFG_PMCSETR		0x04
>>> +#define STM32MP1_SYSCFG_PMCCLRR		0x44
>>> +
>>> +/* SYSCFG bit fields */
>>> +#define STM32H7_SYSCFG_BOOSTE_MASK	BIT(8)
>>> +#define STM32MP1_SYSCFG_ANASWVDD_MASK	BIT(9)
>>> +
>>> +/* SYSCFG capability flags */
>>> +#define HAS_VBOOSTER		BIT(0)
>>> +#define HAS_ANASWVDD		BIT(1)
>>> +#define HAS_CLEAR_REG		BIT(2)
>>> +
>>>  /**
>>>   * stm32_adc_common_regs - stm32 common registers, compatible dependent data
>>>   * @csr:	common status register offset
>>> @@ -58,6 +74,11 @@
>>>   * @eoc1:	adc1 end of conversion flag in @csr
>>>   * @eoc2:	adc2 end of conversion flag in @csr
>>>   * @eoc3:	adc3 end of conversion flag in @csr
>>> + * @has_syscfg: SYSCFG capability flags
>>> + * @pmcr:	SYSCFG_PMCSETR/SYSCFG_PMCR register offset
>>> + * @pmcc:	SYSCFG_PMCCLRR clear register offset
>>> + * @booste_msk:	SYSCFG BOOSTE / EN_BOOSTER bitmask in PMCR & PMCCLRR
>>> + * @anaswvdd_msk: SYSCFG ANASWVDD bitmask in PMCR & PMCCLRR
>>>   */
>>>  struct stm32_adc_common_regs {
>>>  	u32 csr;
>>> @@ -65,6 +86,11 @@ struct stm32_adc_common_regs {
>>>  	u32 eoc1_msk;
>>>  	u32 eoc2_msk;
>>>  	u32 eoc3_msk;
>>> +	unsigned int has_syscfg;
>>> +	u32 pmcr;
>>> +	u32 pmcc;
>>> +	u32 booste_msk;
>>> +	u32 anaswvdd_msk;
>>>  };
>>>  
>>>  struct stm32_adc_priv;
>>> @@ -87,20 +113,26 @@ struct stm32_adc_priv_cfg {
>>>   * @domain:		irq domain reference
>>>   * @aclk:		clock reference for the analog circuitry
>>>   * @bclk:		bus clock common for all ADCs, depends on part used
>>> + * @vdd:		vdd supply reference
>>> + * @vdda:		vdda supply reference
>>>   * @vref:		regulator reference
>>>   * @cfg:		compatible configuration data
>>>   * @common:		common data for all ADC instances
>>>   * @ccr_bak:		backup CCR in low power mode
>>> + * @syscfg:		reference to syscon, system control registers
>>>   */
>>>  struct stm32_adc_priv {
>>>  	int				irq[STM32_ADC_MAX_ADCS];
>>>  	struct irq_domain		*domain;
>>>  	struct clk			*aclk;
>>>  	struct clk			*bclk;
>>> +	struct regulator		*vdd;
>>> +	struct regulator		*vdda;
>>>  	struct regulator		*vref;
>>>  	const struct stm32_adc_priv_cfg	*cfg;
>>>  	struct stm32_adc_common		common;
>>>  	u32				ccr_bak;
>>> +	struct regmap			*syscfg;
>>>  };
>>>  
>>>  static struct stm32_adc_priv *to_stm32_adc_priv(struct stm32_adc_common *com)
>>> @@ -284,6 +316,22 @@ static const struct stm32_adc_common_regs stm32h7_adc_common_regs = {
>>>  	.ccr = STM32H7_ADC_CCR,
>>>  	.eoc1_msk = STM32H7_EOC_MST,
>>>  	.eoc2_msk = STM32H7_EOC_SLV,
>>> +	.has_syscfg = HAS_VBOOSTER,
>>> +	.pmcr = STM32H7_SYSCFG_PMCR,
>>> +	.booste_msk = STM32H7_SYSCFG_BOOSTE_MASK,
>>> +};
>>> +
>>> +/* STM32MP1 common registers definitions */
>>> +static const struct stm32_adc_common_regs stm32mp1_adc_common_regs = {
>>> +	.csr = STM32H7_ADC_CSR,
>>> +	.ccr = STM32H7_ADC_CCR,
>>> +	.eoc1_msk = STM32H7_EOC_MST,
>>> +	.eoc2_msk = STM32H7_EOC_SLV,
>>> +	.has_syscfg =  HAS_VBOOSTER | HAS_ANASWVDD | HAS_CLEAR_REG,
>>
>> Extra space after =
> 
> Hi Jonathan,
> 
> Oops, I'll fix it in v2.
> 
>>
>>
>>> +	.pmcr = STM32MP1_SYSCFG_PMCSETR,
>>> +	.pmcc = STM32MP1_SYSCFG_PMCCLRR,
>>> +	.booste_msk = STM32H7_SYSCFG_BOOSTE_MASK,
>>> +	.anaswvdd_msk = STM32MP1_SYSCFG_ANASWVDD_MASK,
>>>  };
>>>  
>>>  /* ADC common interrupt for all instances */
>>> @@ -388,16 +436,145 @@ static void stm32_adc_irq_remove(struct platform_device *pdev,
>>>  	}
>>>  }
>>>  
>>> +static int stm32_adc_core_switches_supply_en(struct device *dev)
>>> +{
>>> +	struct stm32_adc_common *common = dev_get_drvdata(dev);
>>> +	struct stm32_adc_priv *priv = to_stm32_adc_priv(common);
>>> +	const struct stm32_adc_common_regs *regs = priv->cfg->regs;
>>> +	int ret, vdda, vdd = 0;
>>> +	u32 mask, clrmask, setmask = 0;
>>> +
>>> +	/*
>>> +	 * On STM32H7 and STM32MP1, the ADC inputs are multiplexed with analog
>>> +	 * switches (via PCSEL) which have reduced performances when their
>>> +	 * supply is below 2.7V (vdda by default):
>>> +	 * - Voltage booster can be used, to get full ADC performances
>>> +	 *   (increases power consumption).
>>> +	 * - Vdd can be used to supply them, if above 2.7V (STM32MP1 only).
>>> +	 *
>>> +	 * This is optional, as this is a trade-off between analog performance
>>> +	 * and power consumption.
>>> +	 */
>>> +	if (!regs->has_syscfg || !priv->vdda || !priv->syscfg) {
>>> +		dev_dbg(dev, "Not configuring analog switches\n");
>>> +		return 0;
>>> +	}
>>> +
>>> +	ret = regulator_enable(priv->vdda);
>>> +	if (ret < 0) {
>>> +		dev_err(dev, "vdda enable failed %d\n", ret);
>>> +		return ret;
>>> +	}
>>> +
>>> +	ret = regulator_get_voltage(priv->vdda);
>>> +	if (ret < 0) {
>>> +		dev_err(dev, "vdda get voltage failed %d\n", ret);
>>> +		goto vdda_dis;
>>> +	}
>>> +	vdda = ret;
>>> +
>> We only need to do the following block if vdaa is too low.  Should probably
>> not turn on vdd if there is not chance we are going to use it?
> 
> You're right, then I probably need to move the regulator_get_voltage()
> call at probe time, to avoid enabling it for nothing at runtime. (e.g.
> to figure out it's not going to be used).
> In fact, vdd is used also for other things on the platform (I/Os, other
> supplies...), and is marked "always-on" in the device tree. But I
> understand your point.
> 
> I'll rework this and send a v2.

Hi Jonathan,

When reworking this part, I figured out the vdda should be described as
required supply for the STM32 ADC. So I pushed out a fix series to
address this "Add missing vdda-supply to STM32 ADC". I'll resume v2 of
this series that has some dependencies on the fix series .

Thanks
Best Regards,
Fabrice

> 
> Thanks,
> Fabrice
> 
>>
>>> +	if (priv->vdd && regs->has_syscfg & HAS_ANASWVDD) {
>>> +		ret = regulator_enable(priv->vdd);
>>> +		if (ret < 0) {
>>> +			dev_err(dev, "vdd enable failed %d\n", ret);
>>> +			goto vdda_dis;
>>> +		}
>>> +
>>> +		ret = regulator_get_voltage(priv->vdd);
>>> +		if (ret < 0) {
>>> +			dev_err(dev, "vdd get voltage failed %d\n", ret);
>>> +			goto vdd_dis;
>>> +		}
>>> +		vdd = ret;
>>> +	}
>>> +
>>> +	/*
>>> +	 * Recommended settings for ANASWVDD and EN_BOOSTER:
>>> +	 * - vdda < 2.7V but vdd > 2.7V: ANASWVDD = 1, EN_BOOSTER = 0 (stm32mp1)
>>> +	 * - vdda < 2.7V and vdd < 2.7V: ANASWVDD = 0, EN_BOOSTER = 1
>>> +	 * - vdda >= 2.7V:               ANASWVDD = 0, EN_BOOSTER = 0 (default)
>>> +	 */
>>> +	if (vdda < 2700000) {
>>> +		if (vdd > 2700000) {
>>> +			dev_dbg(dev, "analog switches supplied by vdd\n");
>>> +			setmask = regs->anaswvdd_msk;
>>> +			clrmask = regs->booste_msk;
>>> +		} else {
>>> +			dev_dbg(dev, "Enabling voltage booster\n");
>>> +			setmask = regs->booste_msk;
>>> +			clrmask = regs->anaswvdd_msk;
>>> +		}
>>> +	} else {
>>> +		dev_dbg(dev, "analog switches supplied by vdda\n");
>>> +		clrmask = regs->booste_msk | regs->anaswvdd_msk;
>>> +	}
>>> +
>>> +	mask = regs->booste_msk | regs->anaswvdd_msk;
>>> +	if (regs->has_syscfg & HAS_CLEAR_REG) {
>>> +		ret = regmap_write(priv->syscfg, regs->pmcc, clrmask);
>>> +		if (ret) {
>>> +			dev_err(dev, "syscfg clear failed, %d\n", ret);
>>> +			goto vdd_dis;
>>> +		}
>>> +		mask = setmask;
>>> +	}
>>> +
>>> +	ret = regmap_update_bits(priv->syscfg, regs->pmcr, mask, setmask);
>>> +	if (ret) {
>>> +		dev_err(dev, "syscfg update failed, %d\n", ret);
>>> +		goto vdd_dis;
>>> +	}
>>> +
>>> +	/* Booster voltage can take up to 50 us to stabilize */
>>> +	if (setmask & regs->booste_msk)
>>> +		usleep_range(50, 100);
>>> +
>>> +	return ret;
>>> +
>>> +vdd_dis:
>>> +	if (priv->vdd && (regs->has_syscfg & HAS_ANASWVDD))
>>> +		regulator_disable(priv->vdd);
>>> +vdda_dis:
>>> +	regulator_disable(priv->vdda);
>>> +
>>> +	return ret;
>>> +}
>>> +
>>> +static void stm32_adc_core_switches_supply_dis(struct device *dev)
>>> +{
>>> +	struct stm32_adc_common *common = dev_get_drvdata(dev);
>>> +	struct stm32_adc_priv *priv = to_stm32_adc_priv(common);
>>> +	const struct stm32_adc_common_regs *regs = priv->cfg->regs;
>>> +	u32 mask = regs->booste_msk | regs->anaswvdd_msk;
>>> +
>>> +	if (!regs->has_syscfg || !priv->vdda || !priv->syscfg)
>>> +		return;
>>> +
>>> +	if (regs->has_syscfg & HAS_CLEAR_REG)
>>> +		regmap_write(priv->syscfg, regs->pmcc, mask);
>>> +	else
>>> +		regmap_update_bits(priv->syscfg, regs->pmcr, mask, 0);
>>> +
>>> +	if (priv->vdd && (regs->has_syscfg & HAS_ANASWVDD))
>>> +		regulator_disable(priv->vdd);
>>> +
>>> +	regulator_disable(priv->vdda);
>>> +}
>>> +
>>>  static int stm32_adc_core_hw_start(struct device *dev)
>>>  {
>>>  	struct stm32_adc_common *common = dev_get_drvdata(dev);
>>>  	struct stm32_adc_priv *priv = to_stm32_adc_priv(common);
>>>  	int ret;
>>>  
>>> +	ret = stm32_adc_core_switches_supply_en(dev);
>>> +	if (ret < 0)
>>> +		return ret;
>>> +
>>>  	ret = regulator_enable(priv->vref);
>>>  	if (ret < 0) {
>>>  		dev_err(dev, "vref enable failed\n");
>>> -		return ret;
>>> +		goto err_switches_disable;
>>>  	}
>>>  
>>>  	if (priv->bclk) {
>>> @@ -425,6 +602,8 @@ static int stm32_adc_core_hw_start(struct device *dev)
>>>  		clk_disable_unprepare(priv->bclk);
>>>  err_regulator_disable:
>>>  	regulator_disable(priv->vref);
>>> +err_switches_disable:
>>> +	stm32_adc_core_switches_supply_dis(dev);
>>>  
>>>  	return ret;
>>>  }
>>> @@ -441,6 +620,24 @@ static void stm32_adc_core_hw_stop(struct device *dev)
>>>  	if (priv->bclk)
>>>  		clk_disable_unprepare(priv->bclk);
>>>  	regulator_disable(priv->vref);
>>> +	stm32_adc_core_switches_supply_dis(dev);
>>> +}
>>> +
>>> +static int stm32_adc_core_syscfg_probe(struct device_node *np,
>>> +				       struct stm32_adc_priv *priv)
>>> +{
>>> +	if (!priv->cfg->regs->has_syscfg)
>>> +		return 0;
>>> +
>>> +	priv->syscfg = syscon_regmap_lookup_by_phandle(np, "st,syscfg");
>>> +	if (IS_ERR(priv->syscfg)) {
>>> +		/* Optional */
>>> +		if (PTR_ERR(priv->syscfg) != -ENODEV)
>>> +			return PTR_ERR(priv->syscfg);
>>> +		priv->syscfg = NULL;
>>> +	}
>>> +
>>> +	return 0;
>>>  }
>>>  
>>>  static int stm32_adc_probe(struct platform_device *pdev)
>>> @@ -475,6 +672,30 @@ static int stm32_adc_probe(struct platform_device *pdev)
>>>  		return ret;
>>>  	}
>>>  
>>> +	priv->vdda = devm_regulator_get_optional(&pdev->dev, "vdda");
>>> +	if (IS_ERR(priv->vdda)) {
>>> +		ret = PTR_ERR(priv->vdda);
>>> +		if (ret != -ENODEV) {
>>> +			if (ret != -EPROBE_DEFER)
>>> +				dev_err(&pdev->dev, "vdda get failed, %d\n",
>>> +					ret);
>>> +			return ret;
>>> +		}
>>> +		priv->vdda = NULL;
>>> +	}
>>> +
>>> +	priv->vdd = devm_regulator_get_optional(&pdev->dev, "vdd");
>>> +	if (IS_ERR(priv->vdd)) {
>>> +		ret = PTR_ERR(priv->vdd);
>>> +		if (ret != -ENODEV) {
>>> +			if (ret != -EPROBE_DEFER)
>>> +				dev_err(&pdev->dev, "vdd get failed, %d\n",
>>> +					ret);
>>> +			return ret;
>>> +		}
>>> +		priv->vdd = NULL;
>>> +	}
>>> +
>>>  	priv->aclk = devm_clk_get(&pdev->dev, "adc");
>>>  	if (IS_ERR(priv->aclk)) {
>>>  		ret = PTR_ERR(priv->aclk);
>>> @@ -495,6 +716,13 @@ static int stm32_adc_probe(struct platform_device *pdev)
>>>  		priv->bclk = NULL;
>>>  	}
>>>  
>>> +	ret = stm32_adc_core_syscfg_probe(np, priv);
>>> +	if (ret) {
>>> +		if (ret != -EPROBE_DEFER)
>>> +			dev_err(&pdev->dev, "Can't probe syscfg: %d\n", ret);
>>> +		return ret;
>>> +	}
>>> +
>>>  	pm_runtime_get_noresume(dev);
>>>  	pm_runtime_set_active(dev);
>>>  	pm_runtime_set_autosuspend_delay(dev, STM32_ADC_CORE_SLEEP_DELAY_MS);
>>> @@ -595,7 +823,7 @@ static const struct stm32_adc_priv_cfg stm32h7_adc_priv_cfg = {
>>>  };
>>>  
>>>  static const struct stm32_adc_priv_cfg stm32mp1_adc_priv_cfg = {
>>> -	.regs = &stm32h7_adc_common_regs,
>>> +	.regs = &stm32mp1_adc_common_regs,
>>>  	.clk_sel = stm32h7_adc_clk_sel,
>>>  	.max_clk_rate_hz = 40000000,
>>>  };
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
