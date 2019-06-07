Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E22C9391D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 18:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkDRFJB5OBIB19uw1VxVoe6Zx63zSs1k97kwuwJoPW8=; b=F6eVrnUfsSA9Da
	12IyAUMK45Sw/lTuBTFqkJy21Vn/7eRy7cx+5pkJFn2ioAbx5579FHIwXaG6DcqdnpkN9LprFUyOE
	XTFcq/rN5VlFOGAR36ro3UesYh4HXz7KN4W0Bn5qbVo4RblS+z2sucRN7RRBzsAzo/Y6W8h7SKKV6
	XMII5aygr76B5ZsR7vAZmCuf93tYH3d20OLl0M5UzD16utftw3dQtBgTJkcks4TbNgix9T3jwpK6d
	+zQDtxerA8EYkOqii5GafAb1hvqXhaT16pocfF1NPg3KieUeIpSxslXUdYBex7YakgpqSIxqxiz/m
	bEPwTFJDkoi3sCxU9ehg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZHf3-0006rf-P7; Fri, 07 Jun 2019 16:24:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZHeu-0006rH-SY
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 16:24:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EE2F02B;
 Fri,  7 Jun 2019 09:24:03 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CFE553F71A;
 Fri,  7 Jun 2019 09:24:02 -0700 (PDT)
Date: Fri, 7 Jun 2019 17:24:00 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] arm64: Don't unconditionally add -Wno-psabi to
 KBUILD_CFLAGS
Message-ID: <20190607162400.GI28398@e103592.cambridge.arm.com>
References: <20190607161201.73430-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607161201.73430-1-natechancellor@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_092404_971358_535D38BB 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, clang-built-linux@googlegroups.com,
 Qian Cai <cai@lca.pw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 09:12:01AM -0700, Nathan Chancellor wrote:
> This is a GCC only option, which warns about ABI changes within GCC, so
> unconditionally adding breaks Clang with tons of:
> 
> warning: unknown warning option '-Wno-psabi' [-Wunknown-warning-option]
> 
> and link time failures:
> 
> ld.lld: error: undefined symbol: __efistub___stack_chk_guard
> >>> referenced by arm-stub.c:73
> (/home/nathan/cbl/linux/drivers/firmware/efi/libstub/arm-stub.c:73)
> >>>               arm-stub.stub.o:(__efistub_install_memreserve_table)
> in archive ./drivers/firmware/efi/libstub/lib.a
> 
> I suspect the link time failure comes from some flags not being added
> via cc-option, which will always fail when an unknown flag is
> unconditionally added to KBUILD_CFLAGS because -Werror is added after
> commit c3f0d0bc5b01 ("kbuild, LLVMLinux: Add -Werror to cc-option to
> support clang").
> 
> $ echo "int main() { return 0; }" | clang -Wno-psabi -o /dev/null -x c -
> warning: unknown warning option '-Wno-psabi' [-Wunknown-warning-option]
> 1 warning generated.
> 
> $ echo $?
> 0
> 
> $ echo "int main() { return 0; }" | clang -Werror -Wno-psabi -o /dev/null -x c -
> error: unknown warning option '-Wno-psabi' [-Werror,-Wunknown-warning-option]
> 
> $ echo $?
> 1
> 
> This side effect is user visible (aside from the inordinate amount of
> -Wunknown-warning-option and build failure), as some warnings that are
> normally disabled like -Waddress-of-packed-member or
> -Wunused-const-variable show up.
> 
> Use cc-disable-warning so that it gets disabled for GCC and does nothing
> for Clang.
> 
> Fixes: ebcc5928c5d9 ("arm64: Silence gcc warnings about arch ABI drift")
> Link: https://github.com/ClangBuiltLinux/linux/issues/511
> Reported-by: Qian Cai <cai@lca.pw>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

FWIW,
Acked-by: Dave Martin <Dave.Martin@arm.com>

Cheers
---Dave

> ---
>  arch/arm64/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 8fbd583b18e1..e9d2e578cbe6 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -51,7 +51,7 @@ endif
>  
>  KBUILD_CFLAGS	+= -mgeneral-regs-only $(lseinstr) $(brokengasinst)
>  KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
> -KBUILD_CFLAGS	+= -Wno-psabi
> +KBUILD_CFLAGS	+= $(call cc-disable-warning, psabi)
>  KBUILD_AFLAGS	+= $(lseinstr) $(brokengasinst)
>  
>  KBUILD_CFLAGS	+= $(call cc-option,-mabi=lp64)
> -- 
> 2.22.0.rc3
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
