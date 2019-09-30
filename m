Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 618B7C201F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 13:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/iZsfv+nLFyOdf2Q3s6JZFSHUxKiF3RssXDDBJhfbg=; b=lG4hwXIk5ybkqZ
	L5JmCAmJVvwFhoNikBEmt+Is2Bqz+svqIsjGBlfOpbhHtnEfw+e46K2tBi5hT3QbDn2G9KnN93v45
	ieGIkxvfOe3rGDKE6ya1JXl6Tfwoka5LK+iHRZAe7hySSd7ovIHv8M5mkBKzLnQkKe+ZB5Zc+j5TF
	Tff51TOU/JMrFbrBzqAbwNbixfE3ebhMKPmkJZvWJdFqjwj8vqzhahGrQzsjS8sm/O4q47FDKTNLD
	Qqi+zk97RnnxM8RBlRcH/lR8ejlTBs7CXP6TZM8VPHcijQnYMEMkDozUbWhvKzCXQgrnXsapjL+TX
	6MnD+1w1p25HBjKOQ2xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEuBa-0003FB-Vc; Mon, 30 Sep 2019 11:49:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEuBR-0003EJ-Ep
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 11:49:43 +0000
Received: by mail-wm1-x342.google.com with SMTP id b24so12353818wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 04:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A+7eTaynhvCbkjtKRzkBY0V/xhABFiAjacJiNwLb2X4=;
 b=zYgPw0ZIEQD+22W0wKzRM4F4v1JVLdqINHOR0XUILzGxKAdtc12r0TCDW0B8XDxph9
 81oJ2EqUkuJusLm2GrpLjGTlQCrKpzROiV/p1amFfOohA7nZxGC0Y2p6tkkVREa0b9pS
 tS2GSdQugj0QgdiLPu0s+PBnHV6CAg0kX8GfjW63nik3sW0isBaWNpGtAVu6LX/vQxW8
 X+dYcZCqq/25ZKrW9afeU6kRKZWnspUJgUEQvsqWI+1ISPFbYK+MURKXs6eIMb+YnlY2
 j65uHgK+M2FxrHYbYj58iwSZ+JLNpIFkDpX31jtcFRWP/L4EAqZaReFytMb8R6R3KXPb
 31FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A+7eTaynhvCbkjtKRzkBY0V/xhABFiAjacJiNwLb2X4=;
 b=fNV8dTyN+B5TW34iF7R7gesDo/e+Jq7yc0Nn22y0KBOqb0zfvV1jYniUHA4hg4mkGQ
 QrSgCVmMlO/R6lgQwI/yPEF8gkvtGP39dzx37ybtYnNgIGej5vwWjhoxPA+KYNoWxvol
 VKJBUz14i8pLPW91RXCQuMscH//AGJ8hIYEFOu4m/SKyhtYkLmN1g7G9Ava2jvKd7qgZ
 Cqk4YHH4/myJkZpDdVrJqkdnSpSYt81CrKDFxouQNkf1PApauNJFLCJj9n52B67EVpPw
 gC6ox4HWcE2NdOd6H8+wKu6VvEw/ZahpbK3y/Q4VTIIyFXinGCWjb1FtHdwvjaoZRMIm
 oIkA==
X-Gm-Message-State: APjAAAWh2+MD9TnOxmfNw6+lQDvJbCFhjEu7tNM6l4LVuHIm87Ec/lhc
 sodeXJZQ7fwmpP4Gx6iDM6JSvTQeQupXWXAHZP3d5w==
X-Google-Smtp-Source: APXvYqxtLMoOOipak3VdQ3oHGiqJLNT3ITe4aYlbV/3Nc5/ZXFDEHLR997hTeB8gu9mOaSS3O7lxuAkEed4NiGPjVhw=
X-Received: by 2002:a7b:cb55:: with SMTP id v21mr17046132wmj.53.1569844179797; 
 Mon, 30 Sep 2019 04:49:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
 <20190929173850.26055-10-ard.biesheuvel@linaro.org>
 <CAK7LNARxeskbf2g9YWxD9MvMdfmFjEu2uQXQiC0AansUOmij0A@mail.gmail.com>
In-Reply-To: <CAK7LNARxeskbf2g9YWxD9MvMdfmFjEu2uQXQiC0AansUOmij0A@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 30 Sep 2019 13:49:28 +0200
Message-ID: <CAKv+Gu-DDMyXnE8xe465tYSxyWdiS4MKzhF0izSczvKKz+989g@mail.gmail.com>
Subject: Re: [RFC PATCH 09/20] int128: move __uint128_t compiler test to
 Kconfig
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_044941_528968_B81E4E4B 
X-CRM114-Status: GOOD (  26.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marc Zyngier <maz@kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Eric Biggers <ebiggers@google.com>, Martin Willi <martin@strongswan.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Samuel Neves <sneves@dei.uc.pt>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Andy Lutomirski <luto@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Sep 2019 at 13:01, Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> On Mon, Sep 30, 2019 at 2:41 AM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
> >
> > In order to use 128-bit integer arithmetic in C code, the architecture
> > needs to have declared support for it by setting ARCH_SUPPORTS_INT128,
> > and it requires a version of the toolchain that supports this at build
> > time. This is why all existing tests for ARCH_SUPPORTS_INT128 also test
> > whether __SIZEOF_INT128__ is defined, since this is only the case for
> > compilers that can support 128-bit integers.
> >
> > Let's fold this additional test into the Kconfig declaration of
> > ARCH_SUPPORTS_INT128 so that we can also use the symbol in Makefiles,
> > e.g., to decide whether a certain object needs to be included in the
> > first place.
> >
> > Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>
>
> Do you still need CONFIG_ARCH_SUPPORTS_INT128 ?
>

arm64 needs GCC 5 or later for int128_t support, since older versions
emit support library function calls that we don't implement.

I guess we could fold that into the CC_HAS_INT128 test as well though

> I do not know which part in lib/ubsan.c or crypto/ecc.c
> is arch-dependent...
>
>
>
>
>
> > ---
> >  arch/arm64/Kconfig | 2 +-
> >  arch/riscv/Kconfig | 2 +-
> >  arch/x86/Kconfig   | 2 +-
> >  crypto/ecc.c       | 2 +-
> >  init/Kconfig       | 4 ++++
> >  lib/ubsan.c        | 2 +-
> >  lib/ubsan.h        | 2 +-
> >  7 files changed, 10 insertions(+), 6 deletions(-)
> >
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 3adcec05b1f6..a0f764e2f299 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -69,7 +69,7 @@ config ARM64
> >         select ARCH_USE_QUEUED_SPINLOCKS
> >         select ARCH_SUPPORTS_MEMORY_FAILURE
> >         select ARCH_SUPPORTS_ATOMIC_RMW
> > -       select ARCH_SUPPORTS_INT128 if GCC_VERSION >= 50000 || CC_IS_CLANG
> > +       select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
> >         select ARCH_SUPPORTS_NUMA_BALANCING
> >         select ARCH_WANT_COMPAT_IPC_PARSE_VERSION if COMPAT
> >         select ARCH_WANT_FRAME_POINTERS
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index 59a4727ecd6c..99be78ac7b33 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -127,7 +127,7 @@ config ARCH_RV32I
> >  config ARCH_RV64I
> >         bool "RV64I"
> >         select 64BIT
> > -       select ARCH_SUPPORTS_INT128 if GCC_VERSION >= 50000
> > +       select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && GCC_VERSION >= 50000
> >         select HAVE_FUNCTION_TRACER
> >         select HAVE_FUNCTION_GRAPH_TRACER
> >         select HAVE_FTRACE_MCOUNT_RECORD
> > diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> > index 222855cc0158..97f74a2e1cf3 100644
> > --- a/arch/x86/Kconfig
> > +++ b/arch/x86/Kconfig
> > @@ -24,7 +24,7 @@ config X86_64
> >         depends on 64BIT
> >         # Options that are inherently 64-bit kernel only:
> >         select ARCH_HAS_GIGANTIC_PAGE
> > -       select ARCH_SUPPORTS_INT128
> > +       select ARCH_SUPPORTS_INT128 if CC_HAS_INT128
> >         select ARCH_USE_CMPXCHG_LOCKREF
> >         select HAVE_ARCH_SOFT_DIRTY
> >         select MODULES_USE_ELF_RELA
> > diff --git a/crypto/ecc.c b/crypto/ecc.c
> > index dfe114bc0c4a..6e6aab6c987c 100644
> > --- a/crypto/ecc.c
> > +++ b/crypto/ecc.c
> > @@ -336,7 +336,7 @@ static u64 vli_usub(u64 *result, const u64 *left, u64 right,
> >  static uint128_t mul_64_64(u64 left, u64 right)
> >  {
> >         uint128_t result;
> > -#if defined(CONFIG_ARCH_SUPPORTS_INT128) && defined(__SIZEOF_INT128__)
> > +#if defined(CONFIG_ARCH_SUPPORTS_INT128)
> >         unsigned __int128 m = (unsigned __int128)left * right;
> >
> >         result.m_low  = m;
> > diff --git a/init/Kconfig b/init/Kconfig
> > index bd7d650d4a99..f5566a985b9e 100644
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -780,6 +780,10 @@ config ARCH_SUPPORTS_NUMA_BALANCING
> >  config ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH
> >         bool
> >
> > +config CC_HAS_INT128
> > +       def_bool y
> > +       depends on !$(cc-option,-D__SIZEOF_INT128__=0)
> > +
> >  #
> >  # For architectures that know their GCC __int128 support is sound
> >  #
> > diff --git a/lib/ubsan.c b/lib/ubsan.c
> > index e7d31735950d..b652cc14dd60 100644
> > --- a/lib/ubsan.c
> > +++ b/lib/ubsan.c
> > @@ -119,7 +119,7 @@ static void val_to_string(char *str, size_t size, struct type_descriptor *type,
> >  {
> >         if (type_is_int(type)) {
> >                 if (type_bit_width(type) == 128) {
> > -#if defined(CONFIG_ARCH_SUPPORTS_INT128) && defined(__SIZEOF_INT128__)
> > +#if defined(CONFIG_ARCH_SUPPORTS_INT128)
> >                         u_max val = get_unsigned_val(type, value);
> >
> >                         scnprintf(str, size, "0x%08x%08x%08x%08x",
> > diff --git a/lib/ubsan.h b/lib/ubsan.h
> > index b8fa83864467..7b56c09473a9 100644
> > --- a/lib/ubsan.h
> > +++ b/lib/ubsan.h
> > @@ -78,7 +78,7 @@ struct invalid_value_data {
> >         struct type_descriptor *type;
> >  };
> >
> > -#if defined(CONFIG_ARCH_SUPPORTS_INT128) && defined(__SIZEOF_INT128__)
> > +#if defined(CONFIG_ARCH_SUPPORTS_INT128)
> >  typedef __int128 s_max;
> >  typedef unsigned __int128 u_max;
> >  #else
> > --
> > 2.17.1
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>
>
>
> --
> Best Regards
> Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
