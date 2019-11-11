Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 363DCF79CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 18:23:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=947qGLW618ECjTYIi0M8exaD2eElYPs+wjktP671Rwk=; b=gaJtKTSwxTUJSA
	xXNnFM/HffWFRYZl8ggaxtFUmO5KDW5k2ZeRWeR8kO2QjraBzHu/lWulP69zab19yDZsgDyydX3AW
	1QwjtS1yaxjOx+aiuRzuujw0XbDv4N4bjWhkjRq6NVgGs250agmT/vpy4GPm64SDtvufLNicUSCpL
	YKJ5d4uVEcA17uck8qq7gkPg5nHoyYpg8wZ1ZBBUJtpuHUF7L5ewaX5o1h7ipUroZ24yBY1nwSmUa
	ysfQwRjdsEHtQ0sk7AhtGZp4IjIza64FGKhrCkYX3h2t75RI53Ds27mMr5UW8mG+j79q4Ok9yaEqu
	kuIcXjP3RJjKQ6fHEmIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUDPG-0006Uy-0J; Mon, 11 Nov 2019 17:23:14 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUDP9-0006U9-1k
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 17:23:08 +0000
Received: by mail-pg1-x541.google.com with SMTP id z188so3923527pgb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 09:23:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yAajaC8HCWYzucX9F7lpdzKRK9O4DP5SS69z8MpuzC8=;
 b=X/LzmRNI+PAfGCx7iOXc7jITwTbPHloj6W9cE45iZE62pceyrxHDPEHiavfj9tEFm4
 3ssTDoHViE0PIaYRTxiES+N/vQ0V6XBCRSxJLkNHA5EmXVvGMUKq6TH0JVEbtbv7eJIs
 og7HVJoMSxXZSuRdEpfAiyzG2OcgsCx2ssepg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yAajaC8HCWYzucX9F7lpdzKRK9O4DP5SS69z8MpuzC8=;
 b=oMo1QBeU3/7amtabuhZQFqZ69xpK+Tl96aCcFREC9hYtgno7UJ9sII0lJnZcCQJldv
 /pEsguGraDOnip86eR5xW5Bg50+fmCXn1KukOGWUPXpDzyJXA0ChHijg4iQM7olg5xgQ
 AUB3uRX4BMpTLHoOMoRgVm+QKRj7SeRGzqBnt9F/BJLeCtxF0AtUgP4JbJ5XVxqcfT3f
 Plj0T9qwgX9NM8jjwBvqlpEsU+IbLJR5kCFUIoFZmxQBfCJK6hsYnlGMz92+64tVlO6b
 Rvp9WDkfKC2oMio4T+FhvaTGmMFnAzEQ1GDiwStP9XbbPQKkgOIblGV9VBlGczDywP9u
 HkCQ==
X-Gm-Message-State: APjAAAWJjb5YA/J8mTgEnYWTD++KvmDbg9jgyjTBP6eCh9ij+QFw4xUn
 1Odinq8F01jI8HbdnYBpth/WYw==
X-Google-Smtp-Source: APXvYqyYRSzpwUPLuEiDxWQRl2mmu7HM3K81RSwKffyFA1Sp64Zbaq8qhH85VUnK4TNVxH3gOyo1gQ==
X-Received: by 2002:a17:90a:5d0e:: with SMTP id s14mr85161pji.55.1573492985697; 
 Mon, 11 Nov 2019 09:23:05 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o15sm22800000pgn.49.2019.11.11.09.23.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 09:23:04 -0800 (PST)
Date: Mon, 11 Nov 2019 09:23:03 -0800
From: Kees Cook <keescook@chromium.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 11/29] vmlinux.lds.h: Replace RODATA with RO_DATA
Message-ID: <201911110922.17A2112B0@keescook>
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-12-keescook@chromium.org>
 <CAMuHMdXfPyti1wFBb0hhf3CeDSQ=zVv7cV-taeYCmDswMQkXPQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXfPyti1wFBb0hhf3CeDSQ=zVv7cV-taeYCmDswMQkXPQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_092307_095103_A4C0EDEB 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Michal Simek <monstr@monstr.eu>,
 the arch/x86 maintainers <x86@kernel.org>,
 "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 linux-c6x-dev@linux-c6x.org, Arnd Bergmann <arnd@arndb.de>,
 linux-xtensa@linux-xtensa.org, Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Borislav Petkov <bp@alien8.de>,
 Parisc List <linux-parisc@vger.kernel.org>, Andy Lutomirski <luto@kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 05:58:06PM +0100, Geert Uytterhoeven wrote:
> Hi Kees,
> 
> On Fri, Oct 11, 2019 at 2:07 AM Kees Cook <keescook@chromium.org> wrote:
> > There's no reason to keep the RODATA macro: replace the callers with
> > the expected RO_DATA macro.
> >
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  arch/alpha/kernel/vmlinux.lds.S      | 2 +-
> >  arch/ia64/kernel/vmlinux.lds.S       | 2 +-
> >  arch/microblaze/kernel/vmlinux.lds.S | 2 +-
> >  arch/mips/kernel/vmlinux.lds.S       | 2 +-
> >  arch/um/include/asm/common.lds.S     | 2 +-
> >  arch/xtensa/kernel/vmlinux.lds.S     | 2 +-
> >  include/asm-generic/vmlinux.lds.h    | 4 +---
> >  7 files changed, 7 insertions(+), 9 deletions(-)
> 
> Somehow you missed:
> 
>     arch/m68k/kernel/vmlinux-std.lds:  RODATA
>     arch/m68k/kernel/vmlinux-sun3.lds:      RODATA

Argh. I've sent a patch; sorry and thanks for catching this. For my own
cross-build testing, which defconfig targets will hit these two linker
scripts?

-Kees

> 
> Leading to build failures in next-20191111:
> 
>     /opt/cross/kisskb/gcc-4.6.3-nolibc/m68k-linux/bin/m68k-linux-ld:./arch/m68k/kernel/vmlinux.lds:29:
> syntax error
>     make[1]: *** [/kisskb/src/Makefile:1075: vmlinux] Error 1
> 
> Reported-by: noreply@ellerman.id.au
> http://kisskb.ellerman.id.au/kisskb/buildresult/14022846/
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
