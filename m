Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE0F2717E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 23:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4cHhfOJIVio3VTuh+Q0TfVv2HIoG6ZKakVgzyxv4aU=; b=VjuLfUeEtAYrPh
	BcVN9l/yCGuXgdh0LHSSvNcu0XWnM1TuNHtlJZ87WBdy35c02l5s7USR1SL/ykvOMoH6Dj0PGKR7J
	ZWayboxaZxdh2/bVIpqdMLYTBtm8rWd0RXYEhrqYiORLXhh2ChgGvo7f288zUSfsnn/PWUjXhukHX
	33Rxxisr5LeN/pQbWtW5Bq91+0itIeAZr5WSpBdfuuaKT4EOMk9fhOESc+aoLMq+GbLaGekL21vRE
	QHKhNhR/e6KDyT4AI+K8ivyEqCVz2lnkbD6fU5VnyMLjyaAlEwFdPj3UgsbEP33EAsFLQSLCHBLEi
	YYuAULoS7r613ZgiB3LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTYbz-0004R0-1G; Wed, 22 May 2019 21:17:23 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTYbp-0004Ps-SL
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 21:17:15 +0000
Received: by mail-ua1-x943.google.com with SMTP id a95so1396388uaa.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 14:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4dHniiz5Iec+zX/39XStbUXbmPxCKmuaK7gygHepfyc=;
 b=BozsRedf7hxOrPEwc14/5gYKjPtcuYPfCzdL5Qh8eptxMopndG6sl6KK8l1wx0gHcO
 fX9KUGo72jJQy2d1m1wZ3No1Qi2uQpl1cB2uKNXeTTE0y7bVHQRp3jZ8gNy6f12oUbuZ
 9pqndA18D5HuCzEP7FakfNMcFjkFYSW5Qf6tTdWeb6YU5HYx7NFV4gOPaqZKnmwkQ5VN
 K2fCVmPCADr0j8VP+wLoOUFpEpW6WISMm8/ajD25DfdGIBy1SiKGnwF+/Lt+nHE51rtB
 vS7fbs1gYfPlwpTBaswd0RKzwzIK+7d4NhNx6dxPb1W6jd5YUGLoFQyi73p/mW3CKcJq
 v2ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4dHniiz5Iec+zX/39XStbUXbmPxCKmuaK7gygHepfyc=;
 b=iqRr4qn5293ZaQQirQni61L9hOlXTRiN3lhs6qTGDShguBaTp7sKCogfjRIqBqr0qu
 rrpCnWE04r88/j3kyhwkV5JaHeQGSK5qPq8FtxFt/rl716+QeUUEZ3LCAAf2Qn80hnRU
 sJePVLUVcl2Mr9VABUKJhh19YfXp4N0zjcFAesDlviyAWlydzDCDiwqrPV8Wr86jBOqf
 RSFP1ugV+wEZY5o168PLlQu6MB6anFJygxZxVbTHm2ntfq6KXk8fkW9Hg6kxBE+OLfTu
 VDMhEwWwsmjt7ArsG9BCjZAlzXJ62GsvmLt6f0fWDspVk51M1Gcrf5PJwyMU+TdULKjb
 3TdA==
X-Gm-Message-State: APjAAAWAzZqt/2SPUDO+GS3ZnXFKjqIjCbUmhlLIDEPZ/qr2A+uHbHUI
 YojRPVa3mrXzW/AoiQ0DQkE4i5aczSzFt9nM5Xr2OQ==
X-Google-Smtp-Source: APXvYqxH4+lXdvKeAKR6IcV6qRcWyD41x0RLMgowdC0uvePb1uyY7QqZdIceH4zhHD2Gn25pj1INm9uTZm6L2qnPIh8=
X-Received: by 2002:ab0:115a:: with SMTP id g26mr16507991uac.84.1558559829704; 
 Wed, 22 May 2019 14:17:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
 <00eb4c63fefc054e2c8d626e8fedfca11d7c2600.1557160186.git.andreyknvl@google.com>
 <20190522114910.emlckebwzv2qz42i@mbp>
In-Reply-To: <20190522114910.emlckebwzv2qz42i@mbp>
From: Evgenii Stepanov <eugenis@google.com>
Date: Wed, 22 May 2019 14:16:57 -0700
Message-ID: <CAFKCwrjyP+x0JJy=qpBFsp4pub3He6UkvU0qnf1UOKt6W1LPRQ@mail.gmail.com>
Subject: Re: [PATCH v15 05/17] arms64: untag user pointers passed to memory
 syscalls
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_141713_944527_865A82D7 
X-CRM114-Status: GOOD (  29.92  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-media@vger.kernel.org, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 4:49 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Mon, May 06, 2019 at 06:30:51PM +0200, Andrey Konovalov wrote:
> > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > pass tagged user pointers (with the top byte set to something else other
> > than 0x00) as syscall arguments.
> >
> > This patch allows tagged pointers to be passed to the following memory
> > syscalls: brk, get_mempolicy, madvise, mbind, mincore, mlock, mlock2,
> > mmap, mmap_pgoff, mprotect, mremap, msync, munlock, munmap,
> > remap_file_pages, shmat and shmdt.
> >
> > This is done by untagging pointers passed to these syscalls in the
> > prologues of their handlers.
>
> I'll go through them one by one to see if we can tighten the expected
> ABI while having the MTE in mind.
>
> > diff --git a/arch/arm64/kernel/sys.c b/arch/arm64/kernel/sys.c
> > index b44065fb1616..933bb9f3d6ec 100644
> > --- a/arch/arm64/kernel/sys.c
> > +++ b/arch/arm64/kernel/sys.c
> > @@ -35,10 +35,33 @@ SYSCALL_DEFINE6(mmap, unsigned long, addr, unsigned long, len,
> >  {
> >       if (offset_in_page(off) != 0)
> >               return -EINVAL;
> > -
> > +     addr = untagged_addr(addr);
> >       return ksys_mmap_pgoff(addr, len, prot, flags, fd, off >> PAGE_SHIFT);
> >  }
>
> If user passes a tagged pointer to mmap() and the address is honoured
> (or MAP_FIXED is given), what is the expected return pointer? Does it
> need to be tagged with the value from the hint?

For HWASan the most convenient would be to use the tag from the hint.
But since in the TBI (not MTE) mode the kernel has no idea what
meaning userspace assigns to pointer tags, perhaps it should not try
to guess, and should return raw (zero-tagged) address instead.

> With MTE, we may want to use this as a request for the default colour of
> the mapped pages (still under discussion).

I like this - and in that case it would make sense to return the
pointer that can be immediately dereferenced without crashing the
process, i.e. with the matching tag.

> > +SYSCALL_DEFINE6(arm64_mmap_pgoff, unsigned long, addr, unsigned long, len,
> > +             unsigned long, prot, unsigned long, flags,
> > +             unsigned long, fd, unsigned long, pgoff)
> > +{
> > +     addr = untagged_addr(addr);
> > +     return ksys_mmap_pgoff(addr, len, prot, flags, fd, pgoff);
> > +}
>
> We don't have __NR_mmap_pgoff on arm64.
>
> > +SYSCALL_DEFINE5(arm64_mremap, unsigned long, addr, unsigned long, old_len,
> > +             unsigned long, new_len, unsigned long, flags,
> > +             unsigned long, new_addr)
> > +{
> > +     addr = untagged_addr(addr);
> > +     new_addr = untagged_addr(new_addr);
> > +     return ksys_mremap(addr, old_len, new_len, flags, new_addr);
> > +}
>
> Similar comment as for mmap(), do we want the tag from new_addr to be
> preserved? In addition, should we check that the two tags are identical
> or mremap() should become a way to repaint a memory region?
>
> > +SYSCALL_DEFINE2(arm64_munmap, unsigned long, addr, size_t, len)
> > +{
> > +     addr = untagged_addr(addr);
> > +     return ksys_munmap(addr, len);
> > +}
>
> This looks fine.
>
> > +SYSCALL_DEFINE1(arm64_brk, unsigned long, brk)
> > +{
> > +     brk = untagged_addr(brk);
> > +     return ksys_brk(brk);
> > +}
>
> I wonder whether brk() should simply not accept tags, and should not
> return them (similar to the prctl(PR_SET_MM) discussion). We could
> document this in the ABI requirements.
>
> > +SYSCALL_DEFINE5(arm64_get_mempolicy, int __user *, policy,
> > +             unsigned long __user *, nmask, unsigned long, maxnode,
> > +             unsigned long, addr, unsigned long, flags)
> > +{
> > +     addr = untagged_addr(addr);
> > +     return ksys_get_mempolicy(policy, nmask, maxnode, addr, flags);
> > +}
> > +
> > +SYSCALL_DEFINE3(arm64_madvise, unsigned long, start,
> > +             size_t, len_in, int, behavior)
> > +{
> > +     start = untagged_addr(start);
> > +     return ksys_madvise(start, len_in, behavior);
> > +}
> > +
> > +SYSCALL_DEFINE6(arm64_mbind, unsigned long, start, unsigned long, len,
> > +             unsigned long, mode, const unsigned long __user *, nmask,
> > +             unsigned long, maxnode, unsigned int, flags)
> > +{
> > +     start = untagged_addr(start);
> > +     return ksys_mbind(start, len, mode, nmask, maxnode, flags);
> > +}
> > +
> > +SYSCALL_DEFINE2(arm64_mlock, unsigned long, start, size_t, len)
> > +{
> > +     start = untagged_addr(start);
> > +     return ksys_mlock(start, len, VM_LOCKED);
> > +}
> > +
> > +SYSCALL_DEFINE2(arm64_mlock2, unsigned long, start, size_t, len)
> > +{
> > +     start = untagged_addr(start);
> > +     return ksys_mlock(start, len, VM_LOCKED);
> > +}
> > +
> > +SYSCALL_DEFINE2(arm64_munlock, unsigned long, start, size_t, len)
> > +{
> > +     start = untagged_addr(start);
> > +     return ksys_munlock(start, len);
> > +}
> > +
> > +SYSCALL_DEFINE3(arm64_mprotect, unsigned long, start, size_t, len,
> > +             unsigned long, prot)
> > +{
> > +     start = untagged_addr(start);
> > +     return ksys_mprotect_pkey(start, len, prot, -1);
> > +}
> > +
> > +SYSCALL_DEFINE3(arm64_msync, unsigned long, start, size_t, len, int, flags)
> > +{
> > +     start = untagged_addr(start);
> > +     return ksys_msync(start, len, flags);
> > +}
> > +
> > +SYSCALL_DEFINE3(arm64_mincore, unsigned long, start, size_t, len,
> > +             unsigned char __user *, vec)
> > +{
> > +     start = untagged_addr(start);
> > +     return ksys_mincore(start, len, vec);
> > +}
>
> These look fine.
>
> > +SYSCALL_DEFINE5(arm64_remap_file_pages, unsigned long, start,
> > +             unsigned long, size, unsigned long, prot,
> > +             unsigned long, pgoff, unsigned long, flags)
> > +{
> > +     start = untagged_addr(start);
> > +     return ksys_remap_file_pages(start, size, prot, pgoff, flags);
> > +}
>
> While this has been deprecated for some time, I presume user space still
> invokes it?
>
> > +SYSCALL_DEFINE3(arm64_shmat, int, shmid, char __user *, shmaddr, int, shmflg)
> > +{
> > +     shmaddr = untagged_addr(shmaddr);
> > +     return ksys_shmat(shmid, shmaddr, shmflg);
> > +}
> > +
> > +SYSCALL_DEFINE1(arm64_shmdt, char __user *, shmaddr)
> > +{
> > +     shmaddr = untagged_addr(shmaddr);
> > +     return ksys_shmdt(shmaddr);
> > +}
>
> Do we actually want to allow shared tagged memory? Who's going to tag
> it? If not, we can document it as not supported.
>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
