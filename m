Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA4CB74CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 10:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmJEPtZy06t5nyAncB7bvOr4NPZko1NNiVKbkGAs9ao=; b=TKZSQYqyrn2pS5
	Bh5r6HKN6CWTaY4EHV2A8qCap/QU1r7vRTZtxcCD8+25WFIB7zcxbDT5BfljoS/T9sKndlMfW/7wV
	7G3zHvPgIUicCz88V9N/ftpgd2h00OUXvzzXiNZqQL9tphjy/Q+L0Zs2hGbuZXVudHKaP8UkW0LeW
	xrkbkB/gpPMXWPcdsS+0kpG+UbpIrCXmiocqSZpKA260A1F8+VX685WGsTTKBY7t/2kC5Zd7678GY
	GRNAmBbtiZJCvOzGC+D8QrPse+eVwOsxxaMmWgltQxoO22II1EMmGu6azFKapEgjEsxrAXmcxpsCv
	PVukprm2wr3RXODnQruA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iArYT-0000tY-Ib; Thu, 19 Sep 2019 08:12:45 +0000
Received: from 4.mo68.mail-out.ovh.net ([46.105.59.63])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iArWz-0000qI-9Q
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 08:11:19 +0000
Received: from player168.ha.ovh.net (unknown [10.108.54.9])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 4A207143A87
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 10:11:05 +0200 (CEST)
Received: from qperret.net (115.ip-51-255-42.eu [51.255.42.115])
 (Authenticated sender: qperret@qperret.net)
 by player168.ha.ovh.net (Postfix) with ESMTPSA id E53A09E20A08;
 Thu, 19 Sep 2019 08:10:57 +0000 (UTC)
Date: Thu, 19 Sep 2019 10:10:53 +0200
From: Quentin Perret <qperret@qperret.net>
To: YT Chang <yt.chang@mediatek.com>
Subject: Re: [PATCH 1/1] sched/eas: introduce system-wide overutil indicator
Message-ID: <20190919081053.GA10561@qperret.net>
References: <1568877622-28073-1-git-send-email-yt.chang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568877622-28073-1-git-send-email-yt.chang@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Ovh-Tracer-Id: 4041980666167909293
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgddtvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_011114_112328_2585DECD 
X-CRM114-Status: GOOD (  26.31  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.59.63 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.7 FROM_FMBLA_NEWDOM28    From domain was registered in last 14-28
 days
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
Cc: wsd_upstream@mediatek.com, Peter Zijlstra <peterz@infradead.org>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Could you please CC me on later versions of this ? I'm interested.

On Thursday 19 Sep 2019 at 15:20:22 (+0800), YT Chang wrote:
> When the system is overutilization, the load-balance crossing
> clusters will be triggered and scheduler will not use energy
> aware scheduling to choose CPUs.
> 
> The overutilization means the loading of  ANY CPUs
> exceeds threshold (80%).
> 
> However, only 1 heavy task or while-1 program will run on highest
> capacity CPUs and it still result to trigger overutilization. So
> the system will not use Energy Aware scheduling.
> 
> To avoid it, a system-wide over-utilization indicator to trigger
> load-balance cross clusters.
> 
> The policy is:
> 	The loading of "ALL CPUs in the highest capacity"
> 						exceeds threshold(80%) or
> 	The loading of "Any CPUs not in the highest capacity"
> 						exceed threshold(80%)
> 
> Signed-off-by: YT Chang <yt.chang@mediatek.com>

Right, so we originally went for the simpler implementation because in
general when you have the biggest CPUs of the system running flat out at
max freq, the micro-optimizations for energy on littles don't matter all
that much. Is there a use-case where you see a big difference ?

A second thing is RT pressure. If a big CPU is used at 50% by a CFS task
and 50% by RT, we should mark it overutilized. Otherwise EAS will think
the CFS task is 50% and try to down-migrate it. But the truth is, we
dont know the size of the task ... So, I believe your patch breaks that
ATM.

And there is a similar problem with misfit. That is, a task running flat
out on a big CPU will be flagged as misfit, even if there is nothing we
can do about (we can't up-migrate it for obvious reasons). So perhaps we
should look at a common solution for both issues, if deemed useful.

> ---
>  kernel/sched/fair.c | 76 +++++++++++++++++++++++++++++++++++++++++++++--------
>  1 file changed, 65 insertions(+), 11 deletions(-)
> 
> diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
> index 036be95..f4c3d70 100644
> --- a/kernel/sched/fair.c
> +++ b/kernel/sched/fair.c
> @@ -5182,10 +5182,71 @@ static inline bool cpu_overutilized(int cpu)
>  static inline void update_overutilized_status(struct rq *rq)
>  {
>  	if (!READ_ONCE(rq->rd->overutilized) && cpu_overutilized(rq->cpu)) {
> -		WRITE_ONCE(rq->rd->overutilized, SG_OVERUTILIZED);
> -		trace_sched_overutilized_tp(rq->rd, SG_OVERUTILIZED);
> +		if (capacity_orig_of(cpu_of(rq)) < rq->rd->max_cpu_capacity) {
> +			WRITE_ONCE(rq->rd->overutilized, SG_OVERUTILIZED);
> +			trace_sched_overutilized_tp(rq->rd, SG_OVERUTILIZED);
> +		}
>  	}
>  }
> +
> +static
> +void update_system_overutilized(struct sched_domain *sd, struct cpumask *cpus)
> +{
> +	unsigned long group_util;
> +	bool intra_overutil = false;
> +	unsigned long max_capacity;
> +	struct sched_group *group = sd->groups;
> +	struct root_domain *rd;
> +	int this_cpu;
> +	bool overutilized;
> +	int i;
> +
> +	this_cpu = smp_processor_id();
> +	rd = cpu_rq(this_cpu)->rd;
> +	overutilized = READ_ONCE(rd->overutilized);
> +	max_capacity = rd->max_cpu_capacity;
> +
> +	do {
> +		group_util = 0;
> +		for_each_cpu_and(i, sched_group_span(group), cpus) {
> +			group_util += cpu_util(i);
> +			if (cpu_overutilized(i)) {
> +				if (capacity_orig_of(i) < max_capacity) {

This is what breaks things with RT pressure I think.

> +					intra_overutil = true;
> +					break;
> +				}
> +			}
> +		}
> +
> +		/*
> +		 * A capacity base hint for over-utilization.
> +		 * Not to trigger system overutiled if heavy tasks
> +		 * in Big.cluster, so
> +		 * add the free room(20%) of Big.cluster is impacted which means
> +		 * system-wide over-utilization,
> +		 * that considers whole cluster not single cpu
> +		 */
> +		if (group->group_weight > 1 && (group->sgc->capacity * 1024 <
> +						group_util * capacity_margin)) {
> +			intra_overutil = true;
> +			break;
> +		}

What if we have only one big MC domain with both big and little CPUs and
no DIE ? Say you have 4 big tasks, 4 big CPUs, 4 little CPUs (idle).
You'll fail to mark the system overutilized no ?

> +
> +		group = group->next;
> +
> +	} while (group != sd->groups && !intra_overutil);
> +
> +	if (overutilized != intra_overutil) {
> +		if (intra_overutil == true) {
> +			WRITE_ONCE(rd->overutilized, SG_OVERUTILIZED);
> +			trace_sched_overutilized_tp(rd, SG_OVERUTILIZED);
> +		} else {
> +			WRITE_ONCE(rd->overutilized, 0);
> +			trace_sched_overutilized_tp(rd, 0);
> +		}
> +	}
> +}
> +
>  #else
>  static inline void update_overutilized_status(struct rq *rq) { }
>  #endif
> @@ -8242,15 +8303,6 @@ static inline void update_sd_lb_stats(struct lb_env *env, struct sd_lb_stats *sd
>  
>  		/* update overload indicator if we are at root domain */
>  		WRITE_ONCE(rd->overload, sg_status & SG_OVERLOAD);
> -
> -		/* Update over-utilization (tipping point, U >= 0) indicator */
> -		WRITE_ONCE(rd->overutilized, sg_status & SG_OVERUTILIZED);
> -		trace_sched_overutilized_tp(rd, sg_status & SG_OVERUTILIZED);
> -	} else if (sg_status & SG_OVERUTILIZED) {
> -		struct root_domain *rd = env->dst_rq->rd;
> -
> -		WRITE_ONCE(rd->overutilized, SG_OVERUTILIZED);
> -		trace_sched_overutilized_tp(rd, SG_OVERUTILIZED);
>  	}
>  }
>  
> @@ -8476,6 +8528,8 @@ static struct sched_group *find_busiest_group(struct lb_env *env)
>  	 */
>  	update_sd_lb_stats(env, &sds);
>  
> +	update_system_overutilized(env->sd, env->cpus);
> +
>  	if (sched_energy_enabled()) {
>  		struct root_domain *rd = env->dst_rq->rd;
>  
> -- 
> 1.9.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
