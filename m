Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0F611CE0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 14:17:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+VN9MEiLCK/sK2JkBFjqFE7XMKaNCYrFzRfk7YIFUfE=; b=q61HNPZk4ScVyrxova5g0691v
	CUDPOUv7Rma5oMaE/P3jadp/lREqOx+bzpJ+aMiZ5Zs9Rhnf8byWkBTAWI5KN0RB77WZh5i9IkoIG
	jjaHIMV/qjPZMVDti0Ye6YWYap6fp2uB8AJof108H/7D7Je0i1Pt1e1lvshK8jey3N4S4LWQGUAN/
	yVznSM1m5cJ7vnr3R5XBvqXQd2BNe0BSCx/2zY/9wOPb+4C53YZWkct303/fnCI575s94LrLgx2oc
	2EvhJZojFagcaDDwExf9Tn31TTSqBklyNUdNU3Y9uOa8qlIj3rhqvazJAvMYlA2//xk4du3TfqdP1
	qF8hVo5fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifOKq-0004yt-RZ; Thu, 12 Dec 2019 13:16:52 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifOKe-0004xJ-Lf; Thu, 12 Dec 2019 13:16:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9BC24AD07;
 Thu, 12 Dec 2019 13:16:36 +0000 (UTC)
Message-ID: <b35922dfd7f62489d35ab15362891a90bf46c3d2.camel@suse.de>
Subject: Re: [PATCH v4 7/8] linux/log2.h: Fix 64bit calculations in
 roundup/down_pow_two()
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Thu, 12 Dec 2019 14:16:27 +0100
In-Reply-To: <20191205223044.GA250573@google.com>
References: <20191205223044.GA250573@google.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_051640_995416_4EFB3C34 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pci@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-nfs@vger.kernel.org,
 Edward Cree <ecree@solarflare.com>, linux-clk@vger.kernel.org,
 f.fainelli@gmail.com, Herbert Xu <herbert@gondor.apana.org.au>,
 Emilio =?ISO-8859-1?Q?L=F3pez?= <emilio@elopez.com.ar>, maz@kernel.org,
 Joerg Roedel <joro@8bytes.org>, phil@raspberrypi.org,
 Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Chen-Yu Tsai <wens@csie.org>, Chuck Lever <chuck.lever@oracle.com>,
 Martin Habets <mhabets@solarflare.com>, wahrenst@gmx.net,
 Tom Lendacky <thomas.lendacky@amd.com>, Jiri Pirko <jiri@resnulli.us>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Maxime Ripard <mripard@kernel.org>, linux-rpi-kernel@lists.infradead.org,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-arm-kernel@lists.infradead.org, Mirko Lindner <mlindner@marvell.com>,
 Mike Marciniszyn <mike.marciniszyn@intel.com>, mbrugger@suse.com,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 Yishai Hadas <yishaih@mellanox.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com, "David
 S. Miller" <davem@davemloft.net>,
 Stephen Hemminger <stephen@networkplumber.org>, linux-rdma@vger.kernel.org,
 iommu@lists.linux-foundation.org, Moni Shoua <monis@mellanox.com>,
 Eric Biederman <ebiederm@xmission.com>, james.quinlan@broadcom.com,
 Thomas Graf <tgraf@suug.ch>, andrew.murray@arm.com,
 Robin Murphy <robin.murphy@arm.con>, David Woodhouse <dwmw2@infradead.org>,
 Dennis Dalessandro <dennis.dalessandro@intel.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: multipart/mixed; boundary="===============7176417081273859226=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7176417081273859226==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-vpJ9shRBsDfxzY4jD4N5"


--=-vpJ9shRBsDfxzY4jD4N5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-12-05 at 16:30 -0600, Bjorn Helgaas wrote:
> You got the "n" on "down" in the subject, but still missing "of" ;)

Yes, sorry about that, I tend to re-read what I meant to say instead of wha=
t
it's actually written.

> On Tue, Dec 03, 2019 at 12:47:40PM +0100, Nicolas Saenz Julienne wrote:
> > Some users need to make sure their rounding function accepts and return=
s
> > 64bit long variables regardless of the architecture. Sadly
> > roundup/rounddown_pow_two() takes and returns unsigned longs. It turns
> > out ilog2() already handles 32/64bit calculations properly, and being
> > the building block to the round functions we can rework them as a
> > wrapper around it.
>=20
> Missing "of" in the function names here.
> s/a wrapper/wrappers/

Noted

> IIUC the point of this is that roundup_pow_of_two() returned
> "unsigned long", which can be either 32 or 64 bits (worth pointing
> out, I think), and many callers need something that returns
> "unsigned long long" (always 64 bits).

I'll update the commit message to be a more explicit.

> It's a nice simplification to remove the "__" variants.  Just as a
> casual reader of this commit message, I'd like to know why we had both
> the roundup and the __roundup versions in the first place, and why we
> no longer need both.

So, the commit that introduced it (312a0c170945b) meant to use the '__' var=
iant
as a helper, but, due to the fact this is a header file, some found it and =
made
use of it. I went over some if the commits introducing '__' usages and none=
 of
them seem to acknowledge its use as opposed to the macro version. I think i=
t's
fair to say it's a case of cargo-culting.

> > -#define roundup_pow_of_two(n)			\
> > -(						\
> > -	__builtin_constant_p(n) ? (		\
> > -		(n =3D=3D 1) ? 1 :			\
> > -		(1UL << (ilog2((n) - 1) + 1))	\
> > -				   ) :		\
> > -	__roundup_pow_of_two(n)			\
> > - )
> > +#define roundup_pow_of_two(n)			  \
> > +(						  \
> > +	(__builtin_constant_p(n) && ((n) =3D=3D 1)) ? \
> > +	1 : (1ULL << (ilog2((n) - 1) + 1))        \
> > +)
>=20
> Should the resulting type of this expression always be a ULL, even
> when n=3D=3D1, i.e., should it be this?
>=20
>   1ULL : (1ULL << (ilog2((n) - 1) + 1))        \
>=20
> Or maybe there's no case where that makes a difference?

It should be 1ULL on either case.

Regards,
Nicolas


--=-vpJ9shRBsDfxzY4jD4N5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3yPasACgkQlfZmHno8
x/4qrgf9GTaIX4ZRG0TCYwOuyJCzR/7cg3GMSsuHo8bknRFfBKmZUwtS0JmNNrn7
f1Av7IZ0OAbAWPJQkzOXw4OxNhVxq0ItdXAktetVKaF6U5Dz/5tWkkwHLFdhSepV
FcS4qxWo8nOugcgYRzN6kDaihMFUqbAIioU7n1HGLRGN2s9vaJM1rNmOrGMPovU3
BbGTs4/7BMM3FmqoGwWUKX5FPFNamYrxAaaOknMUVa16iI7MN7hYH5scWUUK56ER
57y4jC6vGu17Cku4HBlynsoZpm6z6SvHDoXIMZCbUKbJogsiQo+b1+cZTWLVGi2P
qQGX/jHjIhYWNVa2Le9F3qgxxmf0uA==
=hg1F
-----END PGP SIGNATURE-----

--=-vpJ9shRBsDfxzY4jD4N5--



--===============7176417081273859226==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7176417081273859226==--


