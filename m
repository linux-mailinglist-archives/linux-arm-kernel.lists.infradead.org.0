Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCBF135EB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:52:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CB6jmaPfs7FsenVjKWhlmridNDRzZAYOBN+Ygkeeb10=; b=YQ78BIHzlQy1K7
	lCdeyvqvOrB35Rdl4wrlfI2gcQeiojmFN/929DcEBMXbO6Sv7RVfc6XQddwSU9LXZnYZkvMyPjOYI
	Uy0mR6A8vTg31UfAbjrhRLmFC1XyedGrC6jb89H8zg8m6rVvUZVoGBd4K/3+InLAA9P33cBqineud
	bi3XYbP14oWSfLurUfhrGixc5zGDG5CcYiKqFMAK62JqcNxtOpY6THQtvHaA7kEppX38Zr8O0UpdT
	eC9KIPucpZi7Qh6nla4WGJrpC4+zJJO221GsKz71CnuTQ053u/6uuaymGRNZVoZWgnqWxPjImFnTU
	sMbT1pTTMu9uSjHNFFaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipb2L-0000Rr-BA; Thu, 09 Jan 2020 16:51:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipb2E-0000R7-Da
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:51:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 988491FB;
 Thu,  9 Jan 2020 08:51:49 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 519C73F703;
 Thu,  9 Jan 2020 08:51:48 -0800 (PST)
Date: Thu, 9 Jan 2020 16:51:46 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Julien Thierry <jthierry@redhat.com>
Subject: Re: [RFC v5 56/57] arm64: entry: Avoid empty alternatives entries
Message-ID: <20200109165145.GI3112@lakrids.cambridge.arm.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-57-jthierry@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109160300.26150-57-jthierry@redhat.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_085150_497224_78CF27D0 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 raphael.gault@arm.com, jpoimboe@redhat.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 04:02:59PM +0000, Julien Thierry wrote:
> kernel_ventry will create alternative entries to potentially replace
> 0 instructions with 0 instructions for EL1 vectors. While this does not
> cause an issue, it pointlessly takes up some bytes in the alternatives
> section.
> 
> Do not generate such entries.
> 
> Signed-off-by: Julien Thierry <jthierry@redhat.com>

This looks like a sensible cleanup on its own. FWIW:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kernel/entry.S | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 7c6a0a41676f..605bb7cbe499 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -60,16 +60,16 @@
>  	.macro kernel_ventry, el, label, regsize = 64
>  	.align 7
>  #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
> -alternative_if ARM64_UNMAP_KERNEL_AT_EL0
>  	.if	\el == 0
> +alternative_if ARM64_UNMAP_KERNEL_AT_EL0
>  	.if	\regsize == 64
>  	mrs	x30, tpidrro_el0
>  	msr	tpidrro_el0, xzr
>  	.else
>  	mov	x30, xzr
>  	.endif
> -	.endif
>  alternative_else_nop_endif
> +	.endif
>  #endif
>  
>  	sub	sp, sp, #S_FRAME_SIZE
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
