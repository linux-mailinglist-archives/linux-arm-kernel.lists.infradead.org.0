Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D78873CC0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dlJQWyVQoh+4FtthY25GPgORjgVnw0wD9/ePlnIH2Ds=; b=IiVhg1Y7QZ8okG
	mH2GZcX/5afNsXbp6oEwDTdpN/zwA0hXfe6YqgZTxQdDEHqWnPAVufDYU47CtmsNzExHPZLJU8ezp
	YS2vxragrZ5Q2u/WWt9vfQYoDSVqc579qbV6Z3wDq3jouhqRUDCytXpj94cnCJPvubr1CqgPj79sc
	/jLrvU62pXpwj/nQGqlC31QyjdFVOwtcxr2uP4jtgmONCiZHi8ubvYEXTyU9SXao1ipbIXKmroDl+
	CLZgizVm78tp8uyu1vSIfsIm2Ps6i+/xw+VT5Gwp3gvtwC5fFokkcTkEbewq7qKbozyvr0X/xGYOL
	9TOreZsyvwZeSXbTnkkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hagBP-0008D9-D7; Tue, 11 Jun 2019 12:47:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hagAo-000812-Hj
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:46:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E1EA344;
 Tue, 11 Jun 2019 05:46:45 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2D29B3F557;
 Tue, 11 Jun 2019 05:46:44 -0700 (PDT)
Date: Tue, 11 Jun 2019 13:46:42 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v4 2/8] arm64: irqflags: Pass flags as readonly operand
 to restore instruction
Message-ID: <20190611124641.GB29008@lakrids.cambridge.arm.com>
References: <1560245893-46998-1-git-send-email-julien.thierry@arm.com>
 <1560245893-46998-3-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560245893-46998-3-git-send-email-julien.thierry@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_054646_632481_9C1F0BEE 
X-CRM114-Status: GOOD (  13.85  )
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

On Tue, Jun 11, 2019 at 10:38:07AM +0100, Julien Thierry wrote:
> Flags are only read by the instructions doing the irqflags restore
> operation. Pass the operand as read only to the asm inline instead of
> read-write.
> 
> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>

Acked-by: Mark Rutland <mark.rutland@ar.com>

Mark.

> ---
>  arch/arm64/include/asm/irqflags.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/irqflags.h b/arch/arm64/include/asm/irqflags.h
> index 62996318..9c93152 100644
> --- a/arch/arm64/include/asm/irqflags.h
> +++ b/arch/arm64/include/asm/irqflags.h
> @@ -119,8 +119,8 @@ static inline void arch_local_irq_restore(unsigned long flags)
>  			__msr_s(SYS_ICC_PMR_EL1, "%0")
>  			"dsb	sy",
>  			ARM64_HAS_IRQ_PRIO_MASKING)
> -		: "+r" (flags)
>  		:
> +		: "r" (flags)
>  		: "memory");
>  }
> 
> --
> 1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
