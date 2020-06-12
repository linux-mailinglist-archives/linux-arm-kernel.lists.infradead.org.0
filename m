Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 105E41F7960
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 16:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o0avDofe+hRcodWtSwlwnFg5jxJWkJPiLTN2KOUkbcI=; b=MPd8kL35CTU2GEjv6x+r0LVjM
	OU58IMmBdyvzqWbxESJmZE0ryP8P3nndVn3sekP5EhzVHDD8ywfVJtFXdVQ0xHcFnoT6B+4FpJ6F7
	nioANTI+132iNN0YHR7c9om6B4i1piIKnl98Ke4jRySv8rlvzExu3qHg+3VkFcjSz62CJIzgcC189
	Zx4GiQRDS1Er7/iR4rMqGYz9VsiSPUd+gn76Zl1eWY51Pd0kZJN1MTak+JeqOhFM8eLoqy91PhDwa
	ciACcZ1Sjw11HVE3SZ9XbX+PDYpmohhvNJecOrTlHCi5bieKHjJbBHdzXCQQbCn/SrVtdgc45egBW
	SNRHIcqrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjkTo-0003NQ-3H; Fri, 12 Jun 2020 14:16:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjkTf-0003N7-I5
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 14:16:16 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DA442067B;
 Fri, 12 Jun 2020 14:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591971375;
 bh=rjTKmlfjn2R4qsN7ijSXQ0sc9veNt5Fvq/im3PhhshA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r4CwAbYngJblvQB3nesA7U2qZLkgHIjF/NVj67Y8cU/ccol3A9zUALDHSHcgU0Mu5
 4L13AmJ32q78+eIY3XXZNuC9GIK+6RCHg7sB80cV9wDyJDhMhkG4tgcNAzeym3RDlB
 zT8D0EvsorW8ymFq4Gj9DgEP4tCvNcnXvBpnLQFg=
Date: Fri, 12 Jun 2020 15:16:11 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Message-ID: <20200612141611.GI5396@sirena.org.uk>
References: <1591880310-1813-1-git-send-email-yibin.gong@nxp.com>
 <1591880310-1813-2-git-send-email-yibin.gong@nxp.com>
 <20200611134042.GG4671@sirena.org.uk>
 <VE1PR04MB66383245FAD2AE33CFEA76F789810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612101357.GA5396@sirena.org.uk>
 <VE1PR04MB66384013797FE6B01943F2A889810@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB66384013797FE6B01943F2A889810@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-Cookie: As seen on TV.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_071615_636356_018C16DE 
X-CRM114-Status: GOOD (  22.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "matthias.schiffer@ew.tq-group.com" <matthias.schiffer@ew.tq-group.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0629599078980604355=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0629599078980604355==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y96v7rNg6HAoELs5"
Content-Disposition: inline


--y96v7rNg6HAoELs5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 12, 2020 at 01:48:41PM +0000, Robin Gong wrote:
> On 2020/06/12 18:14 Mark Brown <broonie@kernel.org> wrote:=20

> > Please look at the formatting of your e-mails - they're really hard to =
read.  The
> > line length is over 80 columns and there's no breaks between paragraphs.

> Sorry for that, seems my outlook format issue, hope it's ok now this time=
 :)

Yes, looks good thanks!

> > Client could enable this feature by choosing SPI_MASTER_FALLBACK freely
> > without any impact on others.

> > SPI_MASTER_FALLBACK.  If this works why would any driver not enable the
> > flag?

> Just make sure little impact if it's not good enough and potential issue =
may
> come out after it's merged into mainline. TBH, I'm not sure if it has tak=
en
> care all in spi core. Besides, I don't know if other spi client need this=
 feature.

It's not something that's going to come up a lot for most devices, it'd
be a mapping failure due to running out of memory or something, but your
point about that being possible is valid.

> > > Any error happen in DMA could fallback to PIO , seems a nice to have,
> > because it could
> > > give chance to run in PIO which is more reliable. But if there is als=
o error in

> > PIO, thus may loop here, it's better adding limit try times here?

> > An error doesn't mean nothing happened on the bus, an error could for
> > example also be something like a FIFO overrun which corrupts data.

> Do you mean fallback to PIO may cause FIFO overrun since some latency
> involved so that this patch seems not useful as expected?

No, I mean that the reason the DMA transfer fails may be something that
happens after we've started putting things on the bus - the bit about
FIFOs is just a random example of an error that could happen.

> > It *could* but only in extreme situations, and again this isn't just ha=
ndling
> > errors from failure to prepare the hardware but also anything that happ=
ens
> > after it.

> Okay, understood your point. You prefer to some interface provided by dma
> engine before dmaengine_prep_slave_sg so that can_dma() can know if
> this dma channel is ready indeed. But unfortunately, seems there is no on=
e....

Well, this is free software and everything can be modified!  The other
option would be framework changes in SPI that allowed us to indicate
=66rom the driver that an error occured before we started doing anything
to the hardware (like happens here) through something like a special
error code or splitting up the API.

--y96v7rNg6HAoELs5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7jjisACgkQJNaLcl1U
h9Bhxgf/f3T8+uesnT6I1A7PkdLyqPQzcvBKKuMxmr6a6gei+O6Z2E2DXrkgZnBH
egPtk0PkWozxvGSFKHjn0bWeN/cUS6YmM2T9LoXLP3aVYzsY6u1IutoUU6RabAij
AoWbBzfvClylFsQeOyo1FcdDXSRCqAN0nZy8ui8v9etgiQ6fjLSk0GNmmxPZ7eAG
FOwpDRyqmKCXqL66n+XROqHIz9og7wZm7GKJd7TewrCwDaT/MOoqpBN0vwHd7lYj
Ay0dT138sTtsmSXL2ujVLanOV1rwtx8uFSP+8kBapWjpZ5uko6QNs9XJoq1JFKDd
OwnndBidkU1L4Hl3h5BJ/hD59UsqCw==
=3+JR
-----END PGP SIGNATURE-----

--y96v7rNg6HAoELs5--


--===============0629599078980604355==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0629599078980604355==--

