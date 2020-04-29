Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB441BE49E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 19:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ug1tehWof+qxsy54j8bKuZTm2hHcnh0StO12+QU/aHw=; b=EOpVDkaUqkYjLU
	Hx7WqqwSxOfzw8o9hQl6WWDFCHKQTspGJTyUE76Hc01ea7NbdkrnKi9RJtgTtVGmHSwjVB9buku65
	BpOzBMhnP6hOojjhd/cVfVpJtjIUeqF+OLSBkkfstcrsH3lVU+U9pbOaiBvLLR/1ETfQyh/mIzsS2
	oHbqXFS7CheB692PUSGF3VOvBUNr4RDEfAp/9iEjKxQd/pj151n6vPu8gWhP8oFTaC5qBEUMGQRyB
	ma3RgDzW63LKct73AQHWiFTwUZWUPn5JZW1W0CN9LJhb31JEF08Fur6wi71RBKMCa7GSX+w/ES7vj
	X6wWruNMTSAPKfwq9xxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTq6M-0002za-83; Wed, 29 Apr 2020 17:02:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTq56-00028D-MX; Wed, 29 Apr 2020 17:01:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D65C91045;
 Wed, 29 Apr 2020 10:01:06 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE83A3F73D;
 Wed, 29 Apr 2020 10:01:03 -0700 (PDT)
Subject: Re: [PATCH v9 03/18] arm64: trans_pgd: make trans_pgd_map_page generic
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
 <20200326032420.27220-4-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <c857d4aa-e8ec-81f6-bdea-dff6513c52dc@arm.com>
Date: Wed, 29 Apr 2020 18:01:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200326032420.27220-4-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_100109_039545_399FA427 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, catalin.marinas@arm.com, bhsharma@redhat.com,
 steve.capper@arm.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, rfontana@redhat.com,
 ebiederm@xmission.com, maz@kernel.org, matthias.bgg@gmail.com,
 tglx@linutronix.de, will@kernel.org, selindag@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 26/03/2020 03:24, Pavel Tatashin wrote:
> kexec is going to use a different allocator, so make

> trans_pgd_map_page to accept allocator as an argument, and also
> kexec is going to use a different map protection, so also pass
> it via argument.

This trans_pgd_map_page() used to be create_single_mapping() It creates page tables that
map one page: the relocation code.

Why do you need a different pgprot? Surely PAGE_KERNEL_EXEC is exactly what you want.


> diff --git a/arch/arm64/include/asm/trans_pgd.h b/arch/arm64/include/asm/trans_pgd.h
> index 23153c13d1ce..ad5194ad178d 100644
> --- a/arch/arm64/include/asm/trans_pgd.h
> +++ b/arch/arm64/include/asm/trans_pgd.h
> @@ -12,10 +12,24 @@
>  #include <linux/types.h>
>  #include <asm/pgtable-types.h>
>  
> +/*
> + * trans_alloc_page
> + *	- Allocator that should return exactly one zeroed page, if this
> + *	 allocator fails, trans_pgd returns -ENOMEM error.

trans_pgd is what you pass in to trans_pgd_map_page() or trans_pgd_create_copy().
Do you mean what those functions return?


> + *
> + * trans_alloc_arg
> + *	- Passed to trans_alloc_page as an argument
> + */

> diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> index 3d6f0fd73591..607bb1fbc349 100644
> --- a/arch/arm64/kernel/hibernate.c
> +++ b/arch/arm64/kernel/hibernate.c
> @@ -195,6 +200,11 @@ static int create_safe_exec_page(void *src_start, size_t length,
>  				 unsigned long dst_addr,
>  				 phys_addr_t *phys_dst_addr)
>  {
> +	struct trans_pgd_info trans_info = {
> +		.trans_alloc_page	= hibernate_page_alloc,
> +		.trans_alloc_arg	= (void *)GFP_ATOMIC,
> +	};

As you need another copy of this in the next patch, is it worth declaring this globally
and making it const?


> diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
> index d20e48520cef..275a79935d7e 100644
> --- a/arch/arm64/mm/trans_pgd.c
> +++ b/arch/arm64/mm/trans_pgd.c
> @@ -180,8 +185,18 @@ int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
>  	return rc;
>  }
>  
> -int trans_pgd_map_page(pgd_t *trans_pgd, void *page, unsigned long dst_addr,
> -		       pgprot_t pgprot)
> +/*
> + * Add map entry to trans_pgd for a base-size page at PTE level.
> + * info:	contains allocator and its argument
> + * trans_pgd:	page table in which new map is added.
> + * page:	page to be mapped.

> + * dst_addr:	new VA address for the pages

~s/pages/page/

This thing only maps one page.


> + * pgprot:	protection for the page.
> + *
> + * Returns 0 on success, and -ENOMEM on failure.
> + */
> +int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
> +		       void *page, unsigned long dst_addr, pgprot_t pgprot)
>  {
>  	pgd_t *pgdp;
>  	pud_t *pudp;



Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
