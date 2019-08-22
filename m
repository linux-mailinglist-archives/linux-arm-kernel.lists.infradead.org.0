Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B2E98B91
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 08:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5wS6zGtJkuU7+IUo58wD2/x3M+C9m/ONVHDgAUeqsw=; b=U1FavKqEFp89vO
	GSBRppLz6uEP0zfGV7UtMuZU3yZ6fBk1Dffl/H1sA9WLLnfY+MTTaReg6fvGzGe79e63z0uFakKhH
	VbNrg6r7rQuerMnuIMKvAkzj9B43SCmbwX1Z6P0xpAHwjA4qdMy12AqZC3WoYBWZCj9G3D2V6Axta
	m4uiBBfy8gFm0zNeUUC7PWZNpKuGoMFdYcngnoQHblCHE6lN2O8r0LiwIuxruJjKih3ClWI8yMtVF
	/mkBq9RSei0anQj7pFN8VDL1bPcAp44xi2e4dxeqft9rGH0tfOkoMMI4iEiFcaB+xJUmXg1KyUSi6
	wJ+Ot+mfkKvbHb9r9+Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0gt7-0001h7-Un; Thu, 22 Aug 2019 06:48:02 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gsA-0001gl-HW
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 06:47:04 +0000
Received: by mail-qt1-x842.google.com with SMTP id q4so6381265qtp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 23:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CiMrxH8Gt5JqK2uyEB2GoUe1c7zMq8bWNGPXsYgidV4=;
 b=IoVKbHizFjYoCYCvT4CCkXOM23WvHv7K77ZyHJaPwNCm+lOMDDebTTybNmTF+guhDO
 HuQHKqJNJPeEbVBtdObOCo4ho97PgUXlVSwWnBcqjfb+f4vKJAAjOWpF4pkOxqumh1xz
 7Sx6M9pJOxlvxVQYLoNXQpaRqu82sKt5yxVx2fePB8z03vuzNO8nf4gfqTGXcss0do/m
 y9La9YOkoRozJYT0OWlB+4izCKV+4/08EAVepe5QhuKi9HB/2gRgWSFAFfyZ8wzrkMNC
 ZLn4BZS55uGf+TNSuMkWe+Z7t9DQt/rcyIqWAljuFMNBIbPMJBLaFoQevHXrWOOuXGeY
 0teQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CiMrxH8Gt5JqK2uyEB2GoUe1c7zMq8bWNGPXsYgidV4=;
 b=M4TIp5jIl+lrLEsgE6mmtsuSMmCHf933h2SEk/rA+ektmQbWF/ZZDVMt6ajgxG/4D/
 xVOCwLRLwbU8V5mDIvg93MyLNACwm3vmoH9HNEPpDRl9RtgVoBMun1MBrA8pqUPO/kIE
 dHxQws33VyxZ/5ixWj0PP0G39QHWG3Lf+roxPLKFPd8/KlvSvQvBa6LkP9wuE6r/TJgL
 CurrKiYMoGyJGsl+c6ExH9lyl1fIUHLO4KJhE3bDuwaICoUIMzJQ6omdKIxyVQjaSraJ
 miuXFnoCaJJptVDogjGq7kHrUL+Iht9s7qJsf5u67/j1H3GdwWkgAgyTk4RmEIgl55xY
 1rbg==
X-Gm-Message-State: APjAAAW9twFAVcKlXbr4GnI6A5D/iW/EQQDOvFYzqZqgcNak5z5gRLir
 fXXKJABBO0HWPbHxZVz8hjyj9JyXAMqjd8vsHYTrrA==
X-Google-Smtp-Source: APXvYqzVZr5rxY/jF/ZIvY6R713POrJMcRKXoPUsyOPVlTBUb5JhOiBady0RJ/T1F9HZGjNMy0GEICmD6KxFV1jsr28=
X-Received: by 2002:aed:21b6:: with SMTP id l51mr35436677qtc.184.1566456421037; 
 Wed, 21 Aug 2019 23:47:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190822034425.25899-1-clin@suse.com>
 <20190822035920.GA27154@linux-8mug>
 <20190822064406.GC18872@rapoport-lnx>
In-Reply-To: <20190822064406.GC18872@rapoport-lnx>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 22 Aug 2019 09:46:50 +0300
Message-ID: <CAKv+Gu8F6n7RWsosOTjtDQ9qJNNERyhRHD0ncWABgpdAW5B9Aw@mail.gmail.com>
Subject: Re: [PATCH] arm: skip nomap memblocks while finding the
 lowmem/highmem boundary
To: Mike Rapoport <rppt@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_234702_626199_C0CCC471 
X-CRM114-Status: GOOD (  27.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Joey Lee <JLee@suse.com>,
 "guillaume.gardet@arm.com" <guillaume.gardet@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chester Lin <clin@suse.com>, "geert@linux-m68k.org" <geert@linux-m68k.org>,
 Gary Lin <GLin@suse.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 22 Aug 2019 at 09:44, Mike Rapoport <rppt@linux.ibm.com> wrote:
>
> On Thu, Aug 22, 2019 at 03:59:42AM +0000, Chester Lin wrote:
> > On Thu, Aug 22, 2019 at 11:45:34AM +0800, Chester Lin wrote:
> > > adjust_lowmem_bounds() checks every memblocks in order to find the boundary
> > > between lowmem and highmem. However some memblocks could be marked as NOMAP
> > > so they are not used by kernel, which should be skipped while calculating
> > > the boundary.
> > >
> > > Signed-off-by: Chester Lin <clin@suse.com>
> > > ---
> > >  arch/arm/mm/mmu.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >
> > > diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> > > index 426d9085396b..b86dba44d828 100644
> > > --- a/arch/arm/mm/mmu.c
> > > +++ b/arch/arm/mm/mmu.c
> > > @@ -1181,6 +1181,9 @@ void __init adjust_lowmem_bounds(void)
> > >             phys_addr_t block_start = reg->base;
> > >             phys_addr_t block_end = reg->base + reg->size;
> > >
> > > +           if (memblock_is_nomap(reg))
> > > +                   continue;
> > > +
> > >             if (reg->base < vmalloc_limit) {
> > >                     if (block_end > lowmem_limit)
> > >                             /*
> > > --
> > > 2.22.0
> > >
> >
> > Hi Russell, Mike and Ard,
> >
> > Per the discussion in the thread "[PATH] efi/arm: fix allocation failure ...",
> > (https://lkml.org/lkml/2019/8/21/163), I presume that the change to disregard
> > NOMAP memblocks in adjust_lowmem_bounds() should be separated as a single patch.
> >
> > Please let me know if any suggestion, thank you.
>
> Let's add this one to the series:
>
> From 06a986e79d60c310c804b3e550bd50316597aec5 Mon Sep 17 00:00:00 2001
> From: Mike Rapoport <rppt@linux.ibm.com>
> Date: Thu, 22 Aug 2019 09:27:40 +0300
> Subject: [PATCH] arm: ensure that usable memory in bank 0 starts from a
>  PMD-aligned address
>
> The calculation of memblock_limit in adjust_lowmem_bounds() assumes that
> bank 0 starts from a PMD-aligned address. However, the beginning of the
> first bank may be NOMAP memory and the start of usable memory
> will be not aligned to PMD boundary. In such case the memblock_limit will
> be set to the end of the NOMAP region, which will prevent any memblock
> allocations.
>
> Mark the region between the end of the NOMAP area and the next PMD-aligned
> address as NOMAP as well, so that the usable memory will start at
> PMD-aligned address.
>
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

> ---
>  arch/arm/mm/mmu.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> index 4495a26..25da9b2 100644
> --- a/arch/arm/mm/mmu.c
> +++ b/arch/arm/mm/mmu.c
> @@ -1177,6 +1177,22 @@ void __init adjust_lowmem_bounds(void)
>          */
>         vmalloc_limit = (u64)(uintptr_t)vmalloc_min - PAGE_OFFSET + PHYS_OFFSET;
>
> +       /*
> +        * The first usable region must be PMD aligned. Mark its start
> +        * as MEMBLOCK_NOMAP if it isn't
> +        */
> +       for_each_memblock(memory, reg) {
> +               if (!memblock_is_nomap(reg)) {
> +                       if (!IS_ALIGNED(reg->base, PMD_SIZE)) {
> +                               phys_addr_t len;
> +
> +                               len = round_up(reg->base, PMD_SIZE) - reg->base;
> +                               memblock_mark_nomap(reg->base, len);
> +                       }
> +                       break;
> +               }
> +       }
> +
>         for_each_memblock(memory, reg) {
>                 phys_addr_t block_start = reg->base;
>                 phys_addr_t block_end = reg->base + reg->size;
> --
> 2.7.4
>
>
> --
> Sincerely yours,
> Mike.
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
