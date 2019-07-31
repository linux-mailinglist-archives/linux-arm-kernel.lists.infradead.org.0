Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 633607D055
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 23:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/E9E3NVW7v4QdjrczjS1Egn29GV44WU6wAc/BlOoOoM=; b=oJuT9nAEEkZzKSZsWgtIZJAVF
	1hQCEg+RwRjTcQtEhxIkDeFNl6IbqVi1jAnsfbYngUc+SHsfLrbrzDsJ9QXdzZC58wzwcFpjkV7lB
	hxMwn8/TB4+dYpzIehyE6zxt1IutWuAE0of1MYCpIRo+BOxMWFzHp2J6K3PKC4wakMwq4Fk82EdQf
	PUuI3jPZ3CHKeIDagnUFsXh61LHkLDshu34UyIQlEE+EKB8R5CeZP1GpYA/YorIPMqav1ghQVUrNI
	yw9QoWoGBvMSIzua+pWiWJo1auM5fUOt58Jv1Y9PjiGTApAJZERHOiIPhX0MKlQ7tHOe0irkVVb2N
	WDHgCtMcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hswZS-0003R9-Hx; Wed, 31 Jul 2019 21:55:42 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hswZL-0003Qc-Qw
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 21:55:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K/tOdg0rARIHNKt8myQdNk7juboEm6U9R00/FeIUiBE=; b=dAQCdVcqawi/p92YlttDZTR93
 BKyG7tTLWgF7ROCBKJ78mPeMReOpPz03DvX3MgsE3fL4jZKpXbSgEfnsqgHzMIJoSh2RNJNUt/7Vs
 W4pmxcdPzOCef23B1cmjFfttX03YC386eRlZje3tRqBKZnkd81Qs+16ww3Bey4vn/dVho=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hswZ4-0003OG-Ci; Wed, 31 Jul 2019 21:55:18 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 1A3322742C6C; Wed, 31 Jul 2019 22:55:17 +0100 (BST)
Date: Wed, 31 Jul 2019 22:55:16 +0100
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH 0/6] ReST conversion patches not applied yet
Message-ID: <20190731215516.GM4369@sirena.org.uk>
References: <cover.1564603513.git.mchehab+samsung@kernel.org>
 <20190731141734.1fa9ce64@lwn.net>
 <20190731202007.GI4369@sirena.org.uk>
 <20190731172613.32d65ad8@coco.lan>
 <20190731203712.GJ4369@sirena.org.uk>
 <20190731182729.01c98cd3@coco.lan>
MIME-Version: 1.0
In-Reply-To: <20190731182729.01c98cd3@coco.lan>
X-Cookie: FEELINGS are cascading over me!!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_145535_875648_074EBA81 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dave Kleikamp <shaggy@kernel.org>,
 alsa-devel@alsa-project.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Evgeniy Polyakov <zbr@ioremap.net>,
 linux-cifs@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
 Jonathan Corbet <corbet@lwn.net>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 Evgeniy Dushistov <dushistov@mail.ru>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, samba-technical@lists.samba.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-iio@vger.kernel.org,
 linux-spi@vger.kernel.org, Steve French <sfrench@samba.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Jonathan Cameron <jic23@kernel.org>
Content-Type: multipart/mixed; boundary="===============1190156128647438466=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1190156128647438466==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iKKZt69u2Wx/rspf"
Content-Disposition: inline


--iKKZt69u2Wx/rspf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 31, 2019 at 06:27:29PM -0300, Mauro Carvalho Chehab wrote:

> Meanwhile, if someone needs something that it is at the wrong book, he
> can just use some search tool to seek what he needs, no matter on
> what book the relevant information is stored.

OTOH it might be weird for the intended audience of the book.

> Mark Brown <broonie@kernel.org> escreveu:

> > I don't know if it makes sense to have an embedded developer's
> > manual as well?

> Yeah, that's a good question.=20

> Jon is planning todo a documentation track at LPC. One of the things
> that should be discussed, IMO, is how we'll organize the books.

I'll be at Plumbers, not sure what the schedule's looking like yet
though.

--iKKZt69u2Wx/rspf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1CDkQACgkQJNaLcl1U
h9DmyQf8CbO6RT3vDVCTbWB0f/yKJ/A87r+D9XnXG94SH0Vqj3KAl/HFsPpl4gyU
1t9Uo9ZtFC8lSFh29z5fxpIzNkfsanBjnTrJS1lxOvU+DgmoTfXV5+2xa3rel1E0
oOzMumEUJLWQmAQIaSzObUMvLTHaHZXE9UwveI9WkjfE0k7lsrK4vKzotxGDUk1a
6B/LdVb+NH3ME369z6GL2hpH6SkNc0jCRYj4PcGud8PTKBqHim7kBI3AeE51lFUV
Dsr7zD6gH+cbj/GXdXApIDJvlR8bH6LLM/dakss84cM6CvJoD/pd4z9fn2kmUkVY
5tMO7f2i3x9slM6yQ78bDwGSrn8XIg==
=1tp/
-----END PGP SIGNATURE-----

--iKKZt69u2Wx/rspf--


--===============1190156128647438466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1190156128647438466==--

