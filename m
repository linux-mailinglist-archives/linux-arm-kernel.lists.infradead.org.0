Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 360A21C1B54
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 19:13:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BLtdLe9W0mcmTb26KgbIxE3fNc9RcGMP4RNpuv2GWQg=; b=RD7gF3eIck9cdn
	YH10ANtOTuP2R5lXkzxrg5I3p5/cXLSH0ELzfDkDYrlsg8x4qiwEPWQUnUk7ZwIkzit696rnmQgir
	X+y0rWGre+Z4XCR/aOoEG4pLXJojr1u8n9PpFjf7YQGbq6AOYlB64UKlhMO1K5BV3fEdW84dlBp0z
	ZcVsN/9R+A7XbO4hDGiRiMcJGO6T0aOturK6jGEzS0Hg0Qq1v6AiM92LFMB9Yce8iLdgeoZBD5wQN
	PxBDMPcMfFGI9QOsJ2PuKU1mYiEyzaVbjeIWBAYPwDcXTVM19GGIqJ0hz4RKKHFrZJD2E0m4U19eN
	lQF/Y3pUKSLGoxMq2YLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUZDa-0005Px-0c; Fri, 01 May 2020 17:12:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUZDP-0005PJ-2b
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 17:12:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 77A9320857;
 Fri,  1 May 2020 17:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588353162;
 bh=roB0j/nGxruKG3Cu5/9tCD/OxYev9fBrLlhQ7B3FM/Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y8MPo5m1qZayLz+ZMqTTpNkwKj769bIgVlibJqwcBRMSQiIVEoeMoBtzAn8Fj6OWi
 +06OfdUN559G/dsnRboiVrgb84ZDVVVvCYbFziKn16wqtOhh9PbUzGJvaxH5+ABwgN
 kbHoh0i4k9FRS4yBjBxwfpCI+VtKivzm2rxdmxYQ=
Date: Fri, 1 May 2020 18:12:37 +0100
From: Will Deacon <will@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH] arm64: perf: Expose some new events via sysfs
Message-ID: <20200501171237.GA19048@willie-the-truck>
References: <1587450713-18048-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587450713-18048-1-git-send-email-zhangshaokun@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_101244_911584_94AFBF61 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 02:31:53PM +0800, Shaokun Zhang wrote:
> Some new PMU events can been detected by PMCEID1_EL0, but it can't
> be listed, Let's expose these through sysfs.
> 
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> ---
>  arch/arm64/include/asm/perf_event.h | 19 +++++++++++++++++++
>  arch/arm64/kernel/perf_event.c      | 19 +++++++++++++++++++
>  2 files changed, 38 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/perf_event.h b/arch/arm64/include/asm/perf_event.h
> index e7765b62c712..f1b93d7c4260 100644
> --- a/arch/arm64/include/asm/perf_event.h
> +++ b/arch/arm64/include/asm/perf_event.h
> @@ -72,12 +72,31 @@
>  #define ARMV8_PMUV3_PERFCTR_LL_CACHE_RD				0x36
>  #define ARMV8_PMUV3_PERFCTR_LL_CACHE_MISS_RD			0x37
>  #define ARMV8_PMUV3_PERFCTR_REMOTE_ACCESS_RD			0x38
> +#define ARMV8_PMUV3_PERFCTR_L1D_CACHE_LMISS_RD			0x39
> +#define ARMV8_PMUV3_PERFCTR_OP_RETIRED				0x3A
> +#define ARMV8_PMUV3_PERFCTR_OP_SPEC				0x3B
> +#define ARMV8_PMUV3_PERFCTR_STALL				0x3C
> +#define ARMV8_PMUV3_PERFCTR_STALL_SLOT_BACKEND			0x3D
> +#define ARMV8_PMUV3_PERFCTR_STALL_SLOT_FRONTEND			0x3E
> +#define ARMV8_PMUV3_PERFCTR_STALL_SLOT				0x3F

Hmm, looks like the presence of this event implies the presence of the
PMMIR_EL1 register. Should we be exposing the "SLOTS" field from that in
sysfs? (obviously as a separate patch)

>  
>  /* Statistical profiling extension microarchitectural events */
>  #define	ARMV8_SPE_PERFCTR_SAMPLE_POP				0x4000
>  #define	ARMV8_SPE_PERFCTR_SAMPLE_FEED				0x4001
>  #define	ARMV8_SPE_PERFCTR_SAMPLE_FILTRATE			0x4002
>  #define	ARMV8_SPE_PERFCTR_SAMPLE_COLLISION			0x4003
> +#define	ARMV8_SPE_PERFCTR_CNT_CYCLES				0x4004
> +#define	ARMV8_SPE_PERFCTR_STALL_BACKEND_MEM			0x4005
> +#define	ARMV8_SPE_PERFCTR_L1I_CACHE_LMISS			0x4006
> +#define	ARMV8_SPE_PERFCTR_L2D_CACHE_LMISS_RD			0x4009
> +#define	ARMV8_SPE_PERFCTR_L2I_CACHE_LMISS			0x400A
> +#define	ARMV8_SPE_PERFCTR_L3D_CACHE_LMISS_RD			0x400B
> +#define	ARMV8_SPE_PERFCTR_LDST_ALIGN_LAT			0x4020
> +#define	ARMV8_SPE_PERFCTR_LD_ALIGN_LAT				0x4021
> +#define	ARMV8_SPE_PERFCTR_ST_ALIGN_LAT				0x4022
> +#define	ARMV8_SPE_PERFCTR_MEM_ACCESS_CHECKED			0x4024
> +#define	ARMV8_SPE_PERFCTR_MEM_ACCESS_CHECKED_RD			0x4025
> +#define	ARMV8_SPE_PERFCTR_MEM_ACCESS_CHECKED_WR			0x4026

I think the naming is off here, as these don't seem to have anything to do
with SPE afaict.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
