Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4A4A22DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 19:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEocuK8S0YpvyUC/0SECxHMm+fdIbX0geZ3BoOvRm3U=; b=Fxj3L3AdM7GFz5
	GpfwBHHUWwp1xsYOPmTC019SGafuOsOggs3/6FsbUilK81VbiRsUvb+ItNK2jYbjfbPdLVid+w+8Z
	x3/N0f/+Oh/fOhaw7/m2Whp7LvyBFidyAVzsz6/LazFrFeLX+nh/j7s9cUdH4Ez7epBKeLcOxlste
	wnBQJTZdeHzzFWZUY30HSCuQhn0t+gxL+YrLpSlI1cLolIvXlI5Ozgxo8P5P670sjwt6GwO1559HS
	CEiQKCaFp8HYsgkrB2Nr0rt010oykm+WStMXWb/qLMJZWGVkqdfiWLwnCfwEEiaLti94Hif4+NZW5
	mPjIb8VqSJ17jxjbaFqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3OeJ-00005R-8D; Thu, 29 Aug 2019 17:55:55 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Oe5-00004y-AQ
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 17:55:42 +0000
Received: by mail-pf1-x444.google.com with SMTP id y9so2576574pfl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 10:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nTiBhHkHMJRRmQp07hUV0eTzQBNN9VPe28f+dHC32dM=;
 b=NS3pQoXOlk00UmrmHrPEqnCHWkBOdmybZhoBYlRrrTrQU4XeHRJlHepqqzCHaudweq
 nozNVhD6dU3HvOMUJoSosGKcZo6Wml/oo8lo9ByhvBDc9FIAZvk+KRHuZ1v9VevA9gLk
 td8G6R4rcfnAMfcTDBIonCHxcHaG5Vb3j4Emd0gBswHlS687CitNrP2YSbdbSgYfBIxt
 2DQY8vQG8buTm7B9zF8YNNBk4101xhrLsWIaZYvYPWwpNqmfPN8qFw0wV9R/FG12jye6
 JzcEXtr3XUPcJxQSIG5ggs3ue0i0/ZPXIsurvTwkPoc92xzUuSmx4H0wzpdohrk1GZOq
 If6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nTiBhHkHMJRRmQp07hUV0eTzQBNN9VPe28f+dHC32dM=;
 b=oawEnx3HjzFKwCv/HzRUF+EpgICYsKRq4bAt3kPP1u2h2aCNrspDrhPuRcU0ZaXLre
 wcQa64SL79g9SV8If4yeA1gkMnXdlPRKHSqD0tYXSRPUMYykRlIPUsU6uyTibwD1Jmnf
 6z48cFeFiUoJ8n3S/E+F6PwgcKQ+GExG//ET+WS5laiiRjSI/EeRpyEABJWqtnkc6gX/
 6D0Lzr6iuY0XrzEVUj+9lRunbGSVesAZ+KIeOaTpRYjFcVVcAjzsLYO1uz9HVjLas2ma
 lIGFhZCtYL2bARGX/lCZM1fe6kTj3TSvSjlfIEKU14OBy+u/HhY0ujen+rjzigIWNW2Z
 8gkg==
X-Gm-Message-State: APjAAAUgjF0+JoxbEzLRSduKaP6bH6y6ApHNPaY5SV6agUr4/YmLkK7r
 lE62KhtUGTZD8CBhlhODVALNqwkgJqi6/Tgqe0AGS8VSdeM=
X-Google-Smtp-Source: APXvYqwmiSojdNKlubI2KCVcr3kC3Pv2OqAeJD8KlOzXov8+oindrhkau4GKVBYmSkoU6p6dVPaOPeMV5OZOmuzhjtg=
X-Received: by 2002:a62:cec4:: with SMTP id y187mr12922205pfg.84.1567101339951; 
 Thu, 29 Aug 2019 10:55:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190829062635.45609-1-natechancellor@gmail.com>
In-Reply-To: <20190829062635.45609-1-natechancellor@gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 29 Aug 2019 10:55:28 -0700
Message-ID: <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_105541_388480_0B02CA49 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 Stefan Agner <stefan@agner.ch>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 11:27 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
> with clang:
>
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
> softirq.c:(.text+0x504): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
> softirq.c:(.text+0x58c): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
> softirq.c:(.text+0x6c8): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
> softirq.c:(.text+0x75c): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
> softirq.c:(.text+0x840): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow
>
> clang can emit a working mcount symbol, __gnu_mcount_nc, when
> '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
> broken and caused the kernel not to boot because the calling
> convention was not correct. Now that it is fixed, add this to
> the command line when clang is 10.0.0 or newer so everything
> works properly.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/35
> Link: https://bugs.llvm.org/show_bug.cgi?id=33845
> Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/arm/Makefile | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index c3624ca6c0bc..7b5a26a866fc 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -112,6 +112,12 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
>  CFLAGS_ABI     +=-funwind-tables
>  endif
>
> +ifeq ($(CONFIG_CC_IS_CLANG),y)
> +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000; echo $$?),0)
> +CFLAGS_ABI     +=-meabi gnu
> +endif
> +endif
> +

Thanks for the patch!  I think this is one of the final issues w/ 32b
ARM configs when building w/ Clang.

I'm not super enthused about the version check.  The flag is indeed
not recognized by GCC, but I think it would actually be more concise
with $(cc-option) and no compiler or version check.

Further, I think that the working __gnu_mcount_nc in Clang would
better be represented as marking the arch/arm/KConfig option for
CONFIG_FUNCTION_TRACER for dependent on a version of Clang greater
than or equal to Clang 10, not conditionally adding this flag. (We
should always add the flag when supported, IMO.  __gnu_mcount_nc's
calling convention being broken is orthogonal to the choice of
__gnu_mcount_nc vs mcount, and it's the former's that should be
checked, not the latter as in this patch.

>  # Accept old syntax despite ".syntax unified"
>  AFLAGS_NOWARN  :=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
>
> --
> 2.23.0
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
