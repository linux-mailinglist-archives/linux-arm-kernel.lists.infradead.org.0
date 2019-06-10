Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1CA3B3AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 13:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+q0hghLvb0cKt/MC81YvdcE1/aohB31gDpdk3ajT5pk=; b=ErZZeA0EcZUbKy
	9t1Y+wAbAFPFT1qbImfrPC2Uu2QkWZt/1HeTl0Zn3C1gcSMhapP/8TpThfasT+XPh1N/PJpylk9vz
	R2dl6001Dn9narRG9Z7CcN+d/S6PZG3h7Bv+A6vQ2A8s/lWRTPPyhkp2E9/7gsf4ylUTMslr1z8al
	hzQg0qLt3zJI5Ns9fq1w6M72cGpMtPFS0UnGmiP/xUH6lEryCygiuQMWAuDwsC2bqMmn/ssEVS7KQ
	ASinEWxlHT7KYNfdV2e54pXxJtII5993eghS5cuUqcfonI/0Ms3/1vbcU+h9S77mtwPwEaL1glman
	UsnaiI8ql4zo/uZCZV6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haI53-0006xV-5U; Mon, 10 Jun 2019 11:03:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haI4m-0006wk-B2
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 11:02:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC8F6337;
 Mon, 10 Jun 2019 04:02:55 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB2553F557;
 Mon, 10 Jun 2019 04:04:34 -0700 (PDT)
Date: Mon, 10 Jun 2019 12:02:50 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 15/18] drivers: firmware: psci: Support CPU hotplug for
 the hierarchical model
Message-ID: <20190610110250.GD26602@e107155-lin>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-16-ulf.hansson@linaro.org>
 <20190607153114.GI15577@e107155-lin>
 <CAPDyKFqooMww0B6vGL56BnG-L=13C3oWeDFx4v1cO9=W9QPwVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFqooMww0B6vGL56BnG-L=13C3oWeDFx4v1cO9=W9QPwVQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_040256_474765_B5D83D30 
X-CRM114-Status: GOOD (  19.57  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
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

On Mon, Jun 10, 2019 at 12:21:47PM +0200, Ulf Hansson wrote:
> On Fri, 7 Jun 2019 at 17:31, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Mon, May 13, 2019 at 09:22:57PM +0200, Ulf Hansson wrote:
> > > When the hierarchical CPU topology is used and when a CPU has been put
> > > offline (hotplug), that same CPU prevents its PM domain and thus also
> > > potential master PM domains, from being powered off. This is because genpd
> > > observes the CPU's attached device as being active from a runtime PM point
> > > of view.
> > >
> > > To deal with this, let's decrease the runtime PM usage count by calling
> > > pm_runtime_put_sync_suspend() of the attached struct device when putting
> > > the CPU offline. Consequentially, we must then increase the runtime PM
> > > usage count, while putting the CPU online again.
> > >
> >
> > Why is this firmware/driver specific ? Why can't this be dealt in core
> > pm-domain ? I am concerned that if any other architectures or firmware
> > method decides to use this feature, this need to be duplicated there.
>
> What is the core pm-domain? Do you refer to the generic PM domain (genpd), no?
>

Sorry for my bad choice of names. I just wrote names as I understand
rather than looking for exact match. But yes, I meant generic place
where such ref-counting is done currently for other things.

> In such case, this is not the job of genpd, but rather the opposite
> (to *monitor* the reference count).
>

OK, I need to understand that then.

> >
> > The way I see this is pure reference counting and is hardware/firmware/
> > driver agnostic and can be made generic.
>
> As stated in the another reply, I would rather start with having more
> things driver specific rather than generic. Later on we can always
> consider to move/split things, when there are more users.
>
> In this particular case, the runtime PM reference counting is done on
> the struct device*, that genpd returned via
> dev_pm_domain_attach_by_name(). And because
> dev_pm_domain_attach_by_name() is called from PSCI code, I decided to
> keep this struct device* internal to PSCI.

Sure, I understand your intent. I have just mentioned my thoughts/comments
as I reviewed.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
