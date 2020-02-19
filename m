Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F5616440F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 13:19:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHXA7I604BFfjSq1e++VY4M9x++ePpbAVjVNoUXW4KE=; b=AYC999TO8l3n7W
	xnyM++YoLBxvC0qeWLlJCBNLqpivJIMQY3uIsTu8US7J6c6zd9biYld3uDeXv/1k062NDc5BnOLl5
	KVfsa3tgfhDw7VI7gbSQ8o/CzcQPl0fO53kWf7VfZYVxtljrQiAZSkLSyJxK86d6Und77OiMlnxNc
	YeZGuOjCUlInpEAsBJI1WGpOgtfh4t7Lhxa3Du1Dwzeur8wceTagCFrW7B4dkeszTtR3wceNrgQfv
	0BEnb6o3BvHxKOORbP8eFx4wcMo1USKan4N17CsPDC2G8GGEEG4JYveVITJYj6lfnLBfPXpArH9Ky
	QQbOkT6Y1XYk5v5WCh5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4OJl-0006td-J8; Wed, 19 Feb 2020 12:19:05 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4OJc-0006tJ-GL
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 12:18:57 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so9640plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 04:18:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w3P9TdBjFh0vATkgitLWzvzr6wzTEMeglnTFjOVQk1I=;
 b=XerOxm05Ox54idaV/ojpa+K64U4Ude9W3bd91UbCClypYPfo7nYltMf4Vxx7wmh/jh
 rhE5IFQCHvBGufUyG76zEfBLuxfhCOr2x2MLX4HX3oOK/5lkxX1OKvN1eQBZdVfxjFwC
 cTS7yPv9EkIGyqd23njgAUV3rSETJNXURwEzqyEwivJ9wSWTlhmSggw2pQyOC+/zgreu
 pp0frEdCcOHneTIZtMpqgKa0NKq8gWu3Jhn8vHkC0D9hM0IIlWhCbBciem3awRct3arw
 P2f9PPW8hJnscmwnnVk8fnzZZQ7y+tNTwuHlHeHK6ftoH2878zg4VCwH5Z8vSHSSd2dz
 Lb2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w3P9TdBjFh0vATkgitLWzvzr6wzTEMeglnTFjOVQk1I=;
 b=mic1EYxUhP55NS6hMXMDD9xawmlCvhFX7YWAJzg21hD7pJzQyifIVo/YBzc+aCJayi
 syVJkTWl2fjqaOttf1TFKNZ8+F483lHbZ0FoN1uHARn9EXwIrjlvldqhsYywKdc5Phf3
 O2tNZ1lGJ+vsETaQ1/lhpJsYdXDS7WIb/lPSDAy0HEPo8US9OhuKPrXikevo5Xu7DkxY
 m0T7i6QmlgsPeNofJbx+pkNE1i1kjT/5pPadHMc+PaxSeYaCJ8uVkDFmdidthzcQyCgA
 vhnNpv8wzBCfRPZi7uSJ1v8ysX+tUBPoJvZF1hWiZOkScEBLXUW7SzhONY5tz4Wa64gN
 bVcw==
X-Gm-Message-State: APjAAAU1DsziIDre+RiQpqL1nTiSadtNOuRkNS+eQMHkYcdYWJILbME/
 LltwXgFV7GqZwgvrBIix7/mJxKeps8QoOlAgJjJXXA==
X-Google-Smtp-Source: APXvYqyW05FD/DL2/IoTnDevuDn+1c13YIyPNoh/rgaR5TH6AObZA4byaPNdHLew5ygfRbzqFij/FB9O/YlOBxLQPD4=
X-Received: by 2002:a17:902:8486:: with SMTP id
 c6mr26696192plo.147.1582114735626; 
 Wed, 19 Feb 2020 04:18:55 -0800 (PST)
MIME-Version: 1.0
References: <20200218122310.72710-1-catalin.marinas@arm.com>
In-Reply-To: <20200218122310.72710-1-catalin.marinas@arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 19 Feb 2020 13:18:44 +0100
Message-ID: <CAAeHK+xNm1vv6EdfAYFbJkyh_3-hVNeWT=m14sYsNwtOLByF2A@mail.gmail.com>
Subject: Re: [PATCH] mm: Avoid creating virtual address aliases in
 brk()/mmap()/mremap()
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_041856_568816_5F716776 
X-CRM114-Status: GOOD (  21.79  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Evgenii Stepanov <eugenis@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 1:23 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> Currently the arm64 kernel ignores the top address byte passed to brk(),
> mmap() and mremap(). When the user is not aware of the 56-bit address
> limit or relies on the kernel to return an error, untagging such
> pointers has the potential to create address aliases in user-space.
> Passing a tagged address to munmap(), madvise() is permitted since the
> tagged pointer is expected to be inside an existing mapping.
>
> Remove untagging in the above functions by partially reverting commit
> ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk"). In
> addition, update the arm64 tagged-address-abi.rst document accordingly.
>
> Fixes: ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk")
> Cc: <stable@vger.kernel.org> # 5.4.x-
> Cc: Andrey Konovalov <andreyknvl@google.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Florian Weimer <fweimer@redhat.com>
> Reported-by: Victor Stinner <vstinner@redhat.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>

Acked-by: Andrey Konovalov <andreyknvl@google.com>

> ---
>  Documentation/arm64/tagged-address-abi.rst | 7 +++++--
>  mm/mmap.c                                  | 4 ----
>  mm/mremap.c                                | 1 -
>  3 files changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/Documentation/arm64/tagged-address-abi.rst b/Documentation/arm64/tagged-address-abi.rst
> index d4a85d535bf9..1771a8b5712e 100644
> --- a/Documentation/arm64/tagged-address-abi.rst
> +++ b/Documentation/arm64/tagged-address-abi.rst
> @@ -44,8 +44,11 @@ The AArch64 Tagged Address ABI has two stages of relaxation depending
>  how the user addresses are used by the kernel:
>
>  1. User addresses not accessed by the kernel but used for address space
> -   management (e.g. ``mmap()``, ``mprotect()``, ``madvise()``). The use
> -   of valid tagged pointers in this context is always allowed.
> +   management (e.g. ``mprotect()``, ``madvise()``). The use of valid
> +   tagged pointers in this context is allowed with the exception of
> +   ``brk()``, ``mmap()`` and the ``new_address`` argument to
> +   ``mremap()`` as these have the potential of aliasing with existing
> +   user addresses.
>
>  2. User addresses accessed by the kernel (e.g. ``write()``). This ABI
>     relaxation is disabled by default and the application thread needs to
> diff --git a/mm/mmap.c b/mm/mmap.c
> index 6756b8bb0033..d681a20eb4ea 100644
> --- a/mm/mmap.c
> +++ b/mm/mmap.c
> @@ -195,8 +195,6 @@ SYSCALL_DEFINE1(brk, unsigned long, brk)
>         bool downgraded = false;
>         LIST_HEAD(uf);
>
> -       brk = untagged_addr(brk);
> -
>         if (down_write_killable(&mm->mmap_sem))
>                 return -EINTR;
>
> @@ -1557,8 +1555,6 @@ unsigned long ksys_mmap_pgoff(unsigned long addr, unsigned long len,
>         struct file *file = NULL;
>         unsigned long retval;
>
> -       addr = untagged_addr(addr);
> -
>         if (!(flags & MAP_ANONYMOUS)) {
>                 audit_mmap_fd(fd, flags);
>                 file = fget(fd);
> diff --git a/mm/mremap.c b/mm/mremap.c
> index 122938dcec15..af363063ea23 100644
> --- a/mm/mremap.c
> +++ b/mm/mremap.c
> @@ -607,7 +607,6 @@ SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
>         LIST_HEAD(uf_unmap);
>
>         addr = untagged_addr(addr);
> -       new_addr = untagged_addr(new_addr);
>
>         if (flags & ~(MREMAP_FIXED | MREMAP_MAYMOVE))
>                 return ret;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
