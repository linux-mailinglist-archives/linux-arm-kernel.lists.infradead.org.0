Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 143F0151D17
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 16:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8sdlcyG4CIDznTdJNbSsh5SwEFegezp9HACcodrPLSY=; b=cCEHs1sOaWXxyi
	/Noj9x6a7kgzPh+H/VCKwe5TWz1jTjR753o70vHvsQA4+OmU1WDb6UquCAXf47/DnJ9oJlFkruPDf
	v5J4IzjvCzQhSY7V+t47IPDoO+/hVSewzkMVOMbNPAvnErpuI0Oqnu5v+hj86rQ+DFaRF9pavM6Sh
	o6r71cuWv0ri+E4DhqF9fUdqUQ4x1BtZar7HfUjxa3a7d/E9oOcnkhkKi8jzea9JBiQBNhe0zldXL
	cbrqH7jsbVCy37sjabUMBy2SmL+02/+VYAvHiwh/4DqViIyEPqK+tsrWp39ZCz3j1o7a50rwj4urO
	kDVsKbxpSn0GSJ2UR8/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz01S-0001Dc-Nl; Tue, 04 Feb 2020 15:21:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz01K-0001CZ-1y
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 15:21:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EDA41101E;
 Tue,  4 Feb 2020 07:21:42 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC71A3F52E;
 Tue,  4 Feb 2020 07:21:40 -0800 (PST)
Date: Tue, 4 Feb 2020 15:21:32 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Maulik Shah <mkshah@codeaurora.org>
Subject: Re: [PATCH v3 5/7] drivers: firmware: psci: Add hierarchical domain
 idle states converter
Message-ID: <20200204152132.GA44858@bogus>
References: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
 <1580736940-6985-6-git-send-email-mkshah@codeaurora.org>
 <20200203170832.GA38466@bogus>
 <0d7f7ade-3a1e-5428-d851-f1a886f58712@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0d7f7ade-3a1e-5428-d851-f1a886f58712@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_072146_187654_F5B143F5 
X-CRM114-Status: GOOD (  23.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: dianders@chromium.org, lsrao@codeaurora.org, Lorenzo.Pieralisi@arm.com,
 rnayak@codeaurora.org, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 swboyd@chromium.org, david.brown@linaro.org, agross@kernel.org,
 ilina@codeaurora.org, Sudeep Holla <sudeep.holla@arm.com>,
 ulf.hansson@linaro.org, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 10:22:42AM +0530, Maulik Shah wrote:
>
> On 2/3/2020 10:38 PM, Sudeep Holla wrote:
> > On Mon, Feb 03, 2020 at 07:05:38PM +0530, Maulik Shah wrote:
> > > From: Ulf Hansson <ulf.hansson@linaro.org>
> > >
> > > If the hierarchical CPU topology is used, but the OS initiated mode isn't
> > > supported, we need to rely solely on the regular cpuidle framework to
> > > manage the idle state selection, rather than using genpd and its
> > > governor.
> > >
> > > For this reason, introduce a new PSCI DT helper function,
> > > psci_dt_pm_domains_parse_states(), which parses and converts the
> > > hierarchically described domain idle states from DT, into regular flattened
> > > cpuidle states. The converted states are added to the existing cpuidle
> > > driver's array of idle states, which make them available for cpuidle.
> > >
> > And what's the main motivation for this if OSI is not supported in the
> > firmware ?
>
> Hi Sudeep,
>
> Main motivation is to do last-man activities before the CPU cluster can
> enter a deep idle state.
>

Details on those last-man activities will help the discussion. Basically
I am wondering what they are and why they need to done in OSPM ?

> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > [applied to new path, resolved conflicts]
> > > Signed-off-by: Maulik Shah <mkshah@codeaurora.org>
> > > ---
> > >   drivers/cpuidle/cpuidle-psci-domain.c | 137 +++++++++++++++++++++++++++++-----
> > >   drivers/cpuidle/cpuidle-psci.c        |  41 +++++-----
> > >   drivers/cpuidle/cpuidle-psci.h        |  11 +++
> > >   3 files changed, 153 insertions(+), 36 deletions(-)
> > >
> > > diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> > > index 423f03b..3c417f7 100644
> > > --- a/drivers/cpuidle/cpuidle-psci-domain.c
> > > +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> > > @@ -26,13 +26,17 @@ struct psci_pd_provider {
> > >   };
> > >
> > >   static LIST_HEAD(psci_pd_providers);
> > > -static bool osi_mode_enabled __initdata;
> > > +static bool osi_mode_enabled;
> > >
> > >   static int psci_pd_power_off(struct generic_pm_domain *pd)
> > >   {
> > >   	struct genpd_power_state *state = &pd->states[pd->state_idx];
> > >   	u32 *pd_state;
> > >
> > > +	/* If we have failed to enable OSI mode, then abort power off. */
> > > +	if ((psci_has_osi_support()) && !osi_mode_enabled)
> > > +		return -EBUSY;
> > > +
> > Why is this needed ? IIUC we don't create genpd domains if OSI is not
> > enabled.
>
> we do create genpd domains, for cpu domains, we just abort power off here
> since idle states are converted into regular flattened mode.
>

OK, IIRC the OSI patches from Ulf didn't add the genpd or rather removed
them in case of any failure to enable OSI. Has that been changed ? If so,
why ?

> however genpd poweroff will be used by parent domain (rsc in this case)
> which is kept in hireachy in DTSI with cluster domain to do last man
> activities.
>

I am bit confused here. Either we do OSI or PC and what you are describing
sounds like a mix-n-match to me and I am totally against it.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
