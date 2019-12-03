Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436D51101D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 17:07:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=//FsZqW1eKXAXatTIioTc8IHp3RtuMllIv7t0p+Mjmc=; b=ahqocluxXHmJkSIIjB9ArIByM
	RmQRPVdKUeXXjMM+eIxcimVPkDpe1svtVTw3/UZLUhI3ujxspISX0PeWrmTGh8jXKFh7Li7q6BN6V
	c377GHzlDYVqn9MUbBjQlLAg19aD8jVrN0pKgvIyQx1eC0mw7PviI447OqYP1ENASwT5XakoOmNxk
	xr4y90ALTRvLgsDYriQKh/9KWJFdiDPqAOylADuIlVofs4GdmWAohwcVGmxCY8GYuK+SYn8xO7Vsu
	Pwqk75upxVXfLtWy8LhvdLqtOkOhAL+GRRSGX4Lnb47F/bsUXEYxlSw0P+uUsjf+2IWjUD2BoEJIB
	7HU7bZW1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icAha-0008En-8x; Tue, 03 Dec 2019 16:07:02 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icAhN-0008D8-R6; Tue, 03 Dec 2019 16:06:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AD9186A2F7;
 Tue,  3 Dec 2019 16:06:47 +0000 (UTC)
Message-ID: <d1c87c83f38e74f0c6b0692248fe88dfd2bdec3e.camel@suse.de>
Subject: Re: [PATCH v4 8/8] linux/log2.h: Use roundup/dow_pow_two() on 64bit
 calculations
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh+dt@kernel.org>
Date: Tue, 03 Dec 2019 17:06:43 +0100
In-Reply-To: <CAL_JsqLMCXdnZag3jihV_dzuR+wFaVKFb7q_PdKTxTg0LVA6cw@mail.gmail.com>
References: <20191203114743.1294-1-nsaenzjulienne@suse.de>
 <20191203114743.1294-9-nsaenzjulienne@suse.de>
 <CAL_JsqLMCXdnZag3jihV_dzuR+wFaVKFb7q_PdKTxTg0LVA6cw@mail.gmail.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_080652_002580_030767FC 
X-CRM114-Status: GOOD (  12.19  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Eric Anholt <eric@anholt.net>,
 Hanjun Guo <guohanjun@huawei.com>, Frank Rowand <frowand.list@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-rdma@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Phil Elwell <phil@raspberrypi.org>, linux-acpi@vger.kernel.org,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Len Brown <lenb@kernel.org>,
 devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:BROADCOM BCM2835 ARM
 ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <mbrugger@suse.com>, netdev <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Stefan Wahren <wahrenst@gmx.net>, james.quinlan@broadcom.com,
 Sudeep Holla <sudeep.holla@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, "David S. Miller" <davem@davemloft.net>,
 Tariq Toukan <tariqt@mellanox.com>
Content-Type: multipart/mixed; boundary="===============1521433035471612154=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1521433035471612154==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-VHC+bPmpbRjqhnK2ykxw"


--=-VHC+bPmpbRjqhnK2ykxw
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Tue, 2019-12-03 at 09:53 -0600, Rob Herring wrote:
> On Tue, Dec 3, 2019 at 5:48 AM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > The function now is safe to use while expecting a 64bit value. Use it
> > where relevant.
>=20
> What was wrong with the existing code? This is missing some context.

You're right, I'll update it.

For most of files changed the benefit here is factoring out a common patter=
n
using the standard function roundup/down_pow_two() which now provides corre=
ct
64bit results.

As for of/device.c and arm64/iort.c it's more of a readability enhancement.=
 I
consider it's easier to understand than the current calculation as it abstr=
acts
the math.

> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >  drivers/acpi/arm64/iort.c                        | 2 +-
> >  drivers/net/ethernet/mellanox/mlx4/en_clock.c    | 3 ++-
> >  drivers/of/device.c                              | 3 ++-
>=20
> In any case,
>=20
> Acked-by: Rob Herring <robh@kernel.org>
>=20

Thanks!

Regards,
Nicolas


--=-VHC+bPmpbRjqhnK2ykxw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3miBMACgkQlfZmHno8
x/5s+Af/a2icSd66GHrsABoMtUfJXpQclSae81ThRP5Bfx6+mK4Ty4en3T+IxOK+
NPmneod0gjSfyqqQniFbEcmlKAd8wXyUnBCCi6urRvuqOWcw65h10DA3fQCivaOt
NWn3FRWMlPZbBIAYr/XOcsdOOkbD+VaFE/PaBYmxU/rWaCLGMWpYYBhF/Vcm+ASd
VPQ4g8AfxyGvQW9EgbmRTMC0k7kMP6qrpmgIjNWvUPyJ+8ytD2Zly2xvbVf9TqhX
/PP/t19fWayTqhsg+B04K0aN0oriRqSFX44yvCOApKhLBSsF6Nyc40m2sreqKMYY
98kwrOrux/Fb3OeV/Wzdhhh8VhH+Sg==
=4wmf
-----END PGP SIGNATURE-----

--=-VHC+bPmpbRjqhnK2ykxw--



--===============1521433035471612154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1521433035471612154==--


