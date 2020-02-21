Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297E3168263
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 16:55:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAWaHga0/Q4P29S2vBNzLVMkoS9yCFKkK/owJ0huWEg=; b=shoKbzFIf6Hbcb
	rHwvjceSck8hPYhoZCD0EMGCxW3aCwMygCq8j+Ej9sMHYhN67s2nDjehOeM3Elv5qTfl62IfgQnkb
	0r+PY1UAuimU+V6YV2bVgM10QpuWaXzmaF6hTRs5Gmuzo6fsNeGojN/bc01CKIaiKP1hs64DHYNy5
	36E9511jUjpmdprXMAVxLpeNWS5J/eINmDoDQfJMtW8Yrq1reOWyH598mACdzlgaS5+yBIFqBx6Ja
	/KAlHmpps0QyjHJddTCHoWm6kfIuWmbN5iI6DCBlL4aE4t7ta1dTU73CzSe2m7bUJMexz8hE4ikRb
	hhy161iPlw5HyfKKYMIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Adw-0004KD-Ep; Fri, 21 Feb 2020 15:55:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Adi-0004J9-6w
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 15:54:55 +0000
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87209222C4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 15:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582300490;
 bh=d7tniPqVuCgYodFudF2UEkt6ItbAby2BJD3sVoiz6sM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MH6IKySalHiwzsOkR4Uv48+m8aWlGc9FCsmS8JG8pWhmpPat9s4stpQk/ZN6X3feE
 8uyUlvF/ykBU/sn22BA7mUc8HiAnovrwPOHBp9A5GH/O1wSJxoMvgEydmDJmpcUuMl
 tGCZIdKU46dZpThMNN1P0hQ/Ge1C98cnP0HevVTg=
Received: by mail-wm1-f45.google.com with SMTP id b17so2443199wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 07:54:50 -0800 (PST)
X-Gm-Message-State: APjAAAUjepgqE7um17IUvjYoLmORhyHfZAJknsiVLkGhIyBZfQJUYLXI
 66+hflCDpIkd0OMBp3szKPH1BvDN76hgJZlvTd7C3Q==
X-Google-Smtp-Source: APXvYqxaM1bvUuTrhSNBWekJbeff9q1JUzwFFi3SVvt+xnxY4850Oo6CJeaPcmPwpM8hqJvnGAdNmxiPsH0dCUnF6mQ=
X-Received: by 2002:a1c:bc46:: with SMTP id m67mr4464293wmf.40.1582300488929; 
 Fri, 21 Feb 2020 07:54:48 -0800 (PST)
MIME-Version: 1.0
References: <20200219094340.16597-1-ardb@kernel.org>
 <CAKv+Gu_aL_=W7qMuLwu+427=DSgj5Kmg7Qm0ujooxS9s=zDT2g@mail.gmail.com>
 <fa6aa783-0b01-9d29-03be-3ec8d352f373@arm.com>
 <CAKv+Gu8g_fb-Xq3XcyZivG5405jypHnkBy6gnWMWy4Oz8763XA@mail.gmail.com>
In-Reply-To: <CAKv+Gu8g_fb-Xq3XcyZivG5405jypHnkBy6gnWMWy4Oz8763XA@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 21 Feb 2020 16:54:38 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu-FGL3J9fuY3V4GTaqdLTVLfeErN1GPd5nWL4McjMj_Hg@mail.gmail.com>
Message-ID: <CAKv+Gu-FGL3J9fuY3V4GTaqdLTVLfeErN1GPd5nWL4McjMj_Hg@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] ARM: decompressor: use by-VA cache maintenance for
 v7 cores
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_075454_294667_3B53A3B0 
X-CRM114-Status: GOOD (  28.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>, Tony Lindgren <tony@atomide.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Feb 2020 at 14:42, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Fri, 21 Feb 2020 at 14:35, Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 20/02/2020 6:08 pm, Ard Biesheuvel wrote:
> > > (+ Arnd)
> > >
> > > On Wed, 19 Feb 2020 at 10:43, Ard Biesheuvel <ardb@kernel.org> wrote:
> > >>
> > >> While making changes to the EFI stub startup code, I noticed that we are
> > >> still doing set/way maintenance on the caches when booting on v7 cores.
> > >> This works today on VMs by virtue of the fact that KVM traps set/way ops
> > >> and cleans the whole address space by VA on behalf of the guest, and on
> > >> most v7 hardware, the set/way ops are in fact sufficient when only one
> > >> core is running, as there usually is no system cache. But on systems
> > >> like SynQuacer, for which 32-bit firmware is available, the current cache
> > >> maintenance only pushes the data out to the L3 system cache, where it
> > >> is not visible to the CPU once it turns the MMU and caches off.
> > >>
> > >> So instead, switch to the by-VA cache maintenance that the architecture
> > >> requires for v7 and later (and ARM1176, as a side effect).
> > >>
> > >> Changes since v1:
> > >> - include the EFI patch that was sent out separately before (#1)
> > >> - split the preparatory work to pass the region to clean in r0/r1 in a EFI
> > >>    specific one and one for the decompressor - this way, the first two patches
> > >>    can go on a stable branch that is shared between the ARM tree and the EFI
> > >>    tree
> > >> - document the meaning of the values in r0/r1 upon entry to cache_clean_flush
> > >> - take care to treat the region end address as exclusive
> > >> - switch to clean+invalidate to align with the other implementations
> > >> - drop some code that manages the stack pointer value before calling
> > >>    cache_clean_flush(), which is no longer necessary
> > >> - take care to clean the entire region that is covered by the relocated zImage
> > >>    if it needs to relocate itself before decompressing
> > >>
> > >> https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/?h=arm32-efi-cache-ops
> > >>
> > >
> > > Adding my own data point here: with these patches, I can reproducibly
> > > boot on the SynQuacer platform (24x Cortex-A53 + GICv3 + L3 system
> > > cache) until the point where /init is loaded, after which it hangs
> > > (see below), whereas without them, it always crashes early with weird,
> > > unreproducible errors, if it even makes it far enough through the
> > > decompressor to produce any earlycon output.
> > >
> > > There is some other weird stuff going on, but this is unlikely to be
> > > related to cache maintenance:
> > > - multiple occurrences of
> > >     OF: translation of DMA address(0) to CPU address failed node(...)
> >
> > FWIW that implies a "dma-ranges" property in the wrong place in the DT -
> > if you copied the now-gone Juno example of placing one directly in the
> > root node, that was bogus, sorry.
> >
>
> OK, so where should it be instead? Are you saying it is now required
> to have a /soc or /smb node that contains all the device nodes?
>

Never mind - I'll just drop "dma-ranges" from the root node entirely.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
