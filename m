Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3EA3CC3D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCG691wlZipscJqqulxB9KDQCN3e5PxUmYLkvJq5vZ4=; b=ASNfBHlZCNUtac
	2yeKkEfH53FUZlR/jGfV19tY2lPC6HbkYdPL5vMm3ulOW7Z6JSeU/4osIbd/rWcgmROBUahKI3LvC
	r+hA043g3cR80KgFnF4zhXhc45DNvSdrX6xB2b9qkgLuGh1hz45lXmaubBCY1AYf++zKIT+aiDna4
	IVbRihyTj8cXUlPLfhcEKls1Ngo6nFlDYiJZ0OEeO2+832SzVXL9Hyg5zenNxGvtckxWh84CSBcWt
	w1tf2jgeLoXZlyKhpaRA6aEFdPSKIokUA8UPRp9K7Mrdp1DUQt2UccSv71pEEjmQD+TgymJO1zld3
	8qPla3vur4rivYaKwXxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hagG8-0001q9-Qt; Tue, 11 Jun 2019 12:52:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hagFw-0001pg-MT
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:52:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C58E9344;
 Tue, 11 Jun 2019 05:52:03 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 55D8D3F557;
 Tue, 11 Jun 2019 05:52:02 -0700 (PDT)
Date: Tue, 11 Jun 2019 13:52:00 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v4 3/8] arm64: irqflags: Add condition flags to inline
 asm clobber list
Message-ID: <20190611125159.GC29008@lakrids.cambridge.arm.com>
References: <1560245893-46998-1-git-send-email-julien.thierry@arm.com>
 <1560245893-46998-4-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560245893-46998-4-git-send-email-julien.thierry@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_055204_782452_1F89E736 
X-CRM114-Status: GOOD (  14.00  )
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
Cc: marc.zyngier@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org, james.morse@arm.com,
 yuzenghui@huawei.com, wanghaibin.wang@huawei.com, liwei391@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:38:08AM +0100, Julien Thierry wrote:
> Some of the inline assembly instruction use the condition flags and need
> to include "cc" in the clobber list.
> 
> Fixes: commit 4a503217ce37 ("arm64: irqflags: Use ICC_PMR_EL1 for interrupt masking")
> Suggested-by: Marc Zyngier <marc.zyngier@arm.com>
> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/include/asm/irqflags.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/irqflags.h b/arch/arm64/include/asm/irqflags.h
> index 9c93152..fbe1aba 100644
> --- a/arch/arm64/include/asm/irqflags.h
> +++ b/arch/arm64/include/asm/irqflags.h
> @@ -92,7 +92,7 @@ static inline unsigned long arch_local_save_flags(void)
>  			ARM64_HAS_IRQ_PRIO_MASKING)
>  		: "=&r" (flags), "+r" (daif_bits)
>  		: "r" ((unsigned long) GIC_PRIO_IRQOFF)
> -		: "memory");
> +		: "cc", "memory");
> 
>  	return flags;
>  }
> @@ -136,7 +136,7 @@ static inline int arch_irqs_disabled_flags(unsigned long flags)
>  			ARM64_HAS_IRQ_PRIO_MASKING)
>  		: "=&r" (res)
>  		: "r" ((int) flags)
> -		: "memory");
> +		: "cc", "memory");
> 
>  	return res;
>  }
> --
> 1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
