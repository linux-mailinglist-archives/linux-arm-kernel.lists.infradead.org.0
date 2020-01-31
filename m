Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1475814EA4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 10:54:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGAAKcxh8eOSfurACt1ijGKVQD5CleDp6QyWP10heMM=; b=l8qKtQ7x6d2gWT
	N1nd+2Wz9xkPkt2GBdWASsSQT4Rs2HBCGW3fl2LNQishP+Rgz0HebeBzF49gnOtuVCvoRQ2JR9ouz
	PCWYaYidzvTRGpnc9AajHbR0Rpd3AsLCto+SN1Sb5t92xV11o0km39HOj6+dHA0KSfqNI82+hmsZE
	nsC1xgyX0hhrUyAb23qbYXvS6DL1VEgdAfRnW289sF7zPkrF5DM3xgRKM+4pYBidSf4WOMBrO/j7D
	5i9RToi3N6QWLnA9tJ3wYN5aBhUDHNXI4H0YOGz0Z/ke4hk5Cz9XhFFnLoR0f0jD9D1QaGmq7BLed
	qSXppZPQbRTTmgU6Ggjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixT0L-0005k8-62; Fri, 31 Jan 2020 09:54:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixT0C-0005jG-Cf
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 09:54:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 21ACA31B;
 Fri, 31 Jan 2020 01:54:14 -0800 (PST)
Received: from localhost (e108754-lin.cambridge.arm.com [10.1.198.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B88FC3F68E;
 Fri, 31 Jan 2020 01:54:13 -0800 (PST)
Date: Fri, 31 Jan 2020 09:54:12 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Suzuki K Poulose <Suzuki.Poulose@arm.com>
Subject: Re: [PATCH v2 4/6] Documentation: arm64: document support for the
 AMU extension
Message-ID: <20200131095412.GA17655@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-5-ionela.voinescu@arm.com>
 <c9f80a08-7f0d-59e9-eb90-466b1314e1f1@arm.com>
 <20200130164542.GC5208@arm.com>
 <20200130182653.GA123407@ewhatever.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130182653.GA123407@ewhatever.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_015416_552919_12BBA216 
X-CRM114-Status: GOOD (  30.15  )
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
Cc: mark.rutland@arm.com, maz@kernel.org, linux-doc@vger.kernel.org,
 peterz@infradead.org, catalin.marinas@arm.com,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 mingo@redhat.com, ggherdovich@suse.cz, sudeep.holla@arm.com, will@kernel.org,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thursday 30 Jan 2020 at 18:26:53 (+0000), Suzuki K Poulose wrote:
[..]
> > > > +Firmware (code running at higher exception levels, e.g. arm-tf) support is
> > > > +needed to:
> > > > + - Enable access for lower exception levels (EL2 and EL1) to the AMU
> > > > +   registers.
> > > > + - Enable the counters. If not enabled these will read as 0.
> > > > + - Save/restore the counters before/after the CPU is being put/brought up
> > > > +   from the 'off' power state.
> > > > +
> > > > +When using kernels that have this configuration enabled but boot with
> > > > +broken firmware the user may experience panics or lockups when accessing
> > > > +the counter registers. Even if these symptoms are not observed, the
> > > > +values returned by the register reads might not correctly reflect reality.
> > > > +Most commonly, the counters will read as 0, indicating that they are not
> > > > +enabled. If proper support is not provided in firmware it's best to disable
> > > > +CONFIG_ARM64_AMU_EXTN.
> > > 
> > > For the sake of one kernel runs everywhere, do we need some other
> > > mechanism to disable the AMU. e.g kernel parameter to disable amu
> > > at runtime ?
> > >
> > 
> > The reason I've not added this is twofold:
> >  - Even if we add this, it should be in order to disable the use of the
> >    counters for a certain purpose, in this case  frequency invariance.
> >    On its own AMU provides the counters but it does not mandate their
> >    use.
> >  - I could add something to disable the use of the core and cycle
> >    counters for frequency invariance at runtime, but I doubt that
> >    anyone would use it. Logically it makes sense to use the counters
> >    order to have a more accurate view of the performance that the CPUs
> >    are actually providing. Therefore, until anyone asks for this, I
> >    thought it's better to keep it simple and not add extra switches,
> >    until there is a use for them.
> > 
> > Does it make sense?
> 
> The comment is about addressing someone who must run an "AMU" enabled
> kernel ("one kernel") on a system with potentially "broken firmware",
> where there is no option to use the system as you mention above,
> the firmware could panic. How common is the "broken firmware" ?
> Right now there is no way to ensure "firmware" is sane and if
> someone detects that firmware is broken, there is no way to
> disable the AMU if they are running a standard distro kernel.
> A kernel parameter could prevent the AMU capability from
> being detected on a broken system and thus make it usable
> (without the AMU of course). Now, if the "broken firmware"
> is extremely rare, we could simply ignore this case and
> ignore the suggestion.
> 
> Suzuki
> 
>

Sorry Suzuki, I initially interpreted the question independently from
the context and only thought about cases where they are working
correctly but users might want to disable the use of them.

In this case, I don't see any harm in adding a command line parameter
to disable the use of the unit, even if it's only to support firmware
that does not support AMU at all, rather than the implementation being
broken.

I'm not really sure how common bad firmware would be. I suppose that
firmware as bad as to cause firmware panics and lockups would be quite
rare, but scenarios where firmware might not properly support AMU and
result in kernel lockups could be more often, and this would handle
both.

Thank you,
Ionela.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
