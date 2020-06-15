Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09531F9A6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DslrLSdzxo1j6LcM9IRt72d5Ds9MklxKD8zojd7urKw=; b=nuW4vQOBYgeTe06cS3t8pJBJO
	PUhDKyenuL3OpIffkYYUWzn1RRXpYAvG61ic6jOT94nKE684eyxzW9WFI3OwCFyyiUljdMxBwdKnN
	t/EFlrG1GlLRVHGK1sXtKfZ+uOiM1p6MgRg9TibgpPt9blz7Zvl2tJj6jpRoE2dIEnKVvHO5uNJw8
	snxpcvO1dFx0asCmxAOHkW2/3JR3nVxj0QAHdjjBPcFfgvMWQXO45YWIqRrZWrjIRCIfiHpB3H5/U
	VAQVz7O26mqvSzmT9s6v0cg9q0W/FiwHWyBl79hCCB4QYX/J4vgGak2z5X6U6pvDZqIRAcFn3UWns
	Hzq+ZYuQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqE7-0004wD-9C; Mon, 15 Jun 2020 14:36:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqDp-0004rZ-W7
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:36:27 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C5FE206B7;
 Mon, 15 Jun 2020 14:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592231784;
 bh=ype2UwsEJQA9RCKVIpGpA9vIFkTyIQOQ4sKP1eAXFbM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sRnd9myuAlE2K1Nj2iURRl7w9qJ8EkYdNdH+K+1/phMf0kpQoAY1Pxp7TJ1JfE1Bv
 IS0K9Zxia4mxtl4V1nzuqvNO6G2NXNI+bmmTQPTgW5XKEnO5J9uL2LHNVwhcwBS3Ik
 ag3vadWejMFiNKgNM8XdbJeap+BU3716MyK6XAPQ=
Date: Mon, 15 Jun 2020 15:36:22 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Message-ID: <20200615143622.GX4447@sirena.org.uk>
References: <20200611134042.GG4671@sirena.org.uk>
 <VE1PR04MB66383245FAD2AE33CFEA76F789810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612101357.GA5396@sirena.org.uk>
 <VE1PR04MB66384013797FE6B01943F2A889810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612141611.GI5396@sirena.org.uk>
 <VE1PR04MB6638B43E3AC83286946DABCD899F0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615123553.GP4447@sirena.org.uk>
 <VE1PR04MB6638C65257F41072C3D61583899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615133905.GV4447@sirena.org.uk>
 <VE1PR04MB6638793C00742D5BA72F8AC2899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB6638793C00742D5BA72F8AC2899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_073626_071322_E84A7CD5 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============0761349998802809016=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0761349998802809016==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6yuPXOSZRpyw7iEV"
Content-Disposition: inline


--6yuPXOSZRpyw7iEV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 15, 2020 at 02:18:54PM +0000, Robin Gong wrote:
> On 2020/06/15 21:39 Mark Brown <broonie@kernel.org> wrote:
> > On Mon, Jun 15, 2020 at 01:35:01PM +0000, Robin Gong wrote:

> > > Then how about choosing specific error code for such dma not ready
> > > case where nothing went out on the bus neither?

> > Yes, that's what I suggested.

> Seems not easy to find a suitable error value, how about EBADR which
> sounds like no any available dma_async_tx_descriptor got by calling dmaen=
gine_prep_slave_sg?=20

> #define EBADR           53      /* Invalid request descriptor */

We could also pass in a flag that could be set separately to the error
code to indicate that nothing had happened to the hardware yet.

--6yuPXOSZRpyw7iEV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7nh2UACgkQJNaLcl1U
h9CGngf9FJjxiiGTABi3SIsOJXFnGblWLqB3vln9SMDIbAPj/yGiDdpERP2vrY1W
7k5dVCoCvMS3H85xHNvGXPWcWiAMdr2kvxYtHSOXafk/x18RNkFypSPrJGNH8aFa
bJAFTdhXBNO1Tzkfyv8jEXenmexA8Zvr98tiCjY6y1KzVIxXUS76Z0m610y3t01m
tBtsjAkAXoKe7N00fwx6mhZKwOlOmj7xXhETXAWGi7hMipmWTMlBDfijumFNivy0
ZmZdGZkr7H8rmKS664LAce29F1vBAGJ1DDCR7uZPNz0Tv2hT7gOTadOvuionzbvw
c1zT5i2KtlUGpSNfABZa0rmrPwY5dg==
=DUZv
-----END PGP SIGNATURE-----

--6yuPXOSZRpyw7iEV--


--===============0761349998802809016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0761349998802809016==--

