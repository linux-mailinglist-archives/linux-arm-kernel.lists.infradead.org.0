Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1EB1DE2C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 11:17:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8/Oq+mGTmaQx3hig8M+SlYj8QZUohVs4Xu/9LVtuaT8=; b=k/V9GUUNc1Y7kXNDBDQjnoPTe
	YnMrfgfQ7kCqAE4DFYrxEv1IWNOm4iUVGsptO0nXyZ3dJhl1Ftt0MEKSO7MMYBxX3OrxwT+7SitpZ
	A1Hqi/VhN3/wuu32mKfc7SkVzyPOJBgn9oNteA8bDewvX9wagUb/tRkIpRpPlymdLjPqkk6YE0djh
	KUWyurxyKbM0DTKANKw8/eXShv2gj28w+mMb0Adv0UYnkFbjQqsgsWPMNPPLbG64bM4QWEYnxlser
	8UcSrAt94REOyCKL5O7HoB2k9/mf8R9pPX/EgTNuy0Rzb4xz4Yoo5T8ITrQk8M8r1I/Opj1JSDYii
	2SVQFTwDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc3o0-0008Jf-7M; Fri, 22 May 2020 09:17:28 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc3np-0008IE-FD; Fri, 22 May 2020 09:17:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 4597EB215F;
 Fri, 22 May 2020 09:17:14 +0000 (UTC)
Message-ID: <75a1dd87d18103f1e8b0afbd1e0718c74c4a77d4.camel@suse.de>
Subject: Re: [PATCH 04/15] PCI: brcmstb: Add compatibily of other chips
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jim Quinlan <james.quinlan@broadcom.com>
Date: Fri, 22 May 2020 11:17:08 +0200
In-Reply-To: <CA+-6iNyqtFguHJ=sB=nKoghX6PR9ve5OuyafPw88mfSmhe+c8Q@mail.gmail.com>
References: <20200519203419.12369-1-james.quinlan@broadcom.com>
 <20200519203419.12369-5-james.quinlan@broadcom.com>
 <5a52e39ce99214877e83104b8ea9f95c0d5b4e90.camel@suse.de>
 <CA+-6iNyqtFguHJ=sB=nKoghX6PR9ve5OuyafPw88mfSmhe+c8Q@mail.gmail.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_021717_654167_59C78AEE 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:PCI NATIVE HOST BRIDGE
 AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, "moderated list:BROADCOM
 BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7885263094276008737=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7885263094276008737==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-IGhRx3S6S3ntSbJkcWLj"


--=-IGhRx3S6S3ntSbJkcWLj
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-05-21 at 15:35 -0400, Jim Quinlan wrote:
> On Wed, May 20, 2020 at 7:51 AM Nicolas Saenz Julienne

[...]

> > >  /*
> > > @@ -602,20 +667,21 @@ static struct pci_ops brcm_pcie_ops =3D {
> > >=20
> > >  static inline void brcm_pcie_bridge_sw_init_set(struct brcm_pcie *pc=
ie,
> > > u32
> > > val)
> > >  {
> > > -     u32 tmp;
> > > +     u32 tmp, mask =3D  pcie->reg_field_info[RGR1_SW_INIT_1_INIT_MAS=
K];
> > > +     u32 shift =3D pcie->reg_field_info[RGR1_SW_INIT_1_INIT_SHIFT];
> >=20
> > I don't think you need shift here, IIUC u32p_replace_bits() will take c=
are
> > of
> > all the masking and shifting internally, moreover, you'd be able to dro=
p the
> > shift entry from reg_field_info.
> I believe that u32p_replace_bits requires at least one of the value or
> mask to be compile time constants to work and we don't have that here.

Of course, sorry for the noise then.

Regards,
Nicolas


--=-IGhRx3S6S3ntSbJkcWLj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7HmJQACgkQlfZmHno8
x/70WAf+JoTHq0ZhGNKW8bxgqcUyLEW3dAtHwfItO+wAuflXC/o+CEKjpSFs2+j0
pG6Vatt7V46ZMMUgZb3clhJxgd2VQ/rJYIRPr8l9E7OplbhGdbmjXMD1CyD4y+j7
vyGxrliBdi63YKcBdLGwXjuzDG3kn2b35qWONfBb6j5n8N0tfQPUKNbJcw0VxVFB
0vC0MCEDYxGCWrW0jifLamw1U5OYZTN59aX7BW/9+csiXoWGLdwu8TmO1G3GAUf9
7hA1B8n9ReG8le34eQbsufe/qRrQuGwaBvjbYkMkOML2N8GL1tNDkglGA7OlAL+h
pDvQnKJkJltAZ5+bOP4gaILPBLVVzQ==
=eV6J
-----END PGP SIGNATURE-----

--=-IGhRx3S6S3ntSbJkcWLj--



--===============7885263094276008737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7885263094276008737==--


