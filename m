Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07624E9EA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 16:15:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3Yw3XbHy+KHOEwG+mNJ5/yvX/d4fGNMw4MuJG2xUMc=; b=mDYUCW7XX7j0i5
	fd8pvQuGsBF6WVUM1WlDSXOBDpnPsm3mPBm1mbkmFi3TDQXF9LoeIi29RRvxuktcN+5Dbld0Oqq2b
	XLhbljsBVMo/E+6WQ1s2cMgtfCOJOHVcNBUgjWRB+Zb2iTD9lWZlF+nxnF9MRXdBJ6028bRmrRkNV
	6D2y7dKZfv1yMqNmkbBwi6yrvszF9pDec+cvX3nN6C8ulY8kHAV/PJR1ogIPintqJXibe7KUZm/Am
	GWmuNPLMH7QOKToA1fSyuGtGw+J3hsgw4jO/Zd99/qRS6pfz9zItV7w+frlJz2ktSL7JT2XtHmQFh
	hjf6hEeDvRPrLe4deMdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPphG-0000Fn-A4; Wed, 30 Oct 2019 15:15:42 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPph6-0000FE-NG
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 15:15:34 +0000
Received: by mail-il1-x141.google.com with SMTP id t9so188558ils.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 08:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tR3hnUd+yG4qoXk3Lqg2RDqKdfqL6VoTN0RsHKmQlIs=;
 b=LUeOZga9i3mrP4nElmpbUqTWrPIizf0R2VC8M6isiG5SBj3+oVQ480HjLYb4fOIo/O
 ffwVwlDOkN6Ufa5I8wjVUu/DBGTAo67IMvCwvqrE2Lh2Ol0Vztj4w6GyzSSVgTrRhohA
 zjLRrCyMyygeXXbw6FZe41As0JMj41vnoLyOP1ChA1ARW4aMDNV2P4SZlHKtHFPRIIev
 jhmfOw4ykcc5b6R4mkGMXD/nno5NuphZJDNX+RAnDxEt00jzfBcrBUwEYUmdgDGPzB28
 LlFIwJzkKmTvG6PDiUdicXhmXPAVkNOZY//s4JmZcwt/I39oP/1k1w0sOXhiV3eNfgE6
 UJng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tR3hnUd+yG4qoXk3Lqg2RDqKdfqL6VoTN0RsHKmQlIs=;
 b=G5rbMW+gsKfa+1YpIl8CFT0GNdmqaClAILCf64vMz00VHrN4zJDdijFKbTpzk9xl/4
 EPIboXYV9VgsiqJnYhFABlB2A4UE0JYn2xrDPzf8naswqXTxQiqljoqiujdMtb1PTTZf
 vbfo4E0BiADlcwvWe36ke+rujWQS/KQ5KUwb6GHpv20/wmap+lqsnYoNbo3sPp2hZqag
 Ixyyp03QzJ0kNMnNBmXgo4QiIi+0hw7zg3L5f3BBdzl0XlW3wwAYIcFnKvhX4163Qgn8
 izfW3W+eK+LynRBifKCYEot6P7QLDtSsANHmfPoKDAjJc+aAnOrlVa038pCwTeBjquK/
 +4xw==
X-Gm-Message-State: APjAAAWZnGJRt7vFnaT2sLsVUmR+wh3q/y5gZhgyZy//mAQeRLup02do
 b3XLa9sgQfvxnPxu0r1vyghMYoWl+wzVHBc+XDKA4A==
X-Google-Smtp-Source: APXvYqxg8G219FSJceHeLxrzDX2VBdTQlji2SOCFmrTE+AT9wSMWhub0QhpKTHzyLbSys6Oba7Ban5916Q7A3RjDuC4=
X-Received: by 2002:a92:350a:: with SMTP id c10mr644570ila.140.1572448530327; 
 Wed, 30 Oct 2019 08:15:30 -0700 (PDT)
MIME-Version: 1.0
References: <20191025235321.181897-1-yabinc@google.com>
In-Reply-To: <20191025235321.181897-1-yabinc@google.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 30 Oct 2019 09:15:19 -0600
Message-ID: <CANLsYkxexrP_uuNS6SUmj1DyE0q8whj4i=ZdZs+PRTazxzCgaA@mail.gmail.com>
Subject: Re: [PATCH v5] coresight: Serialize enabling/disabling a link device.
To: Yabin Cui <yabinc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_081532_768159_0FB66077 
X-CRM114-Status: GOOD (  23.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, 25 Oct 2019 at 17:53, Yabin Cui <yabinc@google.com> wrote:
>
> When tracing etm data of multiple threads on multiple cpus through perf
> interface, some link devices are shared between paths of different cpus.
> It creates race conditions when different cpus wants to enable/disable
> the same link device at the same time.
>
> Example 1:
> Two cpus want to enable different ports of a coresight funnel, thus
> calling the funnel enable operation at the same time. But the funnel
> enable operation isn't reentrantable.
>
> Example 2:
> For an enabled coresight dynamic replicator with refcnt=1, one cpu wants
> to disable it, while another cpu wants to enable it. Ideally we still have
> an enabled replicator with refcnt=1 at the end. But in reality the result
> is uncertain.
>
> Since coresight devices claim themselves when enabled for self-hosted
> usage, the race conditions above usually make the link devices not usable
> after many cycles.
>
> To fix the race conditions, this patch uses spinlocks to serialize
> enabling/disabling link devices.
>
> Fixes: a06ae8609b3d ("coresight: add CoreSight core layer framework")
> Signed-off-by: Yabin Cui <yabinc@google.com>
> ---
>
> Sorry for the delay!
>
> v4 -> v5:
> added document for spinlock fields.
> moved dev_dbg() out of lock section, and verified printed debug msgs.
>
> split atomic_inc_return() into atomic_read() and atomic_inc() as
> commented.
> checked drvdata->reading before refcnt.
>
> ---
>  .../hwtracing/coresight/coresight-funnel.c    | 36 +++++++++++----
>  .../coresight/coresight-replicator.c          | 35 ++++++++++++---
>  .../hwtracing/coresight/coresight-tmc-etf.c   | 26 ++++++++---
>  drivers/hwtracing/coresight/coresight.c       | 45 ++++++-------------
>  4 files changed, 90 insertions(+), 52 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
> index 05f7896c3a01..b605889b507a 100644
> --- a/drivers/hwtracing/coresight/coresight-funnel.c
> +++ b/drivers/hwtracing/coresight/coresight-funnel.c
> @@ -38,12 +38,14 @@ DEFINE_CORESIGHT_DEVLIST(funnel_devs, "funnel");
>   * @atclk:     optional clock for the core parts of the funnel.
>   * @csdev:     component vitals needed by the framework.
>   * @priority:  port selection order.
> + * @spinlock:  serialize enable/disable operations.
>   */
>  struct funnel_drvdata {
>         void __iomem            *base;
>         struct clk              *atclk;
>         struct coresight_device *csdev;
>         unsigned long           priority;
> +       spinlock_t              spinlock;
>  };
>
>  static int dynamic_funnel_enable_hw(struct funnel_drvdata *drvdata, int port)
> @@ -76,11 +78,21 @@ static int funnel_enable(struct coresight_device *csdev, int inport,
>  {
>         int rc = 0;
>         struct funnel_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
> -
> -       if (drvdata->base)
> -               rc = dynamic_funnel_enable_hw(drvdata, inport);
> -
> +       unsigned long flags;
> +       bool first_enable = false;
> +
> +       spin_lock_irqsave(&drvdata->spinlock, flags);
> +       if (atomic_read(&csdev->refcnt[inport]) == 0) {
> +               if (drvdata->base)
> +                       rc = dynamic_funnel_enable_hw(drvdata, inport);
> +               if (!rc)
> +                       first_enable = true;
> +       }
>         if (!rc)
> +               atomic_inc(&csdev->refcnt[inport]);
> +       spin_unlock_irqrestore(&drvdata->spinlock, flags);
> +
> +       if (first_enable)
>                 dev_dbg(&csdev->dev, "FUNNEL inport %d enabled\n", inport);
>         return rc;
>  }
> @@ -107,11 +119,19 @@ static void funnel_disable(struct coresight_device *csdev, int inport,
>                            int outport)
>  {
>         struct funnel_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
> +       unsigned long flags;
> +       bool last_disable = false;
> +
> +       spin_lock_irqsave(&drvdata->spinlock, flags);
> +       if (atomic_dec_return(&csdev->refcnt[inport]) == 0) {
> +               if (drvdata->base)
> +                       dynamic_funnel_disable_hw(drvdata, inport);
> +               last_disable = true;
> +       }
> +       spin_unlock_irqrestore(&drvdata->spinlock, flags);
>
> -       if (drvdata->base)
> -               dynamic_funnel_disable_hw(drvdata, inport);
> -
> -       dev_dbg(&csdev->dev, "FUNNEL inport %d disabled\n", inport);
> +       if (last_disable)
> +               dev_dbg(&csdev->dev, "FUNNEL inport %d disabled\n", inport);
>  }
>
>  static const struct coresight_ops_link funnel_link_ops = {
> diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
> index b29ba640eb25..43304196a1a6 100644
> --- a/drivers/hwtracing/coresight/coresight-replicator.c
> +++ b/drivers/hwtracing/coresight/coresight-replicator.c
> @@ -31,11 +31,13 @@ DEFINE_CORESIGHT_DEVLIST(replicator_devs, "replicator");
>   *             whether this one is programmable or not.
>   * @atclk:     optional clock for the core parts of the replicator.
>   * @csdev:     component vitals needed by the framework
> + * @spinlock:  serialize enable/disable operations.
>   */
>  struct replicator_drvdata {
>         void __iomem            *base;
>         struct clk              *atclk;
>         struct coresight_device *csdev;
> +       spinlock_t              spinlock;
>  };
>
>  static void dynamic_replicator_reset(struct replicator_drvdata *drvdata)
> @@ -97,10 +99,22 @@ static int replicator_enable(struct coresight_device *csdev, int inport,
>  {
>         int rc = 0;
>         struct replicator_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
> -
> -       if (drvdata->base)
> -               rc = dynamic_replicator_enable(drvdata, inport, outport);
> +       unsigned long flags;
> +       bool first_enable = false;
> +
> +       spin_lock_irqsave(&drvdata->spinlock, flags);
> +       if (atomic_read(&csdev->refcnt[outport]) == 0) {
> +               if (drvdata->base)
> +                       rc = dynamic_replicator_enable(drvdata, inport,
> +                                                      outport);
> +               if (!rc)
> +                       first_enable = true;
> +       }
>         if (!rc)
> +               atomic_inc(&csdev->refcnt[outport]);
> +       spin_unlock_irqrestore(&drvdata->spinlock, flags);
> +
> +       if (first_enable)
>                 dev_dbg(&csdev->dev, "REPLICATOR enabled\n");
>         return rc;
>  }
> @@ -137,10 +151,19 @@ static void replicator_disable(struct coresight_device *csdev, int inport,
>                                int outport)
>  {
>         struct replicator_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
> +       unsigned long flags;
> +       bool last_disable = false;
> +
> +       spin_lock_irqsave(&drvdata->spinlock, flags);
> +       if (atomic_dec_return(&csdev->refcnt[outport]) == 0) {
> +               if (drvdata->base)
> +                       dynamic_replicator_disable(drvdata, inport, outport);
> +               last_disable = true;
> +       }
> +       spin_unlock_irqrestore(&drvdata->spinlock, flags);
>
> -       if (drvdata->base)
> -               dynamic_replicator_disable(drvdata, inport, outport);
> -       dev_dbg(&csdev->dev, "REPLICATOR disabled\n");
> +       if (last_disable)
> +               dev_dbg(&csdev->dev, "REPLICATOR disabled\n");
>  }
>
>  static const struct coresight_ops_link replicator_link_ops = {
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> index 807416b75ecc..d0cc3985b72a 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> @@ -334,9 +334,10 @@ static int tmc_disable_etf_sink(struct coresight_device *csdev)
>  static int tmc_enable_etf_link(struct coresight_device *csdev,
>                                int inport, int outport)
>  {
> -       int ret;
> +       int ret = 0;
>         unsigned long flags;
>         struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
> +       bool first_enable = false;
>
>         spin_lock_irqsave(&drvdata->spinlock, flags);
>         if (drvdata->reading) {
> @@ -344,12 +345,18 @@ static int tmc_enable_etf_link(struct coresight_device *csdev,
>                 return -EBUSY;
>         }
>
> -       ret = tmc_etf_enable_hw(drvdata);
> +       if (atomic_read(&csdev->refcnt[0]) == 0) {
> +               ret = tmc_etf_enable_hw(drvdata);
> +               if (!ret) {
> +                       drvdata->mode = CS_MODE_SYSFS;
> +                       first_enable = true;
> +               }
> +       }
>         if (!ret)
> -               drvdata->mode = CS_MODE_SYSFS;
> +               atomic_inc(&csdev->refcnt[0]);
>         spin_unlock_irqrestore(&drvdata->spinlock, flags);
>
> -       if (!ret)
> +       if (first_enable)
>                 dev_dbg(&csdev->dev, "TMC-ETF enabled\n");
>         return ret;
>  }
> @@ -359,6 +366,7 @@ static void tmc_disable_etf_link(struct coresight_device *csdev,
>  {
>         unsigned long flags;
>         struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
> +       bool last_disable = false;
>
>         spin_lock_irqsave(&drvdata->spinlock, flags);
>         if (drvdata->reading) {
> @@ -366,11 +374,15 @@ static void tmc_disable_etf_link(struct coresight_device *csdev,
>                 return;
>         }
>
> -       tmc_etf_disable_hw(drvdata);
> -       drvdata->mode = CS_MODE_DISABLED;
> +       if (atomic_dec_return(&csdev->refcnt[0]) == 0) {
> +               tmc_etf_disable_hw(drvdata);
> +               drvdata->mode = CS_MODE_DISABLED;
> +               last_disable = true;
> +       }
>         spin_unlock_irqrestore(&drvdata->spinlock, flags);
>
> -       dev_dbg(&csdev->dev, "TMC-ETF disabled\n");
> +       if (last_disable)
> +               dev_dbg(&csdev->dev, "TMC-ETF disabled\n");
>  }
>
>  static void *tmc_alloc_etf_buffer(struct coresight_device *csdev,
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index 6453c67a4d01..0bbce0d29158 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -253,9 +253,9 @@ static int coresight_enable_link(struct coresight_device *csdev,
>                                  struct coresight_device *parent,
>                                  struct coresight_device *child)
>  {
> -       int ret;
> +       int ret = 0;
>         int link_subtype;
> -       int refport, inport, outport;
> +       int inport, outport;
>
>         if (!parent || !child)
>                 return -EINVAL;
> @@ -264,29 +264,17 @@ static int coresight_enable_link(struct coresight_device *csdev,
>         outport = coresight_find_link_outport(csdev, child);
>         link_subtype = csdev->subtype.link_subtype;
>
> -       if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_MERG)
> -               refport = inport;
> -       else if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_SPLIT)
> -               refport = outport;
> -       else
> -               refport = 0;
> -
> -       if (refport < 0)
> -               return refport;
> +       if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_MERG && inport < 0)
> +               return inport;
> +       if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_SPLIT && outport < 0)
> +               return outport;
>
> -       if (atomic_inc_return(&csdev->refcnt[refport]) == 1) {
> -               if (link_ops(csdev)->enable) {
> -                       ret = link_ops(csdev)->enable(csdev, inport, outport);
> -                       if (ret) {
> -                               atomic_dec(&csdev->refcnt[refport]);
> -                               return ret;
> -                       }
> -               }
> -       }
> -
> -       csdev->enable = true;
> +       if (link_ops(csdev)->enable)
> +               ret = link_ops(csdev)->enable(csdev, inport, outport);
> +       if (!ret)
> +               csdev->enable = true;
>
> -       return 0;
> +       return ret;
>  }
>
>  static void coresight_disable_link(struct coresight_device *csdev,
> @@ -295,7 +283,7 @@ static void coresight_disable_link(struct coresight_device *csdev,
>  {
>         int i, nr_conns;
>         int link_subtype;
> -       int refport, inport, outport;
> +       int inport, outport;
>
>         if (!parent || !child)
>                 return;
> @@ -305,20 +293,15 @@ static void coresight_disable_link(struct coresight_device *csdev,
>         link_subtype = csdev->subtype.link_subtype;
>
>         if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_MERG) {
> -               refport = inport;
>                 nr_conns = csdev->pdata->nr_inport;
>         } else if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_SPLIT) {
> -               refport = outport;
>                 nr_conns = csdev->pdata->nr_outport;
>         } else {
> -               refport = 0;
>                 nr_conns = 1;
>         }
>
> -       if (atomic_dec_return(&csdev->refcnt[refport]) == 0) {
> -               if (link_ops(csdev)->disable)
> -                       link_ops(csdev)->disable(csdev, inport, outport);
> -       }
> +       if (link_ops(csdev)->disable)
> +               link_ops(csdev)->disable(csdev, inport, outport);

I have picked up you work - thanks,
Mathieu

>
>         for (i = 0; i < nr_conns; i++)
>                 if (atomic_read(&csdev->refcnt[i]) != 0)
> --
> 2.24.0.rc0.303.g954a862665-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
