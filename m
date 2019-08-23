Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A55B9AE6F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 13:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ieTvPFsH6tk9+wYHGj5fNcDTMm59XbEVqeDNHAu2dY0=; b=fyCVVv5xdOSK5f7/2pZOtnS1E
	AwbF/l4RkLEGE2qSuuBxe5dLAAxx8Mh84UzwMpTqSMWKMipefMBwJ85ZdOcisRbOar2FH8nHULxOT
	IQ0ZgdqVZCshr59jbWfVkp1cSbqnMW4/PYx3O6lQNsdYbJmITGTfq7KOwDs+LaExembTjAsYxeSxH
	MxCCfe2YMguS95CJXCxO/rpw4+oc1//aeWeDEQShfW9YBylU6x6LOhyBh3ZT4Y917z9wXhSqRGp3B
	tPE0FjGbwrdSOkmzlD9eo7IeDPRHQs91FYO7o5DBvD46aSepN1tZnr/Co3N30bKok4C5pFsQzgsGJ
	E4X9aNCRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i186M-0007Wm-Fa; Fri, 23 Aug 2019 11:51:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i186E-0007W9-7V
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 11:51:23 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 589F521848;
 Fri, 23 Aug 2019 11:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566561081;
 bh=gZ1OAdl/FGFFkG/ZAMQY2iqDkoQ/OUIjQTL2Q9nMCZI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qUX6dxAr+Ck008LADXrYu3bm/WDq3Mn3GAyJx6jet+W98akkFUlXl91SAKG2X7K2u
 /JpTShgQVrddhaMEp9RgrtV9jCt/3XNjX2rjz/cMBxUBXJQvxKO3AfULcpIgI+y0uU
 tlrCP2E7Ic0qkX+0rGUUCslWmMr5jtVkzC/Kk3pI=
Date: Fri, 23 Aug 2019 13:51:19 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] arm64: dts: allwinner: orange-pi-3: Enable WiFi
Message-ID: <20190823115119.lsfvabrwqpijkr2k@flea>
References: <20190823094228.6540-1-megous@megous.com>
 <20190823100807.22heh2gahi7owo4e@flea>
 <CAGb2v65mDt8t2sceTzKvYP6XVHJgikXyYMc+xWxZFkTJ+LZ1fg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v65mDt8t2sceTzKvYP6XVHJgikXyYMc+xWxZFkTJ+LZ1fg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_045122_314470_C57361D6 
X-CRM114-Status: GOOD (  27.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Mark Rutland <mark.rutland@arm.com>, devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5020455788421868986=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5020455788421868986==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ssnkgdje7jzcgsqx"
Content-Disposition: inline


--ssnkgdje7jzcgsqx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 23, 2019 at 06:10:30PM +0800, Chen-Yu Tsai wrote:
> On Fri, Aug 23, 2019 at 6:08 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > Hi,
> >
> > On Fri, Aug 23, 2019 at 11:42:28AM +0200, megous@megous.com wrote:
> > > From: Ondrej Jirman <megous@megous.com>
> > >
> > > Orange Pi 3 has AP6256 WiFi/BT module. WiFi part of the module is called
> > > bcm43356 and can be used with the brcmfmac driver. The module is powered by
> > > the two always on regulators (not AXP805).
> > >
> > > WiFi uses a PG port with 1.8V voltage level signals. SoC needs to be
> > > configured so that it sets up an 1.8V input bias on this port. This is done
> > > by the pio driver by reading the vcc-pg-supply voltage.
> > >
> > > You'll need a fw_bcm43456c5_ag.bin firmware file and nvram.txt
> > > configuration that can be found in the Xulongs's repository for H6:
> > >
> > > https://github.com/orangepi-xunlong/OrangePiH6_external/tree/master/ap6256
> > >
> > > Mainline brcmfmac driver expects the firmware and nvram at the following
> > > paths relative to the firmware directory:
> > >
> > >   brcm/brcmfmac43456-sdio.bin
> > >   brcm/brcmfmac43456-sdio.txt
> > >
> > > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > > ---
> > >
> > > Since RTC patches for H6 were merged, this can now go in too, if it looks ok.
> > >
> > > Other patches for this WiFi chip support were merged in previous cycles,
> > > so this just needs enabling in DTS now.
> > >
> > > Sorry for the links in the commit log, but this information is useful,
> > > even if the link itself goes bad. Any pointer what to google for
> > > (file names, tree name) is great for anyone searching in the future.
> >
> > I understand, but this should (also?) be in the wiki. Please add it
> > there too.
> >
> > > Please take a look.
> > >
> > > Thank you,
> > >       Ondrej
> > >
> > >  .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 48 +++++++++++++++++++
> > >  1 file changed, 48 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > > index eda9d5f640b9..49d954369087 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > > @@ -56,6 +56,34 @@
> > >               regulator-max-microvolt = <5000000>;
> > >               regulator-always-on;
> > >       };
> > > +
> > > +     reg_vcc33_wifi: vcc33-wifi {
> > > +             /* Always on 3.3V regulator for WiFi and BT */
> > > +             compatible = "regulator-fixed";
> > > +             regulator-name = "vcc33-wifi";
> > > +             regulator-min-microvolt = <3300000>;
> > > +             regulator-max-microvolt = <3300000>;
> > > +             regulator-always-on;
> > > +             vin-supply = <&reg_vcc5v>;
> > > +     };
> > > +
> > > +     reg_vcc_wifi_io: vcc-wifi-io {
> > > +             /* Always on 1.8V/300mA regulator for WiFi and BT IO */
> > > +             compatible = "regulator-fixed";
> > > +             regulator-name = "vcc-wifi-io";
> > > +             regulator-min-microvolt = <1800000>;
> > > +             regulator-max-microvolt = <1800000>;
> > > +             regulator-always-on;
> > > +             vin-supply = <&reg_vcc33_wifi>;
> > > +     };
> > > +
> > > +     wifi_pwrseq: wifi_pwrseq {
>
> IIRC we shouldn't use underscores in node names. Maxime can you fix that up?

Done, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ssnkgdje7jzcgsqx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV/TNwAKCRDj7w1vZxhR
xVrNAQCa1MgrCyh7oN19ZsZE9syJ4qiyl3P8YsI1dtR48YhAWgD/QaSQYVBFbqmM
cWqnn8wDHbjoMqrBbhbYTmLG4+iStA4=
=GDJL
-----END PGP SIGNATURE-----

--ssnkgdje7jzcgsqx--


--===============5020455788421868986==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5020455788421868986==--

