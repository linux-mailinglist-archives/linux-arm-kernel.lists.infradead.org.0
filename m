Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6168C3B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 23:30:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q77ys2qNToGxb8SmDnfRM+p0m4zaBXWBMmw0rCzberg=; b=Xfhuiu7F/PQ0W6
	NMfaTw7pVkni3IzjHJBdobUmF11U4K04uAYpPljUWbcQ3vsn+PvEUifw8S+2uHz8PRySxKGgCJPqR
	Z+CRXCSlnNpBF9lKY1oPL4Je4U3s73k3KaPbDlz8mJ0heu3/H8eydcbjzipkwCUWuJlsNpONjJQ+K
	SmUkal8LiQIi+ZTSRlcLnH83JhHCeOcSlyAfc80NJzEqCH6IV87Gz11FSBb/OAlTBg430QwyQDKmc
	WAP5fceJ7syzx+jDW6uJ6+2av18w50hbEFHd2Eu92POvZeExYrsUyHaCt7F4yh1vUTl+hQqQqt3LQ
	v2c4G2KGSES39jufze7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxeNQ-0000Pk-Qm; Tue, 13 Aug 2019 21:30:44 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxeNG-0000Ov-JG
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 21:30:36 +0000
Received: by mail-ot1-x342.google.com with SMTP id f17so42173640otq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 14:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u+G2zy96VnmH+zRcEgTdWubjTvGo5IMvJNYRtMTxw04=;
 b=rYu0s+BQvtmdoikVCTb6tLYsN1sDtbMeBmIDG0wOuMSsygNONs/e3TDuYfwpva1Xoo
 h7NPf+gsUEGZg+HcPEdFBtswVYcZFgAYfl0C+xFtm6G9biCG5VYrhGI8aUuMmp4bkinC
 tECbByKVkOb0JCEfQ+5w/kqI6rYmLMZO25nNzwdo5Hp18mLUscDNGI+Fr9W97fQKi/RO
 9/LredGzO8VPBZpt2FRHvwohU7FC+k2MA4YwfdaHIyu3EAxv1rRvzCK17PRSkK50aBjL
 pVB3OmCESjWKYPrZSs43tbZEyJ0BhBuXZgDis1mTNti1OcjPR7+ePRuwvv0O8BA8GkFd
 UH0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u+G2zy96VnmH+zRcEgTdWubjTvGo5IMvJNYRtMTxw04=;
 b=g1nUcgfd0PMZtcs87Q8TpC8+ccCQdIedUmEmziJNCLNSQWQ3qcDgsmVIxWp4PaonrF
 1PqRQCPAUukXg5ZU613WQEqo10Orh0FOaFrcfnGNvgxfpjIJx86GuktNzrs64dsIEdJR
 kUWupJDCpi8S8AbN9LhSYm15TWy5ujpE6EzrjqGRkHG70Y8v83nCleu9BEgpxYfkJa1R
 lBUFgL43T4WfrREnkmP1ILVkcaHIg1FpamVs8OKwMTKhDrxY6wUjpyY/pOpMu3jjfZQe
 Eb8m2blYw3x4T+k5z1zaAYxNiBrOjtsx3ieZwf6N1GMo7rO5Ju2OiAJRWKtEdGYKfw7Q
 74KA==
X-Gm-Message-State: APjAAAWTCbYdMOn8vCkBa+c9NF/DLjvns+3f27sI9Cv0S5dhw5WwGzt7
 pdG5FCGychtIpW3iZ0bM+INsUXSmPnMUVhL6vFerE93LGoI=
X-Google-Smtp-Source: APXvYqy2TmxV0nrsRl3QgD8/+Drr+1lMWGMeydxHOJ6S+P2RASj4gQx4YYrpxwDsLLfnwq1Yg5HYVQW1KKzejLihI8Q=
X-Received: by 2002:a5e:db0a:: with SMTP id q10mr23818923iop.58.1565731832847; 
 Tue, 13 Aug 2019 14:30:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190812195725.11793-1-yabinc@google.com>
In-Reply-To: <20190812195725.11793-1-yabinc@google.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 13 Aug 2019 15:30:21 -0600
Message-ID: <CANLsYkzH-ZWV3qF4p4Yvfy3EfBvZUYyDH+SDdUyuS3fGw9h_Fw@mail.gmail.com>
Subject: Re: [PATCH v3] coresight: Serialize enabling/disabling a link device.
To: Yabin Cui <yabinc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_143034_646405_6D74BC23 
X-CRM114-Status: GOOD (  26.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Yabin,

On Mon, 12 Aug 2019 at 13:57, Yabin Cui <yabinc@google.com> wrote:
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
> To fix the race conditions, this patch adds a spinlock to serialize
> enabling/disabling a link device.
>
> Fixes: a06ae8609b3d ("coresight: add CoreSight core layer framework")

When "a06ae8609b3d" was introduced there wasn't any race condition as
all access to links were guarded by the coresight_mutex in
coresight_enable/disable() functions.  The problem was really
introduced when integration with the perf subsystem was added, though
it would have been really difficult to trigger due to the HW
topologies available at the time.

So, to be exact:

Fixes: 0bcbf2e30ff2 ("coresight: etm-perf: new PMU driver for ETM tracers")

> Signed-off-by: Yabin Cui <yabinc@google.com>
> ---
>
> v2 -> v3: extend lock range to protect csdev->enable for link devices.
>           Add fixes tag.
>
> ---
>  drivers/hwtracing/coresight/coresight.c | 12 +++++++++++-
>  include/linux/coresight.h               |  3 +++
>  2 files changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index 55db77f6410b..c069ada151b8 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -256,6 +256,7 @@ static int coresight_enable_link(struct coresight_device *csdev,
>         int ret;
>         int link_subtype;
>         int refport, inport, outport;
> +       unsigned long flags;
>
>         if (!parent || !child)
>                 return -EINVAL;
> @@ -274,17 +275,20 @@ static int coresight_enable_link(struct coresight_device *csdev,
>         if (refport < 0)
>                 return refport;
>
> +       spin_lock_irqsave(&csdev->spinlock, flags);
>         if (atomic_inc_return(&csdev->refcnt[refport]) == 1) {
>                 if (link_ops(csdev)->enable) {
>                         ret = link_ops(csdev)->enable(csdev, inport, outport);
>                         if (ret) {
>                                 atomic_dec(&csdev->refcnt[refport]);
> +                               spin_unlock_irqrestore(&csdev->spinlock, flags);
>                                 return ret;
>                         }
>                 }
>         }
>
>         csdev->enable = true;
> +       spin_unlock_irqrestore(&csdev->spinlock, flags);
>
>         return 0;
>  }
> @@ -296,6 +300,7 @@ static void coresight_disable_link(struct coresight_device *csdev,
>         int i, nr_conns;
>         int link_subtype;
>         int refport, inport, outport;
> +       unsigned long flags;
>
>         if (!parent || !child)
>                 return;
> @@ -315,16 +320,20 @@ static void coresight_disable_link(struct coresight_device *csdev,
>                 nr_conns = 1;
>         }
>
> +       spin_lock_irqsave(&csdev->spinlock, flags);
>         if (atomic_dec_return(&csdev->refcnt[refport]) == 0) {
>                 if (link_ops(csdev)->disable)
>                         link_ops(csdev)->disable(csdev, inport, outport);
>         }
>
>         for (i = 0; i < nr_conns; i++)
> -               if (atomic_read(&csdev->refcnt[i]) != 0)
> +               if (atomic_read(&csdev->refcnt[i]) != 0) {
> +                       spin_unlock_irqrestore(&csdev->spinlock, flags);
>                         return;
> +               }
>
>         csdev->enable = false;
> +       spin_unlock_irqrestore(&csdev->spinlock, flags);
>  }
>
>  static int coresight_enable_source(struct coresight_device *csdev, u32 mode)
> @@ -1225,6 +1234,7 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
>         csdev->subtype = desc->subtype;
>         csdev->ops = desc->ops;
>         csdev->orphan = false;
> +       spin_lock_init(&csdev->spinlock);

Your patch will work and I see the problem it is addressing.  I
contemplated doing exactly the same thing for sink devices but
couldn't due to memory management issues.  In the end I moved the
reference counting inside each driver where it could be guarded by
drvdata->spinlock.

I suggest to do the same thing for links to avoid dealing with two
different ways of doing things.  As such we could get rid of the
"refport" thing I never liked in coresight_enable_link(), invariably
call link_ops()->enable() and let each driver deal with its own port
management.  The same logic applies to the disable() path.

The patch isn't difficult to do but does go deeper in each link
drivers (ETF, funnel, replicator).  Let me know if you are not
comfortable with the idea and I will see what I can do on my side.

Thanks,
Mathieu

>
>         csdev->dev.type = &coresight_dev_type[desc->type];
>         csdev->dev.groups = desc->groups;
> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> index a2b68823717b..dd28d9ab841d 100644
> --- a/include/linux/coresight.h
> +++ b/include/linux/coresight.h
> @@ -9,6 +9,7 @@
>  #include <linux/device.h>
>  #include <linux/perf_event.h>
>  #include <linux/sched.h>
> +#include <linux/spinlock.h>
>
>  /* Peripheral id registers (0xFD0-0xFEC) */
>  #define CORESIGHT_PERIPHIDR4   0xfd0
> @@ -153,6 +154,7 @@ struct coresight_connection {
>   *             activated but not yet enabled.  Enabling for a _sink_
>   *             appens when a source has been selected for that it.
>   * @ea:                Device attribute for sink representation under PMU directory.
> + * @spinlock:  Serialize enabling/disabling this device.
>   */
>  struct coresight_device {
>         struct coresight_platform_data *pdata;
> @@ -166,6 +168,7 @@ struct coresight_device {
>         /* sink specific fields */
>         bool activated; /* true only if a sink is part of a path */
>         struct dev_ext_attribute *ea;
> +       spinlock_t spinlock;
>  };
>
>  /*
> --
> 2.23.0.rc1.153.gdeed80330f-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
