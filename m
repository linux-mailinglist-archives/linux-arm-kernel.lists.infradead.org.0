Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD06E4349E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 11:22:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZXknh6R6httfZz1jKzaYTx1u6JFdREUkI3/MUIPR7M=; b=agaUxWUNT27poi
	C55ykcUkEYVxx6339977T/iNjbc0XxBHSWvBIzYPYsG4OuIUqGoqQfw9x/WM6Muc9zGScQenWDozR
	pSQaRllgD8opG0jZAiI1jn34zvFQ1irVQyv/GY4TWR5yIN009QiBaoqc1kWG5quLTtvRqukwd25SX
	883AxPnKXFVEQuEji/njpKGkU/6Orw78R5EIiIBNKXisMzKkmdAgcDcrTs6k3H7MK+16H5U0b2pPt
	kPmAfWNoQqgCTFSEmiHE2DGsH8z/JPzaQkYj6QQW+xRaVnQsf9xZR2R4rxTApy4dc6WBaTCJLc5WY
	EJwc8RvXHcXpRkKExCag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLwO-0000od-DF; Thu, 13 Jun 2019 09:22:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLwB-0000nz-5A
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 09:22:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 76CD5367;
 Thu, 13 Jun 2019 02:22:26 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8ED903F694;
 Thu, 13 Jun 2019 02:22:25 -0700 (PDT)
Date: Thu, 13 Jun 2019 10:22:23 +0100
From: Will Deacon <will.deacon@arm.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH 1/2] arm64: Improve parking of stopped CPUs
Message-ID: <20190613092223.GC17331@fuggles.cambridge.arm.com>
References: <20190611181050.9647-1-aaro.koskinen@iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611181050.9647-1-aaro.koskinen@iki.fi>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_022227_236543_5BEAE804 
X-CRM114-Status: GOOD (  15.69  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Aaro Koskinen <aaro.koskinen@nokia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 09:10:49PM +0300, Aaro Koskinen wrote:
> From: Jayachandran C <jnair@caviumnetworks.com>
> 
> The current code puts the stopped cpus in an 'yield' instruction loop.
> Using a busy loop here is unnecessary, we can use the cpu_park_loop()
> function here to do a wfi/wfe.
> 
> Signed-off-by: Jayachandran C <jnair@caviumnetworks.com>
> Signed-off-by: Aaro Koskinen <aaro.koskinen@nokia.com>
> ---
> 
> 	This is a rebased resend of the patch:
> 
> 		https://patchwork.kernel.org/patch/9549145/
> 
>  arch/arm64/kernel/smp.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index bb4b3f07761a..1a1b96a50245 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -854,9 +854,7 @@ static void ipi_cpu_stop(unsigned int cpu)
>  
>  	local_daif_mask();
>  	sdei_mask_local_cpu();
> -
> -	while (1)
> -		cpu_relax();
> +	cpu_park_loop();
>  }

Acked-by: Will Deacon <will.deacon@arm.com>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
