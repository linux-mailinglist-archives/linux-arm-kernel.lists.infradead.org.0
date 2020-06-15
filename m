Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D62271F9922
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jCHFN+9BhQVfzJYwMBGZjijClPbsNERz1cYrozOe/xU=; b=KdTvorjqT/kFc2GVQJ1Jw1co0
	5O7utJgeC5CP3g+wO/zAePIV1StvTXtma0h1cX5NrwAB6hVWtzpNEmMb9w95p5Q4P3DKpv7Xt+CP9
	7FvvZTkPKmHZbJxA3Le02FMbAmLqEQhQdaObWRrmolcfu1vZKyEoWic31outpFEyOttHwXDtBomdO
	xAqStFFNPZPwAb+3rQeaZ5kUDwLSJPiJyYI3WXVWZecFEJFiiSRiurzTVT8CfS44qbiFI79sWT2bi
	i0ntpqvYLLaKagLzEKgnckljP4gK69EvrEPTlhA73P1+NzNPPEgkdJZ4LNuh31iQyI6u9t0buYhDi
	w1SkffxaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpLp-00010N-9u; Mon, 15 Jun 2020 13:40:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpKO-00064v-4s
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:39:14 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7E5B20739;
 Mon, 15 Jun 2020 13:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592228347;
 bh=3qgnu+0GrnrqQvzQvAd3xvt44NOkgslNZc7hnvZJ0ds=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UaQFo1mjO1ynSgYz/iXeLbPZFVmLmsMORfTDaLAo59EvK2SGMTpYWGtTGpBJAgiYx
 5XVY6lBn7uGKdzbq6jizZLVR/t9EWPYZ4x1PZbWNbGNNfty1ph2HrUg3747QwTE+sK
 g/1RBnsV1QdoNPH/2NVOLxR0LwMgSe6/WlMuVcHk=
Date: Mon, 15 Jun 2020 14:39:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Message-ID: <20200615133905.GV4447@sirena.org.uk>
References: <1591880310-1813-1-git-send-email-yibin.gong@nxp.com>
 <1591880310-1813-2-git-send-email-yibin.gong@nxp.com>
 <20200611134042.GG4671@sirena.org.uk>
 <VE1PR04MB66383245FAD2AE33CFEA76F789810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612101357.GA5396@sirena.org.uk>
 <VE1PR04MB66384013797FE6B01943F2A889810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612141611.GI5396@sirena.org.uk>
 <VE1PR04MB6638B43E3AC83286946DABCD899F0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615123553.GP4447@sirena.org.uk>
 <VE1PR04MB6638C65257F41072C3D61583899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB6638C65257F41072C3D61583899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_063908_239547_24ED2364 
X-CRM114-Status: GOOD (  10.98  )
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
Content-Type: multipart/mixed; boundary="===============3173494439396163181=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3173494439396163181==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v7CWsE/Dy737oYst"
Content-Disposition: inline


--v7CWsE/Dy737oYst
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 15, 2020 at 01:35:01PM +0000, Robin Gong wrote:
> On 2020/06/15 20:36 Mark Brown <broonie@kernel.org> wrote:=20

> > If we see an error in transfer_one() it could be from anything, we've n=
o idea
> > what happened on the bus - the controller may have got part way through=
 the
> > transfer before failing.

> Then how about choosing specific error code for such dma not ready case w=
here
> nothing went out on the bus neither?=20

Yes, that's what I suggested.

--v7CWsE/Dy737oYst
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7nefgACgkQJNaLcl1U
h9DWzwgAgNLfdSBegzo4C8SrkVYTpfvlAgdjrdeptqUR28cvfXCkLWGWKP746yJu
xryCPDQEAA8Yn2LAl8V7oYvPaj+oBAZIzcwv4xcxNZK1h9rLUqmLJkbWkttPHUVx
IcbbLwXlRrlx3orkN3wCIqvzRyRnVQ2/5VDV0Ve2tk/s09hbttNZB/XGX+ZjYXnY
pM/PW4VOskZZ8SG5UU9roeIPPQOsKbTjFOO9A5PZnc6hGszNIS3GTrFwZ1b3X1Mg
ksihianoVYK7jBAPJU/CBNuPj3LOp8EQJzpeGMnnFt4ZQQHssKxA0YbQdETcu7ZS
d9yRgl1CHN1yTDEutwavhC7CgG9rsw==
=0EvL
-----END PGP SIGNATURE-----

--v7CWsE/Dy737oYst--


--===============3173494439396163181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3173494439396163181==--

