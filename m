Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B87161FCB29
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BD8z4EUFxaI0Ts4VHkCSc/SrhnBgLBa5mtZ8EsuaZzw=; b=tJfNr4Q9ygH7NSeYLEp1H58Kn
	hF7XKxzz43s0bn1gtqZWjTo0NhE2R0ed6/01E659UzybQT6QETm9gx6Oh4MgXj+YTf8oQ/0d4wd/u
	a7QCVQph51q09tUGguxtn9DhMN6drhK/Z0U6bo8qRv2/pLbX8cwT4+VP86GtVAxWBuYHbhBZtWAHy
	qYzo088KDor+h8/SE1oaNPyYmOFpSDkMclZFGwSApRt3QOqxIl8ObhdCfrmvqyAeTwSVeibg+Y7hn
	F0wQhL6TQ40QALcloxvJV68MSYhuRoE/ngOrqU/pz4dHAJJjjn4VqIrrSNbqzWDUnxPP2nvMshzOI
	KpP+xBRyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVZJ-0001BW-12; Wed, 17 Jun 2020 10:45:21 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVZ7-0000NX-Ez; Wed, 17 Jun 2020 10:45:11 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 79F5AAC12;
 Wed, 17 Jun 2020 10:45:11 +0000 (UTC)
Message-ID: <b324122e8bd93302215a77d0dcf6d8b2897d3597.camel@suse.de>
Subject: Re: [PATCH v3 2/9] reset: Add Raspberry Pi 4 firmware reset controller
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Philipp Zabel <p.zabel@pengutronix.de>, f.fainelli@gmail.com, 
 gregkh@linuxfoundation.org, wahrenst@gmx.net, linux-kernel@vger.kernel.org
Date: Wed, 17 Jun 2020 12:44:59 +0200
In-Reply-To: <c1ccb77ef0bc56b96a8ad991f8345d0ffbd76fc2.camel@pengutronix.de>
References: <20200612171334.26385-1-nsaenzjulienne@suse.de>
 <20200612171334.26385-3-nsaenzjulienne@suse.de>
 <c1ccb77ef0bc56b96a8ad991f8345d0ffbd76fc2.camel@pengutronix.de>
User-Agent: Evolution 3.36.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_034509_664708_2ED0C222 
X-CRM114-Status: GOOD (  13.80  )
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
Cc: tim.gover@raspberrypi.org, mathias.nyman@linux.intel.com,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 helgaas@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1443651899485297283=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1443651899485297283==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-KqcsH4zLbO6uBhNeqN+i"


--=-KqcsH4zLbO6uBhNeqN+i
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-06-17 at 12:02 +0200, Philipp Zabel wrote:
> Hi Nicolas,
>=20
> On Fri, 2020-06-12 at 19:13 +0200, Nicolas Saenz Julienne wrote:
> > Raspberry Pi 4's co-processor controls some of the board's HW
> > initialization process, but it's up to Linux to trigger it when
> > relevant. Introduce a reset controller capable of interfacing with
> > RPi4's co-processor that models these firmware initialization routines =
as
> > reset lines.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
>=20
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

Thanks!

> If there is a good reason for the single DT specified reset id, I can
> pick up patches 1 and 2.

The idea here is to make sure we're reasonably covered against further chan=
ges
in firmware. If we define constraints too narrow it can be a pain to suppor=
t
new features without breaking backwards compatibility in dt.

> If you change the dts patch 4 to use a number instead of the reset id
> define for now, there wouldn't even be a dependency between these reset
> and dts patches.

I was under the impression that having an explicit definition was nice to h=
ave.
What's troubling about creating the dependency?

Regards,
Nicolas


--=-KqcsH4zLbO6uBhNeqN+i
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7p9CwACgkQlfZmHno8
x/7mAAgAgVtbDaKmFM/GZJ/GA7I4dmOhQBlzhWyHsjI2Hp+6ZFKIGY+b9KqVzMdX
5nQP/wqDPSfiq8LzYvCRWo0totXpsNghOxPEIp9RAbhDDp/la2hLGKtQei0BxmeU
sl3JZAVMm1WpgjN7KTX7wTYttJ+NfRoGa2JRtyw2joFKcBhJUN3OCnC398MJJGfA
6Dqy4My6ptKkdJeQL/7KO6vgojwV52bcvEl/lnCD9IdeKJdyNdR8VqWN66Uhr+SW
SDwBOUcoE82o/bzlYOuQ4wPpDKAEwibDXQcRmapmYiKL1HackBHYB40sWjp2VuOh
8MBdmCLRl4oR7yWnPESbeQOwEshLGg==
=9ROq
-----END PGP SIGNATURE-----

--=-KqcsH4zLbO6uBhNeqN+i--



--===============1443651899485297283==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1443651899485297283==--


