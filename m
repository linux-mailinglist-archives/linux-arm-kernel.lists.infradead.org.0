Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B77A8F262
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 19:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3f2fqv2F8Dea2LECB+ZHSavR0yGbiccpNYeGUvD38o=; b=EcbuTEDpbCUeaN
	BUXaQF4DfmOf7uvrytih6NiMn95zSTdHUCzK/fp/EfTjDoYMUBrgl2vXysfwZEcBC9r4nCbK4DsR+
	YDB7zF7nW3HIBS6erU0H/X0kkPFE2NFloNZWXFF0/1LfdQPN1/pUrkEs0R6vajB8lAL9pkC4qDwVD
	FxHmq4CUj4unzG1KGu1HsOfO7mzufH8OY5zgADeoxPwPUYTNJvjVnSfGIp7NiFHHLNiOpfF46qbgJ
	2AY2qVsl03f/IkG8Q+1dWJcBHE0MmginXwY1vghsHyeWnoMZ9jjq4oiOBlKsyxpcROPH7vSY1JJlE
	sLkSHYpN6FtFhgbcQIpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJhc-000749-Ac; Thu, 15 Aug 2019 17:38:20 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJhH-00073R-SF
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 17:38:03 +0000
Received: by mail-io1-xd41.google.com with SMTP id t3so750023ioj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 10:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W/qaXV9S7EqSXjJ9HVVNAqMBd3/53HT0f+nyTBIWkjQ=;
 b=wUeoX1uPuGsbMGnSpUBVS62MFU9GgL7ic0/36SPnwOTAguBfWA5Gak5iU8UcYL+6Dq
 eGzLlIckv3K1bz2qreTGE3JfD/5nCYhPO/tTJhCS/6LuqmPYxQj6ZwKSdD2VrjUKqbA9
 cF2gjQykZblgqUg090nE4cyIWH4OSJX1WMpYqrhjWe1o4KMHHqH1EHezZg37KrkJo5BF
 cL27sbU6YsXo3SELPEd7nMTo41502vReAZTx1EIqEBrmtKQi0wmLGx2pZ35M1iUIds9p
 9/NT5Q+9z7VMWJiJdQBCojS5ovGK4mfJLU7cI8ikaLIhf8fn56Ap8BsjZj11gMu94O9S
 2pAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W/qaXV9S7EqSXjJ9HVVNAqMBd3/53HT0f+nyTBIWkjQ=;
 b=QqZefdQrtDS3KrNlWcwvDoCfiEOLgEmBbbJjTsMKINLEt/iItek/hJ2sSbQQ+UDc23
 2rymitiIL90yo+vY70RV4F1Sut5c+YvWzGTnliztvMQHH6Co+xIcoNrpgMfBWTDwA5iv
 LerbAYSgcKjSi3ZHhMK9jbyVuxMN9d/+gp1B9pPNSSk7kdOpYNuOIcjNNyg0cwTAiXld
 cEC7NdlNIlYBJiL660g4hm10+KrP3VgOscTTL3OopySoG285QStwDSXh36T+3+BBcMw6
 1cceO2DnA6gn9x3693eLyqTdEXdBklN2AE7TiwPOG3LHz5WttvqirPssyEaYDao+upF6
 t6uQ==
X-Gm-Message-State: APjAAAXseDYGkYK0KARUclc6yBWkIj1118avTQQBtAZI7YFAaDbus6/t
 5QPNGILqWNjKCC+cfdG8wx3u62LDjg/mGufYKtsgI86tEEw=
X-Google-Smtp-Source: APXvYqzXDH761xotArU4aND1o5POeE8CAePCGs7xEh0u4TRFQawyaT1FFjR38e/5ItDgOAYVLnQdcE3hNtMTm5//Ma8=
X-Received: by 2002:a6b:7d49:: with SMTP id d9mr6742403ioq.50.1565890677021;
 Thu, 15 Aug 2019 10:37:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190812190320.209988-1-yabinc@google.com>
In-Reply-To: <20190812190320.209988-1-yabinc@google.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 15 Aug 2019 11:37:46 -0600
Message-ID: <CANLsYkxRVvWUxEAmRQ7nCuS-NaOogN4sYOipxBW5zsozyu+y2g@mail.gmail.com>
Subject: Re: [PATCH v2] coresight: tmc-etr: Fix perf_data check.
To: Yabin Cui <yabinc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_103759_919393_54CA9807 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 12 Aug 2019 at 13:03, Yabin Cui <yabinc@google.com> wrote:
>
> When tracing etm data of multiple threads on multiple cpus through
> perf interface, each cpu has a unique etr_perf_buffer while sharing
> the same etr device. There is no guarantee that the last cpu starts
> etm tracing also stops last. This makes perf_data check fail.
>
> Fix it by checking etr_buf instead of etr_perf_buffer.
>
> Fixes: 3147da92a8a8 ("coresight: tmc-etr: Allocate and free ETR memory buffers for CPU-wide scenarios")
> Signed-off-by: Yabin Cui <yabinc@google.com>
> ---
>
> v1 -> v2: rename perf_data to perf_buf. Add fixes tag.
>
> ---
>  drivers/hwtracing/coresight/coresight-tmc-etr.c | 6 +++---
>  drivers/hwtracing/coresight/coresight-tmc.h     | 6 +++---
>  2 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 17006705287a..90d1548ad268 100644
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
> @@ -1497,7 +1497,7 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
>
>         CS_LOCK(drvdata->base);
>         /* Reset perf specific data */
> -       drvdata->perf_data = NULL;
> +       drvdata->perf_buf = NULL;
>         spin_unlock_irqrestore(&drvdata->spinlock, flags);
>
>         size = etr_buf->len;
> @@ -1556,7 +1556,7 @@ static int tmc_enable_etr_sink_perf(struct coresight_device *csdev, void *data)
>         }
>
>         etr_perf->head = PERF_IDX2OFF(handle->head, etr_perf);
> -       drvdata->perf_data = etr_perf;
> +       drvdata->perf_buf = etr_perf->etr_buf;

Ok for the fix.  Looking a things again I don't see a need to do the
assignment for each event - this needs to be done only when the device
is assocated with a monitored process.  Please move it here [1].

Thanks,
Mathieu

[1]. https://elixir.bootlin.com/linux/v5.3-rc4/source/drivers/hwtracing/coresight/coresight-tmc-etr.c#L1572
>
>         /*
>          * No HW configuration is needed if the sink is already in
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
>
>  struct etr_buf_operations {
> --
> 2.23.0.rc1.153.gdeed80330f-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
