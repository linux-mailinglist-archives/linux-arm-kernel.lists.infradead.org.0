Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E24D181E18
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:39:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MYExmrqI1Azq/8nLrsotTFsiCGTgjo8D2cTYHtSIQ8E=; b=F+32feKePWjvJl7Jqy93F81On
	OAl70hiH/ismMaTlvrFmHG2IBssWfOtjTcUOfp5pRW0o8ECkB6/i7tzyOqwvDZB6O1kD30xk48MJc
	jZh658y3mX7tkSq8ImjddbtTOpWurP9iJ8t19ApcUWGpMJPejD/ZkjCgdpoCeZYYj+xn0jE32XWuW
	/SpB6RC5TOL3I9CDSYjUAC83hjmWfRt+SqvXbUQm9Qys8Pk13vIBHeFfjn5wafL9DCVWqaKI7HG83
	V1fpIkzLEg77UK3bfoDmYehVepMmjOJGFELVKXIgXqGoH/q+GI3kmSl97LmnoSLjc2gx10l2bDcP9
	G0UeMkOyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4OR-00070i-R6; Wed, 11 Mar 2020 16:39:39 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4OJ-0006zd-2Q; Wed, 11 Mar 2020 16:39:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 8F6EEAD83;
 Wed, 11 Mar 2020 16:39:23 +0000 (UTC)
Message-ID: <27b291f807b6b07c41bf836dc5d543c8b710737e.camel@suse.de>
Subject: Re: [PATCH] ARM: bcm2835-rpi-zero-w: Add missing pinctrl name
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, nick.hudson@gmx.co.uk
Date: Wed, 11 Mar 2020 17:39:21 +0100
In-Reply-To: <620c845c-afd1-a4a4-468a-acc24299f492@gmail.com>
References: <20200310182537.8156-1-nick.hudson@gmx.co.uk>
 <12f35cc38b87dfe27f0786c931d4434b0fecb3d8.camel@suse.de>
 <620c845c-afd1-a4a4-468a-acc24299f492@gmail.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_093931_256487_DF42C5A3 
X-CRM114-Status: GOOD (  16.51  )
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
Content-Type: multipart/mixed; boundary="===============0980486547582833015=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0980486547582833015==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-tO8qGKgqcYZ4oHm3H9Yo"


--=-tO8qGKgqcYZ4oHm3H9Yo
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-03-11 at 09:37 -0700, Florian Fainelli wrote:
> On 3/11/20 4:28 AM, Nicolas Saenz Julienne wrote:
> > On Tue, 2020-03-10 at 18:25 +0000, nick.hudson@gmx.co.uk wrote:
> > > From: Nick Hudson <nick.hudson@gmx.co.uk>
> > >=20
> > > Define the sdhci pinctrl state as "default" so it gets applied
> > > correctly and to match all other RPis.
> > >=20
> > > Fixes: 2c7c040c73e9 ("ARM: dts: bcm2835: Add Raspberry Pi Zero W")
> > >=20
> > > Signed-off-by: Nick Hudson <skrll@netbsd.org>
> >=20
> > I think this one has everything right. As a nitpick, there is no need t=
o add
> > a
> > space between the Fixes tag and the Signed-off-by tag, but it's OK as i=
s.
> >=20
> > Florian, can we channel this as a fix for v5.6 or are we too late?
>=20
> We can try, let me queue this today.

Cool, in that case you can add my:

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-tO8qGKgqcYZ4oHm3H9Yo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5pFDkACgkQlfZmHno8
x/7ZLgf/Y74eTK74Olpi4QBn5o859nxJLEbfvHY7QMCt7KTQtkZb+Np8YQwlb0G1
GN7zU/ftA0ugqZgz0/PbzvfIaLmYOPvylyg3T5gOKVaPuZsY/94xYIzFCP7LduAw
3eq8NEf1EQrXDhDcKGzigrXBm6FsDAXJjIN7RiqT1JqofstwznMsebBYas0mk7pN
83VbCcgNkUMDSIDT2eURsUL+U2FqMFbgX6Ie03w8OlJtx6DsSNXYDzblK290cUtY
YRJpTqq38S8C9j9DvCPO9TK/t0ez/MbmaCJ/4jQMWfy8EmMqHq2Z+dxt4QYDIm16
hNh6SUj4r1QqDnMJhwvzKpjZpCJdkA==
=91Kj
-----END PGP SIGNATURE-----

--=-tO8qGKgqcYZ4oHm3H9Yo--



--===============0980486547582833015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0980486547582833015==--


