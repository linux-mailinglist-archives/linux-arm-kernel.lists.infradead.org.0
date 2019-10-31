Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C7DEB614
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:26:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FKVK7FQgUKhFdoGj9DftlDE7iiYIO5nrVzDA6SCztCs=; b=fFPNvkfD7G14H4EPQ1OFsM8wp
	jvB+PWQZ29iYg0KqF6/QJLczUHugq+DC7pvefeCPrCV/XocuWXci+c0fquYhSwxB0hEXLNvIHTq+q
	vBzPpD0o7Xe4cNuR1HOVpDJbarJz/nvjqou4TjLdt18gkPlOj87wj4rV4DlVVPwxAJ/30QdH6xWh1
	0AFuMPnjm8SrXJpMkDgj/cloqjj/0CB6y6NJVTm0qgnRusicOwJLwkPj+jg4wdbKPlMEKOocBw/dF
	VF55RlO9PmmQVAh5SFwiY66y3vLDt7WsXB2HTy+r1scp75POyGkaWCddTa6vT/pNdsqyKMqO8oRig
	7YJG6sg6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQEDM-0004SD-25; Thu, 31 Oct 2019 17:26:28 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQEDB-0004Qx-9h; Thu, 31 Oct 2019 17:26:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3E70EB961;
 Thu, 31 Oct 2019 17:26:14 +0000 (UTC)
Message-ID: <9c051b0f2d89baa36fd3d3669a107f549c310d49.camel@suse.de>
Subject: Re: [PATCH RFC 1/5] dma/direct: turn ARCH_ZONE_DMA_BITS into a
 variable
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Catalin Marinas <catalin.marinas@arm.com>
Date: Thu, 31 Oct 2019 18:26:10 +0100
In-Reply-To: <20191031133831.GA21509@infradead.org>
References: <20191014183108.24804-1-nsaenzjulienne@suse.de>
 <20191014183108.24804-2-nsaenzjulienne@suse.de>
 <20191030214914.GA15939@infradead.org>
 <8c525f66c1c0d9f07e0cff4948d1ec3229756220.camel@suse.de>
 <20191031133831.GA21509@infradead.org>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_102617_481974_F3A00F22 
X-CRM114-Status: GOOD (  13.65  )
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
Cc: linux-s390@vger.kernel.org, mbrugger@suse.com,
 Vasily Gorbik <gor@linux.ibm.com>, wahrenst@gmx.net,
 Michael Ellerman <mpe@ellerman.id.au>, Will Deacon <will@kernel.org>,
 linuxppc-dev@lists.ozlabs.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-kernel@vger.kernel.org, ChristophHellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 iommu@lists.linux-foundation.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: multipart/mixed; boundary="===============7559373325739897373=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7559373325739897373==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-HUsDE4pCuvQagD+CYqmq"


--=-HUsDE4pCuvQagD+CYqmq
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-10-31 at 06:38 -0700, Christoph Hellwig wrote:
> On Thu, Oct 31, 2019 at 11:30:36AM +0100, Nicolas Saenz Julienne wrote:
> > On Wed, 2019-10-30 at 14:49 -0700, Christoph Hellwig wrote:
> > > On Mon, Oct 14, 2019 at 08:31:03PM +0200, Nicolas Saenz Julienne wrot=
e:
> > > > Some architectures, notably ARM, are interested in tweaking this
> > > > depending on their runtime DMA addressing limitations.
> > > >=20
> > > > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > >=20
> > > Do you want me to pick this up for the 5.5 dma-mapping tree, or do yo=
u
> > > want me to wait for the rest to settle?
> >=20
> > I'd say take it, this will be ultimately needed once we push forward wi=
th
> > ARM.
>=20
> Can you resend a version that applies against 5.4-rc?  The current one
> has conflicts in the arm64 code.

Hi Catalin,
would you mind taking this patch on top of the arm64 ZONE_DMA series?

I tried to go though Christoph's tree but it ultimately clashes with the
ZONE_DMA series. It's simpler to apply it on top of your tree.

Regrads,
Nicolas


--=-HUsDE4pCuvQagD+CYqmq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl27GTIACgkQlfZmHno8
x/6rAgf/ZoMMGW7IRaV6x5ZwhpeWmnDuHERj4vzVJa0/eBKTyeFHQYuyNBygdzOW
JGunOdpAkJNo6DdJKxyUt8u5d8vvnq3mIm+g0xkoz6PxzzUtPlEuFZ1fgP1oGYIT
BdBcYj23cYMrYjtqcJJkBoBu+5JBkx28Mu5oGyWeRojupXkK+9NN53qUZMmYcFD+
Lw9i3nBQmiozrdeHMiErrYTXOkz93sipx2zeo2jF4CsOtj67BfJMhmsRogeQTIe+
Z5A6Ik+LQ8AejhKOAisJzXidZPdUwaENRKw2qicQFBoifWbqinhT6JxmrEk/AHR1
eg9iA75sotbQfuNiAzn6qCofWaKfcg==
=jqtB
-----END PGP SIGNATURE-----

--=-HUsDE4pCuvQagD+CYqmq--



--===============7559373325739897373==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7559373325739897373==--


