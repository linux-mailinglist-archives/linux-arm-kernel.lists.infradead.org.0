Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BAA16A917
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 16:02:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FC9JElqjb+QUD/byVPKvaCLURpdiGl2MIg8OusE27rk=; b=tIHruyW/BbnqEkbGfchrJCmDK
	CifzoFdcDKh7MdDqMCOuJF9f7RgbEyV9eF0gWSxc89ZfA+SCO7rtAmPbfulHA1pzeh3+gJh1YKe6o
	vu3qF/7spV+MM19mvFqWFPdImjb+SFcxN3wrlPwoHKVAWCkQC2/+Lc71ivtBe0zM3gJfw/CxrlF0X
	QhgsS94pz2gczniG0rAErg30PK6nM4EuFBNGYxp9LFKVwBLn4qlBJ+evUYOe1AZLSKwuLP0IRNGaE
	ygqayON4e3tAofVo+ju4BjMFTov+Cd8M7bTVjTFXCryUYAhM6FTdBVBBN0VwNiydYRkNMTnjQyXkK
	JtYyMma5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6FFu-0005nd-4g; Mon, 24 Feb 2020 15:02:46 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6FFh-0005nA-4Q; Mon, 24 Feb 2020 15:02:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 598ECB191;
 Mon, 24 Feb 2020 15:02:29 +0000 (UTC)
Message-ID: <377ad64e9db187e10a986c9ede4c5e67103b0194.camel@suse.de>
Subject: Re: vc4 on rpi3 A+
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Sergey Suloev <ssuloev@orpaltech.com>, 
 linux-rpi-kernel@lists.infradead.org
Date: Mon, 24 Feb 2020 16:02:27 +0100
In-Reply-To: <4a952494-ba96-289d-cc14-06710912b53b@orpaltech.com>
References: <8b353626-f62a-2aff-96b4-91712ed36095@orpaltech.com>
 <4850fa1006d5a329c2e6d4e61ec6fb9420125414.camel@suse.de>
 <4a952494-ba96-289d-cc14-06710912b53b@orpaltech.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_070233_461443_9C2D42D4 
X-CRM114-Status: GOOD (  20.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Noralf =?ISO-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1301266633564640513=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1301266633564640513==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-5P+gVnnMLCoh8povy9sA"


--=-5P+gVnnMLCoh8povy9sA
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-02-20 at 12:39 +0300, Sergey Suloev wrote:
> Ni, Nicolas,
>=20
> On 2/20/20 12:25 PM, Nicolas Saenz Julienne wrote:
> > Hi Sergey,
> >=20
> > On Thu, 2020-02-20 at 11:21 +0300, Sergey Suloev wrote:
> > > Hello, guys,
> > >=20
> > > could anyone clarify the status of vc4 drm support on RPI 3A+ ?
> > I don't have one so I can't really tell for that specific board, but I'=
m
> > going
> > to try to reproduce it on a rpi3b.
> >=20
> > > I tried to build kernel 5.5 and 5.6-rc2 in 32bit and aarch64
> > > configurations with VC4 turned ON but both unsuccessful - vc4 drm dri=
ver
> > > is listed in memory but not working and not producing any typical DRM
> > > log output.
> > AFAIK there is a known issue in 5.6-rc2, which has already been
> > addressed[1].
> > Note that the driver fails on probe so there is some amount of DRM outp=
ut.
> >=20
> > I tried to reproduce your issue with v5.5, but vc4 seems to probe alrig=
ht
> > (rpi3b+aarch64+defconfig):
> >=20
> > 	[   15.443047] vc4_hdmi 3f902000.hdmi: vc4-hdmi-hifi <-> 3f902000.hdmi
> > mapping ok
> > 	[   15.452864] vc4_hdmi 3f902000.hdmi: ASoC: no DMI vendor name!
> > 	[   15.459836] vc4-drm soc:gpu: bound 3f902000.hdmi (ops vc4_hdmi_ops
> > [vc4])
> > 	[   15.467062] vc4-drm soc:gpu: bound 3f806000.vec (ops vc4_vec_ops
> > [vc4])
> > 	[   15.478722] vc4-drm soc:gpu: bound 3f004000.txp (ops vc4_txp_ops
> > [vc4])
> > 	[   15.485749] vc4-drm soc:gpu: bound 3f400000.hvs (ops vc4_hvs_ops
> > [vc4])
> > 	[   15.499009] vc4-drm soc:gpu: bound 3f206000.pixelvalve (ops
> > vc4_crtc_ops [vc4])
> > 	[   15.526217] vc4-drm soc:gpu: bound 3f207000.pixelvalve (ops
> > vc4_crtc_ops [vc4])
> > 	[   15.542257] vc4-drm soc:gpu: bound 3f807000.pixelvalve (ops
> > vc4_crtc_ops [vc4])
> > 	[   15.560113] vc4-drm soc:gpu: bound 3fc00000.v3d (ops vc4_v3d_ops
> > [vc4])
> > 	[   15.574684] [drm] Supports vblank timestamp caching Rev 2
> > (21.10.2013).
> > 	[   15.587375] [drm] Driver supports precise vblank timestamp query.
> > 	[   15.606831] [drm] Initialized vc4 0.0.0 20140616 for soc:gpu on min=
or
> > 0
> > 	[   15.617505] Console: switching to colour frame buffer device 90x30
> > 	[   15.627858] vc4-drm soc:gpu: fb0: vc4drmfb frame buffer device
> >=20
> > Could it be that you forgot to update the device tree or kernel modules=
?
> >=20
> > Regards,
> > Nicolas
> >=20
> > [1]=20
> > https://lkml.kernel.org/lkml/20200219102526.692126-1-jbrunet@baylibre.c=
om/T/
> >=20
>=20
> thanks for reply.
>=20
> It works fine with Rpi3B, I agree with you. The issue happens with RPi=
=20
> 3A+ only.

I'll soon have access to a rpi3a+ and look deeper into it.

Meanwhile, if you have the time, I'd suggest adding prints to the vc4 drive=
r
code to find out where it's going wrong.

Regards,
Nicolas


--=-5P+gVnnMLCoh8povy9sA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5T5YMACgkQlfZmHno8
x/6IzAgAkJ7w6UVl/Lsr6Wqffk1iMo+imwyg4nJspxBt+CDDWcGx/nAzwQa+Huoo
xYtvyuMaHbDSjwSd9CkrWnZ6vomklMiN0Ui3cFDUujXU4fAhhUFK3tjM4qeCU5Vj
nkz89Fub25T0VwINJ6TxjlHB0o06vOxDhK8m/icNk1X7DpPDFJ3suydDkqNz8pE2
aeEQywJ2dsKVHN3nZ+lJTkNKvIIPsbxknp1/+6inZctJnRRWITjAJl8yeZsfyzwL
wQopu6EqpqZxntVND73FFddqTnClBdBzbOKbt+7mVnHaJztzf9puEDf5SKxTpPPB
xh8oi11LcIkfUUmCY6PQbT0d9FFLQw==
=JSOC
-----END PGP SIGNATURE-----

--=-5P+gVnnMLCoh8povy9sA--



--===============1301266633564640513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1301266633564640513==--


