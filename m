Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B969D199F66
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 21:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yDcAxZPn4VDYqV0iXbIo9v6pFAabn9kQm0W0P9GCMpc=; b=gKuYDq2NdweO0W
	TMWLkUiZWcDEjEchB6UAfZ4ekDJorMujXIWdNf3ZRZv6Ax5GesfvBNm6TrNYM2SzeoYvVd7+NG+n2
	Nki90ABaw/fXx8K7JjrE0WsHlZvMTYs8GhQy4svmRZCdyZe4XCAqTV9O8/Kb3Hto3XGmh43t2fuPE
	h9Sgs5mcu3Ig/63zExJvdGy6BVFVvH2C86Nm8oH3n8IJ29ArTLz3O463xmXULme7FIO7W0dii8pUh
	u5xi8Wl/bgFt7c/WvQwk+NO/R76pDI4Q3pIYwtIYN8tSLf9o+NlYE1r+PwQ9wxl+aeEHgbGdyjcE3
	rYGHoLpYzK1YnUO1Sprw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJMqS-0002XW-3X; Tue, 31 Mar 2020 19:46:44 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJMqK-0002XC-Bp
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 19:46:37 +0000
Received: by mail-pg1-x544.google.com with SMTP id h8so10835548pgs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 12:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=McSfVGO53GT+onuty+si9A0D5AuT8lLRpPmZo3ttlOM=;
 b=eJAdqBJ2z+laXu2VLjBHH8VchzOd8EZdFs0BxtKQ4C/pCCkyIaYKGwn7nAtZ5zWCEd
 qAbDjfQh+SpNHwv6Oq2Dn4fxkbDnWRQgrkCbMgwp3KnFALPY9vpzQuEcHdt6FE8y5LER
 qwR8Hi1L0wq8QOAr2CPpwFg2W+GOyXG+PA7mI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=McSfVGO53GT+onuty+si9A0D5AuT8lLRpPmZo3ttlOM=;
 b=ZT35jateITF1WB1NU7Bq6/e3vcjfGSDB/MwwGAQd+PeQbEbdfYr2eXwKU5SV3I7uyC
 PiXQnsWEBM/YBd7u4fPMZ0m59cwSqnLyy+ydxl8HH/sZqq4+c/wd+zUSjFZauQkUVy7W
 yo36cL1S1dBeeIJxH4L/dYw5Dw2QtVts2zMqzAMcbiC5vHq1SraTvfiU25AVUOPJR50a
 6fkPGoA1FgUP/X0jwWsaCjy6Tkmw3W3OnhHsVvebsJvMv/a+jtx3MHp2XJXxNgyhGu6J
 QfHT0tDlddtOa5yPirM2KXkkSLYJGUspXbTXL8PJ/F4qPNdBXbGd98ZgwYfw9Jx03GXT
 slZQ==
X-Gm-Message-State: ANhLgQ0Lxzi+ZJYiXbQPmXER5sVlD3TdqiVEgs0G7ISdQUSV2qPRPQoh
 xzKSE0+MzXuaHjdxZu9ExP2HJg==
X-Google-Smtp-Source: ADFU+vv50aemtn2DxG4hvoaoGIYJraig6CnwiJgc4tMf4NsQFH4BpYFhb/jSce3yhJjyu+iPKsJ3Bw==
X-Received: by 2002:a63:3187:: with SMTP id
 x129mr18660713pgx.180.1585683995603; 
 Tue, 31 Mar 2020 12:46:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o65sm13181259pfg.187.2020.03.31.12.46.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 12:46:34 -0700 (PDT)
Date: Tue, 31 Mar 2020 12:46:33 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: Always force a branch protection mode when the
 compiler has one
Message-ID: <202003311246.3BAE76AF1@keescook>
References: <20200331194459.54740-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331194459.54740-1-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_124636_422905_19A962AA 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, stable@vger.kernel.org,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 08:44:59PM +0100, Mark Brown wrote:
> Compilers with branch protection support can be configured to enable it by
> default, it is likely that distributions will do this as part of deploying
> branch protection system wide. As well as the slight overhead from having
> some extra NOPs for unused branch protection features this can cause more
> serious problems when the kernel is providing pointer authentication to
> userspace but not built for pointer authentication itself. In that case our
> switching of keys for userspace can affect the kernel unexpectedly, causing
> pointer authentication instructions in the kernel to corrupt addresses.
> 
> To ensure that we get consistent and reliable behaviour always explicitly
> initialise the branch protection mode, ensuring that the kernel is built
> the same way regardless of the compiler defaults.
> 
> Fixes: 7503197562567 (arm64: add basic pointer authentication support)
> Reported-by: Szabolcs Nagy <szabolcs.nagy@arm.com>
> Signed-off-by: Mark Brown <broonie@kernel.org>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Cc: stable@vger.kernel.org
> ---
>  arch/arm64/Kconfig  | 4 ++++
>  arch/arm64/Makefile | 7 ++++++-
>  2 files changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index d3efdc095a17..1e46746e8392 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1537,6 +1537,10 @@ config ARM64_PTR_AUTH
>  	  This feature works with FUNCTION_GRAPH_TRACER option only if
>  	  DYNAMIC_FTRACE_WITH_REGS is enabled.
>  
> +config CC_HAS_BRANCH_PROT_NONE
> +	# GCC 9 or later, clang 8 or later
> +	def_bool $(cc-option,-mbranch-protection=none)
> +
>  config CC_HAS_BRANCH_PROT_PAC_RET
>  	# GCC 9 or later, clang 8 or later
>  	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf)
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index f15f92ba53e6..370fca6663c8 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -65,6 +65,10 @@ stack_protector_prepare: prepare0
>  					include/generated/asm-offsets.h))
>  endif
>  
> +# Ensure that if the compiler supports branch protection we default it
> +# off, this will be overridden if we are using branch protection.
> +branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_NONE) := -mbranch-protection=none
> +
>  ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
>  branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
>  branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
> @@ -73,9 +77,10 @@ branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pa
>  # we pass it only to the assembler. This option is utilized only in case of non
>  # integrated assemblers.
>  branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
> -KBUILD_CFLAGS += $(branch-prot-flags-y)
>  endif
>  
> +KBUILD_CFLAGS += $(branch-prot-flags-y)
> +
>  ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
>  KBUILD_CPPFLAGS	+= -mbig-endian
>  CHECKFLAGS	+= -D__AARCH64EB__
> -- 
> 2.20.1
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
