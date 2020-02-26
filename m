Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0F91709DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 21:36:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5r4GUqMx4GWbA7GJ93QyW+oAf9cKF0ykp5EfPT+B9Q=; b=BKfxrWVnGmXTiP
	cMLzI9YZCIqDsFuMUyxuwg912+1aSSGrDVrr14oY8VopMt6FuNaYXK8oofZJ1L3Wce4HExZ67ZqtY
	zoefqYAA5U0ynRWiZSBDVHzxj+jmHl1snelMUSrVBNQoiVnREa1Kcn11AT5+R9mYeYMY059wgi+RK
	UMzsI4wzetWszE2zc7pgEnUhcOiN8FBwmY/jluEoeTP6vd9iLDjksgpIUgxf86+XXHRgw6cbecC39
	rpVNsO1pZJfVmY0u3UvZjZLoJ2ABTjg7qHIrRulZaZ5NgMC8FvRM4cpC822NRbvSns6EWT54NH1IQ
	iYKkcf60Dd61IOgAzgIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j73QL-00062z-NO; Wed, 26 Feb 2020 20:36:53 +0000
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j73QB-00062V-Dw; Wed, 26 Feb 2020 20:36:43 +0000
Subject: Re: [PATCH v9 3/4] soc: mediatek: Move mt8173 MMSYS to platform driver
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>, robh+dt@kernel.org,
 mark.rutland@arm.com, ck.hu@mediatek.com, p.zabel@pengutronix.de,
 airlied@linux.ie, mturquette@baylibre.com, sboyd@kernel.org,
 ulrich.hecht+renesas@gmail.com, laurent.pinchart@ideasonboard.com
References: <20200226105419.632771-1-enric.balletbo@collabora.com>
 <20200226105419.632771-4-enric.balletbo@collabora.com>
 <54b3cfed-92f3-54c8-05a1-90ef4c057e4c@infradead.org>
 <da1b0908ddac65d370609f35c78d4a618ac70268.camel@collabora.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <470ab4e2-ab10-19bd-aea4-9b081c9978a8@infradead.org>
Date: Wed, 26 Feb 2020 12:36:41 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <da1b0908ddac65d370609f35c78d4a618ac70268.camel@collabora.com>
Content-Language: en-US
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, Seiya Wang <seiya.wang@mediatek.com>,
 sean.wang@mediatek.com, Houlong Wei <houlong.wei@mediatek.com>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/26/20 12:29 PM, Ezequiel Garcia wrote:
> On Wed, 2020-02-26 at 07:40 -0800, Randy Dunlap wrote:
>> On 2/26/20 2:54 AM, Enric Balletbo i Serra wrote:
>>> diff --git a/drivers/soc/mediatek/Kconfig b/drivers/soc/mediatek/Kconfig
>>> index 2114b563478c..dcd6481a14d0 100644
>>> --- a/drivers/soc/mediatek/Kconfig
>>> +++ b/drivers/soc/mediatek/Kconfig
>>> @@ -44,4 +44,11 @@ config MTK_SCPSYS
>>>  	  Say yes here to add support for the MediaTek SCPSYS power domain
>>>  	  driver.
>>>  
>>> +config MT8173_MMSYS
>>> +	bool "MediaTek MT8173 MMSYS Support"
>>
>> Hi,
>> Can this be tristate instead of bool?
>>
> 
> Wouldn't that conflict with
> the driver being a builtin_platform_driver,
> or am I just confusing things badly?

OK, it probably would conflict.

Thanks.

>> +	depends on COMMON_CLK_MT8173
>>> +	help
>>> +	  Say yes here to add support for the MediaTek MT8173 Multimedia
>>> +	  Subsystem (MMSYS).
>>> +
>>>  endmenu


-- 
~Randy


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
