Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BEE10B5A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 19:24:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pH+SgoWS/2SVKmrkTjaBs8Eww3Ynbyj7tGXUZzLRXp0=; b=DQdJAOIZV7oWB2GHulL1rCAnb
	SM7jJnkeV8jQkd/1xG9FHrWlKz2X9UDJEAcwzgGJCtepWIEYHQqvC9PJvtqxZnpk8KkCJh0APMlaX
	88oyGbokTJO4qi9/uHbA1+eUCR8v1R28T28rfpjVEJ2aDXEfa5tXd62c7BQHoGQokbtrHoFIoeTv9
	cbwquCJaiKgwZlpD0k2ZoOzBJrdzKFkJvl9VeqVeRmeG0DgAY6ldo+4BMFwTajuNHdRN+mzbGSG7B
	46in6Gwhhs0KW+fLg5T1Wp6KUJu+uErPXv0/YExEk39ejCq2KGtgCFK3iwfQBkfaeCdJAgXeEcx7Q
	oOVmat7Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1zJ-0001jc-FL; Wed, 27 Nov 2019 18:24:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1z4-0001iK-4S; Wed, 27 Nov 2019 18:24:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4C8F7ADBF;
 Wed, 27 Nov 2019 18:24:12 +0000 (UTC)
Message-ID: <b30002d48c9d010a1ee81c16cd29beee914c3b1d.camel@suse.de>
Subject: Re: [PATCH v3 1/7] linux/log2.h: Add roundup/rounddown_pow_two64()
 family of functions
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Robin Murphy <robin.murphy@arm.com>, Leon Romanovsky <leon@kernel.org>
Date: Wed, 27 Nov 2019 19:24:07 +0100
In-Reply-To: <6e0b9079-9efd-2884-26d1-3db2d622079d@arm.com>
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-2-nsaenzjulienne@suse.de>
 <20191126125137.GA10331@unreal>
 <6e0b9079-9efd-2884-26d1-3db2d622079d@arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_102414_488920_0B7B62DE 
X-CRM114-Status: GOOD (  16.38  )
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
Content-Type: multipart/mixed; boundary="===============1432441484387912716=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1432441484387912716==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-mxyStPsVH/f4qNVW2wlv"


--=-mxyStPsVH/f4qNVW2wlv
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-11-27 at 18:06 +0000, Robin Murphy wrote:
> On 26/11/2019 12:51 pm, Leon Romanovsky wrote:
> > On Tue, Nov 26, 2019 at 10:19:39AM +0100, Nicolas Saenz Julienne wrote:
> > > Some users need to make sure their rounding function accepts and retu=
rns
> > > 64bit long variables regardless of the architecture. Sadly
> > > roundup/rounddown_pow_two() takes and returns unsigned longs. Create =
a
> > > new generic 64bit variant of the function and cleanup rougue custom
> > > implementations.
> >=20
> > Is it possible to create general roundup/rounddown_pow_two() which will
> > work correctly for any type of variables, instead of creating special
> > variant for every type?
>=20
> In fact, that is sort of the case already - roundup_pow_of_two() itself=
=20
> wraps ilog2() such that the constant case *is* type-independent. And=20
> since ilog2() handles non-constant values anyway, might it be reasonable=
=20
> to just take the strongly-typed __roundup_pow_of_two() helper out of the=
=20
> loop as below?
>=20
> Robin
>=20

That looks way better that's for sure. Some questions.

> ----->8-----
> diff --git a/include/linux/log2.h b/include/linux/log2.h
> index 83a4a3ca3e8a..e825f8a6e8b5 100644
> --- a/include/linux/log2.h
> +++ b/include/linux/log2.h
> @@ -172,11 +172,8 @@ unsigned long __rounddown_pow_of_two(unsigned long n=
)
>    */
>   #define roundup_pow_of_two(n)			\
>   (						\
> -	__builtin_constant_p(n) ? (		\
> -		(n =3D=3D 1) ? 1 :			\
> -		(1UL << (ilog2((n) - 1) + 1))	\
> -				   ) :		\
> -	__roundup_pow_of_two(n)			\
> +	(__builtin_constant_p(n) && (n =3D=3D 1)) ?	\
> +	1 : (1UL << (ilog2((n) - 1) + 1))	\

Then here you'd have to use ULL instead of UL, right? I want my 64bit value
everywhere regardless of the CPU arch. The downside is that would affect
performance to some extent (i.e. returning a 64bit value where you used to =
have
a 32bit one)?

Also, what about callers to this function on platforms with 32bit 'unsigned
longs' that happen to input a 64bit value into this. IIUC we'd have a chang=
e of
behaviour.

Regards,
Nicolas


--=-mxyStPsVH/f4qNVW2wlv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3ev0cACgkQlfZmHno8
x/7bZggAoQCurviCXXa381xJwqPJoSkVo+ESY4pKxZ8criUSzcK0v7Snj8tUrs+B
F6O3wS+0QIF0LcdHj48Rihbx2Ls980iATSGd+7REU4JrPWLjecMDqz9smaA8/mm+
8iO/OghEVch7cGpeDW/XLbdKCRWbWoqUCkZiyDIBeRQ5/RZs8pNSZ5k6yXpglval
Hn1RDO1O+Ux+IzX50cSagoiBUVEOHcSfxNM1t88eT90fKRo4bs/xJ+OcFByqCnzx
9RGZD2KWJiEsVOL3+HWLiB8m84UHAZGQwyMB5ZiMuh4f/hfaHo/9tBTUc1DG9Qcs
fyfOer6A4i/IvO29wvmBFubbD5Noxw==
=YNW2
-----END PGP SIGNATURE-----

--=-mxyStPsVH/f4qNVW2wlv--



--===============1432441484387912716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1432441484387912716==--


