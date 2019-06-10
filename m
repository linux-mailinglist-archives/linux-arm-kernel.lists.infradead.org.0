Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A64FE3B5B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHhDzc+PoWnB+uXp2q2gJ719WDNdTteXV4XQIvcjAeA=; b=bADGt8EQzvKwY7
	QNtPUkyXMYB1Iuci0S9Aiw8DKq+HfngWyv1iZUrYnqYIKVcl6E48U4oQ1qa8R8rHT6FlndbdPaovP
	XJ5M2mkU4K6vT7pnEEelU/l7rZ8OJ+Am6ISLdAs76QculAM2VmQUHL1BK83mw3rKVFSgwWeN5pdQH
	YloKQFkZbt+HW5zs64WAdueADKJsOvYLpod6mRZb1at2Naf7O5hlrzi1vntFxFVQJyqGGhrGu1GlM
	8aqulJcjPU0/TXPxIA0Bj2jc9Hcq3qrqunozBkmxgPCoP9pqYxVashEjf4GqlYs36reDbfeOGwvMQ
	50rNhnTbTy0/D+Cjj2ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJxe-0001il-6E; Mon, 10 Jun 2019 13:03:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haJxR-0001iP-4O
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:03:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7FFC1337;
 Mon, 10 Jun 2019 06:03:28 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 976183F557; Mon, 10 Jun 2019 06:03:27 -0700 (PDT)
Date: Mon, 10 Jun 2019 14:03:25 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH] clocksource/arm_arch_timer: extract elf_hwcap use to
 arch-helper
Message-ID: <20190610130325.GB25803@arrakis.emea.arm.com>
References: <20190430131413.10017-1-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430131413.10017-1-andrew.murray@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_060329_224153_A23EF2A7 
X-CRM114-Status: GOOD (  12.23  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 02:14:13PM +0100, Andrew Murray wrote:
> diff --git a/arch/arm/include/asm/arch_timer.h b/arch/arm/include/asm/arch_timer.h
> index 0a8d7bba2cb0..f21e038dc9f3 100644
> --- a/arch/arm/include/asm/arch_timer.h
> +++ b/arch/arm/include/asm/arch_timer.h
> @@ -4,6 +4,7 @@
>  
>  #include <asm/barrier.h>
>  #include <asm/errno.h>
> +#include <asm/hwcap.h>
>  #include <linux/clocksource.h>
>  #include <linux/init.h>
>  #include <linux/types.h>
> @@ -110,6 +111,18 @@ static inline void arch_timer_set_cntkctl(u32 cntkctl)
>  	isb();
>  }
>  
> +static inline bool arch_timer_set_evtstrm_feature(void)
> +{
> +	elf_hwcap |= HWCAP_EVTSTRM;
> +#ifdef CONFIG_COMPAT
> +	compat_elf_hwcap |= COMPAT_HWCAP_EVTSTRM;
> +#endif
> +}

There is no COMPAT support on arm32.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
