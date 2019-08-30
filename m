Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCE8A3443
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TcltfdtuBqKtzidsNkIBYxd9THL7wXuoGAzFdcnVTsk=; b=WD3CvYLKip8eZZ
	dteiPtkYnEJlOkCTbaeHA3l1hgPhHwUKVm6HWC87kowZHe8p11ToEUYg1CFXN/hl/9AS64T9+e5Dk
	GLQUD7aTatAc8FMHIRxSH8WA5f1ImBqxb75s05ucJQGC8F/BYNwmSY6Pj/dM+519iF5MwhP8DBsXA
	8CFKRYso8YpZHAhvEWVmfYTCbJUbUGrWHVLrXyUd+4a7b/Hv1yToGR4Ms3MdIfVoz+m0dIlg7eEYE
	01D3qxKfrkVYnmV9JjSZmIzKLrth7Kbouo/8UxDu6I3GldBMat5rmLyR+kxgHRkF8HudHyU7s73Tg
	xVaBxKwxmrd+JHDf+9Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dPx-0003hK-Ph; Fri, 30 Aug 2019 09:42:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dP0-0002xO-Hq
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:41:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39120344;
 Fri, 30 Aug 2019 02:41:06 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D989D3F718;
 Fri, 30 Aug 2019 02:41:04 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:41:02 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH ARM64 v4.4 V3 08/44] arm64: uaccess: Don't bother eliding
 access_ok checks in __{get, put}_user
Message-ID: <20190830094102.GH46475@lakrids.cambridge.arm.com>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <40fe1d91c9cd8d78ae952b821185681621f92b10.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <40fe1d91c9cd8d78ae952b821185681621f92b10.1567077734.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_024106_777743_662E88D8 
X-CRM114-Status: GOOD (  16.10  )
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

On Thu, Aug 29, 2019 at 05:03:53PM +0530, Viresh Kumar wrote:
> From: Will Deacon <will.deacon@arm.com>
> 
> commit 84624087dd7e3b482b7b11c170ebc1f329b3a218 upstream.
> 
> access_ok isn't an expensive operation once the addr_limit for the current
> thread has been loaded into the cache. Given that the initial access_ok
> check preceding a sequence of __{get,put}_user operations will take
> the brunt of the miss, we can make the __* variants identical to the
> full-fat versions, which brings with it the benefits of address masking.
> 
> The likely cost in these sequences will be from toggling PAN/UAO, which
> we can address later by implementing the *_unsafe versions.
> 
> Reviewed-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> [ v4.4: Fixed conflicts around {__get_user|__put_user}_unaligned macros ]
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---

Reviewed-by: Mark Rutland <mark.rutland@arm.com> [v4.4 backport]

Mark.

>  arch/arm64/include/asm/uaccess.h | 62 ++++++++++++++++++--------------
>  1 file changed, 36 insertions(+), 26 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index fc11c50af558..a34324436ce1 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -200,30 +200,35 @@ do {									\
>  			CONFIG_ARM64_PAN));				\
>  } while (0)
>  
> -#define __get_user(x, ptr)						\
> +#define __get_user_check(x, ptr, err)					\
>  ({									\
> -	int __gu_err = 0;						\
> -	__get_user_err((x), (ptr), __gu_err);				\
> -	__gu_err;							\
> +	__typeof__(*(ptr)) __user *__p = (ptr);				\
> +	might_fault();							\
> +	if (access_ok(VERIFY_READ, __p, sizeof(*__p))) {		\
> +		__p = uaccess_mask_ptr(__p);				\
> +		__get_user_err((x), __p, (err));			\
> +	} else {							\
> +		(x) = 0; (err) = -EFAULT;				\
> +	}								\
>  })
>  
>  #define __get_user_error(x, ptr, err)					\
>  ({									\
> -	__get_user_err((x), (ptr), (err));				\
> +	__get_user_check((x), (ptr), (err));				\
>  	(void)0;							\
>  })
>  
> -#define __get_user_unaligned __get_user
> -
> -#define get_user(x, ptr)						\
> +#define __get_user(x, ptr)						\
>  ({									\
> -	__typeof__(*(ptr)) __user *__p = (ptr);				\
> -	might_fault();							\
> -	access_ok(VERIFY_READ, __p, sizeof(*__p)) ?			\
> -		__p = uaccess_mask_ptr(__p), __get_user((x), __p) :	\
> -		((x) = 0, -EFAULT);					\
> +	int __gu_err = 0;						\
> +	__get_user_check((x), (ptr), __gu_err);				\
> +	__gu_err;							\
>  })
>  
> +#define __get_user_unaligned __get_user
> +
> +#define get_user	__get_user
> +
>  #define __put_user_asm(instr, reg, x, addr, err)			\
>  	asm volatile(							\
>  	"1:	" instr "	" reg "1, [%2]\n"			\
> @@ -266,30 +271,35 @@ do {									\
>  			CONFIG_ARM64_PAN));				\
>  } while (0)
>  
> -#define __put_user(x, ptr)						\
> +#define __put_user_check(x, ptr, err)					\
>  ({									\
> -	int __pu_err = 0;						\
> -	__put_user_err((x), (ptr), __pu_err);				\
> -	__pu_err;							\
> +	__typeof__(*(ptr)) __user *__p = (ptr);				\
> +	might_fault();							\
> +	if (access_ok(VERIFY_WRITE, __p, sizeof(*__p))) {		\
> +		__p = uaccess_mask_ptr(__p);				\
> +		__put_user_err((x), __p, (err));			\
> +	} else	{							\
> +		(err) = -EFAULT;					\
> +	}								\
>  })
>  
>  #define __put_user_error(x, ptr, err)					\
>  ({									\
> -	__put_user_err((x), (ptr), (err));				\
> +	__put_user_check((x), (ptr), (err));				\
>  	(void)0;							\
>  })
>  
> -#define __put_user_unaligned __put_user
> -
> -#define put_user(x, ptr)						\
> +#define __put_user(x, ptr)						\
>  ({									\
> -	__typeof__(*(ptr)) __user *__p = (ptr);				\
> -	might_fault();							\
> -	access_ok(VERIFY_WRITE, __p, sizeof(*__p)) ?			\
> -		__p = uaccess_mask_ptr(__p), __put_user((x), __p) :	\
> -		-EFAULT;						\
> +	int __pu_err = 0;						\
> +	__put_user_check((x), (ptr), __pu_err);				\
> +	__pu_err;							\
>  })
>  
> +#define __put_user_unaligned __put_user
> +
> +#define put_user	__put_user
> +
>  extern unsigned long __must_check __copy_from_user(void *to, const void __user *from, unsigned long n);
>  extern unsigned long __must_check __copy_to_user(void __user *to, const void *from, unsigned long n);
>  extern unsigned long __must_check __copy_in_user(void __user *to, const void __user *from, unsigned long n);
> -- 
> 2.21.0.rc0.269.g1a574e7a288b
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
