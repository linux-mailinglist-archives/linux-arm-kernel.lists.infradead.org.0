Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA5771764
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/aNCwmURzVy4VeaxydRPah1Wpt8k2FTKdgZ7/SSY+I=; b=Kbv16oTdOavPD/
	JqNpCK3GYClyzXJEh+OKD2+ESf6hkdl4VMSaU90bBjYPt6LDk3mu+hhEC4x40tEfjnRGi9mwQKnxr
	75vvcibxhj2TRFwqedCf0ZpmIsOdyIEuHQI5ptsDORTQGHzOzi7wZtxPONnGVViHkIYBcvYv2MJ3b
	VzdVjTadg7SN4CZlnYE6eGu93YwJ0ZgaAaDrYv10j6pd4cI6VpOa4Y1Fc7PQkJM8lsDU9HATT3Lxi
	l2depbXV1NU3zxNBPIYsvQJLgPLtTveCD3gVt/G9IFUd2v5sshnuzVubnNIUauGo13ULF9uiu/2Mm
	T73yzg2FjKWtpsm4aVTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptHB-0003vs-Ba; Tue, 23 Jul 2019 11:48:13 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptGj-0003m0-Uq
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:47:47 +0000
Received: by mail-vk1-xa43.google.com with SMTP id 130so8586244vkn.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 04:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9dBxJDUf07AXZT1DslLp2oPEscDOmXAV+KRm01KVmpI=;
 b=ve9dNQIU1/ScDGRilK0yswo1rbhImUF9nVICpYHb485c/Bj4lDj04wxmDmoyFjB8mr
 aid5olNv3hC03Je2M0Yi+c/yaAMWkANnaHJfmN7k5hMFnTMMCxa2/t+yVeX6fEGYSH/g
 +phgBCSHBdCNeK0F73qWUdixYw95HKKvatfcABX0y3Qx98v/FdadS6BxrckWRPnmYhn1
 NvxBrLaFy/pVn30DNFAioHuEw5yqalhKaitfwkw+4fhyceclxiZSqhdL2d13iaSWBB3P
 CkGnMGApXt3qLRSyzv5Vrkb87mumfSWdV1zzJhMR4bw1Vk3Fa9YJyvJlKZe80Nq6hlef
 +UrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9dBxJDUf07AXZT1DslLp2oPEscDOmXAV+KRm01KVmpI=;
 b=TTcKaw6mHtj8lszkaoAgZeGAeAZb6Ypr7SN0qdAakmn8p3Gjm8HuoGWR0UuVFieJe4
 Vei5HENEeK8S6YbN+yImMZlwyyrZoKabDKr2h49iLDMdT5B+aiK7QneKQ95p9J4ZsMnR
 iawJ4u6IUyJLtb+Ft+EABNZAoUPjsmODopSIc52gF4ui7ZAbhnj+vflIOWLnAzYyRasi
 PmVSqyHDNlgdFv5iDf/y6bMG8y/sEOg1ePqhEjFmyPbEC6N8WXpxEOVUEK+YIASeMwFI
 n3yLIv387zUORbe/H/gqm++EgWIYERfxz/U1s+KXG9dNPXxs1/VgEgZ0l6EkgylQvo6N
 4OrA==
X-Gm-Message-State: APjAAAX8LgQ/gkfTNeE3NftBfEBjZgNOJAViVvS6fJbK0Ti01rFAdMAx
 sNhd5EapAG+cgvDMer/5G2RPdd1jigae9MUiZXRkCw==
X-Google-Smtp-Source: APXvYqys3QoXnQABINpJN0For4m7L6uG7ajsZKIGLu3Ym5MrKZDHkQYDNotxM7t1yjupurrNwmbVyPXRHdtIHhe1VJ8=
X-Received: by 2002:a1f:9f06:: with SMTP id i6mr28502502vke.52.1563882464630; 
 Tue, 23 Jul 2019 04:47:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <20190722153745.32446-7-lorenzo.pieralisi@arm.com>
In-Reply-To: <20190722153745.32446-7-lorenzo.pieralisi@arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 23 Jul 2019 13:47:08 +0200
Message-ID: <CAPDyKFrhggN_TDcB-Qdhe6booD1MzMJTe90D4DyRCKTq3cgU=g@mail.gmail.com>
Subject: Re: [PATCH 6/6] PSCI: cpuidle: Refactor CPU suspend power_state
 parameter handling
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_044746_190058_D8EEA927 
X-CRM114-Status: GOOD (  24.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 22 Jul 2019 at 17:38, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> Current PSCI code handles idle state entry through the
> psci_cpu_suspend_enter() API, that takes an idle state index as a
> parameter and convert the index into a previously initialized
> power_state parameter before calling the PSCI.CPU_SUSPEND() with it.
>
> This is unwieldly, since it forces the PSCI firmware layer to keep track
> of power_state parameter for every idle state so that the
> index->power_state conversion can be made in the PSCI firmware layer
> instead of the CPUidle driver implementations.
>
> Move the power_state handling out of drivers/firmware/psci
> into the respective ACPI/DT PSCI CPUidle backends and convert
> the psci_cpu_suspend_enter() API to get the power_state
> parameter as input, which makes it closer to its firmware
> interface PSCI.CPU_SUSPEND() API.
>
> A notable side effect is that the PSCI ACPI/DT CPUidle backends
> now can directly handle (and if needed update) power_state
> parameters before handing them over to the PSCI firmware
> interface to trigger PSCI.CPU_SUSPEND() calls.
>
> Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> ---
>  arch/arm64/kernel/cpuidle.c    |  47 +++++++++-
>  drivers/cpuidle/cpuidle-psci.c |  87 +++++++++++++++++-
>  drivers/firmware/psci/psci.c   | 158 ++-------------------------------
>  include/linux/cpuidle.h        |  17 +++-
>  include/linux/psci.h           |   4 +-
>  5 files changed, 153 insertions(+), 160 deletions(-)
>
> diff --git a/arch/arm64/kernel/cpuidle.c b/arch/arm64/kernel/cpuidle.c
> index 4bcd1bca0dfc..e4d6af2fdec7 100644
> --- a/arch/arm64/kernel/cpuidle.c
> +++ b/arch/arm64/kernel/cpuidle.c
> @@ -47,6 +47,44 @@ int arm_cpuidle_suspend(int index)
>
>  #define ARM64_LPI_IS_RETENTION_STATE(arch_flags) (!(arch_flags))
>
> +static int psci_acpi_cpu_init_idle(unsigned int cpu)
> +{
> +       int i, count;
> +       struct acpi_lpi_state *lpi;
> +       struct acpi_processor *pr = per_cpu(processors, cpu);
> +
> +       /*
> +        * If the PSCI cpu_suspend function hook has not been initialized
> +        * idle states must not be enabled, so bail out
> +        */
> +       if (!psci_ops.cpu_suspend)
> +               return -EOPNOTSUPP;
> +
> +       if (unlikely(!pr || !pr->flags.has_lpi))
> +               return -EINVAL;
> +
> +       count = pr->power.count - 1;
> +       if (count <= 0)
> +               return -ENODEV;
> +
> +       for (i = 0; i < count; i++) {
> +               u32 state;
> +
> +               lpi = &pr->power.lpi_states[i + 1];
> +               /*
> +                * Only bits[31:0] represent a PSCI power_state while
> +                * bits[63:32] must be 0x0 as per ARM ACPI FFH Specification
> +                */
> +               state = lpi->address;
> +               if (!psci_power_state_is_valid(state)) {
> +                       pr_warn("Invalid PSCI power state %#x\n", state);
> +                       return -EINVAL;
> +               }
> +       }
> +
> +       return 0;
> +}
> +
>  int acpi_processor_ffh_lpi_probe(unsigned int cpu)
>  {
>         return psci_acpi_cpu_init_idle(cpu);
> @@ -54,10 +92,13 @@ int acpi_processor_ffh_lpi_probe(unsigned int cpu)
>
>  int acpi_processor_ffh_lpi_enter(struct acpi_lpi_state *lpi)
>  {
> +       u32 state = lpi->address;
> +
>         if (ARM64_LPI_IS_RETENTION_STATE(lpi->arch_flags))
> -               return CPU_PM_CPU_IDLE_ENTER_RETENTION(psci_cpu_suspend_enter,
> -                                               lpi->index);
> +               return CPU_PM_CPU_IDLE_ENTER_RETENTION_PARAM(psci_cpu_suspend_enter,
> +                                               lpi->index, state);
>         else
> -               return CPU_PM_CPU_IDLE_ENTER(psci_cpu_suspend_enter, lpi->index);
> +               return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
> +                                            lpi->index, state);
>  }

I am not sure where the acpi+psci cpuidle code really belongs. Perhaps
some code should be moved into separate acpi+psci cpuidle driver?

In any case and whatever makes sense, it can be done on top of the
current series.

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
