Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D185D941F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:40:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PqUiz6+zKujPyGG8Kt5RWrFZTBrfsjx7fQ5AcKrM/I=; b=s58BBuQuFMadid
	Ro+on1ZskSdfp3GciKkW9hGaeWaE59I9/5JlV/GjLEH/QzgtOxhqQ3x2KnlFFGbjkMNEbQk8fU91n
	nAE46UPMhu3GGGOFqfMI5BVc9Us31b1ZtFfrn60mMf4qM6xjd7wKWCYUJktvnjE+0JqGaJCJax0Hu
	Cdgp4E0TYZAkOyB78pQILAMkafRYMjvt46ANCRVN1s3IX0I3/Qg6tHy4/kspq94TWUhT3Qzrz+1BE
	PThxi0xPBTULTlGcHh6pANUZAxMqEz9Zq9E53mZQ3qS9wZa2z2GKzNzQgp/ERODa3o6PgtszDoh5P
	Qhb7GkR4rbeKPn+CsIKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkTQ-0004h5-0j; Wed, 16 Oct 2019 14:40:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkTC-00043I-NH
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:40:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F2E5E142F;
 Wed, 16 Oct 2019 07:40:09 -0700 (PDT)
Received: from arrakis.emea.arm.com (unknown [10.1.196.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 193FB3F68E;
 Wed, 16 Oct 2019 07:40:08 -0700 (PDT)
Date: Wed, 16 Oct 2019 15:40:06 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH -next v2] arm64: mm: Fix unused variable warning in
 zone_sizes_init
Message-ID: <20191016144006.GK49619@arrakis.emea.arm.com>
References: <20191015224304.20963-1-natechancellor@gmail.com>
 <20191016031107.30045-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016031107.30045-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_074010_812940_0E4EE667 
X-CRM114-Status: GOOD (  10.12  )
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 08:11:08PM -0700, Nathan Chancellor wrote:
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index 44f07fdf7a59..359c3b08b968 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -212,7 +212,9 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
>  	struct memblock_region *reg;
>  	unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
>  	unsigned long max_dma32 = min;
> +#if defined(CONFIG_ZONE_DMA) || defined(CONFIG_ZONE_DMA32)
>  	unsigned long max_dma = min;
> +#endif

Nitpick: the coding style recommends __maybe_unused instead of #ifdef.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
