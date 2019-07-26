Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7291A7644B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LnrR2ENXmOOcLZx6goa1MOs8Fm/CAgl6Z0dlr3l6Uxk=; b=HW0tyhnVXNMRUx
	CbpdTHphwLKJAqm43vyUGzbPYRn9oA/SG8kLwUTOmnQfnjUpheiTndiljl5u3/KRK3v5QpYd8UX8Y
	lccH+22Jx7+a+pV3zeAhQ8Iciy+hTaD6LVVjGeew4Be/S+R24UvlYzR+uY/pRfnDr8j9aYzao1Str
	t1kSTVMsKFEl988mKd1e16xkA5N0LdRk5YKxXQbKnDXt9hEN/7TNbw5TSEO918YfDnK94VQNyr3GX
	VFuoaRkvMUU1ZVQ9/wiswRtM2T4J9T2as83IDSHGMukEoO/wnC0ciH9FnpDPpJzHMe1a+AeAiCtnp
	l7lPXkZiCxoihkkITrCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyLu-0008SP-8A; Fri, 26 Jul 2019 11:25:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyLC-0008Rx-7M
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:24:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18C37344;
 Fri, 26 Jul 2019 04:24:47 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8BA5E3F694;
 Fri, 26 Jul 2019 04:24:46 -0700 (PDT)
Date: Fri, 26 Jul 2019 12:24:45 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] coresight: etm4x: lazily allocate memory for save_state
Message-ID: <20190726112444.GA56241@e119886-lin.cambridge.arm.com>
References: <20190711160114.634-6-andrew.murray@arm.com>
 <20190712150056.15775-1-andrew.murray@arm.com>
 <CANLsYkyE2erOeSM69XTVL-oizFj6WhXLcSKGT2qnFr0ArNskzA@mail.gmail.com>
 <88f1e83b-8f16-a5bf-d68e-b840a4302f90@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <88f1e83b-8f16-a5bf-d68e-b840a4302f90@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_042450_353592_D6F4F491 
X-CRM114-Status: GOOD (  25.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mathieu.poirier@linaro.org, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, leo.yan@linaro.org, Sudeep.Holla@arm.com,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 10:05:37AM +0100, Suzuki K Poulose wrote:
> 
> 
> On 22/07/2019 21:32, Mathieu Poirier wrote:
> > Hi Andrew,
> > 
> > Sorry for the late reply - you patch got lost under the pile.
> > 
> > On Fri, 12 Jul 2019 at 09:01, Andrew Murray <andrew.murray@arm.com> wrote:
> > > 
> > > I had intended to lazily allocate memory for the save_state structure when
> > > it is first used. Following is a patch that I will squash into "[PATCH v3 5/6]
> > > coresight: etm4x: save/restore state across CPU low power states" on my
> > > next respin. I thought I'd share it here to get some feedback along with
> > > the rest of v3.
> > > 
> > > Thanks,
> > > 
> > > Andrew Murray
> > > 
> > > ---
> > >   drivers/hwtracing/coresight/coresight-etm4x.c | 14 +++++++++++---
> > >   drivers/hwtracing/coresight/coresight-etm4x.h |  2 +-
> > >   2 files changed, 12 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> > > index b0bd8158bf13..cd02372194bc 100644
> > > --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> > > +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> > > @@ -1112,6 +1112,13 @@ static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
> > >          struct etmv4_save_state *state;
> > >          struct device *etm_dev = &drvdata->csdev->dev;
> > > 
> > > +       if (!drvdata->save_state) {
> > > +               drvdata->save_state = devm_kmalloc(etm_dev,
> > > +                               sizeof(struct etmv4_save_state), GFP_KERNEL);
> > 
> > GFP_KERNEL may sleep and will not work in the context where
> > etm4_cpu_save() is called.
> 
> Thats right and it is not worth making this GFP_ATOMIC either. We could simply
> decide this at probe time or when the save_restore is modified dynamically via
> callbacks.

I think it is simpler to change this to GFP_ATOMIC and leave it where it is.

As pm_save_enable can change at run time, we can't rely solely on allocating
memory for this at probe time. We'd have to allocate memory in two places 1)
a module_parm_cb callback for when the pm_save_enable parameter changes at
run-time and 2) at probe time to find out the initial value of the
pm_save_enable which may be set by kernel command line.

As the module_parm_cb callback is file-static we wouldn't know which drvdata
to allocate the memory for. We could allocate it for any etmdrvdata member
that isn't NULL - but this seems to add a lot of complexity - is this worth
it to avoid a GFP_ATOMIC allocation? (If we fail the allocation we can return
NOTIFY_BAD and stop the PM event.)

Thanks,

Andrew Murray

> 
> Suzuki
> 
> > 
> > Thanks,
> > Mathieu
> > 
> > > +               if (!drvdata->save_state)
> > > +                       return -ENOMEM;
> > > +       }
> > > +
> > >          /*
> > >           * As recommended by 3.4.1 ("The procedure when powering down the PE")
> > >           * of ARM IHI 0064D
> > > @@ -1134,7 +1141,7 @@ static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
> > >                  goto out;
> > >          }
> > > 
> > > -       state = &drvdata->save_state;
> > > +       state = drvdata->save_state;
> > > 
> > >          state->trcprgctlr = readl(drvdata->base + TRCPRGCTLR);
> > >          state->trcprocselr = readl(drvdata->base + TRCPROCSELR);
> > > @@ -1234,9 +1241,10 @@ static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
> > >   static void etm4_cpu_restore(struct etmv4_drvdata *drvdata)
> > >   {
> > >          int i;
> > > -       struct etmv4_save_state *state;
> > > +       struct etmv4_save_state *state = drvdata->save_state;
> > > 
> > > -       state = &drvdata->save_state;
> > > +       if (WARN_ON_ONCE(!state))
> > > +               return;
> > > 
> > >          CS_UNLOCK(drvdata->base);
> > > 
> > > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
> > > index c31634c64f87..a70cafbbb8cf 100644
> > > --- a/drivers/hwtracing/coresight/coresight-etm4x.h
> > > +++ b/drivers/hwtracing/coresight/coresight-etm4x.h
> > > @@ -441,7 +441,7 @@ struct etmv4_drvdata {
> > >          bool                            atbtrig;
> > >          bool                            lpoverride;
> > >          struct etmv4_config             config;
> > > -       struct etmv4_save_state         save_state;
> > > +       struct etmv4_save_state         *save_state;
> > >          bool                            state_needs_restore;
> > >   };
> > > 
> > > --
> > > 2.21.0
> > > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
