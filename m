Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB01AE028
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 23:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hE/cAR5as6Bc2UXPtOkJuQ5XT9CugTz03BlXqfdM8pc=; b=nWz2LUrlva9a1s
	FrIHWox1ZN8MVhxt7uRNEq4hK+uq1ZUSUeORWDheUI/gLAAeRgS1NhDMc6FMG3aKjfIDQjW/6lNiI
	dCXV1J+myzRiThm7jnxn+9bSpXCfWeh8usjHZ6/xdm6x+otGzADhLvy5bqcyjOVHieN1+CliWz87p
	9XUQi2Jv9jV7HuUBaZbUMQsctR+5NrrwARef8ZQMcBMH5FDUQHYL2OLBHWxCoCOnZFd80NWMP/GhD
	TszQxGd4nShpzjPu374JiwgDRVyQp0OD+Wyktp6jnXGGhzzolzPYWGcT2krZpdxNQ34i6dzvYV2mj
	ZMq+5IhAfkfaPKa53szQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7QsH-0006OJ-4N; Mon, 09 Sep 2019 21:07:01 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Qs9-0006NA-Cj
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 21:06:55 +0000
Received: by mail-pl1-x642.google.com with SMTP id t11so7260265plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 14:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=riKo6lp6s32m30Qr1OuM/6ctx9ExTRYBLP18cJRIJKc=;
 b=rnbbday6+zqKqtJzL7kdSfqOtVVNO9paqYJ0Ox9KlDmF5LU57l+4RKji5Mu1lqpCPi
 /OQolm/rrp4zo/qHx2fjMwCX3MmSnR7dIS6wKJBumqmdgOiV7MrE4CZoYhILMQoQHOLu
 u7pj7ZLCUSDaxnxncGTLM29c9cS+RCplEPnPEdlsp12n2K+2VlyX+mAC24bJlulO6saD
 F3T3jc0XaS21+QqfDdTCKD6r6qI2L/MfhqtnCn0BKWXfLazcOkY0UB4dCK/f4jHiIMcq
 715OXpywPsGdlwxGNi+Mi4dD7OjfDLfNCcKon0HjpOUPkB/eNSmkXoWJa8Pxikrx9N2a
 VRIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=riKo6lp6s32m30Qr1OuM/6ctx9ExTRYBLP18cJRIJKc=;
 b=Ye0LV855ktAD8D++gD2x4A9YOjiZTxejIsJffR7BfgQnl8VpCtgMd6RXcZrWit78+k
 UhchYUxXEuvyveHvbNRaO8NptpDBXOAIuvvggSNn9XaQSXwlMkuoOAw1E9PkUXe+qIN4
 +0+gQNP21Sy0CrUuYK9eZHymeAyv6DSh3iOaqJL8N+K1Qv4kuw2MFn9G5rFMnErISXQP
 +oCvJtjvu0PAC29buchl5+jDUOj/Jowc2Z/t3rmbxsBykvK3kiwSW84WHdrR6cKq6Ri/
 o0m5GAWt7pMJvDlLMm/HgNjynDyz02LBF0qUXB7taJ3OmstSSWYwKZTs24lBcEQlHq4v
 M0eQ==
X-Gm-Message-State: APjAAAXpSWd2PZs/1EwMArzFEGn2k/t45gfGwf1ieO24oFzjnZXfmFly
 0K5yFWtf2BX83kBV7VOme9mh+r3I9oqqaSad+PisYQ==
X-Google-Smtp-Source: APXvYqy/HXdY9OL2gkrA422XUFe7Q/hC29B7zZsyKAfkb7hNIbPbGSjMizFmgYo6vbI3lkQYeU9SEQTepG8DdBAYW8E=
X-Received: by 2002:a17:902:d891:: with SMTP id
 b17mr5600711plz.119.1568063206716; 
 Mon, 09 Sep 2019 14:06:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190909202153.144970-1-arnd@arndb.de>
In-Reply-To: <20190909202153.144970-1-arnd@arndb.de>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 9 Sep 2019 14:06:36 -0700
Message-ID: <CAKwvOdn90naN2qLx6qBCii67HNOYeJmVqTKEKuUpXcTXLEEaLA@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_140653_434125_0A8D1955 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 9, 2019 at 1:21 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> when CONFIG_OPTIMIZE_INLINING is set.
> Clang then fails a compile-time assertion, because it cannot tell at
> compile time what the size of the argument is:
>
> mm/memcontrol.o: In function `__cmpxchg_mb':
> memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
> memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'
>
> Mark all of the cmpxchg() style functions as __always_inline to
> ensure that the compiler can see the result.

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm64/include/asm/cmpxchg.h | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
>
> diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> index a1398f2f9994..fd64dc8a235f 100644
> --- a/arch/arm64/include/asm/cmpxchg.h
> +++ b/arch/arm64/include/asm/cmpxchg.h
> @@ -19,7 +19,7 @@
>   * acquire+release for the latter.
>   */
>  #define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)      \
> -static inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)                \
> +static __always_inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)\
>  {                                                                              \
>         u##sz ret;                                                              \
>         unsigned long tmp;                                                      \
> @@ -62,7 +62,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
>  #undef __XCHG_CASE
>
>  #define __XCHG_GEN(sfx)                                                        \
> -static inline unsigned long __xchg##sfx(unsigned long x,               \
> +static __always_inline  unsigned long __xchg##sfx(unsigned long x,     \
>                                         volatile void *ptr,             \
>                                         int size)                       \
>  {                                                                      \
> @@ -103,8 +103,9 @@ __XCHG_GEN(_mb)
>  #define arch_xchg_release(...) __xchg_wrapper(_rel, __VA_ARGS__)
>  #define arch_xchg(...)         __xchg_wrapper( _mb, __VA_ARGS__)
>
> -#define __CMPXCHG_CASE(name, sz)                       \
> -static inline u##sz __cmpxchg_case_##name##sz(volatile void *ptr,      \
> +#define __CMPXCHG_CASE(name, sz)                                       \
> +static __always_inline u##sz                                           \
> +__cmpxchg_case_##name##sz(volatile void *ptr,                          \
>                                               u##sz old,                \
>                                               u##sz new)                \
>  {                                                                      \
> @@ -148,7 +149,7 @@ __CMPXCHG_DBL(_mb)
>  #undef __CMPXCHG_DBL
>
>  #define __CMPXCHG_GEN(sfx)                                             \
> -static inline unsigned long __cmpxchg##sfx(volatile void *ptr,         \
> +static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,        \
>                                            unsigned long old,           \
>                                            unsigned long new,           \
>                                            int size)                    \
> @@ -230,7 +231,7 @@ __CMPXCHG_GEN(_mb)
>  })
>
>  #define __CMPWAIT_CASE(w, sfx, sz)                                     \
> -static inline void __cmpwait_case_##sz(volatile void *ptr,             \
> +static __always_inline void __cmpwait_case_##sz(volatile void *ptr,    \
>                                        unsigned long val)               \
>  {                                                                      \
>         unsigned long tmp;                                              \
> @@ -255,7 +256,7 @@ __CMPWAIT_CASE( ,  , 64);
>  #undef __CMPWAIT_CASE
>
>  #define __CMPWAIT_GEN(sfx)                                             \
> -static inline void __cmpwait##sfx(volatile void *ptr,                  \
> +static __always_inline void __cmpwait##sfx(volatile void *ptr,         \
>                                   unsigned long val,                    \
>                                   int size)                             \
>  {                                                                      \
> --
> 2.20.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190909202153.144970-1-arnd%40arndb.de.



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
