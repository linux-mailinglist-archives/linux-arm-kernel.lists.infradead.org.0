Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 454B2B74A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 10:01:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gIqLJuYKxn+GB7LbH7kLKUOr2n4ql2VNscJ6pxM6tAw=; b=jT3/n7IuWwsH9j
	50X9LNDW0t02XXrETINgj26Prxgzr8friFZ5GitOufYu8g6o6NovPxnenc2Vw1rF8VD7aericCIOi
	SlDmZr0Q7ozg/AeJN/xk5VkRRICmU+78eZhLT4WZUIx1dAiJ6DPPy0xxfVbHscT0Uw6NXspfODYv6
	m8z+8u+6+vHlI69tl+Udyic6DVIXZPgx3IOsf1912bDipU5FtZlyhQS1x92lAepNc+m6IEMTk6CmK
	opGZFeOyFAyPcwSc4wTbR41aP9/CtcUkzCx2RdW9MT3HSUMfAqVVLJHWAuvGa75mWJbCy84c8ANUA
	gtqRp0d5PUc+TYk2JkHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iArNX-0005N2-RN; Thu, 19 Sep 2019 08:01:27 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iArMZ-00054m-Ga
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 08:00:29 +0000
Received: by mail-lf1-x143.google.com with SMTP id r134so1604178lff.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 01:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sgTCP96FLp9YNilI982cLmg/GDlavq1GIDyPQXwddlQ=;
 b=vtP961Mw0ZWI1S1jwgv6+Tv4nDQePMs5hU9AAF7cJVbP8YOReOgmk/9Es/V2RH34Te
 aJr8JEeKGbO/LnQsfKjN5RuLKyHMBx9jKEyPHNU3zqUG9TuuWsgG73+MIkRNmujow6qf
 czU+N8CPRWBDQ8TNc3z47w8DqNMKHX0IUqQY7S+KwgChCwFmVk80THAm/517E1YN656l
 yxdUvZoBR0Bip1ibjUlt4Gb7JH/6zTw2yjiOTk0dmprCBh81EoiZYZFFO0fdsMGwGWnz
 HKmtiiQoleJM672OqvNfYnAuWgZU6wzTivj3Bx2KJDDUscQCrIaY6MZ42Bg1VZvPO5Ow
 kvQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sgTCP96FLp9YNilI982cLmg/GDlavq1GIDyPQXwddlQ=;
 b=hjUy/o/DOrhL9FgPkkevtwxUP4wnMIDDNyaSyVETDByA+j+E+gnEOrxRb6roo6xEzI
 AT+1gmZ23ZcZRAjFSQZkdqzrER2TgPoLrrMfOeMAIwarlJrUAkm2kY6RjO0anPc89kBm
 hobPrbvKO2h0OAme5AJpiXkSCGhGVdLyKMmz/jMRfYfigNHpvDIkgKpjTvuvwiLtkXTJ
 +Voz72thr27eSekE+AjeCF9bpBGXlz5FenUmWN5i7kD/4QHC+oyRmDIq+MvND2nLe6vW
 rums8mrUPjw3Vwh+zuj2GQXK9eqWBIALiOOnh5dAi5NfD9e9GERowpKDjM2vUdSJfxq/
 klsg==
X-Gm-Message-State: APjAAAXHRHZPkdxCCicijHVt77fBZAyiv8Ok9hUM+4lhKSC5c4QvT09u
 dsp9yfga4xSFWBUZj6Hd2nsUejXfyhCxT8ScbozGxQ==
X-Google-Smtp-Source: APXvYqyW2CpznJtbLWGcqjTVa+1aQcN7NzrdNN6eL6dX9xgtd54K2hxPHEv5YzEj7hlNN+zN/Ft2/uOR4h+5FV92TAc=
X-Received: by 2002:ac2:5a07:: with SMTP id q7mr4058834lfn.177.1568880024796; 
 Thu, 19 Sep 2019 01:00:24 -0700 (PDT)
MIME-Version: 1.0
References: <1568877622-28073-1-git-send-email-yt.chang@mediatek.com>
In-Reply-To: <1568877622-28073-1-git-send-email-yt.chang@mediatek.com>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 19 Sep 2019 10:00:13 +0200
Message-ID: <CAKfTPtBFQJKmr0tw6_mA5OLsDu=HE+f4nFgZLGd4vv8dvyiubg@mail.gmail.com>
Subject: Re: [PATCH 1/1] sched/eas: introduce system-wide overutil indicator
To: YT Chang <yt.chang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_010027_798695_B396D5F1 
X-CRM114-Status: GOOD (  25.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 at 09:20, YT Chang <yt.chang@mediatek.com> wrote:
>
> When the system is overutilization, the load-balance crossing

s/overutilization/overutilized/

> clusters will be triggered and scheduler will not use energy
> aware scheduling to choose CPUs.
>
> The overutilization means the loading of  ANY CPUs

s/ANY/any/

> exceeds threshold (80%).
>
> However, only 1 heavy task or while-1 program will run on highest
> capacity CPUs and it still result to trigger overutilization. So
> the system will not use Energy Aware scheduling.
>
> To avoid it, a system-wide over-utilization indicator to trigger
> load-balance cross clusters.

The current rd->overutilized is already system wide. I mean that as
soon as one CPU is overutilized, the whole system is considered as
overutilized whereas you would like a finer grain level of
overutilization.
I remember a patch that was proposing a per sched_domain
overutilization detection. The load_balance at one sched_domain level
was enabled only if the child level was not able to handle the
overutilization and the energy aware scheduling was still used in the
other sched_domain

>
> The policy is:
>         The loading of "ALL CPUs in the highest capacity"
>                                                 exceeds threshold(80%) or
>         The loading of "Any CPUs not in the highest capacity"
>                                                 exceed threshold(80%)

Do you have UCs or figures that show a benefit with this change ?

>
> Signed-off-by: YT Chang <yt.chang@mediatek.com>
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
>         if (!READ_ONCE(rq->rd->overutilized) && cpu_overutilized(rq->cpu)) {
> -               WRITE_ONCE(rq->rd->overutilized, SG_OVERUTILIZED);
> -               trace_sched_overutilized_tp(rq->rd, SG_OVERUTILIZED);
> +               if (capacity_orig_of(cpu_of(rq)) < rq->rd->max_cpu_capacity) {
> +                       WRITE_ONCE(rq->rd->overutilized, SG_OVERUTILIZED);
> +                       trace_sched_overutilized_tp(rq->rd, SG_OVERUTILIZED);
> +               }
>         }
>  }
> +
> +static
> +void update_system_overutilized(struct sched_domain *sd, struct cpumask *cpus)
> +{
> +       unsigned long group_util;
> +       bool intra_overutil = false;
> +       unsigned long max_capacity;
> +       struct sched_group *group = sd->groups;
> +       struct root_domain *rd;
> +       int this_cpu;
> +       bool overutilized;
> +       int i;
> +
> +       this_cpu = smp_processor_id();
> +       rd = cpu_rq(this_cpu)->rd;
> +       overutilized = READ_ONCE(rd->overutilized);
> +       max_capacity = rd->max_cpu_capacity;
> +
> +       do {
> +               group_util = 0;
> +               for_each_cpu_and(i, sched_group_span(group), cpus) {
> +                       group_util += cpu_util(i);
> +                       if (cpu_overutilized(i)) {
> +                               if (capacity_orig_of(i) < max_capacity) {
> +                                       intra_overutil = true;
> +                                       break;
> +                               }
> +                       }
> +               }
> +
> +               /*
> +                * A capacity base hint for over-utilization.
> +                * Not to trigger system overutiled if heavy tasks
> +                * in Big.cluster, so
> +                * add the free room(20%) of Big.cluster is impacted which means
> +                * system-wide over-utilization,
> +                * that considers whole cluster not single cpu
> +                */
> +               if (group->group_weight > 1 && (group->sgc->capacity * 1024 <
> +                                               group_util * capacity_margin)) {
> +                       intra_overutil = true;
> +                       break;
> +               }
> +
> +               group = group->next;
> +
> +       } while (group != sd->groups && !intra_overutil);
> +
> +       if (overutilized != intra_overutil) {
> +               if (intra_overutil == true) {
> +                       WRITE_ONCE(rd->overutilized, SG_OVERUTILIZED);
> +                       trace_sched_overutilized_tp(rd, SG_OVERUTILIZED);
> +               } else {
> +                       WRITE_ONCE(rd->overutilized, 0);
> +                       trace_sched_overutilized_tp(rd, 0);
> +               }
> +       }
> +}
> +
>  #else
>  static inline void update_overutilized_status(struct rq *rq) { }
>  #endif
> @@ -8242,15 +8303,6 @@ static inline void update_sd_lb_stats(struct lb_env *env, struct sd_lb_stats *sd
>
>                 /* update overload indicator if we are at root domain */
>                 WRITE_ONCE(rd->overload, sg_status & SG_OVERLOAD);
> -
> -               /* Update over-utilization (tipping point, U >= 0) indicator */
> -               WRITE_ONCE(rd->overutilized, sg_status & SG_OVERUTILIZED);
> -               trace_sched_overutilized_tp(rd, sg_status & SG_OVERUTILIZED);
> -       } else if (sg_status & SG_OVERUTILIZED) {
> -               struct root_domain *rd = env->dst_rq->rd;
> -
> -               WRITE_ONCE(rd->overutilized, SG_OVERUTILIZED);
> -               trace_sched_overutilized_tp(rd, SG_OVERUTILIZED);
>         }
>  }
>
> @@ -8476,6 +8528,8 @@ static struct sched_group *find_busiest_group(struct lb_env *env)
>          */
>         update_sd_lb_stats(env, &sds);
>
> +       update_system_overutilized(env->sd, env->cpus);

This should be called only if (sched_energy_enabled())

> +
>         if (sched_energy_enabled()) {
>                 struct root_domain *rd = env->dst_rq->rd;
>
> --
> 1.9.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
