Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84716E13B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 13:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8RdPyIe+wzVHc0esfCvwewZQey7zRdET0fjig7h6SDg=; b=MJlf7tlivuwMga
	YJv+gLMQ6t+WfumbAffER7hIuaMQcMNfXS45uDA+uYG16cXn+TqS/nk+0utV6qxbCOmMXC8cvcSa6
	7KBhTbNL/bEINbWIovNHUglAFme9iku3dOtv1akNwgnX1BUdB/CDrzDXc/9rHq+3wqo/0PSBN6cVn
	YZ+xJcQm97OK9bL9jLyEM0kvS3t5bJPXfR/XFAIyDHLK2CiUWhkhln61B8fww1cw6tsObk7YQM5UJ
	CRlPYER+XAZMg11J7HhCMAs2mfF8hvMR7Q13mVcv6g8iU6rQXyha2bHImV+9Q7P8diJcqEn1GWfIy
	s0I5oK/x+XZVER61c/Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL4Nr-0006KN-8E; Mon, 29 Apr 2019 11:23:43 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL4Nj-0006K2-WC
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 11:23:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A26CA80D;
 Mon, 29 Apr 2019 04:23:33 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 AC7D73F5AF; Mon, 29 Apr 2019 04:23:32 -0700 (PDT)
Date: Mon, 29 Apr 2019 12:23:30 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] arm64/mm: Fix pgtable page offset address in
 [pud|pmd]_free_[pmd|pte]_page
Message-ID: <20190429112329.GF8742@arrakis.emea.arm.com>
References: <1556509914-21138-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556509914-21138-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_042336_042403_3F85CDDD 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, will.deacon@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 09:21:54AM +0530, Anshuman Khandual wrote:
> The pgtable page address can be fetched with [pmd|pte]_offset_[kernel] if
> the input address is either PMD_SIZE or PTE_SIZE aligned. Though incoming
> input addresses tend to be aligned to the required size (PMD_SIZE|PTE_SIZE)
> which is the reason why there were no reported problems earlier. But it is
> not correct. However 0UL as input address will guarantee that the fetched
> pgtable page address is always correct without any possible skid. While at
> this just warn once when the addresses are not aligned.

I'm fine with using 0UL but did you actually hit any problem to be worth
adding a WARN_ON?

> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  arch/arm64/mm/mmu.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index e97f018ff740..17af49585fb2 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -1005,7 +1005,8 @@ int pmd_free_pte_page(pmd_t *pmdp, unsigned long addr)
>  		return 1;
>  	}
>  
> -	table = pte_offset_kernel(pmdp, addr);
> +	WARN_ON_ONCE(!IS_ALIGNED(addr, PMD_SIZE));

I'd use VM_WARN_ON_ONCE() as we do, for example, in set_pte_at().

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
