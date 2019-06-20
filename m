Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E534CD0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 13:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgqbQy0ChKhpJEgIJavod6IRviEZJ/eXHD6Xf2SLBKw=; b=sIWt5LCJw3nqy4
	1PPe21+x5VDrxJ965drhHzNTl11aL0v9r9dAqYaIouCHHfdxz44TMnUrvmA3zC83MlDZ8cM6+NraG
	FddVpHzSEtQypiki+jpgFhJO29azh3r6C4GIV3wMCWkjEMlITlN1ou3HFeF90D4hFL+s31lBtp2gC
	Rzr3wKx7r6w0eiQpkcurySwobEc6dgmIpKS2EyUJt4ErnikISJgfGlH3hh7mpbgUZQZp39eiv19mn
	uk07pyJzbZOAB8ixsk7VEfjmgSBokQDCK8jZaoqe7t40AWx/m/Uq8ZHgA83V2SvPv+p+CLjK5/zaX
	SRAsSHmRvXG9f510pj8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdvRe-0001a4-NA; Thu, 20 Jun 2019 11:41:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdvRQ-0001Ze-1b
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 11:41:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 672BF360;
 Thu, 20 Jun 2019 04:41:19 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DAB893F718;
 Thu, 20 Jun 2019 04:41:18 -0700 (PDT)
Date: Thu, 20 Jun 2019 12:41:17 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190620114116.GE20984@e119886-lin.cambridge.arm.com>
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618132159.GA18121@e107155-lin>
 <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
 <20190619110749.GD1360@e107155-lin>
 <CANLsYkw-KhMVgTfyBSF4-uv4wxQBBQfzyvVbAnaFSqHhkgX6Mg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkw-KhMVgTfyBSF4-uv4wxQBBQfzyvVbAnaFSqHhkgX6Mg@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_044120_178650_7DC0B550 
X-CRM114-Status: GOOD (  34.67  )
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
Cc: Al Grant <Al.Grant@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 10:22:58AM -0600, Mathieu Poirier wrote:
> On Wed, 19 Jun 2019 at 05:07, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Wed, Jun 19, 2019 at 11:38:12AM +0100, Suzuki K Poulose wrote:
> > > Cc: Al Grant, Mike Leach
> > >
> > > Hi Sudeep,
> > >
> > > On 18/06/2019 14:21, Sudeep Holla wrote:
> > > > On Tue, Jun 18, 2019 at 01:54:33PM +0100, Andrew Murray wrote:
> > > > > Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > > > > to hardware that power should not be removed from the trace unit.
> > > >
> > > > So, how or can we identify or discover such system ? DT/ACPI ?
> > > >
> > >
> > > I don't think there is a mechanism at the moment to identify such
> > > systems. But if we really need to know this information, we could
> > > always think about it.
> > >
> >
> > I prefer that as we shouldn't systems that are not broken.
> >
> > > > > Let's mitigate against this by saving and restoring the trace
> > > > > unit state when the CPU enters low power states.
> > > > >
> > > >
> > > > I prefer to do this conditionally. It's unnecessary on systems which
> > > > don't ignore the TRCPDCR.PU and I really don't like them to be penalised
> > > > while we want to add this support for *broken* systems.
> > >
> > > It is conditional. i.e, you may disable the operation using a kernel/module
> > > parameter, which I think should be mentioned in the description here.
> > >
> >
> > Why should the user of coresight need to know if the corresponding
> > hardware module is broken or not. I prefer the firmware tell OS.
> 
> I think using ACPI/DT is the best and simplest solution.

I certainly agree that it feels wrong to have a default level of support
which is targeted at broken systems. However the penalty (latency) for doing so
doesn't seem high - seeing as this only effects users that are actively using
coresight (I assume self hosted mode is only used as a debug tool, rather than to
obtain metrics during normal use?).

Adding some broken tag in ACPI/DT seems like a good solution - assuming it will
get adopted and used in systems. The existing "disable_pm_save" module option
can be renamed to "enable_pm_save" for those that have less control of their
firmware.

Unless of course we think it's unlikely we'll ever see hardware that isn't
broken - I don't have enough knowledge of how likely or not this is.

Another solution might be to enable save/restore by default (as it is now),
and then on resume we read the hardware registers to determine if state was
lost. If it wasn't lost then we can disable the save/restore feature. (Though
is it possible for systems to be partly broken, e.g. working for some CPUs
but not others?). With this approach on good systems you only get penalised
once.

> 
> >
> > > >
> > > > This is generally most useful to debug CPU suspend/resume exercising
> > > > the code path completely with emulated CPU power on/off as most of the
> > > > systems have the trace unit and the CPUs in the same power domain.
> > >
> > > I understand, which is specifically why this comes with an option to handle
> > > such cases.
> > >
> >
> > OK

I'll update the cover letter and commit messages to reflect that this
option is present. (And likewise for conditionally saving/restoring the
registers only if coresight is in use).

> >
> > > >
> > > > Just curious if this reported on any platforms ?
> > > >
> > >
> > > I have heard people complaining about this, but not sure about the exact
> > > platform(s) affected.
> 
> Are you referring to platforms that ignore the TRCPDCR.PU bit?  If so
> Juno is the only one that does _not_ ignore it, hence the need to find
> another solution.
> 
> > >
> >
> > One we add mechanism in place, platform need to advertise that it's
> > broken in firmware(DT/ACPI). Or just have a blacklist if we don't
> > want to add anything extra to the firmware(DT/ACPI) ?
> >
> > > > I wounder if we can use TRCPDSR(Power Down Status Register) to check the
> > > > status. I know on Juno, it doesn't loose context rather the power down
> > > > is emulated and saving/restoring may not be needed at all. Have you
> > > > tested on Juno with and without these patches and seen any difference ?
> > >
> > > The problem is trace unit looses power the moment CPU goes to low power mode
> > > and if we try to read this register, it could cause unexpected side-effects.
> > >
> >
> > No I meant before CPU loose power i.e. in CPU_ENTER case. However I do
> > remember you/Andrew mentioning that even that may be bogus on broken
> > systems, so firmware is only way to avoid penalising all platforms IMO.
> 
> I wouldn't assume that anything is working properly.

Thanks,

Andrew Murray

> 
> >
> > Or other option is to stop the coresight tracing session like we do
> > for PMUs or not entering idle when there's any active coresight session
> > in progress on such platforms.
> >
> > --
> > Regards,
> > Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
