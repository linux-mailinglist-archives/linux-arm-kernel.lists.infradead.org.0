Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6687354C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 19:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=31eLdOrdY2Kkeg3GZ8BqAfRys4WIEpb+H6ArSkLKpD0=; b=Wpu5lJgj2ES7Cv/g3D81+newR
	89IyjwQSuirpzz5KxjNWsZNAiN/nI7MQFhuDgy1vNTbuQV8SOmZ3oyledpxQhoNDSOvBVB9pbfCoJ
	gwB5plpALWgEjZHPYEDwlQIo/QE3TJhRJgR0cTaQjOProT0GYh+sFCZLwGbog6HJqm45nZTkVdjTl
	76KLW/5lcqip2+3MMfc+gxetEjfOSWU9kZg/2bAVfPtZ7OxPHMFNFkh39WBJChiqDx+znFavakmd5
	RQjOIj4vJqb6o7nChbVZ2vycfpbXJdbOCGnuCs0jaeehwunMgFbRv7YmNEFNWeu4t7tq2FSIvYzw8
	URaaYzGfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKzq-0002eE-JZ; Wed, 24 Jul 2019 17:24:11 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKza-0002dn-HI
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 17:23:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1E42DAE2E;
 Wed, 24 Jul 2019 17:23:53 +0000 (UTC)
Message-ID: <a447eae1bb46fe753f7a62fb8932e680b79b1635.camel@suse.de>
Subject: Re: [PATCH 2/2] arm: use swiotlb for bounce buffer on LPAE configs
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Christoph Hellwig <hch@lst.de>, Russell King - ARM Linux admin
 <linux@armlinux.org.uk>
Date: Wed, 24 Jul 2019 19:23:50 +0200
In-Reply-To: <20190709142011.24984-3-hch@lst.de>
References: <20190709142011.24984-1-hch@lst.de>
 <20190709142011.24984-3-hch@lst.de>
User-Agent: Evolution 3.32.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_102354_720602_D0385E4C 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: multipart/mixed; boundary="===============6875614517555032617=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6875614517555032617==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-whG6SPAwfjFfvDK3372+"


--=-whG6SPAwfjFfvDK3372+
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-07-09 at 07:20 -0700, Christoph Hellwig wrote:
> The DMA API requires that 32-bit DMA masks are always supported, but on
> arm LPAE configs they do not currently work when memory is present
> above 4GB.  Wire up the swiotlb code like for all other architectures
> to provide the bounce buffering in that case.
>=20
> Fixes: 21e07dba9fb11 ("scsi: reduce use of block bounce buffers").
> Reported-by: Roger Quadros <rogerq@ti.com>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---

Hi Chistoph,
Out of curiosity, what is the reason stopping us from using dma-direct/swio=
tlb
instead of arm_dma_ops altogether?

Regards,
Nicolas


--=-whG6SPAwfjFfvDK3372+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl04lCcACgkQlfZmHno8
x/5jKAgAszLIqjIi52NyfR8TyZ+bPsWKIAQKAn5HBQa6grZi+PtHDVbHAxKTikMQ
PgjbRl5aI7uPsbYFuq8R6jr+2mQLXI7gvgHn2x22hh+3+cC+mYWJoORNg7v5VrI9
c2Q4FaZcHLxPLNjPNLsJJHyrM8wLiZ9bMbpKpQ8Fs0UoJmD9fefIDXRIHYQTakeZ
ooLgoUnyEje4u1jCI8dbJrDXRxzVwF7CYlY6V5+PG+7GrdP6sqYeNDk1+PAtzUtf
EIRenYS6MAHo3skOiC+Egr/DeYEsk72iZzIZpWKm7k0HGX9kSc6+eWXt6lPwyiqq
22EzPtQpZAz/Jim+FmDtgz/5II5T+g==
=3iIi
-----END PGP SIGNATURE-----

--=-whG6SPAwfjFfvDK3372+--



--===============6875614517555032617==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6875614517555032617==--


