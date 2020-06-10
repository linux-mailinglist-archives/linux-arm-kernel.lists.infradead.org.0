Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF531F5875
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 17:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xVv7yk18pBmv3qNogTryNsYGCc4NbxU3p5RNxnwr2+s=; b=gmB4YjxkQvy11+CGMLaQqfuRx
	2FbvjRBnCTD4ngikfEtp1R3/RnG3QwOB8/jxKZPboX2pmnQl9WcNUO49skH51S++ODjZ9YiTLeVSX
	lBTA6+loJHxnyu3rGU1MVmuCOs6l4B2Q9oQyKJiJU2yeqY86Nn2qHwBbDvnDHNcGPHCYFlpd0G6Mv
	ASeTD75nVZdfaiZ8c0b9OTZMwEM7/qRnqVmwV+8DHPW7DdXcXOqJnW6Vl1+hwjBrEdyogGvaEHvo0
	JVQy8l0Jpl5v/vuHermqytu6BShBVg5d5MmYIUSiKS6HXq9JKhOZK1GqJxgiubMFEC3n2NGciZ440
	jjoGo/YZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj36Q-0004wq-Ge; Wed, 10 Jun 2020 15:57:22 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj36I-0004vt-7n; Wed, 10 Jun 2020 15:57:15 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0ACD7AD0D;
 Wed, 10 Jun 2020 15:57:16 +0000 (UTC)
Message-ID: <07cdfbbacb0f48e3671f4c7197a1ea58d99845e1.camel@suse.de>
Subject: Re: [PATCH v2 7/9] usb: host: pci-quirks: Bypass xHCI quirks for
 Raspberry Pi 4
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 10 Jun 2020 17:57:10 +0200
In-Reply-To: <CAHp75VcxjpMYgQV+Mv2_A6gT+qkG_Kihe4Ke+avJ6e6UNdZCnA@mail.gmail.com>
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
 <20200609175003.19793-8-nsaenzjulienne@suse.de>
 <CAHp75VcxjpMYgQV+Mv2_A6gT+qkG_Kihe4Ke+avJ6e6UNdZCnA@mail.gmail.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_085714_418991_5F0DC99A 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Mathias Nyman <mathias.nyman@linux.intel.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 tim.gover@raspberrypi.org,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1807603787013106226=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1807603787013106226==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-WmpqyWN/a5eP/Qxbeom/"


--=-WmpqyWN/a5eP/Qxbeom/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andy,
Thanks for the review.

On Tue, 2020-06-09 at 21:43 +0300, Andy Shevchenko wrote:
> On Tue, Jun 9, 2020 at 8:50 PM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > The board doesn't need the quirks to be run, and takes care of its own
> > initialization trough a reset controller device. So let's bypass them.
>=20
> through

Noted

> ...
>=20
> > +       if (pdev->vendor =3D=3D PCI_VENDOR_ID_VIA && pdev->device =3D=
=3D 0x3483 &&
> > +           of_device_is_compatible(of_get_parent(pdev->bus->dev.of_nod=
e),
> > +                                   "brcm,bcm2711-pcie"))
> > +               return;
>=20
> No put?

Missed that, sorry.

Regards,
Nicolas


--=-WmpqyWN/a5eP/Qxbeom/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7hAtYACgkQlfZmHno8
x/6pWQf/YjKJWkjl0Ry3wqgSqq6nMS36oLTSH/79Hi6/YsHTATPPaFZVfYKGHySy
dMxtJVZ+/SUqUHcRJrl6st0RcuPMrs6y76YD/JFuDjzUTOMUcaVme2biY/nDWEEA
1ToKs4Ia2m7bounaSimqF0w9oCjKOegt0sFWLKSCK4EGLwsSOZ2LWbSP3ctfWS1Z
hw6QmkXus2BIZwI/QkTIZ86PK2SujUFKAkiVJFdfyYcbwNCZpWy2iK8s7pffLyyR
t15gNXP8ocI2PVnm/DlN/HtlbQfWwB7HjeQp3FI92pNLh/KaRP8+hEhuqasynyLf
nnR5NeCeENrzGhC4sE28IAlygd+kvw==
=UAUo
-----END PGP SIGNATURE-----

--=-WmpqyWN/a5eP/Qxbeom/--



--===============1807603787013106226==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1807603787013106226==--


