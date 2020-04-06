Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A186319F3E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 12:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BQ4i6lqCXgwrULrgzRrg7NUZUy00Q1QlcfEl1sNBnQ=; b=TYmsjxZyagBzs8
	RemqmmsG/vlZpAeO2YNwVgKxcOMMI7Gtt4JAEydt6gtv4t2U++a5LXC26Dva2+gQp9L97geZBr4HY
	EOdbWwJMK6PYeX0rl6Fvf9bzAtF5Nik7TOBIOCjSdZZM3Mgwu1BJHORgAR8KfA3S5eQTA8OEPSgU6
	5kIgVWoxBYOlM0Eg1pSD2hAI9RmoSeawF4G/p8XpuqJrdn2R8o1XydWppKYP0ZeI72lRG/BSaxqjC
	h5P9H9mYCRcyxArBydAG6dVqTcp/3JjZw6UGh7bxhHxCHoBCYVNohL/3K/1qe8tW8hL2ol6FsIfh5
	QKRNA7+9SzpZA1c+CiPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLPPq-0001QY-Bo; Mon, 06 Apr 2020 10:55:42 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLPPi-0001Pn-FI
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 10:55:36 +0000
Received: by mail-qk1-x744.google.com with SMTP id 13so3360518qko.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 03:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+wdEtajVoyLqgAvqGqYNiCNXOxg9qyO5Ddu4EUSO/4c=;
 b=CBPXCgQUCkx4unuFWcuwTweKM3yOZzDcvOXw5OWfMxMcyJpW4DYoNd9TM+OMHULyRa
 iLVgasY9iJoEM+qDkmLrYSgyy5LuXUOmnw/LYFuJxKk/wTfE9Dr99l/dUAs7rZSwyopY
 thQPyAx1RGipfvma4oEtCh3A+iPAbxYA62+RMqKeNXUoHu0LcgLOonZtfib5D4a0JoHn
 fYj43xC1kD/ZnlwkNdSbvrAve3qTzU/XidkGvoXVWZkcGm5SpWN/fk+ixNaJijIFMeCg
 lxbECGe2SyDOqjf7zsZC2R7xYtJFBZVyeLFJg9h5CoDntumGdea6xJlwC8i+hgkg/twz
 sB2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+wdEtajVoyLqgAvqGqYNiCNXOxg9qyO5Ddu4EUSO/4c=;
 b=Bs1JKi1M3V0Qc5SzkPwCrCqiDm54cVeiTQ2zEFx7J/Uo4yO0F3XxAWH2a6jyB6Y8Yf
 89+MzVXXHAPVMUrOjt5Wvs9tm5S00USPrPNKyLrC2iTo9icc3P8R9TatCjmHFh2yW+sF
 KblSdFIZe+XCkJ2vFnWqnpemPhrA48PWEoILnWqMEJ7et8rtTrX33Ff1cuL8J0anjO1J
 H883T4YMTX8nTnywLN/2GMc/7cevwXGqbYzC5t88PhTyeTixMlbr4vjvHYSRLXjSHJE+
 GT2fihHYS7N2zpGd4b7/XIN8GX5bCa6XJaeVPDbFXqREIflQmj5PkWGaY38zhxVZ6Nro
 5RZA==
X-Gm-Message-State: AGi0PuYGdgRvLcwmWI/qIFqhHFdW6M5jAgqWvpjXb1cBfJRP4LM2tlOo
 sZyr2Mxf/uCuF9NvsCCCcKc4wwhg4gIfbusk3FsB2Z+RqjV7pw==
X-Google-Smtp-Source: APiQypIYaZCTcQvxndKYkKUeNWKytaqjjq7JBOSystgiXQFPuY/nWdK+EIURYPa5E2CAjQ8kOoNcEAowYWqqUSC48NQ=
X-Received: by 2002:a37:9c8b:: with SMTP id
 f133mr21160222qke.482.1586170531983; 
 Mon, 06 Apr 2020 03:55:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200405102819.28460-1-saiprakash.ranjan@codeaurora.org>
In-Reply-To: <20200405102819.28460-1-saiprakash.ranjan@codeaurora.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Mon, 6 Apr 2020 11:55:21 +0100
Message-ID: <CAJ9a7VgQzK1XSCvLwuqODwkWfvo=6Wwps7Db+pL5xYDeCuktrg@mail.gmail.com>
Subject: Re: [RFC PATCH] coresight: dynamic-replicator: Fix handling of
 multiple connections
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_035535_029959_7303AD5C 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

The programmable replicator hardware by design enables trace through
both ports on reset. (see 1, section 4.4, 9.11)  The replicator driver
overrides this functionality to disable output, until the Coresight
infrastructure chooses a path from source to sink.
Now given that the hardware design is such that we must be able to
allow trace to be sent to both ports, a generic patch to prevent this
does not seem appropriate here.

I think this needs further investigation - to determine why this
appears to be failing in this particular instance.

Regards

Mike

[1] CoreSight System-on-Chip SoC-600 TRM, r3p2, 100806_0302_00_en

On Sun, 5 Apr 2020 at 11:28, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Since commit 30af4fb619e5 ("coresight: dynamic-replicator:
> Handle multiple connections"), we do not make sure that
> the other port is disabled when the dynamic replicator is
> enabled. This is seen to cause the CPU hardlockup atleast
> on SC7180 SoC when enabling ETM with ETR as the sink via
> sysfs.
>
>   Kernel panic - not syncing: Watchdog detected hard LOCKUP on cpu 0
>   CPU: 7 PID: 0 Comm: swapper/7 Tainted: G S  B             5.4.25 #100
>   Hardware name: Qualcomm Technologies, Inc. SC7180 IDP (DT)
>   Call trace:
>    dump_backtrace+0x0/0x188
>    show_stack+0x20/0x2c
>    dump_stack+0xdc/0x144
>    panic+0x168/0x370
>    arch_seccomp_spec_mitigate+0x0/0x14
>    watchdog_timer_fn+0x68/0x290
>    __hrtimer_run_queues+0x264/0x498
>    hrtimer_interrupt+0xf0/0x22c
>    arch_timer_handler_phys+0x40/0x50
>    handle_percpu_devid_irq+0x8c/0x158
>    __handle_domain_irq+0x84/0xc4
>    gic_handle_irq+0x100/0x1c4
>    el1_irq+0xbc/0x180
>    arch_cpu_idle+0x3c/0x5c
>    default_idle_call+0x1c/0x38
>    do_idle+0x100/0x280
>    cpu_startup_entry+0x24/0x28
>    secondary_start_kernel+0x15c/0x170
>   SMP: stopping secondary CPUs
>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  .../hwtracing/coresight/coresight-replicator.c    | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
> index e7dc1c31d20d..f4eaa38f8f43 100644
> --- a/drivers/hwtracing/coresight/coresight-replicator.c
> +++ b/drivers/hwtracing/coresight/coresight-replicator.c
> @@ -66,14 +66,16 @@ static int dynamic_replicator_enable(struct replicator_drvdata *drvdata,
>                                      int inport, int outport)
>  {
>         int rc = 0;
> -       u32 reg;
> +       u32 reg0, reg1;
>
>         switch (outport) {
>         case 0:
> -               reg = REPLICATOR_IDFILTER0;
> +               reg0 = REPLICATOR_IDFILTER0;
> +               reg1 = REPLICATOR_IDFILTER1;
>                 break;
>         case 1:
> -               reg = REPLICATOR_IDFILTER1;
> +               reg0 = REPLICATOR_IDFILTER1;
> +               reg1 = REPLICATOR_IDFILTER0;
>                 break;
>         default:
>                 WARN_ON(1);
> @@ -87,8 +89,11 @@ static int dynamic_replicator_enable(struct replicator_drvdata *drvdata,
>                 rc = coresight_claim_device_unlocked(drvdata->base);
>
>         /* Ensure that the outport is enabled. */
> -       if (!rc)
> -               writel_relaxed(0x00, drvdata->base + reg);
> +       if (!rc) {
> +               writel_relaxed(0x00, drvdata->base + reg0);
> +               writel_relaxed(0xff, drvdata->base + reg1);
> +       }
> +
>         CS_LOCK(drvdata->base);
>
>         return rc;
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
