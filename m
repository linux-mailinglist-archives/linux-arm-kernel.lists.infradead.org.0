Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E878D1C6A48
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 09:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJqdUPESCMNA44VJYdw4oSquzwo27chFEXSVEESntow=; b=jPckZ87pjO9bat
	Iow/JKXC3cTEMMAA0bQteuwHLzTqenzgkUhzTW5uFVlmWtOubEntZt2cutXzBydt4caZE0b1dc/FQ
	2m23QxfJOyF1unGLF7WXxCQV1pTqk1nWi9hfABmsgZ4OekarOgXdpZYFurx4sP+hWfLtLuKHN4XlA
	jH9hTAftRfZTnlHBlYetLeXspz24NLNCp0q50e0/cJZ9v1Kbsn7C2pkXnWoEx5OoNYxaovLFTIkj2
	/vtOpt1iLkhmk+Krwo6aQqAsAQw5wROs4ZZzfaZeopuXXNP76ttuFebPNqqRURF12jmufGyv+X3HJ
	tAOXyXsU2rTx+yxTgZqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEiJ-0008Fd-SZ; Wed, 06 May 2020 07:43:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEiB-0008Eq-5m
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 07:43:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F5D2206E6;
 Wed,  6 May 2020 07:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588751000;
 bh=CNBwwDwBOdMK1xYnzJC73BfdILtwbAZgrZjht4vqeyc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QUUm8BzZ8znSKBEEsbsVuGQDziUF1EF3dxO8+Wevy2T47Isn6Mbj360Qi8dfDWRM6
 fC4aJjGy4P7u43fwidS4zRE7/mmwnuYl1NTJYv7o/rTJqRtli2t/D66lUvn+IkgD+N
 dqEi3vJpYxPZOSFMOjzlXG1EF17kaCVBRkm2E5zM=
Date: Wed, 6 May 2020 08:43:16 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2 1/3] arm64/mm: Drop __HAVE_ARCH_HUGE_PTEP_GET
Message-ID: <20200506074315.GD7021@willie-the-truck>
References: <1588745534-24418-1-git-send-email-anshuman.khandual@arm.com>
 <1588745534-24418-2-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588745534-24418-2-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_004323_233113_BBA254AA 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-mm@kvack.org, akpm@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 11:42:12AM +0530, Anshuman Khandual wrote:
> Platform specific huge_ptep_get() is required only when fetching the huge
> PTE involves more than just dereferencing the page table pointer. This is
> not the case on arm64 platform. Hence huge_ptep_pte() can be dropped along
> with it's __HAVE_ARCH_HUGE_PTEP_GET subscription.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-mm@kvack.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  arch/arm64/include/asm/hugetlb.h | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/hugetlb.h b/arch/arm64/include/asm/hugetlb.h
> index 2eb6c234d594..b88878ddc88b 100644
> --- a/arch/arm64/include/asm/hugetlb.h
> +++ b/arch/arm64/include/asm/hugetlb.h
> @@ -17,12 +17,6 @@
>  extern bool arch_hugetlb_migration_supported(struct hstate *h);
>  #endif
>  
> -#define __HAVE_ARCH_HUGE_PTEP_GET
> -static inline pte_t huge_ptep_get(pte_t *ptep)
> -{
> -	return READ_ONCE(*ptep);
> -}

Hmm, I'm nervous about dropping the READ_ONCE() here. We added them after
running into page-table issues with THP [1] and it's really important to
use them consistently to avoid hitting that again.

If the generic code used READ_ONCE(), I'd be happy to switch to it.

Will

[1] https://lore.kernel.org/lkml/1506527369-19535-1-git-send-email-will.deacon@arm.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
