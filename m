Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01BFF517D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:47:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSZWkg8imZbPjE9YSpdffQHA2AM34TUpM7BVEIPeNNI=; b=GKt5yxlL/dkdQM
	oNfe4mXP/v76Pq0YfqUYoQs8ctm52HHLQFeQYTIvwsaCCfWwlaDEZDrKopRrwroUPDrSEmwoZ1u4r
	UREy2Y73hNAOk+2+6bYUn1CugtLzraLh+hcs2CYp5dPrGgCF8gvF02DJCPyP1lG5gulC/GMKimTXi
	KuDNZYBfuZTTDwsdp2yILpPwycO2wPuQcsOaBp8o3fygCu5ec2/upuNTiL5LgVJ8JjwcLgV7gewnv
	tpy8qDr6xvUtMPKxcjtiJpD0FYK1RUSQgwk3glRqgEDGm1H2UbRjTvt7oxW7Z51stvHW+A+APHZh3
	boFdpeoOw3lXJKesswqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7QJ-0007La-Nf; Fri, 08 Nov 2019 16:47:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7QC-0007L8-0C
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 16:47:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5AE127A7;
 Fri,  8 Nov 2019 08:47:38 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8D8863F71A;
 Fri,  8 Nov 2019 08:47:37 -0800 (PST)
Date: Fri, 8 Nov 2019 16:47:35 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 2/2] arm64: kaslr: Check command line before looking
 for a seed
Message-ID: <20191108164735.GK11465@lakrids.cambridge.arm.com>
References: <20191108162001.11737-1-broonie@kernel.org>
 <20191108162001.11737-3-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108162001.11737-3-broonie@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_084740_088805_5465328A 
X-CRM114-Status: GOOD (  18.01  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 04:20:01PM +0000, Mark Brown wrote:
> Now that we print diagnostics at boot the reason why we do not initialise
> KASLR matters. Currently we check for a seed before we check if the user
> has explicitly disabled KASLR on the command line which will result in
> misleading diagnostics so reverse the order of those checks. We still
> parse the seed from the DT early so that if the user has both provided a
> seed and disabled KASLR on the command line we still mask the seed on
> the command line.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kernel/kaslr.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
> index 0039dc50e556..c09f12ab6525 100644
> --- a/arch/arm64/kernel/kaslr.c
> +++ b/arch/arm64/kernel/kaslr.c
> @@ -108,10 +108,6 @@ u64 __init kaslr_early_init(u64 dt_phys)
>  	 * Retrieve (and wipe) the seed from the FDT
>  	 */
>  	seed = get_kaslr_seed(fdt);
> -	if (!seed) {
> -		kaslr_status = KASLR_DISABLED_NO_SEED;
> -		return 0;
> -	}
>  
>  	/*
>  	 * Check if 'nokaslr' appears on the command line, and
> @@ -124,6 +120,11 @@ u64 __init kaslr_early_init(u64 dt_phys)
>  		return 0;
>  	}
>  
> +	if (!seed) {
> +		kaslr_status = KASLR_DISABLED_NO_SEED;
> +		return 0;
> +	}
> +
>  	/*
>  	 * OK, so we are proceeding with KASLR enabled. Calculate a suitable
>  	 * kernel image offset from the seed. Let's place the kernel in the
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
