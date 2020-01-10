Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3412136D29
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 13:36:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXxXUMAvHjvhv9PnJNkapDa6acck05nwu1cnfhNANJk=; b=DB3aqY/0XUREjt
	HpOy3vJ4bN1+kwunDaLLH5LGVIXrZycftTnJC1f2pOC3WHxrv3Qhvm+u06NRjGcJbLWam8GpxUz6a
	o23DtAdPK1PIelzdXMilYl0tfCmiHxzO3ESTL3N8mH89WYAcaAy4wRNE3Y0MWji2g4a99/zrd3fJb
	wPNCHaagapQiogvnM3MzMIJtJ6rki8+xtHQAUnAodAgWEtj/TWkHgUN1M5lCsZb/MyGQZTwtus1Fw
	CvvMEFTeee6/hEMqu5/HwnCkAUKum8gXfGqhkdEs5kHOxb7Ns/vqebaAvvybr62yrkJjx5+zMvlMO
	7pv41dztLJhtRr4CQVBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iptWB-00068J-SD; Fri, 10 Jan 2020 12:35:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iptVs-00064J-3b
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 12:35:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B976D1063;
 Fri, 10 Jan 2020 04:35:39 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D580E3F534;
 Fri, 10 Jan 2020 04:35:38 -0800 (PST)
Date: Fri, 10 Jan 2020 12:35:36 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v10 3/3] arm64: Use v8.5-RNG entropy for KASLR seed
Message-ID: <20200110123536.GC31707@lakrids.cambridge.arm.com>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-4-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110122341.8445-4-broonie@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_043540_203726_477F6B0F 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 12:23:41PM +0000, Mark Brown wrote:
> When seeding KALSR on a system where we have architecture level random
> number generation make use of that entropy, mixing it in with the seed
> passed by the bootloader. Since this is run very early in init before
> feature detection is complete we open code rather than use archrandom.h.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kernel/kaslr.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
> index 2a11a962e571..53b8a4ee64ff 100644
> --- a/arch/arm64/kernel/kaslr.c
> +++ b/arch/arm64/kernel/kaslr.c
> @@ -120,6 +120,17 @@ u64 __init kaslr_early_init(u64 dt_phys)
>  		return 0;
>  	}
>  
> +	/*
> +	 * Mix in any entropy obtainable architecturally, open coded
> +	 * since this runs extremely early.
> +	 */
> +	if (__early_cpu_has_rndr()) {
> +		unsigned long raw;
> +
> +		if (__arm64_rndr(&raw))
> +			seed ^= raw;
> +	}
> +
>  	if (!seed) {
>  		kaslr_status = KASLR_DISABLED_NO_SEED;
>  		return 0;
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
