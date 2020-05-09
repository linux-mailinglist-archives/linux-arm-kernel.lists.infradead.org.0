Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAC41CC414
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 21:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ph1Sj3cy9jhRvViTwsLV7pdWN4OtMv0+TZw8xVqD068=; b=YyV35Mf4IikguIP5ABWStKukw
	lfhpZnE0It9Wvw1KzdNSBVCD4Hyvzuvo3J4Cik09g6ZSC1pKVWB2FxsL9s3C9bKjBZMsLjhju6KiB
	RO4DKmf4xXk3fbNUBC4B1kU25TUNmpoHqm9znvsNAoY8lazxwVOmQVrdiRaMPqt/sIjk7r8TrfuZF
	pHKxCiYRpWRE2c8wXSkqYZS1EvLNZ1EkjP1YJBob+MpgKjOh509788/HRDyw8Pv1xSXFbBxDq/IjA
	k3aUsKt2PWsXM0GfIAG5ZFh/MFGZdxxUA9DnJNMHIv/Afl+aPNULViuMPf4CIbPXPVoca3/K1zR46
	KPrWd/rfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXV1d-0002Zo-RO; Sat, 09 May 2020 19:20:41 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXV1V-0002Yc-4c; Sat, 09 May 2020 19:20:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C5D12AB99;
 Sat,  9 May 2020 19:20:29 +0000 (UTC)
Message-ID: <cae7a4e19281fa3a7a0f89bd7812212c8e2e829f.camel@suse.de>
Subject: Re: [PATCH v8 2/4] firmware: raspberrypi: Introduce vl805 init routine
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>
Date: Sat, 09 May 2020 21:20:24 +0200
In-Reply-To: <c9449111-f646-3925-36e6-f4492ad5f90a@gmx.net>
References: <20200505161318.26200-1-nsaenzjulienne@suse.de>
 <20200505161318.26200-3-nsaenzjulienne@suse.de>
 <20200507214859.GA562@bogus> <c9449111-f646-3925-36e6-f4492ad5f90a@gmx.net>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_122033_480738_BE6B44E1 
X-CRM114-Status: GOOD (  24.95  )
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
Cc: Rob Herring <robh@kernel.org>, f.fainelli@gmail.com,
 Scott Branden <sbranden@broadcom.com>, gregkh@linuxfoundation.org,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, tim.gover@raspberrypi.org, helgaas@kernel.org,
 linux-rpi-kernel@lists.infradead.org, Ray Jui <rjui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8786942128737951457=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8786942128737951457==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-NYv+jnSD7ETBXidQR5XT"


--=-NYv+jnSD7ETBXidQR5XT
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2020-05-09 at 12:02 +0200, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> Am 07.05.20 um 23:48 schrieb Rob Herring:
> > On Tue,  5 May 2020 18:13:15 +0200, Nicolas Saenz Julienne wrote:
> > > The Raspberry Pi 4 gets its USB functionality from VL805, a PCIe chip
> > > that implements xHCI. After a PCI reset, VL805's firmware may either =
be
> > > loaded directly from an EEPROM or, if not present, by the SoC's
> > > co-processor, VideoCore. RPi4's VideoCore OS contains both the non pu=
blic
> > > firmware load logic and the VL805 firmware blob. The function this pa=
tch
> > > introduces triggers the aforementioned process.
> > >=20
> > > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > >=20
> > > ---
> > >=20
> > > Change since v7:
> > > - Use usleep_delay()
> > > - Add comment about PCI errors
> > > - Don't wait on error
> > > - Typos
> > >=20
> > > Change since v6:
> > > - Add test to avoid loading the firmware when not needed
> > > - Since we have it around, print VL805's firmware version, it'll make
> > > debugging easier in the future
> > > - Correct typos
> > > - Add a clearer view of HW topology in patch description
> > >=20
> > > Changes since v4:
> > > - Inline function definition when RASPBERRYPI_FIRMWARE is not defined
> > >=20
> > > Changes since v1:
> > > - Move include into .c file and add forward declaration to .h
> > >=20
> > >  drivers/firmware/raspberrypi.c             | 61 ++++++++++++++++++++=
++
> > >  include/soc/bcm2835/raspberrypi-firmware.h |  7 +++
> > >  2 files changed, 68 insertions(+)
> > >=20
> > Reviewed-by: Rob Herring <robh@kernel.org>
>=20
> i modified the code a little bit for testing, but also successfully
> tested it without my modifications:
>=20
> diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberryp=
i.c
> index 0d1422b..f3f4c2d 100644
> --- a/drivers/firmware/raspberrypi.c
> +++ b/drivers/firmware/raspberrypi.c
> @@ -337,8 +337,10 @@ int rpi_firmware_init_vl805(struct pci_dev *pdev)
>          * further down the line.
>          */
>         pci_read_config_dword(pdev, VL805_PCI_CONFIG_VERSION_OFFSET,
> &version);
> -       if (version)
> -               goto exit;
> +       if (version) {
> +               pci_info(pdev, "VL805 EEPROM firmware version %08x\n",
> version);
> +               return 0;
> +       }
> =20
>         dev_addr =3D pdev->bus->number << 20 | PCI_SLOT(pdev->devfn) << 1=
5 |
>                    PCI_FUNC(pdev->devfn) << 12;
> @@ -353,9 +355,8 @@ int rpi_firmware_init_vl805(struct pci_dev *pdev)
> =20
>         pci_read_config_dword(pdev, VL805_PCI_CONFIG_VERSION_OFFSET,
>                               &version);
> -exit:
> -       pci_info(pdev, "VL805 firmware version %08x\n", version);
> =20
> +       pci_info(pdev, "VL805 RAM firmware version %08x\n", version);
>         return 0;
>  }
>  EXPORT_SYMBOL_GPL(rpi_firmware_init_vl805);
>=20
> Here are the my results with 3x Raspberry Pi 4:
>=20
> VL805 EEPROM firmware version 000137ad
> VL805 EEPROM firmware version 00013701
> VL805 RAM firmware version 000137ad
>=20
> So the whole patch series is:
>=20
> Tested-by: Stefan Wahren <stefan.wahren@i2se.com>

Thanks for taking the time!

Regards,
Nicolas


--=-NYv+jnSD7ETBXidQR5XT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl63AngACgkQlfZmHno8
x/5TSAf7BczpOl3QIubfrvp77qkSKnOA+Vb+zg5XlulurMIug2l+pqDVUw0G/+Gp
uwxEH4O0JxRg83lzCVFnP3Occ7dH5q5GA2yzBpcgVYvRLmlXw7NECJ1CqfAuB56S
YDSBEQk1Pm4fcAIufJCJ8hH25TxuMXoK+2qEq2WYY7x9RY3FiarvCFw+XV4ayX4n
s4rf/5spkVR3L1t6fMxmD6TQaGBwc6Ww2VFDTwJSTMjqxgU7iNHmjypv7XxaLuYl
MkvpDgAyxuxI0R/MblN/rdNO2Fd2LCAQi5rU3VvEfcrrq6fm5YIt5sxnHzAOMfvK
aIuwkpFCcR+EWHlJ7pQ4+dYrITgvPg==
=iV4L
-----END PGP SIGNATURE-----

--=-NYv+jnSD7ETBXidQR5XT--



--===============8786942128737951457==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8786942128737951457==--


