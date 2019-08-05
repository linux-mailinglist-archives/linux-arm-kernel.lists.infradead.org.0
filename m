Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08873815EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzlRzucW5ri5VleNziaqpLM4sFw1ukK6RFNgttK1eE4=; b=EIRvrsnBtepovH
	AmFfJZvGBdLNOf/Y+ylFcEgqet27P8nBev8dxoP3l+0ks1QOOyWdOd6414+oyPS3E0rnj7F8QBD1O
	I0u/uPYpHRCijyE3Tis0uRk9SrZYzVMAn2lGtZipBjRzg1o0cvDI+mKDjBObUL62sBdrw2L/TKvTG
	xA8NhRxp3ON6kb/eZuPnAi9zyLd8FTGVGLfZ7nX/4v9netNwQ8JCbSo/7Xbbhhi5q6DTQvYm6pCco
	qY859B2xil0SuSFzC1bwgTyt+11zSK0M11Doc59m3vQ/ku+W+0SMOoqXg4lllYu+Eo79ewS3xIoq/
	bHY4IHhqCf5pW+O5SezQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZg3-0008Nq-Cn; Mon, 05 Aug 2019 09:53:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZfq-0008N9-5T
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:53:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF188217D9;
 Mon,  5 Aug 2019 09:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564998780;
 bh=Keolo4uD8qVVOXpyPQKrCcwdglcn3RBBHp23/JSb1GQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UB146OiDMhmIAlVUQrsvF7Pr7/CbDwjh9BAslUhM0T2kUCIztdiab7gPobwXubO6t
 NGXxPUhbebq3xbgjP+pcftEZkN8uXkMrZsQpCiounajddlzAEIFKyEO4tRTa2QjaBT
 xf4qgxNb/CMXukNd7xsuCp/HPm0cF7qs2bzQYqoI=
Date: Mon, 5 Aug 2019 10:52:56 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] arm64/cache: fix -Woverride-init compiler warnings
Message-ID: <20190805095256.ocgdb2yfhnbdz6kw@willie-the-truck>
References: <1564759944-2197-1-git-send-email-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564759944-2197-1-git-send-email-cai@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_025302_231982_771604F6 
X-CRM114-Status: GOOD (  16.14  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 11:32:24AM -0400, Qian Cai wrote:
> The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
> VIVT I-caches") introduced some compiation warnings from GCC,
> 
> arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
> overwritten [-Woverride-init]
>   [ICACHE_POLICY_VIPT]  = "VIPT",
>                           ^~~~~~
> arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
> 'icache_policy_str[2]')
> arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
> overwritten [-Woverride-init]
>   [ICACHE_POLICY_PIPT]  = "PIPT",
>                           ^~~~~~
> arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
> 'icache_policy_str[3]')
> arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
> overwritten [-Woverride-init]
>   [ICACHE_POLICY_VPIPT]  = "VPIPT",
>                            ^~~~~~~
> arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
> 'icache_policy_str[0]')
> 
> because it initializes icache_policy_str[0 ... 3] twice.
> 
> Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>  arch/arm64/kernel/cpuinfo.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
> index 876055e37352..193b38da8d96 100644
> --- a/arch/arm64/kernel/cpuinfo.c
> +++ b/arch/arm64/kernel/cpuinfo.c
> @@ -34,10 +34,10 @@
>  static struct cpuinfo_arm64 boot_cpu_data;
>  
>  static char *icache_policy_str[] = {
> -	[0 ... ICACHE_POLICY_PIPT]	= "RESERVED/UNKNOWN",
> +	[ICACHE_POLICY_VPIPT]		= "VPIPT",
> +	[ICACHE_POLICY_VPIPT + 1]	= "RESERVED/UNKNOWN",
>  	[ICACHE_POLICY_VIPT]		= "VIPT",
>  	[ICACHE_POLICY_PIPT]		= "PIPT",
> -	[ICACHE_POLICY_VPIPT]		= "VPIPT",

I really don't like this patch. Using "[0 ... MAXIDX] = <default>" is a
useful idiom and I think the code is more error-prone the way you have
restructured it.

Why are you passing -Woverride-init to the compiler anyway? There's only
one Makefile that references that option, and it's specific to a pinctrl
driver.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
