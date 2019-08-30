Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FC0A3F84
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 23:14:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pde7Mm1LV8SYXYqYvVnPMnqUph+yXh/wnawXxoonQnc=; b=Aydl0yga/JvEna
	dABbL+D21mLAKdmnwr/sdveSugUt/VTv4Zkhk08zt6v63ky7Uax4anceM6WYjbej6CjYvKntabphe
	yQWmjPWviLHkvzDAr2N1rWoZ5ntNCae5h9zQ8+X5cIrTNnareqk5j7WZ5cCg+LOQVo8bJgj7EVnfR
	I01Fqzs4eTIn43ocvO42KkKn5ZprQYd1YDkRXFP2/g0dRctA23P4oGKFnkJy7wpL4Rt5Kv5Uk93XA
	J1JimdZ3mi8nDiQYjqkDh9LH0LQ+H5/IB3GfGrtS5efM04AIryNczhBTS0Wj3GqhB5iatpLVI9+de
	MIRsoWmppJaRGt04oohA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3oDh-0007SX-3f; Fri, 30 Aug 2019 21:14:09 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3oDU-0007Rk-Ra
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 21:13:58 +0000
Received: by mail-pf1-x442.google.com with SMTP id q21so358270pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 14:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1J0sxNta1Y7TX28deVqyjMgnkCtYfR2j9BgKqBFiKOI=;
 b=EW99Eqkb2zHXK7i7yXBZZtK9zRekFpro7wkDVkT8jfrTEuhsHNSMSJTm1WE0sl8IP1
 O9547obfMg3vuk02KqBj7Td0E5/UZH8fqLopjyWlA5RZyTTGD0MfnMYYWEDioGWlGJPy
 pUJCmlQq4PbW3OK/H46tZgJ2xYaTxHRf/pgWiv+/v+Pw3RRUd1sAr8M5QIuqAutHCSJt
 88UzyhvcAfiu0c0rbJhcawlbu/D3eYbdVfLkmHBplnTh54UCPFZrSRsFb4iaN6yGWAd1
 z2t31TgBWtbuekEgty9l+b+5d3OraQCLjjdNZKx71u8nrvagywgYhV/cpu0TylmduSgq
 3fMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1J0sxNta1Y7TX28deVqyjMgnkCtYfR2j9BgKqBFiKOI=;
 b=bPUWlBVjNh4eBt0+S0NMCqH9OHZFgFTX28WUaSuqjiOkbnr6VwC0bYDXA699Zz/1O4
 7d2RqIGF91xsO0EyVns8WLxAM0LUyS8ZfosNHBeJk6QrF9CsdKR3X7v4rPiEh6vWvbsB
 8ayVdqRgGt1Kau0axJKUMi3uZAvE2no2xZXv/3UW6r+7lU9tiIrZ8O7HqKiTJcDBt9HV
 zFZloKYE7zPG9gBAN0AmbeJgcpHp6a1tZbs03/HZj34luKFStVgUeLrqpHrT0jCl1Rjn
 pOVp2RWj1DW0hJKA+j+9TdXjv8XZ0RurukbuZsH8oWOyLEWDpfStDmTJzwhW3aSIW+Wc
 wJXA==
X-Gm-Message-State: APjAAAUl3B4ckRz/sxRECOzGMQzY2TV0eK/XHbkdoe2cv7dXO1acDr9v
 zABzMqoj2u+xMGjW+IsWU9hqmaoVr9d1BGWE4d4y7A==
X-Google-Smtp-Source: APXvYqzIPKpHsapC8ENx4jtmvoElcYw4Qq4xMMIWa5Ku+Nm08JDAhrfmSBMwGXNM+736TM9pWfKXY49DMZSTbMKwGBQ=
X-Received: by 2002:a63:6193:: with SMTP id v141mr3690361pgb.263.1567199635468; 
 Fri, 30 Aug 2019 14:13:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190829062635.45609-1-natechancellor@gmail.com>
 <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
 <20190829193432.GA10138@archlinux-threadripper>
 <885bb20c11f0cb004e5eeda7b0ca6d16@agner.ch>
 <CAKwvOdm-9T5Mmys93VMK8HLUgPJa2HOpcmG96SAvH2EGLA=3Nw@mail.gmail.com>
 <20190830172824.GA119107@archlinux-threadripper>
In-Reply-To: <20190830172824.GA119107@archlinux-threadripper>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 30 Aug 2019 14:13:44 -0700
Message-ID: <CAKwvOdksu_L+e52awkd=ffkaasCZeBjKcFU4nvU7q7reEzF2WA@mail.gmail.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_141356_922158_59ABFDA5 
X-CRM114-Status: GOOD (  25.41  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, Aug 30, 2019 at 10:28 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Aug 29, 2019 at 01:57:35PM -0700, Nick Desaulniers wrote:
> > On Thu, Aug 29, 2019 at 1:21 PM Stefan Agner <stefan@agner.ch> wrote:
> > >
> > > On 2019-08-29 21:34, Nathan Chancellor wrote:
> > > > On Thu, Aug 29, 2019 at 10:55:28AM -0700, Nick Desaulniers wrote:
> > > >> On Wed, Aug 28, 2019 at 11:27 PM Nathan Chancellor
> > > > I will test with or without CONFIG_AEABI like Matthias asked and I will
> > > > implement your Kconfig suggestion if it passes all of my tests. The
> > > > reason that I did it this way is because I didn't want a user to end up
> > > > with a non-booting kernel since -meabi gnu works with older versions of
> > > > clang at build time, the issue happens at boot time but the Kconfig
> > > > suggestion + cc-option should fix that.
> Disabling CONFIG_AEABI does not work with clang, I get a ton of failures
> around undefined references to __aeabi_idivmod and __aeabi_uidivmod. I
> don't think this is worth looking into given that CONFIG_AEABI is not
> selectable when CONFIG_CPU_V6 or CONFIG_CPU_V7 is selected, which is
> what we primarily care about.. We currently build and boot
> multi_v5_defconfig but it has CONFIG_AEABI set in it. As a result, I
> don't think we need to care about it with this patch.

The plan of record is to never support !CONFIG_AEBI (ie OABI) w/
Clang. See also my commit currently in linux-next:
ARM: 8875/1: Kconfig: default to AEABI w/ Clang
https://github.com/ClangBuiltLinux/linux/issues/482
so !AEABI is a moot point.  If we ever changed our minds, then yes we
should additionally guard on !CONFIG_AEABI, but I feel like that's a
highly unlikely scenario at this point.

>
> This diff would also solve the issue without the need for the version
> check in the Makefile, as it is the combination of -meabi gnu and -pg
> that causes the boot issue and -pg gets added when
> CONFIG_FUNCTION_TRACER is enabled. Would that be preferred? I do not
> think adding cc-option is necessary given that we know GCC universally
> does not support this flag; there is no point in adding a small penalty
> with cc-option to either compiler.
>
> Cheers,
> Nathan
>
> ================================================
>
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index a98c7af50bf0..440ad41e77e4 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -83,7 +83,7 @@ config ARM
>         select HAVE_FAST_GUP if ARM_LPAE
>         select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
>         select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
> -       select HAVE_FUNCTION_TRACER if !XIP_KERNEL
> +       select HAVE_FUNCTION_TRACER if !XIP_KERNEL && (CC_IS_GCC || CLANG_VERSION >= 100000)
>         select HAVE_GCC_PLUGINS
>         select HAVE_HW_BREAKPOINT if PERF_EVENTS && (CPU_V6 || CPU_V6K || CPU_V7)
>         select HAVE_IDE if PCI || ISA || PCMCIA
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index a43fc753aa53..23c2bf0fbd30 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -115,6 +115,10 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
>  CFLAGS_ABI     +=-funwind-tables
>  endif
>
> +ifeq ($(CONFIG_CC_IS_CLANG),y)
> +CFLAGS_ABI     +=-meabi gnu
> +endif

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> +
>  # Accept old syntax despite ".syntax unified"
>  AFLAGS_NOWARN  :=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
