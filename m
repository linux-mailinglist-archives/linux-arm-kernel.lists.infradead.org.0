Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA954CA43D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 18:26:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKVMxMkSGJuLKaWlSw3PIcuQi/NahXXJjyF6XyHB7QU=; b=eMeXYgBct9DZ+x
	mn430Ce7nHvqXseV0MpFPjezboxP4rsEIafV40av9UeS8klhcrlt9ivtTDuuYv+9Jda4XXJZ92plJ
	UbqHzMpZBIzVDxvgPm9vdl34jtTizTUWLpebdzsKLPQDTkw+P/WqlSzrXcYwLYRgxRHD4w3aehn1U
	M+4Frd6k3Q9gwiaPqmmSmNRZ+YtgTtNmOYp92LAfd3FGmHoy0R3J7GUiWQnIu8sd1yUC1gH1/gQqf
	YZliAxlHDect4guuCcl59XeEGxvAKcgS9VdnFddTOaCc+Y+TzRy+HUwyzn4UlmfBhQOnTf9bqssv3
	pnx2Jc8cmPWJqhFvAq1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG3vZ-0007Ad-Mm; Thu, 03 Oct 2019 16:26:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG3vQ-00079B-VQ; Thu, 03 Oct 2019 16:25:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0722D1000;
 Thu,  3 Oct 2019 09:25:54 -0700 (PDT)
Received: from [192.168.0.9] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B2C883F739;
 Thu,  3 Oct 2019 09:25:52 -0700 (PDT)
Subject: Re: [PATCH 1/1] sched/rt: avoid contend with CFS task
To: Jing-Ting Wu <jing-ting.wu@mediatek.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <1567048502-6064-1-git-send-email-jing-ting.wu@mediatek.com>
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
Message-ID: <7bd9506b-9930-0bf8-a024-8c7d7d8bf86e@arm.com>
Date: Thu, 3 Oct 2019 18:25:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1567048502-6064-1-git-send-email-jing-ting.wu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_092557_098112_C849AC7F 
X-CRM114-Status: GOOD (  24.75  )
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
Cc: linux-arm-kernel@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+ Steven Rostedt <rostedt@goodmis.org>]

On 29/08/2019 05:15, Jing-Ting Wu wrote:
> At original linux design, RT & CFS scheduler are independent.
> Current RT task placement policy will select the first cpu in
> lowest_mask, even if the first CPU is running a CFS task.
> This may put RT task to a running cpu and let CFS task runnable.
> 
> So we select idle cpu in lowest_mask first to avoid preempting
> CFS task.
> 
> Signed-off-by: Jing-Ting Wu <jing-ting.wu@mediatek.com>
> ---
>  kernel/sched/rt.c |   42 +++++++++++++++++-------------------------
>  1 file changed, 17 insertions(+), 25 deletions(-)
> 
> diff --git a/kernel/sched/rt.c b/kernel/sched/rt.c
> index a532558..626ca27 100644
> --- a/kernel/sched/rt.c
> +++ b/kernel/sched/rt.c
> @@ -1388,7 +1388,6 @@ static void yield_task_rt(struct rq *rq)
>  static int
>  select_task_rq_rt(struct task_struct *p, int cpu, int sd_flag, int flags)
>  {
> -	struct task_struct *curr;
>  	struct rq *rq;
>  
>  	/* For anything but wake ups, just return the task_cpu */
> @@ -1398,33 +1397,15 @@ static void yield_task_rt(struct rq *rq)
>  	rq = cpu_rq(cpu);
>  
>  	rcu_read_lock();
> -	curr = READ_ONCE(rq->curr); /* unlocked access */
>  
>  	/*
> -	 * If the current task on @p's runqueue is an RT task, then
> -	 * try to see if we can wake this RT task up on another
> -	 * runqueue. Otherwise simply start this RT task
> -	 * on its current runqueue.
> -	 *
> -	 * We want to avoid overloading runqueues. If the woken
> -	 * task is a higher priority, then it will stay on this CPU
> -	 * and the lower prio task should be moved to another CPU.
> -	 * Even though this will probably make the lower prio task
> -	 * lose its cache, we do not want to bounce a higher task
> -	 * around just because it gave up its CPU, perhaps for a
> -	 * lock?
> -	 *
> -	 * For equal prio tasks, we just let the scheduler sort it out.
> -	 *
> -	 * Otherwise, just let it ride on the affined RQ and the
> -	 * post-schedule router will push the preempted task away
> -	 *
> -	 * This test is optimistic, if we get it wrong the load-balancer
> -	 * will have to sort it out.
> +	 * If the task p is allowed to put more than one CPU or
> +	 * it is not allowed to put on this CPU.
> +	 * Let p use find_lowest_rq to choose other idle CPU first,
> +	 * instead of choose this cpu and preempt curr cfs task.
>  	 */
> -	if (curr && unlikely(rt_task(curr)) &&
> -	    (curr->nr_cpus_allowed < 2 ||
> -	     curr->prio <= p->prio)) {
> +	if ((p->nr_cpus_allowed > 1) ||
> +	    (!cpumask_test_cpu(cpu, p->cpus_ptr))) {
>  		int target = find_lowest_rq(p);

I'm sure RT folks don't like the idea to change this condition.

I remember a similar approach and Steven Rostedt NAKed the idea back:

https://lore.kernel.org/r/1415099585-31174-2-git-send-email-pang.xunlei@linaro.org

Back then, Xunlei Pang even tried to create a lower mask of idle CPUs,
for find_lower_mask() to return:

https://lore.kernel.org/r/1415099585-31174-1-git-send-email-pang.xunlei@linaro.org

[...]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
