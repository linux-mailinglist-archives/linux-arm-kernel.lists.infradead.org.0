Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3C713C16D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:45:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CCX6bg5Xy+HWh4t/Zr9GKhb/FMOY88XC34SC3p2L8FU=; b=uuCJ5z5c7Lf3cReW0M5oTJkh1
	gsU19I21j1W383/LB3vJwpsAwnAtFyIvfNW/APj0EhFJTMrE4MiVy3W/ENeCuc7JjO+h7qjDTKCrF
	qcujb6Or99/YOxJgIvi1oBZ9FbX/UatPqf+52r1Ks2sFDqfxp1eegriAbrWmNAgJMw0Ex7tI/9pmU
	5973qyosk8k8mukVNLjCf9v1gCur+hGQyjeevLzUIzho20etI/d5uImQ9jRAvqm1UrohUgg5vbBXc
	LgIiDEB+pZObspZWrwbrQwH/B8jXyqLAnzt9CGtz/kz+zoEq++1ONnbdJCl1QuP7DvEm6pJQJWNV0
	PIhGM61mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iri3J-0001zz-4C; Wed, 15 Jan 2020 12:45:41 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iri36-0001xw-4I; Wed, 15 Jan 2020 12:45:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id BCDC4ADE7;
 Wed, 15 Jan 2020 12:45:25 +0000 (UTC)
Message-ID: <330ca207dcbcb41b9d094fb2606c45e4173fa8f6.camel@suse.de>
Subject: Re: [PATCH v5 0/6] Raspberry Pi 4 PCIe support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Date: Wed, 15 Jan 2020 13:45:23 +0100
In-Reply-To: <20200115120238.GA7233@e121166-lin.cambridge.arm.com>
References: <20191216110113.30436-1-nsaenzjulienne@suse.de>
 <20200115120238.GA7233@e121166-lin.cambridge.arm.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_044528_461538_079783B7 
X-CRM114-Status: GOOD (  25.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 mbrugger@suse.com, bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org, andrew.murray@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3766579883850043654=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3766579883850043654==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-F2otfZC9sOf6KTpP904O"


--=-F2otfZC9sOf6KTpP904O
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-01-15 at 12:02 +0000, Lorenzo Pieralisi wrote:
> On Mon, Dec 16, 2019 at 12:01:06PM +0100, Nicolas Saenz Julienne wrote:
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
> > Note the series is based on top of linux next, as the DTS patch depends
> > on it.
> >=20
> > [1] https://patchwork.kernel.org/cover/10605933/
> > [2] https://patchwork.kernel.org/patch/10605957/
> >=20
> > ---
> >=20
> > Changes since v4:
> >   - Rebase DTS patch
> >   - Respin log2.h code into it's own series as it's still contentious
> >     yet mostly unrelated to the PCIe part
> >=20
> > Changes since v3:
> >   - Moved all the log2.h related changes at the end of the series, as I
> >     presume they will be contentious and I don't want the PCIe patches
> >     to depend on them. Ultimately I think I'll respin them on their own
> >     series but wanted to keep them in for this submission just for the
> >     sake of continuity.
> >   - Addressed small nits here and there.
> >=20
> > Changes since v2:
> >   - Redo register access in driver avoiding indirection while keeping
> >     the naming intact
> >   - Add patch editing ARM64's config
> >   - Last MSI cleanups, notably removing MSIX flag
> >   - Got rid of all _RB writes
> >   - Got rid of all of_data
> >   - Overall churn removal
> >   - Address the rest of Andrew's comments
> >=20
> > Changes since v1:
> >   - add generic rounddown/roundup_pow_two64() patch
> >   - Add MAINTAINERS patch
> >   - Fix Kconfig
> >   - Cleanup probe, use up to date APIs, exit on MSI failure
> >   - Get rid of linux,pci-domain and other unused constructs
> >   - Use edge triggered setup for MSI
> >   - Cleanup MSI implementation
> >   - Fix multiple cosmetic issues
> >   - Remove supend/resume code
> >=20
> > Jim Quinlan (3):
> >   dt-bindings: PCI: Add bindings for brcmstb's PCIe device
> >   PCI: brcmstb: Add Broadcom STB PCIe host controller driver
> >   PCI: brcmstb: Add MSI support
> >=20
> > Nicolas Saenz Julienne (3):
> >   ARM: dts: bcm2711: Enable PCIe controller
> >   MAINTAINERS: Add brcmstb PCIe controller
> >   arm64: defconfig: Enable Broadcom's STB PCIe controller
> >=20
> >  .../bindings/pci/brcm,stb-pcie.yaml           |   97 ++
> >  MAINTAINERS                                   |    4 +
> >  arch/arm/boot/dts/bcm2711.dtsi                |   31 +-
> >  arch/arm64/configs/defconfig                  |    1 +
> >  drivers/pci/controller/Kconfig                |    9 +
> >  drivers/pci/controller/Makefile               |    1 +
> >  drivers/pci/controller/pcie-brcmstb.c         | 1007 +++++++++++++++++
> >  7 files changed, 1149 insertions(+), 1 deletion(-)
> >  create mode 100644 Documentation/devicetree/bindings/pci/brcm,stb-pcie=
.yaml
> >  create mode 100644 drivers/pci/controller/pcie-brcmstb.c
>=20
> Applied patches [1,3,4] to pci/brcmstb, please have a look to check
> everything is in order after the minor update I included.

Looks good to me.

Thanks,
Nicolas


--=-F2otfZC9sOf6KTpP904O
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4fCWMACgkQlfZmHno8
x/7eNAf9E5M7dM+K4pFouDMsP1SzO9yIUBi8WCbONKVbOsyQ6p7LQBY4Kzj3sLoL
NB1VQMbdAD9+0ZxluUkMeuOxdiJU2CPHdEh8efJuyGzr3qMr4w8raGvUsOnAOzy9
zBgwz3k6phZZwcVHV+N/tNGQYbhHud7N09NHLLDZKN1GLYd3ezgoE72apUFKYvHi
7D7nByGSTSI6mhnQoRR243ct0usUQG4HHsB7ddDTno5sCNd9ViLPPtFna2bA9x6w
B/7ahcSzHd1z3MamuEyNYNgZ173kYI4pZmovxkWX/Nm+qAbJioQK/hmaCwsBl+jQ
8fAZVXVrBG8TYkR/zbChpgjg/RM3Tw==
=lFyM
-----END PGP SIGNATURE-----

--=-F2otfZC9sOf6KTpP904O--



--===============3766579883850043654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3766579883850043654==--


