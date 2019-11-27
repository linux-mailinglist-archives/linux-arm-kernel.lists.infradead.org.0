Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8266410B693
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 20:17:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kIXl6Hbjz2USQI4wGduOXvVT2xGS9kXZMn+2+ggE0ss=; b=dHFm++XLTH0w1jJq5I7n0hBL3
	BA+UJ2XXkhuwJRxixtIFQ3v62MHv+sxiT5VYng3TawNCBcoj+AIWs83LyTuQOT8K3nI7IKZSDHFNR
	6OL3/9Vrrsb/lVaQllpLFHvVF4BaEXEBG2WyAsdkands1Jfc5V5lhBQAmzVrxHUSrHhlhUzslyfpw
	8WuZKKZLLtpu7l644UlImbqhf9uSiAG9YWPN/kv2UX/FHg/SSKYEX/SGjZctNmEKiay1M+sLzQLoJ
	od9uLjjZ83iMVUcbhMxju7d5wW6MYr4I1AcKeGSDRktOsa+e95owzV6aoQnPGugjYXUYpEUXqv2ea
	0Pin7rsvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia2o0-0006aA-VK; Wed, 27 Nov 2019 19:16:52 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia2np-0006ZR-Oq; Wed, 27 Nov 2019 19:16:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C825BACEF;
 Wed, 27 Nov 2019 19:16:36 +0000 (UTC)
Message-ID: <c3885c2ed8bec892290c3d957c8c5012039b6759.camel@suse.de>
Subject: Re: [PATCH v3 1/7] linux/log2.h: Add roundup/rounddown_pow_two64()
 family of functions
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Robin Murphy <robin.murphy@arm.com>, Leon Romanovsky <leon@kernel.org>
Date: Wed, 27 Nov 2019 20:16:27 +0100
In-Reply-To: <c08863a7-49c6-962e-e968-92adb8ee2cc9@arm.com>
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-2-nsaenzjulienne@suse.de>
 <20191126125137.GA10331@unreal>
 <6e0b9079-9efd-2884-26d1-3db2d622079d@arm.com>
 <b30002d48c9d010a1ee81c16cd29beee914c3b1d.camel@suse.de>
 <c08863a7-49c6-962e-e968-92adb8ee2cc9@arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_111642_101422_F79E1B0E 
X-CRM114-Status: GOOD (  20.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Hanjun Guo <guohanjun@huawei.com>,
 Frank Rowand <frowand.list@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>, f.fainelli@gmail.com,
 linux-rockchip@lists.infradead.org, linux-rdma@vger.kernel.org, maz@kernel.org,
 phil@raspberrypi.org, linux-acpi@vger.kernel.org, Len Brown <lenb@kernel.org>,
 devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-rpi-kernel@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, mbrugger@suse.com,
 netdev@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 wahrenst@gmx.net, james.quinlan@broadcom.com,
 Sudeep Holla <sudeep.holla@arm.com>, andrew.murray@arm.com,
 "David S. Miller" <davem@davemloft.net>, Tariq Toukan <tariqt@mellanox.com>
Content-Type: multipart/mixed; boundary="===============6079460228717787401=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6079460228717787401==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-O+wgk4AZ6l++1CDkyqmb"


--=-O+wgk4AZ6l++1CDkyqmb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-11-27 at 19:06 +0000, Robin Murphy wrote:
> On 27/11/2019 6:24 pm, Nicolas Saenz Julienne wrote:
> > On Wed, 2019-11-27 at 18:06 +0000, Robin Murphy wrote:
> > > On 26/11/2019 12:51 pm, Leon Romanovsky wrote:
> > > > On Tue, Nov 26, 2019 at 10:19:39AM +0100, Nicolas Saenz Julienne wr=
ote:
> > > > > Some users need to make sure their rounding function accepts and
> > > > > returns
> > > > > 64bit long variables regardless of the architecture. Sadly
> > > > > roundup/rounddown_pow_two() takes and returns unsigned longs. Cre=
ate a
> > > > > new generic 64bit variant of the function and cleanup rougue cust=
om
> > > > > implementations.
> > > >=20
> > > > Is it possible to create general roundup/rounddown_pow_two() which =
will
> > > > work correctly for any type of variables, instead of creating speci=
al
> > > > variant for every type?
> > >=20
> > > In fact, that is sort of the case already - roundup_pow_of_two() itse=
lf
> > > wraps ilog2() such that the constant case *is* type-independent. And
> > > since ilog2() handles non-constant values anyway, might it be reasona=
ble
> > > to just take the strongly-typed __roundup_pow_of_two() helper out of =
the
> > > loop as below?
> > >=20
> > > Robin
> > >=20
> >=20
> > That looks way better that's for sure. Some questions.
> >=20
> > > ----->8-----
> > > diff --git a/include/linux/log2.h b/include/linux/log2.h
> > > index 83a4a3ca3e8a..e825f8a6e8b5 100644
> > > --- a/include/linux/log2.h
> > > +++ b/include/linux/log2.h
> > > @@ -172,11 +172,8 @@ unsigned long __rounddown_pow_of_two(unsigned lo=
ng n)
> > >     */
> > >    #define roundup_pow_of_two(n)			\
> > >    (						\
> > > -	__builtin_constant_p(n) ? (		\
> > > -		(n =3D=3D 1) ? 1 :			\
> > > -		(1UL << (ilog2((n) - 1) + 1))	\
> > > -				   ) :		\
> > > -	__roundup_pow_of_two(n)			\
> > > +	(__builtin_constant_p(n) && (n =3D=3D 1)) ?	\
> > > +	1 : (1UL << (ilog2((n) - 1) + 1))	\
> >=20
> > Then here you'd have to use ULL instead of UL, right? I want my 64bit v=
alue
> > everywhere regardless of the CPU arch. The downside is that would affec=
t
> > performance to some extent (i.e. returning a 64bit value where you used=
 to
> > have
> > a 32bit one)?
>=20
> True, although it's possible that 1ULL might result in the same codegen=
=20
> if the compiler can see that the result is immediately truncated back to=
=20
> long anyway. Or at worst, I suppose "(typeof(n))1" could suffice,=20
> however ugly. Either way, this diff was only an illustration rather than=
=20
> a concrete proposal, but it might be an interesting diversion to=20
> investigate.
>=20
> On that note, though, you should probably be using ULL in your current=
=20
> patch too.

I actually meant to, the fix got lost. Thanks for pointing it out.

As I see Leon also likes this, I'll try out this implementation and come ba=
ck
with some results.

Regards,
Nicolas


--=-O+wgk4AZ6l++1CDkyqmb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3ey4sACgkQlfZmHno8
x/4qGggAi4+Q7jM0+bmigNE35y3GihyLXM3ahA2qmQ9ftiZshh+Z8XQUYcRi7852
LsPNmYpHjwV3LyoaBXdnHaIVR5I1rE6RXSAZEK4xRF872qqm9rKDeMGF1GXxrw3u
BJl/LR2xhGkhYepUUAiZ+vGy3FyTfl8ADH/V9AHtFtvXuFTpStBZS3/xYgaO9mRa
E0hCB01yKy14h+FAXRiEB0E6onkyAqWjLHPmAXCGmk4ZsJwAjdVr3QyVq6AUBBKt
CaBQ7gUU8NOTg8ZE9WDRdTfIlQ+1Gpiu2xk1jML8Y1eCGxB3wtXy0t5GdjOaiwzi
fzp73AN5N4UigGnR/sl3LgJQXPe3yA==
=ixwn
-----END PGP SIGNATURE-----

--=-O+wgk4AZ6l++1CDkyqmb--



--===============6079460228717787401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6079460228717787401==--


