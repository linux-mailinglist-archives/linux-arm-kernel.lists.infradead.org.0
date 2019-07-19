Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18506E8E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 18:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nig6lvGacWRc357yfm90DVyUTPKJ+SN58LUoHSCWLfs=; b=rRMYoSDQJkaAUs
	dKopHGJhSw9kGLMTBzCToafFYU6VaYswq7ZFL7w5C7fuSA88gmn3lwd7E+hp8daHETM0tm/7yLGf9
	+/KChwSmD9yMBh+oYJOOIdgvL6Ad5wIe7biNFNZoJm1lH4Dbd+HB8QvPhCcKMPXQ7Bh56E2BntiQe
	ADiYduPN5TRwDy2Ie7J7h2gx1/4xdbOxV8AnUhvpSY4ltpY9ESGq9XlzNMq0NTDakmCebXeXH/QH7
	wUVBJU0XhyqT3EqPQNLuDhzPt/7kvd5saowoIh3m/PMJjKPjvrYKdYVGLqcr9v9QFC0W2SbkvVex+
	d9r+SDEsELkfDkwzua1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoVwY-0005tM-IF; Fri, 19 Jul 2019 16:41:14 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoVwI-0005sR-EY; Fri, 19 Jul 2019 16:41:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563554440;
 bh=IMEGqzZNsE6t2a8Ul3Df+zdB6i1Ek2lruijHlGU41rE=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=aUu9hHbeBAv3TiOpIu1KiC1CbaqE2+XqWl+B7E/ptnY7rr5f9s3o+iwvFbeqrxUcq
 38bfiwVQUYtwMKiDBQ76g79fI/Im1LKD1sfclLnw+AOTocgT5v+GBlETOkrtTHBhHZ
 LymTi6zZ/qSmL/7to6+8D2clQhXPTMwsfztVzq14=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.166]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0M0y8F-1iigtD0DEt-00v7WP; Fri, 19
 Jul 2019 18:40:40 +0200
Subject: Re: [PATCH RFC 07/18] clk: bcm2835: Add BCM2838_CLOCK_EMMC2 support
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Ray Jui <rjui@broadcom.com>,
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
 <3b691366-81b1-efe3-8b7e-a81f0fc9c2fb@gmail.com> <87blxrgpdu.fsf@anholt.net>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <efa635ca-4626-e569-0232-fcbec32f309a@gmx.net>
Date: Fri, 19 Jul 2019 18:40:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87blxrgpdu.fsf@anholt.net>
Content-Language: en-US
X-Provags-ID: V03:K1:dVLzwX4O1u91cS2AMI9zUJuseb7+Wu09sUoLA1U0S1aMdyuFkxb
 DPmrA8YmhGoxqo7MbBfkEdP557EWgqMDL6gbX0eKmJVeSRIeZDv+YX+MZRKbIPRwLIhjshW
 J+gPteh3VoHMJUJzzDG76XYduOcu9wsOxNooMVHNukwReqrmqmI/COMevhoMMmlMhQHyra7
 fEVudm4wZERhhdLQW6maQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yEvWNQVOyro=:11T1R3goCRi6JAU/LOYCP/
 3Pxl4PmNc55ZuHhe7NPRWNPGhUCbFRtf3SXm0iBUHN+lSqPG0UJ6OCzcedUOF8wY2Xbxft42W
 a+U++MzaIKkm8BMuqKd6a7WyCcQmuinRXzejt1HZ/E4PQPbNp3vjUc+HR7kLArx9ifyIM0eJ3
 kxweR9kVCFaCWeSWzmsx2gMKiAwpkv8/SKb2opxiEXt8UeRMMqWjy2yOfhskD07me4vUudaiB
 B6+icMBbVWcO6UoHrzTzuSlO/O0PEQOnolTB4PUJIPB83nvsBO/sqR6VpiyJGTbBQMSAdZqMC
 s5bdNXtSk6rq6ZJ7Pu9C8+qkzTlZX3xiPsj5LF01EHSWixT5UqpCmk8G2mB7dvM0r8zbsyh0Q
 zli90Z6jpSm2ekh9moXLkf2ZTWPqbvYXx6oZLoIEpbmBT/PYSrKCNJjzmSk484OhzbHIFrhTZ
 8FRyxPOnXXdIpCnbF27F7/7HABQZZDoGfcUty6/GGLVZb12rDNcdj/Q4JAAcRlBapsuZINR+h
 THMaR6+Q4vMc50Gs+nZ6q67qDvkEOoHQC8yLAmJEjO/IpkKKmKKyhNvZf607dUT+hi30B5ILq
 r+09Pb1C5guVGJ8hvRG4opGMiS9PsU2lb8Bik9wESWrrm8VdMQntvYgLQs6Wviqhq0MLJIGXx
 GH/es1yu08meKmz20pwYOjvEb++NLin1xosQBe3wpoI/J0ax3QkIQbSBZdSIGo9DT1Flu0KpT
 PJmPanf7dMd9q5uyQkm4eIuVUw3MBkXmzIi3JWCYZC/ihfF9OUS/SSTdqo7UqDCiSBWzrzINL
 +uEEwlksSnkCGlXgGUiVMiY5WprjrR7IFe6BAZ6Yu48eieXAdHyYaRX3gH/MRY8zrmBeb+UhL
 Iz+DtEVV2YjXsf1U5KB5gtMy4lk9B4b8kJ9IT/4GqSVMqfcUd6ukwviP3OqFG0QcVuNLLgzCM
 Z//fL2Z7NmK2OeYL7up7rx19AnaFdgDgxYpnnK2tmb9pBAR9NcRQUd6YxFdQxrW4Exkhla0Gb
 23fm3ZM5ESm0BSBV8MmF9T2R1kAOu+tT6zWvJq6sKHzaRjZK4YDGMaWC3sqYhipQafDGAokNr
 s0MTKO+6vo/uIs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_094058_828815_8508B415 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am 18.07.19 um 20:37 schrieb Eric Anholt:
> Florian Fainelli <f.fainelli@gmail.com> writes:
>
>> On 7/18/2019 1:47 AM, Matthias Brugger wrote:
>>>
>>> On 17/07/2019 21:50, Stefan Wahren wrote:
>>>> The new BCM2838 supports an additional clock for the emmc2 block.
>>>> So add a new compatible to register this clock only for BCM2838.
>>>>
>>>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>>>> ---
>>>>  drivers/clk/bcm/clk-bcm2835.c | 33 +++++++++++++++++++++++++++++++--
>>>>  1 file changed, 31 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
>>>> index 867ae3c..5fe4695 100644
>>>> --- a/drivers/clk/bcm/clk-bcm2835.c
>>>> +++ b/drivers/clk/bcm/clk-bcm2835.c
>>>> @@ -31,7 +31,8 @@
>>>>  #include <linux/delay.h>
>>>>  #include <linux/io.h>
>>>>  #include <linux/module.h>
>>>> -#include <linux/of.h>
>>>> +#include <linux/of_device.h>
>>>> +
>>>>  #include <linux/platform_device.h>
>>>>  #include <linux/slab.h>
>>>>  #include <dt-bindings/clock/bcm2835.h>
>>>> @@ -114,6 +115,8 @@
>>>>  #define CM_AVEODIV		0x1bc
>>>>  #define CM_EMMCCTL		0x1c0
>>>>  #define CM_EMMCDIV		0x1c4
>>>> +#define CM_EMMC2CTL		0x1d0
>>>> +#define CM_EMMC2DIV		0x1d4
>>>>
>>>>  /* General bits for the CM_*CTL regs */
>>>>  # define CM_ENABLE			BIT(4)
>>>> @@ -1950,6 +1953,15 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>>>>  		.frac_bits = 8,
>>>>  		.tcnt_mux = 39),
>>>>
>>>> +	/* EMMC2 clock (only available for BCM2838) */
>>>> +	[BCM2838_CLOCK_EMMC2]	= REGISTER_PER_CLK(
>>>> +		.name = "emmc2",
>>>> +		.ctl_reg = CM_EMMC2CTL,
>>>> +		.div_reg = CM_EMMC2DIV,
>>>> +		.int_bits = 4,
>>>> +		.frac_bits = 8,
>>>> +		.tcnt_mux = 42),
>>>> +
>>>>  	/* General purpose (GPIO) clocks */
>>>>  	[BCM2835_CLOCK_GP0]	= REGISTER_PER_CLK(
>>>>  		.name = "gp0",
>>>> @@ -2101,6 +2113,14 @@ static int bcm2835_mark_sdc_parent_critical(struct clk *sdc)
>>>>  	return clk_prepare_enable(parent);
>>>>  }
>>>>
>>>> +bool bcm2835_has_clk(size_t index) {
>>>> +	return index != BCM2838_CLOCK_EMMC2;
>>>> +}
>>>> +
>>>> +bool bcm2838_has_clk(size_t index) {
>>>> +	return true;
>>>> +}
>>>> +
>>>>  static int bcm2835_clk_probe(struct platform_device *pdev)
>>>>  {
>>>>  	struct device *dev = &pdev->dev;
>>>> @@ -2109,9 +2129,14 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
>>>>  	struct resource *res;
>>>>  	const struct bcm2835_clk_desc *desc;
>>>>  	const size_t asize = ARRAY_SIZE(clk_desc_array);
>>>> +	bool (*has_clk_func)(size_t);
>>>>  	size_t i;
>>>>  	int ret;
>>>>
>>>> +	has_clk_func = of_device_get_match_data(&pdev->dev);
>>>> +	if (!has_clk_func)
>>>> +		return -ENODEV;
>>>> +
>>>>  	cprman = devm_kzalloc(dev,
>>>>  			      struct_size(cprman, onecell.hws, asize),
>>>>  			      GFP_KERNEL);
>>>> @@ -2146,6 +2171,9 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
>>>>  	hws = cprman->onecell.hws;
>>>>
>>>>  	for (i = 0; i < asize; i++) {
>>>> +		if (!has_clk_func(i))
>>>> +			continue;
>>>> +
>>> I think that's very hacky. Can't we just create a per SoC list which get's
>>> passed via .data and in probe we iterate through that list and enable the
>>> clocks? That would make clear which clocks are just for bcm2838, basically emmc2.
>> Or within the structure, add a flag that indicates whether the clock is
>> available or not for a given chip? That would avoid having to introduce
>> bcm283x_has_clk() functions that needs to maintain a possibly growing
>> list of clocks. You would still have to check the flag though.
> I think this is a good solution.

i only want to make sure that i get it right:

- add a new member supported (e.g. unsigned int) into struct
bcm2835_clk_desc
- bit 1 should be BCM2835 and 2 should be BCM2711 (so BCM7211 could use
3 and so ...)
- during probing we should check the bit against the SoC bit before
registration

Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
