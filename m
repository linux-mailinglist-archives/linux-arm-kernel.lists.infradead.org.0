Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E6C1C2D72
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 17:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HerVfMdXgd8Pma58qFBDuUpb6aS8sqz1F8fNWTDEZgo=; b=ko9z/ZRahxaOzc
	TZM2RW1BXCKiBfxa7Q5B0BVM5SOF8hdRZCWWB5z/TDWLwWHIKdyjSO5IYT0l/BWQj+VT5eKbxr3Ig
	x5dpl9x2VrMnboPoqxI9mY2iD1zNuxvM6N2TG8ABzFxdKJlPcVTUcCet8u5IYpLnCHU9efpd1DjTx
	/Fgg3UBlhW5NJSlN7Czheq+U+kApP4Hai8F7oItzkvdR7Cznu22mwSH/i5mOo/k8E8lQEj03xZJYA
	O6WGk1PvFxhTXNMiYSotMYAVlvLs8JkmP54dD+bh1s0JqVSe4sHot6Qtubwt7sB2QeiY3s7Qqven7
	IBJzHqQPr1x52GtDx0Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGYO-0001hN-5Y; Sun, 03 May 2020 15:29:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGYJ-0001ge-Kd
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 15:29:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C526630E;
 Sun,  3 May 2020 08:29:07 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 78EC23F68F;
 Sun,  3 May 2020 08:29:06 -0700 (PDT)
Date: Sun, 3 May 2020 16:29:00 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH 3/4] arm64: mte: Enable swap of tagged pages
Message-ID: <20200503152858.GA11959@gaia>
References: <20200422142530.32619-1-steven.price@arm.com>
 <20200422142530.32619-4-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422142530.32619-4-steven.price@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_082911_720888_E2B15F0F 
X-CRM114-Status: GOOD (  11.75  )
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Hugh Dickins <hughd@google.com>, linux-mm@kvack.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 03:25:29PM +0100, Steven Price wrote:
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index 39a372bf8afc..a4ad1b75a1a7 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -80,6 +80,8 @@ extern unsigned long empty_zero_page[PAGE_SIZE / sizeof(unsigned long)];
>  #define pte_user_exec(pte)	(!(pte_val(pte) & PTE_UXN))
>  #define pte_cont(pte)		(!!(pte_val(pte) & PTE_CONT))
>  #define pte_devmap(pte)		(!!(pte_val(pte) & PTE_DEVMAP))
> +#define pte_tagged(pte)		(!!((pte_val(pte) & PTE_ATTRINDX_MASK) == \
> +				    PTE_ATTRINDX(MT_NORMAL_TAGGED)))
>  
>  #define pte_cont_addr_end(addr, end)						\
>  ({	unsigned long __boundary = ((addr) + CONT_PTE_SIZE) & CONT_PTE_MASK;	\
> @@ -268,12 +270,17 @@ static inline void __check_racy_pte_update(struct mm_struct *mm, pte_t *ptep,
>  		     __func__, pte_val(old_pte), pte_val(pte));
>  }
>  
> +void mte_sync_tags(pte_t *ptep, pte_t pte);
> +
>  static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
>  			      pte_t *ptep, pte_t pte)
>  {
>  	if (pte_present(pte) && pte_user_exec(pte) && !pte_special(pte))
>  		__sync_icache_dcache(pte);
>  
> +	if (system_supports_mte() && pte_tagged(pte))
> +		mte_sync_tags(ptep, pte);

I think this needs a pte_present() check as well, otherwise pte_tagged()
could match some random swap entry.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
