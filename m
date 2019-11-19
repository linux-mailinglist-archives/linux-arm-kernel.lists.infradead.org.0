Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CACED102397
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 12:49:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U1g9iagnVgli+JcKvf0yAFmiFvTxKrWP3NN5oTvvtIw=; b=Ve83AvArBFtmbAaSnnQT7nOgP
	aXdKRUw1kIXUQsoJI6Hk721h1Eos1jqlDOCuQOdRokamw/T3r1kVc1JAHZMkRgkyOZwaiHDUDnpst
	9tfT3lUsTuFOAfvS+j6XCRp8Ar1CGjwGrhAEOWPFox1cTLjpJNH/qV663cpRG6pDVyZEpVvlSAfbM
	v5IyEbkqQocrQiYinFO0yOTaeJ+yJsuFyUu83dv/ljFnFBSHGgFy6hJi67nZErynD80PcYQEpfqw1
	HTmBTRwohdFey1GJMgeHBvO9JayNkK6NyTXc2iTMBJr4iQnCyp4/C8rwI8feT7DKgzHRLn38qjr6V
	l8Y3Z6irA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX20r-0007KF-Sp; Tue, 19 Nov 2019 11:49:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX20g-0007JK-2r; Tue, 19 Nov 2019 11:49:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E3C64BDB4;
 Tue, 19 Nov 2019 11:49:26 +0000 (UTC)
Message-ID: <1b116fabe85a324e2d05a593d38811467f43fb91.camel@suse.de>
Subject: Re: [PATCH v2 0/6] Raspberry Pi 4 PCIe support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andrew Murray <andrew.murray@arm.com>
Date: Tue, 19 Nov 2019 12:49:24 +0100
In-Reply-To: <20191119111848.GR43905@e119886-lin.cambridge.arm.com>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191119111848.GR43905@e119886-lin.cambridge.arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_034930_270027_BEB7957D 
X-CRM114-Status: GOOD (  17.02  )
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com,
 linux-rdma@vger.kernel.org, maz@kernel.org, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 mbrugger@suse.com, bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5576139104441258291=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5576139104441258291==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-K76aLLNKfyo+gQkABBwD"


--=-K76aLLNKfyo+gQkABBwD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-11-19 at 11:18 +0000, Andrew Murray wrote:
> On Tue, Nov 12, 2019 at 04:59:19PM +0100, Nicolas Saenz Julienne wrote:
> > This series aims at providing support for Raspberry Pi 4's PCIe
> > controller, which is also shared with the Broadcom STB family of
> > devices.
> >=20
> > There was a previous attempt to upstream this some years ago[1] but was
> > blocked as most STB PCIe integrations have a sparse DMA mapping[2] whic=
h
> > is something currently not supported by the kernel.  Luckily this is no=
t
> > the case for the Raspberry Pi 4.
> >=20
> > Note that the driver code is to be based on top of Rob Herring's series
> > simplifying inbound and outbound range parsing.
> >=20
> > [1] https://patchwork.kernel.org/cover/10605933/
> > [2] https://patchwork.kernel.org/patch/10605957/
> >=20
>=20
> What happened to patch 3? I can't see it on the list or in patchwork?

For some reason the script I use to call get_maintainer.sh or git send-mail
failed to add linux-pci@vger.kernel.org and linux-kernel@vger.kernel.org as
recipients. I didn't do anything different between v1 and v2 as far as mail=
ing
is concerned.

Nevertheless it's here: https://www.spinics.net/lists/arm-kernel/msg768461.=
html
and should be present in the linux-arm-kernel list.

I'll look in to it and make sure this doesn't happen in v3.

Regards,
Nicolas


--=-K76aLLNKfyo+gQkABBwD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3T1sQACgkQlfZmHno8
x/5oAAgAsirq9AHBWc9c3u37sxo0sduCFRqCFKOtWMxm0jb/DcUdD6rQy3N9/RIf
tK6vZvovGokMN5GHwwG6sDD7vSCeNimQSFZx7R36XMI5iYvITtmREMYLCwherVD0
W2hMdlOm1hzjt1sEGCz9BHxnMT3w56ZLabkmJWscUGVaPhArD7ISSUo3ksO5x7rh
KS1lbJX9wZLpegmk3gxXxAoHN3OWgDunznERQ07/dvrDALwf4CZkyQT+V/8nOZhr
OV64Rq+nMrhttDcMk2ufbrUsWn0Gt6zVbIXqJyitSJmAEb0If2zq2KGKK/88n2hf
GFsoFCTkw2RQ0cpZmMHvvkVumUTaPg==
=kHJj
-----END PGP SIGNATURE-----

--=-K76aLLNKfyo+gQkABBwD--



--===============5576139104441258291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5576139104441258291==--


