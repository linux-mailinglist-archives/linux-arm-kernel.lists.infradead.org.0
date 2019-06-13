Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D73A64371B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 16:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WyLsxeGzF6RHOAI4hW6RVEYt1fVWSFVsq2L4h0mtfG8=; b=E3DomZSp+D8NtZnr1Ys/3oH/1
	TBgM8ZbfNEUKuBMJfpPj868gNxaMdIDLq8e7FH8un7AoHfbcIC9QqFgYyjYrUaduTHmKC/fstDUZd
	Y5PpA6D4nsvR767hkMO6XMvE6D0w0zfTi208gALOCyiaudOU2OxRRz2XLyuXNLthYmkFrIY1cfcZz
	WnmdbV3+jh2gpc7rvpng2PDsyDtT5J8EFwqUDGKyg87YLqZjgTnB18Ar1LEq5GCd3mRPgX/k/XLYA
	OnZ1tqaCpYwbnzWHCbKkxEbLAyQOJgGXu4St1C75i/3g1Oy/B/EiYy2s1LjqrWEkUJMDIFNxr/AWH
	Hsi8/OLzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQQG-0003T4-ND; Thu, 13 Jun 2019 14:09:48 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQQ4-0003SQ-Ge
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 14:09:38 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C543B7C6445F292C5592;
 Thu, 13 Jun 2019 22:09:28 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 13 Jun 2019 22:09:17 +0800
Subject: Re: [PATCH v4 2/3] lib: logic_pio: Reject accesses to unregistered
 CPU MMIO regions
To: Bjorn Helgaas <helgaas@kernel.org>
References: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
 <1560262374-67875-3-git-send-email-john.garry@huawei.com>
 <20190613032034.GE13533@google.com>
 <2d5e6112-be27-33c2-c1fd-6ab06405fa40@huawei.com>
 <20190613134650.GF13533@google.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <d1ed7c02-9bad-c584-9b0e-1e3fc22ea46e@huawei.com>
Date: Thu, 13 Jun 2019 15:09:10 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190613134650.GF13533@google.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_070936_795830_01F734D1 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: rjw@rjwysocki.net, wangkefeng.wang@huawei.com, lorenzo.pieralisi@arm.com,
 arnd@arndb.de, linux-pci@vger.kernel.org, will.deacon@arm.com,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Bjorn,

>> There were many different names along the way to this support merged, and I
>> think that the naming became almost irrelevant in the end.
>
> Yep, Arnd is right.  The "PIO" name contributed a little to my
> confusion, but I think the bigger piece was that I read the "indirect
> PIO addresses" above as being parallel to the "CPU MMIO regions"
> below, when in fact, they are not.  The arguments to logic_inb() are
> always port addresses, never CPU MMIO addresses, but in some cases
> logic_inb() internally references a CPU MMIO region that corresponds
> to the port address.

Right

>
> Possible commit log text:
>
>   The logic_{in,out}*() functions access two regions of I/O port
>   addresses:
>
>     1) [0, MMIO_UPPER_LIMIT): these are assumed to be
>        LOGIC_PIO_CPU_MMIO regions, where a bridge converts CPU loads
>        and stores to MMIO space on its primary side into I/O port
>        transactions on its secondary side.
>
>     2) [MMIO_UPPER_LIMIT, IO_SPACE_LIMIT): these are assumed to be
>        LOGIC_PIO_INDIRECT regions, where we verify that the region was
>        registered by logic_pio_register_range() before calling the
>        logic_pio_host_ops functions to perform the access.
>
>   Previously there was no requirement that accesses to the
>   LOGIC_PIO_CPU_MMIO area matched anything registered by
>   logic_pio_register_range(), and accesses to unregistered I/O ports
>   could cause exceptions like the one below.
>
>   Verify that accesses to ports in the LOGIC_PIO_CPU_MMIO area
>   correspond to registered ranges.  Accesses to ports outside those
>   registered ranges fail (logic_in*() returns ~0 data and logic_out*()
>   does nothing).
>
>   This matches the x86 behavior where in*() returns ~0 if no device
>   responds, and out*() is dropped if no device claims it.

It reads quite well so I can incorporate it. I'd still like to mention 
about request_{muxed_}region(), and how this does not protect against 
accesses to unregistered regions.

>
>>>   1) The simple "bridge converts CPU MMIO space to PCI I/O port space"
>>>      flavor is essentially identical to what ia64 (and probably other
>>>      architectures) does.  This should really be combined somehow.
>>
>> Maybe. For ia64, it seems to have some "platform" versions of IO port
>> accessors, and then also accessors need a fence barrier. I'm not sure how
>> well that would fit with logical PIO. It would need further analysis.
>
> Right.  That shouldn't be part of this series, but I think it would be
> nice to someday unify the ia64 add_io_space() path with the
> pci_register_io_range() path.  There might have to be ia64-specific
> accessors at the bottom for the fences, but I think the top side could
> be unified because it's conceptually the same thing -- an MMIO region
> that is translated by a bridge to an I/O port region.

Yes, it would be good to move any arch-specific port IO function to this 
common framework. To mention it again, what's under 
CONFIG_PPC_INDIRECT_PIO seems an obvious candidate.

>
>>>   2) If you made a default set of logic_pio_host_ops that merely did
>>>      loads/stores and maybe added a couple fields in the struct
>>>      logic_pio_hwaddr, I bet you could unify the two kinds so
>>>      logic_inb() would look something like this:
>>
>> Yeah, I did consider this. We do not provide host operators for PCI MMIO
>> ranges. We could simply provide regular versions of inb et al for this. A
>> small obstacle for this is that we redefine inb et al, so would need
>> "direct" versions also. It would be strange.
>
> Yeah, just a thought, maybe it wouldn't work out.
>
>>>> Any failed checks silently return.
>>>
>>> I *think* what you're doing here is making inb/outb/etc work the same
>>> as on x86, i.e., if no device responds to an inb(), the caller gets
>>> ~0, and if no device claims an outb() the data gets dropped.
>>
>> Correct, but with a caveat: when you say no device responds, this means that
>> - for arm64 case - no PCI MMIO region is mapped.
>
> Yep.  I was describing the x86 behavior, where we don't do any mapping
> and all we can say is that no device responded.
>
> Bjorn
>

Thanks,
John

> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
