Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B2F6CD40
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 13:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B+cgqUSGrtEe75jUZa+Ztfy7i4vjB6X6q057Y+XWM+g=; b=GBSZldPkC+Gha/350rPkxwXsU
	yWweEqB/I1QGkp51Fs6fys/nNhsURbggKLwpMF3WPtR1K9/+KaUaI78GBaUD/bwqlQvkvT1vKfsaL
	7azxzpcTS08YrW9bg4G/IIWENtOyB2PAcgNMbfuxxPMlnTqmdp3o1XiW4BLub9ZbaFaV4I4VcWC3C
	39J4FmShnCD3sD6vrtGi9OxFVzsnyglZvH5ra1fBRiBJw8I5fZARlFtsHwM0ctUkCZewUGQYdMZ2s
	XRX4xsEfsRi+lDEQ/JXjcAqxNqPlLcZrC9r4Md32uwkNMNbsqflw801zV/PnxN9E7wuODLUYPTABP
	grUz7fkcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho4R8-00079b-5k; Thu, 18 Jul 2019 11:18:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho4Qw-00078I-Ok
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 11:18:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A89C5AF8A;
 Thu, 18 Jul 2019 11:18:44 +0000 (UTC)
Message-ID: <13dd1a4f33fcf814545f0d93f18429e853de9eaf.camel@suse.de>
Subject: Re: [RFC 3/4] dma-direct: add dma_direct_min_mask
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Christoph Hellwig <hch@lst.de>
Date: Thu, 18 Jul 2019 13:18:42 +0200
In-Reply-To: <20190718091526.GA25321@lst.de>
References: <20190717153135.15507-1-nsaenzjulienne@suse.de>
 <20190717153135.15507-4-nsaenzjulienne@suse.de>
 <20190718091526.GA25321@lst.de>
User-Agent: Evolution 3.32.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_041846_953389_8EA89982 
X-CRM114-Status: GOOD (  13.18  )
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
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com, catalin.marinas@arm.com,
 phil@raspberrypi.org, Robin Murphy <robin.murphy@arm.com>,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Jisheng.Zhang@synaptics.com, mbrugger@suse.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: multipart/mixed; boundary="===============6463238615214804745=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6463238615214804745==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-u4X6VmDDAIHDooroH1Nl"


--=-u4X6VmDDAIHDooroH1Nl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-07-18 at 11:15 +0200, Christoph Hellwig wrote:
> On Wed, Jul 17, 2019 at 05:31:34PM +0200, Nicolas Saenz Julienne wrote:
> > Historically devices with ZONE_DMA32 have been assumed to be able to
> > address at least the lower 4GB of ram for DMA. This is still the defual=
t
> > behavior yet the Raspberry Pi 4 is limited to the first GB of memory.
> > This has been observed to trigger failures in dma_direct_supported() as
> > the 'min_mask' isn't properly set.
> >=20
> > We create 'dma_direct_min_mask' in order for the arch init code to be
> > able to fine-tune dma direct's 'min_dma' mask.
>=20
> Normally we use ZONE_DMA for that case.

Fair enough, I didn't think of that possibility.

So would the arm64 maintainers be happy with something like this:

- ZONE_DMA: Follows standard definition, 16MB in size. ARCH_ZONE_DMA_BITS i=
s
	    left as is.
- ZONE_DMA32: Will honor the most constraining 'dma-ranges'. Which so far f=
or
	      most devices is 4G, except for RPi4.
- ZONE_NORMAL: The rest of the memory.


--=-u4X6VmDDAIHDooroH1Nl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl0wVZIACgkQlfZmHno8
x/5UBwgAnIorcvhqJGeCU5fyBsfWXYHjNwasQPCU1TRsSi98KiAGitUFSad2SNFL
nQ+EYRvqt0z/niIozLsQpVl1Yt7ccXZDHImuEEb4DEEFiTm+AYIV5jwyiRo9owAc
8IAb+IYT6JZ9F9PRfZoALsi4dpG7t3o/YLPAg0Faphlvb5xj9Bv1yD0bXaHAldzY
Yp7rtu3knI8rhmOpnzH6HCU5PvC51EbcN7UE8Mc2hWiC7iBfQDGgyd3kor71xku9
6nV+594cncBJlkVwiQ8cwOTqGJ5AeygYXy1wGEsLnk8Xyd+vK3e6tVMMJW/F0nuw
8u0mlFrs+jSLsnFe6WhaGTgsPSZ7Ow==
=DM0Q
-----END PGP SIGNATURE-----

--=-u4X6VmDDAIHDooroH1Nl--



--===============6463238615214804745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6463238615214804745==--


