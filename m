Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364A11F96A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 14:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kg4BtzxGNg/J9Kgrd+J7eQba3FJc9/iepRJxtd9LXns=; b=lImiGgZAGVZ/n8ww2EkHhiGTg
	hmhUQfyYy8+AZYtHOn9BBmQkn4GpokG18h0GBnetMfH8LmjiA8epRyVvHZXvKFqpE/CzQwhPsy8Q/
	WFX192+NzGYLuch5OGKNm9Pc4H6LZDRvYFrwo+/Su8Z1e5mNyTiCV3mkjq1LneuvgT293WiIddnmL
	rJqcSBFWLn85h2+DgFTXMIdapDtfhFQnw9uREg05wLBJRI9fG0XIYCHuOsTh5asBUa4snWx4Dmt0Q
	w+5rNiax1JcKNJ2o2/ASaTXpZA54vXRfu3HhHv1BY6Mtd3rUNADJy40DB1tWW0Kd637tKgZtQZ5O5
	ZK9hvWudA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkoLN-0006Al-7v; Mon, 15 Jun 2020 12:36:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkoLE-0006AR-A8
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 12:35:57 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 67AC6206D7;
 Mon, 15 Jun 2020 12:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592224555;
 bh=bK7xnMNO32LjNVdhxquamLIt4CNPuSKX3tUtMf1VOH0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RnslLA8y44+qEBt1UcgQpOlAoS8fYlwkJBrQqPZn/CI6GGftG9buwdzrJbOJ5EnV6
 kkDadIVNUZkx2q1HkVr6dvQaX3OyUyGZDvUIKt5RJwzRE6jCYtR5dMfT2DDo7aHBSS
 Dc6jNSlFc5IMjIVoR/DDJkYX7gUPB8I8NlA3HNmk=
Date: Mon, 15 Jun 2020 13:35:53 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Message-ID: <20200615123553.GP4447@sirena.org.uk>
References: <1591880310-1813-1-git-send-email-yibin.gong@nxp.com>
 <1591880310-1813-2-git-send-email-yibin.gong@nxp.com>
 <20200611134042.GG4671@sirena.org.uk>
 <VE1PR04MB66383245FAD2AE33CFEA76F789810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612101357.GA5396@sirena.org.uk>
 <VE1PR04MB66384013797FE6B01943F2A889810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612141611.GI5396@sirena.org.uk>
 <VE1PR04MB6638B43E3AC83286946DABCD899F0@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB6638B43E3AC83286946DABCD899F0@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_053556_388069_01CC9995 
X-CRM114-Status: GOOD (  15.12  )
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
Content-Type: multipart/mixed; boundary="===============7411029750878691022=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7411029750878691022==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Zfao1/4IORAeFOVj"
Content-Disposition: inline


--Zfao1/4IORAeFOVj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 14, 2020 at 01:04:57PM +0000, Robin Gong wrote:
> On 2020/06/12 22:16 Mark Brown <broonie@kernel.org> wrote:=20
> > On Fri, Jun 12, 2020 at 01:48:41PM +0000, Robin Gong wrote:
> > > On 2020/06/12 18:14 Mark Brown <broonie@kernel.org> wrote:

Please delete unneeded context from mails when replying.  Doing this
makes it much easier to find your reply in the message, helping ensure
it won't be missed by people scrolling through the irrelevant quoted
material.

> > No, I mean that the reason the DMA transfer fails may be something that
> > happens after we've started putting things on the bus - the bit about F=
IFOs is
> > just a random example of an error that could happen.

> Sorry Mark for that I can't get your point... The bus error such as data =
corrupt
> seems not the spi core's business since it can only be caught in spi cont=
roller
> driver or upper level such as mtd driver (spi-nor) which know what's the =
failure
> happen at spi bus HW level or what's the correct data/message. In other w=
ords,
> spi core can't detect such error by transfer_one().

If we see an error in transfer_one() it could be from anything, we've no
idea what happened on the bus - the controller may have got part way
through the transfer before failing.

> But despite of that case, do you think this patch is valid for transfer_o=
ne() failue
> in dma and fallback to pio?

No, not unless we know that nothing went out on the bus.

--Zfao1/4IORAeFOVj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7naygACgkQJNaLcl1U
h9AKiwf+K/TO3gWH9vQYkVSNuWGp+wzROetikqE2P9cbQxa+EuwVUJ5cU8EOCUJV
jUiCbGsdl41kpqm98zYU5CZy2M5hvulcfdFOi19uGDGXn8VGNRYELhUG39RvKxSM
w+toG6fA6tvkm2nDoiiKG3N9f7mH3DgLTRw5MX631cATsLhZ5jlZnxmZOx7RH1KG
t3Cz7VEz/t4IK+HgEhk+s2Tr0fwioHjAuFuaor6s1CFkkxeRQ95bTqIJy/nLC8ws
Y5B+i4ul0d3lL5HAx7kssr41wpo7Iy/gTaG8/EEecEtpXOt3bJjhOnwYYUJ4oD7t
oKFeiaZtcsy2T2uo9sH/54P9RFN2KQ==
=5gqF
-----END PGP SIGNATURE-----

--Zfao1/4IORAeFOVj--


--===============7411029750878691022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7411029750878691022==--

