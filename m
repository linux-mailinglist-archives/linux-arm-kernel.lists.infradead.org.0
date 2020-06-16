Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B67F91FAD46
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 12:00:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NsVxKm5a0iVOTC66NPheP2ZlSEAGKADh6qRPPqFdX/0=; b=tqdfhJLbvoJplvUyprDrneBJx
	PsiCi8rFLrs61czdR9y7znHpkTf1U3aYiTq/7p11wZZx48hNHmaLFImcd500oh+HpG+QRJNfjXEA7
	7lKvKvWjn+rpjqDVHB4yjEAC36FazXYaRounGufhVpCYdU46urAQCQm/ZjP8e0/XVHLbgRzu6SIxj
	N6qDO3SLgHu7JPCDCR5FlwHyxLkeJAjIOWRxzcKh0HhXMLJnm5WAQMnhgG3EzF/F8eOG436EYLa2S
	46Mcu5V/qtk73PHFqx5aDqlg5iFA/zH2aNNOXEWwrdPXEEtwxQKWaq4V4IdVm45vK53tPnd1nGubI
	HOkUog+og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl8Nr-0000iv-Mn; Tue, 16 Jun 2020 09:59:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl8Nj-0000iX-6m
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:59:52 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CA0720767;
 Tue, 16 Jun 2020 09:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592301590;
 bh=H00RGJq5KezVcrQ/vGzLRXHsGQa2G3LnLHyCG7559QU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s35iCxf2ApOcJZGyTnKb4vFHqFOY/SexyqbRTgxWkYLnGAD85dUn2XN6AYZkK4Yms
 bl62nwah75Ax2duvcU+bVe2CmlysoY32l9chot9A7Qr1u4UA5fiP/m2ZlZQO/ik3av
 tMj/TY1ARiyudeRqXH3l8XqEFpJspJfUFi6ej97w=
Date: Tue, 16 Jun 2020 10:59:48 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Message-ID: <20200616095948.GJ4447@sirena.org.uk>
References: <20200612141611.GI5396@sirena.org.uk>
 <VE1PR04MB6638B43E3AC83286946DABCD899F0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615123553.GP4447@sirena.org.uk>
 <VE1PR04MB6638C65257F41072C3D61583899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615133905.GV4447@sirena.org.uk>
 <VE1PR04MB6638793C00742D5BA72F8AC2899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615143622.GX4447@sirena.org.uk>
 <VE1PR04MB6638D0C9FE0289FFE13ABA49899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615145556.GY4447@sirena.org.uk>
 <VE1PR04MB66380FD8FB7FCE79AF4B6CD4899D0@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB66380FD8FB7FCE79AF4B6CD4899D0@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_025951_269211_F7A1E422 
X-CRM114-Status: UNSURE (   8.22  )
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
Content-Type: multipart/mixed; boundary="===============3108385117953840908=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3108385117953840908==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6xTM0kUsJcaNctaW"
Content-Disposition: inline


--6xTM0kUsJcaNctaW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 16, 2020 at 02:03:40AM +0000, Robin Gong wrote:
> On 2020/06/15 22:56 Mark Brown <broonie@kernel.org> wrote:=20

>         struct list_head transfer_list;
> +
> +#define        SPI_TRANS_DMA_PREP_FAIL BIT(3)  /* prepare dma failed */
> +       u16             flags;

I'd just make this a generic flag for failures before we start
interacting with the hardware rather than specifically this one error
case.  Otherwise this looks fine.

--6xTM0kUsJcaNctaW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7omBMACgkQJNaLcl1U
h9CvpQf+Nxs8GAzGWD8q5WQ5Yfk5Dd+UDwg0tf7+zdTr05h6hiN4THe7qjTZBk6+
MC0R19TGfmpOaqHJY8nh3Nr2HY2QUv+ceTtIYVmwxpG+oE9TTE1v5WQTzOTQ5HMV
yq8qU6g8Tfa1uB6BLAchJMy2lBvU/mjNqRnDY4ONnr5qkrmmKgQZycDnilH3ICEy
VVS2cenoNIUooeyGwBCFOO8GnxfPhYtO3P5CLZvFPmg6OEdq0qIbluxYksdknKiR
cBMORkKWR3BEZwuCx2R6xjUk17zxIpc5Km7XmjrZXSSitzONPcMjcaqVq4mtuNAU
5hztHr9mzDtIlWqoD8uLxSczu7wlVg==
=AZSa
-----END PGP SIGNATURE-----

--6xTM0kUsJcaNctaW--


--===============3108385117953840908==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3108385117953840908==--

