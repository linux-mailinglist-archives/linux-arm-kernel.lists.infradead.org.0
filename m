Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0908F1F1C24
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 17:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D50BLHn3fk5xPgvBFGqg+1jUqiWjuT09Qg4GMEzuQCw=; b=N6DP8H0eBw4R0viELUrm2vwfG
	HgdaVVhGwlfbSDGP4VYxvkVnYr9kwYT8ya5EBM0zXXpz+JYFq5mMNJnT3HGisOw0SStcVQs3eyIld
	89EXpK7MRCm+KT96CqWB5YNyaO0ijMMCFpLw6EttrCZUZf8HhfuyQzpt0DCaM1reApbuejz5i9m01
	Wb1IEIs9gW3lhDZ76y8qI42wxsUpNA9tLyeeqM5qU5Z2LfzG1dUi/e1PpZd+n6mAqT05z/ioHS++C
	/M/xcJ4a13Y6nFeWtzupAdfcLMF9BpTa29x2jdF5otD+/BnjsQs6LpyHjn3e7hqP8DM2V2BLTL+vg
	OE+d1hqnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJkd-0000JW-G3; Mon, 08 Jun 2020 15:31:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJkU-0000Iu-BF
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 15:31:43 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8750A206D5;
 Mon,  8 Jun 2020 15:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591630302;
 bh=ADxBilkyT/EAi/djnjiP2fgYAZUPsNr5v8UV+nTUi7I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ub15ctup9uAJsdoj9tT8dbeZGUxs/erhZLq8nR6hfpoyfT4EhYRftbZWT7cr4LqJl
 J70OfloxVttWEd00LXh/jwVPRQ2yd+X1T4mrwoovTkLEqim2OEGZkr+gYFxuCeaAfJ
 9MVEQvm29WsRmviuekA1KS1TVvMo4eQbqY4RPi2s=
Date: Mon, 8 Jun 2020 16:31:39 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v9 RESEND 01/13] spi: imx: add dma_sync_sg_for_device
 after fallback from dma
Message-ID: <20200608153139.GI4593@sirena.org.uk>
References: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
 <1591485677-20533-2-git-send-email-yibin.gong@nxp.com>
 <20200608143458.GH4593@sirena.org.uk>
 <VE1PR04MB66388F89015F774EE3FFF69D89850@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB66388F89015F774EE3FFF69D89850@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-Cookie: I'm rated PG-34!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_083142_428019_3A058358 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "matthias.schiffer@ew.tq-group.com" <matthias.schiffer@ew.tq-group.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0395324626917007403=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0395324626917007403==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fckbADODYWZD5TdN"
Content-Disposition: inline


--fckbADODYWZD5TdN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 08, 2020 at 03:08:45PM +0000, Robin Gong wrote:

> > > +	if (transfer->rx_sg.sgl) {
> > > +		struct device *rx_dev = spi->controller->dma_rx->device->dev;
> > > +
> > > +		dma_sync_sg_for_device(rx_dev, transfer->rx_sg.sgl,
> > > +				       transfer->rx_sg.nents, DMA_TO_DEVICE);
> > > +	}
> > > +

> > This is confusing - why are we DMA mapping to the device after doing a PIO
> > transfer?

> 'transfer->rx_sg.sgl' condition check that's the case fallback PIO after DMA transfer
> failed. But the spi core still think the buffer should be in 'device' while spi driver
> touch it by PIO(CPU), so sync it back to device to ensure all received data flush to DDR.

So we sync it back to the device so that we can then do another sync to
CPU?  TBH I'm a bit surprised that there's a requirement that we
explicitly undo a sync and that a redundant double sync in the same
direction might be an issue but I've not had a need to care so I'm
perfectly prepared to believe there is.

At the very least this needs a comment.

--fckbADODYWZD5TdN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7eWdsACgkQJNaLcl1U
h9BiKAf/ZmeX9XdQOaPXdXtYXNZ3mBV/poS2CX7LkZVc4oBchvlrK/obnL/5JWU+
2AVuevWzu2fig/gK6UfPOZUU24ZPvfwwo8obnuU7iUFZ7ynpsDOP+v8nLyc6ROe9
WDdp8hQ7ZXTixJ7p+ww5o30bSWOq2dCuguKM83CSvcB60QxRTPW3s7dClj0wRRLW
/YqjHpYK85okEJ7wQk4K+XmgiNOtfGGPImPE6iM7+hVzZORE6j78xFXDRq4XX5TQ
WCbjot+/Pb3lOPrlQQ6THR244JuyC9yx5DVeHV0h5tUWA2LWABEBhTE82aYEy1HM
RSe4uOS1dRQO+DhKwWD7O75Y0oxYow==
=kfaK
-----END PGP SIGNATURE-----

--fckbADODYWZD5TdN--


--===============0395324626917007403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0395324626917007403==--

