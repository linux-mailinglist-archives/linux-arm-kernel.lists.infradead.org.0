Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D92781EF446
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 11:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lIETGZ7tA8ckrSEvr/RTI/tCvwGwjMDalR5wilZm0EM=; b=XAvVOcLCs6bClPv+V9Qfk5Wzd
	IJrtwwDHLg2+bNC5yuAyG6VKzjndxtjnzYxCTY9b9rehNeXuwfWFHToRHJLmg0dtx08X1xnZIbHS4
	PLTjeq2q8yTj+ys+o1BeB24EJ9jb9SWuUc0agWiMfgFZj/ZnLFIQmju39EmMfiIz+dtjqvouIwpIA
	xWIn4qudZ5Jey1kAOXhS6n1V0Z/PPnSypgF8OI1jITbrNFFKQgMp5robmtMumzyBY+Ka3OMYwAiOK
	dLFhEXu2ADCcXqt7Iu8ezbQDbMC3IXP1yecyepoqjnvT7UyI1NZ5j797WknAr9BcMjdypMxkVW9ha
	VBWWE/zlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh8jy-0001V0-DJ; Fri, 05 Jun 2020 09:34:18 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh8jp-0001UU-Dx; Fri, 05 Jun 2020 09:34:11 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 29C5EAD1A;
 Fri,  5 Jun 2020 09:34:11 +0000 (UTC)
Message-ID: <99eb84154ef837832d872e05f4c6323908cdf456.camel@suse.de>
Subject: Re: [PATCH v3 12/25] clk: bcm: rpi: Use CCF boundaries instead of
 rolling our own
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Fri, 05 Jun 2020 11:34:05 +0200
In-Reply-To: <20200605092802.xkoazjnin7xyqkoy@gilmour.lan>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
 <eb1b2838f1c3c006c24bcb9816f75e1351c63b05.1590594293.git-series.maxime@cerno.tech>
 <e096d89ab881d69b2477b209838a308f9de114b1.camel@suse.de>
 <20200605092802.xkoazjnin7xyqkoy@gilmour.lan>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_023409_766716_A2327ECA 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8196321551436135662=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8196321551436135662==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-cb1rk5pgqkytLeD/HsnD"


--=-cb1rk5pgqkytLeD/HsnD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-06-05 at 11:28 +0200, Maxime Ripard wrote:
> Hi Nicolas,
>=20
> On Thu, Jun 04, 2020 at 08:02:22PM +0200, Nicolas Saenz Julienne wrote:
> > On Wed, 2020-05-27 at 17:45 +0200, Maxime Ripard wrote:
> > > The raspberrypi firmware clock driver has a min_rate / max_rate clamp=
ing
> > > by
> > > storing the info it needs in a private structure.
> > >=20
> > > However, the CCF already provides such a facility, so we can switch t=
o it
> > > to remove the boilerplate.
> > >=20
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > ---
> > >  drivers/clk/bcm/clk-raspberrypi.c | 18 ++++++++----------
> > >  1 file changed, 8 insertions(+), 10 deletions(-)
> > >=20
> > > diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-
> > > raspberrypi.c
> > > index a20492fade6a..e135ad28d38d 100644
> > > --- a/drivers/clk/bcm/clk-raspberrypi.c
> > > +++ b/drivers/clk/bcm/clk-raspberrypi.c
> > > @@ -36,9 +36,6 @@ struct raspberrypi_clk {
> > >  	struct rpi_firmware *firmware;
> > >  	struct platform_device *cpufreq;
> > > =20
> > > -	unsigned long min_rate;
> > > -	unsigned long max_rate;
> > > -
> > >  	struct clk_hw pllb;
> > >  };
> > > =20
> > > @@ -142,13 +139,11 @@ static int raspberrypi_fw_pll_set_rate(struct c=
lk_hw
> > > *hw, unsigned long rate,
> > >  static int raspberrypi_pll_determine_rate(struct clk_hw *hw,
> > >  					  struct clk_rate_request *req)
> > >  {
> > > -	struct raspberrypi_clk *rpi =3D container_of(hw, struct raspberrypi=
_clk,
> > > -						   pllb);
> > >  	u64 div, final_rate;
> > >  	u32 ndiv, fdiv;
> > > =20
> > >  	/* We can't use req->rate directly as it would overflow */
> > > -	final_rate =3D clamp(req->rate, rpi->min_rate, rpi->max_rate);
> > > +	final_rate =3D clamp(req->rate, req->min_rate, req->max_rate);
> > > =20
> > >  	div =3D (u64)final_rate << A2W_PLL_FRAC_BITS;
> > >  	do_div(div, req->best_parent_rate);
> > > @@ -215,12 +210,15 @@ static int raspberrypi_register_pllb(struct
> > > raspberrypi_clk *rpi)
> > >  	dev_info(rpi->dev, "CPU frequency range: min %u, max %u\n",
> > >  		 min_rate, max_rate);
> > > =20
> > > -	rpi->min_rate =3D min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
> > > -	rpi->max_rate =3D max_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
> > > -
> > >  	rpi->pllb.init =3D &init;
> > > =20
> > > -	return devm_clk_hw_register(rpi->dev, &rpi->pllb);
> > > +	ret =3D devm_clk_hw_register(rpi->dev, &rpi->pllb);
> > > +	if (!ret)
> > > +		clk_hw_set_rate_range(&rpi->pllb,
> > > +				      min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE,
> > > +				      max_rate *
> > > RPI_FIRMWARE_PLLB_ARM_DIV_RATE);
> >=20
> > Isn't there a potential race here? Albeit unlikely, cpufreq could show
> > up and call clk_round_rate() in between the registration and you
> > setting the ranges.
>=20
> IIRC, driver's probe are not called in parallel but in sequence, so we
> should be covered here.

Right, of course.

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-cb1rk5pgqkytLeD/HsnD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7aEY0ACgkQlfZmHno8
x/4umQf/Uc3QL2xEaD4EW/hr8XDzlJ9lGMJ5F7R36Z4DMXaYoZQD5qNeZDiOiHuy
rvo5pwHIJMC4Pxl14Rpc9R8CThc0PoNyEFmC8fQFSILD/iQq67YDh2HvURg0klGi
1FPDbDkLboH757AN1ghsHDP38gYPehhyeCL//HcDuHYgFbFzhtC4T5+dF/4C9GBK
pD3NaQlkfKFuPEjkMOhKOI0oWgYprzuDG9LUQgUOXpkexsJkMzTng8PqidhgGreM
eQPpFeMBn/wd9TYtyGSBYIKzvCeTu73BrALg8hOtrioSRXMwnrm/eSygEwvc8ehQ
Em1ViGFL7VnKAbT1tAMZckefzadfxA==
=gAK7
-----END PGP SIGNATURE-----

--=-cb1rk5pgqkytLeD/HsnD--



--===============8196321551436135662==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8196321551436135662==--


