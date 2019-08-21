Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077989795E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TgR6/ahoKQu7GwOShGdNpcuKPsYo9KJWeW/4ApcK3Ik=; b=RHaoKjy1wNh9WTIjsrRqamj1r
	7At39HDrH7I2/Ju7XuXjP83LVJN11yHOWc5AHsNNCH7cETN3Uw2CWx6LSL7xHs/Yxsd43Xh+7uHNO
	x2dqvwma7X9v9I0HDR6D6IFYUwOVK/aY3ozICjiiFxX1ynwK6hTtw3FrqlDtPPYXIXsb52UBajh47
	Qm9X7iD9GizUBWBVJwoEZq4RWi+AIFZ/c2aB2+FLDno+JGajK2ZFwQOH+OXgFMs1yblqkGzfYlHjj
	3c8xLm2bBE3n1Ho97HnGYaMEO2vfyuYs3xcbb8fpz6Yka6LPQk8Wy5PjK4BSlQfgg6hrL7EXA57Fd
	LyQcStjlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0PlN-0003Df-AZ; Wed, 21 Aug 2019 12:30:53 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Pl8-0003DC-VR
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:30:40 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id B0B90100007;
 Wed, 21 Aug 2019 12:30:35 +0000 (UTC)
Date: Wed, 21 Aug 2019 14:30:35 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v4 04/10] mailbox: sunxi-msgbox: Add a new mailbox driver
Message-ID: <20190821123035.tl4aakijjhw3bwbk@flea>
References: <20190820032311.6506-1-samuel@sholland.org>
 <20190820032311.6506-5-samuel@sholland.org>
 <20190820111825.2w55fleehrnon27u@core.my.home>
 <bc09e14c-1cf5-8124-fc34-c651b78577ce@sholland.org>
MIME-Version: 1.0
In-Reply-To: <bc09e14c-1cf5-8124-fc34-c651b78577ce@sholland.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_053039_166427_1E021C64 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5817812992742358945=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5817812992742358945==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mrpxrcur5riymvjn"
Content-Disposition: inline


--mrpxrcur5riymvjn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 20, 2019 at 08:07:53AM -0500, Samuel Holland wrote:
> On 8/20/19 6:18 AM, Ond=C5=99ej Jirman wrote:
> >> +	reset =3D devm_reset_control_get(dev, NULL);
> >> +	if (IS_ERR(reset)) {
> >> +		ret =3D PTR_ERR(reset);
> >> +		dev_err(dev, "Failed to get reset control: %d\n", ret);
> >> +		goto err_disable_unprepare;
> >> +	}
> >> +
> >> +	ret =3D reset_control_deassert(reset);
> >> +	if (ret) {
> >> +		dev_err(dev, "Failed to deassert reset: %d\n", ret);
> >> +		goto err_disable_unprepare;
> >> +	}
> >
> > You need to assert the reset again from now on, in error paths. devm
> > will not do that for you.
>
> I know, and that's intentional. This same message box device is used for =
ATF to
> communicate with SCP firmware (on a different channel). This could be hap=
pening
> on a different core while Linux is running. So Linux is not allowed to de=
assert
> the reset. clk_disable_unprepare() is only okay because the clock is mark=
ed as
> critical.

I agree with Ondrej that since this is clearly not the standard use of
the API, this must have a big comment explaining why we're doing it
this way.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--mrpxrcur5riymvjn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV05awAKCRDj7w1vZxhR
xbIJAP9yrpmQb5VASu0xwjQKiF8z6Qkk63ohQogxkr2k66hwcAEAulMS7ROeVRrO
iA0Lo17qVmuTaZnBbSFPofjTOChqgAQ=
=0XW2
-----END PGP SIGNATURE-----

--mrpxrcur5riymvjn--


--===============5817812992742358945==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5817812992742358945==--

