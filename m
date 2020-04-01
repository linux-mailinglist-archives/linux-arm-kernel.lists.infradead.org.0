Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9C719B687
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 21:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZS3tUv6BTHQzB96vgfKnjJ2VhvbQPZtKDrBw9ggREgc=; b=AxRMA0YyT32XCsZovdcsdgLHx
	IcQa0KnW1w4NBoimqKBw3Ugh9HjMPP7k9CHXXQuFr/HWn38iRfsHzVvczcuYkl36pzw5w2Sdb3bxP
	U+rTT/GFOERZgkmo7+69CYeWDyzQIChD7NX6pV8QKNwjvSoLFCn06d9/pMaK/9C8dFmjJ/56rWDml
	6oNiKr97oY6hgdDVrnAbWCzaSQRnsPhG/45pfUN+/UV88jZF7cmtALRVbif0hNR8Zk/AXt2MFo/LU
	FKf3OoJCMPM2BSnvZIefq2Mak/NJDenbTi8ktKr+w9zeIEZ7zWqFPbFt7D68JdL8+kWyMss0jyvRM
	nUjSXAckQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJjJl-0003pr-7I; Wed, 01 Apr 2020 19:46:29 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJjJf-0003pS-4J; Wed, 01 Apr 2020 19:46:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1EAB9ADC1;
 Wed,  1 Apr 2020 19:46:21 +0000 (UTC)
Message-ID: <b0a1c1c34539cc84a3c5c62f627422f7aa2bd411.camel@suse.de>
Subject: Re: [GIT PULL 1/3] bcm2835-dt-fixes-2020-03-27
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Date: Wed, 01 Apr 2020 21:46:19 +0200
In-Reply-To: <0db69929-ba6f-555f-7ed4-8a03dd398507@gmail.com>
References: <20200327211632.32346-1-nsaenzjulienne@suse.de>
 <0db69929-ba6f-555f-7ed4-8a03dd398507@gmail.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_124623_313633_67098ECC 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9191524834989932178=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9191524834989932178==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-y8RSrHcqIVOj8ZCcIb+g"


--=-y8RSrHcqIVOj8ZCcIb+g
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Florian,

On Wed, 2020-04-01 at 12:38 -0700, Florian Fainelli wrote:
>=20
> On 3/27/2020 2:16 PM, Nicolas Saenz Julienne wrote:
> > Hi Florian,
> >=20
> > The following changes since commit 55c7c0621078bd73e9d4d2a11eb36e61bc6f=
e998:
> >=20
> >   ARM: dts: bcm283x: Fix vc4's firmware bus DMA limitations (2020-03-22
> > 14:45:24 -0700)
> >=20
> > are available in the Git repository at:
> >=20
> >  =20
> > ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/nsaenz/linux-rpi=
.git
> > tags/bcm2835-dt-fixes-2020-03-27
>=20
> You would want to provide a public fetch URL for next pull requests, I
> fetched your tree so this is fine, but in case someone processes those
> messages in a semi automated way, they would not be able to pull from
> your tree here.

Noted.

>=20
> > for you to fetch changes up to be08d278eb09210fefbad4c9b27d7843f1c096b2=
:
> >=20
> >   ARM: dts: bcm283x: Add cells encoding format to firmware bus (2020-03=
-27
> > 21:36:17 +0100)
> >=20
> > ----------------------------------------------------------------
> > This patch is to be squashed into 55c7c0621078 ("ARM: dts: bcm283x: Fix
> > vc4's firmware bus DMA limitations") as it turned out to be faulty
> >=20
> > ----------------------------------------------------------------
>=20
> Merged into devicetree/fixes, thanks Nicolas, looks like the offending
> commit has already been applied, though I had not gotten an email about
> it, so the fixup in place is no longer an option.

Ok, no worries, as long as it gets applied at some point we're good, it's j=
ust
a dtc warning.

Regards,
Nicolas


--=-y8RSrHcqIVOj8ZCcIb+g
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6E74sACgkQlfZmHno8
x/4iOAf+JI6FgsTZ9uymMqt8mJKCK/Fix7acS4hO5RCTAr9N5IsTURngjJam6UZX
8gexD/zBLwFT1a6yzCe2cbkP8y7k2/+Jre85qGl38pXKKeWiA5HxE6r5xyQdXGXW
bQXGdacIaeJWozgGqw+f7Mf94CMbvtACJYpHWk/v8HCetESipZWMs2MtN+OOKkZp
xh5Zlh/yjl+XjWHb+hUsVajbnBdLufNAnKhmvXtqg0FhdorM9dNNlGcoyke/O/aW
T0JKMcHKA/VNgWgNLtcb62tbFe85OKRkUtW72YdPGe7X4d+h92V+i2lARV55GQC2
5qLzU4NK8h3sNnNYzVnDwVV1FAOA3g==
=CULh
-----END PGP SIGNATURE-----

--=-y8RSrHcqIVOj8ZCcIb+g--



--===============9191524834989932178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9191524834989932178==--


