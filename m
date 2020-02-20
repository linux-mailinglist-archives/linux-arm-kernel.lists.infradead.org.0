Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C425E165A1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 10:26:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UvsPg6qNty4LEnj64/3gDF7RtejPQaDe9Asff6JCTzg=; b=lT6xNlKNrJHhhRQt96mdDrz2w
	kS/TFCpXY4vPYfgo8Dp8vvE222I2j3gpQchaXMStD2efuhPmKpOOk1G1H3eQt7nqd4YNcQpc0HyC+
	0wDHNA3ZwDehoR9vhc3hp6Fg90+q/yxrxxKKi0ox1Tbgxqzw7bLFW6OET7qWyp1NSVEpHvmvmudCh
	yCcBIgxUADuCUJ1aPP3vi+T9VXYXg1Wuuc6PW8EAJde3QLsEy8RPsCDoepueBoryf0Yp+LZidxBOG
	sVcoz8s9ULb57hRCFDdt7QtKMML299mDDycWMw7JPTwSetl8n3EwNFs9GscqnhneOVGBX1v9aG0mH
	8U497951A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4i5m-0003rq-Eu; Thu, 20 Feb 2020 09:25:58 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4i5e-0003rU-ET; Thu, 20 Feb 2020 09:25:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0EB60AFBB;
 Thu, 20 Feb 2020 09:25:47 +0000 (UTC)
Message-ID: <4850fa1006d5a329c2e6d4e61ec6fb9420125414.camel@suse.de>
Subject: Re: vc4 on rpi3 A+
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Sergey Suloev <ssuloev@orpaltech.com>, 
 linux-rpi-kernel@lists.infradead.org
Date: Thu, 20 Feb 2020 10:25:46 +0100
In-Reply-To: <8b353626-f62a-2aff-96b4-91712ed36095@orpaltech.com>
References: <8b353626-f62a-2aff-96b4-91712ed36095@orpaltech.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_012550_634048_C7CD1DA8 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============8669089078944513532=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8669089078944513532==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-59PIKRQrpnnTBwjfWSBp"


--=-59PIKRQrpnnTBwjfWSBp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sergey,

On Thu, 2020-02-20 at 11:21 +0300, Sergey Suloev wrote:
> Hello, guys,
>=20
> could anyone clarify the status of vc4 drm support on RPI 3A+ ?

I don't have one so I can't really tell for that specific board, but I'm go=
ing
to try to reproduce it on a rpi3b.

> I tried to build kernel 5.5 and 5.6-rc2 in 32bit and aarch64=20
> configurations with VC4 turned ON but both unsuccessful - vc4 drm driver=
=20
> is listed in memory but not working and not producing any typical DRM=20
> log output.

AFAIK there is a known issue in 5.6-rc2, which has already been addressed[1=
].
Note that the driver fails on probe so there is some amount of DRM output.

I tried to reproduce your issue with v5.5, but vc4 seems to probe alright
(rpi3b+aarch64+defconfig):

	[   15.443047] vc4_hdmi 3f902000.hdmi: vc4-hdmi-hifi <-> 3f902000.hdmi map=
ping ok
	[   15.452864] vc4_hdmi 3f902000.hdmi: ASoC: no DMI vendor name!
	[   15.459836] vc4-drm soc:gpu: bound 3f902000.hdmi (ops vc4_hdmi_ops [vc4=
])
	[   15.467062] vc4-drm soc:gpu: bound 3f806000.vec (ops vc4_vec_ops [vc4])
	[   15.478722] vc4-drm soc:gpu: bound 3f004000.txp (ops vc4_txp_ops [vc4])
	[   15.485749] vc4-drm soc:gpu: bound 3f400000.hvs (ops vc4_hvs_ops [vc4])
	[   15.499009] vc4-drm soc:gpu: bound 3f206000.pixelvalve (ops vc4_crtc_op=
s [vc4])
	[   15.526217] vc4-drm soc:gpu: bound 3f207000.pixelvalve (ops vc4_crtc_op=
s [vc4])
	[   15.542257] vc4-drm soc:gpu: bound 3f807000.pixelvalve (ops vc4_crtc_op=
s [vc4])
	[   15.560113] vc4-drm soc:gpu: bound 3fc00000.v3d (ops vc4_v3d_ops [vc4])
	[   15.574684] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
	[   15.587375] [drm] Driver supports precise vblank timestamp query.
	[   15.606831] [drm] Initialized vc4 0.0.0 20140616 for soc:gpu on minor 0
	[   15.617505] Console: switching to colour frame buffer device 90x30
	[   15.627858] vc4-drm soc:gpu: fb0: vc4drmfb frame buffer device

Could it be that you forgot to update the device tree or kernel modules?

Regards,
Nicolas

[1] https://lkml.kernel.org/lkml/20200219102526.692126-1-jbrunet@baylibre.c=
om/T/


--=-59PIKRQrpnnTBwjfWSBp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5OUJoACgkQlfZmHno8
x/42Igf/SAjMmOECt00Cgncnhj1oSKEwH2OE87BSJbrSQQc7y9rhB5MdUh2wWju/
eRLnS6ObvcyMlziqpFbTshJEkMlEtk3KgOmV0IWP2t2jAz3GdP05T0xbb+0guhKd
vnCxPuJNkqvsqoWZsq/4yoiI9WpU2znTWPOlOT9x2F/i/4hM5IH3Gc7kBgKlVgFi
60OLuR2Y7r8vTJb5QiLha0FdyV4VMcsZR15RoZjnpv/FDWImP024wdGYIed+Fbh7
NFNx6RearJlh0/IcXLT1AW3mgvDxcYvx2RY2aGAlpI0VOelLdgM7LQxlS6pB+Pk5
n4lbbJ5MuDk5qugtFKHsJwqsV5pQJg==
=EXD8
-----END PGP SIGNATURE-----

--=-59PIKRQrpnnTBwjfWSBp--



--===============8669089078944513532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8669089078944513532==--


