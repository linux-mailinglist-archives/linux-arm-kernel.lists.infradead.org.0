Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03785F4DE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:14:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBuuraGefWrzz5vxw221FF9mB89LOamYSkeyeYDmr/M=; b=XVnWtQ053mnwv3
	BAWFaqz21wzA+j0wQ9KdAfPlEVlU4rakj0327Q8UGocaRyD1xON6AOcgUJ4mN5dOQAsKz0SQqb2vW
	Ne71C3uZOKLdLhBgnZslQe5sIizIGMdZjYsHwsSf/J2q9gxjUhESWcmIgZQHGHT8AYjPgmPZfFStI
	jxFszzaRVflmHLuiRfrCOqaagD2UVMA2Vv4chFbk6VrmsulnL67cqyHPc1vxLlVu2YdrKTt4tHXN1
	YBsqEeSxHgyQX6dBvIZ5qBjZZ1Dase4KudIysYXGtJFEEgeuWGogcdRp342AZGg2QrQ2t/zJrLE6G
	x9I2zdAvDOgm35wokC4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT529-0003KZ-7T; Fri, 08 Nov 2019 14:14:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT520-0003Jv-HZ
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:14:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 410B246A;
 Fri,  8 Nov 2019 06:14:30 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E0683F719;
 Fri,  8 Nov 2019 06:14:29 -0800 (PST)
Date: Fri, 8 Nov 2019 14:14:27 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: kaslr: Print warning if KASLR is disabled due to
 lack of seed
Message-ID: <20191108141426.GC11465@lakrids.cambridge.arm.com>
References: <20191107121241.8458-1-broonie@kernel.org>
 <20191108133830.GB22834@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108133830.GB22834@arrakis.emea.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_061432_619141_CB64E479 
X-CRM114-Status: GOOD (  16.08  )
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
Cc: Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 01:38:31PM +0000, Catalin Marinas wrote:
> On Thu, Nov 07, 2019 at 12:12:41PM +0000, Mark Brown wrote:
> > diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
> > index 416f537bf614..c2ba5e783ada 100644
> > --- a/arch/arm64/kernel/kaslr.c
> > +++ b/arch/arm64/kernel/kaslr.c
> > @@ -98,8 +98,10 @@ u64 __init kaslr_early_init(u64 dt_phys)
> >  	 * Retrieve (and wipe) the seed from the FDT
> >  	 */
> >  	seed = get_kaslr_seed(fdt);
> > -	if (!seed)
> > +	if (!seed) {
> > +		pr_warn("No seed available for KASLR, disabling\n");
> >  		return 0;
> > +	}
> >  
> >  	/*
> >  	 * Check if 'nokaslr' appears on the command line, and
> 
> For some reason, this patch locks up the VM on TX2, stuck in a recursive
> fault. Too early for a printk?

We call kaslr_early_init() before start_kernel(), so we haven't set up
things like the per-cpu offset here (and I believe that printk relies on
that internally).

To avoid surprises, I think it'd be best to log that state later, in
setup.c. We can also do that consistently, so that the user has a
positive message when KASLR is in use.

We can either have something like:

void announce_kaslr(void)
{
	if (!IS_ENABLED(CONFIG_RANDOMIZE_BASE))
		return;
	
	if (kaslr_offset() != 0)
		pr_info("KASLR in use\n");
	else if (in_commandline("nokaslr"))
		pr_info("KASLR disabled (command line)\n");
	else
		pr_info("KASLR disabled (no seed)\n");
}

Or have  kaslr.c update something like:

enum kaslr_status {
	KASLR_ENABLED,
	KASLR_DISABLED,
	KASLR_NO_SEED,
};

enum kaslr_status __ro_after_init kaslr_status;

... and switch on that in setup.c.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
