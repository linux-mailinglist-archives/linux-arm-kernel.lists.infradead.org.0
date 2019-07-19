Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E6B6E3D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 12:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWmU7xQgaFQQOj2BA9AqvenSLIbXT47Q7sDh2M32xJ0=; b=mT+osesD34ZHAA
	SxwWa3hsBXK8umKd/MeHDbc49O97a8OY1uMIJ0fv3eRKPx8BqF97tC4YUtaIbXruck9YTW+yjUmdk
	ZH3CAg1p0Dh9hJZL1XaHFRhmZxeJBZByr51szpB+tmPMJ1E3IFTffnzv/CdkohZoAXCYyoDr7s90l
	icE2b97yrM73QBojWRwsvt2bax6MmcIGjUfHEsb4CKOGpXgStUWUIlDJUB+DLyG6R4i4HMWZLwBSc
	cYpj3GgAukkaPCnt/mVYmRwwtf36RiTSqCcTHQhj/AFZEKO87q+c+l1Hw1/xBK02Opj0nGjzZp0rt
	afjG7Mq8z5/SAN3w/esg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoPjN-00026h-Hd; Fri, 19 Jul 2019 10:03:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoPj7-00026H-7Y
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 10:02:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D6AC337;
 Fri, 19 Jul 2019 03:02:56 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D8CBE3F59C;
 Fri, 19 Jul 2019 03:02:53 -0700 (PDT)
Date: Fri, 19 Jul 2019 11:02:16 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 14/18] drivers: firmware: psci: Manage runtime PM in the
 idle path for CPUs
Message-ID: <20190719100216.GA8587@e121166-lin.cambridge.arm.com>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-15-ulf.hansson@linaro.org>
 <20190716155317.GB32490@e121166-lin.cambridge.arm.com>
 <CAPDyKFrJ75mo+s6GuUCTQ-nVv7C+9YJyTVmwuBZ2RKFOvOi3Nw@mail.gmail.com>
 <20190718133053.GA27222@e121166-lin.cambridge.arm.com>
 <CAPDyKFr4NmichQk4uf+Wgbanh=5idKYY=37WCb6U_hNFDVYg=w@mail.gmail.com>
 <20190718174116.GD25567@codeaurora.org>
 <CAPDyKFrxBdZfskyp2HOb5YykkAqkBzRfW4-LLbcj1DAaL65XpA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFrxBdZfskyp2HOb5YykkAqkBzRfW4-LLbcj1DAaL65XpA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_030257_370631_6600CD9C 
X-CRM114-Status: GOOD (  30.51  )
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Tony Lindgren <tony@atomide.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 11:49:11PM +0200, Ulf Hansson wrote:
> On Thu, 18 Jul 2019 at 19:41, Lina Iyer <ilina@codeaurora.org> wrote:
> >
> > On Thu, Jul 18 2019 at 10:55 -0600, Ulf Hansson wrote:
> > >On Thu, 18 Jul 2019 at 15:31, Lorenzo Pieralisi
> > ><lorenzo.pieralisi@arm.com> wrote:
> > >>
> > >> On Thu, Jul 18, 2019 at 12:35:07PM +0200, Ulf Hansson wrote:
> > >> > On Tue, 16 Jul 2019 at 17:53, Lorenzo Pieralisi
> > >> > <lorenzo.pieralisi@arm.com> wrote:
> > >> > >
> > >> > > On Mon, May 13, 2019 at 09:22:56PM +0200, Ulf Hansson wrote:
> > >> > > > When the hierarchical CPU topology layout is used in DT, let's allow the
> > >> > > > CPU to be power managed through its PM domain, via deploying runtime PM
> > >> > > > support.
> > >> > > >
> > >> > > > To know for which idle states runtime PM reference counting is needed,
> > >> > > > let's store the index of deepest idle state for the CPU, in a per CPU
> > >> > > > variable. This allows psci_cpu_suspend_enter() to compare this index with
> > >> > > > the requested idle state index and then act accordingly.
> > >> > >
> > >> > > I do not see why a system with two CPU CPUidle states, say CPU retention
> > >> > > and CPU shutdown, should not be calling runtime PM on CPU retention
> > >> > > entry.
> > >> >
> > >> > If the CPU idle governor did select the CPU retention for the CPU, it
> > >> > was probably because the target residency for the CPU shutdown state
> > >> > could not be met.
> > >>
> > >> The kernel does not know what those cpu states represent, so, this is an
> > >> assumption you are making and it must be made clear that this code works
> > >> as long as your assumption is valid.
> > >>
> > >> If eg a "cluster" retention state has lower target_residency than
> > >> the deepest CPU idle state this assumption is wrong.
> > >
> > >Good point, you are right. I try to find a place to document this assumption.
> > >
> > >>
> > >> And CPUidle and genPD governor decisions are not synced anyway so,
> > >> again, this is an assumption, not a certainty.
> > >>
> > >> > In this case, there is no point in allowing any other deeper idle
> > >> > states for cluster/package/system, since those have even greater
> > >> > residencies, hence calling runtime PM doesn't make sense.
> > >>
> > >> On the systems you are testing on.
> > >
> > >So what you are saying typically means, that if all CPUs in the same
> > >cluster have entered the CPU retention state, on some system the
> > >cluster may also put into a cluster retention state (assuming the
> > >target residency is met)?
> > >
> > >Do you know of any systems that has these characteristics?
> > >
> > Many QCOM SoCs can do that. But with the hardware improving, the
> > power-performance benefits skew the results in favor of powering off
> > the cluster than keeping the CPU and cluster in retention.
> >
> > Kevin H and I thought of this problem earlier on. But that is a second
> > level problem to solve and definitely to be thought of after we have the
> > support for the deepest states in the kernel. We left that out for a
> > later date. The idea would have been to setup the allowable state(s) in
> > the DT for CPU and cluster state definitions and have the genpd take
> > that into consideration when deciding the idle state for the domain.
> 
> Thanks for confirming.
> 
> This more or less means we need to improve the hierarchical support in
> genpd to support more levels, such that it makes sense to have a genpd
> governor assigned at more than one level. This doesn't work well
> today. As I also have stated, this is on my todo list for genpd.
> 
> However, I also agree with your standpoint, that let's start simple to
> enable the deepest state as a start with, then we can improve things
> on top.

How to solve this in the kernel I don't know but please do make sure
that the DT bindings allow you to describe what's needed, once they are
merged you won't be able to change them and I won't bodge the code to
make things fit, so if anything let's focus on getting them right as a
matter of priority to get this done please.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
