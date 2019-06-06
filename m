Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDF237486
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 14:51:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7N/lDnSHyTJh/hJFKaJhGA7uE4ECntcdzz7gZtXHrk=; b=L0CriDCxHcTlG8
	lQAUb6O7ZdaNExAOPEux/Eiyfj057QYFWxab0hAr6x1IxLovC53CAb8C7kl3/8o9RruM/+23pYYR6
	ghmFUtFE2ceO5g+273xD3cCGbolA3gxY1cxWhtIXPju3f+NHYYx/gQXNoI5/lXZfrjCvNP7xMb3xx
	C8klKY039GcptgH5fBgg/FNBCWUqr+9VCyzSApOATKiyAnXvOnu2VF6wjeqSoSSTOro7wyUiCVY9a
	MUufrqWDeDgFQDaUkZKx6f/Sa93jXZRgA6FHHScVzcbwVLqgXnFM+D3UHsVkxVQFKfBic8xwT3qUI
	MG9qfOHfNhCZ5b85dPzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYrs2-0002Cu-Mm; Thu, 06 Jun 2019 12:51:54 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYrrv-0002CE-7w
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 12:51:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C15C374;
 Thu,  6 Jun 2019 05:51:45 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 834683F5AF;
 Thu,  6 Jun 2019 05:51:43 -0700 (PDT)
Date: Thu, 6 Jun 2019 13:51:41 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH 0/6] mailbox: arm_mhu: add support to use in doorbell mode
Message-ID: <20190606125140.GB26273@e107155-lin>
References: <20190531143320.8895-1-sudeep.holla@arm.com>
 <CABb+yY1u5zdocgV=HhQcHWQa_R7ArtFqndU5_T=NsPHJ=jwseA@mail.gmail.com>
 <20190531165326.GA18115@e107155-lin>
 <20190603193946.GC2456@sirena.org.uk>
 <20190604093827.GA31069@e107533-lin.cambridge.arm.com>
 <20190605194636.GW2456@sirena.org.uk>
 <CABb+yY27Xe7d5=drKUGg82rJXcRU3EfZkG9FygZoOiioY-BMyw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY27Xe7d5=drKUGg82rJXcRU3EfZkG9FygZoOiioY-BMyw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_055147_298917_EE05DEE9 
X-CRM114-Status: GOOD (  25.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

On Wed, Jun 05, 2019 at 07:51:12PM -0500, Jassi Brar wrote:
> On Wed, Jun 5, 2019 at 2:46 PM Mark Brown <broonie@kernel.org> wrote:
> >
> > On Tue, Jun 04, 2019 at 10:44:24AM +0100, Sudeep Holla wrote:
> > > On Mon, Jun 03, 2019 at 08:39:46PM +0100, Mark Brown wrote:
> >
> > >
> > > > It feels like the issues with sharing access to the hardware and with the
> > > > API for talking to doorbell hardware are getting tied together and
> > > > confusing things.  But like I say I might be missing something here.
> >
> > ...
> >
> > > So what I am trying to convey here is MHU controller hardware can be
> > > used choosing one of the  different transport protocols available and
> > > that's platform choice based on the use-case.
> >
> > > The driver in the kernel should identify the same from the firmware/DT
> > > and configure it appropriately.
> >
> > > It may get inefficient and sometime impossible to address all use-case
> > > if we stick to one transport protocol in the driver and try to build
> > > an abstraction on top to use in different transport mode.
> >
> > Right, what I was trying to get at was that it feels like the discussion
> > is getting wrapped up in the specifics of the MHU rather than
> > representing this sort of controller with multiple modes in the
> > framework.
> >
> Usually when a controller could be used in more than one way, we
> implement the more generic usecase. And that's what was done for MHU.

That's debatable and we have done that so extensively so far.
So what I am saying is to implement different modes not just one so that
as many use-case are addressed.

> Implementing doorbell scheme would have disallowed mhu platforms that
> don't have any shmem between the endpoints. Now such platforms could
> use 32bits registers to pass/get data. Meanwhile doorbells could be
> emulated in client code.
>  Also, next version of MHU has many (100?) such 32bit registers per
> interrupt. Clearly those are not meant to be seen as 3200 doorbells,
> but as message passing windows. (or maybe that is an almost different
> controller because of the differences)
>

I disagree. It's configurable and vendors can just choose 2 instead of
100s as you mentioned based on the use-case and needs. So we will still
need the same there.

> BTW, this is not going to be the end of SCMI troubles (I believe
> that's what his client is). SCMI will eventually have to be broken up
> in layers (protocol and transport) for many legit platforms to use it.
> That is mbox_send_message() will have to be replaced by, say,
> platform_mbox_send()  in drivers/firmware/arm_scmi/driver.c  OR  the
> platforms have to have shmem and each mailbox controller driver (that
> could ever be used under scmi) will have to implement "doorbell
> emulation" mode. That is the reason I am not letting the way paved for
> such emulations.
>

While I don't dislike or disagree with separate transport in SCMI which
I have invested time and realised that I will duplicate mailbox framework
at the end. So I am against it only because of duplication and extra
layer of indirection which has performance impact(we have this seen in
sched governor for DVFS). So idea wise, it's good and I don't disagree
with practically seen performance impact. Hence I thought it's sane to
do something I am proposing. It also avoids coming up with virtual DT
nodes for this layer of abstract which I am completely against.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
