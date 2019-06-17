Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ECB48B6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 20:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=baGZlmEiot6Y9+GVDqtC5XWajEAJy7yYCb9wtQfHRC0=; b=EyANG7MAEevekP
	AVOsrXHxKRg7o7fUc0pDRcvgiX71Xw5aURO4limcHbHcVg/bGuf7iFK4r+DjGW69R+qzAFr69J/21
	bmFhSLfXhy/4m9DfPw1sCZaYkg+CApth+KGj3NaLNgdKmeDvR1gplHX/2QpQFEAEq++jNe5RndDhj
	xVHKkFk8ogyK1848HgFR1GLurlwSt6F/vL0DnqCJ6Y6rBv5tO0upp++hckz7FIfRzfWcZP2lt8rps
	cV8D+sfZ8XCF8+wZ/aU/QO6OYW8L3t8CNzcV6jAx3nZUjSqbKYTW6IZKcAXFXpky6ZaBRic3vnz3L
	9WL1UOLBSQk0s/UQoZTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcw4Q-0007r0-RL; Mon, 17 Jun 2019 18:09:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcw4D-0007qS-Nu
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 18:09:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA7E428;
 Mon, 17 Jun 2019 11:09:16 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C00CD3F246;
 Mon, 17 Jun 2019 11:09:15 -0700 (PDT)
Date: Mon, 17 Jun 2019 19:09:13 +0100
From: Will Deacon <will.deacon@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH] arm64: smp: fix smp_send_stop() behaviour
Message-ID: <20190617180913.GN30800@fuggles.cambridge.arm.com>
References: <20190613122146.45459-1-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613122146.45459-1-cristian.marussi@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_110917_827518_99CC2840 
X-CRM114-Status: GOOD (  21.66  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, james.morse@arm.com,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+James M]

On Thu, Jun 13, 2019 at 01:21:46PM +0100, Cristian Marussi wrote:
> On a 2-CPUs system, when one CPU is already online if the other
> panics while starting-up, smp_send_stop() will fail to send any
> STOP message to the other already online core, resulting in a
> system still responsive and alive at the end of the panic procedure.
> This patch makes smp_send_stop() account also for the online status
> of the calling CPU while evaluating how many CPUs are effectively
> online: this way, an adequate number of STOPs is sent, so enforcing
> a proper freeze of the system at the end of panic even under the
> above conditions.
> 
> Reported-by: Dave Martin <Dave.Martin@arm.com>
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> 
> This peculiar panic-procedure behaviour was exposed hitting a BUG()
> while running a KSFT cpu-hotplug test on a 2-core ARMv8 model.
> Such trigger-BUG() was fixed by a distinct commit already included
> in Linux 5.2-rc4 [0]
> 
> [0] https://lore.kernel.org/linux-arm-kernel/1559576102-12156-1-git-send-email-Dave.Martin@arm.com/
> ---
>  arch/arm64/kernel/smp.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index bb4b3f07761a..c7d604427883 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -971,8 +971,14 @@ void tick_broadcast(const struct cpumask *mask)
>  void smp_send_stop(void)
>  {
>  	unsigned long timeout;
> +	unsigned int this_cpu_online = cpu_online(smp_processor_id());
>  
> -	if (num_online_cpus() > 1) {
> +	/*
> +	 * If this CPU isn't fully online, it will not be counted in
> +	 * num_online_cpus(): on a 2-CPU system this situation will
> +	 * result in no message being sent to the other already online CPU.
> +	 */
> +	if (num_online_cpus() > this_cpu_online) {
>  		cpumask_t mask;
>  
>  		cpumask_copy(&mask, cpu_online_mask);
> @@ -985,10 +991,10 @@ void smp_send_stop(void)
>  
>  	/* Wait up to one second for other CPUs to stop */
>  	timeout = USEC_PER_SEC;
> -	while (num_online_cpus() > 1 && timeout--)
> +	while (num_online_cpus() > this_cpu_online && timeout--)
>  		udelay(1);
>  
> -	if (num_online_cpus() > 1)
> +	if (num_online_cpus() > this_cpu_online)
>  		pr_warning("SMP: failed to stop secondary CPUs %*pbl\n",
>  			   cpumask_pr_args(cpu_online_mask));

Whilst this looks ok to me, I'm worried about whether or not we have this
sort of logic elsewhere. For example, do we need to fix
crash_smp_send_stop() (and possibly machine_kexec()) too?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
