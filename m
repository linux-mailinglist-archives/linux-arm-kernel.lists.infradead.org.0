Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E9DDEAA6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y/KyEzIkDH6ySameyGjmmajfRA8iHDhzK8rIJmBD6/I=; b=AQTQ5tIcItiBbynXPa113/qsI
	VL8EYt/FG9K3guNjXrvCgjDhNl2YbyTmo4ALAxZcbaczVDSBQFELeXei/UP1JA0viPI75pGQaYxVe
	usiySahrlroYZl3WJrwKT25ysfnWxNwSyA7DllFfySUbXgdwq/xqysRHZP7XszdyHVgVUTQi4KF9h
	Gdrlgy7fzz+GzlXUNZ+F+rwQaoKvrRJyu61+XDxxkY7lwnpwhkEGtoZcTxiPCpoASwWa17DXi+raj
	ep2rZhSdTl47+goQWNjSaI10dPMEjBq1bPWfHBE5YpgBfuhAei/LYi3DxIeqJsAOJ/QfQAuyngpkw
	YYcjD2AFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVgh-0003IV-6y; Mon, 21 Oct 2019 11:17:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVgX-0003I3-27
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:17:14 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 24665206C2;
 Mon, 21 Oct 2019 11:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571656632;
 bh=+HuhLJjJiwH7Kl+C7z+5jg90DFHTonlD/TcagMhzneg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WHEqFWuCUlAJUZ35FvUobSwWmnxHYqXGs7cDfeaufr9guGGbHGcoT+LAVfCOjJz7D
 WC3mUYHbu415W3tZ/a6rGOM3tOer6ga4TmcngO4OT6KTWKRKf4iDwuFZfeZxXEAzWF
 JnIw6fp7n5GkokmZulJjLAx60pIzr/419ar4dhx8=
Date: Mon, 21 Oct 2019 13:17:09 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] arm64: dts: sun50i: sopine-baseboard: Expose serial1,
 serial2 and serial3
Message-ID: <20191021111709.dpu6g7jltuw6cbbn@gilmour>
References: <20191012200524.23512-1-alistair@alistair23.me>
 <20191016144946.p3tm67vh5lqigndn@gilmour>
 <CAGb2v67QrTJjSO99UNs-=3ZZnK948am11=izRTHT6gZ06E28eA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v67QrTJjSO99UNs-=3ZZnK948am11=izRTHT6gZ06E28eA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_041713_123745_890BF331 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alistair23@gmail.com, Alistair Francis <alistair@alistair23.me>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4271931146006427357=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4271931146006427357==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lkkvvoygykhcnyp4"
Content-Disposition: inline


--lkkvvoygykhcnyp4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Oct 16, 2019 at 10:54:27PM +0800, Chen-Yu Tsai wrote:
> On Wed, Oct 16, 2019 at 10:49 PM Maxime Ripard <mripard@kernel.org> wrote:
> > On Sat, Oct 12, 2019 at 01:05:24PM -0700, Alistair Francis wrote:
> > > Follow what the sun50i-a64-pine64.dts does and expose all 5 serial
> > > connections.
> > >
> > > Signed-off-by: Alistair Francis <alistair@alistair23.me>
> > > ---
> > >  .../allwinner/sun50i-a64-sopine-baseboard.dts | 25 +++++++++++++++++++
> > >  1 file changed, 25 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > > index 124b0b030b28..49c37b21ab36 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > > @@ -56,6 +56,10 @@
> > >       aliases {
> > >               ethernet0 = &emac;
> > >               serial0 = &uart0;
> > > +             serial1 = &uart1;
> > > +             serial2 = &uart2;
> > > +             serial3 = &uart3;
> > > +             serial4 = &uart4;
> > >       };
> > >
> > >       chosen {
> > > @@ -280,6 +284,27 @@
> > >       };
> > >  };
> > >
> > > +/* On Pi-2 connector */
> > > +&uart2 {
> > > +     pinctrl-names = "default";
> > > +     pinctrl-0 = <&uart2_pins>;
> > > +     status = "disabled";
> > > +};
> > > +
> > > +/* On Euler connector */
> > > +&uart3 {
> > > +     pinctrl-names = "default";
> > > +     pinctrl-0 = <&uart3_pins>;
> > > +     status = "disabled";
> > > +};
> > > +
> > > +/* On Euler connector, RTS/CTS optional */
> > > +&uart4 {
> > > +     pinctrl-names = "default";
> > > +     pinctrl-0 = <&uart4_pins>;
> > > +     status = "disabled";
> > > +};
> >
> > Since these are all the default muxing, maybe we should just set that
> > in the DTSI?
>
> Maybe not, since people may want to only use RX/TX, and leave the other
> two pins for GPIO?

Right, I'll apply that patch.

Thanks!
Maxime

--lkkvvoygykhcnyp4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXa2TtQAKCRDj7w1vZxhR
xbyUAP9PwLyhb0omaH3Q6aySeHkcOMgye7JVSNrXofoOkyX1qgEAzoj0Rt+iokqY
UA3Ryk3GULps6bfsB7pZzNNQxNc4WQI=
=K29e
-----END PGP SIGNATURE-----

--lkkvvoygykhcnyp4--


--===============4271931146006427357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4271931146006427357==--

