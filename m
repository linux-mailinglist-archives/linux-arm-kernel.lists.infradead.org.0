Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A035E2C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 13:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LwZJdcR7HSZAcYOiIr9ufdIIbUla5sQ28ftB86708Qk=; b=UzQUoRxbqaCq87
	a2ejUYAy7uBHsSw+ntNz7p9DxhoJkqXoRhQifkFSMtBpacd6gKV162KldNt2+SCyEATUmqrGrIHnJ
	xq7AVq/DdIKItrTDdgHYZxCgTSEQs3nDIDjy+hU8cGMwC83cRzcb23Fuue+qOwMILvfwn+PKdFoT/
	SYilUoyfFpT9zjU9n4aZf8wd2PQxpM/RXVrQLiI5CIbzk9biDC37HLxuuf80+KE0shF41FfCL+U8V
	t8kLcCjv4pGomnGJE6HpfGwx0R7TcA/jOlc87CJtAd7m9VwoSgzI5DHxq47GgC86k3XKuDoppNQaf
	FpFO26LxKycZybmzEwNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hidMO-0001nJ-C9; Wed, 03 Jul 2019 11:23:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hidMA-0001mG-RU
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 11:23:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6045E344;
 Wed,  3 Jul 2019 04:23:18 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 76C263F703;
 Wed,  3 Jul 2019 04:23:17 -0700 (PDT)
Date: Wed, 3 Jul 2019 12:23:12 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Nathan Huckleberry <nhuck@google.com>
Subject: Re: [PATCH v2] arm64: mm: Fix dead assignment of old_pte
Message-ID: <20190703112139.GA29570@lakrids.cambridge.arm.com>
References: <CAJkfWY4yvVVmJoQ0WwyoFBkWYsUJnnQPNU+-g23-m-L3ETe_hQ@mail.gmail.com>
 <20190702234135.78780-1-nhuck@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702234135.78780-1-nhuck@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_042322_983866_2E4DC802 
X-CRM114-Status: GOOD (  18.92  )
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
Cc: catalin.marinas@arm.com, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 04:41:35PM -0700, Nathan Huckleberry wrote:
> When analyzed with the clang static analyzer the
> following warning occurs
> 
> line 251, column 2
> Value stored to 'old_pte' is never read
> 
> This warning is repeated every time pgtable.h is
> included by another file and produces ~3500
> extra warnings.
> 
> Moving old_pte into preprocessor guard.
> 
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
> Changes from v1 -> v2
> * Added scope to avoid [-Wdeclaration-after-statement]
>  arch/arm64/include/asm/pgtable.h | 27 ++++++++++++++++-----------
>  1 file changed, 16 insertions(+), 11 deletions(-)

As Will asked, does this also trigger in linux-next?

I rewrote this code to avoid to only perform the READ_ONCE() when we'd
use the value, and IIUC that may be sufficient to avoid the warning:

https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/core&id=9b604722059039a1a3ff69fb8dfd024264046024

Thanks,
Mark.

> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index fca26759081a..12b7f08db40d 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -238,8 +238,6 @@ extern void __sync_icache_dcache(pte_t pteval);
>  static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
>  			      pte_t *ptep, pte_t pte)
>  {
> -	pte_t old_pte;
> -
>  	if (pte_present(pte) && pte_user_exec(pte) && !pte_special(pte))
>  		__sync_icache_dcache(pte);
>  
> @@ -248,16 +246,23 @@ static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
>  	 * hardware updates of the pte (ptep_set_access_flags safely changes
>  	 * valid ptes without going through an invalid entry).
>  	 */
> -	old_pte = READ_ONCE(*ptep);
> -	if (IS_ENABLED(CONFIG_DEBUG_VM) && pte_valid(old_pte) && pte_valid(pte) &&
> -	   (mm == current->active_mm || atomic_read(&mm->mm_users) > 1)) {
> -		VM_WARN_ONCE(!pte_young(pte),
> -			     "%s: racy access flag clearing: 0x%016llx -> 0x%016llx",
> -			     __func__, pte_val(old_pte), pte_val(pte));
> -		VM_WARN_ONCE(pte_write(old_pte) && !pte_dirty(pte),
> -			     "%s: racy dirty state clearing: 0x%016llx -> 0x%016llx",
> -			     __func__, pte_val(old_pte), pte_val(pte));
> +	#if IS_ENABLED(CONFIG_DEBUG_VM)
> +	{
> +		pte_t old_pte;
> +
> +		old_pte = READ_ONCE(*ptep);
> +		if (pte_valid(old_pte) && pte_valid(pte) &&
> +		  (mm == current->active_mm ||
> +		   atomic_read(&mm->mm_users) > 1)) {
> +			VM_WARN_ONCE(!pte_young(pte),
> +				     "%s: racy access flag clearing: 0x%016llx -> 0x%016llx",
> +				     __func__, pte_val(old_pte), pte_val(pte));
> +			VM_WARN_ONCE(pte_write(old_pte) && !pte_dirty(pte),
> +				     "%s: racy dirty state clearing: 0x%016llx -> 0x%016llx",
> +				     __func__, pte_val(old_pte), pte_val(pte));
> +		}
>  	}
> +	#endif
>  
>  	set_pte(ptep, pte);
>  }
> -- 
> 2.22.0.410.gd8fdbe21b5-goog
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
