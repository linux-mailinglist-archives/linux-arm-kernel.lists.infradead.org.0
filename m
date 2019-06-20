Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F254D255
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8feXx9XL9xHrBgxi4bpK8kfoIsybLvmoDX7sr7rq+GE=; b=nDD8KBU17J0bJL
	b6MXLeGxfz0bi4PyzpAhNZZmsSNw9BkahcVYD7qtTRxozInJs3abxVVql5FKDdA7VoW2lQy0RLQMq
	hWG0DTsXaolPjFtGJspDvtvyrPn8O/9KbJX3uK4K24q+gbk/8bikqY41KPj3SfQxVomc5PgJ/IZI6
	u+wSG3FIaUMPO5m/OMgRcLp8tOjp/t6+1kYSH8FuCgpVl5Q89bni+TvFUoHhv7IMA4GSB3fOM09zI
	RkSLeHyb1GUwKqVAIrWHo9p7z/ZMrTprno+E8kxI2/Q0Fp8TCijGO+VwAIN/OzELX7gzZQueqXjoQ
	XSReoFWDH9uUvPNYL8rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzCo-0000lR-2i; Thu, 20 Jun 2019 15:42:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzCI-0000am-1o
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:41:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E65428;
 Thu, 20 Jun 2019 08:41:57 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2DDF23F246;
 Thu, 20 Jun 2019 08:41:56 -0700 (PDT)
Date: Thu, 20 Jun 2019 16:41:54 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190620154154.GB25273@e107155-lin>
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618132159.GA18121@e107155-lin>
 <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
 <20190619110749.GD1360@e107155-lin>
 <CANLsYkw-KhMVgTfyBSF4-uv4wxQBBQfzyvVbAnaFSqHhkgX6Mg@mail.gmail.com>
 <20190620114116.GE20984@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620114116.GE20984@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_084158_188004_722DBF86 
X-CRM114-Status: GOOD (  24.83  )
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
Cc: Al Grant <Al.Grant@arm.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 12:41:17PM +0100, Andrew Murray wrote:
> On Wed, Jun 19, 2019 at 10:22:58AM -0600, Mathieu Poirier wrote:
> > On Wed, 19 Jun 2019 at 05:07, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Wed, Jun 19, 2019 at 11:38:12AM +0100, Suzuki K Poulose wrote:
> > > > Cc: Al Grant, Mike Leach
> > > >
> > > > Hi Sudeep,
> > > >
> > > > On 18/06/2019 14:21, Sudeep Holla wrote:
> > > > > On Tue, Jun 18, 2019 at 01:54:33PM +0100, Andrew Murray wrote:
> > > > > > Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > > > > > to hardware that power should not be removed from the trace unit.
> > > > >
> > > > > So, how or can we identify or discover such system ? DT/ACPI ?
> > > > >
> > > >
> > > > I don't think there is a mechanism at the moment to identify such
> > > > systems. But if we really need to know this information, we could
> > > > always think about it.
> > > >
> > >
> > > I prefer that as we shouldn't systems that are not broken.
> > >
> > > > > > Let's mitigate against this by saving and restoring the trace
> > > > > > unit state when the CPU enters low power states.
> > > > > >
> > > > >
> > > > > I prefer to do this conditionally. It's unnecessary on systems which
> > > > > don't ignore the TRCPDCR.PU and I really don't like them to be penalised
> > > > > while we want to add this support for *broken* systems.
> > > >
> > > > It is conditional. i.e, you may disable the operation using a kernel/module
> > > > parameter, which I think should be mentioned in the description here.
> > > >
> > >
> > > Why should the user of coresight need to know if the corresponding
> > > hardware module is broken or not. I prefer the firmware tell OS.
> >
> > I think using ACPI/DT is the best and simplest solution.
>
> I certainly agree that it feels wrong to have a default level of support
> which is targeted at broken systems. However the penalty (latency) for doing so
> doesn't seem high - seeing as this only effects users that are actively using
> coresight (I assume self hosted mode is only used as a debug tool, rather than to
> obtain metrics during normal use?).
>

Do we have numbers ? It's always helpful to have lowest latencies possible
for wakeup and adding extra notifiers will always add some latencies,
so it's not 0. We always want to reduce there notifiers and hopefully
move save/restore to hardware/firmware in future.

> Adding some broken tag in ACPI/DT seems like a good solution - assuming it will
> get adopted and used in systems. The existing "disable_pm_save" module option
> can be renamed to "enable_pm_save" for those that have less control of their
> firmware.
>
> Unless of course we think it's unlikely we'll ever see hardware that isn't
> broken - I don't have enough knowledge of how likely or not this is.
>

Sorry but even then I prefer it not to be default and force extra work
to the people who add support and constantly be reminded that it's
broken and they are deviating from default behaviour in the kernel
which may come and latency penalty.

Making it default may hide the problem if Linux is used for some validation.

Also we hardly have 3-4 platforms in upstream that support coresight,
and many are broken except Juno. But that doesn't imply all others
are broken and we just can't derive that unless we have more information.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
