Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B7A1633D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:05:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bpK58ciBoo4T1Gtr7p/SIcWDC1ffcQlNKABxTmNw3hg=; b=WvPPk5pIdiYtDU
	8qPxg/K5gBAw6BTDIM7mplQbNYj96VMpcENpUvIDkFoC+r/JebUwltElgwnKzK6rd4PlMAK91S2yb
	Ikv4IUcTJ7W6MLk5IxeliI73Ysc5KgMq//K/bV0KY55M9RDYqn6zPbqaYQ7O06fjXEvwe1tG5+fwG
	MlknC6RvjdMq8ITdQj+uwKK93BxsooSUgO9xU8db1L8xrV9wOwUMuLBtLBHBCDqEAx7SIYXqacuyS
	eK9+CbZyR2w5uraZNGDzCt+ayO2or1t3UHR0XSVJByY99iGE7JwwQLEXk9JXZwgGadtPBTNl4E3aP
	pLH4O7Ob0tvMPvyIPUmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4A3m-0000dQ-My; Tue, 18 Feb 2020 21:05:38 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4A3e-0000cj-TU
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 21:05:32 +0000
Received: by mail-io1-xd42.google.com with SMTP id z8so12368204ioh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 13:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FLBYyhbEVK2WxYe7XRcltkQcdTtblO766M7V/ij5lvI=;
 b=vHbQzXXyoV+Y9zIOrjuFKrSsDtinOVGHe6Gcs+WggtyGJC4bR3luoPn/mUdOjXztHp
 jJtJyIgxuPvzG7KlmDZwWutFhZmKJoq5MJT6oniyPaRRmi2nOK6j/9F5ErAO1Lz6xciT
 9SSXRHEEMto98eix6KMA7ibJDJf1ay8pWac7WWo1apLZp4Sf67HnBen+OQtrfb+W0Cby
 2XmVqclfi65JK/bpt0MuFZ/Ui7UX4MGLTea1ziwhDDqtP9D8NWnsI6HAXhO5VaNKC0Qx
 jz6xGrp0XORRadoLS5jjL4fiwQM6ECUrNampu/I4Efj4AA8hq9PSJuvi+1mPK5Y+bUeY
 Zr1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FLBYyhbEVK2WxYe7XRcltkQcdTtblO766M7V/ij5lvI=;
 b=NAsbo5VeQzlSiepRy9W3ujDwamBtatcHwhg6PF26RThzNxgxFpqApEBgfkvZxSrDO+
 yt1XAnQiAP1vPIAAGPT90q7d6OiD2Wtow/9P0l7Yo9J1HPgRG9fYLK1x9iqgpn25bOPT
 yqkry4QOthhFWAZWtX3eCWub9oKcXjL49HIatIa2uoSfFXjYmnS4iKkNTLtcv7u/mgn1
 8YT5no3IxqjKuHBKQvzYQLxmuzHcFsp9PXcXzHZYFT+Y3oL7EPLJ4hL/Y4TnBAiJFoxi
 4uT9POvR7JAmF4UGWIZ4h8Gjc/0+ARZC6AOCAsV7QqU2laoCwBofoNgjWl7o/Tq3EjS6
 Jx5A==
X-Gm-Message-State: APjAAAUmddi9jAiPjuul0ZcsspdrVb3JIufM0S0oNrcIlKHXAwkFOw6M
 CICGfSWhv4Qd6I/Mk/47rbMNMlrPsJd/RW8LGmhCGg==
X-Google-Smtp-Source: APXvYqyIhJ2biuTZyCaoRFUVzvNeQwM4owFmTynxIZQ5l4t7g6zbJ1OKnQd4H+AaWIm2P2TPi9MpFTZ5VNcUxlWjWaU=
X-Received: by 2002:a02:c85b:: with SMTP id r27mr17877406jao.57.1582059926803; 
 Tue, 18 Feb 2020 13:05:26 -0800 (PST)
MIME-Version: 1.0
References: <20200218122310.72710-1-catalin.marinas@arm.com>
 <20200218123426.GA19776@willie-the-truck>
 <CAAeHK+zKGLHVFVAmUB8Ccc2vuGiZ1uSt1kzxk=7SdDtbwVkvhQ@mail.gmail.com>
In-Reply-To: <CAAeHK+zKGLHVFVAmUB8Ccc2vuGiZ1uSt1kzxk=7SdDtbwVkvhQ@mail.gmail.com>
From: Evgenii Stepanov <eugenis@google.com>
Date: Tue, 18 Feb 2020 13:05:14 -0800
Message-ID: <CAFKCwrhysxATNaPWQR9Nn-P1+ngBMXauPUuEdpaYRgKZH0XV7Q@mail.gmail.com>
Subject: Re: [PATCH] mm: Avoid creating virtual address aliases in
 brk()/mmap()/mremap()
To: Andrey Konovalov <andreyknvl@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_130530_978966_D03FB5CC 
X-CRM114-Status: GOOD (  27.62  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Florian Weimer <fweimer@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Victor Stinner <vstinner@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 5:07 AM Andrey Konovalov <andreyknvl@google.com> wrote:
>
> On Tue, Feb 18, 2020 at 1:34 PM Will Deacon <will@kernel.org> wrote:
> >
> > On Tue, Feb 18, 2020 at 12:23:10PM +0000, Catalin Marinas wrote:
> > > Currently the arm64 kernel ignores the top address byte passed to brk(),
> > > mmap() and mremap(). When the user is not aware of the 56-bit address
> > > limit or relies on the kernel to return an error, untagging such
> > > pointers has the potential to create address aliases in user-space.
> > > Passing a tagged address to munmap(), madvise() is permitted since the
> > > tagged pointer is expected to be inside an existing mapping.
> >
> > Might be worth mentioning that this is causing real issues for existing
> > userspace:
> >
> > https://bugzilla.redhat.com/show_bug.cgi?id=1797052
> >
> > and so should be merged as a fix.
> >
> > > Remove untagging in the above functions by partially reverting commit
> > > ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk"). In
> > > addition, update the arm64 tagged-address-abi.rst document accordingly.
>
> Evgenii, do you know if this will cause any issues for HWASAN?

Is it possible to preserve the untagging behavior when a process has
opted in TBI?

I have not seen an actual issue with a tagged pointer in mmap yet
(I've seen two with mprotect, but not mmap or sbrk), so we should be
fine either way.

>
> > >
> > > Fixes: ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk")
> > > Cc: <stable@vger.kernel.org> # 5.4.x-
> > > Cc: Andrey Konovalov <andreyknvl@google.com>
> > > Cc: Will Deacon <will@kernel.org>
> > > Cc: Andrew Morton <akpm@linux-foundation.org>
> > > Cc: Florian Weimer <fweimer@redhat.com>
> > > Reported-by: Victor Stinner <vstinner@redhat.com>
> > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > > ---
> > >  Documentation/arm64/tagged-address-abi.rst | 7 +++++--
> > >  mm/mmap.c                                  | 4 ----
> > >  mm/mremap.c                                | 1 -
> > >  3 files changed, 5 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/Documentation/arm64/tagged-address-abi.rst b/Documentation/arm64/tagged-address-abi.rst
> > > index d4a85d535bf9..1771a8b5712e 100644
> > > --- a/Documentation/arm64/tagged-address-abi.rst
> > > +++ b/Documentation/arm64/tagged-address-abi.rst
> > > @@ -44,8 +44,11 @@ The AArch64 Tagged Address ABI has two stages of relaxation depending
> > >  how the user addresses are used by the kernel:
> > >
> > >  1. User addresses not accessed by the kernel but used for address space
> > > -   management (e.g. ``mmap()``, ``mprotect()``, ``madvise()``). The use
> > > -   of valid tagged pointers in this context is always allowed.
> > > +   management (e.g. ``mprotect()``, ``madvise()``). The use of valid
> > > +   tagged pointers in this context is allowed with the exception of
> > > +   ``brk()``, ``mmap()`` and the ``new_address`` argument to
> > > +   ``mremap()`` as these have the potential of aliasing with existing
> > > +   user addresses.
> >
> > Given that we're backporting this to stable kernels, perhaps it's worth
> > a note here along the lines of:
> >
> > NOTE: This behaviour changed in v5.6 and so some earlier kernels may
> > incorrectly accept valid tagged pointers for these system calls.
> >
> > With that:
> >
> > Acked-by: Will Deacon <will@kernel.org>
> >
> > Happy to take this as an arm64 fix for 5.6, unless Andrew would prefer
> > to route it via his tree.
> >
> > Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
