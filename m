Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C702F598B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 22:21:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cTIXGJ4oj0fW79TgmCbkqfR3LXByiiLO1d/K8k8viXA=; b=JozCGrfHC2XDN/
	te0+Cqb0RyZVGc2mCqoDpOseSg8fk39h273HjjMy9JSJUQS4ZDjeg0+coOy3jkH4Pxc7aSHRL2Is5
	shdVKCSCuvkUq1Pz4AoKOxpTfAgB4fT8kJxESqM5Nx8jtMK55FD9AglgW+mr9G2JrXvUK683IR4Or
	m1L7v6yE9WjzaT+z/bJ68Bwh0Fg3dqm4YNmMugRqICcHQfnFYS4xgYqrhYsK13ZVa7UAPyJ0rGTqP
	ZKFbK0qrxyEBE3DI+Iu7pXZ42DLvsi/vkO65yRwvGWb7iWv1FnD3aNL1JeYlxfjaykQQgX/tFg/vK
	cncvkFSLgjJFVJCWPeZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTBhT-0004Sr-De; Fri, 08 Nov 2019 21:21:47 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTBhK-0004ST-04
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 21:21:39 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id D25AA80D4;
 Fri,  8 Nov 2019 21:22:12 +0000 (UTC)
Date: Fri, 8 Nov 2019 13:21:33 -0800
From: Tony Lindgren <tony@atomide.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH 1/2] configs: ARM: omap2plus: Enable OMAP3_THERMAL
Message-ID: <20191108212133.GS5610@atomide.com>
References: <20191007220540.30690-1-aford173@gmail.com>
 <20191022162223.GU5610@atomide.com>
 <CAHCN7xLy975mxX+cm56PMx-TKODEZjYPfMHb=byspKxYXXq7OA@mail.gmail.com>
 <20191022221919.GF5610@atomide.com>
 <1CE62E4E-1A38-448C-9197-8FA16747F942@goldelico.com>
 <20191023143646.GG5610@atomide.com>
 <CAHCN7xKi4oSoVbRM=-D1s2GnMig8xs6iYNwUWj2Ohfj+1okx=Q@mail.gmail.com>
 <20191108205139.GP5610@atomide.com>
 <CAHCN7xLv9K07ya4Ssj_zs_7pwGwWVT_P4QbH88Bz0wPjB=HX_A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xLv9K07ya4Ssj_zs_7pwGwWVT_P4QbH88Bz0wPjB=HX_A@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_132138_077788_2DAD1AEB 
X-CRM114-Status: GOOD (  22.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 devicetree <devicetree@vger.kernel.org>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Adam Ford <aford173@gmail.com> [191108 21:05]:
> On Fri, Nov 8, 2019 at 2:51 PM Tony Lindgren <tony@atomide.com> wrote:
> >
> > * Adam Ford <aford173@gmail.com> [191108 20:03]:
> > > On Wed, Oct 23, 2019 at 9:36 AM Tony Lindgren <tony@atomide.com> wrote:
> > > > My guess is we need to call clk_disable() and call
> > > > ti_bandgap_save_ctxt() on CPU_CLUSTER_PM_ENTER similar to
> > > > what ti_bandgap_suspend does. And then restore it on
> > > > CPU_CLUSTER_PM_EXIT.
> > > >
> > > > There's a similar example already in gpio_omap_cpu_notifier().
> > > > Not sure if there is some related errata to deal with too,
> > > > probably the old Nokia n900 or n9 would provide some hints
> > > > on what exactly needs to be done.
> > >
> > > I 'think' I have a patch ready that does what you're asking, but I
> > > will fully admit that I don't completely grasp what's going on.
> > >
> > > I'll submit it as an RFC, but I am not even sure I understand what to
> > > put into the description, so if you're OK with reviewing the RFC, feel
> > > free to mark up the actual commit message as well.
> > >
> > > From what I can see, the changes haven't negatively impact stuff. I
> > > didn't see the power consumption go up before, so I am not sure I can
> > > replicate your findings.
> > >
> > > It'll be posted shortly.
> >
> > Yeah seems to do the job, thanks for fixing this issue.
> 
> I am glad I could help!  I am learning new stuff.  :-)
> 
> Once the other patch to fix the bandgap clock idling, will it be
> possible to accept this as-is, or do you need me to re-base and submit
> again?

No need to resend, I've tagged it again to apply after the
driver fix hits the mainline kernel.

> Ideally, once we get the thermal stuff in and we can drop Nikolaus'
> turbo option on the 1GHz processor and just let the processor scale to
> 1GHz without having to deal with the boost stuff since it should
> throttle back when the junction temp hits its threshold.

Right. AFAIK we also still need some way to represent the
arch/arm/mach-omap2/voltage.c as drivers/regulator some kind
of regulator controller regulator for cpufreq to use.

> If you want me to re-base, please let me know which branch I should use.

No need for that.

Thanks,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
