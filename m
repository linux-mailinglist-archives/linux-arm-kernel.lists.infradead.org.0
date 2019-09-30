Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8013C1FB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 13:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6hvjIMsQW7KCBTvoVZDTVdN8Peovka/dgdIjKrf7+g=; b=TguvYeDYWmnA83
	SrM1dmgnRPbegG6hk9BjBGYVCPk8OglbMcoxMLOUq8jG+StIJNoRLqzOy17SMTuvPqe1i3rAnGNsI
	/y75FNFVq+FIC3O5dYjoLepSG6vhwWHlZ3IDAiZVbbdu1fwZkC1b6EL/Wp3T0nc12dBHsUzozU3dV
	QScVOLcZQnQBsmuQeEZq4HvUDGbT9CPwPFHm4Nyb8Kf4hlQlo6EjDDYufJJyaPyPG9SYu0Qce+Fwn
	UPmaN3QQrYmrHMPZbdAoDh2bYAmCrC46fcf6rmroyZgNTfV5fw/5zyTjP7tlhEdhpzsDKzSL+vMDS
	dg+gS9C/SyDt012AVbZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEtRS-0000wA-5a; Mon, 30 Sep 2019 11:02:10 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEtRI-0000vL-QH
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 11:02:02 +0000
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com
 [209.85.217.53]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x8UB1Ufc003722
 for <linux-arm-kernel@lists.infradead.org>; Mon, 30 Sep 2019 20:01:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x8UB1Ufc003722
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1569841291;
 bh=ZUfDYKkNxwOj4CYeJtC9+yuKCYe/CpuyUB+xIK/lF+c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=djcPnt9Mz/lRBvGq/5f8Jubhp2vsrpMukCba+dZIX6rJ6utwPfudEB61GH/UOu+mi
 pIXOGmMFv4CXCGS8w1YxoCferZ/qaa6K7Q5c3VqIbpSCADXyq65F1BPi9glZyZRtfL
 JrP9Eys5twgHL1kC3Y+b2Mnf1iNhkAHtLQyv1NOz9xRRKhKF5HTOuUv0wAyNbQ0VRz
 gARH9gK1A9Zjj8afUu1a3NUHshAITfDNDb9CC+KnZdti2Aw1N29mcZ5BCKf8TV5Jjg
 np/9BytyNcamNuSIbuiuQy/7XYGeh/EER7A8Qr69u6VcuH7EgB+8GejikWdDmbJj95
 ACyX7k0d3RW/g==
X-Nifty-SrcIP: [209.85.217.53]
Received: by mail-vs1-f53.google.com with SMTP id b123so6441923vsb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 04:01:31 -0700 (PDT)
X-Gm-Message-State: APjAAAW3GERzPSpYzQqa3tE/+wJESynQppoE4zFOrImKl8oFe4fQpKv9
 QvedUJhwva7NqBKGS7blL8WbxclFlTMFGvwNbLg=
X-Google-Smtp-Source: APXvYqwNyrp0FzS70arGcUZoP2iezgES7aiPAzMOGpzj8AToTlvnNN3C8Dekf8sS1zwlCu3RtobjmF+I+r1VHM431a0=
X-Received: by 2002:a67:2d13:: with SMTP id t19mr8130052vst.99.1569841289932; 
 Mon, 30 Sep 2019 04:01:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
 <20190929173850.26055-10-ard.biesheuvel@linaro.org>
In-Reply-To: <20190929173850.26055-10-ard.biesheuvel@linaro.org>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 30 Sep 2019 20:00:53 +0900
X-Gmail-Original-Message-ID: <CAK7LNARxeskbf2g9YWxD9MvMdfmFjEu2uQXQiC0AansUOmij0A@mail.gmail.com>
Message-ID: <CAK7LNARxeskbf2g9YWxD9MvMdfmFjEu2uQXQiC0AansUOmij0A@mail.gmail.com>
Subject: Re: [RFC PATCH 09/20] int128: move __uint128_t compiler test to
 Kconfig
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_040201_074151_A1EC18EC 
X-CRM114-Status: GOOD (  23.94  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Linus Torvalds <torvalds@linux-foundation.org>, linux-crypto@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Will Deacon <will@kernel.org>, David Miller <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 2:41 AM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> In order to use 128-bit integer arithmetic in C code, the architecture
> needs to have declared support for it by setting ARCH_SUPPORTS_INT128,
> and it requires a version of the toolchain that supports this at build
> time. This is why all existing tests for ARCH_SUPPORTS_INT128 also test
> whether __SIZEOF_INT128__ is defined, since this is only the case for
> compilers that can support 128-bit integers.
>
> Let's fold this additional test into the Kconfig declaration of
> ARCH_SUPPORTS_INT128 so that we can also use the symbol in Makefiles,
> e.g., to decide whether a certain object needs to be included in the
> first place.
>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>


Do you still need CONFIG_ARCH_SUPPORTS_INT128 ?

I do not know which part in lib/ubsan.c or crypto/ecc.c
is arch-dependent...





> ---
>  arch/arm64/Kconfig | 2 +-
>  arch/riscv/Kconfig | 2 +-
>  arch/x86/Kconfig   | 2 +-
>  crypto/ecc.c       | 2 +-
>  init/Kconfig       | 4 ++++
>  lib/ubsan.c        | 2 +-
>  lib/ubsan.h        | 2 +-
>  7 files changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 3adcec05b1f6..a0f764e2f299 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -69,7 +69,7 @@ config ARM64
>         select ARCH_USE_QUEUED_SPINLOCKS
>         select ARCH_SUPPORTS_MEMORY_FAILURE
>         select ARCH_SUPPORTS_ATOMIC_RMW
> -       select ARCH_SUPPORTS_INT128 if GCC_VERSION >= 50000 || CC_IS_CLANG
> +       select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
>         select ARCH_SUPPORTS_NUMA_BALANCING
>         select ARCH_WANT_COMPAT_IPC_PARSE_VERSION if COMPAT
>         select ARCH_WANT_FRAME_POINTERS
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 59a4727ecd6c..99be78ac7b33 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -127,7 +127,7 @@ config ARCH_RV32I
>  config ARCH_RV64I
>         bool "RV64I"
>         select 64BIT
> -       select ARCH_SUPPORTS_INT128 if GCC_VERSION >= 50000
> +       select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && GCC_VERSION >= 50000
>         select HAVE_FUNCTION_TRACER
>         select HAVE_FUNCTION_GRAPH_TRACER
>         select HAVE_FTRACE_MCOUNT_RECORD
> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> index 222855cc0158..97f74a2e1cf3 100644
> --- a/arch/x86/Kconfig
> +++ b/arch/x86/Kconfig
> @@ -24,7 +24,7 @@ config X86_64
>         depends on 64BIT
>         # Options that are inherently 64-bit kernel only:
>         select ARCH_HAS_GIGANTIC_PAGE
> -       select ARCH_SUPPORTS_INT128
> +       select ARCH_SUPPORTS_INT128 if CC_HAS_INT128
>         select ARCH_USE_CMPXCHG_LOCKREF
>         select HAVE_ARCH_SOFT_DIRTY
>         select MODULES_USE_ELF_RELA
> diff --git a/crypto/ecc.c b/crypto/ecc.c
> index dfe114bc0c4a..6e6aab6c987c 100644
> --- a/crypto/ecc.c
> +++ b/crypto/ecc.c
> @@ -336,7 +336,7 @@ static u64 vli_usub(u64 *result, const u64 *left, u64 right,
>  static uint128_t mul_64_64(u64 left, u64 right)
>  {
>         uint128_t result;
> -#if defined(CONFIG_ARCH_SUPPORTS_INT128) && defined(__SIZEOF_INT128__)
> +#if defined(CONFIG_ARCH_SUPPORTS_INT128)
>         unsigned __int128 m = (unsigned __int128)left * right;
>
>         result.m_low  = m;
> diff --git a/init/Kconfig b/init/Kconfig
> index bd7d650d4a99..f5566a985b9e 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -780,6 +780,10 @@ config ARCH_SUPPORTS_NUMA_BALANCING
>  config ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH
>         bool
>
> +config CC_HAS_INT128
> +       def_bool y
> +       depends on !$(cc-option,-D__SIZEOF_INT128__=0)
> +
>  #
>  # For architectures that know their GCC __int128 support is sound
>  #
> diff --git a/lib/ubsan.c b/lib/ubsan.c
> index e7d31735950d..b652cc14dd60 100644
> --- a/lib/ubsan.c
> +++ b/lib/ubsan.c
> @@ -119,7 +119,7 @@ static void val_to_string(char *str, size_t size, struct type_descriptor *type,
>  {
>         if (type_is_int(type)) {
>                 if (type_bit_width(type) == 128) {
> -#if defined(CONFIG_ARCH_SUPPORTS_INT128) && defined(__SIZEOF_INT128__)
> +#if defined(CONFIG_ARCH_SUPPORTS_INT128)
>                         u_max val = get_unsigned_val(type, value);
>
>                         scnprintf(str, size, "0x%08x%08x%08x%08x",
> diff --git a/lib/ubsan.h b/lib/ubsan.h
> index b8fa83864467..7b56c09473a9 100644
> --- a/lib/ubsan.h
> +++ b/lib/ubsan.h
> @@ -78,7 +78,7 @@ struct invalid_value_data {
>         struct type_descriptor *type;
>  };
>
> -#if defined(CONFIG_ARCH_SUPPORTS_INT128) && defined(__SIZEOF_INT128__)
> +#if defined(CONFIG_ARCH_SUPPORTS_INT128)
>  typedef __int128 s_max;
>  typedef unsigned __int128 u_max;
>  #else
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
