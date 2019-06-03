Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B069F32D8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 12:08:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ti+B97EG7AsvCCRqXWihxydovlRyLSv7JzzvOFTnCM=; b=WmLMOAhXkFF2U4
	Amqt96rQjllZJ07f6eTEi/nsKBGbP8FCLvgut5Fgqgh1s3dtre9vCWroQ3164o9Dz7wXMZl2AWkXy
	jw7W7xvvLciwsyQtTskcdJ+6cbkA9UAaq86eUgXPEr4dgt8/17AXhXdpIzCtcew+/DjBmo29P6DzC
	n7X5o3c2tEAnpTk+vazzBMysniDpxfqIMdKKRefWryg5NGLVOAIDziWgMH5ClDQ+FsUx8IdG7u77W
	6Sz8ln2IRqThLAyFOhZyoPxKIH32miI3Y0m/1zqxc+1mCEzVAG+BP00HbKn3gDBaDaTG3GHXdE2H9
	+nskWkBeAsuPBi+cb7dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjt1-0001Ey-CS; Mon, 03 Jun 2019 10:08:15 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjsu-0001EZ-Bo
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 10:08:10 +0000
Received: by mail-qt1-x841.google.com with SMTP id j19so4891511qtr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 03:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=20lifKx9/NjRBCOxPqWlC+JnTIwt3odrmH3LlHTbl1E=;
 b=agZsHnu8Zj/6uLXUE+jJXg1IqtCdweLNoYNsVPvASRgBZeD9x8/9UIan0+otNFOVUx
 ul0NRWJcKgKQG5EJ9jfOqNkJUlOan38dorkZggntK6I1acGyv/Fv5ffquyuNcMaznEsz
 aYrpdo3PiopIiRBMa23wh8BL8Vc9Emp44sBlXY9mpj5N0y0MCGIN8nfQxaHPiZbSKJqD
 BkR3iHFko0dcQxgCkFuVxBEASgjPkrOzeKSx2M/mNDeEHiWd2WRqBpzYIZUrHJE85FEP
 OGUSb6cSN3oo6jkMP3E2ri6giWntEAD/huMAL7LV5NIfuv/e6X1SeXkprKv6u1z7YaY7
 A2zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=20lifKx9/NjRBCOxPqWlC+JnTIwt3odrmH3LlHTbl1E=;
 b=rYiuMJgE0/fe60oB0v3d8RaBzQpCcHQpPEBjqo7SLifZASP5Gj/zOB0virCxfDp+/x
 pfUXu/WcJ0p50jgkEfPcsqt7p0NznlDjnLrkb1yi0LQYPN+zSeIEEGie1XWCZBoIqWla
 Z0Cj3oqGrRULx/RWz8YcNe2WmnBCZ9GUMMDcaDrvnYniQLd3sMjtqL3PqJwBgtqg2XTV
 mGVUib1JbF+FyQS98LjASzTfhzQ4MIDkZKzS0ydWf6DwopzNEp5N39isJ4vqNYY6srG2
 xa9sVnVjIPLT+1q31wQoluY+9KhcYpWn7qZKNiOJD8S/DaO4zOatKwusI5Fjo/SdMTgP
 OMZg==
X-Gm-Message-State: APjAAAVZt1jrPK0pELnoFYYATeozOISJ3XSEYf06uHZn7NaRP2h7mgFL
 cmcEVaULPwR6YBELBuRh/+74d93K/ljNKL3V0rmOXQ==
X-Google-Smtp-Source: APXvYqwDIuo0qdB5oSj9lE+DT+kc4ZMbN/NX3DiYr4g8I3e/AA7b0IpvUI3eG4rthqPiMiLSambUwJrP8Hjpui5v1h8=
X-Received: by 2002:ac8:26dc:: with SMTP id 28mr21560600qtp.88.1559556486585; 
 Mon, 03 Jun 2019 03:08:06 -0700 (PDT)
MIME-Version: 1.0
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
 <1558521304-27469-18-git-send-email-suzuki.poulose@arm.com>
In-Reply-To: <1558521304-27469-18-git-send-email-suzuki.poulose@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Mon, 3 Jun 2019 11:07:55 +0100
Message-ID: <CAJ9a7ViQq-bdAw7HOOkSxinC0jhRjpAr-oJVv5GLHfBRpFu6hw@mail.gmail.com>
Subject: Re: [PATCH v4 17/30] coresight: Make device to CPU mapping generic
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_030808_409202_2329A577 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, 22 May 2019 at 11:37, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> The CoreSight components ETM and CPU-Debug are always associated
> with CPUs. Replace the of_coresight_get_cpu() with a platform
> agnostic helper, in preparation to add ACPI support.
>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-cpu-debug.c |  3 +--
>  drivers/hwtracing/coresight/coresight-platform.c  | 18 +++++++++++++-----
>  include/linux/coresight.h                         |  7 +------
>  3 files changed, 15 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> index e8819d7..07a1367 100644
> --- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
> +++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> @@ -572,14 +572,13 @@ static int debug_probe(struct amba_device *adev, const struct amba_id *id)
>         struct device *dev = &adev->dev;
>         struct debug_drvdata *drvdata;
>         struct resource *res = &adev->res;
> -       struct device_node *np = adev->dev.of_node;
>         int ret;
>
>         drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
>         if (!drvdata)
>                 return -ENOMEM;
>
> -       drvdata->cpu = np ? of_coresight_get_cpu(np) : 0;
> +       drvdata->cpu = coresight_get_cpu(dev);
>         if (per_cpu(debug_drvdata, drvdata->cpu)) {
>                 dev_err(dev, "CPU%d drvdata has already been initialized\n",
>                         drvdata->cpu);
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 5d78f4f..ba8c146 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -151,12 +151,14 @@ static void of_coresight_get_ports(const struct device_node *node,
>         }
>  }
>
> -int of_coresight_get_cpu(const struct device_node *node)
> +static int of_coresight_get_cpu(struct device *dev)
>  {
>         int cpu;
>         struct device_node *dn;
>
> -       dn = of_parse_phandle(node, "cpu", 0);
> +       if (!dev->of_node)
> +               return 0;
> +       dn = of_parse_phandle(dev->of_node, "cpu", 0);
>         /* Affinity defaults to CPU0 */
>         if (!dn)
>                 return 0;
> @@ -166,7 +168,6 @@ int of_coresight_get_cpu(const struct device_node *node)
>         /* Affinity to CPU0 if no cpu nodes are found */
>         return (cpu < 0) ? 0 : cpu;
>  }
> -EXPORT_SYMBOL_GPL(of_coresight_get_cpu);
>
>  /*
>   * of_coresight_parse_endpoint : Parse the given output endpoint @ep
> @@ -240,8 +241,6 @@ static int of_get_coresight_platform_data(struct device *dev,
>         bool legacy_binding = false;
>         struct device_node *node = dev->of_node;
>
> -       pdata->cpu = of_coresight_get_cpu(node);
> -
>         /* Get the number of input and output port for this component */
>         of_coresight_get_ports(node, &pdata->nr_inport, &pdata->nr_outport);
>
> @@ -300,6 +299,14 @@ of_get_coresight_platform_data(struct device *dev,
>  }
>  #endif
>
> +int coresight_get_cpu(struct device *dev)
> +{
> +       if (is_of_node(dev->fwnode))
> +               return of_coresight_get_cpu(dev);

No of_coresight_get_cpu() will be defined if CONFIG_OF _not_ defined.
This will hit an implicit declaration compile error in this case.

Mike

> +       return 0;
> +}
> +EXPORT_SYMBOL_GPL(coresight_get_cpu);
> +
>  struct coresight_platform_data *
>  coresight_get_platform_data(struct device *dev)
>  {
> @@ -318,6 +325,7 @@ coresight_get_platform_data(struct device *dev)
>
>         /* Use device name as sysfs handle */
>         pdata->name = dev_name(dev);
> +       pdata->cpu = coresight_get_cpu(dev);
>
>         if (is_of_node(fwnode))
>                 ret = of_get_coresight_platform_data(dev, pdata);
> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> index e2b95e0..98a4440 100644
> --- a/include/linux/coresight.h
> +++ b/include/linux/coresight.h
> @@ -292,12 +292,7 @@ static inline void coresight_disclaim_device_unlocked(void __iomem *base) {}
>
>  #endif
>
> -#ifdef CONFIG_OF
> -extern int of_coresight_get_cpu(const struct device_node *node);
> -#else
> -static inline int of_coresight_get_cpu(const struct device_node *node)
> -{ return 0; }
> -#endif
> +extern int coresight_get_cpu(struct device *dev);
>
>  struct coresight_platform_data *coresight_get_platform_data(struct device *dev);
>
> --
> 2.7.4
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
