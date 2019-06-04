Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF67341A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3szjqYKGVkJ61tjDHxZa7safEe3Si5seSByX0BZlcwk=; b=JcHwxJ1gBX2s492SMWYDTF0It
	kjUUpeptm73zG8vlT47JENqRIz5zLIIN1mRz1gh8wvySpQxsOxAfnff0Kb5mAq7H5KLju/dZQpotL
	hfDrParBkZtjahZL+qDB7+GZS/26YbZ2FP0dExkfdl27Yc//QUiuat6j+kyqLC4uCj9l6KBQG3K9y
	r7aBPjiYPxJwx1hVOAi16merC5PmNZtOu4gx3EOR6uOFaRmcHMCwdeioFcnjcB1NWvjkaRAmOLqDB
	M2hkBQ3ZZj2S03NBhiderCPsNb6UOSBFqO8QOiPwz9RO0sHs/rFXpJuSsTW+O1OO68vTXg24OtsMS
	DSX6ORVeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4gA-0005gZ-1c; Tue, 04 Jun 2019 08:20:22 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4g1-0004TY-TI
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:20:16 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id D55676001C;
 Tue,  4 Jun 2019 08:19:38 +0000 (UTC)
Date: Tue, 4 Jun 2019 10:19:38 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: codekipper@gmail.com
Subject: Re: [PATCH v4 8/9] ASoc: sun4i-i2s: Add 20, 24 and 32 bit support
Message-ID: <20190604081938.npye7brtjv7c7noj@flea>
References: <20190603174735.21002-1-codekipper@gmail.com>
 <20190603174735.21002-9-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190603174735.21002-9-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_012014_237327_CE2F4718 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -1.4 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: alsa-devel@alsa-project.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, be17068@iperbole.bo.it,
 wens@csie.org, broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8284298254933551359=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8284298254933551359==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6wxkr4ordbttpslj"
Content-Disposition: inline


--6wxkr4ordbttpslj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 03, 2019 at 07:47:34PM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> Extend the functionality of the driver to include support of 20 and
> 24 bits per sample for the earlier SoCs.
>
> Newer SoCs can also handle 32bit samples.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 34 +++++++++++++++++++++++++++++++---
>  1 file changed, 31 insertions(+), 3 deletions(-)
>
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index 3549a87ed9e9..351b8021173b 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -428,6 +428,11 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
>  	case 16:
>  		width = DMA_SLAVE_BUSWIDTH_2_BYTES;
>  		break;
> +	case 20:
> +	case 24:
> +	case 32:
> +		width = DMA_SLAVE_BUSWIDTH_4_BYTES;
> +		break;

Doesn't this test the physical width? If so, then I'm not sure that 20
even exists, and that we can support 24.

>  	default:
>  		dev_err(dai->dev, "Unsupported physical sample width: %d\n",
>  			params_physical_width(params));
> @@ -440,7 +445,18 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
>  		sr = 0;
>  		wss = 0;
>  		break;
> -
> +	case 20:
> +		sr = 1;
> +		wss = 1;
> +		break;
> +	case 24:
> +		sr = 2;
> +		wss = 2;
> +		break;
> +	case 32:
> +		sr = 4;
> +		wss = 4;
> +		break;

This doesn't really works, wss being the slot size, and you can have a
different slot size and sample size. I have a patch that reworks this,
I'll send it.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--6wxkr4ordbttpslj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPYpmgAKCRDj7w1vZxhR
xa21AQCOpQgoV29jgv0RoMH3aHTxjdGgvHs09RTrroaqdpxRWgEA02ukNRDWozBj
j4PRdKMEMXcX9YvD//OOJzSeiWrRJwc=
=ykij
-----END PGP SIGNATURE-----

--6wxkr4ordbttpslj--


--===============8284298254933551359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8284298254933551359==--

