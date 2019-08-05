Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E607D81D04
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 15:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wsS0K+7Pb7v7QB06J4Rl5OYWzymtUy30dycVsJlCPc=; b=a3dNEeyTvICS4k
	pmHkqaaI0kUcfbLzc1esAnAItgGs4CZnjr3r1KJqRsddzi0iaXJJERldjF8PysadrBpvlHerPFf3u
	COEQy/TaZz+AnnhMEYxeFYk4pYpiXbudlJGfiLt6aI5QcQva+XUErmaec/6oxKBZsaPxcnrLV0RgU
	FvLYseyD5zDyMBkMAdnuuxk8JB4IHVogF78x8jSjeVv74huumyCv26HSMvdasKRrveID3Cz9lULGP
	VRemmvX+MrNsolvAYEjLXWNKQqPWiLJxy1jE0vSzpao5UWDyL6HgJPm7J8hOHtINRnjs85kPeI/gt
	kk4B3d7qVGOL1xoQkKKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hud2f-0003zD-42; Mon, 05 Aug 2019 13:28:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hud2U-0003yF-Rj
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 13:28:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 602A1337;
 Mon,  5 Aug 2019 06:28:37 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 279043F706;
 Mon,  5 Aug 2019 06:28:35 -0700 (PDT)
Date: Mon, 5 Aug 2019 14:28:33 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Etienne Carriere <etienne.carriere@linaro.org>
Subject: Re: [PATCH 2/5] firmware: arm_scmi: Make use SCMI v2.0 fastchannel
 for performance protocol
Message-ID: <20190805132833.GC627@e107155-lin>
References: <20190726135954.11078-1-sudeep.holla@arm.com>
 <20190726135954.11078-3-sudeep.holla@arm.com>
 <CAN5uoS-dgtz55O+AAxEFkgtijpHj_-NSy7SkNRAkhEJN5v4PWA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAN5uoS-dgtz55O+AAxEFkgtijpHj_-NSy7SkNRAkhEJN5v4PWA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_062839_008983_81AAB55C 
X-CRM114-Status: GOOD (  22.69  )
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
Cc: Peng Fan <peng.fan@nxp.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>, wesleys@xilinx.com,
 Ionela Voinescu <Ionela.Voinescu@arm.com>, aidapala@qti.qualcomm.com,
 Sudeep Holla <sudeep.holla@arm.com>, linux-kernel@vger.kernel.org,
 Saeed Nowshadi <saeed.nowshadi@xilinx.com>,
 Quentin Perret <Quentin.Perret@arm.com>, Bo Zhang <bozhang.zhang@broadcom.com>,
 Felix Burton <fburton@xilinx.com>, Jim Quinlan <james.quinlan@broadcom.com>,
 Chris Redpath <Chris.Redpath@arm.com>, pajay@qti.qualcomm.com,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 03:16:41PM +0200, Etienne Carriere wrote:
> On Fri, 26 Jul 2019 at 16:00, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > SCMI v2.0 adds support for "FastChannel" which do not use a message
> > header as they are specialized for a single message.
> >
> > Only PERFORMANCE_LIMITS_{SET,GET} and PERFORMANCE_LEVEL_{SET,GET}
> > commands are supported over fastchannels. As they are optional, they
> > need to be discovered by PERFORMANCE_DESCRIBE_FASTCHANNEL command.
> > Further {LIMIT,LEVEL}_SET commands can have optional doorbell support.
> >
> > Add support for making use of these fastchannels.
> >
> > Cc: Ionela Voinescu <Ionela.Voinescu@arm.com>
> > Cc: Chris Redpath <Chris.Redpath@arm.com>
> > Cc: Quentin Perret <Quentin.Perret@arm.com>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/firmware/arm_scmi/perf.c | 104 +++++++++++++++++++++++++++++--
> >  1 file changed, 100 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
> > index 6cce3e82e81e..b9144efbd6fb 100644
> > --- a/drivers/firmware/arm_scmi/perf.c
> > +++ b/drivers/firmware/arm_scmi/perf.c
> > @@ -8,6 +8,7 @@
> >  #include <linux/bits.h>
> >  #include <linux/of.h>
> >  #include <linux/io.h>
> > +#include <linux/io-64-nonatomic-hi-lo.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/pm_opp.h>
> >  #include <linux/sort.h>
> > @@ -293,7 +294,42 @@ scmi_perf_describe_levels_get(const struct scmi_handle *handle, u32 domain,
> >         return ret;
> >  }
> >
> > -static int scmi_perf_limits_set(const struct scmi_handle *handle, u32 domain,
> > +#define SCMI_PERF_FC_RING_DB(doorbell, w)              \
>
> Suggest to reformat into a macro style:
>     #define SCMI_PERF_FC_RING_DB(doorbell, w)              \
>         do { \
>                 (...) \
>         } while (0)
>

Sure I can try that.

> > +{                                                      \
> > +       u##w val = 0;                                   \
> > +       struct scmi_fc_db_info *db = doorbell;          \
> > +                                                       \
> > +       if ((db)->mask)                                 \
>
> remove parentheses. I would say, could simply remove `if (db->mask)` here.

Ah, missed to drop this one. We can avoid reading the value if mask = 0,
so I prefer to keep it.
>
> > +               val = ioread##w(db->addr) & db->mask;   \
> > +       iowrite##w((u##w)db->set | val, db->addr);      \
> > +}
> > +
> > +static void scmi_perf_fc_ring_db(struct scmi_fc_db_info *db)
> > +{
> > +       if (!db || !db->addr)
> > +               return;
> > +
> > +       if (db->width == 1)
> > +               SCMI_PERF_FC_RING_DB(db, 8)
> > +       else if (db->width == 2)
> > +               SCMI_PERF_FC_RING_DB(db, 16)
> > +       else if (db->width == 4)
> > +               SCMI_PERF_FC_RING_DB(db, 32)
> > +       else /* db->width == 8 */
> > +#ifdef CONFIG_64BIT
> > +               SCMI_PERF_FC_RING_DB(db, 64)
> > +#else
> > +       {
> > +               u64 val = 0;
> > +
> > +               if (db->mask)
> > +                       val = ioread64_hi_lo(db->addr) & db->mask;
> > +               iowrite64_hi_lo(db->set, db->addr);
>
> Is `value` missing here?
> Why not using SCMI_PERF_FC_RING_DB(db, 64) here?
>

I am still using it. Just if CONFIG_64BIT is enabled and  io{read,write}64
are defined. ARM32/MIPS and other 32-bit platform build might fail
otherwise. I don't want to restrict SCMI to 64-bit platforms only.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
