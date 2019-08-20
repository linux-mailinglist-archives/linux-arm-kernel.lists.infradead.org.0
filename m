Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4A3963A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vZtxBi495LDqZc2BgahWaAa7QqIz6I7nRVLGyOBTfRY=; b=QrBIlp7TMueIx8disllABiY5q
	CtTEvvm8iSkLS+NbNyzfsMrlbJtl5zZEpXafiPkuo+0No7xasmJ0viXRY4jqgYi5qzjagUmz14ZaM
	5m4crIQg+SdiLaoiJA9mKJVUtg6HbnW9qIQkYFuPyOMXk/g3yeQnsCTdv6LikmM12RDaH2DtzUnMh
	i2PdPXL2A5MCYUHFGn/u5w+LptB7iyv/jIG2/Ssz5zltanahT6S2l3uP4xy0QkpezpUyVRRV6D3+G
	oGnJh+2wQaD1QNQCguPTIrpvlIpzg2LrZ4ehYCCflfPht8E+w/QwSmZlxD2n/6QIjNNaLTXwdfDy2
	e6FJ/HHXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05fI-00022c-0c; Tue, 20 Aug 2019 15:03:16 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05cW-0007mD-Qi
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:00:27 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 1FC3140004;
 Tue, 20 Aug 2019 15:00:19 +0000 (UTC)
Date: Tue, 20 Aug 2019 17:00:18 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Thomas Graichen <thomas.graichen@googlemail.com>
Subject: Re: [v5,05/12] drm/modes: Rewrite the command line parser
Message-ID: <20190820150018.uhiquahda6wuxvjd@flea>
References: <e32cd4009153b184103554009135c7bf7c9975d7.1560783090.git-series.maxime.ripard@bootlin.com>
 <5978761.uBj7R84RrF@jernej-laptop>
 <CAOUEw13CCVhk9kt_z2VkguX0=TCeARkH-8+qSh_nF-J+r0Rscg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOUEw13CCVhk9kt_z2VkguX0=TCeARkH-8+qSh_nF-J+r0Rscg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_080025_303599_B770CE82 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: eben@raspberrypi.org, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5980536781913830119=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5980536781913830119==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="upeyyhtq7btyttw2"
Content-Disposition: inline


--upeyyhtq7btyttw2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Aug 19, 2019 at 09:20:00PM +0200, Thomas Graichen wrote:
> On Mon, Aug 19, 2019 at 8:54 PM Jernej =C5=A0krabec <jernej.skrabec@gmail=
=2Ecom> wrote:
> >
> > +CC: Thomas Graichen
> >
> > Dne ponedeljek, 17. junij 2019 ob 16:51:32 CEST je Maxime Ripard napisa=
l(a):
> > > From: Maxime Ripard <maxime.ripard@free-electrons.com>
> > >
> > > Rewrite the command line parser in order to get away from the state m=
achine
> > > parsing the video mode lines.
> > >
> > > Hopefully, this will allow to extend it more easily to support named =
modes
> > > and / or properties set directly on the command line.
> > >
> > > Reviewed-by: Noralf Tr=C3=B8nnes <noralf@tronnes.org>
> > > Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
> >
> > Thomas reported to me that this patch breaks "video=3DCONNECTOR:e" kern=
el
> > parameter which he currently uses as a workaround for H6 HDMI monitor
> > detection issue on one STB.
> >
> > I suppose this is the same issue that Dmitry noticed.
> >
> > Thomas Graichen (in CC) can provide more information if needed.
>
> as jernej already mentioned i am currently having to use the kernel
> cmdline option video=3DHDMI-A-1:e to get a working hdmi output on an
> eachlink h6 mini tv box and was wondering that i did not get any hdmi
> output even with this option when switching from the
> https://github.com/megous/linux oprange-pi-5.2 to the orange-pi-5.3
> branch which seems to contain this patch.

Which kernel version is that based on?

> as i had no idea what might have caused the breakage of the hdmi
> output and did a full bisect of the kernel between those two
> versions, which ended reliably at exactly this patch - so i guess
> there is a regression at least with the video=3DCONNECTOR:e option
> (maybe others too?) with this patches code which makes it not
> working anymore.

I'm not sure I'll have the time to look into it this week (or the
next, unfortunately). However, the e parameter is supposed to be
parsed by drm_mode_parse_cmdline_extra, which in turn is supposed to
be called there:
https://elixir.bootlin.com/linux/v5.3-rc5/source/drivers/gpu/drm/drm_modes.=
c#L1810

If you can test that, having an idea of if that function is called,
which return code it returns, and if it isn't if why would be super
helpful.

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--upeyyhtq7btyttw2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVwLAgAKCRDj7w1vZxhR
xU5jAQCoQQ2yAaOQGsg8OTMgvoNdbtjA4H4nqF4DBTXJ6/8/QQD+L4iC5VrP0gcU
b989j1Th8EdacGteid9NZ8Y9NPnLzw8=
=EtCt
-----END PGP SIGNATURE-----

--upeyyhtq7btyttw2--


--===============5980536781913830119==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5980536781913830119==--

