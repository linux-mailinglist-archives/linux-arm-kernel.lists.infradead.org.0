Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 606A51E4741
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UH/g16jZA1klNV/nhhp5YzdLhveifTxXCSonhatp/Ec=; b=tLQrZIItJLfb+L
	QkEkE//mJphPZLK0rGDRzw3K64/xQ0W9Nib0fCfO3L/pme15T+pKDvHtMSHHaxrnOBAwF5W3h6O8H
	GIF/buXu050zXrK478d+HPyptI7ZBqXx/HvbYavJxo8clm0WeS5pRJIWQLUHKlzf26ly5owQkfHZG
	gk8io4T+zxm2kI8ia/u4NX2IvvLHzjhp+3EQxkAfgRQ16hmNqMEnmtSLkRgki5Je78ceJRPw72V3O
	KbG5fM7Qy4BZjTrDMMd8X9flMt1qt7LP65anMMMwFcqNuWfV0xtkmOFdMHCxsO6DeG472Z4UEPhqC
	oXZCHfAzuQe25B7ZqkXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdxup-0004bM-8P; Wed, 27 May 2020 15:24:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdxud-0004U8-9g
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 15:24:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C3DDD30E;
 Wed, 27 May 2020 08:24:10 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 01D3E3F52E;
 Wed, 27 May 2020 08:24:08 -0700 (PDT)
Date: Wed, 27 May 2020 16:24:06 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>,
 Fangrui Song <maskray@google.com>
Subject: Re: [PATCH] arm64: disable -fsanitize=shadow-call-stack for big-endian
Message-ID: <20200527152406.GD59947@C02TD0UTHF1T.local>
References: <20200527134016.753354-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527134016.753354-1-arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_082411_386717_9D2C9AC6 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 03:39:46PM +0200, Arnd Bergmann wrote:
> clang-11 and earlier do not support -fsanitize=shadow-call-stack
> in combination with -mbig-endian, but the Kconfig check does not
> pass the endianess flag, so building a big-endian kernel with
> this fails at build time:
> 
> clang: error: unsupported option '-fsanitize=shadow-call-stack' for target 'aarch64_be-unknown-linux'
> 
> Change the Kconfig check to let Kconfig figure this out earlier
> and prevent the broken configuration. I assume this is a bug
> in clang that needs to be fixed, but we also have to work
> around existing releases.
> 
> Fixes: 5287569a790d ("arm64: Implement Shadow Call Stack")
> Link: https://bugs.llvm.org/show_bug.cgi?id=46076
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I suspect this is similar to the patchable-function-entry issue, and
this is an oversight that we'd rather fix toolchain side.

Nick, Fangrui, thoughts?

Mark.

> ---
>  arch/arm64/Kconfig | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index a82441d6dc36..692e1575a6c8 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1031,7 +1031,9 @@ config ARCH_ENABLE_SPLIT_PMD_PTLOCK
>  
>  # Supported by clang >= 7.0
>  config CC_HAVE_SHADOW_CALL_STACK
> -	def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
> +	bool
> +	default $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18 -mbig-endian) if CPU_BIG_ENDIAN
> +	default $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18 -mlittle-endian) if !CPU_BIG_ENDIAN
>  
>  config SECCOMP
>  	bool "Enable seccomp to safely compute untrusted bytecode"
> -- 
> 2.26.2
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
