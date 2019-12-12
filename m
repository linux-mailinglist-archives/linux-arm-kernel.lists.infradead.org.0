Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5DA11D2F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 17:59:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oblh6EZkFab2AYuMZwHeWiDLlNb36RDRKjisbxwWEo4=; b=D88lA2uLCqWO9p
	OEcH6IOfXd+RjMq2I80F6sUQozoe3oCH4+ZAQFiTGCDftlsyzFJmJ2GOcgmFYGLjUsSTZLKEvOEH9
	fj98rrQGiK63Wx9fcUuUadQSNP7JXqO4bUA1UYTocA0uXls75VPrir04/aF4yw/k1ie6ylN3zdw3/
	oxljl5pFmMMDQ8Gb3BcOCoDD8ce8pIxYalYSHytP+7w0Y9flmzUnPt57zI7Rru5kSYG4ozvL9mPGF
	ptFZMKeGJq7ay0buE8q/GBpyuWEtAZD2AXHRd5+8gAqZR98BzzxT1NEPTSpFfpoWc+7eUVr6bqT9/
	5QOxaHDyGZddARX4nucw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifRo9-0007WV-BR; Thu, 12 Dec 2019 16:59:21 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifRny-0007Sp-5k
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 16:59:12 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 60C5E202D4;
 Thu, 12 Dec 2019 17:59:04 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 4785D200E6;
 Thu, 12 Dec 2019 17:59:04 +0100 (CET)
Subject: Re: [PATCH v1] clk: Convert managed get functions to devm_add_action
 API
To: Robin Murphy <robin.murphy@arm.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
References: <3d8a58bf-0814-1ec1-038a-10a20b9646ad@free.fr>
 <20191128185630.GK82109@yoga> <20191202014237.GR248138@dtor-ws>
 <f177ef95-ef7e-cab0-1322-6de28f18ecdb@free.fr>
 <c0ccca86-b7b1-b587-60c1-4794376fa789@arm.com>
 <ba630966-5479-c831-d0e2-bc2eb12bc317@free.fr>
 <20191211222829.GV50317@dtor-ws>
 <70528f77-ca10-01cd-153b-23486ce87d45@free.fr>
 <cf5b3dee-061e-a476-7219-aa08c2977488@arm.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <6a647c20-c2fa-f14c-256d-6516d0ad03b0@free.fr>
Date: Thu, 12 Dec 2019 17:59:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <cf5b3dee-061e-a476-7219-aa08c2977488@arm.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Dec 12 17:59:04 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_085910_516151_9C765575 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/12/2019 15:47, Robin Murphy wrote:

> On 12/12/2019 1:53 pm, Marc Gonzalez wrote:
>
>> On 11/12/2019 23:28, Dmitry Torokhov wrote:
>>
>>> On Wed, Dec 11, 2019 at 05:17:28PM +0100, Marc Gonzalez wrote:
>>>
>>>> What is the rationale for the devm_add_action API?
>>>
>>> For one-off and maybe complex unwind actions in drivers that wish to use
>>> devm API (as mixing devm and manual release is verboten). Also is often
>>> used when some core subsystem does not provide enough devm APIs.
>>
>> Thanks for the insight, Dmitry. Thanks to Robin too.
>>
>> This is what I understand so far:
>>
>> devm_add_action() is nice because it hides/factorizes the complexity
>> of the devres API, but it incurs a small storage overhead of one
>> pointer per call, which makes it unfit for frequently used actions,
>> such as clk_get.
>>
>> Is that correct?
>>
>> My question is: why not design the API without the small overhead?
> 
> Probably because on most architectures, ARCH_KMALLOC_MINALIGN is at 
> least as big as two pointers anyway, so this "overhead" should mostly be 
> free in practice. Plus the devres API is almost entirely about being 
> able to write simple robust code, rather than absolute efficiency - I 
> mean, struct devres itself is already 5 pointers large at the absolute 
> minimum ;)

(3 pointers: 1 list_head + 1 function pointer)

I'm confused. The first patch was criticized for potentially adding
an extra pointer for every devm_clk_get (e.g. 800 bytes on a 64-bit
platform with 100 clocks).

Let's see. On arm64, ARCH_KMALLOC_MINALIGN is 128.

So basically, a struct devres looks like this on arm64:

	list_head.next
	list_head.prev
	dr_release_t
		.
		.
		.
	104 bytes of padding
		.
		.
		.
	data (flexible array)
		.
		.
		.
	padding up to 256 bytes


Basically, on arm64, every struct devres occupies 256 bytes, most of it
(typically 104 + 112 = 216) wasted as padding.

Hmmm, given how many devm stuff goes on in a modern platform, there
might be large savings to be had...

Assuming 10,000 calls to devres_alloc_node(), we would be wasting ~2 MB
of RAM. Not sure it's worth trying to save that?

$ git grep '#define ARCH_DMA_MINALIGN'
arch/arc/include/asm/cache.h:#define ARCH_DMA_MINALIGN  SMP_CACHE_BYTES
arch/arm/include/asm/cache.h:#define ARCH_DMA_MINALIGN  L1_CACHE_BYTES
arch/arm64/include/asm/cache.h:#define ARCH_DMA_MINALIGN        (128)
arch/c6x/include/asm/cache.h:#define ARCH_DMA_MINALIGN  L1_CACHE_BYTES
arch/csky/include/asm/cache.h:#define ARCH_DMA_MINALIGN L1_CACHE_BYTES
arch/hexagon/include/asm/cache.h:#define ARCH_DMA_MINALIGN      L1_CACHE_BYTES
arch/m68k/include/asm/cache.h:#define ARCH_DMA_MINALIGN L1_CACHE_BYTES
arch/microblaze/include/asm/page.h:#define ARCH_DMA_MINALIGN    L1_CACHE_BYTES
arch/mips/include/asm/mach-generic/kmalloc.h:#define ARCH_DMA_MINALIGN  128
arch/mips/include/asm/mach-ip32/kmalloc.h:#define ARCH_DMA_MINALIGN     32
arch/mips/include/asm/mach-ip32/kmalloc.h:#define ARCH_DMA_MINALIGN     128
arch/mips/include/asm/mach-tx49xx/kmalloc.h:#define ARCH_DMA_MINALIGN L1_CACHE_BYTES
arch/nds32/include/asm/cache.h:#define ARCH_DMA_MINALIGN   L1_CACHE_BYTES
arch/nios2/include/asm/cache.h:#define ARCH_DMA_MINALIGN        L1_CACHE_BYTES
arch/parisc/include/asm/cache.h:#define ARCH_DMA_MINALIGN       L1_CACHE_BYTES
arch/powerpc/include/asm/page_32.h:#define ARCH_DMA_MINALIGN    L1_CACHE_BYTES
arch/sh/include/asm/page.h:#define ARCH_DMA_MINALIGN    L1_CACHE_BYTES
arch/unicore32/include/asm/cache.h:#define ARCH_DMA_MINALIGN    L1_CACHE_BYTES
arch/xtensa/include/asm/cache.h:#define ARCH_DMA_MINALIGN       L1_CACHE_BYTES

Hmmm, how does arch/x86 do it?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
