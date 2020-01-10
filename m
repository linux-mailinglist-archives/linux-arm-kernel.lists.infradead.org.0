Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB571371E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:55:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8D1tItqqvcXMamX685pqd+LjZ2QVFyQ51nQLFq4066Q=; b=Ol2KpedtHsQT8n
	nlUJJfPWGLJuY79eAsZdH8YPLTpa+7penpYQtUcmAsZNmiuwtb5LmqsnCSGIfCujSyVPY+HUpLk4A
	7IEg2SB1ZgxlTaGTbCxIVyvf5iJg9Ga99eqXq9CB7PBTb0+9lQmOV69S39gX5R90f7a8Lm/QwRi4B
	yPlZlKJ4fk7yZGF7k/8dboYFfoC0xmww6W0Hxj7mzbXVch9X5dApKMA2gekWDwGHepfDeB/Iy5DZ+
	wJbghP2qzK1d8Lx2fXFjBSvA7vYnnihkrqbf3fcmmvPVkISgcUs+pvcXSkxsvgPIYfF6Z0S1WlFrv
	SDNpO+dHhBzIbTpkyysQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwch-0000PD-TN; Fri, 10 Jan 2020 15:54:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwc0-0008MB-7c
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:54:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8975130E;
 Fri, 10 Jan 2020 07:54:11 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DAA553F6C4;
 Fri, 10 Jan 2020 07:54:10 -0800 (PST)
Date: Fri, 10 Jan 2020 15:54:08 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: kernel: Correct annotation of end of el0_sync
Message-ID: <20200110155408.GD33536@lakrids.cambridge.arm.com>
References: <20200110155004.3577-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110155004.3577-1-broonie@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_075412_326713_3F1DCD4D 
X-CRM114-Status: GOOD (  15.01  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 03:50:04PM +0000, Mark Brown wrote:
> Commit 582f95835a8fc812c (arm64: entry: convert el0_sync to C) caused the
> ENDPROC() annotating the end of el0_sync to be placed after the code for
> el0_sync_compat. This replaced the previous annotation where it was
> located after all the cases that are now converted to C, including after
> the currently unannotated el0_irq_compat and el0_error_compat. Move the
> annotation to the end of the function and add separate annotations for the
> _compat ones.
> 
> Fixes: 582f95835a8fc812c (arm64: entry: convert el0_sync to C)
> Signed-off-by: Mark Brown <broonie@kernel.org>

Looks sane to me; I can rebase my entry rework atop.

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kernel/entry.S | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 7c6a0a41676f..d54d165b286a 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -653,6 +653,7 @@ el0_sync:
>  	mov	x0, sp
>  	bl	el0_sync_handler
>  	b	ret_to_user
> +ENDPROC(el0_sync)
>  
>  #ifdef CONFIG_COMPAT
>  	.align	6
> @@ -661,16 +662,18 @@ el0_sync_compat:
>  	mov	x0, sp
>  	bl	el0_sync_compat_handler
>  	b	ret_to_user
> -ENDPROC(el0_sync)
> +ENDPROC(el0_sync_compat)
>  
>  	.align	6
>  el0_irq_compat:
>  	kernel_entry 0, 32
>  	b	el0_irq_naked
> +ENDPROC(el0_irq_compat)
>  
>  el0_error_compat:
>  	kernel_entry 0, 32
>  	b	el0_error_naked
> +ENDPROC(el0_error_compat)
>  #endif
>  
>  	.align	6
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
