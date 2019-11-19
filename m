Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 572211024C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 13:44:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TBeag3eHWvHa1nJpeT98l5cfb4wXBZK/rhUTzZ1aTFg=; b=F0EYrm9PofaLWm//BTf3Ccpvz
	GOctLy/ztcrdrHFajmAg8Aq/MExRmhN7e9c/Eio5/YawqN3Z1wA5AvgfBhbJFd5HlORt8626QW5Su
	74Cq8G3H3GMJU6GmhjgeIHKb7jQ3O6MES66lI+ZkDffG7wtrpOQ5cCo0nk0XYqmzPvM9UYuhaVkCj
	am9y+XleQHV2eNpcASPNkyfgpuLFeo7dwpdsz2erznNz7oyyuwJrot1SVYOpVKoa0RnfB3H6ElO05
	QiLMVEyb+QXtntdlGabc9Sh8ft7uruHNH18T+uT12tO8HOHhkCMp4Z9VzZxp2w1vtfaACmMV5WdhD
	vHG+Z8nhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX2rO-0005kh-Lb; Tue, 19 Nov 2019 12:43:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX2rC-0005jg-Vr; Tue, 19 Nov 2019 12:43:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 61E29AA35;
 Tue, 19 Nov 2019 12:43:43 +0000 (UTC)
Message-ID: <56cbba61d92f9bc7d0a33c1de379bcd5cf411cb8.camel@suse.de>
Subject: Re: [PATCH v2 1/6] linux/log2.h: Add roundup/rounddown_pow_two64()
 family of functions
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andrew Murray <andrew.murray@arm.com>
Date: Tue, 19 Nov 2019 13:43:39 +0100
In-Reply-To: <052d07fb4eb79b29dd58cab577d59bab6684329a.camel@suse.de>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-2-nsaenzjulienne@suse.de>
 <20191119111320.GP43905@e119886-lin.cambridge.arm.com>
 <052d07fb4eb79b29dd58cab577d59bab6684329a.camel@suse.de>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_044347_171456_B44BA640 
X-CRM114-Status: GOOD (  15.99  )
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
 Shawn Lin <shawn.lin@rock-chips.com>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-rdma@vger.kernel.org,
 maz@kernel.org, phil@raspberrypi.org, iommu@lists.linux-foundation.org,
 linux-rockchip@lists.infradead.org, f.fainelli@gmail.com,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 mbrugger@suse.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 jeremy.linton@arm.com, Tom Joseph <tjoseph@cadence.com>, wahrenst@gmx.net,
 james.quinlan@broadcom.com, Robin Murphy <robin.murphy@arm.com>, "David S.
 Miller" <davem@davemloft.net>, Tariq Toukan <tariqt@mellanox.com>
Content-Type: multipart/mixed; boundary="===============8940781660591022608=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8940781660591022608==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-PEkTPRiOa1AqhiKRErKs"


--=-PEkTPRiOa1AqhiKRErKs
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-11-19 at 12:30 +0100, Nicolas Saenz Julienne wrote:
> Hi Andrew, thanks for the review.
> > > +/**
> > > + * __roundup_pow_of_two64() - round 64bit value up to nearest power =
of
> > > two
> > > + * @n: value to round up
> > > + */
> > > +static inline __attribute__((const)) __u64 __roundup_pow_of_two64(__=
u64
> > > n)
> >=20
> > To be consistent with other functions in the same file (__ilog_u64) you=
 may
> > want to rename this to __roundup_pow_of_two_u64.
>=20
> Sounds good to me.
>=20
> > Also do you know why u64 is used in some places and __u64 in others?
>=20
> That's unwarranted, it should be __u64 everywhere.

Sorry, now that I look deeper into it, it should be u64.

> > > +{
> > > +	return 1UL << fls64(n - 1);
> >=20
> > Does this need to be (and for the others):
> >=20
> > return 1ULL << fls64(n - 1);
> >=20
> > Notice that the PCI drivers you convert, all use 1ULL.
>=20
> Noted
>=20
> Regards,
> Nicolas
>=20


--=-PEkTPRiOa1AqhiKRErKs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3T43sACgkQlfZmHno8
x/7LuAf/c4Ft9xBoQ5DrEpF3NZnrHpWnbCYGBZ5Q00PjCEwaMwf7zN1jspazlRC1
8u+n3yELpEHEhnu5CArHUsydAcMXpcZ05JTf+ii7TGVQfZmFY/iII/4C0WEQPif5
T19cDHz4f+qS+CVqpEWBvFt5YBDXfVst7ezSwZSRfRYNVjYMG4d2zbTRqSlVmOT5
6FKyeFGOK+lGpYpAaAu09PG7IFFqMEae3x6TkHfO2cfzUzy88FyOVNZ8G4Oucvhe
90OcIAUpPGgfX+Q2mQPBsITErw/o+Z4qY6t/kwwLcj9YjCFjh9MuwoDpS24a8Tmq
5XWFnFRetCT6rYY15K2BujP0/VQBBQ==
=sJh7
-----END PGP SIGNATURE-----

--=-PEkTPRiOa1AqhiKRErKs--



--===============8940781660591022608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8940781660591022608==--


