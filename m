Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC84387A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 12:04:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4AJlNKdT1aO+9lh8JsR5ER4eRULkulg5zIMWU+mo5U=; b=e1w+MKekSvuFlm
	IOMhhaNue9kJAnkWMrmw1QA9y6ugxiUDwYb0LBv1m+JBbr6fRTKfvkyqZ1hU2qOQbj17QCyqzoGjw
	Hz0zFoq/zKGGkjO7kD9bQ9Ev8MW2UN5aT4HjWx+qweJcWTnv41pmE5wu3rkR1YxrwJABUt3+IyDxk
	e80Q/Twn4niF8mizUT+1CiCmtlKDym+JuUhiuxwbYb2NnGF+Xz71Rm7ZMYayDBiBctM8amG+3gbVO
	KoaIzyMgYXc/UFh1NRgQ/O5iOfYLnC3nILwJerSVvwpoIj6Acc+D04zcZ4YZ1E+9yKWcnZhzq9j/f
	5C8tRUWpxmhCQ3yTozNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZBjz-00027y-JS; Fri, 07 Jun 2019 10:04:55 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZBjn-00027T-WE; Fri, 07 Jun 2019 10:04:45 +0000
Received: from [192.168.1.162] ([37.4.249.160]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N2EDg-1gY7FI0Hdu-013bmj; Fri, 07 Jun 2019 12:04:30 +0200
Subject: Re: [PATCH v2 2/7] clk: bcm283x: add driver interfacing with
 Raspberry Pi's firmware
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Stefan Wahren <wahrenst@gmx.net>, linux-kernel@vger.kernel.org
References: <20190606142255.29454-1-nsaenzjulienne@suse.de>
 <20190606142255.29454-3-nsaenzjulienne@suse.de>
 <3c4c8b56-eb02-be6f-9b3a-a94a895f10f0@gmx.net>
 <5dccf2500f023ce2c78d9ff3f41b53e36843298b.camel@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <9bd36133-baef-10b8-08a4-25f5b7be04f3@i2se.com>
Date: Fri, 7 Jun 2019 12:04:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5dccf2500f023ce2c78d9ff3f41b53e36843298b.camel@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:LqfBV9PvzxA9MnbA+jtacLi6cIOqHaVauPhIDYqDdyUUEZoJWlr
 YC461MQ/1/I5ZPPtESEfzdpcq9fQ3jT24P9M2hgwAx/XP1oHv6SKPqq2BaTc0p880QHdznf
 qvlf0oCCucXgMpUyVopiPU5P1qU8R1Sy7ucYlmf1kXtE38uqP2UFF87Wrjzz6sRHHf6G6Rs
 RPV2NQVJS6xaP1gYpzT5A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rYvChbU0r58=:G2RamDWSXfpLa60dYMxrXm
 z8d2SFKrLM9xAVOdRy5rMIinyAQkr2Z8E1Dru6NNnVd2AqR719gMQPzckl9mwWM7NVAdQ9m2T
 5r08OHAT+LJefFkd4PcMwOSKzGw5Tcs9I35mKKCHWUN6FLPwm67uU1Zze+XAvgsAi6o0Nv4mJ
 HyuqnpBib3Tmw5w7PwWI67qiOVfnbgCGGr9yvWmc9WgcW9q2LoldZ3ApVDuqgTlNwVKI/QoeL
 S7EYFXckfnI4WZ+M235/Dq6kc2/OFd76zGkX1wyUTfqbvKrRl/jpEV/Olv949MBEii1HqFfVS
 DACTYcds0I4hWvrHipBv01kIj87pyE6Lg2k/J7LV9YxOsZ6R/wyKvciAISDgUXWug4fs98+Un
 F8IJRi2g7hqQ4YKd+Nk49aIfTFgc7SIRo4CeGahx77+/k7CT1kRGgoynCP6Gaid5bwXP18xGD
 Gy4ape4ihX6J+nHj3/HwAQGVkfvFwa1JgOv6kgziecwL/0b32zBnUBqygVYqgVu5wYO+nizKd
 cMGH8YgCIW2wpTnULR4Vc5fRxwqK7qzaTpNt9aDLIaAtrhQkXePN4JUTSUnIuAGiW451ZjMpK
 FG6hT3/qm5i5UPIoX4puxukqIBn9eCkrYpxoGE5N0F7SeuG7k4Vx98z3Ms899YZJzKInWZ5Xa
 y8mIfPYYvgFPG707UfN1DrUbaq4DIUBzT3zYtQc0qkbnFQiJrDP0Ugalf4TNwRe5I0ieXMhcq
 dFyu3bI0OT4pPMjRoRckOX8slZzjkybsj4iLgMrXt+V/bCR7Zq4ivo2GdAc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_030444_336891_1CB4ABDB 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: f.fainelli@gmail.com, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, mbrugger@suse.de, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 07.06.19 um 11:42 schrieb Nicolas Saenz Julienne:
> On Fri, 2019-06-07 at 11:26 +0200, Stefan Wahren wrote:
>> Hi Nicolas,
>>
>> Am 06.06.19 um 16:22 schrieb Nicolas Saenz Julienne:
>>> Raspberry Pi's firmware offers an interface though which update it's
>>> clock's frequencies. This is specially useful in order to change the CPU
>>> clock (pllb_arm) which is 'owned' by the firmware and we're unable to
>>> scale using the register interface provided by clk-bcm2835.
>>>
>>> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>>> Acked-by: Eric Anholt <eric@anholt.net>
>>>
>>> ---
>>>
>>> Changes since v1:
>>>   - Use BIT()
>>>   - Add Kconfig entry, with compile test
>>>   - remove prepare/unprepare
>>>   - Fix uninitialized init.name in pllb registration
>>>   - Add MODULE_ALIAS()
>>>   - Use determine_rate() instead of round_rate()
>>>   - Add small introduction explaining need for driver
>>>
>>>  drivers/clk/bcm/Kconfig           |   7 +
>>>  drivers/clk/bcm/Makefile          |   1 +
>>>  drivers/clk/bcm/clk-raspberrypi.c | 302 ++++++++++++++++++++++++++++++
>>>  3 files changed, 310 insertions(+)
>>>  create mode 100644 drivers/clk/bcm/clk-raspberrypi.c
>>>
>>> diff --git a/drivers/clk/bcm/Kconfig b/drivers/clk/bcm/Kconfig
>>> index 29ee7b776cd4..a4a2775d65e1 100644
>>> --- a/drivers/clk/bcm/Kconfig
>>> +++ b/drivers/clk/bcm/Kconfig
>>> @@ -64,3 +64,10 @@ config CLK_BCM_SR
>>>  	default ARCH_BCM_IPROC
>>>  	help
>>>  	  Enable common clock framework support for the Broadcom Stingray SoC
>>> +
>>> +config CLK_RASPBERRYPI
>>> +	tristate "Raspberry Pi firmware based clock support"
>>> +	depends on RASPBERRYPI_FIRMWARE || (COMPILE_TEST &&
>>> !RASPBERRYPI_FIRMWARE)
>>> +	help
>>> +	  Enable common clock framework support for Raspberry Pi's firmware
>>> +	  dependent clocks
>>> diff --git a/drivers/clk/bcm/Makefile b/drivers/clk/bcm/Makefile
>>> index 002661d39128..eb7159099d82 100644
>>> --- a/drivers/clk/bcm/Makefile
>>> +++ b/drivers/clk/bcm/Makefile
>>> @@ -7,6 +7,7 @@ obj-$(CONFIG_CLK_BCM_KONA)	+= clk-bcm21664.o
>>>  obj-$(CONFIG_COMMON_CLK_IPROC)	+= clk-iproc-armpll.o clk-iproc-pll.o
>>> clk-iproc-asiu.o
>>>  obj-$(CONFIG_ARCH_BCM2835)	+= clk-bcm2835.o
>>>  obj-$(CONFIG_ARCH_BCM2835)	+= clk-bcm2835-aux.o
>>> +obj-$(CONFIG_CLK_RASPBERRYPI)	+= clk-raspberrypi.o
>>>  obj-$(CONFIG_ARCH_BCM_53573)	+= clk-bcm53573-ilp.o
>>>  obj-$(CONFIG_CLK_BCM_CYGNUS)	+= clk-cygnus.o
>>>  obj-$(CONFIG_CLK_BCM_HR2)	+= clk-hr2.o
>> not your fault but you better rebase your next version on linux-next
>> because Florian's latest patches ("clk: bcm: Make BCM2835 clock drivers
>> selectable") collide with this patch.
>>
>> Checkpatch gives the following output about this patch:
>>
>> WARNING: 'harware' may be misspelled - perhaps 'hardware'?
>>
>> #58: FILE: drivers/clk/bcm/clk-raspberrypi.c:5:
>> + * Even though clk-bcm2835 provides an interface to the harware
>> registers for
>>
>> ERROR: code indent should use tabs where possible
>> #197: FILE: drivers/clk/bcm/clk-raspberrypi.c:144:
>> +^I^I^I^I           struct clk_rate_request *req)$
> Noted, thanks.
>
> As this seems fairly calm, should I send v3 or wait little more?
>
Please wait until i'm finished with testing.

If i don't gave you a feedback until Tuesday, send out your next
version. Okay?



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
