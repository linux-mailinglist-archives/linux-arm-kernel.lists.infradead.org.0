Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AB71FF61B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtHeaEASxV0sZnnhs5EelTp3G7fswiMRWVxP38D7Hpg=; b=EfFNxMHNl9VLNr
	6XHNL4Fi/ys/SY/h7L+yHozZvkxsiyqF3KyQxusLNcWpEn/ArWHaf4nyfXWMcDsdZHlvFjLJPDxb8
	ixreMFXEb3dgboRpKh6obyaoXmjgrkECeH/U6xFp2oPMLNukUWpJNlXp8jsazptyiqgrcbuUI55v9
	Loa9KLKbxV1n4oM2wrVmzSgC5GmAJGLXVN4yqiLLM5UjiWnZ2Q51m1BGPQy0FXngauZJYHg6sQ6xw
	wH+uy0She5WszUeAdY9t48TpofHLrTsiSM9oVnU6HB1/qYJjhTDEoMAfwWbGD1fVlCtBaCbyAkogd
	tCYMtzh3e8mI8mewhdqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlw52-0003U2-Ro; Thu, 18 Jun 2020 15:03:52 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlw4p-0003Te-DT
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:03:40 +0000
Received: by mail-lj1-x244.google.com with SMTP id i3so7661975ljg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 08:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n7OlS+GwL++zlMgerOt6xFjvAHKRx4D54ivq6twtNuM=;
 b=ORkvlLBgA1esosGkQurOfdfuJxZ0oPmeMhen/wNR1FzPkfy6vGdg7sWvoHcpsdWMaX
 jcmbDInP1C1eDa0Yz4ZkIM3/TD9XzZDdtY8ZEoew7sVTTsP4mFHchNH9dfuI2rPyu9ZY
 LiEEs8x0+h5BOSmQb/6QcRjNwq7HUp6A2a/hSt8H88+oVDAaKyZ645nQ7w9Olfr4Uxt/
 ojF7/AFTOM9HL9G4fSQBZINpWagLIlc/OzmlfUc8ikGPtdBqCmhGLPt8ym4cBQ9vn40s
 yNQD1DElZFIVv8VkRTZPuG89oo3pOA8AzQ0ew6quWVgEPlyHCec9SW78vEbQfLqAkzOf
 FlEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n7OlS+GwL++zlMgerOt6xFjvAHKRx4D54ivq6twtNuM=;
 b=JuSDwqsegCgYcSfxY1/upRGkz0Umc2Al8x9tVaAMBefgxtHBvl0iBicGcpvnnlyVC/
 cZf0kIPY+SyuhvZm1ITOFQZjgilwK5rH5+qBOx+/NOD0J2cdbvPrQreMZOCqCj4Mjdwc
 9h3A86Afysxv2yBFPeoclGfUT+KPcSmN8BMm5ZLFfoJYhgNjmeqCZuFiklLqEvJO0LXe
 KJZJhsz7Gs5xjGFAa+qyeyVUE/cxzPiXMgXh5a8WM32YuwzvmiTVGPvcfPCzFNbfs0SR
 XHVX3VL+FQTs+i4WAlifheUkm0Ovp1Al6XsUrAe4YaRgyyqoTvmn8ua4vUQXQHTA7NHZ
 53uw==
X-Gm-Message-State: AOAM532+R21fnfDUM8JbiCtzOvJta60XZTqxg5Y6ZbXfzPvYcs8jmA8q
 fMcedIE67/B5FskNx8xwBNnTMnW2H0m3ogH3E6XnzQ==
X-Google-Smtp-Source: ABdhPJzxxMz2ip/Y2ppi+/Zj9M3CIDCys8ygeYZUmjcfeK8RW5W/JrTu/UQEH/73a4HCtAjAw7pksbTZY/UxwSH+914=
X-Received: by 2002:a2e:541e:: with SMTP id i30mr2366630ljb.156.1592492616104; 
 Thu, 18 Jun 2020 08:03:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200614010755.9129-1-valentin.schneider@arm.com>
 <20200614010755.9129-2-valentin.schneider@arm.com>
In-Reply-To: <20200614010755.9129-2-valentin.schneider@arm.com>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 18 Jun 2020 17:03:24 +0200
Message-ID: <CAKfTPtCyi9acak95_2_2uL3Cf0OMAbZhDav2LbPY+ULPrD7z4w@mail.gmail.com>
Subject: Re: [PATCH 1/3] thermal/cpu-cooling, sched/core: Cleanup thermal
 pressure definition
To: Valentin Schneider <valentin.schneider@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_080339_461011_4381C525 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>, Ingo Molnar <mingo@kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 14 Jun 2020 at 03:10, Valentin Schneider
<valentin.schneider@arm.com> wrote:
>
> The following commit:
>
>   14533a16c46d ("thermal/cpu-cooling, sched/core: Move the arch_set_thermal_pressure() API to generic scheduler code")
>
> moved the definition of arch_set_thermal_pressure() to sched/core.c, but
> kept its declaration in linux/arch_topology.h. When building e.g. an x86
> kernel with CONFIG_SCHED_THERMAL_PRESSURE=y, cpufreq_cooling.c ends up
> getting the declaration of arch_set_thermal_pressure() from
> include/linux/arch_topology.h, which is somewhat awkward.
>
> On top of this, the public setter, arch_set_thermal_pressure(), is defined
> unconditionally in sched/core.c while the public getter,
> arch_scale_thermal_pressure(), is hardcoded to return 0 unless it has been
> redefined by the architecture. arch_*() functions are meant to be defined
> by architectures, so revert the aforementioned commit and re-implement it
> in a way that keeps arch_set_thermal_pressure() architecture-definable.
>
> Signed-off-by: Valentin Schneider <valentin.schneider@arm.com>
> ---
>  drivers/base/arch_topology.c      | 11 +++++++++++
>  drivers/thermal/cpufreq_cooling.c |  5 +++++
>  include/linux/arch_topology.h     |  3 ---
>  kernel/sched/core.c               | 11 -----------
>  4 files changed, 16 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
> index 4d0a0038b476..d14cab7dfa3c 100644
> --- a/drivers/base/arch_topology.c
> +++ b/drivers/base/arch_topology.c
> @@ -54,6 +54,17 @@ void topology_set_cpu_scale(unsigned int cpu, unsigned long capacity)
>         per_cpu(cpu_scale, cpu) = capacity;
>  }
>
> +DEFINE_PER_CPU(unsigned long, thermal_pressure);
> +
> +void arch_set_thermal_pressure(const struct cpumask *cpus,
> +                              unsigned long th_pressure)
> +{
> +       int cpu;
> +
> +       for_each_cpu(cpu, cpus)
> +               WRITE_ONCE(per_cpu(thermal_pressure, cpu), th_pressure);
> +}
> +
>  static ssize_t cpu_capacity_show(struct device *dev,
>                                  struct device_attribute *attr,
>                                  char *buf)
> diff --git a/drivers/thermal/cpufreq_cooling.c b/drivers/thermal/cpufreq_cooling.c
> index e297e135c031..a1efd379b683 100644
> --- a/drivers/thermal/cpufreq_cooling.c
> +++ b/drivers/thermal/cpufreq_cooling.c
> @@ -417,6 +417,11 @@ static int cpufreq_get_cur_state(struct thermal_cooling_device *cdev,
>         return 0;
>  }
>
> +__weak void
> +arch_set_thermal_pressure(const struct cpumask *cpus, unsigned long th_pressure)
> +{
> +}

Having this weak function declared in cpufreq_cooling is weird. This
means that we will have to do so for each one that wants to use it.

Can't you declare an empty function in a common header file ?

> +
>  /**
>   * cpufreq_set_cur_state - callback function to set the current cooling state.
>   * @cdev: thermal cooling device pointer.
> diff --git a/include/linux/arch_topology.h b/include/linux/arch_topology.h
> index 0566cb3314ef..81bd1c627195 100644
> --- a/include/linux/arch_topology.h
> +++ b/include/linux/arch_topology.h
> @@ -39,9 +39,6 @@ static inline unsigned long topology_get_thermal_pressure(int cpu)
>         return per_cpu(thermal_pressure, cpu);
>  }
>
> -void arch_set_thermal_pressure(struct cpumask *cpus,
> -                              unsigned long th_pressure);
> -
>  struct cpu_topology {
>         int thread_id;
>         int core_id;
> diff --git a/kernel/sched/core.c b/kernel/sched/core.c
> index 43ba2d4a8eca..7861d21f3c2b 100644
> --- a/kernel/sched/core.c
> +++ b/kernel/sched/core.c
> @@ -3628,17 +3628,6 @@ unsigned long long task_sched_runtime(struct task_struct *p)
>         return ns;
>  }
>
> -DEFINE_PER_CPU(unsigned long, thermal_pressure);
> -
> -void arch_set_thermal_pressure(struct cpumask *cpus,
> -                              unsigned long th_pressure)
> -{
> -       int cpu;
> -
> -       for_each_cpu(cpu, cpus)
> -               WRITE_ONCE(per_cpu(thermal_pressure, cpu), th_pressure);
> -}
> -
>  /*
>   * This function gets called by the timer code, with HZ frequency.
>   * We call it with interrupts disabled.
> --
> 2.27.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
