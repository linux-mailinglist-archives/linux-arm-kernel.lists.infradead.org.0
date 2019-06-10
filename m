Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4793AEB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 07:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LL3k6Adt7wMdfX0/d2p33LN6fxGZr7nChLzR4mtIanA=; b=LWK1mN/YWDx8y1
	s1Dyv19CNJK1jRaBQULO/LQSrrypLx1S4jtgfSqhBcavu7lKilwgH19si64jOFkz0cO9xZ06JAdrn
	6RADrle1wqj6kSfajw5PNYYgIr8Oak9DYT+atHWoSyKbQQ7zErLbXzh18vPTQ3jauJQbodXPEk2Gn
	yu7n2WXpR7Q1UYTbFv/2UJHmJIisU7rfumxmZEGW4qDqgdk1pzlx7DBlj08cX/PuQxeKz6fc/Yh82
	/ShUmjnsRkPZSDsHqMfpf6YY21KvBEHOopuR6KI4gBIGF19A17kDyWt9gyYNNj++IRQg1Q3HKJ774
	8CCHwTMrcOaPKcvW2hSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haD9S-0000BG-Q0; Mon, 10 Jun 2019 05:47:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haD9G-0000Aj-9M
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 05:47:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EABA0344;
 Sun,  9 Jun 2019 22:47:12 -0700 (PDT)
Received: from [10.162.42.131] (p8cg001049571a15.blr.arm.com [10.162.42.131])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 7B91E3F557; Sun,  9 Jun 2019 22:47:11 -0700 (PDT)
Subject: Re: [PATCH 2/4] arm64: support huge vmap vmalloc
To: Nicholas Piggin <npiggin@gmail.com>, linux-mm@kvack.org
References: <20190610043838.27916-1-npiggin@gmail.com>
 <20190610043838.27916-2-npiggin@gmail.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <c49a8fa7-c700-b45b-31b8-1d49afc42136@arm.com>
Date: Mon, 10 Jun 2019 11:17:29 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190610043838.27916-2-npiggin@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_224714_375576_84A9F877 
X-CRM114-Status: GOOD (  13.59  )
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/10/2019 10:08 AM, Nicholas Piggin wrote:
> Applying huge vmap to vmalloc requires vmalloc_to_page to walk huge
> pages. Define pud_large and pmd_large to support this.
> 
> Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
> ---
>  arch/arm64/include/asm/pgtable.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index 2c41b04708fe..30fe7b344bf7 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -428,6 +428,7 @@ extern pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
>  				 PMD_TYPE_TABLE)
>  #define pmd_sect(pmd)		((pmd_val(pmd) & PMD_TYPE_MASK) == \
>  				 PMD_TYPE_SECT)
> +#define pmd_large(pmd)		pmd_sect(pmd)
>  
>  #if defined(CONFIG_ARM64_64K_PAGES) || CONFIG_PGTABLE_LEVELS < 3
>  #define pud_sect(pud)		(0)
> @@ -438,6 +439,7 @@ extern pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
>  #define pud_table(pud)		((pud_val(pud) & PUD_TYPE_MASK) == \
>  				 PUD_TYPE_TABLE)
>  #endif
> +#define pud_large(pud)		pud_sect(pud)
>  
>  extern pgd_t init_pg_dir[PTRS_PER_PGD];
>  extern pgd_t init_pg_end[];

Another series (I guess not merged yet) is trying to add these wrappers
on arm64 (https://patchwork.kernel.org/patch/10883887/).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
