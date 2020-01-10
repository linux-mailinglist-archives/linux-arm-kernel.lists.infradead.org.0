Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B91ED13720D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 17:02:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DKDL4jx6qJVF25VcL6EHeWl18j4BWqGxqVdrLx0zxI=; b=MhubEjFkc1at66
	/e9w5S3aBo/aHpe3i0ZjS3Xx9jIsxGUjrSHgDcJSBfsTjax2RDSIiwtdWbI87dW1Be1KseaT0Y/MY
	Bw3kxQ5bUrRAqRV85UPzQfTZdicIaK+w1l5CJWyFEiU4pacFoQn4V9QxhcznQsK6GaTDUrkrHfT4+
	NTvGzG03lOoXl+dj8wmjnmghYRgXDW17CqAeHPy5HmTiM5Gp7UCMV+31v2MxBtCbiY/phAKcxv2ir
	FdAUKFQVHkRyH13OmyN4aNiZdCdGauJgrEcCjpY9jK7ptOTZVZxjh5RI7AryAJL1kgIO//m/47jPP
	/2hpyNdqccqcstHARH8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwk5-0004ci-Br; Fri, 10 Jan 2020 16:02:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwjx-0004cB-SJ
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 16:02:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2530D30E;
 Fri, 10 Jan 2020 08:02:25 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9408D3F6C4;
 Fri, 10 Jan 2020 08:02:23 -0800 (PST)
Date: Fri, 10 Jan 2020 16:02:21 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 10/17] arm64: entry: consolidate EL1 return paths
Message-ID: <20200110160221.GF33536@lakrids.cambridge.arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-11-mark.rutland@arm.com>
 <b212715d-bc23-3b9a-2cea-7b597a3bf50c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b212715d-bc23-3b9a-2cea-7b597a3bf50c@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_080225_955096_E7A4D4D8 
X-CRM114-Status: GOOD (  18.47  )
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
Cc: keescook@chromium.org, maz@kernel.org, robin.murphy@arm.com,
 broonie@kernel.org, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 catalin.marinas@arm.com, labbott@redhat.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 09:09:03AM +0530, Anshuman Khandual wrote:
> 
> 
> On 01/09/2020 12:26 AM, Mark Rutland wrote:
> > Each of the EL1 exception handler stubs has an identical copy of the
> > kernel_exit code. While each handler needs its own kernel_entry
> > sequence, there's no need to duplicate this for each handler, and we can
> > consolidate them for better I-cache usage.
> > 
> > This patch makes the EL1 handlers all use a common kernel_exit stub
> > called ret_to_kernel, matching the ret_to_user stub used by EL0
> > handlers.
> > 
> > As with the handlers, ret_to_kenerl is aligned for better I-cache and
> 
> Small nit, s/ret_to_kenerl/ret_to_kernel
> 
> > brapnch predictor utilization, and for consistency the same alignment is
> 
> Small nit, s/brapnch/branch

I really need to improve my proofreading; thanks for the corrections!

Mark.

> > applied to ret_to_user.
> > 
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: James Morse <james.morse@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> 
> Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>
> 
> > ---
> >  arch/arm64/kernel/entry.S | 15 ++++++++++++---
> >  1 file changed, 12 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> > index 35a8c56b0582..e76326feb1da 100644
> > --- a/arch/arm64/kernel/entry.S
> > +++ b/arch/arm64/kernel/entry.S
> > @@ -519,7 +519,7 @@ el1_sync:
> >  	kernel_entry 1
> >  	mov	x0, sp
> >  	bl	el1_sync_handler
> > -	kernel_exit 1
> > +	b	ret_to_kernel
> >  ENDPROC(el1_sync)
> >  
> >  	.align	6
> > @@ -527,7 +527,7 @@ el1_irq:
> >  	kernel_entry 1
> >  	mov	x0, sp
> >  	bl	el1_irq_handler
> > -	kernel_exit 1
> > +	b	ret_to_kernel
> >  ENDPROC(el1_irq)
> >  
> >  	.align	6
> > @@ -535,10 +535,18 @@ el1_error:
> >  	kernel_entry 1
> >  	mov	x0, sp
> >  	bl	el1_error_handler
> > -	kernel_exit 1
> > +	b	ret_to_kernel
> >  ENDPROC(el1_error)
> >  
> >  /*
> > + * Common EL1 exception return path
> > + */
> > +	.align 6
> > +ret_to_kernel:
> > +	kernel_exit 1
> > +ENDPROC(ret_to_kernel)
> > +
> > +/*
> >   * EL0 mode handlers.
> >   */
> >  	.align	6
> > @@ -606,6 +614,7 @@ work_pending:
> >  /*
> >   * "slow" syscall return path.
> >   */
> > +	.align 6
> >  ret_to_user:
> >  	disable_daif
> >  	gic_prio_kentry_setup tmp=x3
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
