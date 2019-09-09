Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CEFAE04E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 23:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPM4ATWq714HRr7yN3ESRIh9/E7iqxfU3GjGC8txmRA=; b=qyisME/k4ivSP7
	OTmkdn3JhFo5agqU0/Tjtin91GTbIqweSL0h00dcb3gUgrtFXFdWqvKiJ+0DSMtjhWX6ZUwhXJMGJ
	UdfuscyRv0afCg1ObZJtenqmSDFVJLE+3oNGEwhkuE2DW6Wy06cKIgehjYjuawqwqL8vxTZvLXDDE
	xmApY6+c/m5+nPad3BeIueMGep7cPR4Hel9H8DlxELszeSVdgJ+h44/u7uHrCUC4xKVa4JoC+lgOz
	2z8rGh3TtIYx82ikvBdQXdIK+k33L6D13BhwZvZwuwa9PG76kbrI1M+iiz0lwvL0r2GKb0iMR0NCv
	/wUhX8AxQk4Vn4HgruDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7RKV-0006KP-4O; Mon, 09 Sep 2019 21:36:11 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7RKM-0006K5-6h
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 21:36:04 +0000
Received: by mail-pl1-x644.google.com with SMTP id x20so1680287plm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 14:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AWfChiuUJemWX/xDu17NLd8EQGs1u1yuvhrocXkkuOg=;
 b=HooNS6LiLAXvF9NxFE+eZmqZRW7ToWinYSCthOx4HHhPgE/cRzd5jeOMn2yr5WiqfB
 WWlxDcwln3c9YsBFYGXWBlVEZ5flrg0DIwF8uyiFU1xecYdg0iM3B7HAOOG9dPpQXnQb
 xfeUvSxsNN2yfg5eHVNBw2aaE7XZvNv+LAE2fZb99cS3FC30B+OOmiFzjSvTfmOEPbul
 kmLdtJfpkj1ewRj4T47B1pgiuWnCGu/mCYZHCfP+iFQNfDHLyi3eGGgCva+7KRCA2qQk
 9XUmCDuEPWSrnKjgUXKCem2BUmdBQUY9f3Cq7S8+c4ZB7mK1YvHTvKzeO5bcxg9HomkM
 KujQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AWfChiuUJemWX/xDu17NLd8EQGs1u1yuvhrocXkkuOg=;
 b=e922a7czlJpOjibtoKAzbi/nBOIn/GjviDtjc/aDmANuYv4YWMCvb07JM9ACzM1Dap
 wj622Opfxio5jJUhHq9gDpt0BRRuN9pE/Cu9vZjVLb+beNAhlzk+JD031gPKsJqC6deH
 a9YrNp7OVhjMEOuF8k5EZ74zPcpNIV+nKvmdjpuhPvgMMmd2O8c4yctjsByAu8h5wRRK
 d2fuLiziNPIx9Bu/XpWD8BKcpLumSfjhNFtKA/47VQj228aZAtXitufsbhiZnrvnHnDY
 lQcQtONZ5zPc04p1plpx1XMAXYYwv4J8LyKk79ej8zHpeFTNGMyslpgkp3mPv7Vmr7gj
 edNQ==
X-Gm-Message-State: APjAAAWTJ/DMyKRWJ3hdOlETl0/xnbsIt8fB76rxjS8TlMk2Mcc4ZiY1
 M6QORZCoqm014UCKIjw+XRghwon5nxCD5nZvM+g7eg==
X-Google-Smtp-Source: APXvYqwkg+0VvgZLd1QcDeZiY87eDys4X4c+0f1blThj9icDKEd2DCXH7feptcBVwXIi9LLpUJncKLJuNiuB3WNbZ4E=
X-Received: by 2002:a17:902:8484:: with SMTP id
 c4mr26519733plo.223.1568064960627; 
 Mon, 09 Sep 2019 14:36:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190909202153.144970-1-arnd@arndb.de>
 <CAKwvOdn90naN2qLx6qBCii67HNOYeJmVqTKEKuUpXcTXLEEaLA@mail.gmail.com>
In-Reply-To: <CAKwvOdn90naN2qLx6qBCii67HNOYeJmVqTKEKuUpXcTXLEEaLA@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 9 Sep 2019 14:35:49 -0700
Message-ID: <CAKwvOdnnsQHkLG02oa2hkP8JDEiqnaH_xsxLrWBxSs0bvZetsQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_143602_276298_BF4A4E46 
X-CRM114-Status: GOOD (  24.27  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 9, 2019 at 2:06 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, Sep 9, 2019 at 1:21 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> > when CONFIG_OPTIMIZE_INLINING is set.
> > Clang then fails a compile-time assertion, because it cannot tell at
> > compile time what the size of the argument is:
> >
> > mm/memcontrol.o: In function `__cmpxchg_mb':
> > memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
> > memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'
> >
> > Mark all of the cmpxchg() style functions as __always_inline to
> > ensure that the compiler can see the result.
>
> Acked-by: Nick Desaulniers <ndesaulniers@google.com>

Also, I think a Link tag may be appropriate as I believe it fixes this report:

Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/648

>
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  arch/arm64/include/asm/cmpxchg.h | 15 ++++++++-------
> >  1 file changed, 8 insertions(+), 7 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> > index a1398f2f9994..fd64dc8a235f 100644
> > --- a/arch/arm64/include/asm/cmpxchg.h
> > +++ b/arch/arm64/include/asm/cmpxchg.h
> > @@ -19,7 +19,7 @@
> >   * acquire+release for the latter.
> >   */
> >  #define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)      \
> > -static inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)                \
> > +static __always_inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)\
> >  {                                                                              \
> >         u##sz ret;                                                              \
> >         unsigned long tmp;                                                      \
> > @@ -62,7 +62,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
> >  #undef __XCHG_CASE
> >
> >  #define __XCHG_GEN(sfx)                                                        \
> > -static inline unsigned long __xchg##sfx(unsigned long x,               \
> > +static __always_inline  unsigned long __xchg##sfx(unsigned long x,     \
> >                                         volatile void *ptr,             \
> >                                         int size)                       \
> >  {                                                                      \
> > @@ -103,8 +103,9 @@ __XCHG_GEN(_mb)
> >  #define arch_xchg_release(...) __xchg_wrapper(_rel, __VA_ARGS__)
> >  #define arch_xchg(...)         __xchg_wrapper( _mb, __VA_ARGS__)
> >
> > -#define __CMPXCHG_CASE(name, sz)                       \
> > -static inline u##sz __cmpxchg_case_##name##sz(volatile void *ptr,      \
> > +#define __CMPXCHG_CASE(name, sz)                                       \
> > +static __always_inline u##sz                                           \
> > +__cmpxchg_case_##name##sz(volatile void *ptr,                          \
> >                                               u##sz old,                \
> >                                               u##sz new)                \
> >  {                                                                      \
> > @@ -148,7 +149,7 @@ __CMPXCHG_DBL(_mb)
> >  #undef __CMPXCHG_DBL
> >
> >  #define __CMPXCHG_GEN(sfx)                                             \
> > -static inline unsigned long __cmpxchg##sfx(volatile void *ptr,         \
> > +static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,        \
> >                                            unsigned long old,           \
> >                                            unsigned long new,           \
> >                                            int size)                    \
> > @@ -230,7 +231,7 @@ __CMPXCHG_GEN(_mb)
> >  })
> >
> >  #define __CMPWAIT_CASE(w, sfx, sz)                                     \
> > -static inline void __cmpwait_case_##sz(volatile void *ptr,             \
> > +static __always_inline void __cmpwait_case_##sz(volatile void *ptr,    \
> >                                        unsigned long val)               \
> >  {                                                                      \
> >         unsigned long tmp;                                              \
> > @@ -255,7 +256,7 @@ __CMPWAIT_CASE( ,  , 64);
> >  #undef __CMPWAIT_CASE
> >
> >  #define __CMPWAIT_GEN(sfx)                                             \
> > -static inline void __cmpwait##sfx(volatile void *ptr,                  \
> > +static __always_inline void __cmpwait##sfx(volatile void *ptr,         \
> >                                   unsigned long val,                    \
> >                                   int size)                             \
> >  {                                                                      \
> > --
> > 2.20.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190909202153.144970-1-arnd%40arndb.de.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
