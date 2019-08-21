Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 320729819A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 19:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDI7k6rr7hp9DWPLMzMeXV50ehMo7ptmPNOw5MU8+4o=; b=rkjGtG9NXRK+zt
	O/tgBD7oqs42taK2YaEhmuDY2RHNIZtDC6nzSTLEyBhhUou9qER8pbTz6iJ4qsMcAzrhjvmcnoRbE
	oWdvCiWJ37Yhh8JDsMpFgcRl51k6ecgBmtkiFLCmtd8sbdq8UffOnTVF11Ho7yQjVrbTEts1E61wN
	eoUv5iWtwxSeuhYncpSnPWT2tB5DxtwjYVOhtKWYwqz50kxWybGo77jf+f/COLKWDV3FnmMOAuotX
	sm0wMVJzKJkEuitArcuLMSLtcZzdkkRh613oZKtb+/6+q5onqlOgDZ+3am29RjYBL0n+R2dSX2/2t
	DxytzxNDAuKiXCWafP8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Ucr-0005fS-Lt; Wed, 21 Aug 2019 17:42:25 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Ucg-0005eg-Ja
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 17:42:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 65FA6FB03;
 Wed, 21 Aug 2019 19:42:10 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h-xhcMPhWSrc; Wed, 21 Aug 2019 19:42:08 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 50A8642A70; Wed, 21 Aug 2019 19:42:08 +0200 (CEST)
Date: Wed, 21 Aug 2019 19:42:08 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 1/3] arm64: imx8mq: add imx8mq iomux-gpr field defines
Message-ID: <20190821174208.GA9486@bogon.m.sigxcpu.org>
References: <cover.1565367567.git.agx@sigxcpu.org>
 <e0562d8bb4098dc4cdb4023b41fb75b312be22a5.1565367567.git.agx@sigxcpu.org>
 <CAK8P3a3Vrd+sttJrQwD-jA9p_egG4x-hc41eGK8H-_aVm-uoYw@mail.gmail.com>
 <20190813101057.GB10751@bogon.m.sigxcpu.org>
 <CAK8P3a1q9G8VKgNKh+6khzoW3bFTVR_Zorygy=Qqsq-PYzM4=g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1q9G8VKgNKh+6khzoW3bFTVR_Zorygy=Qqsq-PYzM4=g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_104214_965818_DC8179FC 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Daniel Vetter <daniel@ffwll.ch>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Chiras <robert.chiras@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Tue, Aug 13, 2019 at 01:07:52PM +0200, Arnd Bergmann wrote:
> On Tue, Aug 13, 2019 at 12:10 PM Guido G=FCnther <agx@sigxcpu.org> wrote:
> > On Tue, Aug 13, 2019 at 10:08:44AM +0200, Arnd Bergmann wrote:
> > > On Fri, Aug 9, 2019 at 6:24 PM Guido G=FCnther <agx@sigxcpu.org> wrot=
e:
> > > >
> > > > This adds all the gpr registers and the define needed for selecting
> > > > the input source in the imx-nwl drm bridge.
> > > >
> > > > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > > > +
> > > > +#define IOMUXC_GPR0    0x00
> > > > +#define IOMUXC_GPR1    0x04
> > > > +#define IOMUXC_GPR2    0x08
> > > > +#define IOMUXC_GPR3    0x0c
> > > > +#define IOMUXC_GPR4    0x10
> > > > +#define IOMUXC_GPR5    0x14
> > > > +#define IOMUXC_GPR6    0x18
> > > > +#define IOMUXC_GPR7    0x1c
> > > (more of the same)
> > >
> > > huh?
> >
> > These are the names from the imx8MQ reference manual (general purpose
> > registers, they lump together all sorts of things), it's the same on
> > imx6/imx7):
> >
> >     https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/=
tree/include/linux/mfd/syscon/imx6q-iomuxc-gpr.h
> >     https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/=
tree/include/linux/mfd/syscon/imx7-iomuxc-gpr.h
> >
> > > > +/* i.MX8Mq iomux gpr register field defines */
> > > > +#define IMX8MQ_GPR13_MIPI_MUX_SEL              BIT(2)
> > >
> > > I think this define should probably be local to the pinctrl driver, to
> > > ensure that no other drivers fiddle with the registers manually.
> >
> > The purpose of these bits is for a driver to fiddle with them to select
> > the input source. Similar on imx7 it's already used for e.g. the phy
> > refclk in the pci controller:
> >
> >     https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/=
tree/drivers/pci/controller/dwc/pci-imx6.c#n638
> =

> That one should likely use either the clk interface or the phy
> interface instead.
> =

> > The GPRs are not about pad configuration but gather all sorts of things
> > (section 8.2.4 of the imx8mq reference manual): pcie setup, dsi related
> > bits so I don't think this should be done via a pinctrl
> > driver. Should we handle that differently than on imx6/7?
> =

> It would be nice to fix the existing code as well, but for the moment,
> I only think we should not add more of that.
> =

> Generally speaking, we can use syscon to do random things that don't
> have a subsystem of their own, but we should not use it to do things
> that have an existing driver framework like pinctrl, clock, reset, phy
> etc.

Since it's not an external pin i opted to use MUX_MMIO instead which
seems like a good fit here. Does that make sense?
Cheers,
 -- Guido

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
