Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BF95DFCA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 10:31:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a13IxYUJILG/iBB/h9H7PAPyYgKXJ1oD9+q4m+E3ByU=; b=lJvDYmdSazAI+L
	SdJExOJ0q8A47vFSu6SoDhf/yP/hfZWa549f4/4viU5HawiacSlOCa1mh+zM3dhyq2y2678x4hhYy
	IkCtaoEYClNnzUuUuBQLioUmMzq7vFWOi+18Q5svYRYfb7GnZTDGDmXDc6wNzSxD/pXCyzWzaoayW
	qzF1OBtKXAKZrb0cXdc/6KWCJXu2kKIZKbcszgfQG1X7RALRIGdlivKUeZQxdsskBGxGEn37c+UgF
	skSdYAzg6ogcYotvLO8iFjniDm8OdORQDOxAgEeMWF/TITA8dlffcx2ix9eFC5hvRi1VxLKkavFbW
	aHDEgqAXcVqp8s35EYlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiafj-0002zj-Mk; Wed, 03 Jul 2019 08:31:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiafW-0002yn-44
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 08:31:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D8526344;
 Wed,  3 Jul 2019 01:31:06 -0700 (PDT)
Received: from [10.1.28.153] (unknown [10.1.28.153])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C108F3F718;
 Wed,  3 Jul 2019 01:31:05 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: mm: Fix dead assignment of old_pte
To: Nathan Huckleberry <nhuck@google.com>, catalin.marinas@arm.com,
 will@kernel.org
References: <CAJkfWY4yvVVmJoQ0WwyoFBkWYsUJnnQPNU+-g23-m-L3ETe_hQ@mail.gmail.com>
 <20190702234135.78780-1-nhuck@google.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <1895c6b5-645d-6a63-d486-efa20d6879db@arm.com>
Date: Wed, 3 Jul 2019 09:31:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190702234135.78780-1-nhuck@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_013110_212021_B566AC14 
X-CRM114-Status: GOOD (  18.98  )
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
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/3/19 12:41 AM, Nathan Huckleberry wrote:
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

I'm wondering if it is a case for __maybe_unused?

Something like:

-       pte_t old_pte;
+       pte_t __maybe_unused old_pte;


Cheers
Vladimir


> 
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
> Changes from v1 -> v2
> * Added scope to avoid [-Wdeclaration-after-statement]
>  arch/arm64/include/asm/pgtable.h | 27 ++++++++++++++++-----------
>  1 file changed, 16 insertions(+), 11 deletions(-)
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
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
