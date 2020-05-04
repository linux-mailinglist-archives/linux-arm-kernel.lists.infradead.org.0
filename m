Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 557E61C39AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVVe5kC5/7KR4vUG6ocyChVWSgL8nkjrjqjyqNEpaks=; b=GYF9AP4/K+PT3B
	GVGpI+Nv9JTd9Wv3XaMlh0Of8xywfI61PgKGov/ZzvyN8bBl0LCEHWMp8yNccNANwCbYW9uhil59u
	Xj+gMvPkew75Fc/mf1SsfTYvGsGQXhBJ5+kSaEuEqfgrv9fdJ5KULkqOWD4x5R9BXYiuxUFaELzBa
	3WFlRc/dfxkPMFJMUe9EYx6j56r++FbNljoGUo05I4cB8P2sKKnqRonO8FINJqSfG+1aRRNTrKnsA
	WaCLUrqW5bVUsA/PhEdyXs7ps0PwCsP783ECZvvCFubLP2uGZlwgygZixvjE+E6XZQay6j12d+rwn
	PKthsjSQ+lsXUG0ttuLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaS5-0002SU-Bo; Mon, 04 May 2020 12:44:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVaRu-0002Rn-T9
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:43:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 276E01FB;
 Mon,  4 May 2020 05:43:54 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.4.172])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 113593F71F;
 Mon,  4 May 2020 05:43:52 -0700 (PDT)
Date: Mon, 4 May 2020 13:43:50 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] arm64/cpuinfo: Move device_initcall() near
 cpuinfo_regs_init()
Message-ID: <20200504124350.GB73375@C02TD0UTHF1T.local>
References: <1588595377-4503-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588595377-4503-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_054354_982378_9BE629FC 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Suzuki Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 05:59:37PM +0530, Anshuman Khandual wrote:
> This moves device_initcall() near cpuinfo_regs_init() making the calling
> sequence clear. Besides it is a standard practice to have device_initcall()
> (any __initcall for that matter) just after the function it actually calls.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Suzuki Poulose <suzuki.poulose@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
> Based on 5.7-rc4
> 
>  arch/arm64/kernel/cpuinfo.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
> index 86136075ae41..a515d8f3639e 100644
> --- a/arch/arm64/kernel/cpuinfo.c
> +++ b/arch/arm64/kernel/cpuinfo.c
> @@ -311,6 +311,8 @@ static int __init cpuinfo_regs_init(void)
>  	}
>  	return 0;
>  }
> +device_initcall(cpuinfo_regs_init);
> +
>  static void cpuinfo_detect_icache_policy(struct cpuinfo_arm64 *info)
>  {
>  	unsigned int cpu = smp_processor_id();
> @@ -403,5 +405,3 @@ void __init cpuinfo_store_boot_cpu(void)
>  	boot_cpu_data = *info;
>  	init_cpu_features(&boot_cpu_data);
>  }
> -
> -device_initcall(cpuinfo_regs_init);
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
