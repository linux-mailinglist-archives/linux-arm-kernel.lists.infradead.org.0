Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9FD1BB973
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 11:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRrmQIokemQBGx1hObyKY2pynfFPaP5wQYOvRaTknBU=; b=kGCgKDpcBM/V2h
	0UWRl6Bqyd2utL1oxakyBcUaGrYh0zjLJljbvIgew3/9xvIoFVU+j7CxWHWTJ/3J8jJwncvwSXdz1
	P6BHsWE1bqkrOAo9dHmxC9z+gGAUBO4+xHrMhwGu9lzbAk4+noeoQDzhdi/sTvZGyckPo1bvxHiIP
	PmTXh9pXaswp4q7TEgMTj78SdVSijzpkMV01qapupKe1QbkSMwp0IXNy+A6D1JurnlBYIdVApzunG
	j1bHdLhmtDE3omS2IUpokq1tI/kv9Mbv4iYE5ZAkPBdHpQZ4KcWZaR3/bWzz/GznmHC0sOa1WkXVa
	+VFwp7eeRqVl0D5g+CkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMBN-0003eX-Ia; Tue, 28 Apr 2020 09:05:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMBF-0003d2-Uk
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 09:05:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2F4BF30E;
 Tue, 28 Apr 2020 02:05:27 -0700 (PDT)
Received: from [10.57.41.45] (unknown [10.57.41.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6399E3F305;
 Tue, 28 Apr 2020 02:05:25 -0700 (PDT)
Subject: Re: [PATCH 2/2] arm: dts: stm32f769-disco: Enable MIPI DSI display
 support
To: Adrian Pop <pop.adrian61@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Lee Jones <lee.jones@linaro.org>
References: <20200424182139.32190-1-pop.adrian61@gmail.com>
 <3efb57a1-283b-f2f0-66a4-97e88c6c02d6@st.com>
 <CAP-HsdS0rq4iCq1oqpTU=EXF8UWbfPivCJVZG-4b7jyvdHHXUw@mail.gmail.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <81d9b932-ef2d-6d5c-9a58-2edb88e7e593@arm.com>
Date: Tue, 28 Apr 2020 10:05:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAP-HsdS0rq4iCq1oqpTU=EXF8UWbfPivCJVZG-4b7jyvdHHXUw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_020530_074396_CFDB3DDC 
X-CRM114-Status: GOOD (  20.72  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

On 4/27/20 9:05 PM, Adrian Pop wrote:
> Added lee.jones@linaro.org.
> 
> First, thank you all for taking a look at my changes!
> 
> Hello Alex,
> 
> On Mon, Apr 27, 2020 at 11:28 AM Alexandre Torgue
> <alexandre.torgue@st.com> wrote:
>>
>> Hi Adrian
>>
>> On 4/24/20 8:21 PM, Adrian Pop wrote:
>>> STM32f769-disco features a 4" MIPI DSI display: add support for it.
>>>
>>> Signed-off-by: Adrian Pop <pop.adrian61@gmail.com>
>>> ---
>>
>> Commit title should be ARM: dts: stm32: ...
> 
> Will fix in next version if that's ok.
> 
>>
>> Can you explain a bit more in your commit message why do you use a
>> reserved memory pool for DMA and where this pool is located. (I assume
>> it's linked to a story of DMA and cache memory attribute on cortexM7...)
> 
> Need to look more into this, but if I remove it, /dev/fb0 is not
> available anymore and I get a warning stating:
> ...
> [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
> [drm] Initialized stm 1.0.0 20170330 for 40016800.display-controller on minor 0
> ------------[ cut here ]------------
> WARNING: CPU: 0 PID: 13 at arch/arm/mm/dma-mapping-nommu.c:50 0xc000b8ed
> CPU: 0 PID: 13 Comm: kworker/0:1 Not tainted 5.6.0-next-20200412 #23
> Hardware name: STM32 (Device Tree Support)
> Workqueue: events 0xc014fa35
> Function entered at [<c000b325>] from [<c000a487>]
> ...
> 
> When I looked in arch/arm/mm/dma-mapping-nommu.c:50, there is a comment stating:
> 
>     /*
>      * dma_alloc_from_global_coherent() may fail because:
>      *
>      * - no consistent DMA region has been defined, so we can't
>      *   continue.
>      * - there is no space left in consistent DMA region, so we
>      *   only can fallback to generic allocator if we are
>      *   advertised that consistency is not required.
>      */
> 
> This is the reason I added the reserved-memory.
> 
> About the location, does it need to be hardcoded? On my board
> (STM32F769I-Disco, tftp boot) in boot log I get:
> ...
> Reserved memory: created DMA memory pool at 0xc0ef1000, size 1 MiB
> OF: reserved mem: initialized node linux,dma, compatible id shared-dma-pool
> ...
> 

I'd recommend to place it at specific address, otherwise it will play badly with
CONFIG_MPU=y. MPU covers only single contiguous memblock (due to limitations
in number of available MPU regions), so placing DMA pool anywhere may result
in split of such contiguous memblock, as effect you may see that some memory
is not used. Usually, folks place DMA pool at the end of RAM.

>>
>> Did you try this configuration with XIP boot ?
> 
> I did not try with XIP. Currently loading zImage from tftp to memory.
> Will try with XIP as well, and get back with feedback.
> 

Bear in mind that with CONFIG_MPU=y XIP start address need to be aligned to 1M.

Cheers
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
