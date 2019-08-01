Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F20897DF4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:45:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dHeUSHK3Rk1uwBxxk4ysRKoK6bYY80xSjmaQ13+cjbs=; b=O23Yi5Cf7i1BS+Jua6MdNaO6R
	+yeYucg0k/ZKWCPchzcfILjOGbw0BsfK/jihRj8EChBZJ8aaiblWIB0iLrGqKWyzvYHHbbW0HwG1Q
	Czs3k2ZU/iRgrR/p6skS2Pg6VVbYhsWGM+HzYH0w5MsQCPSj5P7gHex+SD+llmZSytDz5V/JGipj4
	jBCmaR/7voZleHMBWm9xJdvwL4wLaO5H7XHlqrKzv4UXviBPy8VCgO9dcDPxkBvaMVZlg4WZuTy+C
	x8bMXHP2G0EiqF1AYbGCPXS7eFD062vGZDlCLlS6zcRrRTg+A+M8Igq2J1y9m2TTKmZomoFKM/YXY
	Byq3rAD+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDGG-0003Xd-0H; Thu, 01 Aug 2019 15:45:00 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htDG8-0003W8-40; Thu, 01 Aug 2019 15:44:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 222CDAC9A;
 Thu,  1 Aug 2019 15:44:50 +0000 (UTC)
Message-ID: <d8b4a7cb9c06824ca88a0602a5bf38b6324b43c0.camel@suse.de>
Subject: Re: [PATCH 5/8] arm64: use ZONE_DMA on DMA addressing limited devices
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Catalin Marinas <catalin.marinas@arm.com>
Date: Thu, 01 Aug 2019 17:44:09 +0200
In-Reply-To: <20190731170742.GC17773@arrakis.emea.arm.com>
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
 <20190731154752.16557-6-nsaenzjulienne@suse.de>
 <20190731170742.GC17773@arrakis.emea.arm.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_084452_310381_5311C291 
X-CRM114-Status: GOOD (  14.81  )
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
Cc: phill@raspberryi.org, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 linux-mm@kvack.org, marc.zyngier@arm.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 linux-rpi-kernel@lists.infradead.org, mbrugger@suse.com,
 Robin Murphy <robin.murphy@arm.com>, akpm@linux-foundation.org,
 m.szyprowski@samsung.com, frowand.list@gmail.com, hch@lst.de,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============4430640618888223044=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4430640618888223044==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Jl/nDcfVAied7u8Yssfo"


--=-Jl/nDcfVAied7u8Yssfo
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-07-31 at 18:07 +0100, Catalin Marinas wrote:
> On Wed, Jul 31, 2019 at 05:47:48PM +0200, Nicolas Saenz Julienne wrote:
> > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > index 1c4ffabbe1cb..f5279ef85756 100644
> > --- a/arch/arm64/mm/init.c
> > +++ b/arch/arm64/mm/init.c
> > @@ -50,6 +50,13 @@
> >  s64 memstart_addr __ro_after_init =3D -1;
> >  EXPORT_SYMBOL(memstart_addr);
> > =20
> > +/*
> > + * We might create both a ZONE_DMA and ZONE_DMA32. ZONE_DMA is needed =
if
> > there
> > + * are periferals unable to address the first naturally aligned 4GB of=
 ram.
> > + * ZONE_DMA32 will be expanded to cover the rest of that memory. If su=
ch
> > + * limitations doesn't exist only ZONE_DMA32 is created.
> > + */
>=20
> Shouldn't we instead only create ZONE_DMA to cover the whole 32-bit
> range and leave ZONE_DMA32 empty? Can__GFP_DMA allocations fall back
> onto ZONE_DMA32?

Hi Catalin, thanks for the review.

You're right, the GFP_DMA page allocation will fail with a nasty dmesg erro=
r if
ZONE_DMA is configured but empty. Unsurprisingly the opposite situation is =
fine
(GFP_DMA32 with an empty ZONE_DMA32).

I switched to the scheme you're suggesting for the next version of the seri=
es.
The comment will be something the likes of this:

/*
 * We create both a ZONE_DMA and ZONE_DMA32. ZONE_DMA's size is decided bas=
ed
 * on whether the SoC's peripherals are able to address the first naturally
 * aligned 4 GB of ram.
 *
 * If limited, ZONE_DMA covers that area and ZONE_DMA32 the rest of that 32=
 bit
 * addressable memory.
 *
 * If not ZONE_DMA is expanded to cover the whole 32 bit addressable memory=
 and
 * ZONE_DMA32 is left empty.
 */

 Regards,
 Nicolas



--=-Jl/nDcfVAied7u8Yssfo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl1DCMkACgkQlfZmHno8
x/724wgAlBvY4KUvCY6AbQ4IkNYytX+x49CEh/vxpdWWXLjrWRTBCg2SwWhZ4y9G
OjuuZe9BBgQBgnZBR0lC8MlCFN7w4Ce5aByypx2pzGLefZKqc4pesvda/gC8Jmo8
csbQ988GLPt6V35DcX3N81FjYrdsZGCcJ1XrtpUVlx6YfIPLx4ZRc/6OfV3yXXBc
XiD/luxNVqjDtvy7RnR2so9hSWet0hM4Wv5TDwI+xt1RviR4Tpdd+jNqtjxH+LcV
2uruy3yUhTGeNaiyZsPt/Bj1Mlg+Wab940ahUDn3a1KBkd4BkFZIoqfjQxBgLaal
iZB+n9PmIhCkaHygfxOy1H+xVYO/AA==
=Opde
-----END PGP SIGNATURE-----

--=-Jl/nDcfVAied7u8Yssfo--



--===============4430640618888223044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4430640618888223044==--


