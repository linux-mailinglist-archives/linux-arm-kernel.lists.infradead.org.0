Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7715172A43
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yVGvOi9RggnPlu+IhpzBJfOY6C1EkAeSuWYM/JSPS4s=; b=mhy4ybUMIsDrWI2bQvEUreo6V
	ThrBovSnn9oih/1+jZjAtjQLe/Tpn39bddGiRidzkpscdKkuklYoqOn03nlLqDOt1qpIfiAC76Wti
	uWm2VBCze1sfXUwAH0RmJJtIey2E0bJw8sSjN95FgGRDc4w/oKD01HXXaYHYAdTnj1v61DNADaSd1
	qnKbPgz25pOG5iNMnaiQ/l6fphI9xB89R9kQobf2GmiOkYCzBZtCKsrhcpO6+LC0tf3LVFfdQ0sSt
	/Etl39do2/8LzTXhF5ZfD7G3vH3pkNx6JxSVHEFG/9LlTZkphQtv4X9gNypGd56N2bWCmI+J9cjQN
	8ZKKHw8Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCmm-0001CH-Eh; Wed, 24 Jul 2019 08:38:08 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCmX-0001BB-NR; Wed, 24 Jul 2019 08:37:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 00FA9AF03;
 Wed, 24 Jul 2019 08:37:47 +0000 (UTC)
Message-ID: <ab7af8537ebcbc7a7bdf04d2c06152ba6821b333.camel@suse.de>
Subject: Re: [PATCH 00/18] ARM: Add minimal Raspberry Pi 4 support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 24 Jul 2019 10:37:45 +0200
In-Reply-To: <CAGb2v66-o23CW5iH9Bn1aELymPSiKrA43eJd2q6EZ7iubcogaw@mail.gmail.com>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <96113adb5fcab9c2f4bb5fa82b84ff5f9c07fd07.camel@suse.de>
 <bc650090-db86-ccac-01dc-23f08ad7b19b@gmx.net>
 <20190723093442.GA27239@lst.de>
 <04c5eaa03f3a124dbbce6186e11e19acc4539cc8.camel@suse.de>
 <b15509d6-bc2e-3d06-0eea-943e6e456d62@gmx.net>
 <5f9b11f54c66fd0487837f7e58af3adf7f86635f.camel@suse.de>
 <CAGb2v66-o23CW5iH9Bn1aELymPSiKrA43eJd2q6EZ7iubcogaw@mail.gmail.com>
User-Agent: Evolution 3.32.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_013753_911934_C241D9E1 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Eric Anholt <eric@anholt.net>, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Christoph Hellwig <hch@lst.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:BROADCOM BCM281XX..." <bcm-kernel-feedback-list@broadcom.com>,
 Matthias Brugger <mbrugger@suse.com>,
 "moderated list:BROADCOM BCM2835..." <linux-rpi-kernel@lists.infradead.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============3865217106627090752=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3865217106627090752==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Rf1Vi16408MDtIxce0fT"


--=-Rf1Vi16408MDtIxce0fT
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> > > Does it fix the wifi issue too?
> >=20
> > Well it works as long as I revert this: 901bb98918 ("nl80211: require a=
nd
> > validate vendor command policy"). Which has nothing to do with DMA anyw=
ays.
> >=20
> > Was this the issue you where seeing?
> >=20
> > [    4.969679] WARNING: CPU: 2 PID: 21 at net/wireless/core.c:868
> > wiphy_register+0x8e8/0xbdc [cfg80211]
> > [...]
> > [    4.969974] ieee80211 phy0: brcmf_cfg80211_attach: Could not registe=
r
> > wiphy device (-22)
>=20
> We're seeing this on different platforms (allwinner / rockchip / amlogic)
> with Broadcom WiFi chips. So it's unlikely to be related with anything in
> this series.
>=20
> I believe a fix for this has already been queued up:
>=20
>=20
https://git.kernel.org/pub/scm/linux/kernel/git/jberg/mac80211.git/commit/?=
id=3D91046d6364afde646734c7ead1f649d253c386e9

Thanks for pointing it out, it fixes the issue alright.


--=-Rf1Vi16408MDtIxce0fT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl04GNkACgkQlfZmHno8
x/4D2wgAqq3ax066fAw16mhXFvRvsvt5N2yK9ur2hwqz0YVcIYT9FlKTnuFyrUOY
w1MvuMiaeLz+2xFpt+LVsmP/ygSqwzfzikUGJh/vHIu+mRqYPdbHrIKvLqutyQnF
oXe6qqy8bXRfT50JQRnyH7ysKXks44suhiyTrYpidvmqkFZnasP86QgelISZiuKo
umHPmmEck4luauMqSuQxzaNtbiJhLWzdKAWH3u+iufEHZT5Mbhi0v82jwviF2x+k
lHI6OQpyuuOyVlsbIcAKAuu3qafq8KWaIf13JUmRGdo+dAjpBQ/lsuxeQGH4mHHk
JvMKjYzUiMp4hvcgcoVTNcJ/Zz7zpw==
=vcHF
-----END PGP SIGNATURE-----

--=-Rf1Vi16408MDtIxce0fT--



--===============3865217106627090752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3865217106627090752==--


