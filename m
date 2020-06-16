Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AFC1FADE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 12:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pieOLUxFH9AxO2aIGZqFuvfOjnvMVpGwrGjvavbjA9k=; b=owtHK7X8wZxooIAdMgXzncUUI
	kkESuIpgLfVsQ7nmHlCPJbIEl/98fSbH0sdl3p+r3VFOzlKnUdNONM/v9EcdZOWxF9YvnICf5Zn6+
	a7NfgAQeVQPTvZtRhAjx3BXn1NDNoukPU9PKkkuCinvNIurWl7A+qQfT1RhqscjZqPX+fCabjf8xm
	n1O+T5G/4vF/c9Sh2c8vpkycdYZnP9bwcMD+gtuCIpVDK6Vx6gTnLytrKJvrtdrkll/QNGw7/i7xd
	7OGL0QnNaB7RmRcUpuXQ6WLmPjh0W8w6hG/T6J6WrsRRGbaocRKpShpxCKlQOBZrO01Na6dZ1GlB3
	3U1NP9ADQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl8oE-0001rm-GP; Tue, 16 Jun 2020 10:27:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl8o2-0001rP-5l
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 10:27:03 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47D932074D;
 Tue, 16 Jun 2020 10:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592303221;
 bh=h+uJjTNyXThELVktOw4GwJ+7MZ17efhM9W2zSlxhrfE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W6bU3A0EaWVwqB76C7G7Q8IPA9+8NDlndx78P4FO5p55YBIboAQ+ng5RuIHbh7arj
 cDq2IabAY/pe4YgW8N+oycWxtz82vqVOx9X8cA2CW3t6pe1ufX8DiWIRg6MbpwFL4a
 4lfwdoblwodIxGq5kz8hB3BKYLT1P24WTfkeaTDQ=
Date: Tue, 16 Jun 2020 11:26:59 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Message-ID: <20200616102659.GK4447@sirena.org.uk>
References: <20200615123553.GP4447@sirena.org.uk>
 <VE1PR04MB6638C65257F41072C3D61583899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615133905.GV4447@sirena.org.uk>
 <VE1PR04MB6638793C00742D5BA72F8AC2899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615143622.GX4447@sirena.org.uk>
 <VE1PR04MB6638D0C9FE0289FFE13ABA49899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615145556.GY4447@sirena.org.uk>
 <VE1PR04MB66380FD8FB7FCE79AF4B6CD4899D0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200616095948.GJ4447@sirena.org.uk>
 <VE1PR04MB66387499F9AF80A68F720529899D0@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB66387499F9AF80A68F720529899D0@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_032702_239346_8B550939 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============4782449075961467582=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4782449075961467582==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qE0/TkNoJLLGUzs4"
Content-Disposition: inline


--qE0/TkNoJLLGUzs4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 16, 2020 at 10:13:08AM +0000, Robin Gong wrote:
> On 2020/06/16 Mark Brown <broonie@kernel.org> wrote:

> > I'd just make this a generic flag for failures before we start interacting with the
> > hardware rather than specifically this one error case.  Otherwise this looks
> > fine.

> So rename to SPI_TRANS_DMA_FAIL? I think at least DMA is MUST for fallback
> case...

This is not purely for DMA, it's just about the failure having occurred
before the transfer started.  How about _FAIL_NO_START?

--qE0/TkNoJLLGUzs4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7onnIACgkQJNaLcl1U
h9Cs0Qf8CdBZ6A+/Gn/ijwLKgPntYUIu7iNkeoHkhYqOXmt1S4e0m5GoT+ROMOLV
k1elBNRfWqVdKJfHMzmk5wANM+F5XqTCOpWx0SErZRiSHMFb5V8gClcNBYTNL/eU
3A/I62fz09JL/onIv3qEkUTsWvL3Rq7VG0mAsJvL27oMRecxS0EwEGW33kaY9axI
59Irl+2GcI/oQchTMzeHBdBMd5bqdGjDvI2xSrqnbyip+/G1p6xHPmYRyypcl+AZ
X976ervmpNe4o3XKh80pDajyx5aKgyQxgtB7cjE2UPSKXAgVhG+N8LWRwoAw03+y
1fXXMrymNw+yvlVU0QNEuMOYGRjTFg==
=9EtT
-----END PGP SIGNATURE-----

--qE0/TkNoJLLGUzs4--


--===============4782449075961467582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4782449075961467582==--

