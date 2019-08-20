Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BEA96943
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 21:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOL337FaYhiR9SrSWBLO3c2RgQBdGn62i9iYIpmfoO0=; b=f7ys0kC8DgtcFD
	gHXcxDhr4/XbcOmtTQHCN7C0MaV7cc96vHub1oQmiM2KKUgRU622q0FrWvkeObJIuTT8NyMbRW3+e
	YLlte7Htn/fKXXeg6KlHfOLBQT8Kqh1hb0ed4OLmzMv5YFML7ESk1ETcTr02KSH4dDJBQKowxmuWc
	A6ISwwHyxsxj+n2ppBG+RUtYhMn6CVCV8vrywegJHvqHXK0C6prm4CB/jJkFP7Ggr5szT7IPWoBZE
	El14R6Aw8MIOr4FjN2qdon0shNsio3TeEzTzsNd9uxICB6bRTSySEDbJ1IzKPDLj9j5TXDztTrjtQ
	dhnYA+RqguK9FGWdBWdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i09fA-0000dD-I2; Tue, 20 Aug 2019 19:19:24 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i09f1-0000cC-7Y
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 19:19:17 +0000
Received: by mail-pl1-x641.google.com with SMTP id gn20so3237679plb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 12:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=d3xEwsHTmPgqbdVb+zyY04Un4P6jiiCiFWweN/mQiKY=;
 b=towNl5GIX0HZUlEZQQPSdcqGKLHxu01ak6wG6m4xqV0MF6uZFhmtTj6oYHA+gHS/pn
 kPhnZhBjLjY8R/uXQhJbGdHUFfD7YYwOAfidXa8TmMoH5rknmzlBXHCf3hQlUyr5uS7C
 iYG1Bj8YXV+ZifjuoObVGhusuQbtGLbHs8e07tDxtMxCct58Nj3zcUGOrmsm/q8201Id
 V8MePkSYOPEPC208zQ4euGywwLdtgjNM6iji1pXXQdGrcfblp8+GELLaWksCKSB/p0UC
 TtiVWvaJkxdwMIw4U81blOVXv6HR+XZ8KTMQVqgIgioLgLkh6CxCzgMbvqCzIkN8ZaMf
 TNug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=d3xEwsHTmPgqbdVb+zyY04Un4P6jiiCiFWweN/mQiKY=;
 b=fbZA98Gij2f9r9wgdIw/C/V44CI5pfOceYqc7pvaSwDJkB5JVpHbIrKNYCzJ7MOaJm
 bLF3KQ+Mus/ZjHiESMKEEtcrMYfOO7yf8OaKPSTSxgVjxc8Kp+uWGIncnnuwpOTM/aoc
 +jExLlQmhI6J2TojEmbSBw0Cuaw7de9D1DLcj3go5Hx/FYR+OaD6mcBnyL6OJ7EFYwMU
 IwAj5z/kyD2r2SXWPEvfN12b1ED/Vy7wr3jhJv9XqKHVEl3qGcwJtmiuvLdBqaUfnn4L
 QRHjgvQxzDUTORsB3/Y/UPJr153KoxDT3ZpNwOdG0d+YJItpmZhZLMjlt/6VXgZRVgIa
 rx5g==
X-Gm-Message-State: APjAAAWOKSNzUJYZspcws8sRKZT8LPJq/5YdIjFGyt7e+gj86Jh5iz0o
 0/Y6Wb4cy47HpgXiD8RLEacfRkQFRo4Q0A==
X-Google-Smtp-Source: APXvYqxkiZWI81IrAJlJc85yafLr/6GYWcmOU3ISRGRFq6Opi4QDH2DCpoiFyPamN/inoEReBVqNKQ==
X-Received: by 2002:a17:902:e489:: with SMTP id
 cj9mr24496481plb.327.1566328752258; 
 Tue, 20 Aug 2019 12:19:12 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id t70sm676845pjb.2.2019.08.20.12.19.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 20 Aug 2019 12:19:11 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, jbrunet@baylibre.com
Subject: Re: [RFC 04/11] soc: amlogic: Add support for SM1 power controller
In-Reply-To: <98bda35e-1b4c-404c-fdbd-eaef9ecf38a6@baylibre.com>
References: <20190701104705.18271-1-narmstrong@baylibre.com>
 <20190701104705.18271-5-narmstrong@baylibre.com>
 <7hftlwvhdk.fsf@baylibre.com>
 <98bda35e-1b4c-404c-fdbd-eaef9ecf38a6@baylibre.com>
Date: Tue, 20 Aug 2019 12:19:11 -0700
Message-ID: <7hd0gzejbk.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_121915_416196_1A074982 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On 20/08/2019 01:56, Kevin Hilman wrote:
>> Neil Armstrong <narmstrong@baylibre.com> writes:
>> 
>>> Add support for the General Purpose Amlogic SM1 Power controller,
>>> dedicated to the PCIe, USB, NNA and GE2D Power Domains.
>>>
>>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> 
>> I like this driver in general, but as I look at all the EE power domains
>> for GX, G12 and SM1 they are really very similar.  I had started to
>> generalize the gx-pwrc-vpu driver and it ends up looking just like this.
>
> Yes I developed it to be generic, but when starting to fill up the GXBB/GXL/G12A
> domains, except the VPU, they only need the PD parts.
>
>> 
>> I think this driver could be generalized just a little bit more and then
>> replace the the GX-specific VPU one, and AFAICT, then be used across all
>> the 64-bit SoCs, and be called "meson-pwrc-ee" or something like that...
>> 
>>> ---
>>>  drivers/soc/amlogic/Kconfig          |  11 ++
>>>  drivers/soc/amlogic/Makefile         |   1 +
>>>  drivers/soc/amlogic/meson-sm1-pwrc.c | 245 +++++++++++++++++++++++++++
>>>  3 files changed, 257 insertions(+)
>>>  create mode 100644 drivers/soc/amlogic/meson-sm1-pwrc.c
>>>
>>> diff --git a/drivers/soc/amlogic/Kconfig b/drivers/soc/amlogic/Kconfig
>>> index 5501ad5650b2..596f1afef1a7 100644
>>> --- a/drivers/soc/amlogic/Kconfig
>>> +++ b/drivers/soc/amlogic/Kconfig
>>> @@ -36,6 +36,17 @@ config MESON_GX_PM_DOMAINS
>>>  	  Say yes to expose Amlogic Meson GX Power Domains as
>>>  	  Generic Power Domains.
>>>  
>>> +config MESON_SM1_PM_DOMAINS
>>> +	bool "Amlogic Meson SM1 Power Domains driver"
>>> +	depends on ARCH_MESON || COMPILE_TEST
>>> +	depends on PM && OF
>>> +	default ARCH_MESON
>>> +	select PM_GENERIC_DOMAINS
>>> +	select PM_GENERIC_DOMAINS_OF
>>> +	help
>>> +	  Say yes to expose Amlogic Meson SM1 Power Domains as
>>> +	  Generic Power Domains.
>>> +
>>>  config MESON_MX_SOCINFO
>>>  	bool "Amlogic Meson MX SoC Information driver"
>>>  	depends on ARCH_MESON || COMPILE_TEST
>>> diff --git a/drivers/soc/amlogic/Makefile b/drivers/soc/amlogic/Makefile
>>> index bf2d109f61e9..f99935499ee6 100644
>>> --- a/drivers/soc/amlogic/Makefile
>>> +++ b/drivers/soc/amlogic/Makefile
>>> @@ -3,3 +3,4 @@ obj-$(CONFIG_MESON_CLK_MEASURE) += meson-clk-measure.o
>>>  obj-$(CONFIG_MESON_GX_SOCINFO) += meson-gx-socinfo.o
>>>  obj-$(CONFIG_MESON_GX_PM_DOMAINS) += meson-gx-pwrc-vpu.o
>>>  obj-$(CONFIG_MESON_MX_SOCINFO) += meson-mx-socinfo.o
>>> +obj-$(CONFIG_MESON_SM1_PM_DOMAINS) += meson-sm1-pwrc.o
>>> diff --git a/drivers/soc/amlogic/meson-sm1-pwrc.c b/drivers/soc/amlogic/meson-sm1-pwrc.c
>>> new file mode 100644
>>> index 000000000000..9ece1d06f417
>>> --- /dev/null
>>> +++ b/drivers/soc/amlogic/meson-sm1-pwrc.c
>>> @@ -0,0 +1,245 @@
>>> +// SPDX-License-Identifier: GPL-2.0+
>>> +/*
>>> + * Copyright (c) 2017 BayLibre, SAS
>>> + * Author: Neil Armstrong <narmstrong@baylibre.com>
>>> + */
>>> +
>>> +#include <linux/of_address.h>
>>> +#include <linux/platform_device.h>
>>> +#include <linux/pm_domain.h>
>>> +#include <linux/bitfield.h>
>>> +#include <linux/regmap.h>
>>> +#include <linux/mfd/syscon.h>
>>> +#include <linux/of_device.h>
>>> +#include <dt-bindings/power/meson-sm1-power.h>
>>> +
>>> +/* AO Offsets */
>>> +
>>> +#define AO_RTI_GEN_PWR_SLEEP0		(0x3a << 2)
>>> +#define AO_RTI_GEN_PWR_ISO0		(0x3b << 2)
>>> +
>>> +/* HHI Offsets */
>>> +
>>> +#define HHI_MEM_PD_REG0			(0x40 << 2)
>>> +#define HHI_NANOQ_MEM_PD_REG0		(0x46 << 2)
>>> +#define HHI_NANOQ_MEM_PD_REG1		(0x47 << 2)
>>> +
>>> +struct meson_sm1_pwrc;
>>> +
>>> +struct meson_sm1_pwrc_mem_domain {
>>> +	unsigned int reg;
>>> +	unsigned int mask;
>>> +};
>>> +
>>> +struct meson_sm1_pwrc_domain_desc {
>>> +	char *name;
>>> +	unsigned int sleep_reg;
>>> +	unsigned int sleep_bit;
>>> +	unsigned int iso_reg;
>>> +	unsigned int iso_bit;
>>> +	unsigned int mem_pd_count;
>>> +	struct meson_sm1_pwrc_mem_domain *mem_pd;
>>> +};
>> 
>> If you add resets and clocks (using clk bulk like my other proposed
>> patch to gx-pwrc-vpu) then this could be used for VPU also.  We could
>> ignore my clk bulk patch and then just deprecate the old driver and use
>> this one for everything.
>> 
>> We would just need SoC-specific tables selected by compatible-string to
>> select the memory pds, and the clocks and resets could (optionaly) come
>> from the DT.
>
> Could you elaborate ?
>
> Do you mean I should slit out the memory PDs as different compatible ?

You currently create all these SoC-specific `mem_domain` tables.  We'll
need more of those for the other SoCs, so my suggestion was that, in
order to use this across multiple SoCs, you select the set of mem_domain
tables based on compatible string.

That was just my first idea.  If you have a better idea, I'm open to
that too.

> Let me try to fit the VPU stuff in it.

Great, thanks!

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
