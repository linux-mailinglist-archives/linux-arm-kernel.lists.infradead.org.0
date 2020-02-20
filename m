Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63072166357
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:41:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=clJsE2ZC4VM8ebdyRFlLX2SEHL480QJ+QdgTTP3xTgA=; b=pUOqAC/HWKqHxTboWaLijDe64
	7hLdXfraLWrwAp8AcUQI9mvUQXR5Qn6t3gZC1TuY0y0B41bgK7nUjm3+ZxWbm0Y3Vwg5oOC+Phq/E
	8D8nhpRw3YGhuEO2dvmt8+YGEj8TYnuIZFqMp2WuMAWs4Z0PcqgOFFg0NSUdFPHgHWPrIS+79O+uO
	HE6iKnZr5N0f2RTEvfISkR0t5OVB2RDv2Szbl7T9qeBaNX35DcBAMnDavpCdPMDApCa0moeCXmKsR
	4ZnuwFo3he91+AzsMh7yA/fJ/gIUSV8nl1pHw4Z95/sn7n8++r+IMr1OuggHQdMAMVEMLfCgrjsGO
	bDpAUg9uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4otA-0007MB-8p; Thu, 20 Feb 2020 16:41:24 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ot1-0007Kx-67; Thu, 20 Feb 2020 16:41:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id DDBB7AFF7;
 Thu, 20 Feb 2020 16:41:11 +0000 (UTC)
Message-ID: <d8f1d9729c73ca0bdfafe13b3d57c16edec6f293.camel@suse.de>
Subject: Re: [PATCH v2 2/4] firmware: raspberrypi: Introduce vl805 init routine
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 bcm-kernel-feedback-list@broadcom.com
Date: Thu, 20 Feb 2020 17:41:08 +0100
In-Reply-To: <538b8ba7-e6d3-e8f2-0cc6-ce3485bc7848@gmail.com>
References: <20200219123933.2792-1-nsaenzjulienne@suse.de>
 <20200219123933.2792-3-nsaenzjulienne@suse.de>
 <538b8ba7-e6d3-e8f2-0cc6-ce3485bc7848@gmail.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_084115_371420_2C102200 
X-CRM114-Status: GOOD (  16.47  )
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
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============1106999820963932428=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1106999820963932428==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-9L+CAkWKlVlZC8VcHjhe"


--=-9L+CAkWKlVlZC8VcHjhe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-02-19 at 11:13 -0800, Florian Fainelli wrote:
> On 2/19/20 4:39 AM, Nicolas Saenz Julienne wrote:
> > On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either b=
e
> > loaded directly from an EEPROM or, if not present, by the SoC's
> > VideCore. The function informs VideCore that VL805 was just reset, or
> > requests for a probe defer.
> >=20
> > Based on Tim Gover's downstream implementation.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
>=20
> [snip]
>=20
>=20
> > diff --git a/include/soc/bcm2835/raspberrypi-firmware.h
> > b/include/soc/bcm2835/raspberrypi-firmware.h
> > index cc9cdbc66403..a37c3a461d2a 100644
> > --- a/include/soc/bcm2835/raspberrypi-firmware.h
> > +++ b/include/soc/bcm2835/raspberrypi-firmware.h
> > @@ -8,6 +8,7 @@
> > =20
> >  #include <linux/types.h>
> >  #include <linux/of_device.h>
> > +#include <linux/pci.h>
>=20
> I would move this inclusion where we need it, which is in
> drivers/firmware/raspberrypi.c and only provide a forward declaration
> here (avoids needless rebuilds).

Noted


--=-9L+CAkWKlVlZC8VcHjhe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5OtqQACgkQlfZmHno8
x/5/BQf/Q7Dm3FnyxJnB6OEt0XKSK9nzNb/iq0RrYo9FcRhaWHUkzfbR5o+SIcVP
vcd3a/3jKnNsczupJqC6NrBtAsAmxQnyxgUJ0QyZ39+0U7GOzBZ6mGZqf9zSNHQL
feOHiAdV/dg8mG/pSFp13f+nDbACArTdk5+w72u+goZtc8RzOC8OZA0eAXDS3YDD
D7nbAm4KsDleR/3yygc58it5DONAvPy0Zf/Afek+CtSqMvOCvZtyPEqQ7x6buJCb
UURCuwxRPRq165Ebja2eUhsJKou6t/eMzbiXK+ZfwaNDGsUDhKYcGp5JCkjGT+NO
LHEUOVY4+VPrliTKoP4Z2QGMDHm3Aw==
=6Ngk
-----END PGP SIGNATURE-----

--=-9L+CAkWKlVlZC8VcHjhe--



--===============1106999820963932428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1106999820963932428==--


