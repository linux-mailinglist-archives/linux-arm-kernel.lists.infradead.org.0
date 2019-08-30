Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D5CA344E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfhe+pLu1UMoGgJ6N3GFseoCJCgkvfVjbKwhF+N0CmQ=; b=rxGlPAMA/xcXVM
	qPlhSooThTJlvl1wO0oymi3WlkWTnpLTZUI6RTyRNgU/o37lZ5QBlkHgNES65BgclxY3B4wdGp/vP
	lYTA+xvrLFeW3sSv1b0snTozOtLqmS6r860Dz9QvzKFzCy3fHhqtg8MwzIlhSsa3VE9yvRf5unune
	qthF+Qoup9mpWvT5bepFzObnStlEQxzYwA0olpCld3jd7MHDfhBkcVb5mb12KpZtCp+Xak/i+9/C3
	Qyl30eqT2C7I2LP3zlOi0qZUrJAVgUzd4gijAiKys5vJ0BDKUP5e0mQkK6ZqWqA2RErD1g7/n8pJk
	rRYkmp7vWGVusNxkkgfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dR7-0004zj-QO; Fri, 30 Aug 2019 09:43:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dQj-0004o8-Oo
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:42:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 761D0344;
 Fri, 30 Aug 2019 02:42:53 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 22A413F718;
 Fri, 30 Aug 2019 02:42:52 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:42:50 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH ARM64 v4.4 V3 44/44] arm64: futex: Mask __user pointers
 prior to dereference
Message-ID: <20190830094249.GL46475@lakrids.cambridge.arm.com>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <965d727955b4a45ac1f12e67c6a433110ef94871.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <965d727955b4a45ac1f12e67c6a433110ef94871.1567077734.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_024253_912772_DEAB00C0 
X-CRM114-Status: GOOD (  16.20  )
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

On Thu, Aug 29, 2019 at 05:04:29PM +0530, Viresh Kumar wrote:
> From: Will Deacon <will.deacon@arm.com>
> 
> commit 91b2d3442f6a44dce875670d702af22737ad5eff upstream.
> 
> The arm64 futex code has some explicit dereferencing of user pointers
> where performing atomic operations in response to a futex command. This
> patch uses masking to limit any speculative futex operations to within
> the user address space.
> 
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

This would have made more sense immediately following patch 11, as in
mainline and the v4.9 backport. Having things applied in the same order
makes it much easier to compare and verify.

Regardless:

Reviewed-by: Mark Rutland <mark.rutland@arm.com> [v4.4 backport]

Mark.

> ---
>  arch/arm64/include/asm/futex.h | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/futex.h b/arch/arm64/include/asm/futex.h
> index 34d4d2e2f561..8ab6e83cb629 100644
> --- a/arch/arm64/include/asm/futex.h
> +++ b/arch/arm64/include/asm/futex.h
> @@ -53,9 +53,10 @@
>  	: "memory")
>  
>  static inline int
> -arch_futex_atomic_op_inuser(int op, int oparg, int *oval, u32 __user *uaddr)
> +arch_futex_atomic_op_inuser(int op, int oparg, int *oval, u32 __user *_uaddr)
>  {
>  	int oldval = 0, ret, tmp;
> +	u32 __user *uaddr = __uaccess_mask_ptr(_uaddr);
>  
>  	pagefault_disable();
>  
> @@ -93,15 +94,17 @@ arch_futex_atomic_op_inuser(int op, int oparg, int *oval, u32 __user *uaddr)
>  }
>  
>  static inline int
> -futex_atomic_cmpxchg_inatomic(u32 *uval, u32 __user *uaddr,
> +futex_atomic_cmpxchg_inatomic(u32 *uval, u32 __user *_uaddr,
>  			      u32 oldval, u32 newval)
>  {
>  	int ret = 0;
>  	u32 val, tmp;
> +	u32 __user *uaddr;
>  
> -	if (!access_ok(VERIFY_WRITE, uaddr, sizeof(u32)))
> +	if (!access_ok(VERIFY_WRITE, _uaddr, sizeof(u32)))
>  		return -EFAULT;
>  
> +	uaddr = __uaccess_mask_ptr(_uaddr);
>  	asm volatile("// futex_atomic_cmpxchg_inatomic\n"
>  ALTERNATIVE("nop", SET_PSTATE_PAN(0), ARM64_HAS_PAN, CONFIG_ARM64_PAN)
>  "	prfm	pstl1strm, %2\n"
> -- 
> 2.21.0.rc0.269.g1a574e7a288b
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
