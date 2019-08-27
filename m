Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C42459EFB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:05:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vArwNg+MWh0LvwOddgMGPW+ME4jedmH9EHJenjeIB88=; b=IgQidKm9hAyxi6
	k5BZaMhby5YrKVcSSfMTECekfGkwgOWMtHoGllYjrGlDyHES6+e4Vy6I/KNIpnTty6vU48VBqsIn2
	gh3h0s2glsvWWKI8cY7QYnqrQzU4BCt1lDWioIx9tkfkA9JYjsh4nKC+xMNj6arfCDT7Y8wN0DbkL
	z6bCzn0mbIQXTVExAtuACsAGXTjusGEHD5jqQYm9gAW/BySuBYspXp8MK7mlOpGvI7YlOYUyDSxQr
	B5u8WuBLQlgva0poQHPG8MsFnbmCw7IacRcmDZ5Ml7JhzF60j/rEdZ7pk9R0miHkjOKZoc3wAA4pI
	LlYGXcYFonNjDbAhBEyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dyi-0001pu-8q; Tue, 27 Aug 2019 16:05:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dyY-0001mJ-W0
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 16:05:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D79E337;
 Tue, 27 Aug 2019 09:05:42 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E70B33F59C;
 Tue, 27 Aug 2019 09:05:41 -0700 (PDT)
Date: Tue, 27 Aug 2019 17:05:39 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/3] arm64: smp: Increase secondary CPU boot timeout value
Message-ID: <20190827160539.GD43183@lakrids.cambridge.arm.com>
References: <20190827151815.2160-1-will@kernel.org>
 <20190827151815.2160-2-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827151815.2160-2-will@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_090543_069606_56B4B451 
X-CRM114-Status: GOOD (  16.02  )
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
Cc: catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 04:18:13PM +0100, Will Deacon wrote:
> When many debug options are enabled simultaneously (e.g. PROVE_LOCKING,
> KMEMLEAK, DEBUG_PAGE_ALLOC, KASAN etc), it is possible for us to timeout
> when attempting to boot a secondary CPU and give up. Unfortunately, the
> CPU will /eventually/ appear, and sit in the background happily stuck
> in a recursive exception due to a NULL stack pointer.
> 
> Increase the timeout to 5s, which will of course be enough for anybody.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

> ---
>  arch/arm64/kernel/smp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index 018a33e01b0e..63c7a7682e93 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -123,7 +123,7 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
>  		 * time out.
>  		 */
>  		wait_for_completion_timeout(&cpu_running,
> -					    msecs_to_jiffies(1000));
> +					    msecs_to_jiffies(5000));
>  
>  		if (!cpu_online(cpu)) {
>  			pr_crit("CPU%u: failed to come online\n", cpu);
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
