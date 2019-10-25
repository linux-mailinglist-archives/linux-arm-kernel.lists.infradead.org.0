Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D54E4EB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 16:13:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAaQyOPxhKXDZxMWbpScmi3lN1D56TQx0U8yE1HZnMw=; b=WM8Kh+mP+GjK4k
	yjUl23wiN66zBswLlQkkgOF4ALq6Mt2PokY1V5RfQcnqqYCQlXnZFMPp7rRjcVQ83kXpwYu3sehnj
	Ceo/1NmP78H8i5rUEDhvr2+G89z3FwSzFarpAWloAZnHNwJjsrNv6FS4cCBn6hKAMZZSaBDDQAPDI
	Ymq/JTSeu4TRvGgIXszs09INwlgkUdi2IsYhSyyuUFzhDz1xqE2c+0X73Fb5G9323d9RB9YB5PODQ
	s8HyX7j51XRFReKqrx5u38GpKz0iykYOqGUg25km/H58YGXE4Zcno9cKt8S/eyaFhQmGT7RAZX9Iv
	KWS/UZ2OrGamj6akHfHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO0Lh-0003FD-J8; Fri, 25 Oct 2019 14:13:53 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO0LX-0003Ef-A5
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 14:13:44 +0000
Received: by mail-vs1-xe44.google.com with SMTP id y129so1539044vsc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 07:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uN8HSzjVWYgOa/f9HwJLZghBIB5LPa4au9Qp6QOM0oM=;
 b=bYS+y1MXgMPSuAWl/Pw+O36xYjUIvDi9LmeppA4i16Ap9cInMC5v97zMSThnwOwkjG
 G2R98nKwmRhuQLaCxO9vrs2HbOTFJZHZpG7DrkUY3bH1pCHq/QbLn8lTKAwuLAgCKShc
 4ivCigJgcaIc1cTw4U/fd2FuRFK4kkU/nc6vWFttfGBxZtbBCdROsKcqDLrzGKbpvrUs
 77BYTPAlKpSIq/S808KRqib4oAz/cBtdSKIcr7wgp8/wJsiyzd1lZzk80W3RkhDiLuxF
 LFZwMV9dUXwKr9wD+9Im/C7HqsbimiepPkPgw5VR/iu5I87i7i4eo83eDqHqOUSvCQPR
 5bYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uN8HSzjVWYgOa/f9HwJLZghBIB5LPa4au9Qp6QOM0oM=;
 b=ArthcGA88HhdUkowvgewCYhDBiNTzwLZ/H++S5aSd5vaac2/AR9cycBpUUEtJpj0KU
 NOeK19FIS+GhlAof24iqadpNmJIL5sr91qlQVRhzdUCIRYSi4p4grQt2WRPc9GIByScU
 DvMPeZ+bxXXbxjcSWHR4WCz6x+KqP+cZe/6OVujL1/LdZrujkycjiZHjbhjn8N5siaHT
 yw2DbXZedCoKPEwQPc2lCSuZmpNlMw/wbYp5Kz0/bLke0tcsL8fCAUuHqI2iGftUAIcV
 jhFoobNbzpM0aEW5PxU5EZ4QbLejvdKnpznSLIwBLc/M+Mf900GmAKe2B5muRipeQW+z
 ndyA==
X-Gm-Message-State: APjAAAXjj0pncVYh8HQV2GACYz56m5MpE6DHP0kcOfPcMpY+moyJqaoy
 X9jsQIqAzXhnqtzk2cAa0hH/RLA2Frur19s2SryWGA==
X-Google-Smtp-Source: APXvYqwYv7TgejqODhekRI9dDIIRnGtrb3/+jOe+VBk6FoXTRU0DV374nPjN0wfCLfVDZUOhMqwIhHhSA35PTnmR0zY=
X-Received: by 2002:a67:7ac5:: with SMTP id v188mr2030243vsc.191.1572012821656; 
 Fri, 25 Oct 2019 07:13:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-13-ulf.hansson@linaro.org>
 <20191024163257.GC22036@bogus>
 <CAPDyKFpwrfHj-az5x5dW92VAxi887FgWW6GKhfPv_kuj14TDjQ@mail.gmail.com>
 <20191025082852.GA4867@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191025082852.GA4867@e121166-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 25 Oct 2019 16:13:05 +0200
Message-ID: <CAPDyKFqpSa6kudba-ezt07fDR=0d216KqYOTcW+5QPVa_DMrKA@mail.gmail.com>
Subject: Re: [PATCH 12/13] cpuidle: psci: Manage runtime PM in the idle path
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_071343_354714_0A66EF24 
X-CRM114-Status: GOOD (  25.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, 25 Oct 2019 at 10:29, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Thu, Oct 24, 2019 at 07:00:38PM +0200, Ulf Hansson wrote:
> > On Thu, 24 Oct 2019 at 18:33, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Thu, Oct 10, 2019 at 01:39:36PM +0200, Ulf Hansson wrote:
> > > > In case we have succeeded to attach a CPU to its PM domain, let's deploy
> > > > runtime PM support for the corresponding attached device, to allow the CPU
> > > > to be powered-managed accordingly.
> > > >
> > > > To set the triggering point for when runtime PM reference counting should
> > > > be done, let's store the index of deepest idle state for the CPU in the per
> > > > CPU struct. Then use this index to compare the selected idle state index
> > > > when entering idle, as to understand whether runtime PM reference counting
> > > > is needed or not.
> > > >
> > > > Note that, from the hierarchical point view, there may be good reasons to
> > > > do runtime PM reference counting even on shallower idle states, but at this
> > > > point this isn't supported, mainly due to limitations set by the generic PM
> > > > domain.
> > > >
> > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > ---
> > > >  drivers/cpuidle/cpuidle-psci.c | 21 +++++++++++++++++++--
> > > >  1 file changed, 19 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > > > index 1510422c7a53..0919b40c1a85 100644
> > > > --- a/drivers/cpuidle/cpuidle-psci.c
> > > > +++ b/drivers/cpuidle/cpuidle-psci.c
> > > > @@ -16,6 +16,7 @@
> > > >  #include <linux/of.h>
> > > >  #include <linux/of_device.h>
> > > >  #include <linux/psci.h>
> > > > +#include <linux/pm_runtime.h>
> > > >  #include <linux/slab.h>
> > > >
> > > >  #include <asm/cpuidle.h>
> > > > @@ -25,6 +26,7 @@
> > > >
> > > >  struct psci_cpuidle_data {
> > > >       u32 *psci_states;
> > > > +     u32 rpm_state_id;
> > > >       struct device *dev;
> > > >  };
> > > >
> > > > @@ -50,14 +52,28 @@ static int psci_enter_idle_state(struct cpuidle_device *dev,
> > > >                               struct cpuidle_driver *drv, int idx)
> > > >  {
> > > >       int ret;
> > > > -     u32 *states = __this_cpu_read(psci_cpuidle_data.psci_states);
> > > > -     u32 state = psci_get_domain_state();
> > > > +     struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
> > > > +     u32 *states = data->psci_states;
> > > > +     struct device *pd_dev = data->dev;
> > > > +     bool runtime_pm = (pd_dev && data->rpm_state_id == idx);
> > > > +     u32 state;
> > >
> > > Wonder if we can have separate psci_enter_idle_state for OSI mode so
> > > that all these runtime extra check can be reduced ? It will also make
> > > sure there's no additional latency for PC mode because of OSI.
> >
> > Good idea, that's the plan. See previous answer.
> >
> > Perhaps if I add a patch on top, implementing your suggestion, would
> > you be happy with that?
>
> Separating idle entry functions was the main idea behind moving PSCI
> CPUidle into drivers/cpuidle, I don't think that's complicated to
> change and given that the series is not queued yet we can make these
> changes in the series itself rather than on top.

Okay, no problem. I fold in a patch (or amend existing ones, if that
is better) into the series that addresses this.

Thanks for reviewing and enjoy your weekend!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
