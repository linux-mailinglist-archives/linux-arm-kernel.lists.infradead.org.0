Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F06891A77F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 11:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZZMNihA7nIvxfgPzijmHPQoE7tbFNiPLD8uK1sBJvY=; b=oy2ZELtnh8phUD
	BykaSLSUqLOS3yk/uCSV/L2h0Rf7Iu78g+b6WVylP9aLE7GfKVvkmtG95D/yW1PlntuUmi69X2paA
	Ll5Fzpg11qoPQdtStW2ndfzZgWdS7KhGZWzrCpeDmIXmRfS2azlfq1cAU5duWrtL1w375wHtwvMgu
	bgPrjbq0dRg92uhXPtQYOBxnesW3lXyvjMmbgM5sBGY1VGdFG0pB7hcK7uQQXca6nyapIwzvLAfhd
	BMacd4VRt8vdgXqjJBQ1/p2E0vHgD1Ge3NqaWdj2/c8V5lvjAaOSAnxZSTZUSQ3axLj7llhSHw+Cu
	V1rd+bSSp6KKKZt1lNUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOILd-0002Fd-On; Tue, 14 Apr 2020 09:59:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOILW-0002F8-6P
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 09:59:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 605841FB;
 Tue, 14 Apr 2020 02:59:08 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3EB863F6C4;
 Tue, 14 Apr 2020 02:59:07 -0700 (PDT)
Date: Tue, 14 Apr 2020 10:59:04 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Fangrui Song <maskray@google.com>
Subject: Re: [PATCH] arm64: Delete the space separator in __emit_inst
Message-ID: <20200414095904.GB1278@C02TD0UTHF1T.local>
References: <20200413033811.75074-1-maskray@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413033811.75074-1-maskray@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_025910_285123_24877709 
X-CRM114-Status: GOOD (  17.90  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fangrui,

On Sun, Apr 12, 2020 at 08:38:11PM -0700, Fangrui Song wrote:
> Many instances of __emit_inst(x) expand to a directive. In a few places
> it is used as a macro argument, e.g.
> 
>   arch/arm64/include/asm/sysreg.h
>   #define __emit_inst(x)                       .inst (x)
> 
>   arch/arm64/include/asm/sysreg.h
>   #define SET_PSTATE_PAN(x)            __emit_inst(0xd500401f | PSTATE_PAN | ((!!x) << PSTATE_Imm_shift))
> 
>   arch/arm64/kvm/hyp/entry.S
>   ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)
> 
> Clang integrated assembler parses `.inst (x)` as two arguments passing
> to a macro. We delete the space separator so that `.inst(x)` will be
> parsed as one argument.

I'm a little confused by the above; sorry if the below sounds stupid or
pedantic, but I just want to make sure I've understood the problem
correctly.

For the above, ALTERNATIVE() and SET_PSTATE_PAN() are both preprocessor
macros, so I would expect those to be expanded before either the
integrated assembler or an external assembler consumes any of the
assembly (and both would see the same expanded text). Given that, I'm a
bit confused as to why the integrated assembly would have an impact on
preprocessing.

Does compiling the pre-processed source using the integrated assembler
result in the same behaviour? Can we see the expanded text to make that
clear?

... at what stage exactly does this go wrong?

Thanks,
Mark.

> 
> Note, GNU as parsing `.inst (x)` as one argument is unintentional (for
> example the x86 backend will parse the construct as two arguments).
> See https://sourceware.org/bugzilla/show_bug.cgi?id=25750#c10
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/939
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Fangrui Song <maskray@google.com>
> ---
>  arch/arm64/include/asm/sysreg.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index ebc622432831..af21e2ec5e3e 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -49,7 +49,9 @@
>  #ifndef CONFIG_BROKEN_GAS_INST
>  
>  #ifdef __ASSEMBLY__
> -#define __emit_inst(x)			.inst (x)
> +// The space separator is omitted so that __emit_inst(x) can be parsed as
> +// either a directive or a macro argument.
> +#define __emit_inst(x)			.inst(x)
>  #else
>  #define __emit_inst(x)			".inst " __stringify((x)) "\n\t"
>  #endif
> -- 
> 2.26.0.110.g2183baf09c-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
