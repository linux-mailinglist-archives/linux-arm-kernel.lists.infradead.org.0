Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF85A3438
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CR19O8dAqUJkg3EMN2+44v4oERask9sJ8L80+LmlcJ4=; b=UO0r6aStiOzl6p
	0hrN93ZU8hxuNJircHkcy+0KQLiK/a5XxwjFF2IASou2V+wCRaNsswETkk3nyzyVa5Yev18UyILXz
	W2GWcyVAlUbUWv6Xqy6qhp8zZc4OQoVQdUTuu1LXcdsJPjviAdnQW9BGFihOa+oKwagpjc0AvrmDV
	FUp90xPhrcKWje0mfAb1Ke7mek7dxh1wPq5Skz1WEWs1mIlJ/ASC0k0loLrdanmWyxP4LHzGhfYFt
	VcB1HPlq3e+oPwHmhMql3O2uex/ML2tulq/GreWLffHXcCjHI5nYylsjBZ+zohxYPCmcO+Wr+pc26
	LVbvqgwHr45dyzUP14Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dOy-0002Yb-8O; Fri, 30 Aug 2019 09:41:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dOS-0002Gf-Q0
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:40:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 37BA3344;
 Fri, 30 Aug 2019 02:40:32 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D2DCD3F718;
 Fri, 30 Aug 2019 02:40:30 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:40:28 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH ARM64 v4.4 V3 05/44] arm64: Use pointer masking to limit
 uaccess speculation
Message-ID: <20190830094028.GE46475@lakrids.cambridge.arm.com>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <f26c719baa5df560360fb3bbb7483385dd5cb821.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f26c719baa5df560360fb3bbb7483385dd5cb821.1567077734.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_024033_056140_4E6C4EB8 
X-CRM114-Status: GOOD (  19.78  )
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 05:03:50PM +0530, Viresh Kumar wrote:
> From: Robin Murphy <robin.murphy@arm.com>
> 
> commit 4d8efc2d5ee4c9ccfeb29ee8afd47a8660d0c0ce upstream.
> 
> Similarly to x86, mitigate speculation past an access_ok() check by
> masking the pointer against the address limit before use.
> 
> Even if we don't expect speculative writes per se, it is plausible that
> a CPU may still speculate at least as far as fetching a cache line for
> writing, hence we also harden put_user() and clear_user() for peace of
> mind.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

Reviewed-by: Mark Rutland <mark.rutland@arm.com> [v4.4 backport]

Mark.

> ---
>  arch/arm64/include/asm/uaccess.h | 26 +++++++++++++++++++++++---
>  1 file changed, 23 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index c625cc5531fc..75363d723262 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -121,6 +121,26 @@ static inline unsigned long __range_ok(unsigned long addr, unsigned long size)
>  #define access_ok(type, addr, size)	__range_ok((unsigned long)(addr), size)
>  #define user_addr_max			get_fs
>  
> +/*
> + * Sanitise a uaccess pointer such that it becomes NULL if above the
> + * current addr_limit.
> + */
> +#define uaccess_mask_ptr(ptr) (__typeof__(ptr))__uaccess_mask_ptr(ptr)
> +static inline void __user *__uaccess_mask_ptr(const void __user *ptr)
> +{
> +	void __user *safe_ptr;
> +
> +	asm volatile(
> +	"	bics	xzr, %1, %2\n"
> +	"	csel	%0, %1, xzr, eq\n"
> +	: "=&r" (safe_ptr)
> +	: "r" (ptr), "r" (current_thread_info()->addr_limit)
> +	: "cc");
> +
> +	csdb();
> +	return safe_ptr;
> +}
> +
>  /*
>   * The "__xxx" versions of the user access functions do not verify the address
>   * space - it must have been done previously with a separate "access_ok()"
> @@ -193,7 +213,7 @@ do {									\
>  	__typeof__(*(ptr)) __user *__p = (ptr);				\
>  	might_fault();							\
>  	access_ok(VERIFY_READ, __p, sizeof(*__p)) ?			\
> -		__get_user((x), __p) :					\
> +		__p = uaccess_mask_ptr(__p), __get_user((x), __p) :	\
>  		((x) = 0, -EFAULT);					\
>  })
>  
> @@ -259,7 +279,7 @@ do {									\
>  	__typeof__(*(ptr)) __user *__p = (ptr);				\
>  	might_fault();							\
>  	access_ok(VERIFY_WRITE, __p, sizeof(*__p)) ?			\
> -		__put_user((x), __p) :					\
> +		__p = uaccess_mask_ptr(__p), __put_user((x), __p) :	\
>  		-EFAULT;						\
>  })
>  
> @@ -297,7 +317,7 @@ static inline unsigned long __must_check copy_in_user(void __user *to, const voi
>  static inline unsigned long __must_check clear_user(void __user *to, unsigned long n)
>  {
>  	if (access_ok(VERIFY_WRITE, to, n))
> -		n = __clear_user(to, n);
> +		n = __clear_user(__uaccess_mask_ptr(to), n);
>  	return n;
>  }
>  
> -- 
> 2.21.0.rc0.269.g1a574e7a288b
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
