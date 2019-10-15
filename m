Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96D4D7714
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 15:07:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rKQaeAmfREL6pFjO+5nx9z7OUu1Z11yiBKkO2PmHUYs=; b=niRV+isnt273Z4f1VtFRfpzQc
	VGKDEPuTJqx5GQBfNJPEHCgabQgJHOQ9dSQhWFz9bcR+fvsFwWY6QsA0XM7aKtsR4IPsJbEKlWukH
	WdKyC/ZKOISxh3EvwBbGZxyy5Vk1OalYuvWweRGsM9TuwhFr+9cOowfPUvASh+UMdNXhCKhXZ1Y3s
	ZZLIbFe4hkdtB1hkHhxUak1hq0ICAxFaOZ/gUL8BUyVRerx9somoI3XGTeoRBGanEw/LD5Ks405NS
	LNhaWAvvCW2Wlqya0jWQWAyaDQLwDLisXVInYDY2nNDAiilQGih78mQPpGvczM2XokWz1qZl3CZx0
	pkOVT801g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKMXy-0001Bd-2Y; Tue, 15 Oct 2019 13:07:30 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKMXo-0001AU-21; Tue, 15 Oct 2019 13:07:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D5344B300;
 Tue, 15 Oct 2019 13:07:12 +0000 (UTC)
Message-ID: <d57feba7e3956136a5d77cebbbf2807c2950d6df.camel@suse.de>
Subject: Re: [PATCH RFC 4/5] dma/direct: check for overflows in ARM's
 dma_capable()
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Christoph Hellwig <hch@infradead.org>
Date: Tue, 15 Oct 2019 15:07:08 +0200
In-Reply-To: <20191015102346.GA9071@infradead.org>
References: <20191014183108.24804-1-nsaenzjulienne@suse.de>
 <20191014183108.24804-5-nsaenzjulienne@suse.de>
 <20191015102346.GA9071@infradead.org>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_060720_389674_8B4C3F1D 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: f.fainelli@gmail.com, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, iommu@lists.linux-foundation.org,
 mbrugger@suse.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============3001416789493559718=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3001416789493559718==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-QilbOjg9rL1IFStaY+t4"


--=-QilbOjg9rL1IFStaY+t4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-10-15 at 03:23 -0700, Christoph Hellwig wrote:
> On Mon, Oct 14, 2019 at 08:31:06PM +0200, Nicolas Saenz Julienne wrote:
> > The Raspberry Pi 4 has a 1GB ZONE_DMA area starting at address
> > 0x00000000 and a mapping between physical and DMA memory offset by
> > 0xc0000000.  It transpires that, on non LPAE systems, any attempt to
> > translate physical addresses outside of ZONE_DMA will result in an
> > overflow. The resulting DMA addresses will not be detected by arm's
> > dma_capable() as they still fit in the device's DMA mask.
> >=20
> > Fix this by failing to validate a DMA address smaller than the lowest
> > possible DMA address.
>=20
> I think the main problem here is that arm doesn't respect the
> bus_dma_mask.  If you replace the arm version of dma_capable with
> the generic one, does that fi the issue for you as well?

Yeah, that was my fist thought too, but it doesn't help.

So with RPi4's DMA mapping:

soc {
	dma-ranges =3D <0xc0000000  0x0 0x00000000  0x3c000000>;
	[...]
};

You'll get a 32bit bus dma map (log2i(0xc0000000 + 0x3c000000) + 1 =3D 32).

Trouble is, taking into account arm's multi_v7_defconfig uses 32bit address=
es,
most phys_to_dma() translations are likely to overflow. For example phys
0x60000000 will be translated to DMA 0x20000000, which is no good.

No mask is going to catch this, and both dma_capable() implementations will
fail.

> We need to untangle the various macros arm uses for the direct mapping
> and eventually we should be able to use the linux/dma-direct.h helpers
> directly.  Here is a branch with some simple preps I had.  Freshly
> rebased, not actually tested:
>=20
>=20
http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/arm-generic=
-dma-preps

Noted, looks good to me.

Actually, an alternative to this patch would be to kill all custom
dma_capable() implementations, which are mostly redundant, and add these ex=
tra
checks conditional to the DMA address size in the generic version. I'll try=
 to
respin this if I manage to understand what's going on with x86/sta211-fixup=
.c.


--=-QilbOjg9rL1IFStaY+t4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2lxHwACgkQlfZmHno8
x/5Qcgf9EYUZQRbilIK5s8eKqWcMhlpK7Df2P6SPXLkx+Vmkt2iYDyTfPLwB0Avl
I9aSjwDP/vRSkR7DgiKGQkh2PtdHWFDUoCerdQnJb69v+DiObndKo5Zd0XCtbYx+
+gPtyf43YhEGosmXi6aTI7pEh7HBYqu8ORrFJrdWaff3K5LJ8p4Phkkckup0NjHH
Ddq96VamoZdnKmA171GZ6HNgUdYn8cOjUBA5DLOWK5LAX2rAd1g6bNCgs/GcUL4l
sjoBu3utxJ9O9oe5reVU2XYfmX65xZqHqd1KkwN51Qo/w483+Hn0eSEclTVqT3hm
8tkxAlJWOPwPdLB8706dF6mwsGp2Lw==
=CUJl
-----END PGP SIGNATURE-----

--=-QilbOjg9rL1IFStaY+t4--



--===============3001416789493559718==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3001416789493559718==--


