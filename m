Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AFD80343
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 01:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mrQgWHONByKxmtKJ/S6w4dnSYNXkXznZ7z//DSccrOI=; b=hdpo9kKLqMpNufcdvpP5CKoSK
	WOfZApa59aYoErgvmdtRAbH76hWnGJRllcYMC2EAXIdad7DOiXGe5WQMgdFSWDZBob5Qtz8Z22z8l
	51R0v8xPuZZS+gDcG4Zr34++FN1gjXKg21qafy6SdRj+ZxIVqvFUB4U+Y9jaLVswQyqT6QDqihuME
	h9xjzlBhMfu2sh41juiVYu76zr3BDXRec6njRnKVTdp8MB1R2ePR+PcA1vHKg1fxnUAuUhJH0DfOk
	t97E+6M/cjlANgq2g+XDgpETR1qdogP6yHaLiSCfTVxA6uTQdlBf/ivtoNDfVU9jssd64dsxogFvO
	IIbbrwlYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hthFp-0008Df-5E; Fri, 02 Aug 2019 23:46:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hthFe-0008DL-D2
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 23:46:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A9441570;
 Fri,  2 Aug 2019 16:46:18 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F3E23F694;
 Fri,  2 Aug 2019 16:46:16 -0700 (PDT)
Subject: Re: [PATCH] arm64/prefetch: fix a -Wtype-limits warning
To: Qian Cai <cai@lca.pw>, will@kernel.org, catalin.marinas@arm.com
References: <1564780084-29591-1-git-send-email-cai@lca.pw>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <bf6c2590-6914-ea29-f973-ad6da084e942@arm.com>
Date: Sat, 3 Aug 2019 00:46:10 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1564780084-29591-1-git-send-email-cai@lca.pw>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_164622_487948_FB72D529 
X-CRM114-Status: GOOD (  18.08  )
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
Cc: rrichter@cavium.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-02 10:08 pm, Qian Cai wrote:
> The commit d5370f754875 ("arm64: prefetch: add alternative pattern for
> CPUs without a prefetcher") introduced MIDR_IS_CPU_MODEL_RANGE() to be
> used in has_no_hw_prefetch() with rv_min=0 which generates a compilation
> warning from GCC,
> 
> In file included from ./arch/arm64/include/asm/cache.h:8,
>                   from ./include/linux/cache.h:6,
>                   from ./include/linux/printk.h:9,
>                   from ./include/linux/kernel.h:15,
>                   from ./include/linux/cpumask.h:10,
>                   from arch/arm64/kernel/cpufeature.c:11:
> arch/arm64/kernel/cpufeature.c: In function 'has_no_hw_prefetch':
> ./arch/arm64/include/asm/cputype.h:59:26: warning: comparison of
> unsigned expression >= 0 is always true [-Wtype-limits]
>    _model == (model) && rv >= (rv_min) && rv <= (rv_max);  \
>                            ^~
> arch/arm64/kernel/cpufeature.c:889:9: note: in expansion of macro
> 'MIDR_IS_CPU_MODEL_RANGE'
>    return MIDR_IS_CPU_MODEL_RANGE(midr, MIDR_THUNDERX,
>           ^~~~~~~~~~~~~~~~~~~~~~~
> 
> Fix it by making rv_min=1.

With what justification? Are you suggesting revision 0 variant 0 of this 
CPU has suddenly grown a prefetcher? Or that arbitrarily perturbing 
bounds until a warning shuts up is a fine development strategy, because 
a quiet build for people who like turning on random extra warnings is 
more important than correct functionality?

Robin.

> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>   arch/arm64/kernel/cpufeature.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index f29f36a65175..7d15cf6d62c1 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -883,7 +883,7 @@ static bool has_no_hw_prefetch(const struct arm64_cpu_capabilities *entry, int _
>   
>   	/* Cavium ThunderX pass 1.x and 2.x */
>   	return MIDR_IS_CPU_MODEL_RANGE(midr, MIDR_THUNDERX,
> -		MIDR_CPU_VAR_REV(0, 0),
> +		MIDR_CPU_VAR_REV(0, 1),
>   		MIDR_CPU_VAR_REV(1, MIDR_REVISION_MASK));
>   }
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
