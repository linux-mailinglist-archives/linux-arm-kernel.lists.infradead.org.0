Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 300E11F4B10
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 03:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QphLqG/gubF0BiELcKEHWG6u2j6LdJ6yLeQFfkrVtMg=; b=V17y8Iyt5SnWih
	90jgGQwVh8fFW8CpZGIVWTzm6F+CZ3b91vERVrGJvR+kwsFDcEEzMyzYzdo4kieGN8w03eY2CzozQ
	oa9Elc3qARYe3Gg8+u+RwevRStPGyyedcrGWSmnkN9d45WE8szLUZlpfVUBXTudCf1ylUAJIBJB5z
	MHerHAXtiza+tPHiO1G1tK+HBW0wWfHwOyY0zSdsBkDolPLg16fstt4qOqr3huYZhYI0Ohw1lBxPD
	UVDBbRqtvmuiHNbingkKpkPpcAo7aphGacZRjZkbT2dcA6kePTd3TsX0Urgqa9DbfvFvrF+EhKqxa
	+77LU5SgLegq6PF836kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jipv8-0007DR-8m; Wed, 10 Jun 2020 01:52:50 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jipuy-0007Cy-GM
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 01:52:42 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ga6so195894pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 18:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=nk6ShAyDBssck5t8QYSZ3WJQ/WFzu/veqqS4BMiBvb0=;
 b=WUZ4tJFOb6dGzcPsy3MdetJ03VH8lILrJiYCR+/h8N7jctSxp2fE6HtU0CydaeNR+W
 z4k3JA3CtVjj1JxsD7zBWEwhNobWdytK96kuZO4UiChGfr46qFwAVsJ43aPgLkKc0sKs
 s6qVtcLX5GIs/anyX/PvbLhmH0+nKUFTea6I4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=nk6ShAyDBssck5t8QYSZ3WJQ/WFzu/veqqS4BMiBvb0=;
 b=nQbfZrshAwCgZPy3Tj0lKlqKOvU080dVFaUt38wN7pXa8FFKdQ4qcD6Ed3zH7cHRhg
 AOywo7CbSjTSbBF165XvGNAzodFgmXVLAr2ka+n/JAJxa+8B6xIsPiQZB3f5daI1T+Fq
 bsV6U5dT2YFscjBI590mSdELjKeg6fCxv/Vl0jsyqLbIy66+XCb2GzPfKjU6HY28sq89
 Hrs4S618ecDmbLOdFE8KmVXzPvRD4Ut7/97I7jw7xuBjpHVkyn5T1hhVM+Qd+1Wdb11G
 VNVxPy4BI+t3xVkfrLVUzXTVaz7YbCPU+vcd8hwRMcrs4IIIBD3NRz/ubf11OXyw84NX
 35IQ==
X-Gm-Message-State: AOAM533CWxncpaBARnrLTeLJnocTh7kWjxhBcxdRzKY0fH9/psz/KUS8
 0ott1G3cS4IdGFytKQnxc758Sg==
X-Google-Smtp-Source: ABdhPJxr4p1Yg0KdhwpImRlicDEF2uwvl2FrDohCyXukuHW5b+THwdX7zKye9QhTu7jeZSCmsgYHwQ==
X-Received: by 2002:a17:90a:ae11:: with SMTP id
 t17mr678074pjq.157.1591753959288; 
 Tue, 09 Jun 2020 18:52:39 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id r8sm2662754pgn.19.2020.06.09.18.52.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 18:52:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1591272551-21326-1-git-send-email-sumit.garg@linaro.org>
References: <1591272551-21326-1-git-send-email-sumit.garg@linaro.org>
Subject: Re: [PATCH v2] arm64: Enable perf events based hard lockup detector
From: Stephen Boyd <swboyd@chromium.org>
To: Sumit Garg <sumit.garg@linaro.org>, linux-arm-kernel@lists.infradead.org
Date: Tue, 09 Jun 2020 18:52:37 -0700
Message-ID: <159175395730.242598.3354488505981092317@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_185240_565699_71B2B51B 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Sumit Garg <sumit.garg@linaro.org>,
 daniel.thompson@linaro.org, will@kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, alexandru.elisei@arm.com, dianders@chromium.org,
 acme@kernel.org, alexander.shishkin@linux.intel.com, mingo@redhat.com,
 namhyung@kernel.org, tglx@linutronix.de, jolsa@redhat.com,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sumit Garg (2020-06-04 05:09:11)
> With the recent feature added to enable perf events to use pseudo NMIs
> as interrupts on platforms which support GICv3 or later, its now been
> possible to enable hard lockup detector (or NMI watchdog) on arm64
> platforms. So enable corresponding support.
> 
> One thing to note here is that normally lockup detector is initialized
> just after the early initcalls but PMU on arm64 comes up much later as
> device_initcall(). So we need to re-initialize lockup detection once
> PMU has been initialized.
> 
> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
> ---
> 
> This patch is dependent on perf NMI patch-set [1].
> 
> [1] https://patchwork.kernel.org/cover/11047407/

That patch series is from last year. Any progress on it?

> 
> Changes since RFC:
> - Rebased on top of Alex's WIP-pmu-nmi branch.
> - Add comment for safe max. CPU frequency.
> - Misc. cleanup.
> 
>  arch/arm64/Kconfig             |  2 ++
>  arch/arm64/kernel/perf_event.c | 41 +++++++++++++++++++++++++++++++++++++++--
>  drivers/perf/arm_pmu.c         |  9 +++++++++
>  include/linux/perf/arm_pmu.h   |  2 ++
>  4 files changed, 52 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index e109aa5..a37f018 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
>  #define ARMV8_A53_PERFCTR_PREF_LINEFILL                                0xC2
> @@ -1226,3 +1239,27 @@ void arch_perf_update_userpage(struct perf_event *event,
>         userpg->time_shift = (u16)shift;
>         userpg->time_offset = -now;
>  }
> +
> +#ifdef CONFIG_HARDLOCKUP_DETECTOR_PERF
> +/*
> + * Safe maximum CPU frequency in case a particular platform doesn't implement
> + * cpufreq driver. Although, architecture doesn't put any restrictions on
> + * maximum frequency but 5 GHz seems to be safe maximum given the available
> + * Arm CPUs in the market which are clocked much less than 5 GHz. On the other
> + * hand, we can't make it much higher as it would lead to a large hard-lockup
> + * detection timeout on parts which are running slower (eg. 1GHz on
> + * Developerbox) and doesn't possess a cpufreq driver.
> + */
> +#define SAFE_MAX_CPU_FREQ      5000000000UL // 5 GHz
> +u64 hw_nmi_get_sample_period(int watchdog_thresh)

Is it ever negative? Odd that this API uses a signed integer.

> +{
> +       unsigned int cpu = smp_processor_id();
> +       unsigned int max_cpu_freq;
> +
> +       max_cpu_freq = cpufreq_get_hw_max_freq(cpu);
> +       if (max_cpu_freq)
> +               return (u64)max_cpu_freq * 1000 * watchdog_thresh;
> +       else
> +               return (u64)SAFE_MAX_CPU_FREQ * watchdog_thresh;

I'd rather see the return unindented and the else dropped.

> +}
> +#endif
> diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
> index f96cfc4..6c25c0d1 100644
> --- a/drivers/perf/arm_pmu.c
> +++ b/drivers/perf/arm_pmu.c
> @@ -718,6 +718,15 @@ static int armpmu_get_cpu_irq(struct arm_pmu *pmu, int cpu)
>         return per_cpu(hw_events->irq, cpu);
>  }
>  
> +bool arm_pmu_irq_is_nmi(void)
> +{
> +       const struct pmu_irq_ops *irq_ops;
> +
> +       irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());

Can we use this_cpu_ptr()?

> +
> +       return irq_ops == &pmunmi_ops || irq_ops == &percpu_pmunmi_ops;
> +}
> +
>  /*
>   * PMU hardware loses all context when a CPU goes offline.
>   * When a CPU is hotplugged back in, since some hardware registers are

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
