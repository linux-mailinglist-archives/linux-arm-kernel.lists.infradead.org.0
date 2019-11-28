Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D71A410CE95
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 19:32:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubs+AVt9NFHx+LgS5RzzUOGUDsgIR3yhEyQwZOB48sc=; b=ny/Ubi9fglMuNv
	ydsDHdAtZM1FSk2njsV4SoAtvu0d6KARDVk+r8IKE4DTSyZp7g85SX2V8cX1kQPlUHYSsbc67c7zV
	tc2YoHshJ8i/S3GXUZXpuZL2dYgDT71VU/+DbA3Bxn2klptBX/m8a5oFHWnEV84mU62TNxJmAMeXX
	VimftadVdug4Kk12WsQbggviS+c0ZuAYGZ92HGAQ6K6/+twdUmj4ZnkQlrhxKcwgKUkRjk1kqs1lB
	y1TAQycM2wlDSdVjyrpc/voRe9fwwz35EpO4+MyhH6jorxzQjBc9TLGfSStWCvd673ymYuwYcILJg
	IH/THcoxi9NGJl4k9gFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaOa8-0005wX-3o; Thu, 28 Nov 2019 18:32:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaOa0-0005w4-DS
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 18:31:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 23E8F1FB;
 Thu, 28 Nov 2019 10:31:51 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 435DE3F6C4;
 Thu, 28 Nov 2019 10:31:49 -0800 (PST)
Date: Thu, 28 Nov 2019 18:31:43 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v3 08/13] cpuidle: psci: Add a helper to attach a CPU to
 its PM domain
Message-ID: <20191128183143.GA15793@e121166-lin.cambridge.arm.com>
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
 <20191127102914.18729-9-ulf.hansson@linaro.org>
 <20191128141443.GA31123@e121166-lin.cambridge.arm.com>
 <CAPDyKFr1GTAkNyTmLvvC1ovm4yOtMGLOVWA-e-wjGJz2ENdN1g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFr1GTAkNyTmLvvC1ovm4yOtMGLOVWA-e-wjGJz2ENdN1g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_103152_499949_5D9F9687 
X-CRM114-Status: GOOD (  18.02  )
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
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 06:21:03PM +0100, Ulf Hansson wrote:
> On Thu, 28 Nov 2019 at 15:15, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Wed, Nov 27, 2019 at 11:29:09AM +0100, Ulf Hansson wrote:
> >
> > [...]
> >
> > > +struct device *psci_dt_attach_cpu(int cpu)
> > > +{
> > > +     struct device *dev;
> > > +
> > > +     /* Currently limit the hierarchical topology to be used in OSI mode. */
> > > +     if (!psci_has_osi_support())
> > > +             return NULL;
> > > +
> > > +     dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
> > > +     if (IS_ERR_OR_NULL(dev))
> > > +             return dev;
> > > +
> > > +     pm_runtime_irq_safe(dev);
> > > +     if (cpu_online(cpu))
> >
> > It is unclear to me how we handle (or rather we don't) CPU hotplug
> > with this series - it does not look OK unless genpd code manages
> > that automatically.
> 
> The series doesn't handle CPU hotplug at the moment, simply because I
> am targeting to get the basic support, upstream first.

Basic support must work and that includes CPU hotplug - I don't want
to merge code that work with assumptions that aren't valid.

> For a functionality point of view, this isn't a problem in my opinion.
> Simply because the consequence is only that the idle states for the
> "cluster" will not be reached if there is a CPU brought offline.
> 
> As we talked about at LPC and as also told Sudeep for the v2 series,
> CPU hotplug is going to be implemented by using a CPU HP notifier.

Yes, it should be part of the series.

> That should be fine, right?

Yes, hopefully but it has to be part of the series.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
