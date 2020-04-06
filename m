Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA2319EF65
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 04:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwvz5ehjGBt/55x5CeDxTjT1rlbgRBjT9gaIarFGbAc=; b=BJmNmKfYuptX5H
	NCvfuGj6JAGNnNHJiClWwn/8G3JWktrrwtPQiZxITTTNS7TgsRYooPLQJ8oDKHeafctDTRW2JGh4s
	i9fqdHYmkOeDhO9UAEYrpMNOI2HxY+al+LsKb+gUrHRPrPMBwPMhHQaTotz9/ONucp6IqNmqVEqK7
	zVFcgiKyohbOtYTVI28Lo+wdnk16n1jZlhnqoHxX6I5Mes57MW4PZr7loq7Az57Kf7lfOceHU+myi
	STSmEH5ipLYxZgNpI2TZ241XXB0CMR4VGpPUDncLsFEt0uEicDEr+T43+e/SF5rwlIukApwb0iUR6
	bLku1TNUl3Nwxk98zP2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLHve-0002R6-Ol; Mon, 06 Apr 2020 02:56:02 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLHvV-0002QT-2T
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 02:55:55 +0000
Received: by mail-pj1-x1043.google.com with SMTP id z3so5833060pjr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 19:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tRSResKY5MQWGvJUDvh5Jnjxm56SAjdebaRotPHHpCg=;
 b=lZWRyNYnQi//4szFgMc008z18IP5tNRpMgc3HuT+c7pmDFFNX94iv3ueDXig87aFXA
 iUALmrl5yIrORMFaCXwnrl29XRBJ2QjoDVCZxckyS1cX4eEg0uoi60ZKoBVFWHjtZgWC
 MURluOkeZZi7s8BFaY8v7lZbJryDClJzpArMwFIsZUHaiviLfF60sisB952HgQRi6vo/
 OneRPtwbIbAJZOAwDrKxOG0OeUrqiJjmqBId1wAwWqwwVxwLoLkkUsgleTzNqBVcDESK
 EEsvOeeP4+AtFzxeKYxmBcAWlenmoFRGuOVFPe3iUGtwxci9v3VRLTbC9VQ68nVcZ37a
 jjhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tRSResKY5MQWGvJUDvh5Jnjxm56SAjdebaRotPHHpCg=;
 b=scNRrlITx+qHVcL24wIiujvn/Zy0cds45AowJNwfiUxExmiCn3q9eSU2tcuV9E9blf
 Epr3bd0pLpvFtPOHCTn1qi8OmnHh6TNNyGtEOBhAHsO9VBdgfyzSC1JZRnx3NE3+49jb
 eq9KgJ7hCljAxR+J350KIkx2P4FkCALEZt5YfgdX6Lv+h6cQ19svCLk5VHCghHaduNnY
 3QjBThrq2S7CucgVFSp3ilWuT0JungJBbfs4Om9GPDABQsLxR/jQQGMnOvGLL/9sIiiQ
 oixENXgTPnBgfZc9V/6Hq0uczsgseIQMM0HLDGCNtv0kswNMD53I8FB0vcsLl6+vHgeG
 dVXw==
X-Gm-Message-State: AGi0PuYsOtBcyXFOU0LdB1vJsRszW+d4Y2+uo3ckCTESnVYAZV6xnBZB
 Rn6iu7IfCn6IdYBTZV3JeKuZTQ==
X-Google-Smtp-Source: APiQypKMsRmy3TwpbSKrGtn3ztUTrpFALfP24RtI9OcbG/4dhlsbPmzjN1B9TXyH4L743RxjaNTVrA==
X-Received: by 2002:a17:90a:2663:: with SMTP id
 l90mr21796440pje.188.1586141752009; 
 Sun, 05 Apr 2020 19:55:52 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id f200sm10503930pfa.177.2020.04.05.19.55.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 Apr 2020 19:55:51 -0700 (PDT)
Date: Mon, 6 Apr 2020 08:25:49 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: sumitg <sumitg@nvidia.com>
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
Message-ID: <20200406025549.qfwzlk3745y3r274@vireshk-i7>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
 <20200326115023.xy3n5bl7uetuw7mx@vireshk-i7>
 <d233b26b-6b50-7d41-9f33-a5dc151e0e7d@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d233b26b-6b50-7d41-9f33-a5dc151e0e7d@nvidia.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_195553_635432_471E62EA 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05-04-20, 00:08, sumitg wrote:
> 
> 
> On 26/03/20 5:20 PM, Viresh Kumar wrote:
> > On 03-12-19, 23:02, Sumit Gupta wrote:
> > > diff --git a/drivers/cpufreq/tegra194-cpufreq.c b/drivers/cpufreq/tegra194-cpufreq.c
> > > +enum cluster {
> > > +     CLUSTER0,
> > > +     CLUSTER1,
> > > +     CLUSTER2,
> > > +     CLUSTER3,
> > 
> > All these have same CPUs ? Or big little kind of stuff ? How come they
> > have different frequency tables ?
> > 
> T194 SOC has homogeneous architecture where each cluster has two symmetric
> Carmel cores and and not big little. LUT's are per cluster and all LUT's
> have same values currently. Future SOC's may have different LUT values per
> cluster.

LUT ?

> > > +     MAX_CLUSTERS,
> > > +};

> > > +static unsigned int tegra194_get_speed_common(u32 cpu, u32 delay)
> > > +{
> > > +     struct read_counters_work read_counters_work;
> > > +     struct tegra_cpu_ctr c;
> > > +     u32 delta_refcnt;
> > > +     u32 delta_ccnt;
> > > +     u32 rate_mhz;
> > > +
> > > +     read_counters_work.c.cpu = cpu;
> > > +     read_counters_work.c.delay = delay;
> > > +     INIT_WORK_ONSTACK(&read_counters_work.work, tegra_read_counters);
> > > +     queue_work_on(cpu, read_counters_wq, &read_counters_work.work);
> > > +     flush_work(&read_counters_work.work);
> > 
> > Why can't this be done in current context ?
> > 
> We used work queue instead of smp_call_function_single() to have long delay.

Please explain completely, you have raised more questions than you
answered :)

Why do you want to have long delays ?

> > > +static int tegra194_cpufreq_init(struct cpufreq_policy *policy)
> > > +{
> > > +     struct tegra194_cpufreq_data *data = cpufreq_get_driver_data();
> > > +     int cluster = get_cpu_cluster(policy->cpu);
> > > +
> > > +     if (cluster >= data->num_clusters)
> > > +             return -EINVAL;
> > > +
> > > +     policy->cur = tegra194_fast_get_speed(policy->cpu); /* boot freq */
> > > +
> > > +     /* set same policy for all cpus */
> > > +     cpumask_copy(policy->cpus, cpu_possible_mask);
> > 
> > You are copying cpu_possible_mask mask here, and so this routine will
> > get called only once.
> > 
> > I still don't understand the logic behind clusters and frequency
> > tables.
> > 
> Currently, we use same policy for all CPU's to maximize throughput. Will add
> separate patch later to set policy as per cluster. But we are not using that
> in T194 due to perf reasons.

You can't misrepresent the hardware this way, sorry.

Again few questions, I understand that you have multiple clusters
here:

- All clusters will always have the frequency table ?
- All clusters are capable of having a different frequency at any
  point of time ? Or they will always run at same freq ?

> > > +     freqs.old = policy->cur;
> > > +     freqs.new = tbl->frequency;
> > > +
> > > +     cpufreq_freq_transition_begin(policy, &freqs);
> > > +     on_each_cpu_mask(policy->cpus, set_cpu_ndiv, tbl, true);
> > 
> > When CPUs share clock line, why is this required for every CPU ?
> > Per core NVFREQ_REQ system register is written to make frequency
> requests for the core. Cluster h/w then forwards the max(core0, core1)
> request to cluster NAFLL.

You mean that each cluster can set frequency independently ?

If all the clusters can run at independent frequencies but you still
want them to run at same frequency, then that can be done with a
single set of governor tunables, which is the default anyway. So this
should just work for you.

I will not be reviewing the v2 version you sent for now as that is
most likely wrong anyway.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
