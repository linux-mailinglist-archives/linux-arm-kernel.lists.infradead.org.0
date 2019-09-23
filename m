Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 751C5BB96A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 18:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHhfjxB6XR940IDXf0fhoF/KHHBsO60HJd7IKbmoMT8=; b=A1x8ici4u3gHc1
	X+BjWxco9+SKMEAo6k/y7CPWmskMIOLSpym/Qg/kSqtfzq3wuZPudulIpIISDJ84XIuFgq7RkLc7M
	AoRrofmvFe7WjTcYFosqJ0InmCMhHagdKKxEPmQTP5yw0MbxXWM/7tPySy58W2aimzJrbJb8sHwLe
	ngjD6J4tQdpvAvm1RXRlV1/eOX7chWgIARIX2mGpdcdnCLykGmwtk14f3i/NkzuZKPO8FTw3zpxEi
	6nK5wzd+F9EoHhimbP0yXeasO7M2aPQAlJ3xTvyAXaBAVuJNRf/ZO/UbZIVk13FGqLQiOJh/cD86T
	Apps6suxg2RUI8+Qqr6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCR2x-00075y-7L; Mon, 23 Sep 2019 16:18:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCR2k-00075Y-QN
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 16:18:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E50011000;
 Mon, 23 Sep 2019 09:18:29 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 404EF3F67D; Mon, 23 Sep 2019 09:18:27 -0700 (PDT)
Date: Mon, 23 Sep 2019 17:18:25 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v8 2/3] arm64: mm: implement arch_faults_on_old_pte() on
 arm64
Message-ID: <20190923161824.GD10192@arrakis.emea.arm.com>
References: <20190921135054.142360-1-justin.he@arm.com>
 <20190921135054.142360-3-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190921135054.142360-3-justin.he@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_091830_894824_72B3F131 
X-CRM114-Status: GOOD (  14.48  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Punit Agrawal <punitagrawal@gmail.com>, hejianet@gmail.com,
 Thomas Gleixner <tglx@linutronix.de>, nd@arm.com,
 Will Deacon <will@kernel.org>, Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 21, 2019 at 09:50:53PM +0800, Jia He wrote:
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index e09760ece844..4a9939615e41 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -868,6 +868,18 @@ static inline void update_mmu_cache(struct vm_area_struct *vma,
>  #define phys_to_ttbr(addr)	(addr)
>  #endif
>  
> +/*
> + * On arm64 without hardware Access Flag, copying fromuser will fail because
                                                     ^^^^^^^^
						     from user

> + * the pte is old and cannot be marked young. So we always end up with zeroed
> + * page after fork() + CoW for pfn mappings. we don't always have a
                                                ^^
						We

> + * hardware-managed access flag on arm64.
> + */
> +static inline bool arch_faults_on_old_pte(void)
> +{
> +	return !cpu_has_hw_af();

I saw an early incarnation of your patch having a
WARN_ON(preemptible()). I think we need this back just in case this
function will be used elsewhere in the future.

> +}
> +#define arch_faults_on_old_pte arch_faults_on_old_pte

Otherwise,

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
