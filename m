Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5CD15569F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 12:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=puE1NohnVzDueOx4+nxceBjcnINONIFfxyvXr3kdTEA=; b=jVmWUYlvQCL+MY
	52P5euxTY//PjUG/9oPXEbL+FDQMlhYdS+a6UlYNSHl8WY1EKf8bMauMCxIZpEnCVFk1VsJGB5kZ0
	RLBa0PWul+1Boiqj4VTb1BPDU1W5bzHjuzE4VBVYxEH6g2IzZdSxN7+CQH80JlvgKC/cPy9eEuaoc
	OQZaIQqGJ6b7kvhzI8F4AQDAmAcCl93eWYSQ5Z/PBgnRrkyTuE/PcN4jS0YMu1vEVvdn17LkzNdfX
	VMhL64Hy/HbFDCyfqNrRKb0gmmSIkpK6KUylF6J1UCKBH24KAz7KurMCih4zRAtEe0mihvtWj/BIh
	silOd1X6jZQjLoOyI1OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j01lC-0005zA-18; Fri, 07 Feb 2020 11:25:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j01l4-0005yS-9v
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 11:25:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2CC09328;
 Fri,  7 Feb 2020 03:25:13 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1627D3F68E;
 Fri,  7 Feb 2020 03:25:10 -0800 (PST)
Date: Fri, 7 Feb 2020 11:25:09 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v3 5/7] drivers: firmware: psci: Add hierarchical domain
 idle states converter
Message-ID: <20200207112508.GB40103@bogus>
References: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
 <1580736940-6985-6-git-send-email-mkshah@codeaurora.org>
 <20200203170832.GA38466@bogus>
 <0d7f7ade-3a1e-5428-d851-f1a886f58712@codeaurora.org>
 <20200204152132.GA44858@bogus>
 <6ff7c82d-4204-a339-4070-0154ab4515f1@codeaurora.org>
 <20200205140603.GB38466@bogus> <20200206211133.GR2514@yoga>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206211133.GR2514@yoga>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_032514_432050_A06B5350 
X-CRM114-Status: GOOD (  24.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Maulik Shah <mkshah@codeaurora.org>, lsrao@codeaurora.org,
 Lorenzo.Pieralisi@arm.com, rnayak@codeaurora.org, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, swboyd@chromium.org, david.brown@linaro.org,
 agross@kernel.org, ilina@codeaurora.org, dianders@chromium.org,
 ulf.hansson@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 06, 2020 at 01:11:33PM -0800, Bjorn Andersson wrote:
> On Wed 05 Feb 06:06 PST 2020, Sudeep Holla wrote:
>
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
> >
>
> Forgive me if I'm misunderstanding PSCI's role here, but doesn't it deal
> with the power management of the "processor subsystem" in the SoC?
>

Yes.

> In the Qualcomm platforms most resources (voltage rails, clocks, etc)
> are controlled through a power controller that provides controls for a
> state when the CPU subsystem is running and when it's asleep. This
> allows non-CPU-related device to control if resources that are shared
> with the CPU subsystem should be kept on when the last CPU/cluster goes
> down.
>

I understand that.

> An example of this would be the display controller voting to keep a
> voltage rail on after the CPU subsystem collapses, because the display
> is still on.
>

OK

> But as long as the CPU subsystem is running it will keep these resources
> available and there's no need to change these votes (e.g. if the display
> is turned on and off while the CPU is active the sleep-requests cancels
> out), so they are simply cached/batched up in the RPMh driver and what
> Maulik's series is attempting to do is to flush the cached values when
> Linux believes that the firmware might decide to enter a lower power
> state.
>

I understand all these. What I am arguing is that in PC mode, PSCI
firmware is the one who needs to vote and not OSPM because it is
responsible for pulling the plugs off the CPU/Cluster. So lets us not
bring that to OSPM. OSI was invented to do all such crazy things in OSPM,
please feel free to play with that ;-)

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
