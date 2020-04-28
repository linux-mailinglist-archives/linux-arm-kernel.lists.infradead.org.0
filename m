Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D718A1BC1F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dvw7/qC+6tSnkf3UfF2wtUGJNSSAvH8kBb94xzzy89s=; b=KQErRCdM6eNCTvZgVEkOA4vm2
	/v5j+NumUS9+4LUrakHYXMxd4uzxxbeTDILtaY/f9uuWlzose9Ix8IJMNhekp6LH07K0ICwQbn3qL
	IDclVgI/XbqXTjOXuwufCxyS0MuaVYrgtALW+Nd6jDz58sv9XwVQVzLEvZbD1rCTjpA0r1ALDpmPP
	MhxdDTlYWGKTXsb/q8XNnDkiESgi0oPzZjbFp1mnYMvaEB8rTQ2d1Mf6Qz3emszTRPzzY8bcD6hwf
	Td+9DD1zp2lp485ApKYv03jnChTXi5FQSfd0w6D+BSnGtBvg9zjFy5rHwrj5ZWOj6m7FWp3c52YTH
	t+6FoZfEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRbW-0004AQ-8u; Tue, 28 Apr 2020 14:52:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRYY-0008Q1-WB
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:49:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D0A331B;
 Tue, 28 Apr 2020 07:49:54 -0700 (PDT)
Received: from [10.57.33.170] (unknown [10.57.33.170])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 92DCD3F305;
 Tue, 28 Apr 2020 07:49:50 -0700 (PDT)
Subject: Re: [PATCH v3 02/16] mfd: mfd-core: Don't overwrite the dma_mask of
 the child device
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-3-michael@walle.cc>
 <20200428124548.GS185537@smile.fi.intel.com>
 <3cd3705a-4f48-6a46-e869-3ee11dc17323@arm.com>
 <20200428142938.GX185537@smile.fi.intel.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6ccad285-7b5f-3037-d4d5-ff4d9571b612@arm.com>
Date: Tue, 28 Apr 2020 15:49:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200428142938.GX185537@smile.fi.intel.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_074955_414760_FBA10CF7 
X-CRM114-Status: GOOD (  20.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Mark Brown <broonie@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-28 3:29 pm, Andy Shevchenko wrote:
> On Tue, Apr 28, 2020 at 02:06:20PM +0100, Robin Murphy wrote:
>> On 2020-04-28 1:45 pm, Andy Shevchenko wrote:
>>> On Thu, Apr 23, 2020 at 07:45:29PM +0200, Michael Walle wrote:
>>>> Commit cdfee5623290 ("driver core: initialize a default DMA mask for
>>>> platform device") initialize the DMA of a platform device. But if the
>>>> parent doesn't have a dma_mask set, for example if it's an I2C device,
>>>> the dma_mask of the child platform device will be set to zero again.
>>>> Which leads to many "DMA mask not set" warnings, if the MFD cell has the
>>>> of_compatible property set.
>>>
>>> I'm wondering why parent doesn't have it.
>>
>> Because the parent isn't on a DMA-capable bus, and thus really shouldn't
>> have a valid DMA configuration ever.
> 
> Then how come a child is DMA capable?

Because it's a platform device, and thanks to decades of legacy we have 
to assume that any platform devices *is* DMA capable.

> MFD takes a physical device node as a
> parent and creates one of several children with that device as a parent. DMA
> mask is a property of the device which *does DMA*. Obviously a child is not
> correct device for that.
> 
> Where am I mistaken?

In theory you're not, however in practice the driver model doesn't 
really give us a nice way to express the necessary subtle distinctions 
between this and other similar-looking but fundamentally different 
parent-child relationships - if it did, we probably wouldn't need the 
whole MFD layer in the first place. The logical ideal would be to create 
the children on the same bus as the parent, but as it is doing that 
would likely lead to the I2C/SPI/whatever bus code assuming they are 
first-class devices and open up a whole new world of problems.

For better or worse, the platform bus is the dumping ground for random 
crap, so we just have to deal with all the abstraction breakage that 
leaks out of that.

Robin.

>>> I remember we have explicit patches in the past for buses such as PCI and AMBA
>>> to set default DMA mask for all physical devices on the respective bus, of
>>> course they can individually override it later.
>>>
>>> So, this seems to me a paper over the real issue (absence of default DMA mask
>>> where it's needed) and devices should explicitly define it if they disagree
>>> with default.
>>>
>>> If I'm wrong, you really need elaborate commit message much better.
>>
>> The problem here is that MFD children are created as platform devices
>> (regardless of what their parent is) and assigned an of_node, at which point
>> they look pretty much indistinguishable from SoC devices created by the
>> of_platform code, that *do* have to be assumed to be DMA-capable to prevent
>> ~90% of existing devicetrees from breaking.
>>
>> Of course the real fundamental issue is the platform bus itself, but it's
>> way too late to fix that :(
> 
> I don't think it's an issue, rather in model you are describing. Or I miss
> something not so obvious.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
