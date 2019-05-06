Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 728F5150D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 17:59:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fZbt6ArjwDET8MdJWqa9VtSuDIEGOM85+87E+9OlhwQ=; b=sVBlgVy+laG4q0rhL4ZMsylq3
	oICGLlJKGoUBASIJSmZkGXriPmfRXDRN58/XJgOy5ICd5UUygxoW8G6XF/2y8lmXjzrYan23SOF+k
	ySPKUxtxkEMLuPywKL3rSi7kftDvm+Lx138c/K9YRkGFrcns6k+Zv5MShNu6zJf/lSBlts6BUGqDd
	Ypw/mau124FkjvupgFX6RgLrMceIwbOG6PhmHmTZddOnOyRJwXKPLryTmgLU3ZR0mdxqT6aIkN7oG
	0cdgDbwN67DElmdx8gmNG9rsejA0KlyUcm9f9XxZpkC7S69F/9HsFYHvhfmflTkxtIZZrrF+L8GoZ
	NotHF2AlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNg1Y-0001al-CI; Mon, 06 May 2019 15:59:28 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNg1L-0001Tl-7h; Mon, 06 May 2019 15:59:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D03DCABD7;
 Mon,  6 May 2019 15:59:13 +0000 (UTC)
Message-ID: <6436b4f65565e3fca6827b1c6c0b95f81b099d98.camel@suse.de>
Subject: Re: [PATCH] i2c: bcm2835: Model Divider in CCF
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, Stefan Wahren
 <stefan.wahren@i2se.com>, Annaliese McDermond <nh6z@nh6z.net>,
 eric@anholt.net,  wsa@the-dreams.de, linux-i2c@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Date: Mon, 06 May 2019 17:59:12 +0200
In-Reply-To: <c43eb848-23cd-4b0c-638d-3bb0df58ed31@gmail.com>
References: <20190505034339.30778-1-nh6z@nh6z.net>
 <610c7594-85c9-72db-63a6-6e632e9586aa@i2se.com>
 <c43eb848-23cd-4b0c-638d-3bb0df58ed31@gmail.com>
User-Agent: Evolution 3.30.5 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_085915_499213_94649DFA 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: team@nwdigitalradio.com
Content-Type: multipart/mixed; boundary="===============8055653226505597447=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8055653226505597447==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-NF/oAISSXjVajL9Q6zli"


--=-NF/oAISSXjVajL9Q6zli
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2019-05-05 at 10:13 -0700, Florian Fainelli wrote:
>=20
> On 5/5/2019 3:36 AM, Stefan Wahren wrote:
> > Hi Annaliese,
> >=20
> > Am 05.05.19 um 05:43 schrieb Annaliese McDermond:
> > > Model the I2C bus clock divider as a part of the Core Clock Framework=
.
> > > Primarily this removes the clk_get_rate() call from each transfer.
> > > This call causes problems for slave drivers that themselves have
> > > internal clock components that are controlled by an I2C interface.
> > > When the slave's internal clock component is prepared, the prepare
> > > lock is obtained, and it makes calls to the I2C subsystem to
> > > command the hardware to activate the clock.  In order to perform
> > > the I2C transfer, this driver sets the divider, which requires
> > > it to get the parent clock rate, which it does with clk_get_rate().
> > > Unfortunately, this function will try to take the clock prepare
> > > lock, which is already held by the slave's internal clock calls
> > > creating a deadlock.
> >=20
> > i think i understand the problem, but could you please explain the
> > specific use case where this happend?
> >=20
> > I suspect bcm2835 is not the only platform which is affected, so it
> > would be better to fix this in general.
>=20
> Agreed, if you could identify i2c bus drivers that support changing the
> bus clock and move the registration of the bus 'struct clk' into the i2c
> core that would scale a lot better.

For the record, some time ago I asked for directions on how to properly han=
dle
asyncronous clk rate changes on devices like this and the clk mantainers'
proposed solution[1] needed something similar to what Annaliese is proposin=
g.

That said, I can think of more subsystems that could benefit of a generic
solution for this. I'm pretty sure SPI would, but also MMC, UARTs, and othe=
rs.

[1] https://www.spinics.net/lists/linux-clk/msg36937.html




--=-NF/oAISSXjVajL9Q6zli
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlzQWdAACgkQlfZmHno8
x/6IsAf+ID13VCoGqWG4174whG3Ks3+bn8WWuz8UlPe23RRO9vXQSurDN9839eIN
Hyd9h8CNClLc1TCNJmaxKURycfwavKNuedfa+WxZXVV4iNLbVJpRjtCWsYmcuEY6
BFR+d2hpi7xN8CwK7NlXc64Yim81OUdn3ph0sONRn+PJDIOeJfZIfUpueibMQA/B
K4JDfPBaMoACZ9piTLL0NsTHOfjc4MRmksFPMxsYr3KnfZXy9lm0haUZPrIrNVni
egDuNK0ZstLwiaGPtXrUVl8QaRSZFNWaB/tY4oZ4bmDwPkxOtYzz4ZOlFupvg1aK
vn2pwH8TuTDQsgizLuKOOnF2GzCiHQ==
=fidG
-----END PGP SIGNATURE-----

--=-NF/oAISSXjVajL9Q6zli--



--===============8055653226505597447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8055653226505597447==--


