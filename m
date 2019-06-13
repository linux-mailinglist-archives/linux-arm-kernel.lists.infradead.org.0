Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E0E438C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:08:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4RkJ1B8ExBuM0iVa+CDcLL9jfpbrhueXkX3uDWFkok=; b=HpvupG6tHTfPM4
	ykK8MXqGpnjff9McZ/GQig3pbnaBafjIZ96MpBp2tljwKU+CsrBuxKA+za4cVbW3jhXHsXn1wxQ2t
	ZPP1xn+bV+3VyMRh8XK7TRJCD6W7n+ateF0De0Pv9/zkF8riy9ajAgdo5NDAIu57j64KtdsoK8m9p
	G3yEkXqWa2+586DOhlndj8daJQfehm96OfL2+m72CIPYq9DWpXKcoaSXWegZsurXaFnVjNu2QEBGR
	9aVvkR6Zcpwxt8qCWAG1EwDPGqXUTJIaQO3ZlCLaJgCH3/CxrmCv7l8xLKNvs1dLfniVprP8NPkR4
	SGqEI3x4Eib8x03JMKeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRLL-0000Ed-AO; Thu, 13 Jun 2019 15:08:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRKm-0008V5-Vv
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:08:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28E59367;
 Thu, 13 Jun 2019 08:08:12 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E383A3F718;
 Thu, 13 Jun 2019 08:08:10 -0700 (PDT)
Date: Thu, 13 Jun 2019 16:08:04 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH 0/6] mailbox: arm_mhu: add support to use in doorbell mode
Message-ID: <20190613150804.GA11854@e107155-lin>
References: <20190531143320.8895-1-sudeep.holla@arm.com>
 <CABb+yY1u5zdocgV=HhQcHWQa_R7ArtFqndU5_T=NsPHJ=jwseA@mail.gmail.com>
 <20190531165326.GA18115@e107155-lin>
 <20190603193946.GC2456@sirena.org.uk>
 <20190604093827.GA31069@e107533-lin.cambridge.arm.com>
 <20190605194636.GW2456@sirena.org.uk>
 <CABb+yY27Xe7d5=drKUGg82rJXcRU3EfZkG9FygZoOiioY-BMyw@mail.gmail.com>
 <20190606125140.GB26273@e107155-lin>
 <CABb+yY06heJ5s5-2tvrDt9CdL+--YLG+P52e52YFPqTA=Nb3vw@mail.gmail.com>
 <20190606154045.GA2429@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606154045.GA2429@e107155-lin>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080813_285027_2D5B7A58 
X-CRM114-Status: GOOD (  20.35  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Mark Brown <broonie@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 04:40:45PM +0100, Sudeep Holla wrote:
> On Thu, Jun 06, 2019 at 10:20:40AM -0500, Jassi Brar wrote:
> > On Thu, Jun 6, 2019 at 7:51 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > >
> > > > BTW, this is not going to be the end of SCMI troubles (I believe
> > > > that's what his client is). SCMI will eventually have to be broken up
> > > > in layers (protocol and transport) for many legit platforms to use it.
> > > > That is mbox_send_message() will have to be replaced by, say,
> > > > platform_mbox_send()  in drivers/firmware/arm_scmi/driver.c  OR  the
> > > > platforms have to have shmem and each mailbox controller driver (that
> > > > could ever be used under scmi) will have to implement "doorbell
> > > > emulation" mode. That is the reason I am not letting the way paved for
> > > > such emulations.
> > > >
> > >
> > > While I don't dislike or disagree with separate transport in SCMI which
> > > I have invested time and realised that I will duplicate mailbox framework
> > > at the end.
> > >
> > Can you please share the code? Or is it no more available?
> >
> > > So I am against it only because of duplication and extra
> > > layer of indirection which has performance impact(we have this seen in
> > > sched governor for DVFS).
> > >
> > I don't see why the overhead should increase noticeably.
> >
>
> Simple, if 2 protocols share the same channel, then the requests are
> serialised. E.g. if bits 0 and 1 are allocated for protocol#1
> and bits 2 and 3 for protocol#2 and protocol#1 has higher latency
> requirements like sched-governor DVFS and there are 3-4 pending requests
> on protocol#2, then the incoming request for protocol#1 is blocked.
>

Any idea on addressing the above with abstraction layer above the driver ?
And the bit allotment without the virtual channel representation in DT.
These 2 are main issues that needs to be resolved.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
