Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD392025B4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 19:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utOOB8ZAhybpnfKIm8c0TKXuDu9+uA6VVeYDKEJVlGU=; b=lBpnicS0VST2yc
	1OEDH6A31f0+1vwGC8VinBwdi+NeCoEU68Tfo6225uVU47SvOek1ZAJd5u9Kaf26jWP/Sdpy+KmDH
	gzVUjMdlJnPm93EVYfkW1D4cQ2ywuUfV/NNDQ4m4kckL2+7tL3kBP+q3TQBsILt/weOQGlI+APDBm
	ziw7JH9RltGuNtuDPsCtN/N36q9NEJmV1WDdu8/Hhjs2+McfbnKGpULMPLEOBhQGcRMTrjv7b8Vgl
	5gbCVgXkWlDvCiqLHhy/4TZ+Osm/TvlDulFquIk2tpu7FBNg0j8+V9Oa1+k2pybsJxxgD+s8DT/67
	aSZnLi+bykA7LdXuHxvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmhcO-0005xw-Jx; Sat, 20 Jun 2020 17:49:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmhcG-0005wl-5e
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 17:49:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 748B4C0A;
 Sat, 20 Jun 2020 10:49:14 -0700 (PDT)
Received: from localhost (unknown [10.1.198.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1479B3F6CF;
 Sat, 20 Jun 2020 10:49:13 -0700 (PDT)
Date: Sat, 20 Jun 2020 18:49:12 +0100
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Vincent Guittot <vincent.guittot@linaro.org>
Subject: Re: [PATCH 1/3] thermal/cpu-cooling, sched/core: Cleanup thermal
 pressure definition
Message-ID: <20200620174912.GA18358@arm.com>
References: <20200614010755.9129-1-valentin.schneider@arm.com>
 <20200614010755.9129-2-valentin.schneider@arm.com>
 <CAKfTPtCyi9acak95_2_2uL3Cf0OMAbZhDav2LbPY+ULPrD7z4w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKfTPtCyi9acak95_2_2uL3Cf0OMAbZhDav2LbPY+ULPrD7z4w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_104920_257316_1529FCF0 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Juri Lelli <juri.lelli@redhat.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 Thara Gopinath <thara.gopinath@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vincent,

On Thursday 18 Jun 2020 at 17:03:24 (+0200), Vincent Guittot wrote:
> On Sun, 14 Jun 2020 at 03:10, Valentin Schneider
> <valentin.schneider@arm.com> wrote:
[..]
> > diff --git a/drivers/thermal/cpufreq_cooling.c b/drivers/thermal/cpufreq_cooling.c
> > index e297e135c031..a1efd379b683 100644
> > --- a/drivers/thermal/cpufreq_cooling.c
> > +++ b/drivers/thermal/cpufreq_cooling.c
> > @@ -417,6 +417,11 @@ static int cpufreq_get_cur_state(struct thermal_cooling_device *cdev,
> >         return 0;
> >  }
> >
> > +__weak void
> > +arch_set_thermal_pressure(const struct cpumask *cpus, unsigned long th_pressure)
> > +{
> > +}
> 
> Having this weak function declared in cpufreq_cooling is weird. This
> means that we will have to do so for each one that wants to use it.
> 
> Can't you declare an empty function in a common header file ?

Do we expect anyone other than cpufreq_cooling to call
arch_set_thermal_pressure()?

I'm not against any of the options, either having it here as a week
default definition (same as done for arch_set_freq_scale() in cpufreq.c)
or in a common header (as done for arch_scale_freq_capacity() in sched.h).

But for me, Valentin's implementation seems more natural as setters are
usually only called from within the framework that does the control
(throttling for thermal or frequency setting for cpufreq) and we
probably want to think twice if we want to call them from other places.

Thanks,
Ionela.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
