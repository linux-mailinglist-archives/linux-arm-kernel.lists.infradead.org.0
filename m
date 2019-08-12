Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9A789ABF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SECTUE8PE887FY0PnzKH5A848/uio8syYfFV0AP8EwM=; b=JwSiLm8adDB5+zbUy/Y8xqw1R
	SA4g3qkbkbfqegDMAIhF2cCG+xOzIWgyPc8iGZNjJzEX2kdn24Gdxt9hwSRuRV3rHZV2lgifqXYG9
	5eM1i4O3HMEoSPq0ttse668A4F/oeBQcN5YvDeVjtqqXsBvvb/vVQC8BYI3hT7QxQwTH9DeJtk9n1
	/Xj3r/bg5DYvSozmPibezZ76a1H4jjnWAmIFPlYciyeGc+vvDBFpyYJ5Yknjg9ZZTCrMt/b4t94Yn
	YxuxZsW5FZBNxFVmP92Z7EwBEaZA88E0WgOrPRzS4v/1MKaZbAUgcuTtFBbsNmhietDNe/J6NlIl3
	8VY5gfhuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7AK-0003TV-Ov; Mon, 12 Aug 2019 10:03:00 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7A3-0003T4-1v
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:02:45 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 0A47560008;
 Mon, 12 Aug 2019 10:02:31 +0000 (UTC)
Date: Mon, 12 Aug 2019 12:02:31 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [linux-sunxi] Re: [PATCH v4 6/9] ASoC: sun4i-i2s: Add multi-lane
 functionality
Message-ID: <20190812100231.wlxitekfojr4jaki@flea>
References: <20190603174735.21002-1-codekipper@gmail.com>
 <2092329.vleAuWJ0xl@jernej-laptop>
 <20190731122953.2u3iabd6gkn7jv7k@flea>
 <1589203.0AjJVEASy3@jernej-laptop>
 <CAGb2v66D4-QvWYPXE=rf6Zv93X1LjnxUgpk+5wdAL_b7MM3vaA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v66D4-QvWYPXE=rf6Zv93X1LjnxUgpk+5wdAL_b7MM3vaA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_030243_402604_D79FCB99 
X-CRM114-Status: GOOD (  34.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 Christopher Obbard <chris@64studio.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Code Kipper <codekipper@gmail.com>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6081365439834097528=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6081365439834097528==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4tzqsccmfdz6gxrw"
Content-Disposition: inline


--4tzqsccmfdz6gxrw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 06, 2019 at 02:22:13PM +0800, Chen-Yu Tsai wrote:
> On Thu, Aug 1, 2019 at 1:32 PM Jernej =C5=A0krabec <jernej.skrabec@gmail.=
com> wrote:
> >
> > Dne sreda, 31. julij 2019 ob 14:29:53 CEST je Maxime Ripard napisal(a):
> > > On Tue, Jul 30, 2019 at 07:57:10PM +0200, Jernej =C5=A0krabec wrote:
> > > > Dne torek, 04. junij 2019 ob 11:38:44 CEST je Code Kipper napisal(a=
):
> > > > > On Tue, 4 Jun 2019 at 11:02, Christopher Obbard <chris@64studio.c=
om>
> > wrote:
> > > > > > On Tue, 4 Jun 2019 at 09:43, Code Kipper <codekipper@gmail.com>=
 wrote:
> > > > > > > On Tue, 4 Jun 2019 at 09:58, Maxime Ripard
> > > > > > > <maxime.ripard@bootlin.com>
> > > >
> > > > wrote:
> > > > > > > > On Mon, Jun 03, 2019 at 07:47:32PM +0200, codekipper@gmail.=
com
> > wrote:
> > > > > > > > > From: Marcus Cooper <codekipper@gmail.com>
> > > > > > > > >
> > > > > > > > > The i2s block supports multi-lane i2s output however this
> > > > > > > > > functionality
> > > > > > > > > is only possible in earlier SoCs where the pins are expos=
ed and
> > > > > > > > > for
> > > > > > > > > the i2s block used for HDMI audio on the later SoCs.
> > > > > > > > >
> > > > > > > > > To enable this functionality, an optional property has be=
en
> > > > > > > > > added to
> > > > > > > > > the bindings.
> > > > > > > > >
> > > > > > > > > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > > > > > > >
> > > > > > > > I'd like to have Mark's input on this, but I'm really worri=
ed
> > > > > > > > about
> > > > > > > > the interaction with the proper TDM support.
> > > > > > > >
> > > > > > > > Our fundamental issue is that the controller can have up to=
 8
> > > > > > > > channels, but either on 4 lines (instead of 1), or 8 channe=
ls on 1
> > > > > > > > (like proper TDM) (or any combination between the two, but =
that
> > > > > > > > should
> > > > > > > > be pretty rare).
> > > > > > >
> > > > > > > I understand...maybe the TDM needs to be extended to support =
this to
> > > > > > > consider channel mapping and multiple transfer lines. I was t=
hinking
> > > > > > > about the later when someone was requesting support on IIRC a=
 while
> > > > > > > ago, I thought masking might of been a solution. These can wa=
it as
> > > > > > > the
> > > > > > > only consumer at the moment is LibreELEC and we can patch it =
there.
> > > > > >
> > > > > > Hi Marcus,
> > > > > >
> > > > > > FWIW, the TI McASP driver has support for TDM & (i think?) mult=
iple
> > > > > > transfer lines which are called serializers.
> > > > > > Maybe this can help with inspiration?
> > > > > > see
> > > > > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.=
git/tre
> > > > > > e/s
> > > > > > ound/soc/ti/davinci-mcasp.c sample DTS:
> > > > > >
> > > > > > &mcasp0 {
> > > > > >
> > > > > >     #sound-dai-cells =3D <0>;
> > > > > >     status =3D "okay";
> > > > > >     pinctrl-names =3D "default";
> > > > > >     pinctrl-0 =3D <&mcasp0_pins>;
> > > > > >
> > > > > >     op-mode =3D <0>;
> > > > > >     tdm-slots =3D <8>;
> > > > > >     serial-dir =3D <
> > > > > >
> > > > > >         2 0 1 0
> > > > > >         0 0 0 0
> > > > > >         0 0 0 0
> > > > > >         0 0 0 0
> > > > > >     >
> > > > > >     >;
> > > > > >
> > > > > >     tx-num-evt =3D <1>;
> > > > > >     rx-num-evt =3D <1>;
> > > > > >
> > > > > > };
> > > > > >
> > > > > > Cheers!
> > > > >
> > > > > Thanks, this looks good.
> > > >
> > > > I would really like to see this issue resolved, because HDMI audio =
support
> > > > in mainline Linux for those SoCs is long overdue.
> > > >
> > > > However, there is a possibility to still add HDMI audio suport (ste=
reo
> > > > only) even if this issue is not completely solved. If we agree that
> > > > configuration of channels would be solved with additional property =
as
> > > > Christopher suggested, support for >2 channels can be left for a la=
ter
> > > > time when support for that property would be implemented. Currently,
> > > > stereo HDMI audio support can be added with a few patches.
> > > >
> > > > I think all I2S cores are really the same, no matter if internally
> > > > connected to HDMI controller or routed to pins, so it would make se=
nse to
> > > > use same compatible for all of them. It's just that those I2S cores=
 which
> > > > are routed to pins can use only one lane and >2 channels can be use=
d only
> > > > in TDM mode of operation, if I understand this correctly.
> > > >
> > > > New property would have to be optional, so it's omission would resu=
lt in
> > > > same channel configuration as it is already present, to preserve
> > > > compatibility with old device trees. And this mode is already suffi=
cient
> > > > for stereo HDMI audio support.
> > >
> > > Yeah, it looks like a good plan.
> > >
> > > > Side note: HDMI audio with current sun4i-i2s driver has a delay (ab=
out a
> > > > second), supposedly because DW HDMI controller automatically genera=
tes CTS
> > > > value based on I2S clock (auto CTS value generation is enabled per
> > > > DesignWare recomendation for DW HDMI I2S interface).
> > >
> > > Is that a constant delay during the audio playback, or only at startu=
p?
> >
> > I think it's just at startup, e.g. if you're watching movie, audio is i=
n sync,
> > it's just that first second or so is silent.
> >
> > >
> > > > I2S driver from BSP Linux solves that by having I2S clock output
> > > > enabled all the time. Should this be flagged with some additional
> > > > property in DT?
> > >
> > > I'd say that if the codec has that requirement, then it should be
> > > between the codec and the DAI, the DT doesn't really have anything to
> > > do with this.
> >
> > Ok, but how to communicate that fact to I2S driver then? BSP driver sol=
ves
> > that by using different compatible, but as I said before, I2S cores are=
 not
> > really different, so this seems wrong.
>
> Maybe we could make the DW-HDMI I2S driver require the I2S clock be on all
> the time? You wouldn't need any changes to the DT.

That's an option, but I'd really like to avoid it if possible.

I guess we could also just add a delay in the powerup path in the HDMI
case? Would it work?

maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--4tzqsccmfdz6gxrw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVE5NwAKCRDj7w1vZxhR
xaLkAP9Dau8CFZaqjfYlG8eEMwwmDGnmJ3Qb+OfrtRI9IxfL8AEA9pf3QqqQHWty
49bPYoHYZSaMSKd3MPMDdPL5aONO1Q8=
=l/Kl
-----END PGP SIGNATURE-----

--4tzqsccmfdz6gxrw--


--===============6081365439834097528==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6081365439834097528==--

