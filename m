Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C7E161CB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 22:19:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iOT+RI37E+X7x/phLSzWcHZFYpD2tus+S5fwfaTbPvg=; b=oe+hAPVHnbamUirVeXYyCpIkP
	22KSSMQrQRv7Cnnz1bhx1UYkEikwLzqoJsXwg0ZJJly/Zm9drT1dpca6iKLGldB64qgtuXmmNUOIh
	+XL7VBteeaSr2MaiEy7q7cr0bZq5CVImV0IrbAK4GxDY8eiHZMDiBCjjnaVF0qOrI/EizvukVkENi
	FV4PUsho5y2iyebQkncZ4zcsHT9FOEztqT9XnJzlL4D70EZsWwz01m3aZ2bX2qvrNvga4cTOsZb04
	bKbaIN2fg2oO1ny25yM8yT1hB8tIdoeC8rS/t84QdHObq/aTOYJ2+8W8pIzvHQY5ypgKVyu0HOU9Q
	ShFnj8Swg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3nng-0005GW-HY; Mon, 17 Feb 2020 21:19:32 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3nnZ-0005Fm-4F; Mon, 17 Feb 2020 21:19:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id CA941AD6C;
 Mon, 17 Feb 2020 21:19:22 +0000 (UTC)
Message-ID: <7bd53a3ee156037132e85415589168345461ad7c.camel@suse.de>
Subject: Re: [PATCH] usb: xhci-pci: Raspberry Pi FW loader for VIA VL805
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, Mathias Nyman
 <mathias.nyman@intel.com>, Ray Jui <rjui@broadcom.com>, Scott Branden
 <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com
Date: Mon, 17 Feb 2020 22:19:20 +0100
In-Reply-To: <185f8cae-9898-ee72-00f1-ec79d98c43f4@gmail.com>
References: <20200217100701.19949-1-nsaenzjulienne@suse.de>
 <185f8cae-9898-ee72-00f1-ec79d98c43f4@gmail.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_131925_315504_8D76E030 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-usb@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 oneukum@suse.com, linux-kernel@vger.kernel.org, tim.gover@raspberrypi.org,
 linux-rpi-kernel@lists.infradead.org, phil@raspberrypi.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0660732707422429755=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0660732707422429755==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-6v5SE9lBM19zZDAYXHDY"


--=-6v5SE9lBM19zZDAYXHDY
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-02-17 at 12:52 -0800, Florian Fainelli wrote:
>=20
> On 2/17/2020 2:07 AM, Nicolas Saenz Julienne wrote:
> > On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either b=
e
> > loaded directly from an EEPROM or, if not present, by the SoC's
> > VideCore.  Inform VideCore that VL805 was just reset, or defer xhci's
> > probe if not yet joinable trough the mailbox interface.
> >=20
> > Based on Tim Gover's downstream implementation.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>=20
> Would it work if you registered the firmware loading as pci fixup such
> that you would not even have to mangle xhci-pci.c at all and all the
> logic could be contained within drivers/firmware/raspberrypi.c?

Not that simple, PCI fix-ups don't allow for probe deferring. We depend on =
the
firmware and mailbox drivers to be up prior running this, so it's essential=
. We
could cheat and do the deferring first thing during pcie-brcmstb's probe.

Actually this might be a workable solution (as in upstreamable):
 - Wait for firmware to be up in pcie-brcmstb.c
 - Add firmware code in firmware/raspberrypi.c
 - Perform call in usb's quirk_usb_early_handoff() (usb/host/pci-quirks.c)

Regards,
Nicolas


--=-6v5SE9lBM19zZDAYXHDY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5LA1gACgkQlfZmHno8
x/7pOQf/Rc4PUoWjbSaEnRadMhclCH4wKP/YYX30qB8pP4LdbbBhlVyFrL1pYqsA
7SM/sYXSi77ZudG91Qdw0KZQO+8d8R/sC0AliG5qNe0qkc314TwqjAcu90kXkbEF
lvLFkocleihvGcVPjY9LEwk2bPqSY4ScYt/WhrfGIaqvqyJ/ISqliY6HFlbjJfjq
323xSs7Jp0SXjl8h2yOhL0kgV6HS/NTUbwUrW0lRXvZWjDyi0CM1uyxCgUy4EiRC
wsSutseZ95JKX8Sw78dLrE1H0qQel1cAIbZSNb6/lVOvFinq8lKhh+EJVHmAiwOl
7o2HJ9OsjY6Lb4mqgcvoPqFPVl5/tQ==
=bl1/
-----END PGP SIGNATURE-----

--=-6v5SE9lBM19zZDAYXHDY--



--===============0660732707422429755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0660732707422429755==--


