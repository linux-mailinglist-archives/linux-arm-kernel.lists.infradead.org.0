Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF97B5491
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 19:49:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3YPnA96SLDFxrF+P+2YbWLapngJ3KIQe3zclSdWxjw=; b=BDtDcsJbT3S8Tn
	jBpnBe1yPohIi6W1otaSIEBgie/jvXehbpA7mONyzLY0z4LFHhg8I9o3md5v3uazq7qPlsTQpdwkn
	eBNGsmyYxJdjkvoetXHveYh7wj69Bse4kYqGEb+n68kd8RbkU4cUgFt9mb54EuCxObAX3/ps2qFAQ
	5IobiMADOyfN4UCkxTJuNPu8GTNcLec4k95cBgI5RTLwIryK/8NkAM5h4WTmKAKUM7jpQ5ZbVWkzl
	FWdX8KEGzG4xb1Pf8BC3xSgUaLUAMFjrUTJ3piXy+FgTGujZbHLxItfNNIvYk+6AeDxpk54HVATBL
	ir42fHx9wDagSpciyjXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHbK-0004Fo-JK; Tue, 17 Sep 2019 17:49:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHb4-0004F5-Vq
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 17:49:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C097E2067B;
 Tue, 17 Sep 2019 17:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568742541;
 bh=FSMaJ2t0Ern/akbZqXA6ZM9C06TUV99X2yV0MmFQdIY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qVC1Yn8WLaMgltxhSWwtZ1BYX0hq/DSbyp0YXdeNlM05RTalJwaz1IdVR1mxCzoJH
 2jmDhZkbbGMRBlKa6G2ByAcodEBcn7IHRlMrnZPWSTSdXe0iGFIIYax0IibhrMPMWE
 OIHBacY3JQfNPSG4m91Q8dCXzhQH97JIW/fn0LMc=
Date: Tue, 17 Sep 2019 18:48:53 +0100
From: Will Deacon <will@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v9 5/8] arm64: Move hugetlb related definitions out of
 pgtable.h to page-defs.h
Message-ID: <20190917174853.5csycb5pb5zalsxd@willie-the-truck>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172545.10910.88045.stgit@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907172545.10910.88045.stgit@localhost.localdomain>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_104903_062497_6B125FD2 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, kvm@vger.kernel.org,
 david@redhat.com, catalin.marinas@arm.com, mhocko@kernel.org,
 linux-mm@kvack.org, alexander.h.duyck@linux.intel.com, aarcange@redhat.com,
 virtio-dev@lists.oasis-open.org, mst@redhat.com, willy@infradead.org,
 wei.w.wang@intel.com, ying.huang@intel.com, riel@surriel.com,
 dan.j.williams@intel.com, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 konrad.wilk@oracle.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 pbonzini@redhat.com, akpm@linux-foundation.org, fengguang.wu@intel.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 10:25:45AM -0700, Alexander Duyck wrote:
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> Move the static definition for things such as HUGETLB_PAGE_ORDER out of
> asm/pgtable.h and place it in page-defs.h. By doing this the includes
> become much easier to deal with as currently arm64 is the only architecture
> that didn't include this definition in the asm/page.h file or a file
> included by it.
> 
> It also makes logical sense as PAGE_SHIFT was already defined in
> page-defs.h so now we also have HPAGE_SHIFT defined there as well.
> 
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> ---
>  arch/arm64/include/asm/page-def.h |    9 +++++++++
>  arch/arm64/include/asm/pgtable.h  |    9 ---------
>  2 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/page-def.h b/arch/arm64/include/asm/page-def.h
> index f99d48ecbeef..1c5b079e2482 100644
> --- a/arch/arm64/include/asm/page-def.h
> +++ b/arch/arm64/include/asm/page-def.h
> @@ -20,4 +20,13 @@
>  #define CONT_SIZE		(_AC(1, UL) << (CONT_SHIFT + PAGE_SHIFT))
>  #define CONT_MASK		(~(CONT_SIZE-1))
>  
> +/*
> + * Hugetlb definitions.
> + */
> +#define HUGE_MAX_HSTATE		4
> +#define HPAGE_SHIFT		PMD_SHIFT
> +#define HPAGE_SIZE		(_AC(1, UL) << HPAGE_SHIFT)
> +#define HPAGE_MASK		(~(HPAGE_SIZE - 1))
> +#define HUGETLB_PAGE_ORDER	(HPAGE_SHIFT - PAGE_SHIFT)
> +
>  #endif /* __ASM_PAGE_DEF_H */
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index 7576df00eb50..06a376de9bd6 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -305,15 +305,6 @@ static inline int pte_same(pte_t pte_a, pte_t pte_b)
>   */
>  #define pte_mkhuge(pte)		(__pte(pte_val(pte) & ~PTE_TABLE_BIT))
>  
> -/*
> - * Hugetlb definitions.
> - */
> -#define HUGE_MAX_HSTATE		4
> -#define HPAGE_SHIFT		PMD_SHIFT
> -#define HPAGE_SIZE		(_AC(1, UL) << HPAGE_SHIFT)
> -#define HPAGE_MASK		(~(HPAGE_SIZE - 1))
> -#define HUGETLB_PAGE_ORDER	(HPAGE_SHIFT - PAGE_SHIFT)
> -

Acked-by: Will Deacon <will@kernel.org>

I'm assuming you're taking this along with the other patches, but please
shout if you'd rather it went via the arm64 tree.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
