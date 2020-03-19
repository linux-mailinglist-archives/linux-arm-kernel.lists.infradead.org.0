Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FD118BF77
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 19:36:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuMmp8eInVhnbk7qrzjw4kvG/FYv6psz3YBgOouZMjA=; b=gJnaURRTZ42nIy
	pKedRGovET+8Sjdh76a8BDB68JbzcwsadmVDox1tt4jKKbqsYvIxikXOx42LFLYDjcXBftZYkznXg
	EbQdJK00e3X/TviVrbnsAVLrOdL+P0dWlugMwdbobia1owcuGqWYogvvJKszRobVKnrbKo5lqjrec
	2amO2uD3CxOh27gQeGXvHayGZs81I0HXBH0IRPH54lkoei1RTatUCcs6JlL6JB57nvk54qZHqRCUH
	Wx414WaUvut+3pIpnVRB8X0Luxw+DpGIF72MIrjdMo2vKxShJfpZr2BR0JlOyL/LNCQ2608bjzDRq
	XNdsvjszjM0UXE7B538w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF01L-000696-Ho; Thu, 19 Mar 2020 18:35:55 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF01A-00067y-KA
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 18:35:46 +0000
Received: by mail-ot1-x344.google.com with SMTP id e19so3444687otj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 11:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=APPSDaugBHGyzNNQiEw4/hvzhF063bWi+DW3Elw8lic=;
 b=XDz6g/wODqwBu/rhJfDOMoCjZF6mJRJ57DL3tR1vEhgipsOaY28B2Z058gv4nBzCov
 x3Wwpdpem33qUZg5+Y9mBGP2ZicZ/AxoMQw2+zykMAmKY+AmyaypIQEE7esKuhf1YDSO
 8tfuhnOc8OF96gr5dIIAYhwH6XGmUP7UVokdDvbCV1FJWvgevDs/N7pLuN/R71786Bb1
 9tXpRBx/8vzxVST0nsNmULdMKyqJrejhSKDEcwf6Lz3DrMGgdZByWdRuqPUvn5Bl0I7V
 IX39qHV5kaOd9e5Dcl9uAyWXm+aQVolLqNrFEHlFW03p6kthQBiuGocfRy9xXQOgjVQZ
 Xlbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=APPSDaugBHGyzNNQiEw4/hvzhF063bWi+DW3Elw8lic=;
 b=N8xCdqARIhUGU5AufTYSQKJOvEhs56/EK/bHXvVyn+7+Em5/XbEIUs1bCQzNMvriqT
 AUSkgsmjJ5TNo+NgAOdVTFnxE/GId3oPdIvBp5BOc6xBZojJQuZ0t+QcXOdCvnPtmcWG
 IOIH83vUXHL86LnWEbj8mdwQwRwvONFymleq7H+16174d9gBe5XC1+X8rmsq7xX2Go18
 gHaBjrK1+SN3L6SqrLBfPkvYG/exV93V/DukSg/RdkaVF44JuOKmuYhePzcBwpbM8Mt4
 /3jR90HiWF+G5zTv2H57r4Qel68Sqlzsx/E9zAu0XEaeB+LsgA2eef0xvEBPw7gtE2Jt
 KMRg==
X-Gm-Message-State: ANhLgQ12dDX0wPnFz3xQEpcMZSeYKqwGiI8AUEIoMWtCbGFdzhX2Mhcd
 DTvPaUqYQKmBpnp0lsc6jvQ=
X-Google-Smtp-Source: ADFU+vumlvX6T9k76TfyqAcBtquCENXwqoCLZgPP1wIPk9O2fGuB15OIyNyeVT+MygklM9sP98kV3g==
X-Received: by 2002:a9d:3603:: with SMTP id w3mr3559717otb.94.1584642940494;
 Thu, 19 Mar 2020 11:35:40 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id c1sm1067571oib.46.2020.03.19.11.35.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 19 Mar 2020 11:35:39 -0700 (PDT)
Date: Thu, 19 Mar 2020 11:35:38 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm64: Kconfig: verify binutils support for ARM64_PTR_AUTH
Message-ID: <20200319183538.GA33965@ubuntu-m2-xlarge-x86>
References: <1584090304-18043-17-git-send-email-amit.kachhap@arm.com>
 <20200319181951.102662-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319181951.102662-1-ndesaulniers@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_113544_693488_BFE55054 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
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
Cc: mark.rutland@arm.com, keescook@chromium.org, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, kristina.martsenko@arm.com, ardb@kernel.org,
 yamada.masahiro@socionext.com, broonie@kernel.org, james.morse@arm.com,
 clang-built-linux@googlegroups.com, ramana.radhakrishnan@arm.com,
 amit.kachhap@arm.com, vincenzo.frascino@arm.com, will@kernel.org,
 Dave.Martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 11:19:51AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> Clang relies on GNU as from binutils to assemble the Linux kernel,
> currently. A recent patch to enable the armv8.3-a extension for pointer
> authentication checked for compiler support of the relevant flags.
> Everything works with binutils 2.34+, but for older versions we observe
> assembler errors:
> 
> /tmp/vgettimeofday-36a54b.s: Assembler messages:
> /tmp/vgettimeofday-36a54b.s:40: Error: unknown pseudo-op: `.cfi_negate_ra_state'
> 
> When compiling with Clang, require the assembler to support
> .cfi_negate_ra_state directives, in order to support CONFIG_ARM64_PTR_AUTH.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/938
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Tested with binutils 2.33.1 and ToT. Boot tested in QEMU.
> I added this requirement only for Clang.
> 
> GCC maybe doesn't produce these assembler directives, or looks like GCC
> 8.2 produces .cfi_window_save (https://godbolt.org/z/awZWZ5, godbolt
> doesn't have a newer aarch64-linux-gnu-gcc...) instead of
> .cfi_negate_ra_state. Maybe ARM can sort out the inconsistency between
> compilers?
> 
> If we plan to add .cfi_negate_ra_state to out of
> line assembly, we may want to make AS_HAS_CFI_NEGATE_RA_STATE a hard
> requirement, regardless of compiler.
> 
> Also, rather than CC_IS_GCC, we could do !CC_IS_CLANG || ...
> 
> 
>  arch/arm64/Kconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index b889d7956abf..1ee1d8fab218 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1506,6 +1506,7 @@ config ARM64_PTR_AUTH
>  	default y
>  	depends on !KVM || ARM64_VHE
>  	depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
> +	depends on CC_IS_GCC || (CC_IS_CLANG && AS_HAS_CFI_NEGATE_RA_STATE)
>  	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>  	help
>  	  Pointer authentication (part of the ARMv8.3 Extensions) provides
> @@ -1550,6 +1551,9 @@ config CC_HAS_SIGN_RETURN_ADDRESS
>  config AS_HAS_PAC
>  	def_bool $(as-option,-Wa$(comma)-march=armv8.3-a)
>  
> +config AS_HAS_CFI_NEGATE_RA_STATE
> +	def_bool $(as-instr,.cfi_startproc\n.cfi_negate_ra_state\n.cfi_endproc\n)
> +
>  endmenu
>  
>  menu "ARMv8.4 architectural features"
> -- 
> 2.25.1.696.g5e7596f4ac-goog
> 

It would be nice to make this kind of check work for both GCC and Clang
but like you noted, there appears to be inconsistencies between them so
something for another day. CONFIG_ARM64_PTR_AUTH is getting a little
gnarly in terms of dependencies but I suppose that makes sense given its
nature. I verified that AS_HAS_CFI_NEGATE_RA_STATE gets set with ToT
binutils and that it does not with an older version.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

This unlocks our CI so hopefully it can get picked up quickly.

https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/299816618

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
