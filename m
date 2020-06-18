Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5C31FFA6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 19:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zy7198d9KhxdSfOA+wQEGbs3AOyTcPn15gAR4dRgF0Y=; b=G/3mZ+bKB0eOkn
	xL3ujJXhFqvINHWrbgIUEzBiYxX9NrKZbydctY6+tnu8hcWF98LKoETP2czZezfsYFu5qm8Cf9XaR
	6AFIhncMj5/KD+3ev544anhWD3akV6Qjmt1NVu9YgS8VQQHwkkcgNHsXVgKbOmIv9lB0qLUUkFlK/
	c9qErDWbSh5uwfWUca9+oyCm6trxFbfCSw5I1uHp4IL3Wn6lpobSAyyidyYoMEGFE+emyjuCjMa5A
	yMmu9q1KC0bK/qTd7Ge1fp7Br0SEjX04opmxXgkOYUT/ajUnqLgk378tJyaqaZxcTGLQkAI1vNsOw
	h8BJxj0bSXPregTDUHvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlyUK-000709-Im; Thu, 18 Jun 2020 17:38:08 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlyUC-0006zi-13
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 17:38:01 +0000
Received: by mail-pf1-x442.google.com with SMTP id h185so3109371pfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 10:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/qoIMbT5nno9mpxdnHsUxhJrQUoL6iKYqIcqmzjGnbY=;
 b=pDVOOkXyDOG74RC4nism1I9vhBapOtIUnmVYatB5XksqU/zgGYGgN+3/V1zaAJVaCg
 K5i12z10ztN1ZjTeufPetayD3dZuAZ9jrSKmcAAVPrElpcAnu3PDd+oaTgrBPUKB+/qV
 r74gjA5IDuIV3E26RiNzoFxQRmQ12w5dAJC17J9ucIpSz79oQEMOFM/tk3JRKcMTj0EN
 RI85tdXyEDSFOpisEO2LEkWetyuLBXi9Buv4xXQBbVdCwP8kWOLZ9VhF031kcPetvmhA
 jVCABywbduZQzBS65DzSup6cumsnkBYD6kE91iREWVE1tJ43TErSpdayWk7SuGsncan9
 XoHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/qoIMbT5nno9mpxdnHsUxhJrQUoL6iKYqIcqmzjGnbY=;
 b=umQ1OEqRw+eWb7/+HyahynIVT2nwIzqpegAniFV6AsjYis0L4DgxEuCRw8FLBIr6Ol
 YiztD3zYgHO9eeHMHm7le1w8zgbX4RpYVPAPJ5/3087U6A6wLDnL4Y4s6tADgoILztGr
 /KgVjIUgczfRt+Q784T6+STkr3m23t7EAB+5FM5jDDAqXny1fSjQiXV9UKJUVJj1ZnZu
 xQCvpU3RxetdL/L0M+uoLB+lRUX8FHiEEPuU9vQIjveub/DE9qK5hqpeXqSYr+MibN4y
 fUyn0AuJeZIPmYrpd0Uh0dOQ7nl2hlHTG9DQzMlzxdCfawsQuodq4NdChtSr4jKOX3+t
 r1+Q==
X-Gm-Message-State: AOAM530T4qQ0BoMsqNE8svn16PTYG1SmATUTWG6aTGjBNlx2+5G8R5jy
 8D6ib3lGfcG9IXjgh7LK+dRvCA9+e5NsGesmdROANw==
X-Google-Smtp-Source: ABdhPJwn6t+e0BRRwseQPRPBJDArVim7L5EILsuZkP3H6C/WwjJQ9P5sm7P0oNmfiJAQpiefw98wGCLiLt3H2sdvpsI=
X-Received: by 2002:a62:7e95:: with SMTP id z143mr4502921pfc.108.1592501876598; 
 Thu, 18 Jun 2020 10:37:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200618145539.53539-1-broonie@kernel.org>
In-Reply-To: <20200618145539.53539-1-broonie@kernel.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 18 Jun 2020 10:37:45 -0700
Message-ID: <CAKwvOdmOCVJOzp7tc62SV8yO8KkFpY9_fiX6yWqQRTtFC6vsfA@mail.gmail.com>
Subject: Re: [PATCH] arm64: Depend on newer binutils when building PAC
To: Mark Brown <broonie@kernel.org>, Amit Daniel Kachhap <amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_103800_085883_BEE5AB87 
X-CRM114-Status: GOOD (  26.38  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Daniel Kiss <Daniel.Kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 7:55 AM Mark Brown <broonie@kernel.org> wrote:
>
> Versions of binutils prior to 2.33.1 don't understand the ELF notes that
> are added by modern compilers to indicate the PAC and BTI options used
> to build the code. This causes them to emit large numbers of warnings in
> the form:
>
> aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>
> during the kernel build.
>
> In commit 15cd0e675f3f76b (arm64: Kconfig: ptrauth: Add binutils version

Ah, thanks for the references. That's the exact error message we're
observing.  I know it's just a warning, but it's blowing up our
KernelCI reports to the point where I'm not reading them for our
clang-10 aarch64 builds, which is bad.
Documentation/process/changes.rst mentions that the kernel support
binutils 2.23+, so we should make sure to support those users.

> check to fix mismatch) we added a dependency on binutils to avoid this
> issue when building with versions of GCC that emit the notes but did not
> do so for clang as it was believed that the existing check for
> .cfi_negate_ra_state was already requiring a new enough binutils.  This
> does not appear to be the case for some versions of binutils (eg, the
> binutils in Debian 10) so add an explicit binutils version check for
> clang too.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1054
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Mark Brown <broonie@kernel.org>

Thanks for the patch.  I'm curious about the case for LD=ld.lld, which
we use on Android and CrOS.
I think this would be solved via an explicit line for the linker to check:
depends on CC_IS_LLD || LD_VERSION >= 233010000
Since we probably don't want to remove the check when using GCC?

Though, LD_VERSION is only a weak proxy for binutils version.

It's tricky right now for CC=clang builds because we still depend on
GNU `as` from binutils.  So you could do:

$ make CC=clang LD=ld.lld

which would be a problem since clang would emit the notes, and the
Kconfig check against ld.lld would succeed, but then the binutils
older than 2.33.1 would still choke.  Would a script that checks $(AR)
$(OBJCOPY) $(OBJDUMP) $(STRIP) $(NM) $(LD) support be overkill
(feature test or version check)?  See the `Link` above; we see
warnings from all of those tools when binutils < 2.33.1.  In that
case, I'd even remove the check for AS_HAS_CFI_NEGATE_RA_STATE (err,
maybe not, looking at commit 3b446c7d27dd ("arm64: Kconfig: verify
binutils support for ARM64_PTR_AUTH") cites binutils 2.34.  It would
be good to support a build of just LLVM tools, or just GNU tools, but
right now a lot of various builds that use clang are still a mix of
various GNU binutil utilities.  (See commit a0d1c951ef08 ("kbuild:
support LLVM=1 to switch the default tools to Clang/LLVM") for a view
of what we're looking to use once we've burned down a few more bugs).
This mixing and matching does slightly complicate support for new
features that require extensive tooling support, but I think we can
make it work for everyone.

We can credit KernelCI for this one, too.
Reported-by: kernelci.org bot <bot@kernelci.org>

(Also, general plea to please use scripts/get_maintainer.pl, which
should cc our list for any patch mentioning clang or llvm; we may have
caught this in code review before it hit mainline).

> ---
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 31380da53689..dd9d1bdee32a 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1521,7 +1521,7 @@ config ARM64_PTR_AUTH
>         # GCC 9.1 and later inserts a .note.gnu.property section note for PAC
>         # which is only understood by binutils starting with version 2.33.1.
>         depends on !CC_IS_GCC || GCC_VERSION < 90100 || LD_VERSION >= 233010000
> -       depends on !CC_IS_CLANG || AS_HAS_CFI_NEGATE_RA_STATE
> +       depends on !CC_IS_CLANG || AS_HAS_CFI_NEGATE_RA_STATE || LD_VERSION >= 233010000
>         depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>         help
>           Pointer authentication (part of the ARMv8.3 Extensions) provides
> --
> 2.20.1
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
