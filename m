Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E94043784E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=de8ro4AxnpsN/YtJs21AxYKbIoTEvc0mrk+zuXY5yI0=; b=kET2K43+0MHMJH
	OuZmhWNYTjiqTBWMJ/uFK0OlVgmvMnRGLfu5kKZ+TCcDKRVK9LB71O2X2Py0Hz/vd83c1FS9KV8xC
	wwc/hP/iFbIwxUUem0B+rj8Ljl+2hUW+YVXaeaVOtJ/7rzp22G0iFUxwznHDTalXkwSNcZWkh+5H1
	GiEwYkQGMrpkBU/kHwo/MR8jTJf3aVenfdo5o/qDmCu9FEqdaN+BBNmccfyafvb4cn1I8XtZINVcX
	zNXAOQoIjhqwmsIBysqPvsNCsyyRy19CxIpGXe5YVHZ+kxu5OkF4g2ud09OyT1IiQkZBNpUjzDe5C
	Y6IpX1KLmzyNt0h+jF7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYuVj-0000fa-Od; Thu, 06 Jun 2019 15:41:03 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYuVb-0000et-OX
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 15:40:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0760DA78;
 Thu,  6 Jun 2019 08:40:54 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5D8473F690;
 Thu,  6 Jun 2019 08:40:52 -0700 (PDT)
Date: Thu, 6 Jun 2019 16:40:45 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH 0/6] mailbox: arm_mhu: add support to use in doorbell mode
Message-ID: <20190606154045.GA2429@e107155-lin>
References: <20190531143320.8895-1-sudeep.holla@arm.com>
 <CABb+yY1u5zdocgV=HhQcHWQa_R7ArtFqndU5_T=NsPHJ=jwseA@mail.gmail.com>
 <20190531165326.GA18115@e107155-lin>
 <20190603193946.GC2456@sirena.org.uk>
 <20190604093827.GA31069@e107533-lin.cambridge.arm.com>
 <20190605194636.GW2456@sirena.org.uk>
 <CABb+yY27Xe7d5=drKUGg82rJXcRU3EfZkG9FygZoOiioY-BMyw@mail.gmail.com>
 <20190606125140.GB26273@e107155-lin>
 <CABb+yY06heJ5s5-2tvrDt9CdL+--YLG+P52e52YFPqTA=Nb3vw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY06heJ5s5-2tvrDt9CdL+--YLG+P52e52YFPqTA=Nb3vw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_084055_806463_D33EC451 
X-CRM114-Status: GOOD (  21.91  )
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

On Thu, Jun 06, 2019 at 10:20:40AM -0500, Jassi Brar wrote:
> On Thu, Jun 6, 2019 at 7:51 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> >
> > > BTW, this is not going to be the end of SCMI troubles (I believe
> > > that's what his client is). SCMI will eventually have to be broken up
> > > in layers (protocol and transport) for many legit platforms to use it.
> > > That is mbox_send_message() will have to be replaced by, say,
> > > platform_mbox_send()  in drivers/firmware/arm_scmi/driver.c  OR  the
> > > platforms have to have shmem and each mailbox controller driver (that
> > > could ever be used under scmi) will have to implement "doorbell
> > > emulation" mode. That is the reason I am not letting the way paved for
> > > such emulations.
> > >
> >
> > While I don't dislike or disagree with separate transport in SCMI which
> > I have invested time and realised that I will duplicate mailbox framework
> > at the end.
> >
> Can you please share the code? Or is it no more available?
>
> > So I am against it only because of duplication and extra
> > layer of indirection which has performance impact(we have this seen in
> > sched governor for DVFS).
> >
> I don't see why the overhead should increase noticeably.
>

Simple, if 2 protocols share the same channel, then the requests are
serialised. E.g. if bits 0 and 1 are allocated for protocol#1
and bits 2 and 3 for protocol#2 and protocol#1 has higher latency
requirements like sched-governor DVFS and there are 3-4 pending requests
on protocol#2, then the incoming request for protocol#1 is blocked.

> > So idea wise, it's good and I don't disagree
> > with practically seen performance impact. Hence I thought it's sane to
> > do something I am proposing.
> >
> Please suggest how is SCMI supposed to work on ~15 controllers
> upstream (except tegra-hsp) ?
>

Do you mean we have to implement platform layer to make it work ?
That's not necessary IMO.

> > It also avoids coming up with virtual DT
> > nodes for this layer of abstract which I am completely against.
> >
> I don't see why virtual DT nodes would be needed for platform layer.

So how will 2 or more different users of the same mailbox identify the
bits allocated for them ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
