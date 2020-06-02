Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F691EBB32
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 14:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3mg1bSkJW8WM4xpEbDT/IV5IzgzmoOz2NJBpDbqv3U=; b=om88h6Dlt/ILiz
	DZYxMQDZyMSZGMDh9flg4ojjzwihsUF97aQq5/1/v2/MVzUY/NfNG0ORud5M3ILAqyuC/8Xr4sY9d
	VGiN/LNnPN4j6fZQLq+ZemF5YkPX0V/Tnf6ndVFGSNW3vqbguzXiajJS6963s5V+gUIkrpYWPgenp
	eU2JbXoeo9Sa6ijDwVJxoPnVsIrx9I++8SvNwiNMSz1VpvhWxbLYHkOSm8uSNHFQrnwUgNXNm8PU8
	+YzhMfNoJ7++tbjqv2ppToIX7jwvKacbJ+mKyR/2DCPcSyddsXZ05ojSPV5MoxXgkb5EfZy2iMdro
	KpVIJZGSlj/wrTOGT6Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg5gZ-00077X-PB; Tue, 02 Jun 2020 12:06:27 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg5gT-00076W-9j
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 12:06:23 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 81E03B2E8FAAB54CD06E;
 Tue,  2 Jun 2020 20:06:15 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Tue, 2 Jun 2020
 20:06:09 +0800
Subject: Re: [RFC PATCH v4 2/2] arm64: tlb: Use the TLBI RANGE feature in arm64
To: <catalin.marinas@arm.com>, <will@kernel.org>, <suzuki.poulose@arm.com>,
 <maz@kernel.org>, <steven.price@arm.com>, <guohanjun@huawei.com>,
 <olof@lixom.net>
References: <20200601144713.2222-1-yezhenyu2@huawei.com>
 <20200601144713.2222-3-yezhenyu2@huawei.com>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <7f15f835-cf73-be5b-8bb0-cabb6e4eeed2@huawei.com>
Date: Tue, 2 Jun 2020 20:06:08 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200601144713.2222-3-yezhenyu2@huawei.com>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_050621_517060_E50333B7 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org,
 xiexiangyou@huawei.com, zhangshaokun@hisilicon.com, linux-mm@kvack.org,
 arm@kernel.org, prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Some optimizations to the codes:

On 2020/6/1 22:47, Zhenyu Ye wrote:
> -	start = __TLBI_VADDR(start, asid);
> -	end = __TLBI_VADDR(end, asid);
> +	/*
> +	 * The minimum size of TLB RANGE is 2 pages;
> +	 * Use normal TLB instruction to handle odd pages.
> +	 * If the stride != PAGE_SIZE, this will never happen.
> +	 */
> +	if (range_pages % 2 == 1) {
> +		addr = __TLBI_VADDR(start, asid);
> +		__tlbi_last_level(vale1is, vae1is, addr, last_level);
> +		start += 1 << PAGE_SHIFT;
> +		range_pages >>= 1;
> +	}
>  

We flush a single page here, and below loop does the same thing
if cpu not support TLB RANGE feature.  So may we use a goto statement
to simplify the code.

> +	while (range_pages > 0) {
> +		if (cpus_have_const_cap(ARM64_HAS_TLBI_RANGE) &&
> +		    stride == PAGE_SIZE) {
> +			num = (range_pages & TLB_RANGE_MASK) - 1;
> +			if (num >= 0) {
> +				addr = __TLBI_VADDR_RANGE(start, asid, scale,
> +							  num, 0);
> +				__tlbi_last_level(rvale1is, rvae1is, addr,
> +						  last_level);
> +				start += __TLBI_RANGE_SIZES(num, scale);
> +			}
> +			scale++;
> +			range_pages >>= TLB_RANGE_MASK_SHIFT;
> +			continue;
>  		}
> +
> +		addr = __TLBI_VADDR(start, asid);
> +		__tlbi_last_level(vale1is, vae1is, addr, last_level);
> +		start += stride;
> +		range_pages -= stride >> 12;
>  	}
>  	dsb(ish);
>  }
> 

Just like:

--8<---
	if (range_pages %2 == 1)
		goto flush_single_tlb;

	while (range_pages > 0) {
		if (cpus_have_const_cap(ARM64_HAS_TLBI_RANGE) &&
		    stride == PAGE_SIZE) {
			num = ((range_pages >> 1) & TLB_RANGE_MASK) - 1;
			if (num >= 0) {
				addr = __TLBI_VADDR_RANGE(start, asid, scale,
							  num, 0);
				__tlbi_last_level(rvale1is, rvae1is, addr,
						  last_level);
				start += __TLBI_RANGE_SIZES(num, scale);
			}
			scale++;
			range_pages >>= TLB_RANGE_MASK_SHIFT;
			continue;
		}

flush_single_tlb:
		addr = __TLBI_VADDR(start, asid);
		__tlbi_last_level(vale1is, vae1is, addr, last_level);
		start += stride;
		range_pages -= stride >> PAGE_SHIFT;
	}
--8<---




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
