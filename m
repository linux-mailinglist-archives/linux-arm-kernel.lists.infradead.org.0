Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDA1427CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 15:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/6jhozrMYnFo0qyAMhTrnsAUgEv6jDxQn1wP0hy5Sg=; b=PGNKdmsiWR0OPp
	HehuSSVQ4Ac+mzHIOv4GJ8eNnD90kSn4VAoSKwSFg+xg3ddRUtWf62kmi9Tp22eF2kjdas6Ls/UZy
	1ci7GDlM4TfkamfbPJ4cumiVIWVXV+WeJ7seRAaM2h1yPMEJO4nCWmq12x9tukZFSoCEB1G220PE1
	8iJ3zQAY27N/n+Rklc25LzrVdJK8Lvvai9UPSM5kIVJ5e0dXB5pmM6J22mf0remK9fo05uBDeg4xC
	BB0YMSo2oxT5YrJ9w8I610vovstKY/W3CGfwWn6j6cmSa4qf5EXCXTquOFDkQJI0SmRSWGBgX0EiW
	IPRR5Ns5mm13t20H098w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb3TB-0000q8-Tm; Wed, 12 Jun 2019 13:39:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb3Sz-0000po-5J
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 13:39:06 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29FDC20B1F;
 Wed, 12 Jun 2019 13:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560346744;
 bh=WBC3kV6boUG4g0ISh+/Q4tHQr5heRL1XoT+RzTqjx/c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jadukF9E0+CT+yi715fyqQx75FWd9SG+n5IHNuVSvny1BFdo4qJulitWVAdLiCDm+
 dcXCnRt5p2izrUGcxU0FBywUIVl/Ontpx0aG5VLMjFxYO/y/itjIGLAjNgZEx3fOin
 RQYkQugxl/iZJwGadx+LOtSpkmAkB3OGKlkVDxVE=
Date: Wed, 12 Jun 2019 21:38:22 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Igor Opaniuk <igor.opaniuk@gmail.com>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ull-colibri: enable UHS-I for USDHC1
Message-ID: <20190612132705.GJ11086@dragon>
References: <20190606090612.16685-1-igor.opaniuk@gmail.com>
 <3b84f3cc6cd5399f25ebd8e1c8559c58@agner.ch>
 <CAByghJZJzFN9c9V-o=SV0z07++RPqsB0R8MTsovbtLr3vqJgyw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAByghJZJzFN9c9V-o=SV0z07++RPqsB0R8MTsovbtLr3vqJgyw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_063905_233740_5CAF2315 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marcel Ziswiler <marcel@ziswiler.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 03:49:03PM +0300, Igor Opaniuk wrote:
> Hi Stefan,
> 
> On Wed, Jun 12, 2019 at 3:17 PM Stefan Agner <stefan@agner.ch> wrote:
> >
> > On 06.06.2019 11:06, Igor Opaniuk wrote:
> > > From: Igor Opaniuk <igor.opaniuk@toradex.com>
> > >
> > > Allows to use the SD interface at a higher speed mode if the card
> > > supports it. For this the signaling voltage is switched from 3.3V to
> > > 1.8V under the usdhc1's drivers control.
> > >
> > > Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
> > > ---
> > >  arch/arm/boot/dts/imx6ul.dtsi                  |  4 ++++
> > >  arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 11 +++++++++--
> > >  arch/arm/boot/dts/imx6ull-colibri.dtsi         |  6 ++++++
> > >  3 files changed, 19 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> > > index fc388b84bf22..91a0ced44e27 100644
> > > --- a/arch/arm/boot/dts/imx6ul.dtsi
> > > +++ b/arch/arm/boot/dts/imx6ul.dtsi
> > > @@ -857,6 +857,8 @@
> > >                                        <&clks IMX6UL_CLK_USDHC1>,
> > >                                        <&clks IMX6UL_CLK_USDHC1>;
> > >                               clock-names = "ipg", "ahb", "per";
> > > +                             fsl,tuning-step= <2>;
> > > +                             fsl,tuning-start-tap = <20>;
> > >                               bus-width = <4>;
> > >                               status = "disabled";
> > >                       };
> > > @@ -870,6 +872,8 @@
> > >                                        <&clks IMX6UL_CLK_USDHC2>;
> > >                               clock-names = "ipg", "ahb", "per";
> > >                               bus-width = <4>;
> > > +                             fsl,tuning-step= <2>;
> > > +                             fsl,tuning-start-tap = <20>;
> > >                               status = "disabled";
> > >                       };
> > >
> > > diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> > > b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> > > index 006690ea98c0..7dc7770cf52c 100644
> > > --- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> > > +++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> > > @@ -145,13 +145,20 @@
> > >  };
> > >
> > >  &usdhc1 {
> > > -     pinctrl-names = "default";
> > > +     pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
> > >       pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_snvs_usdhc1_cd>;
> > > -     no-1-8-v;
> > > +     pinctrl-1 = <&pinctrl_usdhc1_100mhz &pinctrl_snvs_usdhc1_cd>;
> > > +     pinctrl-2 = <&pinctrl_usdhc1_100mhz &pinctrl_snvs_usdhc1_cd>;
> >
> > Should that not be pinctrl_usdhc1_200mhz?
> >
> 
> Correct, thanks for pointing this out.
> Taking into account that the patch was already accepted by Shawn, will
> send another to fix this typo ASAP (added to my todo list).

I just fixed it up on my branch.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
