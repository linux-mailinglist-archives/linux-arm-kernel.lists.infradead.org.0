Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 076DC19557D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 11:42:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YCSCpDUGfSiAYgB5QhWiuyh4zuNZ2rT7PnYYdMLpb28=; b=YhJ6vuf+GOI+5QVDrUQmkDUmJ
	cm0JjbqAd42fqMRbI56TSGd0LyxBSKCfp2yiGAAzl0QA6j2ASY26mk9R/VVZ4BmYwKXwrmlUlxG6O
	pFGn/UlmucM+pdMNCakdMWpm0RDjJoOs4hZfyB5QdEF30FoCSwV7uyNARPZunhRBE/x2IapCNS4bx
	ADEurv1aEn+Usn3oT0TYP4ksKK/xznD+pFSoEhWt/tMOhOOVzeD6TGdglTwkuRWIYPmOw1AFt/cYk
	mb7q1NfhK03K8NGwN0dzUYzXEAYFjgE7aaDjZV6d6nqPExdB+Ed30FiVwV4VQcQjV12KsXXvoXCWI
	Q7ZH0ADTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmR5-0000CQ-0B; Fri, 27 Mar 2020 10:41:59 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmQx-0000Bv-Ez; Fri, 27 Mar 2020 10:41:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 14AAAAFB2;
 Fri, 27 Mar 2020 10:41:48 +0000 (UTC)
Message-ID: <0498ff6f39f77750c112a770e56f0beb201446a0.camel@suse.de>
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, Stefan Wahren
 <stefan.wahren@i2se.com>, Eric Anholt <eric@anholt.net>
Date: Fri, 27 Mar 2020 11:41:46 +0100
In-Reply-To: <4239bf44-1a2d-09c4-fc1b-186955c062ab@gmail.com>
References: <20200303173217.3987-1-nsaenzjulienne@suse.de>
 <24f850f64b5c71c71938110775e16caaec2811cc.camel@suse.de>
 <8c2bdd83-c8a9-7ba8-8d61-69594e6a2bde@i2se.com>
 <4239bf44-1a2d-09c4-fc1b-186955c062ab@gmail.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_034151_648645_F7C06E09 
X-CRM114-Status: GOOD (  20.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 wahrenst@gmx.net, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2611560640566329991=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2611560640566329991==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-gzrfjv0pONOImR3jIMys"


--=-gzrfjv0pONOImR3jIMys
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-03-26 at 17:35 -0700, Florian Fainelli wrote:
>=20
> On 3/26/2020 10:24 AM, Stefan Wahren wrote:
> > Am 26.03.20 um 13:24 schrieb Nicolas Saenz Julienne:
> > > Hi Stefan and Florian,
> > >=20
> > > On Tue, 2020-03-03 at 18:32 +0100, Nicolas Saenz Julienne wrote:
> > > > The register based driver turned out to be unstable, specially on R=
Pi3a+
> > > > but not limited to it. While a fix is being worked on, we roll back=
 to
> > > > using firmware based scheme.
> > > >=20
> > > > Fixes: e1dc2b2e1bef ("ARM: bcm283x: Switch V3D over to using the PM
> > > > driver
> > > > instead of firmware")
> > > > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > > ---
> > > now that the problem Stefan was seeing is being taken care of, I thin=
k
> > > it's
> > > fair to reconsider taking this patch. Maybe even adding a Tested-by b=
y
> > > Stefan?
> >=20
> > after applying "drm/vc4: Fix HDMI mode validation" this commit doesn't
> > cause any regression:
> >=20
> > Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
>=20
> Good, how do you like to see this applied? Do we need to ensure that
> drm/vc4: Fix HDMI mode validation is applied to Linus' tree before
> merging this one? Nicolas, should this be queued for 5.7 or 5.8 (I do
> not think the 5.7 PRs have been merged yet).

Ideally both should be applied in the same time yes. I'm going to prepare a=
n
extra PR for v5.7 today.

Regards,
Nicolas


--=-gzrfjv0pONOImR3jIMys
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl592GoACgkQlfZmHno8
x/4syAf+P2dd4A3mafbrtA3sC1NVo/CmhLWTMxs3oK4Bz/T1Izsmb6kQMRrFQaAN
Q+BJYoadSildwMxEphIiMLMd/DgUcrvQxYNfbnN66J5dTRkKCSI1N8vthrguR5ZT
eARTfnkzzOGkoOVKTeh6IsNDadlP3xM3+z6SsCoAIdGngzjcb43I8go5QL+ZXCFf
jqy13op8m+Vcnluf1VZXhJDHfA6/VNCUUyV6xHUOMrJhoZ+bdPWEsewQj50m9NTx
2+IO/Fe3LcC692M/d+4+/C6qCj593e0+mtN3kJt2/0MkipEDUVjbXX9CKcMojhrp
e+vOQ+De19k3dq3DLwP2RPt88kDCHw==
=L34C
-----END PGP SIGNATURE-----

--=-gzrfjv0pONOImR3jIMys--



--===============2611560640566329991==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2611560640566329991==--


