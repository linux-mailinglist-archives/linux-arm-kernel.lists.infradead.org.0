Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C197DD8D5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 12:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqZbC2AvyHReciJ3sY9iUqbzUSlpTqk2Xhf/Kq9KGLc=; b=JBxqgdXkIsLr0X
	zck/ZzndyG6a8eff+FZrRqESodXS+418Ti7i2r9pJwBIQFpY8OrGzt5Kmz4kSObQLaBFGB082Ts9P
	bDqMWFmLBBAX6uE4STR7Gp799KSQGgDp+x7wptJlaAVE7FicEX2XQgzdJuBUpazHKLi2Z6iusgWY9
	5tT7ZCo1fX8w45jFXZSbn+1vmfWeXWMc3yCCi25+U/3/jQZIeAtkSWocrnyvx2ucmFqcjLNgG5+lY
	44LQv54yP/Umu4jvWtOq2b9QzVdjq2c4JP3d4E69ny5GDHavunYvovMqyVIemwO4eTPSzbo1pz+vP
	pIhqS+EvtXR5tooW3RZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgF5-00089H-LZ; Wed, 16 Oct 2019 10:09:19 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgEq-00088w-JQ
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 10:09:06 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9G9vJSb022321; Wed, 16 Oct 2019 12:08:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=DRK6nnWxIpQcRpa27goNNKQ6VsydMmtRJ5E896Ce4Mg=;
 b=bgO95zmf6k2aVs9w1Xi40fm7M97azWEHfHLRVkbo0ZJC5b8wbkMYjy3JqcGa/3hDtU0V
 a05oW0Z2xC+WtxdaqXmFvJSIC5d8mRebsgQ2gbwHQCcHBrjAlDqrdLtQG869tjSoHhtP
 bB9U3dxRq3HkKMd4MSk5tFrPp0gemXEoUjf8Chyhjstyx9zuSluokafzcfjR6hcdMNUH
 ZTTJ/EKLLxFqT+Wx4Y/tB9Go12HCV/e7mZuqVVqTs6yBEmPhYXEb0NDZ/5mVM9AcTrOZ
 yBiTzslx4ssweZHkXlP4z3lwYc8XBKg+K4PgT3xZQFZtj0PaIz3KNoZS0hOVI8iOVFPq GA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vk4kx5eyf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 16 Oct 2019 12:08:57 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 07B0410002A;
 Wed, 16 Oct 2019 12:08:56 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C67EE205D2C;
 Wed, 16 Oct 2019 12:08:56 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 16 Oct
 2019 12:08:56 +0200
Received: from [10.48.0.192] (10.48.0.192) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0;
 Wed, 16 Oct 2019 12:08:56 +0200
Subject: Re: [PATCH v2 3/3] pwm: stm32: add power management support
To: Thierry Reding <thierry.reding@gmail.com>
References: <1570193633-6600-1-git-send-email-fabrice.gasnier@st.com>
 <1570193633-6600-4-git-send-email-fabrice.gasnier@st.com>
 <20191016070635.GC1296874@ulmo>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <15371530-a932-08b7-dd78-a7e20d213203@st.com>
Date: Wed, 16 Oct 2019 12:08:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191016070635.GC1296874@ulmo>
Content-Language: en-US
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-16_03:2019-10-15,2019-10-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_030904_998134_D3A8690E 
X-CRM114-Status: GOOD (  24.01  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, u.kleine-koenig@pengutronix.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/16/19 9:06 AM, Thierry Reding wrote:
> On Fri, Oct 04, 2019 at 02:53:53PM +0200, Fabrice Gasnier wrote:
>> Add suspend/resume PM sleep ops. When going to low power, enforce the PWM
>> channel isn't active. Let the PWM consumers disable it during their own
>> suspend sequence, see [1]. So, perform a check here, and handle the
>> pinctrl states. Also restore the break inputs upon resume, as registers
>> content may be lost when going to low power mode.
>>
>> [1] https://lkml.org/lkml/2019/2/5/770
>>
>> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
>> ---
>> Changes in v2:
>> Follow Uwe suggestions/remarks:
>> - Add a precursor patch to ease reviewing
>> - Use registers read instead of pwm_get_state
>> - Add a comment to mention registers content may be lost in low power mode
>> ---
>>  drivers/pwm/pwm-stm32.c | 38 ++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 38 insertions(+)
> 
> Applied, thanks. I made two minor changes, though, see below.
> 
>>
>> diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
>> index cf8658c..546b661 100644
>> --- a/drivers/pwm/pwm-stm32.c
>> +++ b/drivers/pwm/pwm-stm32.c
>> @@ -12,6 +12,7 @@
>>  #include <linux/mfd/stm32-timers.h>
>>  #include <linux/module.h>
>>  #include <linux/of.h>
>> +#include <linux/pinctrl/consumer.h>
>>  #include <linux/platform_device.h>
>>  #include <linux/pwm.h>
>>  
>> @@ -655,6 +656,42 @@ static int stm32_pwm_remove(struct platform_device *pdev)
>>  	return 0;
>>  }
>>  
>> +static int __maybe_unused stm32_pwm_suspend(struct device *dev)
>> +{
>> +	struct stm32_pwm *priv = dev_get_drvdata(dev);
>> +	unsigned int ch;
> 
> I renamed this to just "i", which is more idiomatic for loop variables.
> The function is small enough not to need to differentiate between loop
> variables.
> 
>> +	u32 ccer, mask;
>> +
>> +	/* Look for active channels */
>> +	ccer = active_channels(priv);
>> +
>> +	for (ch = 0; ch < priv->chip.npwm; ch++) {
>> +		mask = TIM_CCER_CC1E << (ch * 4);
>> +		if (ccer & mask) {
>> +			dev_err(dev, "The consumer didn't stop us (%s)\n",
>> +				priv->chip.pwms[ch].label);
> 
> Changed this to:
> 
> 	"PWM %u still in use by consumer %s\n", i, priv->chip.pwms[i].label
> 
> I think that might help clarify which PWM is still enabled in case the
> consumers don't set a label.

Hi Thierry,

Many thanks for all the improvements on this series!

Best Regards,
Fabrice

> 
> Thierry
> 
>> +			return -EBUSY;
>> +		}
>> +	}
>> +
>> +	return pinctrl_pm_select_sleep_state(dev);
>> +}
>> +
>> +static int __maybe_unused stm32_pwm_resume(struct device *dev)
>> +{
>> +	struct stm32_pwm *priv = dev_get_drvdata(dev);
>> +	int ret;
>> +
>> +	ret = pinctrl_pm_select_default_state(dev);
>> +	if (ret)
>> +		return ret;
>> +
>> +	/* restore breakinput registers that may have been lost in low power */
>> +	return stm32_pwm_apply_breakinputs(priv);
>> +}
>> +
>> +static SIMPLE_DEV_PM_OPS(stm32_pwm_pm_ops, stm32_pwm_suspend, stm32_pwm_resume);
>> +
>>  static const struct of_device_id stm32_pwm_of_match[] = {
>>  	{ .compatible = "st,stm32-pwm",	},
>>  	{ /* end node */ },
>> @@ -667,6 +704,7 @@ static struct platform_driver stm32_pwm_driver = {
>>  	.driver	= {
>>  		.name = "stm32-pwm",
>>  		.of_match_table = stm32_pwm_of_match,
>> +		.pm = &stm32_pwm_pm_ops,
>>  	},
>>  };
>>  module_platform_driver(stm32_pwm_driver);
>> -- 
>> 2.7.4
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
