Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E8A120445
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:45:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dYMD2atcAgdsj5/LiqYmoq7z527+2g/m9K2G4hqgK54=; b=USRpRdjnbGeyDKgbpt9yDE2kV
	Hi+NHSUB3uqqwaKxk7S/B61bmx39jhUINyTiZU3I6XDKlQPbgPqPscNVKPdau4onh2Fj9p26N3EhF
	cxwXMxKKmCDkyH8u2TKLgQsnIGgu8TOXo892odbdZJKOybrmX+znVs/S712WUaY4YNnPiOIFgKs4Y
	YvZMFbI2a/LHPftOgp/AIFK2iiMU0UhY9JYYE8E7fnhZSu2zJ3TRwxseh2IE+/zGF3kae9GrTH+Ew
	JyAk7JhRS2NPZNo43YRAenGirtDE9rTSHKnwTGY5TiQyvmxja37vwDQiJoYwmwOO6wIaOwvPQ6FMV
	Cxrby2rQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igooj-000286-Rg; Mon, 16 Dec 2019 11:45:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igooc-00027i-36; Mon, 16 Dec 2019 11:45:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9077BAD54;
 Mon, 16 Dec 2019 11:45:28 +0000 (UTC)
Message-ID: <cc827c6d4ea0d760b7df217a98bdee6b0c684137.camel@suse.de>
Subject: Re: [PATCH v5 0/6] Raspberry Pi 4 PCIe support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andrew Murray <andrew.murray@arm.com>
Date: Mon, 16 Dec 2019 12:45:26 +0100
In-Reply-To: <20191216113646.GT24359@e119886-lin.cambridge.arm.com>
References: <20191216110113.30436-1-nsaenzjulienne@suse.de>
 <20191216113646.GT24359@e119886-lin.cambridge.arm.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_034530_277408_E59DEA91 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 mbrugger@suse.com, bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7460929164818924039=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7460929164818924039==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-DLw2p4RvYw24q5zmQ4Z4"


--=-DLw2p4RvYw24q5zmQ4Z4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-12-16 at 11:36 +0000, Andrew Murray wrote:
> On Mon, Dec 16, 2019 at 12:01:06PM +0100, Nicolas Saenz Julienne wrote:
> > This series aims at providing support for Raspberry Pi 4's PCIe
> > controller, which is also shared with the Broadcom STB family of
> > devices.
> >=20
> > There was a previous attempt to upstream this some years ago[1] but was
> > blocked as most STB PCIe integrations have a sparse DMA mapping[2] whic=
h
> > is something currently not supported by the kernel.  Luckily this is no=
t
> > the case for the Raspberry Pi 4.
> >=20
>=20
> Hi Nicolas,
>=20
> This series looks good to me now. Unless there is further feedback I'll a=
sk
> Lorenzo to merge this when he returns in the new year.

Thanks!

> Thanks for the log2.h efforts - perhaps this can be picked up again one d=
ay.

I'm not giving up on it yet :)

Regards,
Nicolas


--=-DLw2p4RvYw24q5zmQ4Z4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl33blYACgkQlfZmHno8
x/5aYwf+N1/Ua9CzF4VJc5Fs8Q99JDhaoGWxqIBldY6pt0TGhmCO6ao6z9UCUGde
3n5X7AZwwbVuSQlBbnGxCP4Ji+4O8O/tsc/PmcFN4dt0FALtUD1lbEwFq6khdQqN
DaeJqlyjvkQkZifOGYjNH2UjzI4dCyxtFDOMSNr8YP3RcSdjwV01zghOdSSjaV05
X5jUsfAf5AB8eabnkNt+C7FORGf7T8Ll3LdhCgtNJOf3GyIwkotQ2TlqckA8xhqS
hPRTW9DaXn6IWYAX3kCwrFhoX4/qxddXhz6GOw5HA5Lh25Zq8Zq4KG3xOlsI9HRy
j0AIKO9Pmg+mDDa936sR1oijKJZm3w==
=Axoa
-----END PGP SIGNATURE-----

--=-DLw2p4RvYw24q5zmQ4Z4--



--===============7460929164818924039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7460929164818924039==--


