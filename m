Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B70D21EA515
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 15:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5a9u/PBs2/qvThk5JzzxxwLEleTLBYxk8WcxF0NU5Hk=; b=ROYuEzIoaFTGoY
	pd9uhlRf70J0g/rjoUZT675uMWAq5wrisRDsHUGhWqoK2HoJnASwR24A21GdwwClQOBcm8dsJo11s
	hTphCOCee6HlEe5nhS5pT1lhg799KpesN/fld+Wtfh0/+/VNJBZH060NJbHV7eql2kYQMsu551gCP
	Ij06pl3ISAb1krhKnPFS6wALVIkA5lXoB/1tl0too2LMbiPJVZuzvxf82iO6UFa0aK3d4sXz+QiiO
	Tu4MqRE00vmRe3MomgFR27vYzNMHg2OTfpaxf4Wlb2QJ9R5mNZkvi5dU6VjtaBobGwfIUazFWpn4c
	flCWOiVALkL7JlwlRR4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfkbg-0005Yy-6D; Mon, 01 Jun 2020 13:36:00 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfkbX-0005Xq-UC
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 13:35:53 +0000
Received: by mail-ej1-x643.google.com with SMTP id y13so9239865eju.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 06:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4ogBD788sO7PXIvbKDdkf5UaxzA6PdTnNLJCyLo4Unw=;
 b=cpxeSmw+TKgz5ekToV2e2NrqfhrTVxweE4Lb9avE/k7fngAV7Aou2Lzwa4NnciRi0X
 8GYyYP0jy75m998wmGumju2ImFM2cEuV8/YrQEA+eb/oMpAwXESrpNTzQlIrB917RYGT
 Sj13uJL3DE6Fy+iXCbu75k8uOBv9hMUmnVIRwuEM9ylLogvM8EIQJAjxayttoPo2q9fA
 1laUMVDPWTQgaIil3zDdJwbEAZag7RLqrqm594f46jd9xqWYvT+lSAwrM6ijFto0AwS8
 mlMpfxhrp1ZkbpPfqGJ6gTssdzwSvDisu+G/YNveliOcuMYZHLxtAOUwoj+yXlnICrTS
 AYUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4ogBD788sO7PXIvbKDdkf5UaxzA6PdTnNLJCyLo4Unw=;
 b=KL9tTN1VFPXo46FFRw24I+TIjyHdIcAUkBK9oJ0l2BiUiDkvk4u2rEJaTrWAZFwq9p
 CP2U/e4q2c1fz7H8RZvV1cowpGQFtaqG+ZGBdLQo/ADl57kH2LqY6teiEBwzWnwoAp99
 dyB3haMOIordYT2IWfnID41wpMRr4ReL7whKp8cSiizyPZQHTaQTzXezn6fb11UUSw/n
 DK7tBDxS+/o/7cgYbHZGr2H+Q/pGyiO9nnd0AaBq1vpJc0zMI01hiSJpipeM46Apttz3
 Y5zm8L87t5DA9ZInB5poelUBVrZgRGKjC4u5nvzfQqKa1N6o6KgN2xOqB79DvxzKxrQ3
 bxIg==
X-Gm-Message-State: AOAM531nj3JBXeM+r3ivbYeR/WTQrsLM8MlFPpP2ALySgdc5nvRc3DYZ
 B9REk7jc4Q95X9DVSuXeNTjouLulMgCIKZN1KiK27A==
X-Google-Smtp-Source: ABdhPJx3KgSuOzGQ7ksbxukLUvEy6AWgfcT6Iivkp+bKnjl7KBwaSasw0hwhYNOWhoomEqA8Lld0Spfx1yDdQx0D80Y=
X-Received: by 2002:a17:906:3603:: with SMTP id
 q3mr9251366ejb.477.1591018548300; 
 Mon, 01 Jun 2020 06:35:48 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
In-Reply-To: <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Mon, 1 Jun 2020 14:35:37 +0100
Message-ID: <CAJ9a7VgxDru8P_RXE2ewGkSA2mfCNvOp+hMuNLB4AszXBOUp1g@mail.gmail.com>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_063551_978248_E3BCA9A4 
X-CRM114-Status: GOOD (  22.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, 1 Jun 2020 at 09:02, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Implement a shutdown callback to ensure ETR/ETF hardware is
> properly shutdown in reboot/shutdown path. This is required
> for ETR/ETF which has SMMU address translation enabled like
> on SC7180 SoC and few others. If the hardware is still accessing
> memory after SMMU translation is disabled as part of SMMU
> shutdown callback in system reboot or shutdown path, then
> IOVAs(I/O virtual address) which it was using will go on the bus
> as the physical addresses which might result in unknown crashes
> (NoC/interconnect errors). So we make sure from this shutdown
> callback that the ETR/ETF is shutdown before SMMU translation is
> disabled and device_link in SMMU driver will take care of ordering
> of shutdown callbacks such that SMMU shutdown callback is not
> called before any of its consumer shutdown callbacks.
>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  .../hwtracing/coresight/coresight-tmc-etf.c   |  4 +--
>  .../hwtracing/coresight/coresight-tmc-etr.c   |  2 +-
>  drivers/hwtracing/coresight/coresight-tmc.c   | 29 +++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-tmc.h   |  3 ++
>  4 files changed, 35 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> index 36cce2bfb744..cba3e7592820 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> @@ -85,7 +85,7 @@ static void __tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
>         CS_LOCK(drvdata->base);
>  }
>
> -static void tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
> +void tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
>  {
>         __tmc_etb_disable_hw(drvdata);
>         coresight_disclaim_device(drvdata->base);
> @@ -118,7 +118,7 @@ static int tmc_etf_enable_hw(struct tmc_drvdata *drvdata)
>         return 0;
>  }
>
> -static void tmc_etf_disable_hw(struct tmc_drvdata *drvdata)
> +void tmc_etf_disable_hw(struct tmc_drvdata *drvdata)
>  {
>         CS_UNLOCK(drvdata->base);
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 625882bc8b08..b29c2db94d96 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -1110,7 +1110,7 @@ static void __tmc_etr_disable_hw(struct tmc_drvdata *drvdata)
>
>  }
>
> -static void tmc_etr_disable_hw(struct tmc_drvdata *drvdata)
> +void tmc_etr_disable_hw(struct tmc_drvdata *drvdata)
>  {
>         __tmc_etr_disable_hw(drvdata);
>         /* Disable CATU device if this ETR is connected to one */
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
> index 5a271ebc4585..7e687a356fe0 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc.c
> @@ -540,6 +540,34 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
>         return ret;
>  }
>
> +static void tmc_shutdown(struct amba_device *adev)
> +{
> +       struct tmc_drvdata *drvdata = amba_get_drvdata(adev);
> +

Take drvdata->spinlock here? The tmc_xxx_disable_hw functions are
normally called with the spinlock claimed.

> +       if (!drvdata->enable)

As per previous patch drvdata->mode can be used here.

Regards

Mike

> +               goto out;
> +
> +       /*
> +        * We do not care about the active trace sessions here
> +        * since the system is going down unlike remove callback,
> +        * just make sure that the hardware is shutdown.
> +        */
> +       switch (drvdata->config_type) {
> +       case TMC_CONFIG_TYPE_ETB:
> +               tmc_etb_disable_hw(drvdata);
> +               break;
> +       case TMC_CONFIG_TYPE_ETF:
> +               tmc_etf_disable_hw(drvdata);
> +               break;
> +       case TMC_CONFIG_TYPE_ETR:
> +               tmc_etr_disable_hw(drvdata);
> +       }
> +
> +out:
> +       misc_deregister(&drvdata->miscdev);
> +       coresight_unregister(drvdata->csdev);
> +}
> +
>  static const struct amba_id tmc_ids[] = {
>         CS_AMBA_ID(0x000bb961),
>         /* Coresight SoC 600 TMC-ETR/ETS */
> @@ -558,6 +586,7 @@ static struct amba_driver tmc_driver = {
>                 .suppress_bind_attrs = true,
>         },
>         .probe          = tmc_probe,
> +       .shutdown       = tmc_shutdown,
>         .id_table       = tmc_ids,
>  };
>  builtin_amba_driver(tmc_driver);
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
> index d156860495c7..f4f56c474e58 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.h
> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
> @@ -262,6 +262,8 @@ u32 tmc_get_memwidth_mask(struct tmc_drvdata *drvdata);
>  /* ETB/ETF functions */
>  int tmc_read_prepare_etb(struct tmc_drvdata *drvdata);
>  int tmc_read_unprepare_etb(struct tmc_drvdata *drvdata);
> +void tmc_etb_disable_hw(struct tmc_drvdata *drvdata);
> +void tmc_etf_disable_hw(struct tmc_drvdata *drvdata);
>  extern const struct coresight_ops tmc_etb_cs_ops;
>  extern const struct coresight_ops tmc_etf_cs_ops;
>
> @@ -270,6 +272,7 @@ ssize_t tmc_etb_get_sysfs_trace(struct tmc_drvdata *drvdata,
>  /* ETR functions */
>  int tmc_read_prepare_etr(struct tmc_drvdata *drvdata);
>  int tmc_read_unprepare_etr(struct tmc_drvdata *drvdata);
> +void tmc_etr_disable_hw(struct tmc_drvdata *drvdata);
>  extern const struct coresight_ops tmc_etr_cs_ops;
>  ssize_t tmc_etr_get_sysfs_trace(struct tmc_drvdata *drvdata,
>                                 loff_t pos, size_t len, char **bufpp);
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
