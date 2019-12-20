Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B8A1278D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 11:08:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z3jHGe8OnJJz2d4ChXywuRnjDRptqIxoeosrV2wZxoY=; b=Zt+FIhvtNRjDmq
	1fSiKNVC+OgN8Kp5JaRKcVYTTth/0qxtI/WZD6Jn4AflrWJD3BVBIVRuVFVZgiKWShNC8huS29fZq
	NLqNbSOCyws7dassBsvntHoMxvxXVnmoEzeKhDD82YO73dMbA9rGbUCgkifIqtTrERPz9LX8xXSo8
	tOz+srvRTQ5B927P7u4JGAxCtYV/M7WSVedhUe9Yzqj8h5AswOjWn3Olv5tf6eGq51xgRh3PYy06/
	40U0yyi/L1D/dD+5eu3fKa3V/bL1lyONRNhicZFYOormZVLfnSsz2twD45rR1xr8DMikjlR880hVl
	fMIzYpbtKNbAw8XsiV9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiFCb-0007Ae-Pl; Fri, 20 Dec 2019 10:08:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiFCI-00079K-Dw
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 10:07:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EE1F530E;
 Fri, 20 Dec 2019 02:07:49 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F17EB3F719;
 Fri, 20 Dec 2019 02:07:47 -0800 (PST)
Date: Fri, 20 Dec 2019 10:07:45 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v4 13/14] cpuidle: psci: Add support for PM domains by
 using genpd
Message-ID: <20191220100745.GB6731@bogus>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
 <20191211154343.29765-14-ulf.hansson@linaro.org>
 <20191219143427.GF20746@bogus>
 <CAPDyKFpPmtXkP6LSNWBbfyTJowjQXF39_4LN5YEcDtW1BzVw-g@mail.gmail.com>
 <20191219180629.GC21846@bogus>
 <CAPDyKFrtrkASV4d2+x+A2P=TMrnLGh4LK9nzNeqZCg71Hs2TEQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFrtrkASV4d2+x+A2P=TMrnLGh4LK9nzNeqZCg71Hs2TEQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_020750_565470_B5187B09 
X-CRM114-Status: GOOD (  34.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 11:02:40PM +0100, Ulf Hansson wrote:
> On Thu, 19 Dec 2019 at 19:06, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Thu, Dec 19, 2019 at 04:48:39PM +0100, Ulf Hansson wrote:
> > > On Thu, 19 Dec 2019 at 15:34, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > >
> > > > On Wed, Dec 11, 2019 at 04:43:42PM +0100, Ulf Hansson wrote:
> > > > > When the hierarchical CPU topology layout is used in DT and the PSCI OSI
> > > > > mode is supported by the PSCI FW, let's initialize a corresponding PM
> > > > > domain topology by using genpd. This enables a CPU and a group of CPUs,
> > > > > when attached to the topology, to be power-managed accordingly.
> > > > >
> > > > > To trigger the attempt to initialize the genpd data structures let's use a
> > > > > subsys_initcall, which should be early enough to allow CPUs, but also other
> > > > > devices to be attached.
> > > > >
> > > > > The initialization consists of parsing the PSCI OF node for the topology
> > > > > and the "domain idle states" DT bindings. In case the idle states are
> > > > > compatible with "domain-idle-state", the initialized genpd becomes
> > > > > responsible of selecting an idle state for the PM domain, via assigning it
> > > > > a genpd governor.
> > > > >
> > > > > Note that, a successful initialization of the genpd data structures, is
> > > > > followed by a call to psci_set_osi_mode(), as to try to enable the OSI mode
> > > > > in the PSCI FW. In case this fails, we fall back into a degraded mode
> > > > > rather than bailing out and returning an error code.
> > > > >
> > > > > Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> > > > > Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> > > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > > ---
> > > > >
> > > > > Changes in v4:
> > > > >       - None.
> > > > >
> > > > > ---
> > > > >  drivers/cpuidle/cpuidle-psci-domain.c | 267 ++++++++++++++++++++++++++
> > > > >  drivers/cpuidle/cpuidle-psci.c        |   4 +-
> > > > >  drivers/cpuidle/cpuidle-psci.h        |   5 +
> > > > >  3 files changed, 274 insertions(+), 2 deletions(-)
> > > > >
> > > > > diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > index 656ef3d59149..c2f94ba42222 100644
> > > > > --- a/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > @@ -7,14 +7,281 @@
> > > > >   *
> > > > >   */
> > > > >
> > > > > +#define pr_fmt(fmt) "CPUidle PSCI: " fmt
> > > > > +
> > > > >  #include <linux/cpu.h>
> > > > >  #include <linux/device.h>
> > > > >  #include <linux/kernel.h>
> > > > >  #include <linux/pm_domain.h>
> > > > >  #include <linux/pm_runtime.h>
> > > > > +#include <linux/psci.h>
> > > > > +#include <linux/slab.h>
> > > > > +#include <linux/string.h>
> > > > >
> > > > >  #include "cpuidle-psci.h"
> > > > >
> > > > > +struct psci_pd_provider {
> > > > > +     struct list_head link;
> > > > > +     struct device_node *node;
> > > > > +};
> > > > > +
> > > > > +static LIST_HEAD(psci_pd_providers);
> > > > > +static bool osi_mode_enabled;
> > > > > +
> > > > > +static int psci_pd_power_off(struct generic_pm_domain *pd)
> > > > > +{
> > > > > +     struct genpd_power_state *state = &pd->states[pd->state_idx];
> > > > > +     u32 *pd_state;
> > > > > +
> > > > > +     /* If we have failed to enable OSI mode, then abort power off. */
> > > > > +     if (!osi_mode_enabled)
> > > > > +             return -EBUSY;
> > > > > +
> > > >
> > > > Why is above check needed ? Shouldn't we have disable/remove pd of
> > > > OSI is not enabled ?
> > >
> > > Well, failing to enable OSI should in practice not happen, while it
> > > theoretically it could.
> > >
> >
> > I won't assume that. Since it's new and not tested yet, I prefer to assume
> > it can fail.
>
> Yes, I agree. Hence the degraded mode.
>
> >
> > > My approach to this has been to fall back to use a "degraded mode",
> > > which seems quite common for these kind of situations. The degraded
> > > mode means, we are preventing domain states from being used.
> > >
> >
> > But why can't we just fail registering or remove if already added.
>
> We can, but there are more problems with that than leaving this in a
> degraded mode, I think. See more below.
>
> > They are useless for "degraded mode" anyways. And it will ensure that
> > data->dev is NULL. Sorry now I see why you said it can be NULL but I
> > would rather not leave those unused genpd in place in case of error.
>
> data->dev would not be NULL in this case, because the
> dev_pm_domain_attach_by_name() which is called when we attach the CPU
> is going to return an error code, not NULL.
>
> That's because the connection is there in the DTB and thus it must
> fail, in this case it would be with -EPROBE_DEFER (waiting for a genpd
> provider to be registered).
>
> That would then lead to that the entire cpuidle-psci driver would fail
> to initiate/probe. In my opinion, I think it's better to fall back
> into a degraded mode, using all the idle states for the CPUs, but just
> preventing the cluster idle states.
>
> Just wanted to make this more clear for you to consider. I am happy to
> change in any way you suggest, but please confirm that you really want
> another behaviour than the degraded mode.
>

Sorry but if OSI set failed in firmware, it will be operating in default/
PC mode and I *don't* want to create genpd for that. It's confusing.
Even if you don't create all these genpd domains, it is still degraded
mode and we are anyway not changing that. Let me know if my understanding
is wrong here.

I am sure, DTB may get copied to different platform and the firmware may
not support OSI. I know we have logs, but creating and leaving those
genpd domains unused will be just confusing. Please change that.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
