Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 880AB35A31
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 12:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d4inPdaQLBaxhBrkg86YpiBroF3QfpFJvG3x5dtluG8=; b=cgtxP+41+HX9WL3c4MlDq283v
	XfUPRArs4k4I8w0I//pqOSgMAZfvz2XAtBNra9furBB+Z3s9oAvJuvvWXIGvuY7hXBE5hYRXA97vE
	HN6+qJIoKAM1itc+igZcPFE0jbUrV1GC0O2txWzK0wyS0R/hcqYEyyuq/8OZbQLdxRZhTIbhI++mQ
	oDm6n2Y/DMGfVQf/Ox7VmFDx4ROGH/ePL2SXqzlZsuhMK5tTb7oZq3bMceAxqB2O9DoDyeGYurxcn
	Trt8Q/vX+6NVCVgIU8H3gj6z78rGz38lbPpodRb7nKAOyCmsrli/1mZBoQY3tgLy4HzJxatB0dH1+
	2HxLk70cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYSr3-0007Qn-NT; Wed, 05 Jun 2019 10:09:13 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYSqt-0007Jw-U7
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 10:09:05 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 74011240005;
 Wed,  5 Jun 2019 10:08:45 +0000 (UTC)
Date: Wed, 5 Jun 2019 12:08:44 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] ASoC: sun4i-i2s: Change SR and WSS computation
Message-ID: <20190605100844.kzaw7r3zasfqhnuu@flea>
References: <20190604085449.13195-1-maxime.ripard@bootlin.com>
 <20190604144517.GF2456@sirena.org.uk>
MIME-Version: 1.0
In-Reply-To: <20190604144517.GF2456@sirena.org.uk>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_030904_153940_E9BA7FE2 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6027104896691045339=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6027104896691045339==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qhomvzhpyiavwpcf"
Content-Disposition: inline


--qhomvzhpyiavwpcf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jun 04, 2019 at 03:45:17PM +0100, Mark Brown wrote:
> On Tue, Jun 04, 2019 at 10:54:49AM +0200, Maxime Ripard wrote:
> > The current computation for the SR (sample resolution) and the WSS (word
> > slot size) register parameters is based on a switch returning the match=
ing
> > parameters for a given params width.
>
> This doesn't build for me with current code:
>
>   CC      sound/soc/sunxi/sun4i-i2s.o
> sound/soc/sunxi/sun4i-i2s.c:169:28: warning: =E2=80=98struct sun4i_i2s=E2=
=80=99 declared inside parameter list will not be visible outside of this d=
efinition or declaration
>   s8 (*get_sr)(const struct sun4i_i2s *, int);
>                             ^~~~~~~~~
> sound/soc/sunxi/sun4i-i2s.c:170:29: warning: =E2=80=98struct sun4i_i2s=E2=
=80=99 declared inside parameter list will not be visible outside of this d=
efinition or declaration
>   s8 (*get_wss)(const struct sun4i_i2s *, int);
>                              ^~~~~~~~~
>
> and lots of similar stuff.

Sigh, so much for sending a patch part of a branch...

Sorry for wasting your time on this, I've sent a v2 with this fixed.

Maxime


--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--qhomvzhpyiavwpcf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPeUrAAKCRDj7w1vZxhR
xScXAPwN8ypur7UlU8bNKMKWbFc0f1dSEHVT5ZDOnsRZQKzswwEAi27OmMmw2FeN
7aj+QHjqrk9psWgk+O/LHTS3NFkUcAM=
=vzYH
-----END PGP SIGNATURE-----

--qhomvzhpyiavwpcf--


--===============6027104896691045339==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6027104896691045339==--

