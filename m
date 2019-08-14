Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAFD8CF07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:07:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25tQ/oDSO3bZMtRAgkbIYkvnC0EdUR4jmo4AuRJVsog=; b=JedNFyKAIxA4bD
	L2xwLCujhz/G32a+8AeOa16cuPdWokTueNJdM5WfV94Ds+drEggJfFPLYycP1CCmxCkLw0rzqRZLQ
	gh3OUFBcQrW0E7FcV0tLTApm2Fiq03tYxyhaqmhdywsh/Qr0QeosuIKBvZMgtlNtAJMZ7KNb0GCeE
	SiPgh3bP6yDEmze/o/SV0/oDvW7RUEjOVb10jpIUOByaPaBmarx7xH2hupdokw3nYpSp875uAwVEw
	qNmRmfENXC0oj39sX0ecQaF/dkJxX1okm4Ucu9aB+CRQwMUs6nClH6mLdWVeF+efAiPEX1HPDGlh1
	bDUrMgqwthdh2KXkRX3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpFi-00035r-Sb; Wed, 14 Aug 2019 09:07:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpFR-00035U-DR
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:07:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E37CB344;
 Wed, 14 Aug 2019 02:07:12 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E2523F694;
 Wed, 14 Aug 2019 02:07:12 -0700 (PDT)
Date: Wed, 14 Aug 2019 10:07:10 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/3] arm64: constify icache_policy_str[]
Message-ID: <20190814090709.GK10425@arm.com>
References: <20190813141639.13476-1-mark.rutland@arm.com>
 <20190813141639.13476-2-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813141639.13476-2-mark.rutland@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_020713_497834_79211402 
X-CRM114-Status: GOOD (  15.30  )
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 03:16:37PM +0100, Mark Rutland wrote:
> The icache_policy_str[] array contains compile-time constant data, and
> is never intentionally modified, so let's mark it as const.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> ---
>  arch/arm64/kernel/cpuinfo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
> index 876055e37352..05933c065732 100644
> --- a/arch/arm64/kernel/cpuinfo.c
> +++ b/arch/arm64/kernel/cpuinfo.c
> @@ -33,7 +33,7 @@
>  DEFINE_PER_CPU(struct cpuinfo_arm64, cpu_data);
>  static struct cpuinfo_arm64 boot_cpu_data;
>  
> -static char *icache_policy_str[] = {
> +static const char *icache_policy_str[] = {

Can this be const char *const ?

The strings will be in .rodata and can't be modified anyway, but I
presume we don't modify the array elements either...

>  	[0 ... ICACHE_POLICY_PIPT]	= "RESERVED/UNKNOWN",
>  	[ICACHE_POLICY_VIPT]		= "VIPT",
>  	[ICACHE_POLICY_PIPT]		= "PIPT",

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
