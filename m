Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 579C179133
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/C8vwkmw6Y9zvPaEDYcGI1k+278n8gubgH6v0aNIiF4=; b=USDUWwgBjHMjtD8S209Q6pUD5
	kKnhogMnLkpaj/Y9/qqWF4wOvzwSaSTjuaxurUheqszPkEz1i93jCUAXV9BspNgfkFD/5/HHXfmhp
	N0wMHbyu+55doqvqzQkm27dUHX0ZEKWX0YvYPyESLls//tcM0oVxQjpho6nAVaBtgh2yftiySaZYX
	lFB8EgYlQFSdw+6wB16NPiZYc3rsoPyDP4VSk55x+kJORZtMHKAGDGyxAQfu0WpJg5h10eVdCP2Kv
	lonO6zmLYsM5OXjbvuo9nvJ4T+gfWRqrPiYtq2PVNOWLFFCWBm9iwYSJgRZdKSeIQrXJCRie5EAkg
	5IgHAwrhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8gW-0000Gf-7Q; Mon, 29 Jul 2019 16:39:40 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8gI-0000GJ-HM
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:39:28 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1hs8gG-0001fm-MT; Mon, 29 Jul 2019 18:39:24 +0200
To: Julien Thierry <julien.thierry.kdev@gmail.com>
Subject: Re: [PATCH] arm64: Lower priority mask for =?UTF-8?Q?GIC=5FPRIO?=
 =?UTF-8?Q?=5FIRQON?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 29 Jul 2019 17:39:24 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1564412266-9790-1-git-send-email-julien.thierry.kdev@gmail.com>
References: <1564412266-9790-1-git-send-email-julien.thierry.kdev@gmail.com>
Message-ID: <74dc6a37acc9c222d63e4133ca0506b0@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: julien.thierry.kdev@gmail.com,
 linux-arm-kernel@lists.infradead.org, julien.thierry@arm.com,
 catalin.marinas@arm.com, will@kernel.org, oleg@redhat.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_093926_713850_221681C4 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, linux-arm-kernel@lists.infradead.org,
 julien.thierry@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-07-29 15:57, Julien Thierry wrote:
> On a system with two security states, if SCR_EL3.FIQ is set, 
> non-secure
> IRQ priorities get shifted to fit the secure view but priority masks
> aren't.
>
> On such system, it turns out that GIC_PRIO_IRQON masks the priority 
> of
> normal interrupts, which obviously ends up in a hang.
>
> Increase GIC_PRIO_IRQON value (i.e. lower priority) to make sure
> interrupts are not blocked by it.
>
> Fixes: bd82d4bd21880b7c ("arm64: Fix incorrect irqflag restore for
>        priority masking")
> Signed-off-by: Julien Thierry <julien.thierry.kdev@gmail.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Oleg Nesterov <oleg@redhat.com>
> Cc: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/include/asm/arch_gicv3.h | 6 ++++++
>  arch/arm64/include/asm/ptrace.h     | 2 +-
>  2 files changed, 7 insertions(+), 1 deletion(-)
>
> Hopefully the last surprise...
>
> diff --git a/arch/arm64/include/asm/arch_gicv3.h
> b/arch/arm64/include/asm/arch_gicv3.h
> index 79155a8..89e4c8b 100644
> --- a/arch/arm64/include/asm/arch_gicv3.h
> +++ b/arch/arm64/include/asm/arch_gicv3.h
> @@ -155,6 +155,12 @@ static inline void gic_pmr_mask_irqs(void)
>  	BUILD_BUG_ON(GICD_INT_DEF_PRI < (GIC_PRIO_IRQOFF |
>  					 GIC_PRIO_PSR_I_SET));
>  	BUILD_BUG_ON(GICD_INT_DEF_PRI >= GIC_PRIO_IRQON);
> +	/*
> +	 * Need to make sure IRQON allows IRQs when SCR_EL3.FIQ is cleared
> +	 * and non-secure PMR accesses are not subject to the shifts that
> +	 * are applied to IRQ priorities
> +	 */
> +	BUILD_BUG_ON((0x80 | (GICD_INT_DEF_PRI >> 1)) >= GIC_PRIO_IRQON);
>  	gic_write_pmr(GIC_PRIO_IRQOFF);
>  }
>
> diff --git a/arch/arm64/include/asm/ptrace.h
> b/arch/arm64/include/asm/ptrace.h
> index b1dd039..1dcf63a 100644
> --- a/arch/arm64/include/asm/ptrace.h
> +++ b/arch/arm64/include/asm/ptrace.h
> @@ -30,7 +30,7 @@
>   * in the  the priority mask, it indicates that PSR.I should be set 
> and
>   * interrupt disabling temporarily does not rely on IRQ priorities.
>   */
> -#define GIC_PRIO_IRQON			0xc0
> +#define GIC_PRIO_IRQON			0xe0
>  #define GIC_PRIO_IRQOFF			(GIC_PRIO_IRQON & ~0x80)
>  #define GIC_PRIO_PSR_I_SET		(1 << 4)
>
> --
> 1.9.1

With the commit message fixed (s/set/cleared/):

Acked-by: Marc Zyngier <marc.zyngier@arm.com>

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
