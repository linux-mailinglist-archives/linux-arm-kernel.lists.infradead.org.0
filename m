Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD645D7074
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 09:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=42nq+5eEfUYhBkikG+wVD9Ie053H7eYMRX2yxePfls4=; b=qXBJkIHCdNelPMovO7gE6sMrM
	nl8DzE7e2V0ynyjmQDyzTnvzBegRvnnAupto3LQSofMaIRbHeEhO+X89BKSzvLJBgC9BCYE3+5XHE
	xDVxXv0NiC+qmfNEFfoeLOqEgWjvc53CZ/KYeDUpTcdPEKDQA2hlo/+NB8IV0edp9/7zSWdPrzSms
	F4kt9mPqvb1u98JcPn6KTg8i+YJRjw7FYW3RcD2/8BivkUfBZnWSR5Rzmgezr7CODnEUV1ZMF0fVc
	8SpadGQ5SGCHemcEI2jhfuNhYz6cJywmB6JSPLSL0gfudwFIAPtwi2pEpieefO1dp4xWsSNOSwwKw
	kF9LbMiBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKHZL-000594-Pa; Tue, 15 Oct 2019 07:48:35 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKHZC-00058U-Oe; Tue, 15 Oct 2019 07:48:28 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D6A5EB650;
 Tue, 15 Oct 2019 07:48:24 +0000 (UTC)
Message-ID: <384b42df01c0af973002fba0d5f02068e7f2e7b3.camel@suse.de>
Subject: Re: [PATCH RFC 0/5] ARM: Raspberry Pi 4 DMA support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Catalin Marinas <catalin.marinas@arm.com>
Date: Tue, 15 Oct 2019 09:48:22 +0200
In-Reply-To: <20191014205859.GA7634@iMac-3.local>
References: <20191014183108.24804-1-nsaenzjulienne@suse.de>
 <20191014205859.GA7634@iMac-3.local>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_004826_947347_362BEF10 
X-CRM114-Status: GOOD (  12.21  )
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
Cc: linux-s390@vger.kernel.org, f.fainelli@gmail.com,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 hch@infradead.org, iommu@lists.linux-foundation.org, mbrugger@suse.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============2982342879424631518=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2982342879424631518==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-4pilC0luxewnjymcvLYk"


--=-4pilC0luxewnjymcvLYk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-10-14 at 21:59 +0100, Catalin Marinas wrote:
> On Mon, Oct 14, 2019 at 08:31:02PM +0200, Nicolas Saenz Julienne wrote:
> > the Raspberry Pi 4 offers up to 4GB of memory, of which only the first
> > is DMA capable device wide. This forces us to use of bounce buffers,
> > which are currently not very well supported by ARM's custom DMA ops.
> > Among other things the current mechanism (see dmabounce.c) isn't
> > suitable for high memory. Instead of fixing it, this series introduces =
a
> > way of selecting dma-direct as the default DMA ops provider which allow=
s
> > for the Raspberry Pi to make use of swiotlb.
>=20
> I presume these patches go on top of this series:
>=20
> http://lkml.kernel.org/r/20190911182546.17094-1-nsaenzjulienne@suse.de

Yes, forgot to mention it. It's relevant for the first patch.

>=20
> which I queued here:
>=20
>=20
https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=3Dfo=
r-next/zone-dma

Thanks!

A little off topic but I was wondering if you have a preferred way to refer=
 to
the arm architecture in a way that it unambiguously excludes arm64 (for exa=
mple
arm32 would work).

Regards,
Nicolas


--=-4pilC0luxewnjymcvLYk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2lecYACgkQlfZmHno8
x/7lZQf7BpuyTA7KitVkqMXl3L4hWPGTsvKYE4a6JPGwACQaRTlyPLU+YRDvD5uG
3ulte/b7C+OKAXzI17fdpJvO8SBHGO+E0Y2G/j46W9pVezPmyccfF+M0uGKsP9d7
/tcaYEm0X5vNtneMFYydutqLSqQT1uFUcPdJ6M0AJVUcLOtANEfXEJjYEnj6s7wd
OyV2QaOXth+V85DGT+wgaPPOLRmxBmlMbVfZYJUVJ7+9o2FiuWBYDvQ4OA3dHAXf
mVw+II6YIOo4WghksiGES3JYt/0yd0cjqf6Qq7MbB9RIUdvhbJC28ZzRdKSgOA9Q
8PLdonhaeyOJ5k3hZqN+MFiGPt6QGw==
=0lDM
-----END PGP SIGNATURE-----

--=-4pilC0luxewnjymcvLYk--



--===============2982342879424631518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2982342879424631518==--


