Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77D7BE2E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 18:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vkVFirCLxonJDSAEr0dJn7mhGsdmdiEIs1z/wSbQ3s=; b=i/MvwBfgl0uz9z
	6XJq8iQh399FOSWS5UhrNZ7M2JBoPWy0CkRJPmV1I59SI/9Q+KeFwPAbHVYwY+oUfgAhLL3e0aRbM
	fKABpKbtwjuisR2sm3nwLE9+80IyQEk4YeRIfZmG8RC0dclbSNv5YMeMedjss8OJfWObwCyuvQ+cq
	nb1HBo0HGy77UUd10AlBYomPdWIglo0NRlDNtY2afe9wmPjetWuQLl+kypDFO8gZ2JiLyu8kC/fMx
	o8N2icVn4kCR3ysCRhSEVq3lpEEzJPDC3QmKnvziInRQLt+LtmU7r+c7z/RZdJnOfimHgP/q3OAcW
	5GQ1dBygXtL/0ZiPW3gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDAY0-0005pg-IJ; Wed, 25 Sep 2019 16:53:48 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDAXj-0005ov-MQ
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 16:53:33 +0000
Received: by mail-pg1-x543.google.com with SMTP id v27so116369pgk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 09:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O/sojhQaKNfMwCzwlmCta8VLr7dMJZiKlxmvoLeV0xI=;
 b=qWcsG6xYj8I2u4Z0FOvpRJNmoINmp4oKlfBLVJlJ+3y1cXOTmV26RTzmv1TyjCwR4h
 eSVMBEcQ5GTnB42JC8NI47DTM62W5HYUDWGFkA8O/6wkOmn/ABJ179sISNie/gTCB67g
 G59Fvn01qNJiBJStmIyr2B3fHwAzDpeAjOlwluiZL/UjWxt0cvVTykQqWP/k+Wa5m6FH
 6upOHc69RCH6rdsvdDpAIxZTZXM7AJ5Am+zuiZ/upqPmRTsQTgGUzdXeE1sqepZ0Xaru
 uD5CM3d4iHHoHKNhcjvU6Uc+6A1FLRxqjMKwcibKO2dob8tM7p83FTxxsdQh3sXYhJNX
 9Fvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O/sojhQaKNfMwCzwlmCta8VLr7dMJZiKlxmvoLeV0xI=;
 b=mqIak7HXmfSaL2Qxa+2aZIm2oXqvsH/OSGgG/hQUHegYDOUBeX0JAegoV+0/UxtPTH
 oAGQgMqoN2ihh1VnzqNC/01dHKTdIBgeX0KhI5a7ZaBqGVbl3LT3BoRmXieRplgjn5+W
 6ek7bMpeHxmu5AOtXvm4Si8zWxh23eLGKZOo17DzIGSSyLMGS0ro8S/NsimjRH5cphl2
 RiI/sJArMdRVFJ2fF1fbmLBxoML8U8JZdJsRxZUua+l64qHyF2x4PxeTMtUglPae9NdX
 xcdoXSfp/Ds4bcCPScxzvMbMbruGFQXI1pGUI0eY0QKQ6Ut3ihBrwnGLN86Scb/TtEgN
 bfbQ==
X-Gm-Message-State: APjAAAUrQ72x0IuaSKTnbAqMa4yFfhbp+ACsJa4Bb0lA6PkvGXZIBebI
 o8kTK0Yww+AMlOpa56qmlfTmq1Q3tRoWceauyTVHBA==
X-Google-Smtp-Source: APXvYqyGOrPmmtsw3QaNO3jNzRvgBnclwKeaJ8rYvix6Eqms6giQGJOoDgBUTsFg1jBCdVquRwzJhHZ/p2YowQNYnYk=
X-Received: by 2002:a17:90a:ff18:: with SMTP id
 ce24mr7402764pjb.123.1569430407847; 
 Wed, 25 Sep 2019 09:53:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190925130926.50674-1-catalin.marinas@arm.com>
In-Reply-To: <20190925130926.50674-1-catalin.marinas@arm.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 25 Sep 2019 09:53:16 -0700
Message-ID: <CAKwvOdn2Sf7aAt0zqUUqGY6nXg-C3be7An9amy4tfiNr_8ERJw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Allow disabling of the compat vDSO
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_095331_754595_0E4D9802 
X-CRM114-Status: GOOD (  26.01  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 6:09 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> The compat vDSO building requires a cross-compiler than produces AArch32
> binaries, defined via CONFIG_CROSS_COMPILE_COMPAT_VDSO or the
> CROSS_COMPILE_COMPAT environment variable. If none of these is defined,
> building the kernel always prints a warning as there is no way to
> deselect the compat vDSO.
>
> Add an arm64 Kconfig entry to allow the deselection of the compat vDSO.
> In addition, make it an EXPERT option, default n, until other issues
> with the compat vDSO are solved (64-bit only kernel headers included in
> user-space vDSO code, CC_IS_CLANG irrelevant to CROSS_COMPILE_COMPAT).

CC_IS_CLANG might be because then CC can be reused with different
flags, rather than providing a different cross compiler binary via
config option.

>
> Fixes: bfe801ebe84f ("arm64: vdso: Enable vDSO compat support")
> Cc: Will Deacon <will@kernel.org>
> Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>

Thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/595
Overall, this work is important to Android; the ARMv8-A series of
mobile SoCs we see today have to support 32b and 64b (A32+A64?) for at
least a few more years; we would like gettimeofday() and friends to be
fast for 32b and 64b applications.

> ---
>
> It looks like you can't really win with the current compat vDSO logic.
> You either don't have a compat cross-compiler and you get a Makefile
> warning or you have one and a get a compiler warning (or failure)
> because of the 64-bit kernel headers included in 32-bit user-space code.
>
> "depends on BROKEN" for ARM64_COMPAT_VDSO also work for me instead of
> EXPERT. I'll leave it up to Will to decide but I'd like at least this
> patch in -rc2 (even better if everything else is fixed before the final
> 5.4).
>
> Suggestions for future improvements of the compat vDSO handling:
>
> - replace the CROSS_COMPILE_COMPAT prefix with a full COMPATCC; maybe
>   check that it indeed produces 32-bit code
>
> - check whether COMPATCC is clang or not rather than CC_IS_CLANG, which
>   only checks the native compiler

When cross compiling, IIUC CC_IS_CLANG is referring to CC which is the
cross compiler, which is different than HOSTCC which is the host
compiler.  HOSTCC is used mostly for things in scripts/ while CC is
used to compile a majority of the kernel in a cross compile.

>
> - clean up the headers includes; vDSO should not include kernel-only
>   headers that may even contain code patched at run-time

This is a big one; Clang validates the inline asm constraints for
extended inline assembly, GCC does not for dead code.  So Clang chokes
on the inclusion of arm64 headers using extended inline assembly when
being compiled for arm-linux-gnueabi.

>
>  arch/arm64/Kconfig | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 866e05882799..83a9a78085c6 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -110,7 +110,6 @@ config ARM64
>         select GENERIC_STRNLEN_USER
>         select GENERIC_TIME_VSYSCALL
>         select GENERIC_GETTIMEOFDAY
> -       select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT)
>         select HANDLE_DOMAIN_IRQ
>         select HARDIRQS_SW_RESEND
>         select HAVE_PCI
> @@ -1185,6 +1184,15 @@ config KUSER_HELPERS
>           Say N here only if you are absolutely certain that you do not
>           need these helpers; otherwise, the safe option is to say Y.
>
> +config ARM64_COMPAT_VDSO
> +       bool "Enable the 32-bit vDSO" if EXPERT
> +       depends on !CPU_BIG_ENDIAN
> +       select GENERIC_COMPAT_VDSO
> +       help
> +         Enable the vDSO support for 32-bit applications. You would
> +         need to set the 32-bit cross-compiler prefix in
> +         CONFIG_CROSS_COMPILE_COMPAT_VDSO or the CROSS_COMPILE_COMPAT
> +         environment variable.
>
>  menuconfig ARMV8_DEPRECATED
>         bool "Emulate deprecated/obsolete ARMv8 instructions"



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
