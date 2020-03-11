Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3831C1816D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 12:29:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kq1uWzqCMrWDCZ95S9myXsWT/+nW3GXgNxhbWs7DzDs=; b=Yyey9DJP+Y34zOyX0IMSMIB2I
	WIeHXSjqSH49EP7voTbD5otN8aOHjBJXKwBkTTWo188kuYsw9JvLBHoh2a2psXdPifaBWhMVVQhlg
	dVo12oB9JdEkIQBUL29ioV0V2ISPzWHxuxUAJMch6X++lOfbVjSkQM+mOUawpzaOGbZu15XtmDBex
	IPh4S1PooEfCqrx2C/GmY4Ug+r5ZJ04SL5Xv8X4QPDLWqAg+OC3JRpF736gC7sIaAoMlRPDIZEqS0
	RsAJoSzVUv3FQ5lYsWiqb3QYtcPvBN7u4JeTlnjx1XrTQWkv1Te4Ulyqa6vR7XNfV8ID8qsDzHHw0
	ejI+8ovxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzXj-0000En-Uo; Wed, 11 Mar 2020 11:28:55 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzXa-0000DF-RK; Wed, 11 Mar 2020 11:28:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 42AABAE24;
 Wed, 11 Mar 2020 11:28:45 +0000 (UTC)
Message-ID: <12f35cc38b87dfe27f0786c931d4434b0fecb3d8.camel@suse.de>
Subject: Re: [PATCH] ARM: bcm2835-rpi-zero-w: Add missing pinctrl name
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: nick.hudson@gmx.co.uk, Florian Fainelli <f.fainelli@gmail.com>
Date: Wed, 11 Mar 2020 12:28:43 +0100
In-Reply-To: <20200310182537.8156-1-nick.hudson@gmx.co.uk>
References: <20200310182537.8156-1-nick.hudson@gmx.co.uk>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_042847_023567_18192C79 
X-CRM114-Status: GOOD (  13.52  )
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
Cc: Nick Hudson <skrll@netbsd.org>, Mark Rutland <mark.rutland@arm.com>,
 Scott Branden <sbranden@broadcom.com>, devicetree@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4686493859324829177=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4686493859324829177==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-5XYMFQfPZcQJnMqMwH/W"


--=-5XYMFQfPZcQJnMqMwH/W
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-03-10 at 18:25 +0000, nick.hudson@gmx.co.uk wrote:
> From: Nick Hudson <nick.hudson@gmx.co.uk>
>=20
> Define the sdhci pinctrl state as "default" so it gets applied
> correctly and to match all other RPis.
>=20
> Fixes: 2c7c040c73e9 ("ARM: dts: bcm2835: Add Raspberry Pi Zero W")
>=20
> Signed-off-by: Nick Hudson <skrll@netbsd.org>

I think this one has everything right. As a nitpick, there is no need to ad=
d a
space between the Fixes tag and the Signed-off-by tag, but it's OK as is.

Florian, can we channel this as a fix for v5.6 or are we too late?

Regards,
Nicolas


--=-5XYMFQfPZcQJnMqMwH/W
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5oy2sACgkQlfZmHno8
x/6zggf/TMWB4vC2ad+enJM26vcFwsWBjfnnu675ZQMUoxo03ZyHApwW5pwl0BPY
bsyhflSjAqRZmaqSuRu7wfzhKN/uTcEHJfKbthahbEp5eR6O4aDi6uRrouXQN08u
nJ06fiHRpkyB8hnostXRGxHdowLlQgMQqP5z1mW/W/nxVDEZ9ouL7pt/vjXa7ltz
WCAzF62p16K7ty9Yl5OeeNyiCPHnxGLXF0bABpuqtft4MIlorRoxpX6ac1Z2BHtm
AgZbxb9uLowDMVfns4VVz7WxW+A8BfZ9Jnqxu8SmVxeSLF3JrinS/MFCAXbvN9TZ
T2mfB6/jx9pOLEO7Wa/WauZhDc0Yqg==
=dKS0
-----END PGP SIGNATURE-----

--=-5XYMFQfPZcQJnMqMwH/W--



--===============4686493859324829177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4686493859324829177==--


