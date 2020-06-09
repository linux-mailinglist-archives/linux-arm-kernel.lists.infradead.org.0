Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB5A1F3947
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eJmWoIBgCEJ8ycnZrijWUNhPHGia4Q1P9NIJo98QC0E=; b=m11pOUjGS3eiamhiUBxVL/hRx
	sTwp6ZpbASDUR/UIU3gRNPNQPPx0k5GOmBjUxbi2mzGUIXCy+lLANhvnpHcb1BrovyzBKzp7Z/bhn
	M9WUgnSv5aLKxrMi7nBYDKnTLwshXgrzgrAQR6aZj34kIh96qzhBYZZkcYxQVf3bcfGF87qhtgRdA
	vK9b60XvVZn0bfj+DcjJKzDB3/HDcILRHOyom59yojvd4aO1tsVnDdR3p46VTWuaiF/KrKZTDltFk
	A4J/dGbSDJ72wkfITf0LmJobv9GkMLmA3krOtGr5EN+qMz2Ayn+Lgkgme+g5dB2ukdAvRVVY+fQMD
	Yb6JJ3hag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicDB-0003fd-Bo; Tue, 09 Jun 2020 11:14:33 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicD0-0003eQ-M6; Tue, 09 Jun 2020 11:14:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1D01AABCE;
 Tue,  9 Jun 2020 11:14:23 +0000 (UTC)
Message-ID: <2cee4af79f5f599eb1a6c1f6f0ece504eb111799.camel@suse.de>
Subject: Re: [PATCH 1/9] dt-bindings: reset: Add a binding for the RPi
 Firmware USB reset
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, gregkh@linuxfoundation.org, 
 wahrenst@gmx.net, robh@kernel.org, mathias.nyman@linux.intel.com, Eric
 Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org,  Ray Jui <rjui@broadcom.com>, Scott Branden
 <sbranden@broadcom.com>
Date: Tue, 09 Jun 2020 13:14:17 +0200
In-Reply-To: <ffc9ec9e-bd1c-a8dd-8a68-a15bf95c919b@gmail.com>
References: <20200608192701.18355-1-nsaenzjulienne@suse.de>
 <20200608192701.18355-2-nsaenzjulienne@suse.de>
 <ffc9ec9e-bd1c-a8dd-8a68-a15bf95c919b@gmail.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_041422_870709_0E20D2D8 
X-CRM114-Status: GOOD (  19.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: lorenzo.pieralisi@arm.com, tim.gover@raspberrypi.org, helgaas@kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Content-Type: multipart/mixed; boundary="===============2300514167308049198=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2300514167308049198==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-frycM163Ry/rWh+gs2/d"


--=-frycM163Ry/rWh+gs2/d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-06-08 at 12:58 -0700, Florian Fainelli wrote:
>=20
> On 6/8/2020 12:26 PM, Nicolas Saenz Julienne wrote:
> > The firmware running on the RPi VideoCore can be used to reset and
> > initialize the board's xHCI controller. The reset controller is passed
> > to the PCI device through the DT, hence this binding.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >  .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 21 +++++++++++++++++++
> >  1 file changed, 21 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2=
835-
> > firmware.yaml
> > b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-
> > firmware.yaml
> > index b48ed875eb8e..8f9d0986c28f 100644
> > --- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-
> > firmware.yaml
> > +++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-
> > firmware.yaml
> > @@ -39,6 +39,22 @@ properties:
> >        - compatible
> >        - "#clock-cells"
> > =20
> > +  usb-reset:
> > +    type: object
> > +
> > +    properties:
> > +      compatible:
> > +        const: raspberrypi,firmware-usb-reset
>=20
> I would make this less USB centric, even if this is the only consumer of
> the reset controller for now, there could, in premise be other blocks
> that require a reset (e.g.: V3D) that would involve going to the VPU
> firmware because of various requirements (security, register blocking etc=
.).

I like the idea, I'll introduce this in v2.

> > +
> > +      "#clock-cells":
>=20
> Did not you mean #reset-cells here?
>=20

Sorry I missed that.

Regards,
Nicolas


--=-frycM163Ry/rWh+gs2/d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7fbwkACgkQlfZmHno8
x/4Fjwf/dpmZ6iwo1Evmz4GIdKPmASwHY2EwMJw9mBAU8Nx/FHwm7WSfpJ+LkMU5
/2Qw5BvO882IZAxiCyz8tN3yigapEK8EyuawgZRZtT2hBqnlGhfs4TEgEhkub1Mo
LdYOs9YFYQZ9kLeZO21TnBi/aqlRYj5cKKaxcZKgtPsGxrJJ37DgUmLYm06Q3llm
lmGUMIdGKm7Gfcgc0BLac7AF2EY7vreHtCaBB6e1Dg8BOqLAT9776fbLJmmqR+zY
2u6xZ7BL6W4i4wv1WJcJOdTC0R5fhB833Ko+XOKWNARY3iqZVBCU+Xk6A5s4vNDH
s76WnK0O5nGoaF1JTbtRf31QUEbKVg==
=hu0w
-----END PGP SIGNATURE-----

--=-frycM163Ry/rWh+gs2/d--



--===============2300514167308049198==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2300514167308049198==--


