Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F0895CC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hH4rUyGZp1rxjTY0fuwaHLs+OlB35g3ApcVW0QdYhdE=; b=KEuG9GYI6AYFTA
	1L3YMxqQR2I/hIMW/+qp42Vh4VGlRnv/n8tuveL7Op4Kk1iKZiACBaX1hSKxdfM39hBY3Uwz8C80C
	fr7CjIwIz27IBITiGOGFoB6DGDeCwpRTd3+UaaS1n5D2DZzZZWs36PuFo6pliVVCVMROR+ylyDpbp
	wO8f4uLczcKt2llNRxeoFriKdZzJAcr5/KXcI+gfUzvOA6x4Y9+UrkEqcsbLJ5GwX/YVolohfPziB
	WX5wxlCauBDAX7PNSuzKNCk/ixm0zVE9FXhyJLZTPX+IdmAOsaQqcbw5w+nXS0HAT7rGY7OlEmJO1
	U6xmDnoC2jqQPn3o5nBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i01tG-00067o-OP; Tue, 20 Aug 2019 11:01:26 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i01st-00066y-Of
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:01:05 +0000
Received: by mail-wr1-x443.google.com with SMTP id p17so11899393wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 04:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c2BZOupmPdmcZlLBqrfSN7ZTEPpOmtLck5V3tPbIa6o=;
 b=pTSFJ+DJjQeD4zLrIjwB1OWBwTiVCGijk0DCA1ksahHdaEFVP4Q/bVQbUkwetcH4Nh
 QfOmdXPmamPnY3J3/ATMwJxsggn5gl6804SXb4E4z6Hwgi32zN4de8ihO39HLnDb+hNI
 Ujp9Em/SJiUh8vyQSfyR/AJ+qk4iGJCL7OvGoYBBSTYDnnlhXTZjCPRzI+bkC9bhRT9Q
 wZH8+wx0t3QJDEdXbu5IWAQzw92Qx/rm90evuQBJZCpZn7w6ZYg4bjmrF/TpU+w5v4r5
 2iuft/USAu4gdMwu2bau4VT8FEnx57QtgP4nwB4PcuT6vNq2VIyBMp0c++4KUv+ez7Ff
 qCCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c2BZOupmPdmcZlLBqrfSN7ZTEPpOmtLck5V3tPbIa6o=;
 b=CMAoAxJ8il0GTfmR2hS2Yk17/1tGIqzjo3Sj2BZbUFWz6fOnB9+CPsmZNnDowBf2RP
 kEi2JI2ZrUVb6KqX0dLRuRTskc5/mEsZP8zB2TIyMqeUbf11uDz7VwDtuiBpj8qpvzP2
 a+Z4G7oIi238SIl+DhUjAqROOIdUx7f5LrJSzkvqzjux7Zw1HEBwvAUxce2KniG7KDs3
 LMNApIYPZNjdcDZAgO3mbMImNbg5qudFbSnOCVuzI/IGhSZtlCK5ZDGC7JJXkvugy6BV
 AaLj1gkQRKw51Xsew22GpldBl8v8j4DpGNjILYQcedr6hx21FC7YBKim1cSITxDFqk/n
 RZaw==
X-Gm-Message-State: APjAAAUUNciItJemT/87zuf3pas4q5zHB4l1CUuwy/ykKy1FKNHIPDOW
 UYLqYz4kRMx2UTjAJ1E8QHhdStc4lMHdZeUddlh9mwI2TKUm6A==
X-Google-Smtp-Source: APXvYqwt9ZV9vkz6hXjAD5rF7AjJKG4HLehWmajb29bLvB28LANo5IZyKyXqS0kzFVIUXN6L5wdr++ClWniRrqVQ0cs=
X-Received: by 2002:a5d:5450:: with SMTP id w16mr20113864wrv.174.1566298859893; 
 Tue, 20 Aug 2019 04:00:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190802053744.5519-1-clin@suse.com>
 <CAKv+Gu-yaNYsLQOOcr8srW91-nt-w0e+RBqxXGOagiGGT69n1Q@mail.gmail.com>
 <CAKv+Gu8uwbY-JtjNbgoyY230X_M6xLchVM3OUg_oNWOJrF=iCg@mail.gmail.com>
 <20190815111543.GA4728@linux-8mug>
 <CAKv+Gu-5M-4=SbOzbqbLUYnfFw29vhfcrVD=N9j_APYpKjq2wQ@mail.gmail.com>
 <20190815133738.GA2483@rapoport-lnx> <20190819075621.GA20595@linux-8mug>
 <CAKv+Gu-sdhNbhfD24Fn93mj-h6=vGi82Ghjy7AzaRSqcpXCx-g@mail.gmail.com>
 <20190820074930.GC5989@rapoport-lnx>
In-Reply-To: <20190820074930.GC5989@rapoport-lnx>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 20 Aug 2019 14:00:48 +0300
Message-ID: <CAKv+Gu-W=RzPFJ8m80UcjHKwbCV8tXhZScpDigym3fp9rGcGHg@mail.gmail.com>
Subject: Re: [PATCH] efi/arm: fix allocation failure when reserving the kernel
 base
To: Mike Rapoport <rppt@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_040103_816420_BCDDF0D1 
X-CRM114-Status: GOOD (  28.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Juergen Gross <JGross@suse.com>, Joey Lee <JLee@suse.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "guillaume.gardet@arm.com" <guillaume.gardet@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chester Lin <clin@suse.com>, "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>, Gary Lin <GLin@suse.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 20 Aug 2019 at 10:49, Mike Rapoport <rppt@linux.ibm.com> wrote:
>
> On Mon, Aug 19, 2019 at 05:56:51PM +0300, Ard Biesheuvel wrote:
> > On Mon, 19 Aug 2019 at 11:01, Chester Lin <clin@suse.com> wrote:
> > >
> > > Hi Mike and Ard,
> > >
> > > On Thu, Aug 15, 2019 at 04:37:39PM +0300, Mike Rapoport wrote:
> > > > On Thu, Aug 15, 2019 at 02:32:50PM +0300, Ard Biesheuvel wrote:
> > > > > (adding Mike)
> > > > >
>
> ...
>
> > > > > > In this case the kernel failed to reserve cma, which should hit the issue of
> > > > > > memblock_limit=0x1000 as I had mentioned in my patch description. The first
> > > > > > block [0-0xfff] was scanned in adjust_lowmem_bounds(), but it did not align
> > > > > > with PMD_SIZE so the cma reservation failed because the memblock.current_limit
> > > > > > was extremely low. That's why I expand the first reservation from 1 PAGESIZE to
> > > > > > 1 PMD_SIZE in my patch in order to avoid this issue. Please kindly let me know
> > > > > > if any suggestion, thank you.
> > > >
> > > >
> > > > > This looks like it is a separate issue. The memblock/cma code should
> > > > > not choke on a reserved page of memory at 0x0.
> > > > >
> > > > > Perhaps Russell or Mike (cc'ed) have an idea how to address this?
> > > >
> > > > Presuming that the last memblock dump comes from the end of
> > > > arm_memblock_init() with the this memory map
> > > >
> > > > memory[0x0] [0x0000000000000000-0x0000000000000fff], 0x0000000000001000 bytes flags: 0x4
> > > > memory[0x1] [0x0000000000001000-0x0000000007ef5fff], 0x0000000007ef5000 bytes flags: 0x0
> > > > memory[0x2] [0x0000000007ef6000-0x0000000007f09fff], 0x0000000000014000 bytes flags: 0x4
> > > > memory[0x3] [0x0000000007f0a000-0x000000003cb3efff], 0x0000000034c35000 bytes flags: 0x0
> > > >
> > > > adjust_lowmem_bounds() will set the memblock_limit (and respectively global
> > > > memblock.current_limit) to 0x1000 and any further memblock_alloc*() will
> > > > happily fail.
> > > >
> > > > I believe that the assumption for memblock_limit calculations was that the
> > > > first bank has several megs at least.
> > > >
> > > > I wonder if this hack would help:
> > > >
> > > > diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> > > > index d9a0038..948e5b9 100644
> > > > --- a/arch/arm/mm/mmu.c
> > > > +++ b/arch/arm/mm/mmu.c
> > > > @@ -1206,7 +1206,7 @@ void __init adjust_lowmem_bounds(void)
> > > >                        * allocated when mapping the start of bank 0, which
> > > >                        * occurs before any free memory is mapped.
> > > >                        */
> > > > -                     if (!memblock_limit) {
> > > > +                     if (memblock_limit < PMD_SIZE) {
> > > >                               if (!IS_ALIGNED(block_start, PMD_SIZE))
> > > >                                       memblock_limit = block_start;
> > > >                               else if (!IS_ALIGNED(block_end, PMD_SIZE))
> > > >
> > >
> > > I applied this patch as well and it works well on rpi-2 model B.
> > >
> >
> > Thanks, Chester, that is good to know.
> >
> > However, afaict, this only affects systems where physical memory
> > starts at address 0x0, so I think we need a better fix.
>
> This hack can be easily extended to handle systems with arbitrary start
> address, but it's still a hack...
>
> > I know Mike has been looking into the NOMAP stuff lately, and your
> > original patch contains a hunk that makes this code (?) disregard
> > nomap memblocks. That might be a better approach.
>
> I was actually looking how to replace NOMAP with something else to make
> memblock.memory consistent with actual physical memory banks. But this work
> is stashed for now.
>
> I'm not sure that skipping NOMAP regions would be good enough.
> If I understand corrrectly, with Chester's original patch the reservation
> of PMD aligned chunk of 32M for the kernel made the first conv-mem region
> PMD aligned and then memblock_limit will be set to the end of this region.
>
> Is there a reason for marking EFI_RESERVED_TYPE as NOMAP rather than simply
> reserve them with memblock_reserve()?
>

Yes.

On ARM systems, reserved memory regions should never be mapped by
default, since the cacheable mappings we use in the linear region may
conflict with the mapping attributes used by the firmware or driver
components that are using this memory.

In this particular case, we are talking about things like spin tables
and pens for secondaries that boot up with their caches disabled, and
having a cacheable mapping on the primary CPU might cause a loss of
coherency.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
