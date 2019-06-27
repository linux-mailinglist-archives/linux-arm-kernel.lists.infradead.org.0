Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E710658841
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 19:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zP3iaqGXbQ4gyy312zBDIlaFP1RnRtDFAqNGZVdX49s=; b=suEeZ5HFv1DteY
	No0owQbisy4N/oBWkElNVQrngyWp1L3N4IQnOXdkxDJAYSdFRdz6yoolXV1tp0s6vuaQi1WlNhnbG
	oPzRjRmQvQZhN0TJBmxoAWYTbhc56FZrzFyudVXEFTB8yhH+p3aXpDuhYNA3a02Kvwt+RuKo1Ul2z
	oZOphL1bh4P+/kRqnYOqwiYzuRVrFxhMF7FYC0XOQDayUEcQSR3KCa2189W76szQDCWbjkgXWk22j
	pRmUWkUXntCQ3knklu00GewX4KGWt8jabW5/gfc0DQbjl5t+3ZjhuLaZM3Al0f4ACohwHu+k6QuxX
	iWBItTBkg6ifWadz5P6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgY8i-0004r0-Ed; Thu, 27 Jun 2019 17:24:52 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgY8S-0004pt-Ux
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 17:24:38 +0000
Received: by mail-io1-xd44.google.com with SMTP id m24so6546223ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 10:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9v2iiSjAaTJ1r5YqmO0hmrqnNhRTBGFMcqsHyGmeaMY=;
 b=Vmpr/oTq5Ou+Qb2MRPKwRXdiQDbkSbkhoOl3ccrHWFmGHq8kkuCrfwi92Ftt4pHJow
 FCqjS3lMZa2p+MobvExHsUsC9fhzyBdrlBWh+C2Jl5i+hyr8Baja8UkS0sKliDf3TI0R
 T20YpBu1jySkURCkZH9w6j68A6c3mDC+gTbl0OGiVQcrYP6xjcu9vJMJtcQiK2Aiw94n
 IxRvf1Waw4SpWqYJVfh/qP/1dfT8ZtTc2eLih1yiBUCI7LMvbHMSqGNPeBq1+G5gGLlf
 uuz7AtcxHVb6TG3a2Rkm7ptxZXhTqQzGaeV9LRp4yp6DWmAU99phX3/SPG+JBLpyQ9ab
 AiGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9v2iiSjAaTJ1r5YqmO0hmrqnNhRTBGFMcqsHyGmeaMY=;
 b=M0f7m9NpqJBUKhFuNPhH5p66NKLxvbK47X3h1Y0e2Q3Ee5ShexNw0nA8H2kC4Sy6HW
 HYjU9wqBcRUE5BQatXQ5mwwlCoxQqrq9aki4yxzAzK1k1X1uHXKA4IuZ3HKDcKI71+Dr
 rzgIBU+zuW5Kl7tT0k/XfPuMUWlIHKHMMDuA/XMmJG4gjq3iUgT0egIGlINw+paGh8L3
 KgX5cWrg1LYcZn+f65STDQ7qiohuat93HIwLLlV1sfUsobMhjS//V2SxyZnyS45Bk4Mh
 DH0cK8t+r26UPCw5OuxGkpM6BqMaG6iv4mcXYpy6JtyxsUeP78b0Pn083tpvUuV1Waxs
 T1tQ==
X-Gm-Message-State: APjAAAVZRDsjv5GuB510NAwkR+Iltab82mdItlVLHI5uyl0lKJcVUc3e
 9jCZi/J+Af3fxEB2SVzV9nlj/YaV5Ok/f39d8DCWXw==
X-Google-Smtp-Source: APXvYqzjIWF22i4IBu+1m0dwUXHWtEuQtdZqPiwFgZbGnjhUXcnbRP1Dh2mIxgqOkvKN2pfkKScecafBVSjGUfmbpWo=
X-Received: by 2002:a6b:2c96:: with SMTP id s144mr5811605ios.57.1561656273509; 
 Thu, 27 Jun 2019 10:24:33 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561610498.git.saiprakash.ranjan@codeaurora.org>
 <0a20cf9eb34b14a191381af98af1694bbc222734.1561610498.git.saiprakash.ranjan@codeaurora.org>
In-Reply-To: <0a20cf9eb34b14a191381af98af1694bbc222734.1561610498.git.saiprakash.ranjan@codeaurora.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 27 Jun 2019 11:24:22 -0600
Message-ID: <CANLsYkyaeroow1dRaffy5pxSCH7ocb9=EMeZeSjgpjDWXu18vg@mail.gmail.com>
Subject: Re: [RESEND PATCHv4 1/1] coresight: Do not default to CPU0 for
 missing CPU phandle
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_102437_014251_8D7C23F4 
X-CRM114-Status: GOOD (  26.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Brown <david.brown@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019 at 22:45, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Coresight platform support assumes that a missing "cpu" phandle
> defaults to CPU0. This could be problematic and unnecessarily binds
> components to CPU0, where they may not be. Let us make the DT binding
> rules a bit stricter by not defaulting to CPU0 for missing "cpu"
> affinity information.
>
> Also in coresight etm and cpu-debug drivers, abort the probe
> for such cases.
>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  .../bindings/arm/coresight-cpu-debug.txt      |  4 ++--
>  .../devicetree/bindings/arm/coresight.txt     |  8 +++++---
>  .../hwtracing/coresight/coresight-cpu-debug.c |  3 +++
>  drivers/hwtracing/coresight/coresight-etm3x.c |  3 +++
>  drivers/hwtracing/coresight/coresight-etm4x.c |  3 +++
>  .../hwtracing/coresight/coresight-platform.c  | 20 +++++++++----------
>  6 files changed, 26 insertions(+), 15 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt b/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
> index 298291211ea4..f1de3247c1b7 100644
> --- a/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
> @@ -26,8 +26,8 @@ Required properties:
>                 processor core is clocked by the internal CPU clock, so it
>                 is enabled with CPU clock by default.
>
> -- cpu : the CPU phandle the debug module is affined to. When omitted
> -       the module is considered to belong to CPU0.
> +- cpu : the CPU phandle the debug module is affined to. Do not assume it
> +        to default to CPU0 if omitted.
>
>  Optional properties:
>
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index 8a88ddebc1a2..fcc3bacfd8bc 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -59,6 +59,11 @@ its hardware characteristcs.
>
>         * port or ports: see "Graph bindings for Coresight" below.
>
> +* Additional required property for Embedded Trace Macrocell (version 3.x and
> +  version 4.x):
> +       * cpu: the cpu phandle this ETM/PTM is affined to. Do not
> +         assume it to default to CPU0 if omitted.
> +
>  * Additional required properties for System Trace Macrocells (STM):
>         * reg: along with the physical base address and length of the register
>           set as described above, another entry is required to describe the
> @@ -87,9 +92,6 @@ its hardware characteristcs.
>         * arm,cp14: must be present if the system accesses ETM/PTM management
>           registers via co-processor 14.
>
> -       * cpu: the cpu phandle this ETM/PTM is affined to. When omitted the
> -         source is considered to belong to CPU0.
> -
>  * Optional property for TMC:
>
>         * arm,buffer-size: size of contiguous buffer space for TMC ETR
> diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> index 07a1367c733f..58bfd6319f65 100644
> --- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
> +++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> @@ -579,6 +579,9 @@ static int debug_probe(struct amba_device *adev, const struct amba_id *id)
>                 return -ENOMEM;
>
>         drvdata->cpu = coresight_get_cpu(dev);
> +       if (drvdata->cpu < 0)
> +               return drvdata->cpu;
> +
>         if (per_cpu(debug_drvdata, drvdata->cpu)) {
>                 dev_err(dev, "CPU%d drvdata has already been initialized\n",
>                         drvdata->cpu);
> diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
> index 225c2982e4fe..e2cb6873c3f2 100644
> --- a/drivers/hwtracing/coresight/coresight-etm3x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm3x.c
> @@ -816,6 +816,9 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
>         }
>
>         drvdata->cpu = coresight_get_cpu(dev);
> +       if (drvdata->cpu < 0)
> +               return drvdata->cpu;
> +
>         desc.name  = devm_kasprintf(dev, GFP_KERNEL, "etm%d", drvdata->cpu);
>         if (!desc.name)
>                 return -ENOMEM;
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index 7fe266194ab5..7bcac8896fc1 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -1101,6 +1101,9 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
>         spin_lock_init(&drvdata->spinlock);
>
>         drvdata->cpu = coresight_get_cpu(dev);
> +       if (drvdata->cpu < 0)
> +               return drvdata->cpu;
> +
>         desc.name = devm_kasprintf(dev, GFP_KERNEL, "etm%d", drvdata->cpu);
>         if (!desc.name)
>                 return -ENOMEM;
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 3c5ceda8db24..cf580ffbc27c 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -159,16 +159,16 @@ static int of_coresight_get_cpu(struct device *dev)
>         struct device_node *dn;
>
>         if (!dev->of_node)
> -               return 0;
> +               return -ENODEV;
> +
>         dn = of_parse_phandle(dev->of_node, "cpu", 0);
> -       /* Affinity defaults to CPU0 */
>         if (!dn)
> -               return 0;
> +               return -ENODEV;
> +
>         cpu = of_cpu_node_to_id(dn);
>         of_node_put(dn);
>
> -       /* Affinity to CPU0 if no cpu nodes are found */
> -       return (cpu < 0) ? 0 : cpu;
> +       return cpu;
>  }
>
>  /*
> @@ -310,7 +310,7 @@ of_get_coresight_platform_data(struct device *dev,
>
>  static inline int of_coresight_get_cpu(struct device *dev)
>  {
> -       return 0;
> +       return -ENODEV;
>  }
>  #endif
>
> @@ -734,14 +734,14 @@ static int acpi_coresight_get_cpu(struct device *dev)
>         struct acpi_device *adev = ACPI_COMPANION(dev);
>
>         if (!adev)
> -               return 0;
> +               return -ENODEV;
>         status = acpi_get_parent(adev->handle, &cpu_handle);
>         if (ACPI_FAILURE(status))
> -               return 0;
> +               return -ENODEV;
>
>         cpu = acpi_handle_to_logical_cpuid(cpu_handle);
>         if (cpu >= nr_cpu_ids)
> -               return 0;
> +               return -ENODEV;
>         return cpu;
>  }
>
> @@ -769,7 +769,7 @@ acpi_get_coresight_platform_data(struct device *dev,
>
>  static inline int acpi_coresight_get_cpu(struct device *dev)
>  {
> -       return 0;
> +       return -ENODEV;
>  }
>  #endif

Thank you for adding this.

I want to apply your code to my tree but it isn't easy for me to do
so.  Did you notice the checkpatch.pl warning about the DT bindings
being in a separate patch?  In this case it is not a new binding but
following the process gives the DT maintainers the opportunity to at
least look at your patch.  Because the changes are trivial they may
decide to ignore it but that choice it theirs to make.

Regards,
Mathieu

>
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
