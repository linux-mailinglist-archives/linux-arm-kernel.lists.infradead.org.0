Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD811626C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:07:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RS0xqpObvuEczG2hXYWmAhdPlwVoh6Jj3WTsG4IQiRI=; b=M3pUccrwkjxf+F
	IAzbagRNVy+kAw8PLakOoTPeq2zlSXefvQmX5RHhdNkINV25gnt1yl/2QSPLGCwVwHbLZdKaFvMBe
	FbM3zV3YJz06vZPPErMr+h8u5PfPqs3/XCHzcgIfOURZi/Crjamy8CsfDYUqVEI3n853PpeHeNpVp
	L2QKoWpMHupZPIqcaSUJrKYAAt+HZSIcyqGT1wRYjETX3R09goqvfqeG2uIGf+z+Y00njP/CZmyxU
	UVjMjR7piKdkMhvqBqKwSOUrPy7NsiCMZkhTX8NMaAenKned8xYlZCuCZ+SU6kUj9/kSo0cXIGgKl
	0DX92UpuB9Lhok5PQGOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j42aZ-00031l-Ko; Tue, 18 Feb 2020 13:06:59 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j42aQ-0002yj-2c
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:06:51 +0000
Received: by mail-pf1-x444.google.com with SMTP id j9so10628391pfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 05:06:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rO0+HTudurHIpLNnL3eo7xZsjczyqgXMhw0p9F9AXKc=;
 b=FyAUPeWqlKqhvKzz50Pl1H3asxCWMNFKyGG1j3jfNHVHYFIOgvFKGISZQexIv1+XGp
 ei9zxbs7N+5ZWUnshBLfVXE1wKDbqQGUHrH/Pw6sMPM/p/GQd8CAk5UF+OxXw9Qu9iJ7
 4TpPCRAeCknN3qZMR4mVm90q94RPFr1PCVlGCP2rFdF8YupEqxxMsARHSFUgej3kfGlE
 73ilkhIP6KK0N4GKYQrV3rYsyItGeDSCK7vjHLmgO3QunUSdBlKH0DeA1YYCrpRumBE2
 LgkNT6TGRtDPiTNkgjprUmKKKPFTj7iP0c//M6+XWT4s0UC92E2ShFQSDN8RGN735dU0
 UehA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rO0+HTudurHIpLNnL3eo7xZsjczyqgXMhw0p9F9AXKc=;
 b=KMBXCMbxMEUHzpKBVzaGgvD7ey8EOJY98k7nUXhFSsq1ZKl/KkHU9Vw40xCNcQamEp
 lmrzGel94hjdMaxWffmWZEaqy2ZuFuuTpt31LuW4Y0uej+njxrGLMeECf8VCzLJ9u74S
 xDTVOeV68hGmaolVUoJsTy2BKuPHIZ7cbBchbCZZ6AdmMp4L4pNHGfJGe+62NAbXd4Ij
 ijDMUYMnwEJkh6eX5O77jf3sEblFjfhQZ2SHmntdZG8Y+SVbE6Jn4bEgiUorGGugmZy+
 WejqRCF1NPS7QO1EPJM6yD0aVFVBLb9aVaYvRs8bwceREY+sBl8pc0WxZdC0+0H5YRbT
 dP+g==
X-Gm-Message-State: APjAAAUmIxT2H7Ce/6Q7T5qtRzrYPeNLsXt9FH8Ygh6NncOTE5snlRvT
 93l7RcOdTLEN+GS1QeURQslFGp4mogtWJFnx5oINLw==
X-Google-Smtp-Source: APXvYqx7HjbGglI6atITptUtHzHTlpn1BWPSVcbuHwx6KPRMS807SnR+1xfpZUOdmOzCQnJPqmgdkM50qiEcOY/S4oo=
X-Received: by 2002:a63:615:: with SMTP id 21mr22865082pgg.440.1582031206806; 
 Tue, 18 Feb 2020 05:06:46 -0800 (PST)
MIME-Version: 1.0
References: <20200218122310.72710-1-catalin.marinas@arm.com>
 <20200218123426.GA19776@willie-the-truck>
In-Reply-To: <20200218123426.GA19776@willie-the-truck>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Tue, 18 Feb 2020 14:06:35 +0100
Message-ID: <CAAeHK+y0Xz6X5yt7f9RXVw4ijPbKuUm+zr+Mgm73rU=t=Ab0ng@mail.gmail.com>
Subject: Re: [PATCH] mm: Avoid creating virtual address aliases in
 brk()/mmap()/mremap()
To: Evgenii Stepanov <eugenis@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_050650_139595_ECDC9F89 
X-CRM114-Status: GOOD (  23.73  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 Victor Stinner <vstinner@redhat.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
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
