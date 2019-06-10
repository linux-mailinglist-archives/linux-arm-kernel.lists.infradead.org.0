Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEF63B369
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8FfKlSUOvscFPjYovvV9rzeWBRe3Z7+aA9JN4ftx1M=; b=NybDvNeAgVr/PT
	ksM2Xbz2HV5KkYLsfCSND9oKQJV868MK7XRj8tXdKnkpAYwcoH+zTMMFYhenPCHjui8vGit0qA14R
	KDgvq4kMuI2L+n0UyJC8ex5dQ0ICA2rrtQgQEiFQiI4+X3m0MFEt/7YEfGPmvZQhJVEFWDQATChsB
	vF1rc3sE8fCMDcuBYYDc4hzjnCPnWww6HuFcPHsfVQNkvlkrNQQrCUZ2lPZb0VuHzHX3peX5jVT60
	vNEVwoiUut0bPE6FJQX6K8wccjnQVUE/gBD9yLleMTm5lMyc0S5nmgemD3kLIh8RR8j5DcArmjB7q
	ncyhVeeUbgEZ0vmKtzug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHlb-00068K-8F; Mon, 10 Jun 2019 10:43:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haHlT-00067r-2e
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:43:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 20FE5337;
 Mon, 10 Jun 2019 03:42:58 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 31CE23F557;
 Mon, 10 Jun 2019 03:44:37 -0700 (PDT)
Date: Mon, 10 Jun 2019 11:42:53 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 07/18] drivers: firmware: psci: Prepare to use OS
 initiated suspend mode
Message-ID: <20190610104253.GB26602@e107155-lin>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-8-ulf.hansson@linaro.org>
 <20190607151716.GF15577@e107155-lin>
 <CAPDyKFoKNLqLzVx8uj_-iuWAHGCvty28mVKnipFVgjKD8oDNkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFoKNLqLzVx8uj_-iuWAHGCvty28mVKnipFVgjKD8oDNkQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_034259_214894_15F7D3C4 
X-CRM114-Status: GOOD (  24.15  )
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
 Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Lina Iyer <ilina@codeaurora.org>,
 Lina Iyer <lina.iyer@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Niklas Cassel <niklas.cassel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 12:21:10PM +0200, Ulf Hansson wrote:
> On Fri, 7 Jun 2019 at 17:17, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Mon, May 13, 2019 at 09:22:49PM +0200, Ulf Hansson wrote:
> > > The per CPU variable psci_power_state, contains an array of fixed values,
> > > which reflects the corresponding arm,psci-suspend-param parsed from DT, for
> > > each of the available CPU idle states.
> > >
> > > This isn't sufficient when using the hierarchical CPU topology in DT in
> > > combination with having PSCI OS initiated (OSI) mode enabled. More
> > > precisely, in OSI mode, Linux is responsible of telling the PSCI FW what
> > > idle state the cluster (a group of CPUs) should enter, while in PSCI
> > > Platform Coordinated (PC) mode, each CPU independently votes for an idle
> > > state of the cluster.
> > >
> > > For this reason, let's introduce an additional per CPU variable called
> > > domain_state and implement two helper functions to read/write its values.
> > > Following patches, which implements PM domain support for PSCI, will use
> > > the domain_state variable and set it to corresponding bits that represents
> > > the selected idle state for the cluster.
> > >
> > > Finally, in psci_cpu_suspend_enter() and psci_suspend_finisher(), let's
> > > take into account the values in the domain_state, as to get the complete
> > > suspend parameter.
> > >
> >
> > I understand it was split to ease review, but this patch also does
> > nothing as domain_state = 0 always. I was trying hard to find where it's
> > set, but I assume it will be done in later patches. Again may be this
> > can be squashed into the first caller of psci_set_domain_state
> 
> You have a point, but I am worried that it would look like this series
> is solely needed to support OSI mode. This is not the case. Let me
> explain.
> 
> Having $subject patch separate shows the specific changes needed to
> support OSI mode. The first caller of psci_set_domain_state() is added
> in patch9, however, patch9 is useful no matter of OSI or PC mode.
> 
> Moreover, if I squash $subject patch with patch9, I would have to
> squash also the subsequent patch (patch8), as it depends on $subject
> patch.
> 
> So, to conclude, are you happy with this as is or do you want me to
> squash the patches?
> 

Yes I am fine either way. As I put the comments in the same flow as I
did review, I thought it's worth mentioning if someone else get similar
thoughts. I am fine if you prefer to keep it the same way unless someone
else raise the same point.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
