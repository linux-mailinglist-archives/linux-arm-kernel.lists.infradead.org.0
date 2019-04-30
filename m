Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC1AFE42
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 18:58:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RflkgELMxCYbiP1NCc08f8D85r6ACZM7+F+byIebF8=; b=JZV2YXlzeU1N1b
	E/rhgucvLcYMv4OGOq4pNKNuDK2AXpngah6CcBVJDuD7QjxF0yQc+tU4ZF2r9Ems14TCWdt2dB0UI
	zW71YaHgBEimJXkJaeL1p0cHK5OgffU68xam4/KDF9IxpHRnAputrrzt8AfyRT6L3LzinyliLJFWQ
	zMdLuLghKilhTLn3PSRFhtBYfRvqadTMIL0xqy9sbm50/X6Qc0Jkj0nXdHcRYGhDq1LcYinXZgDIt
	VY9YxQLh4y9VqugNlTrux1PL9enDkMm23YT272iolEwrapJ4gZJqV2E6zfkEhPZ2LaDRsVkcPRGKs
	l4INpVAkhXxKteeN9JJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLW5M-0000pG-My; Tue, 30 Apr 2019 16:58:28 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLW5F-0000oc-Bz
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 16:58:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id D1245FB03;
 Tue, 30 Apr 2019 18:58:18 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m4ARVJI0QoKf; Tue, 30 Apr 2019 18:58:17 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 15AA24027E; Tue, 30 Apr 2019 18:58:17 +0200 (CEST)
Date: Tue, 30 Apr 2019 18:58:17 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v9 2/2] phy: Add driver for mixel mipi dphy found on
 NXP's i.MX8 SoCs
Message-ID: <20190430165817.GB29626@bogon.m.sigxcpu.org>
References: <cover.1556633413.git.agx@sigxcpu.org>
 <b999b07673e59c676d2e43a786b635beb056e9bf.1556633413.git.agx@sigxcpu.org>
 <CAOMZO5BerzB94YvJgZoOVYaA3fCsHQiuC5FyVVVRV+ttEg92uQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5BerzB94YvJgZoOVYaA3fCsHQiuC5FyVVVRV+ttEg92uQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_095821_563763_D88FBA18 
X-CRM114-Status: GOOD (  25.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>, Abel Vesa <abel.vesa@nxp.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Robert Chiras <robert.chiras@nxp.com>, Thierry Reding <treding@nvidia.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,
On Tue, Apr 30, 2019 at 01:24:45PM -0300, Fabio Estevam wrote:
> Hi Guido,
> =

> On Tue, Apr 30, 2019 at 11:40 AM Guido G=FCnther <agx@sigxcpu.org> wrote:
> >
> > This adds support for the Mixel DPHY as found on i.MX8 CPUs but since
> > this is an IP core it will likely be found on others in the future. So
> > instead of adding this to the nwl host driver make it a generic PHY
> > driver.
> >
> > The driver supports the i.MX8MQ. Support for i.MX8QM and i.MX8QXP can be
> > added once the necessary system controller bits are in via
> > mixel_dphy_devdata.
> >
> > Co-authored-by: Robert Chiras <robert.chiras@nxp.com>
> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> =

> I wish I could test it on a imx8m-evk , but there are some other
> pieces needed such as Northwest Logic driver, mxsfb changes for
> supporting mx8m, OLED panel driver, etc
> =

> Anyway, it looks good to me and I have only a few minor comments:
> =

> > ---
> >  drivers/phy/freescale/Kconfig                 |  11 +
> >  drivers/phy/freescale/Makefile                |   1 +
> >  .../phy/freescale/phy-fsl-imx8-mipi-dphy.c    | 506 ++++++++++++++++++
> >  3 files changed, 518 insertions(+)
> >  create mode 100644 drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> >
> > diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kcon=
fig
> > index 832670b4952b..a111b130f9d2 100644
> > --- a/drivers/phy/freescale/Kconfig
> > +++ b/drivers/phy/freescale/Kconfig
> > @@ -3,3 +3,14 @@ config PHY_FSL_IMX8MQ_USB
> >         depends on OF && HAS_IOMEM
> >         select GENERIC_PHY
> >         default ARCH_MXC && ARM64
> > +
> > +config PHY_MIXEL_MIPI_DPHY
> > +       tristate "Mixel MIPI DSI PHY support"
> > +       depends on OF && HAS_IOMEM
> > +       select GENERIC_PHY
> > +       select GENERIC_PHY_MIPI_DPHY
> > +       select REGMAP_MMIO
> > +       default ARCH_MXC && ARM64
> =

> I don't think that this default is a good idea.
> =

> There are imx8m systems that do not have display, so in this case it
> does not make sense to always force the build of this driver.

O.k. - we can enable this based on imx-nwl later on. I've also addressed
your other comments. Will wait for a v10 for a couple of days in case
there's more feedback.
Thanks,
 -- Guido

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
