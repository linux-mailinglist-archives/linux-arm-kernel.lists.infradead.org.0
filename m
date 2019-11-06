Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC4FF13D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:24:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+IMyBSFVTy0pQkkyZJ5nUw3wnTlr4R8LX0Oo1/tW7w=; b=Ua2oLfbi+YvDL+
	Hpyzs7B6vB4tl2Xj/oiSNCvkEn48jE7Aw/G+A8FVh/kmy1aOxi8J505uhvOuuZaR3U3a26l2EMNKO
	gI0osmMtDgFmKS0ryjPuWIaNJV/Ua5IuVynaZRrHqLzXJ+aL6PKY8YCAIf+P7Su8fAh0W9egijeQl
	roOkTIwQ3c3AXtyJXy/8S9HrKuTiylXWj8IgqpPt6pj3Hl6kf+NXVaRdRRKiblMp0b/Q3PcAlbFvM
	QWIOls0ii1nIa2lozFd7Qg/r92LubxdDYoDYM6I+NWmeSKvCHj48DEXIuW4LfM/7+hIsTMjgkP5uQ
	xa6sini6fetZsW1bG4Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSIUR-0000z9-H0; Wed, 06 Nov 2019 10:24:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIUK-0000uh-AP
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:24:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4BE097A7;
 Wed,  6 Nov 2019 02:24:31 -0800 (PST)
Received: from arrakis.emea.arm.com (unknown [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B59633F6C4;
 Wed,  6 Nov 2019 02:24:30 -0800 (PST)
Date: Wed, 6 Nov 2019 10:24:28 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v6 4/4] arm64: Use a variable to store non-global
 mappings decision
Message-ID: <20191106102428.GE21133@arrakis.emea.arm.com>
References: <20191105214854.30725-1-broonie@kernel.org>
 <20191105214854.30725-5-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105214854.30725-5-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_022432_403114_1CCD0103 
X-CRM114-Status: GOOD (  12.04  )
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 09:48:54PM +0000, Mark Brown wrote:
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 60c929f3683b..8462a358a1dc 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -679,6 +679,13 @@ void __init paging_init(void)
>  	cpu_replace_ttbr1(lm_alias(swapper_pg_dir));
>  	init_mm.pgd = swapper_pg_dir;
>  
> +        /*
> +         * If know now we are going to need KPTI then use non-global
> +         * mappings from the start, avoiding the cost of rewriting
> +         * everything later.
> +         */
> +        arm64_use_ng_mappings = kaslr_requires_kpti();

This really needs to be done before map_kernel() and map_mem() in
paging_init(). Tested this series and most of the linear map does not
have the nG bit when it should (/sys/kernel/debug/kernel_page_tables).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
