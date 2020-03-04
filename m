Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7F9178F8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 12:26:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OodlSF4/ruVBWhSNlN6rap4hg09w9lQTxNpzmpmMfa4=; b=RlA5XF3spHlXXJYCqyEs9KJqB
	J+wDolzbsAByptEmKYR01r2erXf6qQd7HnqKoW8Y3856HsixLTBBIleFlrlWThDj5V+wi1RHDm7oD
	+OS5YKnLEMt5kzWrd2BkqYAq09lKBrv+HYZ98cbRpwvmtGf5yHtHwOlcNQRJk0NRnjKR/9tk8AnHt
	Sgn24tefHe65MGF523AA0PwRDvKmcgyBBJSfBoSdaaq8q7ED9tBPCgSidnTIKGh+RZxk+8lKWJt3T
	ILflH7EAR5exoCcLbPDr+hq+rj6rB5qO7fvQId5lnAJhlaCFBIyagEdf19kruraOAAlnh4rftq4wi
	SP2sx5ISA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9S9v-00009F-9k; Wed, 04 Mar 2020 11:25:51 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9S9o-00008A-FH; Wed, 04 Mar 2020 11:25:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 01303AC77;
 Wed,  4 Mar 2020 11:25:40 +0000 (UTC)
Message-ID: <720dd2a49b6efea353367effe25c29ebb4c9aa23.camel@suse.de>
Subject: Re: [PATCH v3 4/4] USB: pci-quirks: Add Raspberry Pi 4 quirk
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Greg KH <gregkh@linuxfoundation.org>
Date: Wed, 04 Mar 2020 12:25:39 +0100
In-Reply-To: <20200304090555.GC1429273@kroah.com>
References: <20200302155528.19505-1-nsaenzjulienne@suse.de>
 <20200302155528.19505-5-nsaenzjulienne@suse.de>
 <20200304090555.GC1429273@kroah.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_032544_657884_D7BECD84 
X-CRM114-Status: GOOD (  14.40  )
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
Cc: tim.gover@raspberrypi.org, Mathias Nyman <mathias.nyman@intel.com>,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============3741018227925255623=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3741018227925255623==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-P5OQO7Po4GtPGRWMR0Yz"


--=-P5OQO7Po4GtPGRWMR0Yz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-03-04 at 10:05 +0100, Greg KH wrote:
> On Mon, Mar 02, 2020 at 04:55:28PM +0100, Nicolas Saenz Julienne wrote:
> > @@ -1243,11 +1246,26 @@ static void quirk_usb_handoff_xhci(struct pci_d=
ev
> > *pdev)
> > =20
> >  static void quirk_usb_early_handoff(struct pci_dev *pdev)
> >  {
> > +	int ret;
> > +
> >  	/* Skip Netlogic mips SoC's internal PCI USB controller.
> >  	 * This device does not need/support EHCI/OHCI handoff
> >  	 */
> >  	if (pdev->vendor =3D=3D 0x184e)	/* vendor Netlogic */
> >  		return;
> > +
> > +	if (pdev->vendor =3D=3D PCI_VENDOR_ID_VIA && pdev->device =3D=3D 0x34=
83) {
> > +		ret =3D rpi_firmware_init_vl805(pdev);
> > +		if (ret)
> > +			/*
> > +			 * Firmware might be outdated, or else, something
> > +			 * failed, keep going and hope for the best.
> > +			 */
> > +			dev_warn(&pdev->dev,
> > +				 "Failed to load VL805's firmware: %d\n",
> > +				 ret);
>=20
> {} please.
>=20
> Also, you might want to provide a better warning, something like:
> 	"Failed to load VL805's firmware, will continue to attempt to
> 	work, but bad things might happen, you should fix this..."
>=20
> or something to give people a chance to know what to do here.

Noted

Thanks,
Nicolas


--=-P5OQO7Po4GtPGRWMR0Yz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5fkDMACgkQlfZmHno8
x/7MtAf8CcxhF9NY9+Rz70jvj0WDqPx3fSwK9zhR2dRTvjZnvANlYSMO5C+3TMDs
93AzERTD0PYCma+vaOy0dWKyfDNixuWdYTD88a5Z5Z9dbu0NhViE+x1CtE9lVVlp
6eqFpj+3oR9QiB4bsoRECcsfzGhVGrTOIQhNjkIxghDwDTrN7gjFzZy/d1VGToFU
/SLh8F2KMjErxbE4x1MkDHiaXJr8OD9la8SfQ5w4Yi/YgMJhpp+2kin0A2p85JMf
HB3uIDMVrqkTT57Ayk6qTbJocMKd7r0sX7X2rdUEtoI/jkX1uaAhETlVDJv43MM2
a9oF+6wL2C8gTCegxH5BSpp5ittxBA==
=sAjn
-----END PGP SIGNATURE-----

--=-P5OQO7Po4GtPGRWMR0Yz--



--===============3741018227925255623==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3741018227925255623==--


