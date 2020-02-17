Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 181E3161BC8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 20:39:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=arMjP9g/dYwtJkaT/d4iVr6rW+CeNiz4zLDQsRi/C2Y=; b=KoC7l64VKtK5TWE8p1MHXi92+
	J9tpHxzE4cHfomvtSPRyuS03eb1FCtFAZ1fmqRbdC0S2KrduAo9klqV6AMmGiGwlxO4+7z6p27XUZ
	ZtZznskjv7SoUk2MX1la5pk8NunDFRE4LYWSVq74MheSeP2yt+yd7LaxCBIVYcOqUsIie1yI3pzsn
	jaK4wCzAtHWihHrsncn1Wy37HNze+P5TnopI2tw7xL7DVv5Uf3ZpA6LDm31e39njbLImlOCnJcDPV
	iv4WlquYvsdXqmTt7ax7cwPq6s8k5guJsQ7VcyEFOQZxbhxoa+Mf2L6LA++lv5jg8I6TpI4v4dffs
	jG2iQSMIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3mEm-0001T3-Pj; Mon, 17 Feb 2020 19:39:24 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3mEe-0001Rv-Bz; Mon, 17 Feb 2020 19:39:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D108CAC53;
 Mon, 17 Feb 2020 19:39:08 +0000 (UTC)
Message-ID: <8b50c93b2556413ce2736e18e939f1b376bf48c7.camel@suse.de>
Subject: Re: [PATCH] usb: xhci-pci: Raspberry Pi FW loader for VIA VL805
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Mathias Nyman
 <mathias.nyman@intel.com>, Florian Fainelli <f.fainelli@gmail.com>, Ray Jui
 <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 bcm-kernel-feedback-list@broadcom.com
Date: Mon, 17 Feb 2020 20:39:06 +0100
In-Reply-To: <bf77d351-ca8c-d9fd-e5ea-71441ac00ab3@i2se.com>
References: <20200217100701.19949-1-nsaenzjulienne@suse.de>
 <bf77d351-ca8c-d9fd-e5ea-71441ac00ab3@i2se.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_113916_557220_4066C979 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: tim.gover@raspberrypi.org, oneukum@suse.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 phil@raspberrypi.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1426310270108997794=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1426310270108997794==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-ogkfL5d9U8ZLHgULSlCK"


--=-ogkfL5d9U8ZLHgULSlCK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-02-17 at 18:47 +0100, Stefan Wahren wrote:
> > +
> > +	dev_addr =3D pdev->bus->number << 20 | PCI_SLOT(pdev->devfn) << 15 |
> > +		   PCI_FUNC(pdev->devfn) << 12;
> > +
> > +	ret =3D rpi_firmware_property(fw, RPI_FIRMWARE_NOTIFY_XHCI_RESET,
> > +				    &dev_addr, sizeof(dev_addr));
> > +	if (ret)
> > +		return ret;
> not sure, but there could be a corner case which should be handled
> differently. In case the Raspberry Pi 4 has an EEPROM for the VL805
> firmware but the firmware is too old to handle
> RPI_FIRMWARE_NOTIFY_XHCI_RESET, we should return with 0. I don't know
> there is a change to detect this reliable. I just want to mention this.

Ouch, good point, that can be problematic. I'll test that scenario tomorrow=
.

> > diff --git a/include/soc/bcm2835/raspberrypi-firmware.h
> > b/include/soc/bcm2835/raspberrypi-firmware.h
> > index 7800e12ee042..cc9cdbc66403 100644
> > --- a/include/soc/bcm2835/raspberrypi-firmware.h
> > +++ b/include/soc/bcm2835/raspberrypi-firmware.h
> > @@ -90,7 +90,7 @@ enum rpi_firmware_property_tag {
> >  	RPI_FIRMWARE_SET_PERIPH_REG =3D                         0x00038045,
> >  	RPI_FIRMWARE_GET_POE_HAT_VAL =3D                        0x00030049,
> >  	RPI_FIRMWARE_SET_POE_HAT_VAL =3D                        0x00030050,
> > -
> > +	RPI_FIRMWARE_NOTIFY_XHCI_RESET =3D                      0x00030058,
>=20
> In past we updated the firmware mailbox property interface in a bunch as
> a separate patch. So we can avoid those gaps.

Ok, I'll change that.

Regards,
Nicolas


--=-ogkfL5d9U8ZLHgULSlCK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5K69oACgkQlfZmHno8
x/564ggAnRR3cI7WWFgxYpBmwwEU6WnQinv4UaaIe0w5g4vjvt8UjgnypPpwGlBI
qqVXlFsvzR1pXNyTDZcjdzkqmYekgCaR4+0ONPYL+ofhQ3SeYg/FwsVgkWTcE0SQ
FmiQRIDZk9qYF1UV5ABz0dPTvD3nBjNEN5+1s2Ti6hjSIb3OIVH/DgsxSUIQfvaK
iL1+4ikVfvckbDrBG/PnCsCfxoiTfQWMC/QoUZROSsO4NVBFojLwyK0nDA+O9k8R
6N/1OMUoJOCzjW27KZ3vUuKf2Vc3pu4UgfPXEY4oeWpAF+5055DHaJBrYDQopEzE
0sJWKha2D5TpFR9/StcAUyp2secwOw==
=+vmi
-----END PGP SIGNATURE-----

--=-ogkfL5d9U8ZLHgULSlCK--



--===============1426310270108997794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1426310270108997794==--


