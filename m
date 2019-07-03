Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C555ED24
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 22:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8EJpL5x4Ejdvolpgb8J4+op7o7sx0Hru4azNtFlgSIk=; b=Gk0VGAh9qoRYW8
	yKbF1ESh0eqdIeoWlp5Pc+gmyASxujTa3Rj+rtUxjh8NOs4JpITtXm9USp/HGbIJLZ/L95rStbt1e
	jPUy+VCoIDak33lnNcxO05Vl7ilCHbk5ZMOjeK+cGedNRptr1+zb8LkUfDL5RXHsDXPkjZNh0/S1h
	CuNRAIloKw+qs3CRA34coe1D4qOi695LaXzXDA5LlyknbUmauoZycAohRnlHdrJcf9/V73eAJdxqr
	H6vn4YDfcbQXwqfceN6vBDX4/yrWiPYHW+GXsP6o3wa6X0rZMv5gfM1o7hjvhUARpGLfQRMGmwaQK
	zVoHBChpX0+NEWpK23nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hilUF-0002SU-AV; Wed, 03 Jul 2019 20:04:15 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hilU4-0002Rs-Vg
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 20:04:06 +0000
Received: by mail-io1-xd42.google.com with SMTP id s7so7796820iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 13:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=96QcmaBU6PQetN4ksZagHFgDlTk0cqr9dTtquxV84iw=;
 b=g+bATqC4dMpXhAFuOsNN2gNZ4K3Nz36JeiGgdDBBKZdqwTo3e4j2opQ1AEs9+PZ1ZT
 i9hIeDte0PobqWVSrr3goitBqPU7ubH4kL6+NhoY+Mg+rXXcMyjCxUs4y1iuoBd1pH5B
 nlcX26IbnTABvwBEZELAyl0SArRpB9T4/+U+W6h7zB8deaWuTJ5VC4WAgwzsLVIgP0B7
 qDJNTnwhQbHSPdFZDxRolwalIFAlj02zEA8hGEPyJY41v9u2u9k9zLYgIDRfcJN8UNbw
 fE7APf2Ec7lzfHQHHOpqfkPq+roCEBsrhm/LCS5bB9dToZrDdQZLm6pkb4J18wYz3a69
 x7fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=96QcmaBU6PQetN4ksZagHFgDlTk0cqr9dTtquxV84iw=;
 b=j93gM5SMKhe7rroVr4kHlft7yriH1akeVcqUV7ugxm5khAz4WbxJpQNC+wxFBNtyo2
 LKZ+YsiGoXyr8XYwLgBkpetUaxORLAjINhRk5Ds5XZSwgtoYs8sJw428WKvljrlq0KjY
 oE80XEad4fP9YaCjnm6iEmh8NszgIHreInyKOmh5SG076gv3uWAHFofHPtPx+OqZc1yF
 goKtvRn5ZCw4UXH5RrMO9nm+B5bCbvTqxYVaoc4dTq2zbfn/P/Nx6Dl/bm9nXBeQJ3XT
 NF8y/mNsOKYvi0YWGtjzjdCtQbWrrB/SeYnAcRIUfgXdOg7x5HmoiLj1uQGsqeSlgt49
 vmeQ==
X-Gm-Message-State: APjAAAW98YCJ+nOms2zPm5IjTZZgocebZfMS+OuPrWMsl5325YBidNEg
 2A1vMsJTt7mvmwT9TGUH+kLo8PfmLYPX8IcLYbCaRg==
X-Google-Smtp-Source: APXvYqzihMh2s3NouVarDqgmqNcCKCFot9tW5KqD3ZwRVkaij7ka5hN0usN2Fd4v9mOoDVEjow/waIPYzqwlAlQohUc=
X-Received: by 2002:a5e:c241:: with SMTP id w1mr7302789iop.58.1562184244059;
 Wed, 03 Jul 2019 13:04:04 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <1a6616f9f41b560963e86e24d533c5b2c3f05179.1561659046.git.saiprakash.ranjan@codeaurora.org>
In-Reply-To: <1a6616f9f41b560963e86e24d533c5b2c3f05179.1561659046.git.saiprakash.ranjan@codeaurora.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 3 Jul 2019 14:03:53 -0600
Message-ID: <CANLsYkxxEuLmmiabbyi9-f7U37g7OqHiUWzHHo5GYioEu+aR3g@mail.gmail.com>
Subject: Re: [PATCHv5 2/2] coresight: Do not default to CPU0 for missing CPU
 phandle
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_130405_018816_8FF72B38 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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

On Thu, 27 Jun 2019 at 12:16, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Coresight platform support assumes that a missing "cpu" phandle
> defaults to CPU0. This could be problematic and unnecessarily binds
> components to CPU0, where they may not be. In coresight etm and
> cpu-debug drivers, abort the probe for such cases.
>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Same with this one:

Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> ---
>  .../hwtracing/coresight/coresight-cpu-debug.c |  3 +++
>  drivers/hwtracing/coresight/coresight-etm3x.c |  3 +++
>  drivers/hwtracing/coresight/coresight-etm4x.c |  3 +++
>  .../hwtracing/coresight/coresight-platform.c  | 20 +++++++++----------
>  4 files changed, 19 insertions(+), 10 deletions(-)
>
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
>
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
