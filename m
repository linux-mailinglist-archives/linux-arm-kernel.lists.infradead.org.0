Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 015041626CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:08:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vm/uvnrm6WzNPazfxQqvbtNRBpVp0hC8QilDh3Mc1Z8=; b=T6296bZTx47gx3
	+i9vLV0SPsmUj25L0AwNxvVlQ07oQGBxBDs6CbiZcGveIu5Okiqf5VhWWoN3gRQ2+5OV440NuMe8i
	43ELgaT8phinUbsFyeJVG5vUUszKwC3ByupeuRTyKS22iTyjzgfjGkVEXABg27SlfhYxAt47qHvDV
	1MEF+kf7UiqI2Pl/0EHxAudsMM2KB6EziyPgxk19TG1u6FMhwKJCrKQZj6iBlpXSfR4VwGuoefFkz
	n43ICB9oSI0ZIbWAMyet3IU/Qnu4LbpZUxt4lW0Ka8kqszNyvTpTiOOadcdM0WxwOM4OYAfKlFA3W
	zyw0OWThoclPJMnjI5FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j42bW-0003It-4C; Tue, 18 Feb 2020 13:07:58 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j42bO-0003IW-5a
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:07:51 +0000
Received: by mail-pj1-x1041.google.com with SMTP id 12so981603pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 05:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qo1YUJb/RWYJFwig6pzp9B2Ejd28xQg9RZwtPeZ5+II=;
 b=p03h2q2oFzCsylq8kredNKQ01XRdkwUMvCYPUjYq/RzqX/imqMmY01sPPA/6euPoSQ
 /SbxLVv6e4NoTFbPLgkLRPRI1KA45cBN1ZQJIoLvOFFvLUxu5UMliCWWJD5YcQmEQXoq
 gvHQpy/ZirgJsF3bY2AUh3/wfYE8URE1jzed8uET9PCFvOILmWjwiLf2kX8GB/uYFMkP
 Cwow0Bey0I1KTKj9wZzOxDbD3vGr2ocyengclQureo05E3vUAmkhndqvsPHXx86eqwAi
 eE7TDhVdPVum9RjBB0m2fpmxWwjDQTG95fRdbomskE5PaoXSZLVwlfh+KDKqYBijROPU
 JI5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qo1YUJb/RWYJFwig6pzp9B2Ejd28xQg9RZwtPeZ5+II=;
 b=ricJdFlEpdU+LBVpuYhHgdFcQP/WQEu7NaMNIC7nJNyvS0718wd6uPBw+1Zr6g0HLv
 d7a9SIOT6edUUG1ZV2Qxt5gqAr9OmyM5/eoPL6aWDcT6sOf5niFk7jjrl2bVNzITWKS7
 3nPfaUWoQ45WLm8lUzhmuPajjY1orBjcMPiFvQbe+k3zblkX4OOntQb5lVbEvFcjX6EY
 1+anBIaOeayEaIIkkoFh68e8DPBdQt/Fnn1HQ41msMZkjIaZWoWLgcpyDXSimLTOB9X2
 YboUBWoJhTpHmH6qo+xnkaKNQkl67z2p0bi13OMggHwG9R+SIw80KlbtDc3zbDEIT0iT
 cazA==
X-Gm-Message-State: APjAAAVtTNkcC9nxMuyUjT9/2kcstZutNH+apv66tbNjQLMqU1+Lrr57
 XuzAaQ4oZIX0feD7p9vIdlOh2Rc8bG6up+mohL/kDuRc
X-Google-Smtp-Source: APXvYqxMy8oB1NG4dNDB1Xm/PatBGPZPL8iCKwCorX+nNCE6VB2xnOZH5zfiPiC11rVcY7hOuYQID9xq80Oo7TSvY5Q=
X-Received: by 2002:a17:902:8682:: with SMTP id
 g2mr20241607plo.336.1582031269417; 
 Tue, 18 Feb 2020 05:07:49 -0800 (PST)
MIME-Version: 1.0
References: <20200218122310.72710-1-catalin.marinas@arm.com>
 <20200218123426.GA19776@willie-the-truck>
In-Reply-To: <20200218123426.GA19776@willie-the-truck>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Tue, 18 Feb 2020 14:07:38 +0100
Message-ID: <CAAeHK+zKGLHVFVAmUB8Ccc2vuGiZ1uSt1kzxk=7SdDtbwVkvhQ@mail.gmail.com>
Subject: Re: [PATCH] mm: Avoid creating virtual address aliases in
 brk()/mmap()/mremap()
To: Evgenii Stepanov <eugenis@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_050750_238690_D65D7701 
X-CRM114-Status: GOOD (  23.66  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Tue, Feb 18, 2020 at 1:34 PM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Feb 18, 2020 at 12:23:10PM +0000, Catalin Marinas wrote:
> > Currently the arm64 kernel ignores the top address byte passed to brk(),
> > mmap() and mremap(). When the user is not aware of the 56-bit address
> > limit or relies on the kernel to return an error, untagging such
> > pointers has the potential to create address aliases in user-space.
> > Passing a tagged address to munmap(), madvise() is permitted since the
> > tagged pointer is expected to be inside an existing mapping.
>
> Might be worth mentioning that this is causing real issues for existing
> userspace:
>
> https://bugzilla.redhat.com/show_bug.cgi?id=1797052
>
> and so should be merged as a fix.
>
> > Remove untagging in the above functions by partially reverting commit
> > ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk"). In
> > addition, update the arm64 tagged-address-abi.rst document accordingly.

Evgenii, do you know if this will cause any issues for HWASAN?

> >
> > Fixes: ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk")
> > Cc: <stable@vger.kernel.org> # 5.4.x-
> > Cc: Andrey Konovalov <andreyknvl@google.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Cc: Florian Weimer <fweimer@redhat.com>
> > Reported-by: Victor Stinner <vstinner@redhat.com>
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > ---
> >  Documentation/arm64/tagged-address-abi.rst | 7 +++++--
> >  mm/mmap.c                                  | 4 ----
> >  mm/mremap.c                                | 1 -
> >  3 files changed, 5 insertions(+), 7 deletions(-)
> >
> > diff --git a/Documentation/arm64/tagged-address-abi.rst b/Documentation/arm64/tagged-address-abi.rst
> > index d4a85d535bf9..1771a8b5712e 100644
> > --- a/Documentation/arm64/tagged-address-abi.rst
> > +++ b/Documentation/arm64/tagged-address-abi.rst
> > @@ -44,8 +44,11 @@ The AArch64 Tagged Address ABI has two stages of relaxation depending
> >  how the user addresses are used by the kernel:
> >
> >  1. User addresses not accessed by the kernel but used for address space
> > -   management (e.g. ``mmap()``, ``mprotect()``, ``madvise()``). The use
> > -   of valid tagged pointers in this context is always allowed.
> > +   management (e.g. ``mprotect()``, ``madvise()``). The use of valid
> > +   tagged pointers in this context is allowed with the exception of
> > +   ``brk()``, ``mmap()`` and the ``new_address`` argument to
> > +   ``mremap()`` as these have the potential of aliasing with existing
> > +   user addresses.
>
> Given that we're backporting this to stable kernels, perhaps it's worth
> a note here along the lines of:
>
> NOTE: This behaviour changed in v5.6 and so some earlier kernels may
> incorrectly accept valid tagged pointers for these system calls.
>
> With that:
>
> Acked-by: Will Deacon <will@kernel.org>
>
> Happy to take this as an arm64 fix for 5.6, unless Andrew would prefer
> to route it via his tree.
>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
