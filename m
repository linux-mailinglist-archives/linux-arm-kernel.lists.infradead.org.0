Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B73F1C69C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 09:07:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SARmMyL9MJhzqlm0/FZxFh8x3EWFVRWTT5ejK9aUjHo=; b=OC8sPFsn8ZmhtO
	3M0xvd5jOcah6Udt8eJZbfNRpe5SiawYuBUQ1/gJ/TdHLDXwt2gWaq76suwhWqlpAkJ4KfC9zGV1l
	Jv5Ew3RwU050mLckuJri84pAh0JTqbGZpr0bd4v7Or0zhYLed/76rXzlQY0qusSdY2G7t3XForZFf
	aX0WClzkANlfsKBeRSfzLyAdCIOYDOovTSQ663044KPdGHS9+HlAqJ35YAAjobhWxzTYOC2tAreJ2
	atbeqEOjN2pwk0on91WRk1+acwoaWMsRQMKgS7P5uzdBNKLn8ytZBdJEfav+0iZBWIO0OshOmR6bn
	OjUi6GfCHO8kA57iSxMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWE9M-00084o-0d; Wed, 06 May 2020 07:07:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWE9G-00083p-02
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 07:07:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BFC0830E;
 Wed,  6 May 2020 00:07:14 -0700 (PDT)
Received: from [10.163.71.196] (unknown [10.163.71.196])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AEAC23F68F;
 Wed,  6 May 2020 00:07:12 -0700 (PDT)
Subject: Re: [PATCH] arm64/mm: Remove add_huge_page_size()
To: Gavin Shan <gshan@redhat.com>, linux-arm-kernel@lists.infradead.org
References: <20200506064635.20114-1-gshan@redhat.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <fa3ad75d-9c4d-d6c9-1664-53b4c9770c6b@arm.com>
Date: Wed, 6 May 2020 12:36:43 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200506064635.20114-1-gshan@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_000718_080142_775B5451 
X-CRM114-Status: GOOD (  16.33  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org, shan.gavin@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/06/2020 12:16 PM, Gavin Shan wrote:
> The function add_huge_page_size(), wrapper of hugetlb_add_hstate(),
> avoids to register duplicated huge page states for same size. However,
> the same logic has been included in hugetlb_add_hstate(). So it seems
> unnecessary to keep add_huge_page_size() and this just removes it.

Makes sense.

> 
> Signed-off-by: Gavin Shan <gshan@redhat.com>
> ---
>  arch/arm64/mm/hugetlbpage.c | 18 +++++-------------
>  1 file changed, 5 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
> index bbeb6a5a6ba6..ed7530413941 100644
> --- a/arch/arm64/mm/hugetlbpage.c
> +++ b/arch/arm64/mm/hugetlbpage.c
> @@ -441,22 +441,14 @@ void huge_ptep_clear_flush(struct vm_area_struct *vma,
>  	clear_flush(vma->vm_mm, addr, ptep, pgsize, ncontig);
>  }
>  
> -static void __init add_huge_page_size(unsigned long size)
> -{
> -	if (size_to_hstate(size))
> -		return;
> -
> -	hugetlb_add_hstate(ilog2(size) - PAGE_SHIFT);
> -}
> -
>  static int __init hugetlbpage_init(void)
>  {
>  #ifdef CONFIG_ARM64_4K_PAGES
> -	add_huge_page_size(PUD_SIZE);
> +	hugetlb_add_hstate(PUD_SHIFT - PAGE_SHIFT);
>  #endif
> -	add_huge_page_size(CONT_PMD_SIZE);
> -	add_huge_page_size(PMD_SIZE);
> -	add_huge_page_size(CONT_PTE_SIZE);
> +	hugetlb_add_hstate(CONT_PMD_SHIFT + PMD_SHIFT - PAGE_SHIFT);
> +	hugetlb_add_hstate(PMD_SHIFT - PAGE_SHIFT);
> +	hugetlb_add_hstate(CONT_PTE_SHIFT);

Should these page order values be converted into macros instead. Also
we should probably keep (CONT_PTE_SHIFT + PAGE_SHIFT - PAGE_SHIFT) as
is to make things more clear.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
