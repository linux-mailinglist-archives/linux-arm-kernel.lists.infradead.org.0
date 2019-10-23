Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A50E1E49
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 16:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g++Z5A/Omp+8Exfr4VznVfIArKGAxxsfhxo/HOBAP08=; b=JY1vaomBuwVkJD
	waU3RNSWaDXa064e+N/sdPXVJFsUlihA/ICatYLeM1TlQCVNEFJCXTu5s4fB4+wOpVUH/7y6EpXOJ
	xvwQnUXbYhgra9SlxGCEl8iz8WpZZ8MLAXQoE4QLuYNvJTk7aEqhr6CXydn/Iwdnyngy0QWqKh+1K
	aCZpb1I2Vl8rry3gZ/po37zYiOYWx8zvH+ND9yLZSeLoG1Lo4HaGKKG0RQnjdsME4xWkkbMmFaDkL
	GQI1kAQSTMDtC8xowjqCGWI5MoLrJb/ylpHfu2JOY7rAiiwqWwKIRoKybkdstssjArKQD+5r2s8XS
	IO2x/L/S1xSMdm+Har5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNHkz-0001uH-Jk; Wed, 23 Oct 2019 14:37:01 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNHkq-0001tV-Sf
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 14:36:54 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id D2A4B80CF;
 Wed, 23 Oct 2019 14:37:23 +0000 (UTC)
Date: Wed, 23 Oct 2019 07:36:46 -0700
From: Tony Lindgren <tony@atomide.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH 1/2] configs: ARM: omap2plus: Enable OMAP3_THERMAL
Message-ID: <20191023143646.GG5610@atomide.com>
References: <20191007220540.30690-1-aford173@gmail.com>
 <20191022162223.GU5610@atomide.com>
 <CAHCN7xLy975mxX+cm56PMx-TKODEZjYPfMHb=byspKxYXXq7OA@mail.gmail.com>
 <20191022221919.GF5610@atomide.com>
 <1CE62E4E-1A38-448C-9197-8FA16747F942@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1CE62E4E-1A38-448C-9197-8FA16747F942@goldelico.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_073652_964871_9A2C068E 
X-CRM114-Status: GOOD (  27.41  )
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
 devicetree <devicetree@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <aford173@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* H. Nikolaus Schaller <hns@goldelico.com> [191023 04:42]:
> 
> > Am 23.10.2019 um 00:19 schrieb Tony Lindgren <tony@atomide.com>:
> > 
> > * Adam Ford <aford173@gmail.com> [191022 19:01]:
> >> On Tue, Oct 22, 2019 at 11:22 AM Tony Lindgren <tony@atomide.com> wrote:
> >>> 
> >>> Hi,
> >>> 
> >>> * Adam Ford <aford173@gmail.com> [191007 15:06]:
> >>>> The some in the OMAP3 family have a bandgap thermal sensor, but
> >>>> omap2plus has it disabled.
> >>>> 
> >>>> This patch enables the OMAP3_THERMAL by default like the rest of
> >>>> the OMAP family.
> >>> 
> >>> Looks like this breaks off mode during idle for omap3, and that's
> >>> probably why it never got enabled. The difference in power
> >>> consumption during idle is about 7mW vs 32mW for the SoC as
> >>> measured from torpedo shunt for main_battery_som.
> >>> 
> >>> I think the right fix might be simply to add handling for
> >>> CPU_CLUSTER_PM_ENTER to the related thermal driver to disable
> >>> it during idle like we have for gpio-omap.c for example.
> >> 
> >> I am not sure I know where to start on fixing that issue.  Would you
> >> entertain enabling the driver if we set the device tree to 'disabled'
> >> by default?  This way if people want to to use it, it can be enabled
> >> on a per-device option.  Once the power stuff gets resolved, we might
> >> be able to enable it by default.  For people who are planning on using
> >> the DM3730 @ 1GHz in high temp environments, I am not sure they'll
> >> care about low power.
> > 
> > They should both work fine together though. They are not mutually
> > exclusive features.
> > 
> >> I'll try to look into it when I have time, but I was hoping a
> >> compromise might be a reasonable work-around.
> > 
> > It should be hopefully a trivial fix.. I have not looked at the
> > driver code though.
> 
> If I am taken right, it is the drivers/thermal/ti-soc-thermal/ti-*.c
> which is a common driver for omap3, omap4, omap5. They only differ
> in the thermal data and which registers and bits are used to access
> the ADC.

Yes so it seems. Enabling OMAP3_THERMAL adds support to
of_ti_bandgap_match[] for omap3 and causes the issue.

> So is this problem with off mode also known for omap4 and omap5?

Probably. But we don't have off mode working for omap4, and
it cannot be used for omap5 AFAIK.

My guess is we need to call clk_disable() and call
ti_bandgap_save_ctxt() on CPU_CLUSTER_PM_ENTER similar to
what ti_bandgap_suspend does. And then restore it on
CPU_CLUSTER_PM_EXIT.

There's a similar example already in gpio_omap_cpu_notifier().
Not sure if there is some related errata to deal with too,
probably the old Nokia n900 or n9 would provide some hints
on what exactly needs to be done.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
