Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 680FA107750
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 19:26:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OwHNbcOFj/vB5tqMd7hgNbgXjgXVXCMwx1bo3e4UBYE=; b=KXm35HEDosPMUu
	ITNcXjhNI2orEHCitvC0d67/CpkGokgH8Hr29RY6HOAXYc2/8wIuOBSSclr5EVocKhyAS6HIKTLKW
	pZWb7tCYSao3+VhNGqDmr/WG5DAACxo8BEbdZDCientyiJ9t5FSSKu02o7K1Wt6BaXXwSOKryjm/F
	d7UEDETwNHjZt996qef6Wn766ytwZJXLWyyze6E7OMBGmPpAuEUXPqg82OnWSc91I8LHoR22zA4Yk
	m0veGwBLIbvZ8Be3Z+Maa1BUtklt/B3MTM1v6JLABEgM7l7fdZWqVKI62F2qywCeWI1WhDtMxLuJA
	QmGLM6h3PoJNBeuyAwyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYDdo-0000i1-Fs; Fri, 22 Nov 2019 18:26:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYDdd-0000hV-Gn
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 18:26:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 34203328;
 Fri, 22 Nov 2019 10:26:31 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 377293F6C4;
 Fri, 22 Nov 2019 10:26:29 -0800 (PST)
Date: Fri, 22 Nov 2019 18:26:24 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 10/13] cpuidle: psci: Prepare to use OS initiated
 suspend mode via PM domains
Message-ID: <20191122182623.GA8290@e121166-lin.cambridge.arm.com>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
 <20191029164438.17012-11-ulf.hansson@linaro.org>
 <20191115173053.GE27170@bogus>
 <CAPDyKFraEhFVm27YG0fVkjT0-oBBxFpfiBY4zS+1TMy=0F6GRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFraEhFVm27YG0fVkjT0-oBBxFpfiBY4zS+1TMy=0F6GRQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_102637_646794_71020032 
X-CRM114-Status: GOOD (  24.22  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 02:37:41PM +0100, Ulf Hansson wrote:
> On Fri, 15 Nov 2019 at 18:30, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Tue, Oct 29, 2019 at 05:44:35PM +0100, Ulf Hansson wrote:
> > > The per CPU variable psci_power_state, contains an array of fixed values,
> > > which reflects the corresponding arm,psci-suspend-param parsed from DT, for
> > > each of the available CPU idle states.
> > >
> > > This isn't sufficient when using the hierarchical CPU topology in DT, in
> > > combination with having PSCI OS initiated (OSI) mode enabled. More
> > > precisely, in OSI mode, Linux is responsible of telling the PSCI FW what
> > > idle state the cluster (a group of CPUs) should enter, while in PSCI
> > > Platform Coordinated (PC) mode, each CPU independently votes for an idle
> > > state of the cluster.
> > >
> > > For this reason, introduce a per CPU variable called domain_state and
> > > implement two helper functions to read/write its value. Then let the
> > > domain_state take precedence over the regular selected state, when entering
> > > and idle state.
> > >
> > > Finally, let's also avoid sprinkling the existing non-OSI path with
> > > operations being specific for OSI.
> > >
> >
> > Mostly looks good.
> 
> Thanks!
> 
> 
> > I am still wondering if we can keep all OSI related
> > info in the newly created structure and have psci_states outside it as
> > before. And I was think psci_enter_idle_state_pc and psci_enter_idle_state_osi
> > instead of single psci_enter_idle_state and assign/initialise state->enter
> > based on the mode chosen. I had to closer look now and looks like enter
> > is initialised in generic dt_idle_states. That said, what you have in this
> > patch also looks OK to me, was just trying to avoid access to the new
> > structure all together and keep the PC mode patch almost same as before
> > when suspending. I will see what Lorenzo thinks about this.
> 
> I did explore that approach a bit, but found it easier to go with what
> I propose here. The most important point, in my view, is that in this
> suggested approach only one if-check, "if (!data->dev)", is added to
> the PC mode path compared to the original path. I think this should be
> fine, right!?

I don't see why we should use data->dev at runtime when we can
have two separate idle enter functions and the detection can
be done at probe once for all instead of every idle entry.

The overhead is close to nought but the point is that it is
really not needed.

Thanks,
Lorenzo

> In any case, if you prefer any other solution, just tell me and I adapt to it.
> 
> Now, I am looking forward to hear from Lorenzo.
> 
> Kind regards
> Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
