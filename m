Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 356701B08ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:11:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14gcWaWBFDl2NM/w0+JxHnPTGjI7zrmyODzEM8QvbIo=; b=coWDA/G0QPIZnt
	GvAbNJYB5+0CHNy8b2t5H0JicV9O9VzToNvLjfpKq9hOzuiJh4fIDzYFBTIG8isJfrVC1p8djzuWy
	9wZF/WMaZ6W9NXA9EsiXjhFQ0Xqa+C/AqkJ1AIwJEQrsVAnpOaFb23aDWd9X1szWaRkdFotdTIwrg
	1mntIuzx1NN0Vwe7dn3W49/qp4GRyqZzcDTImkLTNFJy5vPZXrZWD0LaPMnPx800AaovKz8uvjipQ
	DX8dAZzvOojiaDz4yCiMbjq0U0iDXsdh7kFHrpsnvweIvC8xC5pFINJT23Ai3mrfxtT9p7pJmJ8kq
	4dPIV8ChVXGLv9QW1AJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVGc-00011F-KS; Mon, 20 Apr 2020 12:11:14 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVGP-00010y-Tw
 for linux-arm-kernel@bombadil.infradead.org; Mon, 20 Apr 2020 12:11:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hyyhVGnvFilfrdqHNEg1EViEFDU1g/FpAPCa//Vm+Ms=; b=Ro0x8c1X2BeWf7TvQCOYH/vp3B
 u8UbmQW+uedKRoJDHljAHvWQiYcHgwyhXDsYpGMGpRc80vsD3ENgjZpqt4uTgcirKDrKKeGgWYAyY
 ZdLOtoEXXnkEIIYIgtOd2v44QGGlsqtBytg1uHI4aUjAP+tySOzwCO0pMaNI4vnP8sO/U4uyY/AYw
 d38ygCc2ptooChKwRxRBjX+o9uNLnCDhAgfbMRqM/V6UxIBMCZfakSu78Qm33nl6LrUeHJ2hefPO1
 vEJIvFQvXjsgirK1UOM25FkhTaoPeJvqbvqpKGNGES42UZvmNSpym3h0VhGh8VlZkE+EvNJc7cHTL
 DqHfGkfA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVGL-0004t8-1H; Mon, 20 Apr 2020 12:10:57 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id D050B3024EA;
 Mon, 20 Apr 2020 14:10:55 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id C09EF2B8DAF8C; Mon, 20 Apr 2020 14:10:55 +0200 (CEST)
Date: Mon, 20 Apr 2020 14:10:55 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [PATCH v1 6/6] arm64: tlb: Set the TTL field in flush_tlb_range
Message-ID: <20200420121055.GF20696@hirez.programming.kicks-ass.net>
References: <20200403090048.938-1-yezhenyu2@huawei.com>
 <20200403090048.938-7-yezhenyu2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403090048.938-7-yezhenyu2@huawei.com>
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-mm@kvack.org,
 guohanjun@huawei.com, will@kernel.org, linux-arch@vger.kernel.org,
 yuzhao@google.com, maz@kernel.org, steven.price@arm.com, arm@kernel.org,
 Dave.Martin@arm.com, arnd@arndb.de, suzuki.poulose@arm.com, npiggin@gmail.com,
 zhangshaokun@hisilicon.com, broonie@kernel.org, rostedt@goodmis.org,
 prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, xiexiangyou@huawei.com,
 linux-kernel@vger.kernel.org, aneesh.kumar@linux.ibm.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 05:00:48PM +0800, Zhenyu Ye wrote:
> This patch uses the cleared_* in struct mmu_gather to set the
> TTL field in flush_tlb_range().
> 
> Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
> ---
>  arch/arm64/include/asm/tlb.h      | 26 +++++++++++++++++++++++++-
>  arch/arm64/include/asm/tlbflush.h | 14 ++++++++------
>  2 files changed, 33 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/tlb.h b/arch/arm64/include/asm/tlb.h
> index b76df828e6b7..d5ab72eccff4 100644
> --- a/arch/arm64/include/asm/tlb.h
> +++ b/arch/arm64/include/asm/tlb.h
> @@ -21,11 +21,34 @@ static void tlb_flush(struct mmu_gather *tlb);
>  
>  #include <asm-generic/tlb.h>
>  
> +/*
> + * get the tlbi levels in arm64.  Default value is 0 if more than one
> + * of cleared_* is set or neither is set.
> + * Arm64 doesn't support p4ds now.
> + */
> +static inline int tlb_get_level(struct mmu_gather *tlb)
> +{
> +	int sum = tlb->cleared_ptes + tlb->cleared_pmds +
> +		  tlb->cleared_puds + tlb->cleared_p4ds;
> +
> +	if (sum != 1)
> +		return 0;
> +	else if (tlb->cleared_ptes)
> +		return 3;
> +	else if (tlb->cleared_pmds)
> +		return 2;
> +	else if (tlb->cleared_puds)
> +		return 1;
> +
> +	return 0;
> +}

That's some mighty wonky code. Please look at the generated asm.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
