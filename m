Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D896619579B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 13:58:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZJemRQlCtRCHD8al6fdqN76I5bzlNR30rZXW5TxLp48=; b=GXJgwc6UOEN2GIgwLgsjCOHqW
	6esfwKhuy0TnBCe5Jt3puN21KC3WnJsrxpTg67rj/YpFDnyIj8OQBa+Kg7MMqUp2dsy3oPp/VoUFr
	k51uv1DTip5HXj26/FC5YljlYHX2jdtErxd80Oyn/oPPmLD7pie9188ee6JYX7MbtsvjR1Ik6y6ww
	Sk5vEB148rE7SADaQ0kjSLnBho0KZLN2eRmV3TcQW1p/xsPBj8ZLurVd3O/zyabwvq/HmO00MDFqY
	fHCNPuVpr79D2DCThZjEn6sRy4Kxcr9VZ2Au1rcV9w+7QZMHO3ZSJRpZI9kPAoAq1WCY/5tg1vhdi
	JvgjkXaJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoZK-0005Lz-8O; Fri, 27 Mar 2020 12:58:38 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoZ6-0005La-IS; Fri, 27 Mar 2020 12:58:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7D2E6AC1D;
 Fri, 27 Mar 2020 12:58:22 +0000 (UTC)
Message-ID: <7b3f1bb70dd232a09851789fdaa5d7de957c9294.camel@suse.de>
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, Scott
 Branden <sbranden@broadcom.com>,  bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <stefan.wahren@i2se.com>,  Eric Anholt <eric@anholt.net>
Date: Fri, 27 Mar 2020 13:58:20 +0100
In-Reply-To: <20200303173217.3987-1-nsaenzjulienne@suse.de>
References: <20200303173217.3987-1-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_055824_757083_57B52547 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, wahrenst@gmx.net,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5036711444719888176=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5036711444719888176==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-sr8I0z5hMln8enfhNN+B"


--=-sr8I0z5hMln8enfhNN+B
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-03-03 at 18:32 +0100, Nicolas Saenz Julienne wrote:
> The register based driver turned out to be unstable, specially on RPi3a+
> but not limited to it. While a fix is being worked on, we roll back to
> using firmware based scheme.
>=20
> Fixes: e1dc2b2e1bef ("ARM: bcm283x: Switch V3D over to using the PM drive=
r
> instead of firmware")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---

Applied for-next.

Regards,
Nicolas


--=-sr8I0z5hMln8enfhNN+B
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl59+GwACgkQlfZmHno8
x/5IZAf+Jssc7zy9oVNz9NTe7OmnW+X4UFITXiDV15LXlQWZ+vYugWzUMnIsEMI+
sIAy/LJlkVWDb6F0vhl5eUif4e1ESSBQv7oMSSWQPZMff/Te4KC6a4JvrgFaFoke
N+PPj1mfQsFAEdCt3wpBu5DBk2G8C/XQJWdNyitc0N5s2GHjREZdi2m61fLnUgKq
BCRCLAo3HJ9kJYX4qwA0o8e83y0zdVF7/s5BvA4QbINxlRiYejqxQK6mTSc5VOM7
MpCiTYjQVEXFJbDtrc+Pl6RoT9zSt7mJ/iaV7dNweASW0s+qGmJyW11QpRfKRQzl
AKo+l+GxgdBcmWN9rnZ2MY+yqP1ZMA==
=Jnbv
-----END PGP SIGNATURE-----

--=-sr8I0z5hMln8enfhNN+B--



--===============5036711444719888176==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5036711444719888176==--


