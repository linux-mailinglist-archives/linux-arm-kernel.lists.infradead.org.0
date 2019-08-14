Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 988EC8E10D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 01:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Vt1+bEm/74nT8d8fIXkL+J3lQyS00ktcR3DHSdsnWU=; b=qTk57xdSoxl8r1
	1duTD86m5bQmFCUBSzz6w2l8sWPGVp0T8B/h27whgmFnZgcfUdBnxGrNu8ODwkI3LIfdRzKURlL+6
	ThtHlNs6Ultuy47DS/Y46QW4hSM+R0gx6Ka/VMA0+83ACQi2H3eWt35eHw4EA4h27jnrjso36k42L
	AH/Ux+9UeULlWX+Dyyp7KdLTBVWhL5Vp6GfmrBNgCEiy/pGQSDWfD2Iyoqrm0xMdYkxExw8gTJAl8
	wM7GErGqOJlZcY1pkx41WLbotE/EUrLcs9fiueTfFWuC7oQr6ebRpabHH/cpuQefTe5D6xVLKbWRw
	qt5Y4Ya58RRoatDYLREA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy2Gb-0006gz-I3; Wed, 14 Aug 2019 23:01:17 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy2G2-0006O6-Rq
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 23:00:44 +0000
Received: by mail-ot1-x342.google.com with SMTP id j7so1920685ota.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 16:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ps+EFQIEbsT8mGGr5ReNIIuoSPs/AsNLmAuvUEMVino=;
 b=cvsiIRt/q2PKJ+VpL3Fd62IdjDLmnHGn+HTaU21QLcJw1Jup7UMKeumGGkwOUABcOW
 fWQ3QGzSwQp2KAiPS9pQv6iujr8L6+py/pVn91frnOxWvRx5c1SrSAtqdzpgWkACoZ0B
 LiBj5GgIsnPVZNG9l0rmE/U2Pq5un8h+6oS/HquEEEexpCkl5hUdBtINucL0fflGilNI
 eV3PJvu//w/RVW/v1v8V4QkrevQvkkDPYmbnyUYOCSRj21jGLJ/77EIkBi7Lw7VLFeRX
 I1XX4xQmrzdfg5V2vIgZisR4BdgXYRrUW+NveYDY3MO6JPqfEV76wqglJkm60bRneJ4L
 MTgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ps+EFQIEbsT8mGGr5ReNIIuoSPs/AsNLmAuvUEMVino=;
 b=BGnaKSPCkMVERvuet/8WV0nNqB16dKRph6WqD/XaLbLEIrEwYwIewrIbAuKrTImnZR
 +BDhqbICrKINl4AjEmzFp4UTKq5d70F19lBIUhsx/DctZjxyLeOfqKfSuH2rmK3maPQ/
 kLTBnut0B+EtX7oSxMa9b3BcGXSnJETdf2GuB1ugAbwVIVkRbKu7TSqZr9/b69bgBREi
 lnpC9qlXnbDUriaUindXQ/NbX6wrqNSfbzvPu7IU0QS+PxOqEi+HB9rU+/GcNjUNenw9
 h8gpXW7OP57Hc5Qo+Y4JGtTINOIUMG4kBnt6GaTidH0FGEpHzXDh+Z1RuuJRYvs5aAVi
 X3RQ==
X-Gm-Message-State: APjAAAVw1j0lXsAHmhGFTQTViOOb3NiysCkMQKz/e5EEqq2H8r4t7mNu
 5yPBjGUdtqFzn6Igt0ZFf4nn2e9jw1JnVBG2hABaEw==
X-Google-Smtp-Source: APXvYqy/6uir6KpedrdY7ikNHexU+YPtfY9RLm7TaKlLdD+19hn7XeEaev/rKerNWentmbYt2c2CGqJT4irjg1lIWkU=
X-Received: by 2002:a5d:9710:: with SMTP id h16mr2505936iol.237.1565823641440; 
 Wed, 14 Aug 2019 16:00:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190812190320.209988-1-yabinc@google.com>
In-Reply-To: <20190812190320.209988-1-yabinc@google.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 14 Aug 2019 17:00:30 -0600
Message-ID: <CANLsYkz3_bzRCQEVb00Tbf3Rdww13mePN-woncctOu7OanF00A@mail.gmail.com>
Subject: Re: [PATCH v2] coresight: tmc-etr: Fix perf_data check.
To: Yabin Cui <yabinc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_160042_929765_7DCE8247 
X-CRM114-Status: GOOD (  22.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yabin,

On Mon, 12 Aug 2019 at 13:03, Yabin Cui <yabinc@google.com> wrote:
>
> When tracing etm data of multiple threads on multiple cpus through
> perf interface, each cpu has a unique etr_perf_buffer while sharing
> the same etr device. There is no guarantee that the last cpu starts
> etm tracing also stops last. This makes perf_data check fail.

Did you actually see the check fail or is this a theoretical thing?
I'm really perplex here has I have tested this scenario many times
without issues.

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

In CPU wide scenarios each perf event (one per CPU) is associated with
an event_data during the setup process.  The event_data is the
etr_perf holding a reference to the perf ring buffer for that specific
event along with the etr_buf, regardless of who created the latter.
From there, when the event is installed on a CPU, the csdev for that
CPU is given a reference to the event_data of that event[1].  Before
going further notice how there is a per CPU csdev and event handle to
keep track of event specifics[2]. As such both (per CPU) csdev and
event handle carry the exact same reference to the etr_perf.

When an event is stopped the exact same per CPU references are
taken[3] and later fed to sink->update_buffer().  If
sink->update_buffer() is called on an event (again one per CPU)
function etm_event_start() must have been called and
(drvdata->perf_data == etf_perf) needs to hold.

If that is not the case, an event from a completely different trace
session has been installed on that CPU and that can't happen thanks to
drvdata->id.

As such if you get a condition where (drvdata->perf_buf != etr_buf),
one of two things has happened:

1) Something went seriously wrong and the WARN_ON() did its job.
2) A corner case is manifesting in your test environment that I
haven't provisioned for.  If that is the case we need to figure out
exactly what is happening before considering a fix.

Thanks,
Mathieu

[1]. https://elixir.bootlin.com/linux/v5.3-rc4/source/drivers/hwtracing/coresight/coresight-tmc-etr.c#L1559
[2]. https://elixir.bootlin.com/linux/v5.3-rc4/source/drivers/hwtracing/coresight/coresight-etm-perf.c#L298
[3]. https://elixir.bootlin.com/linux/v5.3-rc4/source/drivers/hwtracing/coresight/coresight-etm-perf.c#L348

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
