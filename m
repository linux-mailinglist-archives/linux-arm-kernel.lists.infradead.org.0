Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14042E45B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqxQ3xrPsD6Egs2joIIFLOr9vvQqxtaLOTMORHSawqQ=; b=NFrYaRGdLFH8Ry
	81OlXORvGAhLjKsTayV5X3jUUG8BVYV0fwiXyzZtBsG8duOjpr+POKcbqMzMgKe+WvbJm4uAHWQZR
	A6zx0NjB/iAr7yXqDYqvMDOKBwChTMbraqCtP+y2xvJbAGloklt8gJLHL/DRDuQX1YTdl0doQsZhD
	wxY3uJCmcSNc3P3hXP/qU1VrSdZcUIKVZP6G/KN14puAyhoN/lQ4oIUWnn4ICsc4ssfWCeULIG5d6
	GnPWysbKpj/YJa9KALVGkJBCWEy7hP96DuDR6yXT+EsO2coEwhkgsFpNrSEs5Q1P/lh0SfdzxM1XF
	1g3xTLE7dI+2qoe+boyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNuyI-0006sK-Uk; Fri, 25 Oct 2019 08:29:22 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNuy9-0006qM-4F
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:29:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 998A328;
 Fri, 25 Oct 2019 01:29:02 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CC5DB3F718;
 Fri, 25 Oct 2019 01:29:00 -0700 (PDT)
Date: Fri, 25 Oct 2019 09:28:53 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 12/13] cpuidle: psci: Manage runtime PM in the idle path
Message-ID: <20191025082852.GA4867@e121166-lin.cambridge.arm.com>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-13-ulf.hansson@linaro.org>
 <20191024163257.GC22036@bogus>
 <CAPDyKFpwrfHj-az5x5dW92VAxi887FgWW6GKhfPv_kuj14TDjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFpwrfHj-az5x5dW92VAxi887FgWW6GKhfPv_kuj14TDjQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_012913_258258_8E2103B0 
X-CRM114-Status: GOOD (  24.59  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 07:00:38PM +0200, Ulf Hansson wrote:
> On Thu, 24 Oct 2019 at 18:33, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Thu, Oct 10, 2019 at 01:39:36PM +0200, Ulf Hansson wrote:
> > > In case we have succeeded to attach a CPU to its PM domain, let's deploy
> > > runtime PM support for the corresponding attached device, to allow the CPU
> > > to be powered-managed accordingly.
> > >
> > > To set the triggering point for when runtime PM reference counting should
> > > be done, let's store the index of deepest idle state for the CPU in the per
> > > CPU struct. Then use this index to compare the selected idle state index
> > > when entering idle, as to understand whether runtime PM reference counting
> > > is needed or not.
> > >
> > > Note that, from the hierarchical point view, there may be good reasons to
> > > do runtime PM reference counting even on shallower idle states, but at this
> > > point this isn't supported, mainly due to limitations set by the generic PM
> > > domain.
> > >
> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > ---
> > >  drivers/cpuidle/cpuidle-psci.c | 21 +++++++++++++++++++--
> > >  1 file changed, 19 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > > index 1510422c7a53..0919b40c1a85 100644
> > > --- a/drivers/cpuidle/cpuidle-psci.c
> > > +++ b/drivers/cpuidle/cpuidle-psci.c
> > > @@ -16,6 +16,7 @@
> > >  #include <linux/of.h>
> > >  #include <linux/of_device.h>
> > >  #include <linux/psci.h>
> > > +#include <linux/pm_runtime.h>
> > >  #include <linux/slab.h>
> > >
> > >  #include <asm/cpuidle.h>
> > > @@ -25,6 +26,7 @@
> > >
> > >  struct psci_cpuidle_data {
> > >       u32 *psci_states;
> > > +     u32 rpm_state_id;
> > >       struct device *dev;
> > >  };
> > >
> > > @@ -50,14 +52,28 @@ static int psci_enter_idle_state(struct cpuidle_device *dev,
> > >                               struct cpuidle_driver *drv, int idx)
> > >  {
> > >       int ret;
> > > -     u32 *states = __this_cpu_read(psci_cpuidle_data.psci_states);
> > > -     u32 state = psci_get_domain_state();
> > > +     struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
> > > +     u32 *states = data->psci_states;
> > > +     struct device *pd_dev = data->dev;
> > > +     bool runtime_pm = (pd_dev && data->rpm_state_id == idx);
> > > +     u32 state;
> >
> > Wonder if we can have separate psci_enter_idle_state for OSI mode so
> > that all these runtime extra check can be reduced ? It will also make
> > sure there's no additional latency for PC mode because of OSI.
> 
> Good idea, that's the plan. See previous answer.
> 
> Perhaps if I add a patch on top, implementing your suggestion, would
> you be happy with that?

Separating idle entry functions was the main idea behind moving PSCI
CPUidle into drivers/cpuidle, I don't think that's complicated to
change and given that the series is not queued yet we can make these
changes in the series itself rather than on top.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
