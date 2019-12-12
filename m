Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A4711D50E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 19:15:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KPv7p8GWs87XVQQAIN887Agkn+0yNlXQqPxTDIyFbK4=; b=Kaap1890cQJ75Uk3YInU9MRmQ
	1Yan5/wAHL0YzlgYVhmDXjUadG/BpZsHL7tPgsB93HpKIiXoF+2QbBx2Z8sfcXlP6090ttiQtVKNQ
	PiKkuCn+HlY07esPAd+OuaQOQ9t4U1g7EBcrKeTSUB0ZLeQs+wKCNetHKtwKqKsJPG4r1TB/n/fDc
	dfn1DyMqBcDiYrfoXLZF1Tcy7FchGR3Z57LBVZrLwtY2Qgybl3fiHjnDj4ePsm4TUITh/Xs8kvJ95
	yOLVCzed2B/JMLnfSOINEHXUwtsoBXSEZntrnHRAV/WwnKH9CT32rFtqQDu9IZQ7fqEefzXeZ6Q+Q
	ia8ZvAw3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifSzr-0007eF-7k; Thu, 12 Dec 2019 18:15:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifSzi-0007dQ-HK
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 18:15:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A1C7328;
 Thu, 12 Dec 2019 10:15:19 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E85583F6CF;
 Thu, 12 Dec 2019 10:15:17 -0800 (PST)
Subject: Re: [PATCH v1] clk: Convert managed get functions to devm_add_action
 API
To: Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
References: <3d8a58bf-0814-1ec1-038a-10a20b9646ad@free.fr>
 <20191128185630.GK82109@yoga> <20191202014237.GR248138@dtor-ws>
 <f177ef95-ef7e-cab0-1322-6de28f18ecdb@free.fr>
 <c0ccca86-b7b1-b587-60c1-4794376fa789@arm.com>
 <ba630966-5479-c831-d0e2-bc2eb12bc317@free.fr>
 <20191211222829.GV50317@dtor-ws>
 <70528f77-ca10-01cd-153b-23486ce87d45@free.fr>
 <cf5b3dee-061e-a476-7219-aa08c2977488@arm.com>
 <6a647c20-c2fa-f14c-256d-6516d0ad03b0@free.fr>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6ce49a67-8065-277b-5f80-ed47011e50d6@arm.com>
Date: Thu, 12 Dec 2019 18:15:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <6a647c20-c2fa-f14c-256d-6516d0ad03b0@free.fr>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_101522_663758_EB3C6241 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 x86 <x86@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/12/2019 4:59 pm, Marc Gonzalez wrote:
> On 12/12/2019 15:47, Robin Murphy wrote:
> 
>> On 12/12/2019 1:53 pm, Marc Gonzalez wrote:
>>
>>> On 11/12/2019 23:28, Dmitry Torokhov wrote:
>>>
>>>> On Wed, Dec 11, 2019 at 05:17:28PM +0100, Marc Gonzalez wrote:
>>>>
>>>>> What is the rationale for the devm_add_action API?
>>>>
>>>> For one-off and maybe complex unwind actions in drivers that wish to use
>>>> devm API (as mixing devm and manual release is verboten). Also is often
>>>> used when some core subsystem does not provide enough devm APIs.
>>>
>>> Thanks for the insight, Dmitry. Thanks to Robin too.
>>>
>>> This is what I understand so far:
>>>
>>> devm_add_action() is nice because it hides/factorizes the complexity
>>> of the devres API, but it incurs a small storage overhead of one
>>> pointer per call, which makes it unfit for frequently used actions,
>>> such as clk_get.
>>>
>>> Is that correct?
>>>
>>> My question is: why not design the API without the small overhead?
>>
>> Probably because on most architectures, ARCH_KMALLOC_MINALIGN is at
>> least as big as two pointers anyway, so this "overhead" should mostly be
>> free in practice. Plus the devres API is almost entirely about being
>> able to write simple robust code, rather than absolute efficiency - I
>> mean, struct devres itself is already 5 pointers large at the absolute
>> minimum ;)
> 
> (3 pointers: 1 list_head + 1 function pointer)

Ah yes, I failed to mentally preprocess the debug config :)

> I'm confused. The first patch was criticized for potentially adding
> an extra pointer for every devm_clk_get (e.g. 800 bytes on a 64-bit
> platform with 100 clocks).

I'm not sure it was a criticism so much as an observation of an aspect 
that deserved consideration (certainly it was on my part, and I read 
Dmitry's "It might still, ..." as implying the same). I'd say by this 
point it has been thoroughly considered, and personally I'm now happy 
with the conclusion that the kind of embedded platforms that will have 
many dozens of clocks are also the kind that will tend to have enough 
padding to make it moot, and thus the code simplification probably is 
worthwhile overall.

Robin.

> Let's see. On arm64, ARCH_KMALLOC_MINALIGN is 128.
> 
> So basically, a struct devres looks like this on arm64:
> 
> 	list_head.next
> 	list_head.prev
> 	dr_release_t
> 		.
> 		.
> 		.
> 	104 bytes of padding
> 		.
> 		.
> 		.
> 	data (flexible array)
> 		.
> 		.
> 		.
> 	padding up to 256 bytes
> 
> 
> Basically, on arm64, every struct devres occupies 256 bytes, most of it
> (typically 104 + 112 = 216) wasted as padding.
> 
> Hmmm, given how many devm stuff goes on in a modern platform, there
> might be large savings to be had...
> 
> Assuming 10,000 calls to devres_alloc_node(), we would be wasting ~2 MB
> of RAM. Not sure it's worth trying to save that?
> 
> $ git grep '#define ARCH_DMA_MINALIGN'
> arch/arc/include/asm/cache.h:#define ARCH_DMA_MINALIGN  SMP_CACHE_BYTES
> arch/arm/include/asm/cache.h:#define ARCH_DMA_MINALIGN  L1_CACHE_BYTES
> arch/arm64/include/asm/cache.h:#define ARCH_DMA_MINALIGN        (128)
> arch/c6x/include/asm/cache.h:#define ARCH_DMA_MINALIGN  L1_CACHE_BYTES
> arch/csky/include/asm/cache.h:#define ARCH_DMA_MINALIGN L1_CACHE_BYTES
> arch/hexagon/include/asm/cache.h:#define ARCH_DMA_MINALIGN      L1_CACHE_BYTES
> arch/m68k/include/asm/cache.h:#define ARCH_DMA_MINALIGN L1_CACHE_BYTES
> arch/microblaze/include/asm/page.h:#define ARCH_DMA_MINALIGN    L1_CACHE_BYTES
> arch/mips/include/asm/mach-generic/kmalloc.h:#define ARCH_DMA_MINALIGN  128
> arch/mips/include/asm/mach-ip32/kmalloc.h:#define ARCH_DMA_MINALIGN     32
> arch/mips/include/asm/mach-ip32/kmalloc.h:#define ARCH_DMA_MINALIGN     128
> arch/mips/include/asm/mach-tx49xx/kmalloc.h:#define ARCH_DMA_MINALIGN L1_CACHE_BYTES
> arch/nds32/include/asm/cache.h:#define ARCH_DMA_MINALIGN   L1_CACHE_BYTES
> arch/nios2/include/asm/cache.h:#define ARCH_DMA_MINALIGN        L1_CACHE_BYTES
> arch/parisc/include/asm/cache.h:#define ARCH_DMA_MINALIGN       L1_CACHE_BYTES
> arch/powerpc/include/asm/page_32.h:#define ARCH_DMA_MINALIGN    L1_CACHE_BYTES
> arch/sh/include/asm/page.h:#define ARCH_DMA_MINALIGN    L1_CACHE_BYTES
> arch/unicore32/include/asm/cache.h:#define ARCH_DMA_MINALIGN    L1_CACHE_BYTES
> arch/xtensa/include/asm/cache.h:#define ARCH_DMA_MINALIGN       L1_CACHE_BYTES
> 
> Hmmm, how does arch/x86 do it?
> 
> Regards.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
