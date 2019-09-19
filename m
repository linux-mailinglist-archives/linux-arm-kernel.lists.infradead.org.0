Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4768CB7B74
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ReHSPnpYhO6sv+aqWWi2tCAv/2iYYS9lwUbGIE0Z6LI=; b=hTiOuHUQ9dtoXHhIEkNo9URp4
	1jupN2LfIJt7osdaKGHGud0AB6QT4WpLpxYNQG6ipOXKBjkn5q/rDbBWC/8b0siV8arqjvHT4MtBM
	oTB+yPqriAgUVfG8kAjzUPtorkEsTItuf+SwHdlOaj2nNACe5/NY8TeyKZxlic7+ZH0VZXoWE0SbZ
	XDPo/EeFBZbpbVz8jpNWUPs4oaB6SOhr1H1Gibukv30Do1VCQlkb0GsOORASM4kWw/iAIibTbVtTu
	fI+KlYdgr2cvEf/pzOTyWYowPXpvWtWN/uMT5ZRiw92/5EgQXIG5iSywhD4Uq+s7MrLqibFFU0Yn3
	1YHxVJ5lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAx1L-00058v-7q; Thu, 19 Sep 2019 14:02:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAx19-000587-GI
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:02:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 765EA337;
 Thu, 19 Sep 2019 07:02:42 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 55E443F59C;
 Thu, 19 Sep 2019 07:02:41 -0700 (PDT)
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "Y.b. Lu" <yangbo.lu@nxp.com>
References: <b19a0640-5d71-a005-eb0f-c6840f181e5d@free.fr>
 <20190917081931.GI25745@shell.armlinux.org.uk>
 <20190917104200.GJ25745@shell.armlinux.org.uk>
 <20190917111631.GL25745@shell.armlinux.org.uk>
 <20190917114210.GM25745@shell.armlinux.org.uk>
 <20190917123326.GN25745@shell.armlinux.org.uk>
 <20190917130759.GO25745@shell.armlinux.org.uk>
 <c12e21c3-6bef-38ed-3693-b958be17d555@arm.com>
 <20190917134947.GS25745@shell.armlinux.org.uk>
 <ab90e9a4-052d-5a7b-bfae-f2f02f17f1b7@arm.com>
 <20190919091601.GH25745@shell.armlinux.org.uk>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <20fe58a0-f0ed-733b-87fb-47d667094491@arm.com>
Date: Thu, 19 Sep 2019 15:02:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190919091601.GH25745@shell.armlinux.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_070243_632799_6655CFAD 
X-CRM114-Status: GOOD (  29.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: dann frazier <dann.frazier@canonical.com>, linux-mmc@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, Will Deacon <will.deacon@arm.com>,
 Nicolin Chen <nicoleotsuka@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/09/2019 10:16, Russell King - ARM Linux admin wrote:
> On Tue, Sep 17, 2019 at 03:03:29PM +0100, Robin Murphy wrote:
>> On 17/09/2019 14:49, Russell King - ARM Linux admin wrote:
>>> As already replied, v4 mode is not documented as being available on
>>> the LX2160A - the bit in the control register is marked as "reserved".
>>> This is as expected as it is documented that it is using a v3.00 of
>>> the SDHCI standard, rather than v4.00.
>>>
>>> So, sorry, enabling "v4 mode" isn't a workaround in this scenario.
>>>
>>> Given that v4 mode is not mandatory, this shouldn't be a work-around.
>>>
>>> Given that it _does_ work some of the time with the table >4GB, then
>>> this is not an addressing limitation.
>>
>> Yes, that's what "something totally different" usually means.
>>
>>>> However, the other difference between getting a single page directly from
>>>> the page allocator vs. the CMA area is that accesses to the linear mapping
>>>> of the CMA area are probably pretty rare, whereas for the single-page case
>>>> it's much more likely that kernel tasks using adjacent pages could lead to
>>>> prefetching of the descriptor page's cacheable alias. That could certainly
>>>> explain how reverting that commit manages to hide an apparent coherency
>>>> issue.
>>>
>>> Right, so how do we fix this?
>>
>> By describing the hardware correctly in the DT.
> 
> It would appear that it _is_ correctly described given the default
> hardware configuration, but the driver sets a bit in a control
> register that enables cache snooping.

Oh, fun. FWIW, the more general form of that statement would be "by 
ensuring that the device behaviour and the DT description are 
consistent", it's just rare to have both degrees of freedom.

Even in these cases, though, it tends to be ultimately necessary to 
defer to what the DT says, because there can be situations where the IP 
believes itself capable of enabling snoops, but the integration failed 
to wire things up correctly for them to actually work. I know we have to 
deal with that in arm-smmu, for one example.

> Adding "dma-coherent" to the DT description does not seem to be the
> correct solution, as we are reliant on the DT description and driver
> implementation both agreeing, which is fragile.
> 
>  From what I can see, there isn't a way for a driver to say "I've made
> this device is coherent now" and I suspect making the driver set the
> DMA snoop bit depending on whether "dma-coherent" is present in DT or
> not will cause data-corrupting regressions for other people.
> 
> So, we're back to where we started - what is the right solution to
> this problem?
> 
> The only thing I can think is that the driver needs to do something
> like:
> 
> 	WARN_ON(!dev_is_dma_coherent(dev));
> 
> in esdhc_of_enable_dma() as a first step, and ensuring that the snoop
> bit matches the state of dev_is_dma_coherent(dev)?  Is it permitted to
> use dev_is_dma_coherent() in drivers - it doesn't seem to be part of
> the normal DMA API?

The safest option would be to query the firmware property layer via 
device_get_dma_attr() - or potentially short-cut to of_dma_is_coherent() 
for a pure DT driver. Even disregarding API purity, I don't think the 
DMA API internals are really generic enough yet to reliably poke at 
(although FWIW, *certain* cases like dma_direct_ops would now actually 
work as expected if one did the unspeakable and flipped 
dev->dma_coherent from a driver, but that would definitely not win any 
friends).

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
