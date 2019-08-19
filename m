Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E88948BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 17:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GTKpNMjUbRciCUnQSYTM5mSZ1gj+fX5i0czg55LTt9Q=; b=hvWFdEMZ530lub
	bMA27AzrHAv3/wghgxok4dkXkBzHITgniQHklCHPWRuzDFfaz01jCpDTMBDHT1N5iBxbt+JNSsi5J
	KBS3jM9VmRy/FGepLNkcVGYXWL2bnJunqE0VKX588IfT3H6RBtODlnhXaUKDpmraiyirLd3Tsf5zm
	9pWPd9f08XTwYTxLb2hxdDDDIiA5XVknGvo5jW/7vtjNvR80MlUctOrERo4S4VRfAyyOxCcAXV9rJ
	tZOk4rfwubwjfC4X1JCUTOH0RuD0Co7VEODdUKeADSw/ou8bar4hWP2sVwPEw673DN3ioRlN/Ldjk
	UXurBzWTwt0rElQxq2Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzjr7-0002rk-Ob; Mon, 19 Aug 2019 15:46:01 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzjqw-0002qM-Qu
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 15:45:52 +0000
Received: by mail-pg1-x544.google.com with SMTP id n4so1448983pgv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 08:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XtYpFyhBgTCiaGChS6+kaxar4vStZcnCYRWo71+/RtE=;
 b=lkS0EhBoToJ8+dJ5+nnxpdrWvVmMHHZI7bNv0YOTEttc921AvasCizSuRflFNbq1Xj
 Lpzl84ZZA2OQ6Fl0mVnvOJyIXEqYXu5ps1wPAfD33F9fSphuk4sFgI4SIKqe5ey5Tr57
 G8XUL4SKezAspF0tskCc378nq+6tOXS5v2s6iY1fnPR8AmhGw3iI/NsuI0cW+A20hgEk
 y05U8D//d6jldI/IInc3BskYQojRq9cgHqOL/Sxxioz1XALAEdpp/8OiQun/RJSUXJyo
 GJMLBdsjaVvdZjcjp2MQ4TMMJwlzyVeEF08ndFUH3hSYiwHwBHn4nNJfq4wngD77uKww
 /CPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XtYpFyhBgTCiaGChS6+kaxar4vStZcnCYRWo71+/RtE=;
 b=PXf6KZ+hDkpa2TJWZ+eABqJh13yyI6pCNe6BbJA02pSjKmiDDHZ0rQqyk9Pfb9kJna
 X17jJR+dVNGWGYOCAs7z0GMxEkqkB3vJ+hiQTXB7j/psJrg36C5FjHQjyixnZ4GDBGIs
 9FTHliSLl7UHsQ4OuWS0AUx5p8yzP9C9OYYvY5YM4m0k/2CClhtDe+SCwH/tvj0/cELf
 SromFcZl0qRo1U+vgMaWlTfTuNGR4cothwhel2synAMqJLPnWl1s+aiWrAlHs6kKuafE
 W74cQEvSitFjMW1h1cQ+X1BOqPRIdxOYy12J2k2tV7iUHOl08oyrVv3vhaQtWfGRKo1W
 2sVw==
X-Gm-Message-State: APjAAAXnyPj1FW+yjzWkUcyWd8+nnr0WIunrgH2tK56H2QywYJSCYKgN
 XYzAi5kSfVUj7aqN09fJt+ra58S9zXYfs7s4Bx/wcQ==
X-Google-Smtp-Source: APXvYqz6VTqoLf1MfWlpYT4kff14E1OwztGKr414bguuFTgjh6si0OD8mf+UDVjfdzyW4l952foknf+zoYxofSvLevs=
X-Received: by 2002:aa7:9790:: with SMTP id o16mr25133292pfp.51.1566229549716; 
 Mon, 19 Aug 2019 08:45:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190815154403.16473-1-catalin.marinas@arm.com>
 <20190815154403.16473-2-catalin.marinas@arm.com>
In-Reply-To: <20190815154403.16473-2-catalin.marinas@arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 19 Aug 2019 17:45:38 +0200
Message-ID: <CAAeHK+z6y4_rSH8b8Q=yMmNZYd_bsmMo2XPP0DO-74+=XPPrMg@mail.gmail.com>
Subject: Re: [PATCH v8 1/5] mm: untag user pointers in mmap/munmap/mremap/brk
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_084550_867014_69A5E782 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Dave Hansen <dave.hansen@intel.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 5:44 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> There isn't a good reason to differentiate between the user address
> space layout modification syscalls and the other memory
> permission/attributes ones (e.g. mprotect, madvise) w.r.t. the tagged
> address ABI. Untag the user addresses on entry to these functions.
>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>

Acked-by: Andrey Konovalov <andreyknvl@google.com>

> ---
>  mm/mmap.c   | 5 +++++
>  mm/mremap.c | 6 +-----
>  2 files changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/mm/mmap.c b/mm/mmap.c
> index 7e8c3e8ae75f..b766b633b7ae 100644
> --- a/mm/mmap.c
> +++ b/mm/mmap.c
> @@ -201,6 +201,8 @@ SYSCALL_DEFINE1(brk, unsigned long, brk)
>         bool downgraded = false;
>         LIST_HEAD(uf);
>
> +       brk = untagged_addr(brk);
> +
>         if (down_write_killable(&mm->mmap_sem))
>                 return -EINTR;
>
> @@ -1573,6 +1575,8 @@ unsigned long ksys_mmap_pgoff(unsigned long addr, unsigned long len,
>         struct file *file = NULL;
>         unsigned long retval;
>
> +       addr = untagged_addr(addr);
> +
>         if (!(flags & MAP_ANONYMOUS)) {
>                 audit_mmap_fd(fd, flags);
>                 file = fget(fd);
> @@ -2874,6 +2878,7 @@ EXPORT_SYMBOL(vm_munmap);
>
>  SYSCALL_DEFINE2(munmap, unsigned long, addr, size_t, len)
>  {
> +       addr = untagged_addr(addr);
>         profile_munmap(addr);
>         return __vm_munmap(addr, len, true);
>  }
> diff --git a/mm/mremap.c b/mm/mremap.c
> index 64c9a3b8be0a..1fc8a29fbe3f 100644
> --- a/mm/mremap.c
> +++ b/mm/mremap.c
> @@ -606,12 +606,8 @@ SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
>         LIST_HEAD(uf_unmap_early);
>         LIST_HEAD(uf_unmap);
>
> -       /*
> -        * Architectures may interpret the tag passed to mmap as a background
> -        * colour for the corresponding vma. For mremap we don't allow tagged
> -        * new_addr to preserve similar behaviour to mmap.
> -        */
>         addr = untagged_addr(addr);
> +       new_addr = untagged_addr(new_addr);
>
>         if (flags & ~(MREMAP_FIXED | MREMAP_MAYMOVE))
>                 return ret;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
