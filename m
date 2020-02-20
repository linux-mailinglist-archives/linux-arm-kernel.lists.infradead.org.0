Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B2F1665F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 19:14:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2fvSpg/mL43iKMOB2rYsQYDIa4RX982FHV5JuBEDqAk=; b=Dnigumqi4IWz0/4gn/e6+dfaO
	Pnf7fmJbkVhFYyRsdePvIZRB/4FezCXYEfgbKcWfyVany10ZFyEtvt6RW2N+PnxPTjEtDBhEG91P3
	2nJkdoERUdj6jJLNZ1Ptuv1QBnud8qoFVPf1g9llVgK2NMZ3H8y/jbzM+wEQf0m1ooqKM9igYv4iL
	x7XAuLaeK+dNzPpkWtE3LqgWqz5osypBMxjdNDLCNDR7gkRcA96bk0kQZb48Tf89VtH+Z3Cdf3gUy
	pTc6cxqn10Ll/BjwmCNodg72yA7YrYbr6tiAzm739JI5DV7vhRLvaNeci0/uilv2lMWd0LXIDOmLc
	UUYUeihGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4qLK-0000HP-Ry; Thu, 20 Feb 2020 18:14:34 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4qLC-0000Ge-2n; Thu, 20 Feb 2020 18:14:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 13AACAC16;
 Thu, 20 Feb 2020 18:14:23 +0000 (UTC)
Message-ID: <cab8c0d70fd30c49579199d002b81b87ed34a920.camel@suse.de>
Subject: Re: [PATCH v2 3/4] PCI: brcmstb: Wait for Raspberry Pi's firmware
 when present
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <florian.fainelli@broadcom.com>, 
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>, 
 bcm-kernel-feedback-list@broadcom.com, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Andrew Murray <amurray@thegoodpenguin.co.uk>
Date: Thu, 20 Feb 2020 19:14:20 +0100
In-Reply-To: <10a53db8-960e-eea7-1e8d-790de9a79e71@broadcom.com>
References: <20200219123933.2792-1-nsaenzjulienne@suse.de>
 <20200219123933.2792-4-nsaenzjulienne@suse.de>
 <10a53db8-960e-eea7-1e8d-790de9a79e71@broadcom.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_101426_266818_EB9EDC49 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: tim.gover@raspberrypi.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============5572862504974660042=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5572862504974660042==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-RsrYh3XIvQNMFLjrdUpB"


--=-RsrYh3XIvQNMFLjrdUpB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-02-19 at 11:21 -0800, Florian Fainelli wrote:
> On 2/19/20 4:39 AM, Nicolas Saenz Julienne wrote:
> > xHCI's PCI fixup, run at the end of pcie-brcmstb's probe, depends on
> > RPi4's VideoCore firmware interface to be up and running. It's possible
> > for both initializations to race, so make sure it's available prior
> > starting.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>=20
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
>=20
> It does not look like there is something making sure that
> CONFIG_RASPBERRYPI_FIRMWARE is being selected or depended on, should we
> have a "default XHCI_PCI" added to drivers/firmware/Kconfig?

I think having that would enable the firmware interface for all XHCI_PCI us=
ers,
which isn't ideal. The firmware call has stubs for the case the firmware
interace isn't compiled, so no problem there. Ultimately we want to enable
CONFIG_RASPBERRYPI_FIRMWARE only when the built image targets the RPi4
(reglardless of being arm64/arm32). But I don't think that's feasible.

Regards,
Nicolas


--=-RsrYh3XIvQNMFLjrdUpB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5OzHwACgkQlfZmHno8
x/7JXggAp1+xWNqaL/5ExpM/n9Su+Z/6pLAFYSYbVlKAzipGxgOD4a9FH3jJ8p4J
mACCkp+9psxkkQfoNW4s+edRXTKEJ8rH/Zv1tRJ3CpViHb8b95XW3zO6xWb2BLln
Y+Q8VVvplVzQxci+Qo6oQki1hgvwm2lvTcbnD6w3yu0U3LUKKDzkZHQLVUtvXU9m
thco7iOswNEq9FshjSLyrUdeZvtuYjx3zHNO5tFz7+Zo226CTPe9teoUjBMmlppv
iLDJwBPAmT1QJNjDCP+ziduGh2IH14Wmf5IMofn7p9wnxCvvlL4CfZp9+QLtI2UH
A7w2lxIPiOh0ERYep91DEHD/Jy3Hcw==
=mdiV
-----END PGP SIGNATURE-----

--=-RsrYh3XIvQNMFLjrdUpB--



--===============5572862504974660042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5572862504974660042==--


