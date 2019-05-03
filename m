Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D56312B63
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 12:21:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsLWOnrglo3ODc/V+1/obVSEL8uNQgGohsC744/o4+o=; b=XSkw6LzwYLMR6t
	Z2NCDLb5iQo1H8GRxv24/8z8lTsMPgDAA/IjYHC7KYjvGIK74JHY8rvRDM8ray9Ugq+yj5+KedQ+z
	3rFUNcGWelXlLzr6NlqTPmjlt3BQWV+j9+P0KfJcHQfsQeGMr1b0g4GjQ/FwSvY7RXfTrfifr+4G2
	/18gCPeB0E4Ru8g1AIAfcaGHjN8wW+bMJrvvo6BXaU9tk0Fpk34vciAgnwUHaocpUugO6XiGrMPUX
	73p7qnI6CC7/CkKLmyDVOCRmEdc9z2ctNiAC9yS/hfE7y9Ygm6vcvM23RRsASAxBsHayaIoZksL0/
	3wJ2J5C7THW2a456GJbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMVK0-0008Js-2J; Fri, 03 May 2019 10:21:40 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMVJt-0008JL-Kd
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 10:21:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D2FA374;
 Fri,  3 May 2019 03:21:32 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 351383F557;
 Fri,  3 May 2019 03:21:31 -0700 (PDT)
Date: Fri, 3 May 2019 11:21:28 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH 2/2] arm64: use the correct function type in
 SYSCALL_DEFINE0
Message-ID: <20190503102128.GD47811@lakrids.cambridge.arm.com>
References: <20190501200451.255615-1-samitolvanen@google.com>
 <20190501200451.255615-3-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501200451.255615-3-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_032133_686949_6503B0C7 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 01:04:51PM -0700, Sami Tolvanen wrote:
> Although a syscall defined using SYSCALL_DEFINE0 doesn't accept
> parameters, use the correct function type to avoid indirect call
> type mismatches with Control-Flow Integrity checking.

Generally, this makes sense, but I'm not sure that this is complete.

IIUC this introduces a new type mismatch with sys_ni_syscall() in some
cases. We probably need that to use SYSCALL_DEFINE0(), and maybe have a
ksys_ni_syscall() for in-kernel wrappers.

Thanks,
Mark.

> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/include/asm/syscall_wrapper.h | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/syscall_wrapper.h b/arch/arm64/include/asm/syscall_wrapper.h
> index a4477e515b798..507d0ee6bc690 100644
> --- a/arch/arm64/include/asm/syscall_wrapper.h
> +++ b/arch/arm64/include/asm/syscall_wrapper.h
> @@ -30,10 +30,10 @@
>  	}										\
>  	static inline long __do_compat_sys##name(__MAP(x,__SC_DECL,__VA_ARGS__))
>  
> -#define COMPAT_SYSCALL_DEFINE0(sname)					\
> -	asmlinkage long __arm64_compat_sys_##sname(void);		\
> -	ALLOW_ERROR_INJECTION(__arm64_compat_sys_##sname, ERRNO);	\
> -	asmlinkage long __arm64_compat_sys_##sname(void)
> +#define COMPAT_SYSCALL_DEFINE0(sname)							\
> +	asmlinkage long __arm64_compat_sys_##sname(const struct pt_regs *__unused);	\
> +	ALLOW_ERROR_INJECTION(__arm64_compat_sys_##sname, ERRNO);			\
> +	asmlinkage long __arm64_compat_sys_##sname(const struct pt_regs *__unused)
>  
>  #define COND_SYSCALL_COMPAT(name) \
>  	cond_syscall(__arm64_compat_sys_##name);
> @@ -62,11 +62,11 @@
>  	static inline long __do_sys##name(__MAP(x,__SC_DECL,__VA_ARGS__))
>  
>  #ifndef SYSCALL_DEFINE0
> -#define SYSCALL_DEFINE0(sname)					\
> -	SYSCALL_METADATA(_##sname, 0);				\
> -	asmlinkage long __arm64_sys_##sname(void);		\
> -	ALLOW_ERROR_INJECTION(__arm64_sys_##sname, ERRNO);	\
> -	asmlinkage long __arm64_sys_##sname(void)
> +#define SYSCALL_DEFINE0(sname)							\
> +	SYSCALL_METADATA(_##sname, 0);						\
> +	asmlinkage long __arm64_sys_##sname(const struct pt_regs *__unused);	\
> +	ALLOW_ERROR_INJECTION(__arm64_sys_##sname, ERRNO);			\
> +	asmlinkage long __arm64_sys_##sname(const struct pt_regs *__unused)
>  #endif
>  
>  #ifndef COND_SYSCALL
> -- 
> 2.21.0.593.g511ec345e18-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
