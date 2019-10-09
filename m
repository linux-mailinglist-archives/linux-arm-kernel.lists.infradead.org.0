Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A53CD125D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 17:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AxtF12DiOnSDFKiF8kNXg+0E3uv+lPkYzCGVhjK6siY=; b=DjyNIKqwAHLwJlqn3Pp79cOzs
	/UfNyQvb+F1CW2Vnz1+QPh/aT56Lk+KXq0BHrtYMASWQCi4l35gb9kcSwx+fuFWD01dvFPnKy0Mzy
	FM2otLhrtlqEH+TWuNm0R/95S4v+beEpNqVGYBbMAvCGtT9IE7Gqq8Ik4lTB9+SIkwSHEVmK8TH4+
	gnUDtydUHIi6ok4c223YEbEFMYgSIOxpBjCmSCb8vwEtrF+BQ8E5/vxTn/svo4ipNHDmKwemSHTcU
	7YTL2tPSV9L93XXINrzeyVQOJSsHK7huHz8KUra3q2cU9HKKwGy4TtFx/estgwfEHZFgb8SO1Bju/
	EYDI5B+7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDq7-00014W-Sp; Wed, 09 Oct 2019 15:25:23 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIDpy-00013r-GC
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 15:25:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 52561AD07;
 Wed,  9 Oct 2019 15:25:12 +0000 (UTC)
Message-ID: <930cb2d2d47e2785711bab59d80e8ad188bd882d.camel@suse.de>
Subject: Re: [PATCH v2] of: Make of_dma_get_range() work on bus nodes
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh@kernel.org>
Date: Wed, 09 Oct 2019 17:24:33 +0200
In-Reply-To: <CAL_Jsq+RjC0b1ZXzgmMdn5Gd1=3zkN62Jdq_QKeZ8-X4pCiDPw@mail.gmail.com>
References: <20191008195239.12852-1-robh@kernel.org>
 <4f6b26f8779a4fd98712b966bff3491dc31e26c2.camel@suse.de>
 <CAL_Jsq+RjC0b1ZXzgmMdn5Gd1=3zkN62Jdq_QKeZ8-X4pCiDPw@mail.gmail.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_082514_831386_FC0FABE3 
X-CRM114-Status: GOOD (  24.78  )
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Frank Rowand <frowand.list@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms+renesas@verge.net.au>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============9062448781200282478=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9062448781200282478==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-gkzPvU3MSN8O+PY+3B0Z"


--=-gkzPvU3MSN8O+PY+3B0Z
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-10-08 at 20:03 -0500, Rob Herring wrote:
> On Tue, Oct 8, 2019 at 3:52 PM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > Hi Rob/Robin,
> >=20
> > On Tue, 2019-10-08 at 14:52 -0500, Rob Herring wrote:
> > > From: Robin Murphy <robin.murphy@arm.com>
> > >=20
> > > Since the "dma-ranges" property is only valid for a node representing=
 a
> > > bus, of_dma_get_range() currently assumes the node passed in is a lea=
f
> > > representing a device, and starts the walk from its parent. In cases
> > > like PCI host controllers on typical FDT systems, however, where the =
PCI
> > > endpoints are probed dynamically the initial leaf node represents the
> > > 'bus' itself, and this logic means we fail to consider any "dma-range=
s"
> > > describing the host bridge itself. Rework the logic such that
> > > of_dma_get_range() also works correctly starting from a bus node
> > > containing "dma-ranges".
> > >=20
> > > While this does mean "dma-ranges" could incorrectly be in a device le=
af
> > > node, there isn't really any way in this function to ensure that a le=
af
> > > node is or isn't a bus node.
> >=20
> > Sorry, I'm not totally sure if this is what you're pointing out with th=
e
> > last
> > sentence. But, what about the case of a bus configuring a device which =
also
> > happens to be a memory mapped bus (say a PCI platform device). It'll ge=
t
> > it's
> > dma config based on its own dma-ranges which is not what we want.
>=20
> What I was trying to say is we just can't tell if we should be looking
> in the current node or the parent. 'dma-ranges' in a leaf node can be
> correct or incorrect.
>=20
> Your example is a bit different. I'm not sure that case is valid or
> can ever work if it is. It's certainly valid that a PCI bridge's
> parent has dma-ranges and now we'll actually handle any translation.
> The bridge itself is not a DMA-capable device, but just passing thru
> DMA.

Yes, you're right, I hadn't thought of it from that perspective. Thanks!

> Do we ever need to know the parent's dma-ranges in that case? Or
> to put it another way, is looking at anything other than leaf
> dma-ranges useful?

There is no need at all indeed.

With that,

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

and

Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

On a Raspberry Pi 4 with pcie-brcmstb.c which is still work in progress but
depends on this.

Regards,
Nicolas


--=-gkzPvU3MSN8O+PY+3B0Z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2d+7EACgkQlfZmHno8
x/6Ougf/Vf8gS9pV6sHacKH3tBVDLky7gMGKrkyw4QWRDU3aKrGLrWgJg+5xuKcC
fzVafJIYqaU3FkYrBVWO7NRS8juguj17xOcSplJal0y1yHuu8hbTt3E8GUh5ut26
GZsicybI8VcxF0JEhyHAV6foKA2ZsYkPxG93XsnR7FobzIgTI84KxTlNnrZs5Ejt
zjgjxaR1yrcT5YamAIRKy/DpmfHx3Hpf7jMsHZFKqTmSbNlyUBevpH2ok9B45+ec
rtSa6TmEQyRrklJuXEJV4Yg1NccFffrQm3sD8AxSw+1P1nfNzVLm0NVcJjchKp11
RawTR+PF/Z4eXnNVywKxieHo/Js+yg==
=KQ2V
-----END PGP SIGNATURE-----

--=-gkzPvU3MSN8O+PY+3B0Z--



--===============9062448781200282478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9062448781200282478==--


