Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 823C76D261
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dc3xJ100ZeRv/StgC2ezPn+z0AXH76vDz8audFMFx+g=; b=cW+eD2hXcEvEuc
	6M6NSOHVdXtDEFYVlss0DKKNac56yJtgDnBUX0Sa7T8PWd/SzRofrX3Kw7lYI8uw6MaNpeGBZRe7V
	LeAnaaVVn1IhcG4VcRwLZQVOvxWnYKYycSMrZxFPximX+4rKoTGw2wFhD8qZVPQRVDIDXb3CRTp1n
	AuRUtFX9eNqiVnXDd2r2SrDq1+izvTkJnM4ztE+5JrjCm9lt/4q0Y9XMk33vMmsX74Rg/2/4+EZUS
	UOOa9aGv9OUPP3g5AicWyccZ7AeJV0jVUqLHzq8g26XvSsTUcqx8kHeDUW8tiISmdTHOMNHCvWRhM
	CLrQW4Kp+VB9bEoxBb8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho9db-0002uH-QC; Thu, 18 Jul 2019 16:52:12 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho9dO-0002tQ-So; Thu, 18 Jul 2019 16:52:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id b13so12900779pfo.1;
 Thu, 18 Jul 2019 09:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZdV1mAzD3Cgqxh8f2pMmvuwnJDxnjQimZT7HAnQWZkc=;
 b=cIFigrq5d7WpQNn4DL3MiEfG1Tg6ms0HbI7qTrBjDx1NKi2h/O0MnDlU7a6gZvB0cm
 /Fb5YCaSq9DuBENmAvsnqKfBYg95UXxtAOQ2A+w+qMyVIJIR7m6HxBe7cMYIdk/9VD1L
 O1kEzCJQG7CiFs+lP7GSkCldOKmLGSD+IcmhpCi8sxvDbsrjfJ5+jpjQpVDGduZMK0kN
 L2QY5G3Kr6yx/U0YJgG1eAkd+oGmUjyTSVN/6KsdwWFGt2BDuDyvLsI2tsBwpTwWP9JU
 3bH2gzL4Ohz9Ej8nFjNXLCPPGjsojGrrTFuhdHjX6IaBDY1XoyvxhBioTyF54JbkZz6D
 XRPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZdV1mAzD3Cgqxh8f2pMmvuwnJDxnjQimZT7HAnQWZkc=;
 b=k3L6ScCewUZckAU22DZAeKEjdnhLCCQnAT7Kl5WszG49DXkEWXcmKMwG9YDTSEQeSE
 Att60yNuayVm82c0mx7H7BSmsHpBvNIfTWNah7+BZDy15K5vUlMa1B0Njc/QApYMSHoM
 KuOsCaqd6A9ciuZYnh5+iNfJr8WYg53VzMqKKMrHpCsdsim6yFptJ1pjYiFQdyN4AcmQ
 ooYYkyUcTHD1+nSAptsPOkRQb6YSfKHT0Chalo4txygJGkTFvGIxTYubY2lqZHn7AyAS
 5NSZcjVJQvmSr5oqWdYpb4VA2U5iONEmATCXAxxmQ5yT57iuqWNPymXVbETtpNpAe68+
 72tg==
X-Gm-Message-State: APjAAAWrmjQWLd2mjWmjAVCA3QYZ+ikXxBL4r/r/AB7wdfywWTozID6u
 s1qBzXz7iPT7HQh7cm1pEV1IszBp
X-Google-Smtp-Source: APXvYqyWs5m3meIu1COhQwH0E/qK9hh8EvzdQjsZwYpEk0qlCEhcJB2KCFmOP7K1Xf4ii3tTZHilQQ==
X-Received: by 2002:a65:43c2:: with SMTP id n2mr48665564pgp.110.1563468715632; 
 Thu, 18 Jul 2019 09:51:55 -0700 (PDT)
Received: from [10.69.78.41] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g18sm48837025pgm.9.2019.07.18.09.51.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 09:51:53 -0700 (PDT)
Subject: Re: [PATCH RFC 07/18] clk: bcm2835: Add BCM2838_CLOCK_EMMC2 support
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
 <1563393026-17118-8-git-send-email-wahrenst@gmx.net>
 <f6d8fecd-94d3-a5a8-2d4c-c1ae2b6a0919@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <3b691366-81b1-efe3-8b7e-a81f0fc9c2fb@gmail.com>
Date: Thu, 18 Jul 2019 09:51:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f6d8fecd-94d3-a5a8-2d4c-c1ae2b6a0919@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_095158_937606_60547E9B 
X-CRM114-Status: GOOD (  21.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 7/18/2019 1:47 AM, Matthias Brugger wrote:
> 
> 
> On 17/07/2019 21:50, Stefan Wahren wrote:
>> The new BCM2838 supports an additional clock for the emmc2 block.
>> So add a new compatible to register this clock only for BCM2838.
>>
>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>> ---
>>  drivers/clk/bcm/clk-bcm2835.c | 33 +++++++++++++++++++++++++++++++--
>>  1 file changed, 31 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
>> index 867ae3c..5fe4695 100644
>> --- a/drivers/clk/bcm/clk-bcm2835.c
>> +++ b/drivers/clk/bcm/clk-bcm2835.c
>> @@ -31,7 +31,8 @@
>>  #include <linux/delay.h>
>>  #include <linux/io.h>
>>  #include <linux/module.h>
>> -#include <linux/of.h>
>> +#include <linux/of_device.h>
>> +
>>  #include <linux/platform_device.h>
>>  #include <linux/slab.h>
>>  #include <dt-bindings/clock/bcm2835.h>
>> @@ -114,6 +115,8 @@
>>  #define CM_AVEODIV		0x1bc
>>  #define CM_EMMCCTL		0x1c0
>>  #define CM_EMMCDIV		0x1c4
>> +#define CM_EMMC2CTL		0x1d0
>> +#define CM_EMMC2DIV		0x1d4
>>
>>  /* General bits for the CM_*CTL regs */
>>  # define CM_ENABLE			BIT(4)
>> @@ -1950,6 +1953,15 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>>  		.frac_bits = 8,
>>  		.tcnt_mux = 39),
>>
>> +	/* EMMC2 clock (only available for BCM2838) */
>> +	[BCM2838_CLOCK_EMMC2]	= REGISTER_PER_CLK(
>> +		.name = "emmc2",
>> +		.ctl_reg = CM_EMMC2CTL,
>> +		.div_reg = CM_EMMC2DIV,
>> +		.int_bits = 4,
>> +		.frac_bits = 8,
>> +		.tcnt_mux = 42),
>> +
>>  	/* General purpose (GPIO) clocks */
>>  	[BCM2835_CLOCK_GP0]	= REGISTER_PER_CLK(
>>  		.name = "gp0",
>> @@ -2101,6 +2113,14 @@ static int bcm2835_mark_sdc_parent_critical(struct clk *sdc)
>>  	return clk_prepare_enable(parent);
>>  }
>>
>> +bool bcm2835_has_clk(size_t index) {
>> +	return index != BCM2838_CLOCK_EMMC2;
>> +}
>> +
>> +bool bcm2838_has_clk(size_t index) {
>> +	return true;
>> +}
>> +
>>  static int bcm2835_clk_probe(struct platform_device *pdev)
>>  {
>>  	struct device *dev = &pdev->dev;
>> @@ -2109,9 +2129,14 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
>>  	struct resource *res;
>>  	const struct bcm2835_clk_desc *desc;
>>  	const size_t asize = ARRAY_SIZE(clk_desc_array);
>> +	bool (*has_clk_func)(size_t);
>>  	size_t i;
>>  	int ret;
>>
>> +	has_clk_func = of_device_get_match_data(&pdev->dev);
>> +	if (!has_clk_func)
>> +		return -ENODEV;
>> +
>>  	cprman = devm_kzalloc(dev,
>>  			      struct_size(cprman, onecell.hws, asize),
>>  			      GFP_KERNEL);
>> @@ -2146,6 +2171,9 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
>>  	hws = cprman->onecell.hws;
>>
>>  	for (i = 0; i < asize; i++) {
>> +		if (!has_clk_func(i))
>> +			continue;
>> +
> 
> I think that's very hacky. Can't we just create a per SoC list which get's
> passed via .data and in probe we iterate through that list and enable the
> clocks? That would make clear which clocks are just for bcm2838, basically emmc2.

Or within the structure, add a flag that indicates whether the clock is
available or not for a given chip? That would avoid having to introduce
bcm283x_has_clk() functions that needs to maintain a possibly growing
list of clocks. You would still have to check the flag though.

The trade-off here is a large table (larger than necessary) versus more
run time checks.

We could consider having a base table that gets copied into a bcm2838
specific table, and overlay that base structure with what's specific
with bcm2838, is that you have in mind?
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
