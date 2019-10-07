Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF75CE8C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 18:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LItGzWlyis4mJoV6yZrNjf3OMIPs4XvdiHDG6OfDqIg=; b=IhWAT2UrHOOjpE
	1mVQsYkba4BRcXPahj6NOghTJp/7Edl/12l4E6eFU8do4azG6IICFjKejBZHhLqDnVz4r9YtbAdFv
	jqxSlWWleFRYFsubAbW/FtJAhv9SZlzGMC1NrAUdrrSYCqm/w3ShWmK5oQZdz2fmDPlM/9oSbs3bC
	YDDR7B1y4q9U01vrx5XSLiurySMeqkZTfu5noO34q4LJJ4VyXP87LY5tW5AS3Fzv6GeNgdIPXMome
	sO4mUNxbUKe2hw/3FB6aNy0md6TcCzODgP5SaE7dCVTv3KQmQAnK88j3+IlKlvt4pa6rMf5uVQKXB
	cw6g+/f4lnq+RBx7RuNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHVbC-0007DL-UE; Mon, 07 Oct 2019 16:11:02 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHVb2-00079f-LD
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 16:10:54 +0000
Received: by mail-qt1-x842.google.com with SMTP id m15so20001780qtq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 09:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ukciw0hdK3K4XMNiPAWm/fQxAF5nCtm7qVJXBq6lLa8=;
 b=MXPbONKY6jnTaS7ac+01oeoHwclD3WoKLLJfhGNS6cGNYTaYU6LYmJ59DCtAuHDQlB
 3P3pe07vx6M4s8kx3bzHBZcX7CpbtOBrElbQtbxicb36GXu2HWWz4VDxhQEQ9nfQN2oP
 ZVxeXRcnwBYg1dpZTyqsp938PupqYsEwW9WProq8d+ciajqd+hVLMRdi5Q1s+X5/ETmA
 mhKxJOvdeXUkWjxVyaaACq7j+ye99Z2qPGXeJA1TJT1Sj0yFVKncVDLj6ywNLlvlkU5/
 OtflbGX+4jDi8efoXKszldER9N+ZRLoLD7//ooFC+fJ6C4zbbuWX50M2nvkCeBtufULl
 OyZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ukciw0hdK3K4XMNiPAWm/fQxAF5nCtm7qVJXBq6lLa8=;
 b=QA0m8Fl46jNog8KWcAmwop9E+UcTFn54Z6buTVTRTME+WpdPgl/75XeZv3KvtzRwtU
 8uQogW+qzYqjHjero1LDBwNQN/UmoeNYQHbUKCl6HDAYZLQu+oJnXrJfhLahN+4c7Qbs
 gaAJTheSeyHEtUVR6xKekOZKPghVGBudxthib7AwnsOxpShPUBPGgGyDm0KRs+Vx/UmN
 ZTn5gnX73LwzTDu78pqtrH2dl/N2fQGv83gRdxfaem0KAUkK+vv/MzQPPqBZF8D0OQxs
 b1D6+3l0u4W0NkX3bYe1Xp+bNM5iKb6BA0VPI7T5TSIGidG3SBO0IGvvEM22YRPjEJPG
 MHqw==
X-Gm-Message-State: APjAAAWy+37drPxvj5I3JONpT42SwJqsQykhmqa9bTLjYHFWOattc/81
 TNQr8sC3lXrX+rv/ZZQz45KwUA==
X-Google-Smtp-Source: APXvYqy1twfj5uRk3c5GJEpRMAFqpvKXRhFiC5medntRLKOOCku5d98/bLKsSctOhzMzIhghjWqHkw==
X-Received: by 2002:ac8:1302:: with SMTP id e2mr30156919qtj.326.1570464650651; 
 Mon, 07 Oct 2019 09:10:50 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-162-113-180.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.162.113.180])
 by smtp.gmail.com with ESMTPSA id q5sm10273119qte.38.2019.10.07.09.10.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 07 Oct 2019 09:10:49 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1iHVaz-0006jz-5t; Mon, 07 Oct 2019 13:10:49 -0300
Date: Mon, 7 Oct 2019 13:10:49 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v11 14/22] mm: pagewalk: Add 'depth' parameter to pte_hole
Message-ID: <20191007161049.GA13229@ziepe.ca>
References: <20191007153822.16518-1-steven.price@arm.com>
 <20191007153822.16518-15-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007153822.16518-15-steven.price@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_091052_775516_FC9BC9A3 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 04:38:14PM +0100, Steven Price wrote:
> diff --git a/mm/hmm.c b/mm/hmm.c
> index 902f5fa6bf93..34fe904dd417 100644
> +++ b/mm/hmm.c
> @@ -376,7 +376,7 @@ static void hmm_range_need_fault(const struct hmm_vma_walk *hmm_vma_walk,
>  }
>  
>  static int hmm_vma_walk_hole(unsigned long addr, unsigned long end,
> -			     struct mm_walk *walk)
> +			     __always_unused int depth, struct mm_walk *walk)

It this __always_unused on function arguments something we are doing
now?

Can we have negative depth? Should it be unsigned?

>  {
>  	struct hmm_vma_walk *hmm_vma_walk = walk->private;
>  	struct hmm_range *range = hmm_vma_walk->range;
> @@ -564,7 +564,7 @@ static int hmm_vma_walk_pmd(pmd_t *pmdp,
>  again:
>  	pmd = READ_ONCE(*pmdp);
>  	if (pmd_none(pmd))
> -		return hmm_vma_walk_hole(start, end, walk);
> +		return hmm_vma_walk_hole(start, end, 0, walk);
>  
>  	if (thp_migration_supported() && is_pmd_migration_entry(pmd)) {
>  		bool fault, write_fault;
> @@ -666,7 +666,7 @@ static int hmm_vma_walk_pud(pud_t *pudp, unsigned long start, unsigned long end,
>  again:
>  	pud = READ_ONCE(*pudp);
>  	if (pud_none(pud))
> -		return hmm_vma_walk_hole(start, end, walk);
> +		return hmm_vma_walk_hole(start, end, 0, walk);
>  
>  	if (pud_huge(pud) && pud_devmap(pud)) {
>  		unsigned long i, npages, pfn;
> @@ -674,7 +674,7 @@ static int hmm_vma_walk_pud(pud_t *pudp, unsigned long start, unsigned long end,
>  		bool fault, write_fault;
>  
>  		if (!pud_present(pud))
> -			return hmm_vma_walk_hole(start, end, walk);
> +			return hmm_vma_walk_hole(start, end, 0, walk);
>  
>  		i = (addr - range->start) >> PAGE_SHIFT;
>  		npages = (end - addr) >> PAGE_SHIFT;

Otherwise this mechanical change to hmm.c looks OK to me

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
