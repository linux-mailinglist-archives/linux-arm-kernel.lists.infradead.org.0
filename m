Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1651C5966
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1HjCT+oe/GhwjRSQWe6Py2kHjN2uhxfIuqmouQK0NAc=; b=ilFA6/ILUPii+1
	sEHEI+twNEZ9fAsIJGXcEnVMldYcxvhfn3ndoqOvJ2/rPyUWviqmERnhH9kxZGS8JQTZ12mwaiV6G
	Cbcn0lYveJFJoJR+RgLcUI2TJVOTkNeEhGoVEC/xDSFXYbMxs2++6G/kJKtxotieZ2RVuVWsUKP/X
	SSxpzD+kMvdBC70/xSIpsnBXEaFnNYquwUF4iWNLKQhYaihT7lsWkeOWrZtNL0d0WtYp9FAY6Edhi
	SSS/OOvndgdCLjkDpyrwO11DsMepnArULueDlhsBNfaRA0xag47jlhaxt9QBps7/nLZtrltZqRKPt
	syXY3odYceBU8ef+t3Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyWT-0000Xi-Eu; Tue, 05 May 2020 14:26:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyWL-0000Wn-CG
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:26:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CAEE01FB;
 Tue,  5 May 2020 07:26:03 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.25.241])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 456BF3F68F;
 Tue,  5 May 2020 07:25:59 -0700 (PDT)
Date: Tue, 5 May 2020 15:25:56 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
Message-ID: <20200505142556.GF82823@C02TD0UTHF1T.local>
References: <20200505141257.707945-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505141257.707945-1-arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_072605_463389_CEBC62A1 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marc Zyngier <maz@kernel.org>, Ionela Voinescu <ionela.voinescu@arm.com>,
 Julien Thierry <jthierry@redhat.com>, Alexandre Ghiti <alex@ghiti.fr>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Torsten Duwe <duwe@suse.de>,
 Steve Capper <steve.capper@arm.com>, linux-kernel@vger.kernel.org,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Torsten Duwe <duwe@lst.de>,
 clang-built-linux@googlegroups.com, Josh Poimboeuf <jpoimboe@redhat.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 04:12:36PM +0200, Arnd Bergmann wrote:
> Clang only supports the patchable_function_entry attribute on
> little-endian arm64 builds, but not on big-endian:
> 
> include/linux/kasan-checks.h:16:8: error: unknown attribute 'patchable_function_entry' ignored [-Werror,-Wunknown-attributes]
> 
> Disable that configuration with another dependency. Unfortunately
> the existing check is not enough, as $(cc-option) at this point does
> not pass the -mbig-endian flag.

Well that's unfortunate. :(

Do we know if this is deliberate and/or likely to change in future? This
practically rules out a BE distro kernel with things like PAC, which
isn't ideal.

> Fixes: 3b23e4991fb6 ("arm64: implement ftrace with regs")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

This looks fine for now, and we can add a version check in future, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 4b256fa6db7a..a33d6402b934 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -151,7 +151,7 @@ config ARM64
>  	select HAVE_DMA_CONTIGUOUS
>  	select HAVE_DYNAMIC_FTRACE
>  	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
> -		if $(cc-option,-fpatchable-function-entry=2)
> +		if $(cc-option,-fpatchable-function-entry=2) && !(CC_IS_CLANG && CPU_BIG_ENDIAN)
>  	select HAVE_EFFICIENT_UNALIGNED_ACCESS
>  	select HAVE_FAST_GUP
>  	select HAVE_FTRACE_MCOUNT_RECORD
> -- 
> 2.26.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
