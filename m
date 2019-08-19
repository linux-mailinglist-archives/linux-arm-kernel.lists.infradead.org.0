Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 772FC95130
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 00:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=diij+nXi8W43rCkut9wZz7PuBxw8yUgvJ+JJmBFXgHM=; b=jPbRnDIaPcw1aG
	tOLX4p6Eb6afT9C1if6uDdhMNRXLYTQ04Ls6ug4+T6hMwcqRZDVH2OIQ7LGcp6Ec/rJ0oplF85uFZ
	wlwo8/Rxx5M+LXb90GN/S8zjmwhzfHBWizTvFYITA3rDA5wfT2QHMfCTKWn6lVcxp0g59JyEI2tvg
	DcjYCcaA77mgVOpmtZcDqGvBB8GVPPZILxfQpdGTYzmxvgZajwdnJf/YNMdESvREiuZioqhIg3z5c
	MHCTrIipPmr3gaW6Y4wJKTCTtMYb2kEATbOupbUZJqmFuRAu2PbPEVPCTEtdNOKNwTt3TKIylFevD
	YctmTCzBb809itwO4H+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzqZ7-0003aN-0H; Mon, 19 Aug 2019 22:55:53 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzqYt-0003a2-GZ
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 22:55:41 +0000
Received: by mail-io1-xd43.google.com with SMTP id t3so7963546ioj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 15:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GghJ9osZeYRlwhn9lgUsUo7YRIX+Kbje8amKHVOldwk=;
 b=foCPBm2sO6lqJhtfvfEMGlgb1jYDxA3fd1zKEcMbyaUSS25p9vaVhA8ZaBzWiTbMfI
 Ra3VvFUA6yIh/TIVv/UZyDjVD9QBh+6TbAcTFdYdU159SLEmxSOIaDMXUQ1P0PqJQlkw
 rdE/brBFMwEdNdkIkAAgc3JxsYE0qnHGZBZRLWdSGlTBzIGsR+AGdVlvVd7FlQ77HqSA
 K0g4EAAkxlgxjau4D7OaKdcOU4saR+h01HOOuQ6rXFZdkSKuptEBn2FLl0jTxcTAkNrh
 wH9cvjB2fzd8ey/IN0FdVyk/G3+O2gqjEjWSYEshyP9BV9C+5I+AqldRmZiIlETki0gP
 MKAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GghJ9osZeYRlwhn9lgUsUo7YRIX+Kbje8amKHVOldwk=;
 b=mf2gBJ+XoMA6bwGbEPBYkkuDrTpGhx7Mw1a4kIKL3tG1e+YYj7qd5G1bWnRZs2dd06
 MlpaVG6G6F15GNhxOPhbGNTD8oF9Pwcs6Eu7x7HdqCXLoSKSmlUB0ASumML9yYyYHnyF
 4aN+FjVRFnwf5DrX84Di2vOITnF/HNv9EMVTXm8H7vzxGRRcLOswQxnSG2HJWJUbkY74
 3mpA7zcCad3J9mb+ciJccjXmCUPvT9ltWw9bBclAOKMwXQaqHGfT14SEO5HHN8ASQp/P
 uOg9S1apXS3w5UH53nIa6BEaz5o0nE2obz4IvCWrsBi1NL5THhL4MvBei/x/G5mcYmVZ
 kphw==
X-Gm-Message-State: APjAAAXbQ9Go57dECx6L/jDZckzRlHKJ/m8Z+aqY8BOmwRj9bJiVN6GH
 TXMh1nx1oayLeA9q871mM4NGDW41M0C04jEyYObUzA==
X-Google-Smtp-Source: APXvYqwU1qqCvobEK1hY7OvjFoqxVgMiFTUVnihXOeQLPEVIjKWBUy90ZkRo/G2mDiqvJiwT4t3piCQRMO9Ia6wmNdI=
X-Received: by 2002:a05:6638:517:: with SMTP id
 i23mr203059jar.71.1566255337742; 
 Mon, 19 Aug 2019 15:55:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190815184628.183186-1-yabinc@google.com>
In-Reply-To: <20190815184628.183186-1-yabinc@google.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 19 Aug 2019 16:55:26 -0600
Message-ID: <CANLsYkwad9aGKkk_E2e-KPWYD+V9fUNp9og6qk6v-FGYfosMGQ@mail.gmail.com>
Subject: Re: [PATCH v3] coresight: tmc-etr: Fix perf_data check.
To: Yabin Cui <yabinc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_155539_584975_AE6713BA 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 15 Aug 2019 at 12:46, Yabin Cui <yabinc@google.com> wrote:
>
> When tracing etm data of multiple threads on multiple cpus through
> perf interface, each cpu has a unique etr_perf_buffer while sharing
> the same etr device. There is no guarantee that the last cpu starts
> etm tracing also stops last. This makes perf_data check fail.
>
> Fix it by checking etr_buf instead of etr_perf_buffer.
> Also move the code setting and clearing perf_buf to more suitable
> places.
>
> Fixes: 3147da92a8a8 ("coresight: tmc-etr: Allocate and free ETR memory buffers for CPU-wide scenarios")
> Signed-off-by: Yabin Cui <yabinc@google.com>
> ---
>
> v2 -> v3:
>   moved place of setting drvdata->perf_buf based on review comment.
>   Also moved place of clearing drvdata->perf_buf from
>   tmc_update_etr_buffer() to tmc_disable_etr_sink() for below
>   situation:
>
>   cpu 0 enable etr device (set perf_buf)
>   cpu 0 update etr buffer (clear perf_buf)
>   cpu 1 enable etr device (perf_buf isn't set because pid set by cpu 0)
>   cpu 0 disable etr device
>   cpu 1 update etr buffer (perf_buf == NULL, check fails)
>
>   To fix it, we need to move clearing perf_buf to the disable function.
>
> ---
>  drivers/hwtracing/coresight/coresight-tmc-etr.c | 8 ++++----
>  drivers/hwtracing/coresight/coresight-tmc.h     | 6 +++---
>  2 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 17006705287a..80af313f55d7 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -1484,7 +1484,7 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
>                 goto out;
>         }
>
> -       if (WARN_ON(drvdata->perf_data != etr_perf)) {
> +       if (WARN_ON(drvdata->perf_buf != etr_buf)) {
>                 lost = true;
>                 spin_unlock_irqrestore(&drvdata->spinlock, flags);
>                 goto out;
> @@ -1496,8 +1496,6 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
>         tmc_sync_etr_buf(drvdata);
>
>         CS_LOCK(drvdata->base);
> -       /* Reset perf specific data */
> -       drvdata->perf_data = NULL;
>         spin_unlock_irqrestore(&drvdata->spinlock, flags);
>
>         size = etr_buf->len;
> @@ -1556,7 +1554,6 @@ static int tmc_enable_etr_sink_perf(struct coresight_device *csdev, void *data)
>         }
>
>         etr_perf->head = PERF_IDX2OFF(handle->head, etr_perf);
> -       drvdata->perf_data = etr_perf;
>
>         /*
>          * No HW configuration is needed if the sink is already in
> @@ -1572,6 +1569,7 @@ static int tmc_enable_etr_sink_perf(struct coresight_device *csdev, void *data)
>                 /* Associate with monitored process. */
>                 drvdata->pid = pid;
>                 drvdata->mode = CS_MODE_PERF;
> +               drvdata->perf_buf = etr_perf->etr_buf;
>                 atomic_inc(csdev->refcnt);
>         }
>
> @@ -1617,6 +1615,8 @@ static int tmc_disable_etr_sink(struct coresight_device *csdev)
>         /* Dissociate from monitored process. */
>         drvdata->pid = -1;
>         drvdata->mode = CS_MODE_DISABLED;
> +       /* Reset perf specific data */
> +       drvdata->perf_buf = NULL;
>
>         spin_unlock_irqrestore(&drvdata->spinlock, flags);
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
> index 1ed50411cc3c..f9a0c95e9ba2 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.h
> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
> @@ -178,8 +178,8 @@ struct etr_buf {
>   *             device configuration register (DEVID)
>   * @idr:       Holds etr_bufs allocated for this ETR.
>   * @idr_mutex: Access serialisation for idr.
> - * @perf_data: PERF buffer for ETR.
> - * @sysfs_data:        SYSFS buffer for ETR.
> + * @sysfs_buf: SYSFS buffer for ETR.
> + * @perf_buf:  PERF buffer for ETR.
>   */
>  struct tmc_drvdata {
>         void __iomem            *base;
> @@ -202,7 +202,7 @@ struct tmc_drvdata {
>         struct idr              idr;
>         struct mutex            idr_mutex;
>         struct etr_buf          *sysfs_buf;
> -       void                    *perf_data;
> +       struct etr_buf          *perf_buf;
>  };

I have applied your patch.

Thanks,
Mathieu

>
>  struct etr_buf_operations {
> --
> 2.23.0.rc1.153.gdeed80330f-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
