Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DD4F9665
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 17:58:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0e9DOeNusxpRJQX+U7k1pEfH0plNqrJW35SSprvwI4=; b=QEkMxNzs+IOp0T
	l1JXR9dEahNednr5l88INnIJfNYUsLw1T9/O/RWjZNxiA+655JZJoIns6AXhRQIfdi5W4d3BrKIOG
	dZQFqT13DmJFvem0EedxRjRKEl8iTtKECXfCLL+wDL23HVQKW3tA7m2ZRk5u3Dj3Ttdoli2sf5a/z
	xHK0k2Mu78QOkvCtReny13C0WB3gr9lHD3XXAoe4KL7/JUyledfQ/53dNGx20sKnn5689u2lWq4Fd
	SM5Z9B2iqcBfoEd6g/Tnxc+R3pQEFglTfhZH4E6o0WFepLDMp1+o2WytTXofALTPot3rS18jvR6QK
	R5hEhlsjJ3rx38b37RPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZUf-0000la-TS; Tue, 12 Nov 2019 16:58:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZUW-0000j2-Ax
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 16:58:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8FD9A30E;
 Tue, 12 Nov 2019 08:58:07 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 96C733F534;
 Tue, 12 Nov 2019 08:58:06 -0800 (PST)
Subject: Re: [kvm-unit-tests PATCH 11/17] arm: gic: Check for validity of both
 group enable bits
To: Andre Przywara <andre.przywara@arm.com>, Andrew Jones
 <drjones@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-12-andre.przywara@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <5f667bf5-7404-4a33-590e-cdf0a432cb8d@arm.com>
Date: Tue, 12 Nov 2019 16:58:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191108144240.204202-12-andre.przywara@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_085808_465658_A716D493 
X-CRM114-Status: GOOD (  17.88  )
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
Cc: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 11/8/19 2:42 PM, Andre Przywara wrote:
> The GIC distributor actually supports *two* enable bits, one per
> interrupt group. Linux itself won't care and will only ever use one bit.
> In a VM however we have two groups available, so we should be able to
> flip the two separate enable bits.
>
> Provide tests that try to flip the two available bits and check whether
> they stick.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arm/gic.c            | 21 +++++++++++++++++++++
>  lib/arm/asm/gic-v3.h |  4 ++--
>  lib/arm/gic-v3.c     |  2 +-
>  3 files changed, 24 insertions(+), 3 deletions(-)
>
> diff --git a/arm/gic.c b/arm/gic.c
> index 485ca4f..a0511e5 100644
> --- a/arm/gic.c
> +++ b/arm/gic.c
> @@ -640,6 +640,8 @@ static void spi_test_smp(void)
>  	report("SPI delievered on all cores", cores == nr_cpus);
>  }
>  
> +#define GICD_CTLR_ENABLE_BOTH (GICD_CTLR_ENABLE_G0 | GICD_CTLR_ENABLE_G1)
> +
>  /*
>   * Check the security state configuration of the GIC.
>   * Test whether we can switch to a single security state, to test both
> @@ -694,6 +696,25 @@ static void test_irq_group(void *gicd_base)
>  			return;
>  	}
>  
> +	/* Check whether the group enable bits stick. */
> +	reg = readl(gicd_base + GICD_CTLR);
> +	writel(reg & ~GICD_CTLR_ENABLE_BOTH, gicd_base + GICD_CTLR);
> +	reg = readl(gicd_base + GICD_CTLR);
> +	report("both groups disabled sticks",
> +	       (reg & GICD_CTLR_ENABLE_BOTH) == 0);
> +
> +	reg &= ~GICD_CTLR_ENABLE_BOTH;
> +	writel(reg | GICD_CTLR_ENABLE_G1, gicd_base + GICD_CTLR);
> +	reg = readl(gicd_base + GICD_CTLR);
> +	report("group 1 enabled sticks",
> +	       (reg & GICD_CTLR_ENABLE_BOTH) == GICD_CTLR_ENABLE_G1);
> +
> +	reg &= ~GICD_CTLR_ENABLE_BOTH;
> +	writel(reg | GICD_CTLR_ENABLE_G0, gicd_base + GICD_CTLR);
> +	reg = readl(gicd_base + GICD_CTLR);
> +	report("group 0 enabled sticks",
> +	       (reg & GICD_CTLR_ENABLE_BOTH) == GICD_CTLR_ENABLE_G0);

How about adding a check that enabling both groups at the same time works?

> +
>  	/*
>  	 * On a security aware GIC in non-secure world the IGROUPR registers
>  	 * are RAZ/WI. KVM emulates a single-security-state GIC, so both
> diff --git a/lib/arm/asm/gic-v3.h b/lib/arm/asm/gic-v3.h
> index 2eaf944..0a29610 100644
> --- a/lib/arm/asm/gic-v3.h
> +++ b/lib/arm/asm/gic-v3.h
> @@ -21,8 +21,8 @@
>  #define GICD_CTLR_RWP			(1U << 31)
>  #define GICD_CTLR_DS			(1U << 6)
>  #define GICD_CTLR_ARE_NS		(1U << 4)
> -#define GICD_CTLR_ENABLE_G1A		(1U << 1)
> -#define GICD_CTLR_ENABLE_G1		(1U << 0)
> +#define GICD_CTLR_ENABLE_G1		(1U << 1)
> +#define GICD_CTLR_ENABLE_G0		(1U << 0)

Nice cleanup.

>  
>  #define GICD_IROUTER			0x6000
>  #define GICD_PIDR2			0xffe8
> diff --git a/lib/arm/gic-v3.c b/lib/arm/gic-v3.c
> index feecb5e..d6a5186 100644
> --- a/lib/arm/gic-v3.c
> +++ b/lib/arm/gic-v3.c
> @@ -42,7 +42,7 @@ void gicv3_enable_defaults(void)
>  	writel(0, dist + GICD_CTLR);
>  	gicv3_dist_wait_for_rwp();
>  
> -	writel(GICD_CTLR_ARE_NS | GICD_CTLR_ENABLE_G1A | GICD_CTLR_ENABLE_G1,
> +	writel(GICD_CTLR_ARE_NS | GICD_CTLR_ENABLE_G0 | GICD_CTLR_ENABLE_G1,
>  	       dist + GICD_CTLR);
>  	gicv3_dist_wait_for_rwp();
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
