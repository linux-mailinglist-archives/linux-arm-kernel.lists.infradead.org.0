Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AA015351F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 17:18:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=muaHAgXtDXunUafJzs9b5qI8oXP5SFJBAIu8lYGIDXE=; b=UmfOEvT9SPmSYj
	qyw6dFZ7GO8yBeCBHVzwORsoGC/x8EoRAblMi/UdvxizYtrgFgPtMsgGUjpnCLBa3c6h2fLx4rIMD
	NhPeknAQkgZyNmMzlBPafClZ3qlJS6w1b3QoEWPMwqbgQL1tbcPzkHuXHaoTnMPJRlUneM3pZ852o
	wM3dCC6ItNH8f6pojMWFu+en7WtlTbntRCBflmom7P38HIYRuJEuR5Xs8+Sbt5x7FmYSoMzKsoPrr
	UR2g+KoQz43rtg2zS+qH/fSmq9cGyXVSVIciPV/e57lc8sOrSzzgx30gX4uKHVymuq/QkEAdVNeeR
	447keT/6+9dZ0g99f+LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izNNr-00085f-HT; Wed, 05 Feb 2020 16:18:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izNNk-000854-BD
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 16:18:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 78E3A31B;
 Wed,  5 Feb 2020 08:18:21 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D65DF3F68E;
 Wed,  5 Feb 2020 08:18:18 -0800 (PST)
Date: Wed, 5 Feb 2020 16:18:16 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v3 5/7] drivers: firmware: psci: Add hierarchical domain
 idle states converter
Message-ID: <20200205161816.GD38466@bogus>
References: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
 <1580736940-6985-6-git-send-email-mkshah@codeaurora.org>
 <20200203170832.GA38466@bogus>
 <0d7f7ade-3a1e-5428-d851-f1a886f58712@codeaurora.org>
 <20200204152132.GA44858@bogus>
 <6ff7c82d-4204-a339-4070-0154ab4515f1@codeaurora.org>
 <20200205140603.GB38466@bogus>
 <CAPDyKFoyepN2VX4COMomp1e9dXPozzrgCdcy0paee2jp8Wm3YA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFoyepN2VX4COMomp1e9dXPozzrgCdcy0paee2jp8Wm3YA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_081828_468152_ECF93216 
X-CRM114-Status: GOOD (  28.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Maulik Shah <mkshah@codeaurora.org>, lsrao@codeaurora.org,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rajendra Nayak <rnayak@codeaurora.org>, Linux PM <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Doug Anderson <dianders@chromium.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 05, 2020 at 04:55:17PM +0100, Ulf Hansson wrote:
> On Wed, 5 Feb 2020 at 15:06, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Wed, Feb 05, 2020 at 05:53:00PM +0530, Maulik Shah wrote:
> > >
> > > On 2/4/2020 8:51 PM, Sudeep Holla wrote:
> > > > On Tue, Feb 04, 2020 at 10:22:42AM +0530, Maulik Shah wrote:
> > > > > On 2/3/2020 10:38 PM, Sudeep Holla wrote:
> > > > > > On Mon, Feb 03, 2020 at 07:05:38PM +0530, Maulik Shah wrote:
> > > > > > > From: Ulf Hansson <ulf.hansson@linaro.org>
> > > > > > >
> > > > > > > If the hierarchical CPU topology is used, but the OS initiated mode isn't
> > > > > > > supported, we need to rely solely on the regular cpuidle framework to
> > > > > > > manage the idle state selection, rather than using genpd and its
> > > > > > > governor.
> > > > > > >
> > > > > > > For this reason, introduce a new PSCI DT helper function,
> > > > > > > psci_dt_pm_domains_parse_states(), which parses and converts the
> > > > > > > hierarchically described domain idle states from DT, into regular flattened
> > > > > > > cpuidle states. The converted states are added to the existing cpuidle
> > > > > > > driver's array of idle states, which make them available for cpuidle.
> > > > > > >
> > > > > > And what's the main motivation for this if OSI is not supported in the
> > > > > > firmware ?
> > > > > Hi Sudeep,
> > > > >
> > > > > Main motivation is to do last-man activities before the CPU cluster can
> > > > > enter a deep idle state.
> > > > >
> > > > Details on those last-man activities will help the discussion. Basically
> > > > I am wondering what they are and why they need to done in OSPM ?
> > >
> > > Hi Sudeep,
> > >
> > > there are cases like,
> > >
> > > Last cpu going to deepest idle mode need to lower various resoruce
> > > requirements (for eg DDR freq).
> > >
> >
> > In PC mode, only PSCI implementation knows the last man and there shouldn't
> > be any notion of it in OS. If you need it, you may need OSI. You are still
> > mixing up the things. NACK for any such approach, sorry.
>
> Sudeep, I don't quite agree with your NACK to this. At least not yet. :-)
>

OK, I am not surprised :-)

> I do agree that the best suited solution seems to be OSI, as to
> support this kind of SoC requirements.
>

That's the main point. We need to draw some line as what we want to do
with PC and OSI mode. If we plan to take up all last man responsibility
in the kernel, what's the point in not supporting OSI in the firmware
then ? I can't buy it yet.

> However, if for some reason the PC mode is being used, we could still
> allow Linux to control "last-man activities" as it knows what each CPU
> has voted for when going idle. Yes, the PSCI FW decides in the end,
> but that doesn't really matter. Or is there another technical reason
> to why you object?
>

Precisely, FW decides and let it. Just because we can do in the kernel
doesn't mean we must do it. It's clear in the spec and doing it in the
kernel will be sub-optimal if PSCI f/w aborted entering the deeper
state that required some action in the first place.

> As a matter of fact, if we allow support for PC mode with
> "last-man-activities", it would allow us to make a fair
> performance/energy comparison between the two PSCI CPU suspend modes,
> for the same SoC. I would be thrilled about looking into doing such
> tests, I bet you are as well!?
>

I was, but not anymore, especially if we want such changes in the kernel
to do so.

Just use OSI as that was the point of adding all these after years of
discussion claiming it's more optimal compared to PC. Now telling that
you need more changes to compare it with PC just doesn't make any sense
at all to me.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
