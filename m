Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B92F54A11A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TFLFwT83bZYEDMnNIHJOJhO09SRrwLV2JyK2AkCzQg=; b=l58aggw21IRq/P
	0picK25C5G+Kk/uyYKG8VzfYBUYUnjLn+/e76vcmABCQ3+HqPRYR6mZsja9S4kOjLwgFMkF1/3KHT
	UFuQZNt0zQF8Dq6rFLfJz8QNrdUxt7VbXhX0+GfB4Fg3yGOI4PgPhmGZbF6CXxS2WQsrjg/7v96Ak
	xQ7pjACI957eGAu7X9TNZmY1D5ndPLoraZoQo0nIr1ag3XTV4tXifDlfLTl2mshgDKlI4pXyJEbyx
	XnBbbmZ5nTLcyUk/jHELJ0zcYR/aHYHPHGR/jTxK7/vDfcfhwUrquQBW4yvgQ5+bB4RQ60V4HbrkO
	lIeIj9nKWiPl/uD6L2oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdDWu-000723-Bf; Tue, 18 Jun 2019 12:48:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDVL-0006eZ-VE
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:46:31 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 096C420679;
 Tue, 18 Jun 2019 12:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560861984;
 bh=azZE7x66Pwd4/1F2pCh08R8QDQONV5S6PiUA04fafJU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J7s6MffqFl16LfzeqWkLVhkrzGMXF6+TE4C6pjT1lx4YnJUe+At3VVJ9WH/FRZpc4
 LLOceNx+u5IP75fW7WaM4QBN32W4Fp856R6YDrGn5qW67yHwRg34yORfnw/7ctsHKX
 4GukgwNScilzQ1hSRNJeBh2MsS1GlJ8RE8pi2D0M=
Date: Tue, 18 Jun 2019 13:46:19 +0100
From: Will Deacon <will@kernel.org>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH] arm64: smp: fix smp_send_stop() behaviour
Message-ID: <20190618124619.ybyyno3cii5v6zyd@willie-the-truck>
References: <20190613122146.45459-1-cristian.marussi@arm.com>
 <20190617180913.GN30800@fuggles.cambridge.arm.com>
 <aeaeffac-b8de-3c99-0ca9-e1f55ba3e29d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aeaeffac-b8de-3c99-0ca9-e1f55ba3e29d@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_054629_244734_2101F3F6 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com,
 Will Deacon <will.deacon@arm.com>, james.morse@arm.com, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 10:41:32AM +0100, Cristian Marussi wrote:
> On 17/06/2019 19:09, Will Deacon wrote:
> >> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> >> index bb4b3f07761a..c7d604427883 100644
> >> --- a/arch/arm64/kernel/smp.c
> >> +++ b/arch/arm64/kernel/smp.c
> >> @@ -971,8 +971,14 @@ void tick_broadcast(const struct cpumask *mask)
> >>  void smp_send_stop(void)
> >>  {
> >>  	unsigned long timeout;
> >> +	unsigned int this_cpu_online = cpu_online(smp_processor_id());
> >>  
> >> -	if (num_online_cpus() > 1) {
> >> +	/*
> >> +	 * If this CPU isn't fully online, it will not be counted in
> >> +	 * num_online_cpus(): on a 2-CPU system this situation will
> >> +	 * result in no message being sent to the other already online CPU.
> >> +	 */
> >> +	if (num_online_cpus() > this_cpu_online) {
> >>  		cpumask_t mask;
> >>  
> >>  		cpumask_copy(&mask, cpu_online_mask);
> >> @@ -985,10 +991,10 @@ void smp_send_stop(void)
> >>  
> >>  	/* Wait up to one second for other CPUs to stop */
> >>  	timeout = USEC_PER_SEC;
> >> -	while (num_online_cpus() > 1 && timeout--)
> >> +	while (num_online_cpus() > this_cpu_online && timeout--)
> >>  		udelay(1);
> >>  
> >> -	if (num_online_cpus() > 1)
> >> +	if (num_online_cpus() > this_cpu_online)
> >>  		pr_warning("SMP: failed to stop secondary CPUs %*pbl\n",
> >>  			   cpumask_pr_args(cpu_online_mask));
> > 
> > Whilst this looks ok to me, I'm worried about whether or not we have this
> > sort of logic elsewhere. For example, do we need to fix
> > crash_smp_send_stop() (and possibly machine_kexec()) too?
> 
> I think we certainly have such logic in crash_smp_send_stop() too at least,
> maybe it is just less easily exposed given the different use case of the function.
> 
> This wanted to be just a fix only against the observed troubled panic, but I
> could extend it to cover similar issues spotted by code analysis, if deemed worth.

Yes, please. Makes sense to fix these all at once.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
