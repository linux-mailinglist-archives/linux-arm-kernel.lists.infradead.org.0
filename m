Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6303E97367
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 09:30:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewtnZ8e9MxCKnSK1tCLefS4lVn3MmRpV2ZeUHaQpTiA=; b=aVh43BvzlRAotK
	SsdXQ6HmBCtgIqDl308oX4iQMrphf0iBXvdpSo9TC/Q3kv7CplXWsDHbMqK5FYg2ZoTkBbeWRW7yC
	pS+0SYnn2kzopswSjsSjnSLCrpmB2w96ACdL4WT00N1mPI3SHayMTubx0JaHrT242Ne9qIxYUWvR+
	Qk8IfYZYoX3GxTgn2IyrUc/uZl7Z+bamWUAUyWLyW47TGUf2Px/9aZrdH8+QhUdf7A2uZycnYxjLX
	tGiArj5ZQT2J0FmXtAk0dJLnlhb2rjCs7Pjv/Hm7pPTU4/nakT0ABVAdpDpM1fytfQE/PSjBDSvL6
	qYgGaz/3euu/fNuG2Owg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0L4U-0004Wu-MP; Wed, 21 Aug 2019 07:30:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0L3z-0004Pl-H8
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 07:29:49 +0000
Received: by mail-wm1-x343.google.com with SMTP id e8so4114664wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 00:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nKOeCy3Qcia3Pbgp+4T8KWWXoItnNEc3EaF4utxPSx4=;
 b=kK904OuKS3Z8eMv0x8Na8g7IPPgNprXCORczmb6V/kXExPgWnxBAxCQbxF+TAphd8J
 nwjdYXpn0F7I+V4GIiKpnFEVTDThLbQ+OBnq3QrtTlGHq273IzR3HTTp2aO9cNm4qn4E
 Vx6HjcgcZj3/l9DKUp7U69jiCwDJQ5J8Cq2gY/u+HwExBsYQx9jmguM8rg+5fMMRa58C
 SGWtuI44qH0puyTaWmBrYyzulee73OvRhuNGjLxSZ/cxc1NO56LLMhvIPCdhr2Ba3aBT
 J8aytWr9dUsMKirAYbKOBij174iq/ssCpyrAybzZGPiB7Gps00VjkACWNSO2a6jE4iUe
 pfFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nKOeCy3Qcia3Pbgp+4T8KWWXoItnNEc3EaF4utxPSx4=;
 b=oktPY5sFPhe5+Vandh9r21j4XQEe6ZLBoalxGA00wR+FeX422UbuirhCVSm1KNMG11
 E9jf6x2Mbk7P1/5P4tNARC6TXjOMJLODzUkWawrcxx6wm4OLDmExat/yQX5YQbAUw7Ov
 3qBhMCxuQUHeIL+Idrr/Be00fiDagF0CncrReAFqmVsRaz4oRIkoK39S+TM0SWDgHkuF
 Nj06L0eSkxDr/NOv23UZSYpahFCVpz1nmUH2YaM6IJBmZH6oinkPUiTC3VI9ULTAEcvK
 fgKI7oUCL5jAXkaJ90zVtjS9qrzToqYQpOZNaJ8t1102+UY24gU1o8KZMogWYW8MAaDr
 lARw==
X-Gm-Message-State: APjAAAWkSF/PcoZfRgUq+sIdW9vYZeSOsWa5F3vMaG09UhADUX9b9+rX
 LuIzf7SlHTpA7A6Qv1ftCVzKwzkAhQX2ur4LnQq3qA==
X-Google-Smtp-Source: APXvYqwr0nEjmLtPxp9jPzcCElAX7fest218vtFNqRK9Hh8HPkq4tF2BdQkHv6NmMu6fNQdhJczPGiJW0nzPMwhbGtg=
X-Received: by 2002:a05:600c:231a:: with SMTP id
 26mr4057110wmo.136.1566372585757; 
 Wed, 21 Aug 2019 00:29:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190802053744.5519-1-clin@suse.com>
 <20190820115645.GP13294@shell.armlinux.org.uk>
 <CAKv+Gu_0wFw5Mjpdw7BEY7ewgetNgU=Ff1uvAsn0iHmJouyKqw@mail.gmail.com>
 <20190821061027.GA2828@linux-8mug>
 <CAKv+Gu8Yny8cVPck3rPwCPvJBvcZKMHti_9bkCTM4H4cZ_43fg@mail.gmail.com>
 <20190821071100.GA26713@rapoport-lnx>
In-Reply-To: <20190821071100.GA26713@rapoport-lnx>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 21 Aug 2019 10:29:37 +0300
Message-ID: <CAKv+Gu99z3V1B68CU8qhNwwffqDxNBOM6t3Q8-V7qpbDkf-Cwg@mail.gmail.com>
Subject: Re: [PATCH] efi/arm: fix allocation failure when reserving the kernel
 base
To: Mike Rapoport <rppt@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_002947_617293_3486C2DB 
X-CRM114-Status: GOOD (  31.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Chester Lin <clin@suse.com>, "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>, Gary Lin <GLin@suse.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019 at 10:11, Mike Rapoport <rppt@linux.ibm.com> wrote:
>
> On Wed, Aug 21, 2019 at 09:35:16AM +0300, Ard Biesheuvel wrote:
> > On Wed, 21 Aug 2019 at 09:11, Chester Lin <clin@suse.com> wrote:
> > >
> > > On Tue, Aug 20, 2019 at 03:28:25PM +0300, Ard Biesheuvel wrote:
> > > > On Tue, 20 Aug 2019 at 14:56, Russell King - ARM Linux admin
> > > > <linux@armlinux.org.uk> wrote:
> > > > >
> > > > > On Fri, Aug 02, 2019 at 05:38:54AM +0000, Chester Lin wrote:
> > > > > > diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> > > > > > index f3ce34113f89..909b11ba48d8 100644
> > > > > > --- a/arch/arm/mm/mmu.c
> > > > > > +++ b/arch/arm/mm/mmu.c
> > > > > > @@ -1184,6 +1184,9 @@ void __init adjust_lowmem_bounds(void)
> > > > > >               phys_addr_t block_start = reg->base;
> > > > > >               phys_addr_t block_end = reg->base + reg->size;
> > > > > >
> > > > > > +             if (memblock_is_nomap(reg))
> > > > > > +                     continue;
> > > > > > +
> > > > > >               if (reg->base < vmalloc_limit) {
> > > > > >                       if (block_end > lowmem_limit)
> > > > > >                               /*
> > > > >
> > > > > I think this hunk is sane - if the memory is marked nomap, then it isn't
> > > > > available for the kernel's use, so as far as calculating where the
> > > > > lowmem/highmem boundary is, it effectively doesn't exist and should be
> > > > > skipped.
> > > > >
> > > >
> > > > I agree.
> > > >
> > > > Chester, could you explain what you need beyond this change (and my
> > > > EFI stub change involving TEXT_OFFSET) to make things work on the
> > > > RPi2?
> > > >
> > >
> > > Hi Ard,
> > >
> > > In fact I am working with Guillaume to try booting zImage kernel and openSUSE
> > > from grub2.04 + arm32-efistub so that's why we get this issue on RPi2, which is
> > > one of the test machines we have. However we want a better solution for all
> > > cases but not just RPi2 since we don't want to affect other platforms as well.
> > >
> >
> > Thanks Chester, but that doesn't answer my question.
> >
> > Your fix is a single patch that changes various things that are only
> > vaguely related. We have already identified that we need to take
> > TEXT_OFFSET (minus some space used by the swapper page tables) into
> > account into the EFI stub if we want to ensure compatibility with many
> > different platforms, and as it turns out, this applies not only to
> > RPi2 but to other platforms as well, most notably the ones that
> > require a TEXT_OFFSET of 0x208000, since they also have reserved
> > regions at the base of RAM.
> >
> > My question was what else we need beyond:
> > - the EFI stub TEXT_OFFSET fix [0]
> > - the change to disregard NOMAP memblocks in adjust_lowmem_bounds()
> > - what else???
>
> I think the only missing part here is to ensure that non-reserved memory in
> bank 0 starts from a PMD-aligned address. I believe this could be done if
> EFI stub, but I'm not really familiar with it so this just a semi-educated
> guess :)
>

Given that it is the ARM arch code that imposes this requirement, how
about adding something like this to adjust_lowmem_bounds():

if (memblock_start_of_DRAM() % PMD_SIZE)
    memblock_mark_nomap(memblock_start_of_DRAM(),
        PMD_SIZE - (memblock_start_of_DRAM() % PMD_SIZE));

(and introduce the nomap check into the loop)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
