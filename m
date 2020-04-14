Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0753D1A7B42
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:50:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9fRh3Tu4AjSuTiIjIeKbtdNfg3YsTdIhwU8WtiMaSM=; b=snAqYJ4/ADSVIH
	VrJ2S4mVl61UlctABsdfmniRwXQzo/+kdP4Bo3c5rnMBz3gw1Lw4gJM9g42yrHeoo5c30Mnn5umGN
	sgK9JGESiVYL7otmFxebmeT8giUQ8wfCi5FLWVuBoCg2KfU5U2I/rvOtWg/A7k1NwkgyDyBsielX4
	fDoB5tCN0KIoMTc7y9viZgMnvwbF4zfA0H9MRMyXrTrG4JkQqkYcJmLn/2Q/jl6eeEs6Xu+0m6lyZ
	A11a8C5IsGMdcu6G5xWZq+JYT4tjpKmrl8ksCLoMWraJJTbmDyJjQDz2uhCMDptXgj3MV6Yx6FOrg
	U4QvOuAQSQCR9spxa7mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOL15-0003B4-TG; Tue, 14 Apr 2020 12:50:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOL0i-00034d-4X
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:49:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 637941FB;
 Tue, 14 Apr 2020 05:49:51 -0700 (PDT)
Received: from [192.168.1.172] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 568493F73D;
 Tue, 14 Apr 2020 05:49:50 -0700 (PDT)
Subject: Re: [PATCH 1/5] arm64: vdso: don't free unallocated pages
To: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20200414104252.16061-1-mark.rutland@arm.com>
 <20200414104252.16061-2-mark.rutland@arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <c5596228-2685-abb3-5ab1-9519759e1f7a@arm.com>
Date: Tue, 14 Apr 2020 13:50:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200414104252.16061-2-mark.rutland@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_054952_233623_C616110C 
X-CRM114-Status: GOOD (  20.12  )
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
Cc: catalin.marinas@arm.com, will@kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 4/14/20 11:42 AM, Mark Rutland wrote:
> The aarch32_vdso_pages[] array never has entries allocated in the C_VVAR
> or C_VDSO slots, and as the array is zero initialized these contain
> NULL.
> 
> However in __aarch32_alloc_vdso_pages() when
> aarch32_alloc_kuser_vdso_page() fails we attempt to free the page whose
> struct page is at NULL, which is obviously nonsensical.
> 

Could you please explain why do you think that free(NULL) is "nonsensical"? And
if this is causing a bug (according to the cover-letter), could you please
provide a stack-trace?

> This patch removes the erroneous page freeing.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: stable@vger.kernel.org
> ---
>  arch/arm64/kernel/vdso.c | 13 +------------
>  1 file changed, 1 insertion(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
> index 354b11e27c07..033a48f30dbb 100644
> --- a/arch/arm64/kernel/vdso.c
> +++ b/arch/arm64/kernel/vdso.c
> @@ -260,18 +260,7 @@ static int __aarch32_alloc_vdso_pages(void)
>  	if (ret)
>  		return ret;
>  
> -	ret = aarch32_alloc_kuser_vdso_page();
> -	if (ret) {
> -		unsigned long c_vvar =
> -			(unsigned long)page_to_virt(aarch32_vdso_pages[C_VVAR]);
> -		unsigned long c_vdso =
> -			(unsigned long)page_to_virt(aarch32_vdso_pages[C_VDSO]);
> -
> -		free_page(c_vvar);
> -		free_page(c_vdso);
> -	}
> -
> -	return ret;
> +	return aarch32_alloc_kuser_vdso_page();
>  }
>  #else
>  static int __aarch32_alloc_vdso_pages(void)
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
