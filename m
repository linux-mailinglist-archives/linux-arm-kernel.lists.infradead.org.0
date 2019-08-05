Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA5881635
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+ylIsAlrRH78rTfKV+JPVo2bymI92DwvdXHv+r5PFU=; b=i+wEw/tTAM8bgV
	rL+5p/QKxo9PKlWn/mK054EZxqvQhAnsrlR42pJhv+r/HO7yfhI6iIZhAw6b5V/ls7EqzqQc1tiIn
	wkLOK0Svqzvo7pvTrQYO0/fjr04cA4pOVMakEfZrMebHGVkr4sOdf2ywz/eyNjaR33La6WmFCuhLu
	1x2DUVwK9n92Tcgjg1kxFOs4FSLitjh+n2wtm5rd5oEivzLNwMKXytKTJXt7oaGGxgzDvxa1DG63k
	4WBvtd00KyFzGbc1Js2RenLf5L16MVo8Jtd5NTOqr38oOgj3raYLMvCbItnYwPhlQXSCKzJsObWFu
	STG5DqoXa3cf+L/HpmjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZno-0005WV-KB; Mon, 05 Aug 2019 10:01:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZnb-0005W5-T7
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:01:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 709EF2075B;
 Mon,  5 Aug 2019 10:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564999263;
 bh=rXRs98rcvgGFy2+Yx+06Sk5a077Kv9Ajpn2E+APiZpI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yJL4Ha22lZYgS1afwJ111lx0LN7wCuFeKb++N3WeaHdHoJ9XS0YZgwgP6hjLkJqxq
 8Nfd+hxkPPe4xhJKhIKOHYyYES90vLcgVeajLH5uTLBIZl0G+boJfEO9hYfBIy9bLr
 tdZ9njPPPFpyVvkLMTT7LF1MlJGnnpN9GHBj0PLU=
Date: Mon, 5 Aug 2019 11:00:59 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH v2] arm64/prefetch: fix a -Wtype-limits warning
Message-ID: <20190805100059.4gml6c4kclz2iin3@willie-the-truck>
References: <20190803003358.992-1-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803003358.992-1-cai@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_030103_963391_DDF9EB0C 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: rrichter@cavium.com, catalin.marinas@arm.com, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 08:33:58PM -0400, Qian Cai wrote:
> The commit d5370f754875 ("arm64: prefetch: add alternative pattern for
> CPUs without a prefetcher") introduced MIDR_IS_CPU_MODEL_RANGE() to be
> used in has_no_hw_prefetch() with rv_min=0 which generates a compilation
> warning from GCC,
> 
> In file included from ./arch/arm64/include/asm/cache.h:8,
>                 from ./include/linux/cache.h:6,
>                 from ./include/linux/printk.h:9,
>                 from ./include/linux/kernel.h:15,
>                 from ./include/linux/cpumask.h:10,
>                 from arch/arm64/kernel/cpufeature.c:11:
> arch/arm64/kernel/cpufeature.c: In function 'has_no_hw_prefetch':
> ./arch/arm64/include/asm/cputype.h:59:26: warning: comparison of
> unsigned expression >= 0 is always true [-Wtype-limits]
>  _model == (model) && rv >= (rv_min) && rv <= (rv_max);  \
>                          ^~
> arch/arm64/kernel/cpufeature.c:889:9: note: in expansion of macro
> 'MIDR_IS_CPU_MODEL_RANGE'
>  return MIDR_IS_CPU_MODEL_RANGE(midr, MIDR_THUNDERX,
>         ^~~~~~~~~~~~~~~~~~~~~~~
> 
> Fix it by making "rv" a "s32".
> 
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
> 
> v2: Use "s32" for "rv", so "variant 0/revision 0" can be covered.
> 
>  arch/arm64/include/asm/cputype.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
> index e7d46631cc42..d52fe8651c2d 100644
> --- a/arch/arm64/include/asm/cputype.h
> +++ b/arch/arm64/include/asm/cputype.h
> @@ -54,7 +54,7 @@
>  #define MIDR_IS_CPU_MODEL_RANGE(midr, model, rv_min, rv_max)		\
>  ({									\
>  	u32 _model = (midr) & MIDR_CPU_MODEL_MASK;			\
> -	u32 rv = (midr) & (MIDR_REVISION_MASK | MIDR_VARIANT_MASK);	\
> +	s32 rv = (midr) & (MIDR_REVISION_MASK | MIDR_VARIANT_MASK);	\

Hmm, but this really isn't a signed quantity: it's two fields extracted
from an ID register. I think the code is fine. Are you explicitly enabling
-Wtype-limits somehow?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
