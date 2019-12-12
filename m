Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A1111D31C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 18:06:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dc7p6gRIGQIqdORKhKeOlXvzSGAT5ycwo573AlUYEwk=; b=rObJRA+lsfgGwZ
	pdczSU1q7r/ZCOaXj1U0tuefeoCVflpCd1Sn/6M252bkyiUHjxCRB0Px3TN0wqVnRFDqk2e83uwQH
	ZMMBnPPJKvyrBG2chlL99+5Z1JvfifhV4j1SXIoGMBEy3KAH1bhOsWCOyomfmTNV/BvL1FYrkB6O/
	HvKSg0daBDb8el0rMboRmXH06KKicduBufFPQ6x4w6i3+RTacjrdiQjvHMtI3VbDNlielseqB12CS
	odxku+dYch4TclbQ+yAokW+20w/ZaJhdi5HBKdvTgtCYvmvu/9oBwWR8vaIFgrjyd/O6xYx+Wzg4T
	BOvUZpz4ZzTCrCu5Ym3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifRuh-0003hR-9M; Thu, 12 Dec 2019 17:06:07 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifRuX-0003gg-3E
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 17:05:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4X5EU0pfF6Z3fhCjCKm1r7MRDtxFUKoUAl8Auif1vpI=; b=cPbPmc0rPHNht2FyrAGsaL4sZ
 6UXaRrzmPZh0viTAYeczfFgxsMwVY1SpImOKLyMrRC6lT6GZ7zjWt6KLglfTVuqTAC/mlfRCooU+F
 QvWlKLsWtfZPg2HtBxWGj9gySogBEKbimrt9u2mT8q2NBhtsXwna2XOz4vPTn07i3amCDQsnmD2Ze
 3KhwunOnHYHY+gkzl7QGXDym8pFeawWZIHfGGG+YV55tsQw77jlhckNXA27+K8tpZGxTZg7IPTOJN
 zWDEIDu6mp7o8G9ZuvpXFYxL5jTUMyFfhQPYwQ4xGSjYxSj8m4TXSUnoMNyTipXBhlHj3GIMqGAGY
 jKTIzVZ4A==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:47912)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ifRuF-00080S-OB; Thu, 12 Dec 2019 17:05:39 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ifRuD-0006y7-98; Thu, 12 Dec 2019 17:05:37 +0000
Date: Thu, 12 Dec 2019 17:05:37 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v1] clk: Convert managed get functions to devm_add_action
 API
Message-ID: <20191212170537.GL25745@shell.armlinux.org.uk>
References: <3d8a58bf-0814-1ec1-038a-10a20b9646ad@free.fr>
 <20191128185630.GK82109@yoga> <20191202014237.GR248138@dtor-ws>
 <f177ef95-ef7e-cab0-1322-6de28f18ecdb@free.fr>
 <c0ccca86-b7b1-b587-60c1-4794376fa789@arm.com>
 <ba630966-5479-c831-d0e2-bc2eb12bc317@free.fr>
 <20191211222829.GV50317@dtor-ws>
 <70528f77-ca10-01cd-153b-23486ce87d45@free.fr>
 <cf5b3dee-061e-a476-7219-aa08c2977488@arm.com>
 <6a647c20-c2fa-f14c-256d-6516d0ad03b0@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6a647c20-c2fa-f14c-256d-6516d0ad03b0@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_090557_865067_54232378 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: x86 <x86@kernel.org>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 05:59:04PM +0100, Marc Gonzalez wrote:
> On 12/12/2019 15:47, Robin Murphy wrote:
> 
> > On 12/12/2019 1:53 pm, Marc Gonzalez wrote:
> >
> >> On 11/12/2019 23:28, Dmitry Torokhov wrote:
> >>
> >>> On Wed, Dec 11, 2019 at 05:17:28PM +0100, Marc Gonzalez wrote:
> >>>
> >>>> What is the rationale for the devm_add_action API?
> >>>
> >>> For one-off and maybe complex unwind actions in drivers that wish to use
> >>> devm API (as mixing devm and manual release is verboten). Also is often
> >>> used when some core subsystem does not provide enough devm APIs.
> >>
> >> Thanks for the insight, Dmitry. Thanks to Robin too.
> >>
> >> This is what I understand so far:
> >>
> >> devm_add_action() is nice because it hides/factorizes the complexity
> >> of the devres API, but it incurs a small storage overhead of one
> >> pointer per call, which makes it unfit for frequently used actions,
> >> such as clk_get.
> >>
> >> Is that correct?
> >>
> >> My question is: why not design the API without the small overhead?
> > 
> > Probably because on most architectures, ARCH_KMALLOC_MINALIGN is at 
> > least as big as two pointers anyway, so this "overhead" should mostly be 
> > free in practice. Plus the devres API is almost entirely about being 
> > able to write simple robust code, rather than absolute efficiency - I 
> > mean, struct devres itself is already 5 pointers large at the absolute 
> > minimum ;)
> 
> (3 pointers: 1 list_head + 1 function pointer)
> 
> I'm confused. The first patch was criticized for potentially adding
> an extra pointer for every devm_clk_get (e.g. 800 bytes on a 64-bit
> platform with 100 clocks).
> 
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

As I understand it, x86 tends to be fully coherent, so has no there
is not much requirement for DMA to be aligned to cachelines.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
