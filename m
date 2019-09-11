Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE442AFFBD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 17:16:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3DZX5lGlAs/rs/bPITCh9pz4ajxS0k1JiumLrwTFUU=; b=htnBldB+YWKvJV
	KyKTJ220kFr7HXzvy/a1aRcWeSDHfcQ8gTSZlj/Gb4ptmRP64kRAjqt8xEDCaTtX2tx4SV9hFurEC
	m6RGbHy0DvwV3ojTRfGL6gpSAzE2jQu61MWs5NLp+fsJ+fYa+4ZOuyVKo4Ae8u3zImRgMtJ/iNZKu
	annw5Q3waFM16soCQF0etlB6X/J4tThrbCfZkNL2Th1Y4VsYj3Jm+7DV/lAhr3m8ZRdvqt9KDbNzG
	j09aHl0j68QZiuVUPY1KB+G/a/Lzc2THuG6XsWSDfOo66rcE7jK3DTPFRK6nkdv9aLUVHlE5OB8v2
	lOY8/1NNfz6TCj9bF30w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i84Lo-0001BB-7J; Wed, 11 Sep 2019 15:16:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i84Ld-0001AN-Dq
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 15:15:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 22A9828;
 Wed, 11 Sep 2019 08:15:55 -0700 (PDT)
Received: from blommer (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 763A23F67D;
 Wed, 11 Sep 2019 08:15:53 -0700 (PDT)
Date: Wed, 11 Sep 2019 16:15:46 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] arm64: fix function types in COND_SYSCALL
Message-ID: <20190911151545.GD3360@blommer>
References: <20190910224044.100388-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910224044.100388-1-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_081557_508659_29791E32 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 03:40:44PM -0700, Sami Tolvanen wrote:
> Define a weak function in COND_SYSCALL instead of a weak alias to
> sys_ni_syscall, which has an incompatible type. This fixes indirect
> call mismatches with Control-Flow Integrity (CFI) checking.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

This looks correct to me, builds fine, and I asume has been tested, so FWIW:

Acked-by: Mark Rutland <mark.rutland@arm.com>

In looking at this, I came to the conclusion that we can drop the ifdeffery
around our SYSCALL_DEFINE0(), COND_SYSCALL(), and SYS_NI(), which I evidently
cargo-culted from x86 (where the ifdeffery is actually necessary).

I can send a follow up for that.

Thanks,
Mark.

> ---
>  arch/arm64/include/asm/syscall_wrapper.h | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/syscall_wrapper.h b/arch/arm64/include/asm/syscall_wrapper.h
> index 507d0ee6bc69..06d880b3526c 100644
> --- a/arch/arm64/include/asm/syscall_wrapper.h
> +++ b/arch/arm64/include/asm/syscall_wrapper.h
> @@ -8,6 +8,8 @@
>  #ifndef __ASM_SYSCALL_WRAPPER_H
>  #define __ASM_SYSCALL_WRAPPER_H
>  
> +struct pt_regs;
> +
>  #define SC_ARM64_REGS_TO_ARGS(x, ...)				\
>  	__MAP(x,__SC_ARGS					\
>  	      ,,regs->regs[0],,regs->regs[1],,regs->regs[2]	\
> @@ -35,8 +37,11 @@
>  	ALLOW_ERROR_INJECTION(__arm64_compat_sys_##sname, ERRNO);			\
>  	asmlinkage long __arm64_compat_sys_##sname(const struct pt_regs *__unused)
>  
> -#define COND_SYSCALL_COMPAT(name) \
> -	cond_syscall(__arm64_compat_sys_##name);
> +#define COND_SYSCALL_COMPAT(name) 							\
> +	asmlinkage long __weak __arm64_compat_sys_##name(const struct pt_regs *regs)	\
> +	{										\
> +		return sys_ni_syscall();						\
> +	}
>  
>  #define COMPAT_SYS_NI(name) \
>  	SYSCALL_ALIAS(__arm64_compat_sys_##name, sys_ni_posix_timers);
> @@ -70,7 +75,11 @@
>  #endif
>  
>  #ifndef COND_SYSCALL
> -#define COND_SYSCALL(name) cond_syscall(__arm64_sys_##name)
> +#define COND_SYSCALL(name)							\
> +	asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)	\
> +	{									\
> +		return sys_ni_syscall();					\
> +	}
>  #endif
>  
>  #ifndef SYS_NI
> -- 
> 2.23.0.162.g0b9fbb3734-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
