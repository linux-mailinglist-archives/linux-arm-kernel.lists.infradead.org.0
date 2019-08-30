Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB08A3CF7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 19:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MKzWDf88zzsK0OXtqlepnkX/z5nTbWALV+9s6ftV+F8=; b=Yd9MBh08cGE5arLMefv+LoBRt
	fuPaV9VQZZbkhTI0+zvncmAVsLbQKsRmmC5zGPJPvANzjWqbcfXPLsn7B0iyjkUNbvBGtYcivQ2LU
	1qv5OKVmCJJE6tDomTpCCxQLbJj2bs8dNEJBLEFBIWnSWmN9hY43Ptua2QhEUf/zV23V5IdO18Du0
	RSELbNd6eVaJppT3NVd11ehdqXr9z7ML+MMreIIGiyvgv9IyVszbg77jeCmn3IEnRfnnptYFpI8gZ
	P50NkzvIV06tHHGsIkAspDxv3v8jMY3DhsLlQzn9sHrNyMQI8bJvVqHfPl7pLFdMBUW/GvYryGMG9
	ilWvCaEyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3kdp-0003yt-6o; Fri, 30 Aug 2019 17:24:54 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3kdU-0003xe-Jg; Fri, 30 Aug 2019 17:24:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5DC6FAEAE;
 Fri, 30 Aug 2019 17:24:28 +0000 (UTC)
Message-ID: <bdeda2206b751a1c6a8d2e0732186792282633c6.camel@suse.de>
Subject: Re: [PATCH v2 01/11] asm-generic: add dma_zone_size
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Catalin Marinas <catalin.marinas@arm.com>, Christoph Hellwig <hch@lst.de>
Date: Fri, 30 Aug 2019 19:24:25 +0200
In-Reply-To: <20190830144536.GJ36992@arrakis.emea.arm.com>
References: <20190820145821.27214-1-nsaenzjulienne@suse.de>
 <20190820145821.27214-2-nsaenzjulienne@suse.de>
 <20190826070939.GD11331@lst.de>
 <027272c27398b950f207101a2c5dbc07a30a36bc.camel@suse.de>
 <20190830144536.GJ36992@arrakis.emea.arm.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_102432_942819_540B0750 
X-CRM114-Status: GOOD (  17.96  )
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
Cc: linux-arch@vger.kernel.org, devicetree@vger.kernel.org,
 f.fainelli@gmail.com, phill@raspberryi.org, Arnd Bergmann <arnd@arndb.de>,
 mbrugger@suse.com, marc.zyngier@arm.com, frowand.list@gmail.com,
 wahrenst@gmx.net, eric@anholt.net, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 linux-rpi-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 linux-riscv@lists.infradead.org, will@kernel.org, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============9020645332619028054=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9020645332619028054==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-VseoIlC7OSxnfDPpE7cN"


--=-VseoIlC7OSxnfDPpE7cN
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-08-30 at 15:45 +0100, Catalin Marinas wrote:
> On Mon, Aug 26, 2019 at 03:46:52PM +0200, Nicolas Saenz Julienne wrote:
> > On Mon, 2019-08-26 at 09:09 +0200, Christoph Hellwig wrote:
> > > On Tue, Aug 20, 2019 at 04:58:09PM +0200, Nicolas Saenz Julienne wrot=
e:
> > > > Some architectures have platform specific DMA addressing limitation=
s.
> > > > This will allow for hardware description code to provide the constr=
aints
> > > > in a generic manner, so as for arch code to properly setup it's mem=
ory
> > > > zones and DMA mask.
> > >=20
> > > I know this just spreads the arm code, but I still kinda hate it.
> >=20
> > Rob's main concern was finding a way to pass the constraint from HW
> > definition
> > to arch without widening fdt's architecture specific function surface. =
I'd
> > say
> > it's fair to argue that having a generic mechanism makes sense as it'll=
 now
> > traverse multiple archs and subsystems.
> >=20
> > I get adding globals like this is not very appealing, yet I went with i=
t as
> > it
> > was the easier to integrate with arm's code. Any alternative suggestion=
s?
>=20
> In some discussion with Robin, since it's just RPi4 that we are aware of
> having such requirement on arm64, he suggested that we have a permanent
> ZONE_DMA on arm64 with a default size of 1GB. It should cover all arm64
> SoCs we know of without breaking the single Image binary. The arch/arm
> can use its current mach-* support.
>=20
> I may like this more than the proposed early_init_dt_get_dma_zone_size()
> here which checks for specific SoCs (my preferred way was to build the
> mask from all buses described in DT but I hadn't realised the
> complications).

Hi Catalin, thanks for giving it a thought.

I'll be happy to implement it that way. I agree it's a good compromise.

@Christoph, do you still want the patch where I create 'zone_dma_bits'? Wit=
h a
hardcoded ZONE_DMA it's not absolutely necessary. Though I remember you sai=
d it
was a first step towards being able to initialize dma-direct's min_mask in
meminit.

Regards,
Nicolas


--=-VseoIlC7OSxnfDPpE7cN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl1pW8kACgkQlfZmHno8
x/4ltggAgcfG1puKlA5IJJrCySlntixj950TwNq7qMwwKwzxVCTojg/6HtjhOmlp
IRbqq36DEjcQ12ulD0rqU84gMIP6jryt4iVDDutg18liBPSH3eekj9Wf22J+Vq7f
5yw3zuYyCkrTcgWufsIwn4kbH0GRXCCLV8kwfKFRtXE5dtcWTRbOeNPpmh4HxIJW
z0SkTnBc03CvX0VamQYNZ45QvBFVntqKMCExrvinZyOBUs4+/nd68IXfBU+rj9qb
IBbZaZspKLp1NdVxSo/Tmamv2NVTodxnue9KbFzQe8r3n1bak/9VJKO4z3u0R6AK
6x6oAxLccyXIktLiudLXEMdXMar2vw==
=LsVM
-----END PGP SIGNATURE-----

--=-VseoIlC7OSxnfDPpE7cN--



--===============9020645332619028054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9020645332619028054==--


