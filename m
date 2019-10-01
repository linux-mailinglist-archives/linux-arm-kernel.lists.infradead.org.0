Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 102B9C3783
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irZK/s1y3RxT2m5PVldnwAoqWJBlmDGo3JKs28O0UWM=; b=RJVb7KUmcpuDhK
	gp5z0H4BNVmZGKTTyZwnMhMjIYTGkANlFlxiO+yQbksfqznE8hfb4WUdVTWTg3y6YS15wq+1GiRhh
	UY2lR0WJ/ZQcrHL+xFwTfzPi/WInHt3MsGfcfA2l0Qz7TPDL7t25pex6N3qmWDcRireHTJ8A8ZT0c
	YA3zmtTntkM41aT742cDx8uHA1dRFWlCvXSSjTw3aAZ4jDmBe6E1t1Y3uEU2NF0dVrKd+beqG23OJ
	MOkin+cQGNFtPg8I/YLL2OlbqbITbwl5H8PLZDcESCitGC2mWrAQ5PGCdnXMgoU8f0HTnjstFrwMa
	YzNuG+ziqP3O0sHvL7Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJER-0005Vh-9R; Tue, 01 Oct 2019 14:34:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJEI-0005QL-Ry
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:34:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 70B7D1000;
 Tue,  1 Oct 2019 07:34:16 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1DF583F71A;
 Tue,  1 Oct 2019 07:34:15 -0700 (PDT)
Date: Tue, 1 Oct 2019 15:34:07 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 1/2] arm64: dts: juno: add GPU subsystem
Message-ID: <20191001143350.GA404@bogus>
References: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
 <CAL_JsqKUP6qG6PVL47RQ5A5OcBhpdOA_0VL1YeYDuyVSVcRqCQ@mail.gmail.com>
 <20191001085954.GA10443@bogus>
 <2a3b2fe1-b08a-bc21-6f3b-4a595b51463c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2a3b2fe1-b08a-bc21-6f3b-4a595b51463c@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_073418_950753_9D20BDB8 
X-CRM114-Status: GOOD (  19.29  )
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, devicetree@vger.kernel.org,
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 01:45:30PM +0100, Robin Murphy wrote:
> On 01/10/2019 09:59, Sudeep Holla wrote:
> > On Mon, Sep 30, 2019 at 12:46:33PM -0500, Rob Herring wrote:
> > > On Mon, Sep 30, 2019 at 10:25 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > 
> > > > Since we now have bindings for Mali Midgard GPUs, let's use them to
> > > > describe Juno's GPU subsystem, if only because we can. Juno sports a
> > > > Mali-T624 integrated behind an MMU-400 (as a gesture towards
> > > > virtualisation), in their own dedicated power domain with DVFS
> > > > controlled by the SCP.
> > > > 
> > > > CC: Liviu Dudau <liviu.dudau@arm.com>
> > > > CC: Sudeep Holla <sudeep.holla@arm.com>
> > > > CC: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > > > ---
> > > >   .../bindings/gpu/arm,mali-midgard.yaml        |  5 +++-
> > > >   arch/arm64/boot/dts/arm/juno-base.dtsi        | 27 +++++++++++++++++++
> > > >   2 files changed, 31 insertions(+), 1 deletion(-)
> > > 
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > 
> > If you plan to take it along with driver change,
> > 
> > Acked-by: Sudeep Holla <sudeep.holla@arm.com>
> > 
> > If not, please let us know. I can take it for v5.5
> 
> The driver change is debatable and not strictly necessary, so it probably
> makes more sense to take this one through the VExpress tree on its own. I
> wouldn't suggest flipping the status to "enabled" just yet, but it seems

Sure, make sense.

> worth putting the basic description in place as a jumping-off point for
> folks to hack on (e.g. it's another 'interesting' case for devfreq OPP
> stuff).

IIUC, the devfreq support in panfrost driver should work fine with SCPI
as it has clock provider for GPU DVFS.

With SCMI, we don't want to hook to clock framework, but I am yet to come
up with a sane generic way to add SCMI devfreq and integrate it with the
panfrost devfreq.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
