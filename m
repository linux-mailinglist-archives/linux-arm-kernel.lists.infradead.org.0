Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F199BF0419
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 18:30:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeUIhpyWoaelJFjekw1L5FPjmRP0CSPrmdYbu+N7eDY=; b=heRHCwgVBmPHf8
	IF0Sxbh6rGynqCQx/CAvelZ7npQjap1zChMj+fMu/ohz3Zp/GTlJaLzVmxgz/4BAXeY0uqTRyZvLf
	15JzRN+fP5a7sEjCdLTPskau17q0stMJlsNuk7Cv5IxzHeoE22FLRmtZJK/j3CUX11YPM4PyCQLxW
	jR3ZnabbIqBTt1HQ5WjW1TvG5fBxXOwZTel0+gh3iEx9dctYwJizi+cu7jZh0SZLCoSL6OiCT8X9Z
	kjasD0QFbw7X43qZtJlKasYV9cVNesFjqT89ganwXsC+IAoDXp8NILptovgliehQ7hckokx8X/XIo
	WbRvydzUw93p02j0ERJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2er-0002iR-FD; Tue, 05 Nov 2019 17:30:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2eg-0002LZ-5i
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 17:30:11 +0000
Received: from arrakis.emea.arm.com (unknown [46.69.195.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11099214D8;
 Tue,  5 Nov 2019 17:30:08 +0000 (UTC)
Date: Tue, 5 Nov 2019 17:30:06 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v5 4/4] arm64: Use a variable to store non-global
 mappings decision
Message-ID: <20191105173005.GE22987@arrakis.emea.arm.com>
References: <20191104191524.10596-1-broonie@kernel.org>
 <20191104191524.10596-5-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104191524.10596-5-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_093010_286757_D3C2C3A7 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Mon, Nov 04, 2019 at 07:15:24PM +0000, Mark Brown wrote:
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index 45c00a54909c..a09a02b5979a 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -456,6 +456,13 @@ void __init bootmem_init(void)
>  	zone_sizes_init(min, max);
>  
>  	memblock_dump_all();
> +
> +	/*
> +	 * If know now we are going to need KPTI then use non-global
> +	 * mappings from the start, avoiding the cost of rewriting
> +	 * everything later.
> +	 */
> +	arm64_use_ng_mappings = kaslr_requires_kpti();
>  }

I think we need this even earlier in paging_init() before we start
creating the kernel mappings.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
