Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE1B6D34E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 19:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mNvPvByd8mfgZ4QYfsEv/VOr/7Qwo62mKBioKn9d6Jo=; b=WYDfsURrl70o/MZnk1wSCPwqz
	D1T3fNHN9I8KA5gsML+MfHPZ+KSBweEqIzfPWEOCT/pojbVbZD6KsJcvxgsEIM6BImABvmzU9hp6x
	oR0F5l5OqgVtRUF9+hX2r3Dku/jyrOtMLNE4pRHN5uGKJMkC1kRQYZqkupCS4Ja9nT+ycjH0YuS6y
	/loHqnq7PALt2SxDL09y8G4tn7+vA2O0cj0oESTSygYaX1N0c2jeDZs8SUMERBKbA8JaBH7rs2IIb
	d1prCcFo47nhjJt8blYugvD2KwmZx710r9VNtnPc6HeEftzD9cQ++FYr124+wCtWyXxIf9gXK//qe
	33evGNiBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAfO-0002i2-Mk; Thu, 18 Jul 2019 17:58:06 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAf7-0002hP-Fi
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 17:57:51 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1865560F3F; Thu, 18 Jul 2019 17:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563472669;
 bh=KKMAgVLpi8fqilBpe9pVydnrrpeC1pms96hKdG3hV9w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Be3xx1B4ss23WzbsoFzIS7rnfeb1prsQ463auRnyyVrGEnziUy3UVnf7oca9QRIjf
 NFc37Nlg4YJupLH3BhqP5VJBFgLbb3BSjnCehEWGKnQXOPGTYujHgHeYZTj0syCtJU
 sqxbcco7YlGD7UH4jN4FSurmg+YLuZgwfx9IapOc=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from localhost (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: ilina@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 54E166044E;
 Thu, 18 Jul 2019 17:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563472667;
 bh=KKMAgVLpi8fqilBpe9pVydnrrpeC1pms96hKdG3hV9w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R5vFgv+TLCawxt+GhEHgdsaP9W2LnbSY3tF3m2Ddr8VXoBVS6lM2alhBNxLV0FoQH
 dm0HJ54MTaQyPm+wSxsEoavrybOqTkT6H5Jl5CpViRADO3FZhMB58RYf58dt9k+141
 bETuYMzUtA25+djC7VWtRFREGjOSmNgUYxedhyoU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 54E166044E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=ilina@codeaurora.org
Date: Thu, 18 Jul 2019 11:57:46 -0600
From: Lina Iyer <ilina@codeaurora.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 09/18] drivers: firmware: psci: Add support for PM
 domains using genpd
Message-ID: <20190718175746.GE25567@codeaurora.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-10-ulf.hansson@linaro.org>
 <20190716150533.GD7250@e107155-lin>
 <CAPDyKFqaE2L419siFY=LGDsotAnpBt+H_vpmG62AqQw8UQJZJA@mail.gmail.com>
 <20190718131913.GB28633@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718131913.GB28633@e107155-lin>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_105749_565193_53031C98 
X-CRM114-Status: GOOD (  35.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Lina Iyer <lina.iyer@linaro.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18 2019 at 07:19 -0600, Sudeep Holla wrote:
>On Thu, Jul 18, 2019 at 01:04:03PM +0200, Ulf Hansson wrote:
>> On Tue, 16 Jul 2019 at 17:05, Sudeep Holla <sudeep.holla@arm.com> wrote:
>> >
>> > On Mon, May 13, 2019 at 09:22:51PM +0200, Ulf Hansson wrote:
>> > > When the hierarchical CPU topology layout is used in DT, we need to setup
>> > > the corresponding PM domain data structures, as to allow a CPU and a group
>> > > of CPUs to be power managed accordingly. Let's enable this by deploying
>> > > support through the genpd interface.
>> > >
>> > > Additionally, when the OS initiated mode is supported by the PSCI FW, let's
>> > > also parse the domain idle states DT bindings as to make genpd responsible
>> > > for the state selection, when the states are compatible with
>> > > "domain-idle-state". Otherwise, when only Platform Coordinated mode is
>> > > supported, we rely solely on the state selection to be managed through the
>> > > regular cpuidle framework.
>> > >
>> > > If the initialization of the PM domain data structures succeeds and the OS
>> > > initiated mode is supported, we try to switch to it. In case it fails,
>> > > let's fall back into a degraded mode, rather than bailing out and returning
>> > > an error code.
>> > >
>> > > Due to that the OS initiated mode may become enabled, we need to adjust to
>> > > maintain backwards compatibility for a kernel started through a kexec call.
>> > > Do this by explicitly switch to Platform Coordinated mode during boot.
>> > >
>> > > Finally, the actual initialization of the PM domain data structures, is
>> > > done via calling the new shared function, psci_dt_init_pm_domains().
>> > > However, this is implemented by subsequent changes.
>> > >
>> > > Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
>> > > Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
>> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
>> > > ---
>> > >
>> > > Changes:
>> > >       - Simplify code setting domain_state at power off.
>> > >       - Use the genpd ->free_state() callback to manage freeing of states.
>> > >       - Fixup a bogus while loop.
>> > >
>> > > ---
>> > >  drivers/firmware/psci/Makefile         |   2 +-
>> > >  drivers/firmware/psci/psci.c           |   7 +-
>> > >  drivers/firmware/psci/psci.h           |   5 +
>> > >  drivers/firmware/psci/psci_pm_domain.c | 268 +++++++++++++++++++++++++
>> > >  4 files changed, 280 insertions(+), 2 deletions(-)
>> > >  create mode 100644 drivers/firmware/psci/psci_pm_domain.c
>> > >
>> >
>> > [...]
>> >
>> > >  #endif /* __PSCI_H */
>> > > diff --git a/drivers/firmware/psci/psci_pm_domain.c b/drivers/firmware/psci/psci_pm_domain.c
>> > > new file mode 100644
>> > > index 000000000000..3c6ca846caf4
>> > > --- /dev/null
>> > > +++ b/drivers/firmware/psci/psci_pm_domain.c
>> > > @@ -0,0 +1,268 @@
>> > > +// SPDX-License-Identifier: GPL-2.0
>> > > +/*
>> > > + * PM domains for CPUs via genpd - managed by PSCI.
>> > > + *
>> > > + * Copyright (C) 2019 Linaro Ltd.
>> > > + * Author: Ulf Hansson <ulf.hansson@linaro.org>
>> > > + *
>> > > + */
>> > > +
>> >
>> > [...]
>> >
>> > > +static int psci_pd_power_off(struct generic_pm_domain *pd)
>> > > +{
>> > > +     struct genpd_power_state *state = &pd->states[pd->state_idx];
>> > > +     u32 *pd_state;
>> > > +
>> > > +     /* If we have failed to enable OSI mode, then abort power off. */
>> > > +     if (psci_has_osi_support() && !osi_mode_enabled)
>> > > +             return -EBUSY;
>> > > +
>> > > +     if (!state->data)
>> > > +             return 0;
>> > > +
>> > > +     /* When OSI mode is enabled, set the corresponding domain state. */
>> > > +     pd_state = state->data;
>> > > +     psci_set_domain_state(*pd_state);
>> >
>> > I trying to understand how would this scale to level 2(cluster of
>> > clusters or for simply system). The current code for psci_set_domain_state
>> > just stores the value @pd_state into per-cpu domain_state. E.g.: Now if
>> > the system level pd is getting called after cluster PD, it will set the
>> > domain state to system level PD state. It won't work with original
>> > format and it may work with extended format if it's carefully crafted.
>> > In short, the point is just over-writing domain_state is asking for
>> > troubles IMO.
>>
>> Thanks for spotting this!
>>
>> While walking upwards in the PM domain topology, I thought I was ORing
>> the domain states, but clearly the code isn't doing that.
>>
>> In principle we need to do the below instead.
>>
>> pd_state = state->data;
>> composite_pd_state = *pd_state | psci_get_domain_state();
>> psci_set_domain_state(composite_pd_state);
>>
>
>Yes 2 different issues here:
>1. The direct assignment overwriting the value is problem which you agree.
>2. The OR logic on it's own is bit not so clear from the specification.
>   Since firmware authors need to be aware of this to make all these
>   work. So it's not implicit, either we set this requirement in form
>   of binding. We were also thinking of stating composite state in the
>   DT, still just a thought, need to come up with examples/illustrations.
>
It is generally very obvious to firmware authors to map hardware
definitions to specific bits in the state param. If a cluster component
has more than on/off state, more bits are assigned to the define the
idle states of the component.
Addition is also an option, but there are enough bits compared to the
hardware components that we have in each state, that it hasn't been a
problem.

--Lina


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
