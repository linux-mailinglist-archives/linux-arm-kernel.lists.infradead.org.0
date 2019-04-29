Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E5AE3F8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 15:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NwcOiMiSB+U6Cls0kdjokH6HM653wK0IxlTvFnSx+p0=; b=PrO7ypzGhDgM5Bvbp51++oNbg
	zJ0CDJ7fnU1gJuztYw1P24y6NgvlfPrtLH/choegND6FhVFRVP/LPBgwv13GMTlcOmA/XjCt3FLlY
	0dO+weIqhh6aFBDKSP55CZqXiFcmZFZGdbBb2TFkK4uOTbPlsK0adrFueiS9xKsADczrZBja5J+md
	gZqPX3z4uIO2kO0Dp2KTfJd+hGapefFv7VHJlYxGdZQu/uQIWc8MmntkcgbXLirl4mGGOceWscckv
	M0ZyOT7NE4VfmJZVMcV3+CzNKdUi1OuOgRhwK7xbLXhp5BN9ch3CPHN9J8Pb3hD7b3A+dVDbFxX2E
	azCx1uMlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL6gi-0004Wp-LJ; Mon, 29 Apr 2019 13:51:20 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL6ga-0004WH-En
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 13:51:14 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x3TDfSYh002048; Mon, 29 Apr 2019 15:51:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=9GS1U02m14roUfdQRKfcCyy7nzTcnCZDQ41WVznJybE=;
 b=R08hjEzpsf96ONP83JV8SeiuAePyDkIyC0dCsvskt+d/g/ZoXpggqFek340m65LBxXYO
 aStkoRILZRgtNSsMmKWWXBSbBgFrASDIbicsXTji6gAW0Ct7Pgn2DhRHSiZocjv+EJmb
 aBW+sUzaUhjR8NddPcwb3UmuHYCuDXEzaNfPZ9s0/EdRj3IbwljYlz0Fk684vq1XXnVa
 iv21zYeIbSsK42aNPdEzwghWlnWVogPCPj2sRkaCZAVYmOVgBgY1mvEV1e/BApiRIOR3
 j6OKTbwiouCAKMNNuAiy0wqO4g+o40oY5Rozdt2UdteG/mvRLPsZ4BQy1Gh7sVjOxMq7 rw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2s61r407vb-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 29 Apr 2019 15:51:03 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 700243A;
 Mon, 29 Apr 2019 13:51:02 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 41076263D;
 Mon, 29 Apr 2019 13:51:02 +0000 (GMT)
Received: from [10.48.0.237] (10.75.127.49) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 29 Apr
 2019 15:51:01 +0200
Subject: Re: [PATCH] watchdog: stm32: add dynamic prescaler support
To: Guenter Roeck <linux@roeck-us.net>
References: <1556286075-29496-1-git-send-email-ludovic.Barre@st.com>
 <20190426141651.GA1715@roeck-us.net>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <192f7556-89e4-68f1-2274-f3bdbe0083ae@st.com>
Date: Mon, 29 Apr 2019 15:51:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190426141651.GA1715@roeck-us.net>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-04-29_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_065112_836348_AF53DFE2 
X-CRM114-Status: GOOD (  32.92  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.8 KHOP_DYNAMIC           Relay looks like a dynamic address
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Guenter

On 4/26/19 4:16 PM, Guenter Roeck wrote:
> On Fri, Apr 26, 2019 at 03:41:15PM +0200, Ludovic Barre wrote:
>> From: Ludovic Barre <ludovic.barre@st.com>
>>
>> This patch allows to define the max prescaler by compatible.
>> To set a large range of timeout, the prescaler should be set
>> dynamically (from the timeout request) to improve the resolution
>> in order to have a timeout close to the expected value.
>>
>> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
>> ---
>>   drivers/watchdog/stm32_iwdg.c | 70 +++++++++++++++++++++++++------------------
>>   1 file changed, 41 insertions(+), 29 deletions(-)
>>
>> diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
>> index e00e3b3..91d0a89 100644
>> --- a/drivers/watchdog/stm32_iwdg.c
>> +++ b/drivers/watchdog/stm32_iwdg.c
>> @@ -34,18 +34,10 @@
>>   #define KR_KEY_EWA	0x5555 /* write access enable */
>>   #define KR_KEY_DWA	0x0000 /* write access disable */
>>   
>> -/* IWDG_PR register bit values */
>> -#define PR_4		0x00 /* prescaler set to 4 */
>> -#define PR_8		0x01 /* prescaler set to 8 */
>> -#define PR_16		0x02 /* prescaler set to 16 */
>> -#define PR_32		0x03 /* prescaler set to 32 */
>> -#define PR_64		0x04 /* prescaler set to 64 */
>> -#define PR_128		0x05 /* prescaler set to 128 */
>> -#define PR_256		0x06 /* prescaler set to 256 */
>> +#define PR_SHIFT	2
>>   
>>   /* IWDG_RLR register values */
>> -#define RLR_MIN		0x07C /* min value supported by reload register */
>> -#define RLR_MAX		0xFFF /* max value supported by reload register */
>> +#define RLR_MAX		GENMASK(11, 0) /* max value of reload register */
>>   
>>   /* IWDG_SR register bit mask */
>>   #define FLAG_PVU	BIT(0) /* Watchdog prescaler value update */
>> @@ -55,15 +47,28 @@
>>   #define TIMEOUT_US	100000
>>   #define SLEEP_US	1000
>>   
>> -#define HAS_PCLK	true
>> +struct stm32_iwdg_data {
>> +	bool has_pclk;
>> +	u32 max_prescaler;
>> +};
>> +
>> +static const struct stm32_iwdg_data stm32_iwdg_data = {
>> +	.has_pclk = false,
>> +	.max_prescaler = 256,
>> +};
>> +
>> +static const struct stm32_iwdg_data stm32mp1_iwdg_data = {
>> +	.has_pclk = true,
>> +	.max_prescaler = 1024,
>> +};
>>   
>>   struct stm32_iwdg {
>>   	struct watchdog_device	wdd;
>> +	const struct stm32_iwdg_data *data;
>>   	void __iomem		*regs;
>>   	struct clk		*clk_lsi;
>>   	struct clk		*clk_pclk;
>>   	unsigned int		rate;
>> -	bool			has_pclk;
>>   };
>>   
>>   static inline u32 reg_read(void __iomem *base, u32 reg)
>> @@ -80,21 +85,30 @@ static int stm32_iwdg_start(struct watchdog_device *wdd)
>>   {
>>   	struct stm32_iwdg *wdt = watchdog_get_drvdata(wdd);
>>   	u32 val = FLAG_PVU | FLAG_RVU;
>> -	u32 reload;
>> +	u32 timeout, presc, iwdg_rlr, iwdg_pr;
>>   	int ret;
>>   
>>   	dev_dbg(wdd->parent, "%s\n", __func__);
>>   
>> -	/* prescaler fixed to 256 */
>> -	reload = clamp_t(unsigned int, ((wdd->timeout * wdt->rate) / 256) - 1,
>> -			 RLR_MIN, RLR_MAX);
>> +	timeout = clamp_t(unsigned int, wdd->timeout,
>> +			  wdd->min_timeout, wdd->max_hw_heartbeat_ms / 1000);
>> +
>> +	if (timeout != wdd->timeout)
>> +		dev_warn(wdd->parent, "timeout skrinked to %d\n", timeout);
>> +
> 
> Valid values for timeout should be set in the set_timeout function,
> not here. As such, there is no need for this warning. More specifically,
> if the selected timeout is between min_timeout and max_hw_heartbeat_ms,
> and the hardware can not meet the exact requested value, the set_timeout
> function should adjust wdd->timeout value accordingly.
> 

Ok, so I will adjust the timeout (with prescaler and reload look-up)
value in set_timeout function. thanks

> Example: The requested timeout is 55 seconds, but the hardware can
> only support either 32 or 64 seconds. The set_timeout function should
> then set wdd->timeout to either 32 or 64.
> 
> Furthermore, this is a valid condition. For example, the timeout could
> be set for one hour (or day), and the maximum heartbeat could be one
> minute. In that situation, the watchdog core handles heartbeat/ping
> requests. Again, this does not warrant a warning.
> 
> On top of all that, if the hardware can not set a minimum timeout of
> 1 second, min_timeout should not be set to 1 second. It should be set
> to the actual minimum supportable value if that value is larger than
> 1 second.
> 
>> +	presc = DIV_ROUND_UP(timeout * wdt->rate, RLR_MAX + 1);
>> +
>> +	/* The prescaler is align on power of 2 and start at 2 ^ PR_SHIFT. */
>> +	presc = roundup_pow_of_two(presc);
>> +	iwdg_pr = presc <= 1 << PR_SHIFT ? 0 : ilog2(presc) - PR_SHIFT;
>> +	iwdg_rlr = ((timeout * wdt->rate) / presc) - 1;
>>   
>>   	/* enable write access */
>>   	reg_write(wdt->regs, IWDG_KR, KR_KEY_EWA);
>>   
>>   	/* set prescaler & reload registers */
>> -	reg_write(wdt->regs, IWDG_PR, PR_256); /* prescaler fix to 256 */
>> -	reg_write(wdt->regs, IWDG_RLR, reload);
>> +	reg_write(wdt->regs, IWDG_PR, iwdg_pr);
>> +	reg_write(wdt->regs, IWDG_RLR, iwdg_rlr);
>>   	reg_write(wdt->regs, IWDG_KR, KR_KEY_ENABLE);
>>   
>>   	/* wait for the registers to be updated (max 100ms) */
>> @@ -150,7 +164,7 @@ static int stm32_iwdg_clk_init(struct platform_device *pdev,
>>   	}
>>   
>>   	/* optional peripheral clock */
>> -	if (wdt->has_pclk) {
>> +	if (wdt->data->has_pclk) {
>>   		wdt->clk_pclk = devm_clk_get(&pdev->dev, "pclk");
>>   		if (IS_ERR(wdt->clk_pclk)) {
>>   			dev_err(&pdev->dev, "Unable to get pclk clock\n");
>> @@ -191,8 +205,8 @@ static const struct watchdog_ops stm32_iwdg_ops = {
>>   };
>>   
>>   static const struct of_device_id stm32_iwdg_of_match[] = {
>> -	{ .compatible = "st,stm32-iwdg", .data = (void *)!HAS_PCLK },
>> -	{ .compatible = "st,stm32mp1-iwdg", .data = (void *)HAS_PCLK },
>> +	{ .compatible = "st,stm32-iwdg", .data = &stm32_iwdg_data },
>> +	{ .compatible = "st,stm32mp1-iwdg", .data = &stm32mp1_iwdg_data },
>>   	{ /* end node */ }
>>   };
>>   MODULE_DEVICE_TABLE(of, stm32_iwdg_of_match);
>> @@ -200,20 +214,17 @@ MODULE_DEVICE_TABLE(of, stm32_iwdg_of_match);
>>   static int stm32_iwdg_probe(struct platform_device *pdev)
>>   {
>>   	struct watchdog_device *wdd;
>> -	const struct of_device_id *match;
>>   	struct stm32_iwdg *wdt;
>>   	struct resource *res;
>>   	int ret;
>>   
>> -	match = of_match_device(stm32_iwdg_of_match, &pdev->dev);
>> -	if (!match)
>> -		return -ENODEV;
>> -
>>   	wdt = devm_kzalloc(&pdev->dev, sizeof(*wdt), GFP_KERNEL);
>>   	if (!wdt)
>>   		return -ENOMEM;
>>   
>> -	wdt->has_pclk = match->data;
>> +	wdt->data = of_device_get_match_data(&pdev->dev);
>> +	if (!wdt->data)
>> +		return -ENODEV;
>>   
>>   	/* This is the timer base. */
>>   	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> @@ -231,8 +242,9 @@ static int stm32_iwdg_probe(struct platform_device *pdev)
>>   	wdd = &wdt->wdd;
>>   	wdd->info = &stm32_iwdg_info;
>>   	wdd->ops = &stm32_iwdg_ops;
>> -	wdd->min_timeout = ((RLR_MIN + 1) * 256) / wdt->rate;
>> -	wdd->max_hw_heartbeat_ms = ((RLR_MAX + 1) * 256 * 1000) / wdt->rate;
>> +	wdd->min_timeout = 1;
> 
> Is this guaranteed to be no larger than 1 under all circumstances ?
> 
> [ Not that the old code was necessarily correct - it might have set
>    min_timeout to 0 if wdt->rate is high ]

Infact, for not guaranteed the min timeout at 1s, the input clock
(wdt->rate) should be < at 12Hz.

On ST micro controller/processor the wdt->rate is based on LSI
(Low Speed Internal) clock which is defined around 32KHz-39KHz

I wanted avoid to set 0, due to min_timeout definition
("unsigned int" in struct watchdog_device) and comparator used
in watchdog_timeout_invalid function.

if the calculated value is < 1 => I could set 1,
else I round on UP or Down value?

Regards,
Ludo

> 
>> +	wdd->max_hw_heartbeat_ms = ((RLR_MAX + 1) * wdt->data->max_prescaler *
>> +				    1000) / wdt->rate;
>>   	wdd->parent = &pdev->dev;
>>   
>>   	watchdog_set_drvdata(wdd, wdt);
>> -- 
>> 2.7.4
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
