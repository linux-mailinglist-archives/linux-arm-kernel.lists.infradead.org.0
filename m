Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C207CB27
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 19:58:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k7XZbM3ChovNS52et3sITDjSvV6mxEBNEjGdaB6kb+A=; b=TXsWWYiTbpoHrNhyoIOAwwWC+
	uqAxqYRdgduKZ7I4+1xgsuzSLw/lPTUxL7nNsjaYLMc5g7qNNDaPJIbPXZHmF/3cU+x648WvR4rKx
	shgT2tmTna1mx0nFnYpGrvHG/+AwC/HlBY4eR6p7MI5+3p0MGdEEPcEcAwFICqUQ2YirvcHar2iwW
	0fd4DTbag40W4XQ74SYC6OGsoj1KKk/bEW9tvX/2LiIIvqr5aCGfZJoNAHys4rletOKBXDf1TsO+A
	Hlyn4iL93loSvQQpLlRclqtJ9KhT4wfOVPPqRKM8fxJe0z9kMChFuNLKRVt0p4KBjj7eG5+7C1aHL
	E4eMV8jCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hssrx-000643-0C; Wed, 31 Jul 2019 17:58:33 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hssrp-00063I-SP
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 17:58:27 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D1EBE601D7; Wed, 31 Jul 2019 17:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564595904;
 bh=hqwgQg+QLrSpltpFXDR2kApel5sVgQ1jriHtGFCWpyI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=bqs3pbnctqReZ9uJtVeQ+o+0BS1xYilrf9EQ5EH8NUNz3OmgRiffjjVDr2O6F3MN2
 O3aI2iD1F888UsjcWO+8+WGQ3L9bwtgFgftg1C2suuFGnuVCWWXcOAM68IRBQ41Uka
 X+379Ld5lBwzsc2AHN+mGxPfL+GhedDZ7gMQc7AQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.226.58.28] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jhugo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id AAE9760258;
 Wed, 31 Jul 2019 17:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564595903;
 bh=hqwgQg+QLrSpltpFXDR2kApel5sVgQ1jriHtGFCWpyI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=jjX1LtBGzumz0W0cw3esC+EtGpbdRQGTehJNHNA79B7e56CsrS/cH5K0Y+ggC2Iua
 WdCckenA2QtwXBzwzn7+M/IcScCKrD0bIYSCGus6jOJyHqhBgklWEwQsZ2fS6gv40h
 /weRb6Fb0AGhvtgtzX1Yr/+0xT1jjxpgMb+ixiE4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org AAE9760258
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jhugo@codeaurora.org
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
To: Stephen Boyd <swboyd@chromium.org>, Lee Jones <lee.jones@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, Mark Brown <broonie@kernel.org>,
 Timur Tabi <timur@kernel.org>
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730134115.GE4264@sirena.org.uk>
 <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
 <5d41b01a.1c69fb81.84578.a0bc@mx.google.com>
From: Jeffrey Hugo <jhugo@codeaurora.org>
Message-ID: <cbbe381e-a154-ced1-fbcb-9db2135e4e5b@codeaurora.org>
Date: Wed, 31 Jul 2019 11:58:21 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <5d41b01a.1c69fb81.84578.a0bc@mx.google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_105825_971234_AAE0CC2B 
X-CRM114-Status: GOOD (  35.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lina Iyer <ilina@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/31/2019 8:13 AM, Stephen Boyd wrote:
> Quoting Linus Walleij (2019-07-31 01:48:38)
>> On Tue, Jul 30, 2019 at 3:41 PM Mark Brown <broonie@kernel.org> wrote:
>>
>>> Today's -next fails to boot on QDF2400 systems:
>>
>> Is this a devicetree or ACPI system? Which devicetree in that case?
>> If it is ACPI I assume one had to look into DSDTs?
>>
>> But I looked into this!
>>
>>> 08:56:36.026587  [    4.339966] pc : __memset+0x80/0x188
>>> 08:56:36.026867  [    4.343524] lr : msm_gpio_init_valid_mask+0x134/0x1a4
>>
>> Aha. I think this only worked out of chance before.
>>
>> What the Qualcomm driver does is exploit that .init_valid_mask() gets called
>> even if .need_valid_mask in gpio_chip is not set to true,
>> and this is why the bug appears in
>> msm_gpio_init_valid_mask(), I'm pretty much sure it is the
>> bitmap_zero(chip->valid_mask, max_gpios);
>> call towards the end of the function that gets turned
>> into:
>> 08:56:36.114798  [    4.433713]  __memset+0x80/0x188
>>
>> And this causes the crash.
>>
>> This is then because chip->valid_mask has not been allocated, and that
>> is because .need_valid_mask is not set. This is set like so:
>>
>> static bool msm_gpio_needs_valid_mask(struct msm_pinctrl *pctrl)
>> {
>>      if (pctrl->soc->reserved_gpios)
>>          return true;
>>
>>      return device_property_read_u16_array(pctrl->dev, "gpios", NULL, 0) > 0;
>> }
> 
> Some of the code here is new. I guess the arm64 laptop stuff is making
> changes.
> 
>>
>> First comes from the driver, second is for ACPI I think. It looks
>> like a bit dangerous way to do it for ACPI, what if an OF pin controller
>> has some "gpios" property? Oh well.
>>
>> Apparently this only happens on ACPI systems because I tested it
>> myself on a DT system.
>>
>> Another cause may be this from the call site inside gpiolib:
>>
>> static int gpiochip_alloc_valid_mask(struct gpio_chip *gc)
>> {
>>      if (IS_ENABLED(CONFIG_OF_GPIO))
>>          gc->need_valid_mask = of_gpio_need_valid_mask(gc);
>>      if (!gc->need_valid_mask)
>>          return 0;
>>
>>      gc->valid_mask = gpiochip_allocate_mask(gc);
>>      if (!gc->valid_mask)
>>          return -ENOMEM;
>>      return 0;
>> }
>>
>> So if OF and ACPI is activated at the same time (can that happen?)
> 
> Yes, OF and ACPI can be compiled into the same kernel. Also, ACPI does
> some interesting things when CONFIG_OF is enabled by looking for some
> ACPI magic that basically says "match the DT compatible string embedded
> in this ACPI thing". Quite scary!
> 
>> then the OF code will bail out I suppose and this happens when the
>> ACPI side of things try to use the mask it didn't allocate. The ACPI
>> codepath in msm_gpio_init_valid_mask() seems to try to set the
>> mask even if there is zero GPIOs as well... dereferencing the NULL
>> pointer in chip->valid_mask.
>>
>> Could it be that this is a ACPI system with zero protected GPIOs?

QDF2400 is an ACPI only system, but it has protected GPIOs

>> It doesn't seem like the code will survive that. It seems written
>> under the assumption that
>>
>> It's a bit of a mess.
>>
>> Can some qcom ACPI people take linux-next for a ride and tell me
>> what I should do?
>>
>> Lee: do you know if linux-next boots fine on your ACPI machine?
>>
>> Timur/Stephen: any ideas?

Timur's CAF account is no longer valid, I added his @kernel one.

>>
> 
> I think the code changed in commit f626d6dfb709 ("gpio: of: Break out
> OF-only code"). Now it unconditionally overwrites the chip's
> need_valid_mask member when CONFIG_OF is enabled. How about only
> overwriting it to 'true' when it really needs it? That way, the gpio
> provider can have a say. I originally wrote this by having
> of_gpio_need_valid_mask() modify the chip directly, but I like this
> approach instead where we mark it as const in that function and then
> only set it to true if it's actually needed.
> 
> -----8<----
> diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
> index b10d04dd9296..e39b4290b80c 100644
> --- a/drivers/gpio/gpiolib-of.c
> +++ b/drivers/gpio/gpiolib-of.c
> @@ -87,7 +87,7 @@ static struct gpio_desc *of_xlate_and_get_gpiod_flags(struct gpio_chip *chip,
>    * @dev: the device for the GPIO provider
>    * @return: true if the valid mask needs to be set
>    */
> -bool of_gpio_need_valid_mask(struct gpio_chip *gc)
> +bool of_gpio_need_valid_mask(const struct gpio_chip *gc)
>   {
>   	int size;
>   	struct device_node *np = gc->of_node;
> diff --git a/drivers/gpio/gpiolib-of.h b/drivers/gpio/gpiolib-of.h
> index 34954921d96e..454d1658ee2d 100644
> --- a/drivers/gpio/gpiolib-of.h
> +++ b/drivers/gpio/gpiolib-of.h
> @@ -16,7 +16,7 @@ struct gpio_desc *of_get_named_gpiod_flags(struct device_node *np,
>   int of_gpiochip_add(struct gpio_chip *gc);
>   void of_gpiochip_remove(struct gpio_chip *gc);
>   int of_gpio_get_count(struct device *dev, const char *con_id);
> -bool of_gpio_need_valid_mask(struct gpio_chip *gc);
> +bool of_gpio_need_valid_mask(const struct gpio_chip *gc);
>   #else
>   static inline struct gpio_desc *of_find_gpio(struct device *dev,
>   					     const char *con_id,
> @@ -36,7 +36,7 @@ static inline int of_gpio_get_count(struct device *dev, const char *con_id)
>   {
>   	return 0;
>   }
> -static inline bool of_gpio_need_valid_mask(struct gpio_chip *gc)
> +static inline bool of_gpio_need_valid_mask(const struct gpio_chip *gc)
>   {
>   	return false;
>   }
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index d45c9a2285f0..e7153c81fdaa 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -362,8 +362,8 @@ static unsigned long *gpiochip_allocate_mask(struct gpio_chip *chip)
>   
>   static int gpiochip_alloc_valid_mask(struct gpio_chip *gc)
>   {
> -	if (IS_ENABLED(CONFIG_OF_GPIO))
> -		gc->need_valid_mask = of_gpio_need_valid_mask(gc);
> +	if (of_gpio_need_valid_mask(gc))
> +		gc->need_valid_mask = true;
>   	if (!gc->need_valid_mask)
>   		return 0;
>   
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


-- 
Jeffrey Hugo
Qualcomm Technologies, Inc. is a member of the
Code Aurora Forum, a Linux Foundation Collaborative Project.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
