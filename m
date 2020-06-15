Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33301F9B10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k73zJoW+kFuc9m8J7XAuYntMkVvne/9npbP961zIRHo=; b=r7tRNLc/bEyV+8Q+yHa6nNCTP
	jIecHccf9gOCDDhF915rUKASeyo45lvzjH9E9jEZXNr8/9nEQ4yfmWR6hRKJOHZAuvwDW+Gj95J9f
	ZReZ95nam7yxAn/EIiWt9r6E8Ei2v6yOvyI5UTuJ3yw5wa1WyzeDcArTnGs4jzmSfu9oY1JntiWI6
	cqs1U4KuGYgEy+qNjNX22JTf5H7x8/Euw/qhAOMIvv5To70lTLYzCYwp1il0S5bZlnotQ661yN03G
	ncvnnoVdrzV0Ha/DuRtXvMtkmMAn0jZcO9aAKWDxA2VY9ywP6IJLNWw46abdpKqwk+zoxWYssYIg+
	KfdY3rUGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqWv-0004e1-JK; Mon, 15 Jun 2020 14:56:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqWk-0004db-LT
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:55:59 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C1B7E20644;
 Mon, 15 Jun 2020 14:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592232958;
 bh=2TC//kCSiqr/n1JFxAXwx0DjT4t5nRNJzXNSfvJPnHQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WAzQ4fSL7Ni+8MhSFeK+hvrEhia4ExOvj7gnafrN8h09OzqA8zOjGsggpxgqezOZb
 /FiV+/68Cwz+OQkYgCZvTdup8NA67tIxQiZtGhIeChI9QUQ1HW4FBBZ+bwiaqevDRJ
 hcqc3jkKbV2Vqns7sVYJ1qD2BUt+qAK841dWOONM=
Date: Mon, 15 Jun 2020 15:55:56 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Message-ID: <20200615145556.GY4447@sirena.org.uk>
References: <20200612101357.GA5396@sirena.org.uk>
 <VE1PR04MB66384013797FE6B01943F2A889810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612141611.GI5396@sirena.org.uk>
 <VE1PR04MB6638B43E3AC83286946DABCD899F0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615123553.GP4447@sirena.org.uk>
 <VE1PR04MB6638C65257F41072C3D61583899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615133905.GV4447@sirena.org.uk>
 <VE1PR04MB6638793C00742D5BA72F8AC2899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615143622.GX4447@sirena.org.uk>
 <VE1PR04MB6638D0C9FE0289FFE13ABA49899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB6638D0C9FE0289FFE13ABA49899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_075558_728240_ED5ECA9D 
X-CRM114-Status: GOOD (  10.44  )
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
Content-Type: multipart/mixed; boundary="===============1350657167312867458=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1350657167312867458==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lPJ5i9rX1WvdYcWF"
Content-Disposition: inline


--lPJ5i9rX1WvdYcWF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 15, 2020 at 02:53:29PM +0000, Robin Gong wrote:
> On 2020/06/15 22:36 Mark Brown <broonie@kernel.org> wrote:=20

> > We could also pass in a flag that could be set separately to the error =
code to
> > indicate that nothing had happened to the hardware yet.

> Do you mean spi-imx.c checking 'ctlr->flags' before return such error cod=
e?
> Or just like below done in spi.c.

No, I mean passing in an additional argument which can provide richer
data than trying to smash things into the return value.

--lPJ5i9rX1WvdYcWF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7ni/sACgkQJNaLcl1U
h9DpXQf9G2jk6fHADMgZvO5cMWF40DK3HTy0XpAr55BZ3EtoJ9SfnWU4hvTmyvn/
9gWPmaXi84y5Uq1tvrYZXp70urjy0GAgJD6gpSDPq1PPql9PhVdPtOWg0K9KYt1r
iGep527JQyKrorlKPIZ1SLN/9qxexF4GMjkyR7Bjx4H9rrSCKyG+TLrNFGQZL0ft
Z93yp3K+RJb8TfYwIF50LbTix6pY4mTd6kNG7rd4RLinkGjBWZWnbdwKQkgBeffM
qKVL0ySu1Pgd24bOR6aCKQxdKuCAyxj6dy5Hwya7ZgryKH0eVDdS3P0Vx5pqXS1l
jXQt7/A7B3EFdjfQTsqDuDAuACaijw==
=lGYg
-----END PGP SIGNATURE-----

--lPJ5i9rX1WvdYcWF--


--===============1350657167312867458==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1350657167312867458==--

