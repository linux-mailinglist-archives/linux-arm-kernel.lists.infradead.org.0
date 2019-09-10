Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC680AE7CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 12:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYyGbwopwR8gEBEqdMtWPDMXz0xl/s+XtuuHIeiNAIo=; b=WqE2H3TlQixrqd
	IHTSXFU3UOfcx65IUUk0OTFd0CMynn2GvnO3v19k+fuutGXqXH7sXGOqIEEvOopBI0nwE3RC7hgUw
	vG2xhok2W/+jb/beNxCBbUdFyBPpeOx3cYUg65+w5C9WDI6KG1kpmXg5y0WgsRQ5e9c82mkftAIUZ
	tIwYB4DgQoxC9PqqR9uRYbZ30rmIKsk4aP/usJu9aNnpli0IHWUr/IEueRBVLnjBqOMobe1hnApLQ
	dljRY5QHXXZKj8opdHw/EMjRYwtPH6t5nHmjZ/mL/Ajdn0Nizcp24xWzkhArV79uhQcZNfaMbPflW
	9RG/dwLBOZGJ1P4LUXvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7dE1-0005EJ-QR; Tue, 10 Sep 2019 10:18:17 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7dDv-0005DW-0V
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 10:18:13 +0000
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com
 [209.85.221.172]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x8AAHueN011443
 for <linux-arm-kernel@lists.infradead.org>; Tue, 10 Sep 2019 19:17:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x8AAHueN011443
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1568110677;
 bh=yIKQfh97GgxHjqDfeFwoaAFGiMM6pmiH8tsXc3yeVNw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qcXNzlf0KcUbgOr3KW95A3rcl0cUA+VpAOeAMVZzYVAUb/lSyUpg84Xk0PZCcQ/L8
 1i1yxRELBst0CCKtXFJog61y3lndYOyJcp+RZsiBeK6p9FPi5DAIUDmSKs0EH6Mkqr
 T0jjlnf9qUUCsbMRa5n+HsgxeqG6zH+tGJzGbeyPZhpXrX9hRqzRneUWzwkWuw6gdW
 HPT+y5fo15tbWvu78wWNJ8G+4SLDhxu5orDsd5iQlWX1FLT5QudK5u/sGXXcuimz3Q
 eAH8eplTtqkBY5FVXUlYFAbka7cSVnwKP6RBTBtAhQWSJ3mj0o7mE7QS9ic+yb0LmG
 cFR92SJOcZOPg==
X-Nifty-SrcIP: [209.85.221.172]
Received: by mail-vk1-f172.google.com with SMTP id d126so1322799vkb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 03:17:56 -0700 (PDT)
X-Gm-Message-State: APjAAAUCNRRGWlGPw6LPvbPCVmzfyKAz5qKVdvxRKzJnRduH+Pl9keop
 kcOBsk4wIP50doVVWTnfdQiSAGeRkYZLVSqAcOA=
X-Google-Smtp-Source: APXvYqy/cswSnc8WfFFL71roXbz40cEs77mBG+d9RGmyXNZx/2NEp/U4gXNVKHOOAIEYpjdCWmMQjdyo+yofpY8FAww=
X-Received: by 2002:a1f:60c2:: with SMTP id u185mr1443841vkb.0.1568110675632; 
 Tue, 10 Sep 2019 03:17:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190909202153.144970-1-arnd@arndb.de>
 <20190910092324.GI9720@e119886-lin.cambridge.arm.com>
 <CAK8P3a2Vk+KSUGJyPTRuLPD=KPEAR43SZ1ofB6k+KeQi3fSERw@mail.gmail.com>
In-Reply-To: <CAK8P3a2Vk+KSUGJyPTRuLPD=KPEAR43SZ1ofB6k+KeQi3fSERw@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 10 Sep 2019 19:17:19 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQbjPhDqN9ZeC_qnxzMAhPdrSpG4te0HmRrnxuuM6bquw@mail.gmail.com>
Message-ID: <CAK7LNAQbjPhDqN9ZeC_qnxzMAhPdrSpG4te0HmRrnxuuM6bquw@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_031811_265956_A2B7D907 
X-CRM114-Status: GOOD (  24.14  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 6:38 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Tue, Sep 10, 2019 at 11:23 AM Andrew Murray <andrew.murray@arm.com> wrote:
>
> >
> > >  arch/arm64/include/asm/cmpxchg.h | 15 ++++++++-------
> > >  1 file changed, 8 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> > > index a1398f2f9994..fd64dc8a235f 100644
> > > --- a/arch/arm64/include/asm/cmpxchg.h
> > > +++ b/arch/arm64/include/asm/cmpxchg.h
> > > @@ -19,7 +19,7 @@
> > >   * acquire+release for the latter.
> > >   */
> > >  #define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)    \
> > > -static inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)              \
> > > +static __always_inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)\
> >
> > This hunk isn't needed, there is no BUILD_BUG here.
>
> Right, I noticed this, but it seemed like a good idea regardless given the small
> size of the function compared with the overhead of a function call.  We clearly
> want these to be inlined all the time.


Generally speaking, this should be judged by the compiler, not by humans.
If the function size is quite small compared with the cost of function call,
the compiler will determine to inline it anyway.
(If the compiler's inlining heuristic is not good, we should fix the compiler.)

So, I personally agree with Andrew Murray.
We should use __always_inline only when we must to do so.

Masahiro Yamada



>
> Same for the others.
>
> > Alternatively is it possible to replace the BUILD_BUG's with something else?
> >
> > I think because we use BUILD_BUG at the end of a switch statement, we make
> > the assumption that size is known at compile time, for this reason we should
> > ensure the function containing the BUILD_BUG is __always_inline.
> >
> > Looking across the kernel where BUILD_BUG is used as a default in a switch
> > statment ($ git grep -B 3 BUILD_BUG\( | grep default), most instances are
> > within macros, but many are found in an __always_inline function:
> >
> > arch/x86/kvm/cpuid.h
> > mm/kasan/generic.c
> >
> > Though some are not:
> >
> > include/linux/signal.h
> > arch/arm64/include/asm/arm_dsu/pmu.h
> >
> > I wonder if there may be a latent mole ready to whack with pmu.h?
>
> Right, it can't hurt to annotate those as well. I actually have another
> fixup for linux/signal.h that I would have to revisit at some point.
> See https://bugs.llvm.org/show_bug.cgi?id=38789, I think this is
> fixed with clang-9 now, but maybe not with clang-8.
>
>       Arnd



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
