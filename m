Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E1A56FBF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 19:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7K49faGNj1kUPJBnc7p9uSscXPodbnZ1ldZKswrZqIY=; b=rJKQTZmqs/L2iS
	Pg9JpwWsLekEt5jKMiYmxd93tTOO5t6eKjF1J9C6YFBEViL9QAQdrUvxSw6N2Yvq29n2lz5/QcwAt
	eVxZr0/y6d6QDstbls+o6u4/UEv8CQk/yzaHR2hFv+9g8PpA72BpyOLMGcGfMuNLq5Rw41vot6TJo
	ycriK5xtxOIm498qTCqIZu0TBO7QOwCH93Q+NYZXi+xlZJn3naMhazPNk5FW4SVQ+EwN/OpvPFtvj
	T4jksvCT2J2Q0RjoPqMmGO2bIIiK1MJQCiITtx/tgg8930DM+piAvaO0RwrbQE5iI1lADHq/bfrOU
	YOSU/VutN2D+LfvgtBzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgBw7-0000Iq-Ru; Wed, 26 Jun 2019 17:42:23 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgBvv-0000Hu-09
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 17:42:12 +0000
Received: by mail-io1-xd41.google.com with SMTP id h6so5252927ioh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 10:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZKsEzAEn+zTozZeyiV/e1LwfvFOgAuBk1MCTImiKLZA=;
 b=onBGOizxsfiCRd7+gXbaT4hAW6mqsDds5B4NbecGa5qCbrZwUlZKaUd8d9sc91lChN
 6p5GnD6ymeH10NabPIoVjBxJ2cieNgGYlB7B2r47VOuUCSzlgnGhfpMC12zEohslJRMy
 YGkCnl6tXZ+lCkt57UOzxqs04jbh4VNyBHxxAYH4lAI2Eg0ZKN2e5XExnBhMHhCqgrlm
 WjffAFmf1Yu2L9onBnMGPP8XZ1pzdMJebNqHY6nbp8CcAP04BXFe4GZpZiFbVTWdQdX8
 J136o+dqdFHN6P0Ge8G2KnzX/2vsduc71V5PcFarONPkW4LBJ+ECv0Z+8zmthoeVj4Sx
 2UFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZKsEzAEn+zTozZeyiV/e1LwfvFOgAuBk1MCTImiKLZA=;
 b=O9YwEB6dZdCy4GMBpUqCFd4h+8pMZxuHlS0uBudYaeIOjbdCK0Fc8Hmgm8qF/2VwMN
 tLPNpdNom+OXL8oU+L08c/rr0mUeoA9DOBZ4m+QNtj65dc+o5TvkzbpT8A4vNt/9hwf/
 eRGg/egKXFsegvHyNY3D2zQ+xRaLK5WBzwA9IdNWX5YJBhr72c13y9VgfJF1Y9bcYFO5
 9e7CroLGi8vvZ/kc+jW7c2lKAjkXGGy6yyD78mu5tyBSCzz3yLn335Q9GcifVKGM8VQh
 +P7p0Ty1lKzJXxCX506LWiKCGL29pdI7PcKKt3Pl5byhipwGgw32rVj+CTXu2yvL0xPq
 RCsw==
X-Gm-Message-State: APjAAAUkriAsLmZFkw8NCO1sO1cX8A4wOI0hCjjAHJGzroSoHTJ/mdoa
 2Sf7Zl7NMLu/yngWHXzWtj6h1vwx4mvB58nQLgwL9A==
X-Google-Smtp-Source: APXvYqzP67fOblQX+UL3RTr8NEKsVBKZNmmryeKDByfNumC6w51Z6JbSESfRJHVRXeUS4Dcqs0atYnirT3xgPzBD4GQ=
X-Received: by 2002:a5d:9613:: with SMTP id w19mr6438554iol.140.1561570929448; 
 Wed, 26 Jun 2019 10:42:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561346998.git.saiprakash.ranjan@codeaurora.org>
 <635466ab6a27781966bb083e93d2ca2729473ced.1561346998.git.saiprakash.ranjan@codeaurora.org>
In-Reply-To: <635466ab6a27781966bb083e93d2ca2729473ced.1561346998.git.saiprakash.ranjan@codeaurora.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 26 Jun 2019 11:41:58 -0600
Message-ID: <CANLsYky6D5EsCL2vOa4hHaqTQRXbN+TT0pSzFrykDL_fHEkiBQ@mail.gmail.com>
Subject: Re: [PATCHv3 1/1] coresight: Do not default to CPU0 for missing CPU
 phandle
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_104211_050882_916307D5 
X-CRM114-Status: GOOD (  24.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Brown <david.brown@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>, Andy Gross <andy.gross@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sai,

On Sun, 23 Jun 2019 at 21:36, Sai Prakash Ranjan
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
> ---
>  .../bindings/arm/coresight-cpu-debug.txt         |  4 ++--
>  .../devicetree/bindings/arm/coresight.txt        |  8 +++++---
>  .../hwtracing/coresight/coresight-cpu-debug.c    |  3 +++
>  drivers/hwtracing/coresight/coresight-etm3x.c    |  3 +++
>  drivers/hwtracing/coresight/coresight-etm4x.c    |  3 +++
>  drivers/hwtracing/coresight/coresight-platform.c | 16 ++++++++--------
>  6 files changed, 24 insertions(+), 13 deletions(-)
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
> index 3c5ceda8db24..4990da2c13e9 100644
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

Function of_coresight_get_cpu() needs to return -ENODEV rather than 0
when !CONFIG_OF

>
>  /*
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

Same as above, but for !CONFIG_ACPI

Thanks,
Mathieu

> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
