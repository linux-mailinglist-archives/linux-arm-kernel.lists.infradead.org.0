Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE878A1DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 17:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dbob42I1RBnoKcfRK5KDSPnkVuibMi+rOa1ELCytOAY=; b=W7R2lX7DQLrzJf
	XcX1/9I/ZqPMBcijGzaQV7N695iTGHnkXnT0PSOtkPPF5QWol4eyo8DiJ0lA0yTAaJlVxPmXrpPZX
	9NrK0UxVtnSy0p2loOJwZh0WzDijRSdjBGc1y5QNyvWINGqAEUXoUqTKG8KzkmUI2pPI40bT4zozg
	/OeEbtqmeH6vVY9vTCorLTVLs7aLUc/SblcK3Vwx+9R6r2mJ+pTV1o5+EXXzaFGa9+h1KQ+DRHjam
	L3XjkvJp3E2YsdtnOTQPxPfvU1ZXduj4E95ZYhJEVqItRXBt/M0w43CSgdBRYXHG8tuun+iUUrvwe
	6XEduOK8LWGbK5svL6Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBsU-0006Uy-LU; Mon, 12 Aug 2019 15:04:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBsH-0006Ue-38
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 15:04:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8E9F15A2;
 Mon, 12 Aug 2019 08:04:40 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C1A233F718;
 Mon, 12 Aug 2019 08:04:39 -0700 (PDT)
Date: Mon, 12 Aug 2019 16:04:33 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: cpufeature: Don't treat granule sizes as strict
Message-ID: <20190812150433.GA52896@lakrids.cambridge.arm.com>
References: <20190812150225.25386-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812150225.25386-1-will@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_080441_223953_2A2200EC 
X-CRM114-Status: GOOD (  21.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: khilman@baylibre.com, Suzuki Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 04:02:25PM +0100, Will Deacon wrote:
> If a CPU doesn't support the page size for which the kernel is
> configured, then we will complain and refuse to bring it online. For
> secondary CPUs (and the boot CPU on a system booting with EFI), we will
> also print an error identifying the mismatch.
> 
> Consequently, the only time that the cpufeature code can detect a
> granule size mismatch is for a granule other than the one that is
> currently being used. Although we would rather such systems didn't
> exist, we've unfortunately lost that battle and Kevin reports that
> on his amlogic S922X (odroid-n2 board) we end up warning and taining
> with defconfig because 16k pages are not supported by all of the CPUs.
> 
> In such a situation, we don't actually care about the feature mismatch,
> particularly now that KVM only exposes the sanitised view of the CPU
> registers. Treat the granule fields as non-strict and let Kevin run
> without a tainted kernel.
> 
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Suzuki Poulose <suzuki.poulose@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Reported-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Will Deacon <will@kernel.org>

FWIW:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kernel/cpufeature.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index d19d14ba9ae4..b1fdc486aed8 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -184,9 +184,17 @@ static const struct arm64_ftr_bits ftr_id_aa64zfr0[] = {
>  };
>  
>  static const struct arm64_ftr_bits ftr_id_aa64mmfr0[] = {
> -	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN4_SHIFT, 4, ID_AA64MMFR0_TGRAN4_NI),
> -	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN64_SHIFT, 4, ID_AA64MMFR0_TGRAN64_NI),
> -	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN16_SHIFT, 4, ID_AA64MMFR0_TGRAN16_NI),
> +	/*
> +	 * We already refuse to boot CPUs that don't support our configured
> +	 * page size, so we can only detect mismatches for a page size other
> +	 * than the one we're currently using. Unfortunately, SoCs like this
> +	 * exist in the wild so, even though we don't like it, we'll have to go
> +	 * along with it and treat them as non-strict.
> +	 */
> +	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN4_SHIFT, 4, ID_AA64MMFR0_TGRAN4_NI),
> +	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN64_SHIFT, 4, ID_AA64MMFR0_TGRAN64_NI),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN16_SHIFT, 4, ID_AA64MMFR0_TGRAN16_NI),
> +
>  	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_BIGENDEL0_SHIFT, 4, 0),
>  	/* Linux shouldn't care about secure memory */
>  	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_SNSMEM_SHIFT, 4, 0),
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
