Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A046CEE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 15:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HU5d3zraOTlYOHCIHG19pgJ2VkIxZBeRs9eUhX4pqLA=; b=JVJo/upy0Q3zwl
	jkTA7/jFpze+l2rSQFv2Vc2iKRWJ3u8Z0svcCRnVejqmroDbrYfXPJCk/jFRVoaPJJTc3VgcHHdUF
	0TR8a+RoMaJTVnHnO8E5KUoaqAFEB/B2hq4r4wJVFsbZuTtKIWgDDob6Q+MgaScViBgKS17A/gN60
	x9Qh+nk/zM2XSx0bPkpyuNAHBqYSIQmFnDeZFmS/IMlBtd1/c5K2UZb4yc/ReKoC1iUivA3N6fRRJ
	8jPr37eJUOZ/Pks0etvMVLr90N/ptV9xmsV/xmck900mFVgnQNkAJdV3jE0pb2WjyriscjzZZDYqx
	CY/P3HSdn5e+/lnJvFxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho6VE-0005Gf-LF; Thu, 18 Jul 2019 13:31:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6V0-0005FV-Oo
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 13:31:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5B6A344;
 Thu, 18 Jul 2019 06:31:04 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 59D753F71F;
 Thu, 18 Jul 2019 06:31:02 -0700 (PDT)
Date: Thu, 18 Jul 2019 14:30:53 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 14/18] drivers: firmware: psci: Manage runtime PM in the
 idle path for CPUs
Message-ID: <20190718133053.GA27222@e121166-lin.cambridge.arm.com>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-15-ulf.hansson@linaro.org>
 <20190716155317.GB32490@e121166-lin.cambridge.arm.com>
 <CAPDyKFrJ75mo+s6GuUCTQ-nVv7C+9YJyTVmwuBZ2RKFOvOi3Nw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFrJ75mo+s6GuUCTQ-nVv7C+9YJyTVmwuBZ2RKFOvOi3Nw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_063106_898198_F28C62A3 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 12:35:07PM +0200, Ulf Hansson wrote:
> On Tue, 16 Jul 2019 at 17:53, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Mon, May 13, 2019 at 09:22:56PM +0200, Ulf Hansson wrote:
> > > When the hierarchical CPU topology layout is used in DT, let's allow the
> > > CPU to be power managed through its PM domain, via deploying runtime PM
> > > support.
> > >
> > > To know for which idle states runtime PM reference counting is needed,
> > > let's store the index of deepest idle state for the CPU, in a per CPU
> > > variable. This allows psci_cpu_suspend_enter() to compare this index with
> > > the requested idle state index and then act accordingly.
> >
> > I do not see why a system with two CPU CPUidle states, say CPU retention
> > and CPU shutdown, should not be calling runtime PM on CPU retention
> > entry.
> 
> If the CPU idle governor did select the CPU retention for the CPU, it
> was probably because the target residency for the CPU shutdown state
> could not be met.

The kernel does not know what those cpu states represent, so, this is an
assumption you are making and it must be made clear that this code works
as long as your assumption is valid.

If eg a "cluster" retention state has lower target_residency than
the deepest CPU idle state this assumption is wrong.

And CPUidle and genPD governor decisions are not synced anyway so,
again, this is an assumption, not a certainty.

> In this case, there is no point in allowing any other deeper idle
> states for cluster/package/system, since those have even greater
> residencies, hence calling runtime PM doesn't make sense.

On the systems you are testing on.

Lorenzo

> > The question then is what cluster/package/system states
> > are allowed for a given CPU idle state, to understand
> > what idle states can be actually entered at any hierarchy
> > level given the choice made for the CPU idle state.
> >
> > In the case above, a CPU entering retention state should prevent
> > runtime PM selecting a cluster shutdown state; most likely firmware
> > would demote the request to cluster retention but still, we should
> > find a way to describe these dependencies.
> 
> See above.
> 
> [...]
> 
> Kind regards
> Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
