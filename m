Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C36810EA06
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 13:22:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pi3k8CzX8EMUniq8va1r9Sm57cI47kjG/VfooVWZPWI=; b=iFUT4K+LKfkVXZQCswZPR41xv
	3rfznaXcGjTWUeVQxaOjK4vz3myROk9YDD0qlPVlO2TVkXD1++sffNV/vJf9ZNxdkDXbyoHDLjWMU
	Q4onPExL/a22D5SRckoDM9EJvjlQFRHe7k8CmiwGH4YGwPK38HBwH2UXj7JLvhCfGXIYDiViazOEu
	8Cgz62lBWdndDhLd7GRp7lQwgM7tysbdFIKAF62zRuUSdVxJZoJk9YG835KwYQwXU1whtrHsT0LTP
	ZPifBbRaSm4/3LAIPmn/w6tCCdyV8ToB3MaSgwiP5IYoG9wqsNQX4bTLgqxZy1tKU3qwqXKbsfdU5
	ohxd9BLHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibkib-0006ru-6l; Mon, 02 Dec 2019 12:22:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibkiU-0006rP-Da; Mon, 02 Dec 2019 12:22:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 57ED8B3A9;
 Mon,  2 Dec 2019 12:22:12 +0000 (UTC)
Message-ID: <c63647bb1b13cc05c9cecdd7f25e497ab9416e4f.camel@suse.de>
Subject: Re: [PATCH v3 5/7] PCI: brcmstb: add MSI capability
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andrew Murray <andrew.murray@arm.com>
Date: Mon, 02 Dec 2019 13:22:09 +0100
In-Reply-To: <20191202122050.GA18399@e119886-lin.cambridge.arm.com>
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-6-nsaenzjulienne@suse.de>
 <20191129154629.GF43905@e119886-lin.cambridge.arm.com>
 <2820f3fb9abc69d54df0dee1b6233eaf3cb63834.camel@suse.de>
 <20191202122050.GA18399@e119886-lin.cambridge.arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_042214_747091_CBAEE8E4 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 Eric Anholt <eric@anholt.net>, mbrugger@suse.com,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4227757875292256375=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4227757875292256375==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-NzVbf7bNfje0MokF6jK8"


--=-NzVbf7bNfje0MokF6jK8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-12-02 at 12:20 +0000, Andrew Murray wrote:
> On Mon, Dec 02, 2019 at 10:59:36AM +0100, Nicolas Saenz Julienne wrote:
> > Hi Andrew,
> >=20
> > On Fri, 2019-11-29 at 15:46 +0000, Andrew Murray wrote:
> > > On Tue, Nov 26, 2019 at 10:19:43AM +0100, Nicolas Saenz Julienne wrot=
e:
> > > > From: Jim Quinlan <james.quinlan@broadcom.com>
> > > >=20
> > > > This adds MSI support to the Broadcom STB PCIe host controller. The=
 MSI
> > > > controller is physically located within the PCIe block, however, th=
ere
> > > > is no reason why the MSI controller could not be moved elsewhere in=
 the
> > > > future. MSIX is not supported by the HW.
> > > >=20
> > > > Since the internal Brcmstb MSI controller is intertwined with the P=
CIe
> > > > controller, it is not its own platform device but rather part of th=
e
> > > > PCIe platform device.
> > > >=20
> > > > Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> > > > Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > > Reviewed-by: Marc Zyngier <maz@kernel.org>
> > > >=20
> > > > ---
> > > >=20
> > > > Changes since v2 (kept Marc's Reviewed-by as changes didn't affect =
irq
> > > > subsystem stuff or seem petty enough):
> > > >   - Use standard APIs on register operations
> > > >   - Get rid of revision code
> > >=20
> > > Do any RPI4's have a HW revision of less than 33?
> >=20
> > No, IIRC it's actually revision 34. I had left that bit of code in,
> > following
> > the same train of thought as with the of_data on the device-tree part o=
f the
> > driver: "It's harmless and should make accomodating other devices easie=
r."
> > It
> > turned out not to be such a great approach. Lesson's learned. So I deci=
ded
> > to
> > remove it.
>=20
> OK you can add my:
>=20
> Reviewed-by: Andrew Murray <andrew.murray@arm.com>
>=20
> Thanks,
>=20
> Andrew Murray

Thanks!


--=-NzVbf7bNfje0MokF6jK8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3lAfEACgkQlfZmHno8
x/7l3wf+KA81gHEGBFGfNHE8rju8uZ8OgP4N968EIm5vkR4PT4s7PdSjcrGBzcjg
25Vb581Thmdr/qOfPARI3DHCsAa03D6+/mugzFho54yTbHagqr5tV2iHHvkTcnFx
l0/j2eJ5s4FMW6G4cmvkuJNUz8ZTX98V4e9bWiwAhAXKQG3cTAZntmc1/mhqcvme
ba7YOMykf1auwSWtE12VIOCb80iFBF8PfWMW5KBQ3jqQ/0n2+r4Ov5qYRrBYj3b/
suKogbQcADjTRSf84HH57xGDBTTb6hpSm5NDyHMAa7+82kP4JdhKdwJo+brTQ0/X
JE7JgkxNISdvCaNJmtpscdI/FI6f7g==
=TEyC
-----END PGP SIGNATURE-----

--=-NzVbf7bNfje0MokF6jK8--



--===============4227757875292256375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4227757875292256375==--


