Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34756201845
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 18:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9LwASkqxFXunsolYLdz0Be2GhlP0Ahh58ktD2jwG0GI=; b=LAQN8nL49M3hN4
	Hz6zq7xl1ifmfIAecrd2/aU+r/s9+hzMubBh9RKpb7UlwiYZ3zEIme0F66DClXFkq9/npUg7FBBK7
	mgVhHMTuzTbSWYBDUYpxe+1fgdYKXBVHapa5N2f5cEVvFYFM/lBlLzpIP2wu679K1DbeGVujVLCk0
	C472qDNjQ8gI9FNLtzmSs4Ocx+2EEcKl9Xm4CyLfOtkOpGyaaXU8WV2JFQ/LKSSxiyemI9M+dw0qe
	ChZjjSzehFXNhxYohfgBHYQlaoL8oxFfr0Ph0XNFwo+nm8OBSrvUr4K+LJHrRtC2Vk9VMixwT99T7
	lI2F0sgyIIwkxBhv0MDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmKIY-0001CZ-R3; Fri, 19 Jun 2020 16:55:26 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmKIP-0001Bf-B1
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 16:55:18 +0000
Received: by mail-pf1-x443.google.com with SMTP id 64so4656676pfv.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 09:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7y7t2icJN/GWPUzIVRaSjnDOm7HE/CoO/x4Xxmj7FZA=;
 b=XAWPPWUj1OJDalnvfieycfB3ozAwzxcOZRWxzba4CvOk/gNyt8GOwdT6l57Fwzl1kh
 X4UzWJOkfpZAaqxKCjhiJkynUpzXnWn6iCKxExBGCXiNOYvj2j/y9nBhQzlDCRzyDBjm
 yaecsAmHQoFDGrumJkZfCboUdEGwxOnOnDKTqDY6wDE+pljkzp8dtX1ggJZTqBpMf5zM
 183K4Z337+AXSLtKlv/0kEcpZgjJxEmSwv0MJ3GzIs9GE7fNnE+AFt5Pcuj6ftlNIeAZ
 Wt0Dbul5l8jAkxfb2sSqxEOl+rjJxTu06X3dGRlUpiclHqbOKzW2Yzqh9u+m+dKt6iYo
 S5/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7y7t2icJN/GWPUzIVRaSjnDOm7HE/CoO/x4Xxmj7FZA=;
 b=cjurffbKqWLqWyeoxE52pd4wi6odd01jspRBWdHaCQ0ukrlX9yFiRHmFD0lS8K0Q+2
 16cO0lqihVpiWyQOlC422GD2nFwXtA3oP+ldfqzJESZ+A773xk1r70xmsA5IfxUPHEE9
 ceIT0JSAM6PZQRfG5JyPPeXjlx3a7cAyggYJIL6cF+JMS0jc/tKJwil1pZK2W+JQ0HDn
 RBMx5EwPNsbp6mgGaEAHV5Q12tgZohSRDk+STq6zmQ36OMgohupLSkjNPMd1Zge3VCP7
 YAz2qgIenaj8vA9+0DZr/JEVErjK0VGQpeWv/+D7CbLV7/EDGhOs3RxZi6oGT84SvSmK
 vR/g==
X-Gm-Message-State: AOAM533omjxw7RQUHhRe+j5gU2CmbJIY8kefmAfERIfGDIhrpYqLpypP
 sT7IyczARh+2+Ty71o0U0cpF1lJYINyBEKw2bSJNuw==
X-Google-Smtp-Source: ABdhPJxuzVB5pDOPC/JqkniFi7ex5+Hol0SPAkMEUBOtFTvkzrf04NDLgaoguBAHoip+1eRUqP+Hyd/ynjURXBz2R30=
X-Received: by 2002:a63:f00d:: with SMTP id k13mr3914935pgh.263.1592585715153; 
 Fri, 19 Jun 2020 09:55:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200619123550.48098-1-broonie@kernel.org>
In-Reply-To: <20200619123550.48098-1-broonie@kernel.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 19 Jun 2020 09:55:04 -0700
Message-ID: <CAKwvOdnAamgwD8UKuxMsZtmAWnY99TwwCQRcFoHBzAmL2U+W=A@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: Depend on newer binutils when building PAC
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_095517_405894_970FBCB8 
X-CRM114-Status: GOOD (  27.33  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: KernelCI <bot@kernelci.org>, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Daniel Kiss <Daniel.Kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 19, 2020 at 5:35 AM Mark Brown <broonie@kernel.org> wrote:
>
> Versions of binutils prior to 2.33.1 don't understand the ELF notes that
> are added by modern compilers to indicate the PAC and BTI options used
> to build the code. This causes them to emit large numbers of warnings in
> the form:
>
> aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>
> during the kernel build which is currently causing quite a bit of
> disruption for automated build testing using clang.
>
> In commit 15cd0e675f3f76b (arm64: Kconfig: ptrauth: Add binutils version
> check to fix mismatch) we added a dependency on binutils to avoid this
> issue when building with versions of GCC that emit the notes but did not
> do so for clang as it was believed that the existing check for
> .cfi_negate_ra_state was already requiring a new enough binutils. This
> does not appear to be the case for some versions of binutils (eg, the
> binutils in Debian 10) so instead refactor so we require a new enough

^ is Debian 10 what KernelCI is running, currently?

> GNU binutils in all cases other than when we are using an old GCC
> version that does not emit notes.
>
> Other, more exotic, combinations of tools are possible such as using
> clang, lld and gas together are possible and may have further problems
> but rather than adding further version checks it looks like the most
> robust thing will be to just test that we can build cleanly with the
> configured tools but that will require more review and discussion so do
> this for now to address the immediate problem disrupting build testing.

I think that's a fair compromise, in the interest of immediate relief
to KernelCI testing.  If we need to be more precise, we can look into
feature testing all of the build tools (version checks would have to
check versions for BOTH sets of GNU and LLVM tools, so feature checks
might actually be simpler in that regard).  I think we can cross that
bridge another day, reprioritizing if we get a report of PAC not
working for some particular mismatch of tools.  Given unlimited CI
resources, I would absolutely test random combinations of GNU and LLVM
tools, but for now we're mostly testing one or the other.  Thanks for
the patch and the revision.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1054
> Reported-by: KernelCI <bot@kernelci.org>
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
> v2: Update comment and change to check binutils version except when
>     we specifically know that the compiler doesn't emit notes.
>
>  arch/arm64/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index a4a094bedcb2..66dc41fd49f2 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1518,9 +1518,9 @@ config ARM64_PTR_AUTH
>         default y
>         depends on !KVM || ARM64_VHE
>         depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
> -       # GCC 9.1 and later inserts a .note.gnu.property section note for PAC
> +       # Modern compilers insert a .note.gnu.property section note for PAC

It can still be helpful to note compiler version numbers (GCC 9.1,
clang-10).  Someday those will be ancient history, and the kernel will
move beyond support for those toolchain versions.  At that point,
having a comment makes it easy to `grep` for `gcc 9` and find all the
places in the code that can be cleaned up or simplified.

>         # which is only understood by binutils starting with version 2.33.1.
> -       depends on !CC_IS_GCC || GCC_VERSION < 90100 || LD_VERSION >= 233010000
> +       depends on LD_IS_LLD || LD_VERSION >= 233010000 || (CC_IS_GCC && GCC_VERSION < 90100)
>         depends on !CC_IS_CLANG || AS_HAS_CFI_NEGATE_RA_STATE
>         depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>         help
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
