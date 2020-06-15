Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B501F9547
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 13:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LbYh59djMQ/0iVnZZYPxGwwMXOVMMH1O5avaKar6gDc=; b=NvaMgoBq7Aa3JB
	ZqZ5KcaNORcl1TnPg5T3cVDT8Ublqz/FmAy12wZs2yOxZAMp0aD9/h6b0mJCU8hKQcSZJxlHQkrxa
	qBTL/OEj5fnyMs/AnghzyjjHuhLJQ9y2+LovzDiQv7hPL+0SkMLezNs+S1l3Zv5ewpfJQc02VgT7B
	QDa1Llix5CGT/2kFMeIYQTiiJnJp5mIXyrSp0Dix1awZW7htmgZfP81Jx9wYQso7St+vh6H/DDbko
	IUhjyZr3HMQ7S6dXXvhX25NIdLwH3XfV7BrtwHPsbVNCqJhw2pjoBtN3jNSp9gEM3Dpm63s+DeqA7
	ymAUJqVxYlGCFBkJUh0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jknFL-0001IT-At; Mon, 15 Jun 2020 11:25:47 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jknFC-0001Hb-FF
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 11:25:40 +0000
Received: by mail-ua1-x944.google.com with SMTP id v6so5521914uam.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 04:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vrKmkhg+c1u0kB4U6Q0PfBV1XmTvqqdQ8hWTNkN5v2k=;
 b=XIIEk3jhhCjnXxJTApUX1KsztsSHxmkhzNIzJiVbqEHf7zAn0F9ATFYCTcxehIn7Db
 PSo6AK16Dk/Mq2bHaFCNXJPKhXFfIyKWlZ64UGJVCrZI5POsNEiNmiXtK4/nrUoQyxE7
 QHFnkyTx7Mf1Cjrktsn7BMYv521Nzaa/sKvQWydv/s1Sx4G5vEEGEzjGrqvH0ubiDc45
 oBYNVXzgJF6M5MhYQLfXHAaZnaB+ow+dxNe5MRjqhZkkny1Gytj8LuYB8sxhWldVtsrz
 jrDMHgw3N8/IG4Ozcd3vnUA3fApwh05lTSBFjbz5aKHtOvycqlLUQb87pFCTW7Ocp/gA
 +uhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vrKmkhg+c1u0kB4U6Q0PfBV1XmTvqqdQ8hWTNkN5v2k=;
 b=GU9+3WMgHw7+piwj3efyFl27q1EKxe1aKvVYpj2/QlQ9R6TdyvoXDL6WJiZr2vRZRH
 ZIAwJ7BXNsyHAp3QRTX9yspawF4sxQ9F6mS43xsg8wMEFSURUkLrPRdncRvfHB+ApUsu
 VlPazmzn8a9u8dx5ZD+FeeMZwzCzW0HqfVjsYFNB0zjpsQwUEq2XA9k4C5LE29+pu68p
 IrsBo5QR2gsMEbkI8DaV9x1awaNRxr2f2OtxEZoP2asMwBtHluPljvReldLYiZTaDCCq
 9Iljdm7zlWVGsWLEwZ1ZbuIWJVmVU71WMjU1h6Sbf2fPlrYhTgJM4solgTUEZoXnIL4P
 1Y2g==
X-Gm-Message-State: AOAM5311jRL14Yorn18GidsyVhA4Y6iZHs/HlH6ZcqG4BM7zbo3qtgGe
 qRGrzCnhpF6II/htQNKE+tYwe1RWpMpdk7tDgLvVjQ==
X-Google-Smtp-Source: ABdhPJzqNGqsG+5owbRVG/KlqJGvlwwJKZq02aq94CP4ikq3550XKb+IM6Rhtt+J/C/aq6FLjSiLs0/JETpwhEPnOTc=
X-Received: by 2002:a9f:22e1:: with SMTP id 88mr18170672uan.19.1592220336997; 
 Mon, 15 Jun 2020 04:25:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200429103644.5492-1-daniel.lezcano@linaro.org>
 <20200429103644.5492-4-daniel.lezcano@linaro.org>
In-Reply-To: <20200429103644.5492-4-daniel.lezcano@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 15 Jun 2020 13:25:00 +0200
Message-ID: <CAPDyKFrdzcf5e98EM0VvwxnR0zDFQ851PDLOZ9wpe-LO6n4Abw@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] thermal: cpuidle: Register cpuidle cooling device
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_042538_956957_489213F2 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:CPU IDLE TIME MANAGEMENT FRAMEWORK" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:CPUIDLE DRIVER - ARM PSCI" <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Zhang Rui <rui.zhang@intel.com>,
 lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 at 12:37, Daniel Lezcano <daniel.lezcano@linaro.org> wrote:
>
> The cpuidle driver can be used as a cooling device by injecting idle
> cycles. The DT binding for the idle state added an optional
>
> When the property is set, register the cpuidle driver with the idle
> state node pointer as a cooling device. The thermal framework will do
> the association automatically with the thermal zone via the
> cooling-device defined in the device tree cooling-maps section.
>
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>  - V4:
>    - Do not check the return value as the function does no longer return one
> ---
>  drivers/cpuidle/cpuidle-arm.c  | 3 +++
>  drivers/cpuidle/cpuidle-psci.c | 3 +++
>  2 files changed, 6 insertions(+)
>
> diff --git a/drivers/cpuidle/cpuidle-arm.c b/drivers/cpuidle/cpuidle-arm.c
> index 9e5156d39627..8c758920d699 100644
> --- a/drivers/cpuidle/cpuidle-arm.c
> +++ b/drivers/cpuidle/cpuidle-arm.c
> @@ -8,6 +8,7 @@
>
>  #define pr_fmt(fmt) "CPUidle arm: " fmt
>
> +#include <linux/cpu_cooling.h>
>  #include <linux/cpuidle.h>
>  #include <linux/cpumask.h>
>  #include <linux/cpu_pm.h>
> @@ -124,6 +125,8 @@ static int __init arm_idle_init_cpu(int cpu)
>         if (ret)
>                 goto out_kfree_drv;
>
> +       cpuidle_cooling_register(drv);
> +
>         return 0;
>
>  out_kfree_drv:
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index bae9140a65a5..1f38e0dfc9b2 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -9,6 +9,7 @@
>  #define pr_fmt(fmt) "CPUidle PSCI: " fmt
>
>  #include <linux/cpuhotplug.h>
> +#include <linux/cpu_cooling.h>
>  #include <linux/cpuidle.h>
>  #include <linux/cpumask.h>
>  #include <linux/cpu_pm.h>
> @@ -313,6 +314,8 @@ static int __init psci_idle_init_cpu(int cpu)
>         if (ret)
>                 goto out_kfree_drv;
>
> +       cpuidle_cooling_register(drv);
> +

Apologies for the late reply, but just noticed this change in v5.8-rc1.

Don't you need a cpuidle_cooling_unregister function? For example,
cpuidle-psci may fail and then calls cpuidle_unregister() to cleans up
things.

Is that okay?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
