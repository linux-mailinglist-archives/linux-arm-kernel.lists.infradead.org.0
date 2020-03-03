Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04011177E83
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 19:37:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YxjOBfV8aEkQD7hqhx/BHRT03hoa0muGX/eAYkWUvS4=; b=nF2HuinwpkECN8BFKJJPtjwxR
	1i6sDtnfif+GWDYysGSvSWltXLbr/2+7VmkxFpmuP4qklsiRBXZIathrjJ679t2PyMiedEtZYSgYr
	ELzUOoGa0CgrS+pQLRd2asIzRmfwJtpDTbbwYYVjGG98BuIVk6sERXX4bPDvG6eS/aIvf7SNc5PQg
	jR04R0PkeFPIUaPPsdQKBs/Rq+MsgxKmD8pntHAGW6bdym+anU3RswYKWTBwH/5IZSVVDsJROtiaS
	mePxJdFh76T61UYVSgW2kJ6WjhoEVDgQTOsHLkcBLWBoCDhgzY8D5/agK8D+I36g1k2V3faEoDtYc
	NUeO6NraQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9CQ4-0008L1-40; Tue, 03 Mar 2020 18:37:28 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9CPx-0008KP-08; Tue, 03 Mar 2020 18:37:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 79D8FAD2B;
 Tue,  3 Mar 2020 18:37:19 +0000 (UTC)
Message-ID: <03fcb1e2bc7f3ff389b6dfbf3964e159a93ae835.camel@suse.de>
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Rob Herring
 <robh+dt@kernel.org>,  Mark Rutland <mark.rutland@arm.com>, Florian
 Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,  Scott
 Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 Eric Anholt <eric@anholt.net>
Date: Tue, 03 Mar 2020 19:37:17 +0100
In-Reply-To: <736f0c59-352b-03b2-f77f-bfc22171b3fb@i2se.com>
References: <20200303173217.3987-1-nsaenzjulienne@suse.de>
 <736f0c59-352b-03b2-f77f-bfc22171b3fb@i2se.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_103721_187752_19339D10 
X-CRM114-Status: GOOD (  17.82  )
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
Cc: devicetree@vger.kernel.org, wahrenst@gmx.net,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1936522923593224200=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1936522923593224200==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-tHP4KAwhH9LsysulVrwU"


--=-tHP4KAwhH9LsysulVrwU
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-03-03 at 19:17 +0100, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> Am 03.03.20 um 18:32 schrieb Nicolas Saenz Julienne:
> > The register based driver turned out to be unstable, specially on RPi3a=
+
> > but not limited to it. While a fix is being worked on, we roll back to
> > using firmware based scheme.
> >=20
> > Fixes: e1dc2b2e1bef ("ARM: bcm283x: Switch V3D over to using the PM dri=
ver
> > instead of firmware")
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >=20
> > See https://github.com/raspberrypi/linux/issues/3046 for more reference=
.
> > Note: I tested this on RPi3b, RPi3a+ and RPi2b.
>=20
> as i already wrote this prevent X to start on current Raspbian on my
> Raspberry Pi 3A+ (multi_v7_defconfig, no u-boot). We must be careful here=
.
>=20
> I will take a look at the debug UART. Maybe there are more helpful
> information.

It seems we're seeing different things, I tested this on raspbian
(multi_v7_defconfig) and on arm64. I'll try again from scratch tomorrow.


--=-tHP4KAwhH9LsysulVrwU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5eo90ACgkQlfZmHno8
x/5ClAf/Y6uayh0bvAB8AF2/oSO5SZiz1HYrfdlv6YrywX0n/5HiTLxo6Lb774cF
mjqltChaF50e0bgMBPtLi6e4AMookHQ3U4c3tuRAQiuFYqjKLSMPAIg3XHNQp4Ou
QE1MRfaEtE9IgUzMWco3DNvWvY3kdpM/72D8irbh99xYLdebH/Z/Q1sNByOrgi9e
uc4hUQKrEKwlKK7T3sPIeM7O2N9tPJ65c4flgEByrqvBUQZK4mEwL5LktvT28yL7
tPWn3xWGf53oJORFG9qQ8M1943FLrn4RrRrwPq5AA+tpO3mhYYsbDt85X5ChfL2J
pWQP1x6BbFFKCbxpemYLIGiMQQcllw==
=LF3R
-----END PGP SIGNATURE-----

--=-tHP4KAwhH9LsysulVrwU--



--===============1936522923593224200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1936522923593224200==--


