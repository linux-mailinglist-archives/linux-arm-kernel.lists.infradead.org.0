Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFE7978F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0AFQTsSYfRHfUtAHxjKqhl4ye5wHkY35/FVpxgHJxXw=; b=YVBgKKzKdl3K78O3qFcix6fKH
	ftUR8djET5cbM0cr6+n1oiN6XVJZsfva5EHi4tGVd/RIEk8jI2+JyMnpY2IEJtNhq3K4h0yTb0aW3
	5L0svH3vtDTWVTFCkYwpMn8iZ5byleclBipkjm+sDTMmDdXwI4vjgNzcJPVKwq4B3mwulFyoFFfQy
	blQMGyqDu/oLgn/UAWbE76WcQ/I5TnZUxT5ltFXWW+Y7iBqEkgf+frb3Gtqk/7CNWwWsIvo/ZjhUP
	UhUmUdutl9M9qR/8GGlv3BH3kuihVdHDYWg7Y2xMNuXgYWkidSwqMf4ckvxSgaQDv8Wm3RHNQ4UtA
	1wzvZaHmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0PWJ-0001rc-NZ; Wed, 21 Aug 2019 12:15:19 +0000
Received: from mail-wm1-f98.google.com ([209.85.128.98])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0PW5-0000uU-9t
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:15:06 +0000
Received: by mail-wm1-f98.google.com with SMTP id e8so4653850wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 05:15:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VGZTPAwEFySlPPXASsZQPbUHcTae/+X/wRKQPmmsLlA=;
 b=TeDl75mkinrlXSB74WxiK+RLKefi2OaVpiNwFDszaMlOlCzl7zLpLqLbpWE7sAg9VR
 heciWNCsnHUB4USL/p90oVb7TnvDTRqUh5pT6D0gddQEKCSCJmX5VghWYZTrfJZJxv4C
 41sHqS8HCcMYXG5l7K9KI1Qq4jKLy6I5mVW47AxF2dUZJRrzeiAGwW5m+acA5dFQ/ohK
 fVz5MimW50ke3I/ZFsHI/QiAOB/RkqmNNuGjDvIL+vgAXQp6zRYv3tp+SVX9gQr2RzIW
 4j+QVnOzyPPknTuP23GnGuOd8863AOGodq0knSm9hCvMQoXi7AtYLMzmGLZyvzFb2+AW
 23sg==
X-Gm-Message-State: APjAAAU70yAsmxULdzlKOjj6C/0chmDbNWXy2ElOvArdsq3GxZDIGPyr
 GdRjzAARk46jBYSGgzhTxXXBvbDxUPBOmAB2NiR+6mIJf1JkS61qtW3f15J2zIEi/A==
X-Google-Smtp-Source: APXvYqx72VjNla/WwnS7IIJyQhWoevv0baJnS50eIJ+ckMwP5dp6AWm1BTVGmWHpbrM+BQLgBUNjnoOjjbBg
X-Received: by 2002:a1c:b6d4:: with SMTP id g203mr5774547wmf.100.1566389702638; 
 Wed, 21 Aug 2019 05:15:02 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id w10sm327537wre.38.2019.08.21.05.15.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 05:15:02 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0PW2-00076s-8u; Wed, 21 Aug 2019 12:15:02 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 7E7CB2742FCD; Wed, 21 Aug 2019 13:15:00 +0100 (BST)
Date: Wed, 21 Aug 2019 13:15:00 +0100
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 21/21] ASoC: sun4i-i2s: Add support for DSP formats
Message-ID: <20190821121500.GI5128@sirena.co.uk>
References: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
 <74cc9562e056627e14f186089d349022b65f59e7.1566242458.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <74cc9562e056627e14f186089d349022b65f59e7.1566242458.git-series.maxime.ripard@bootlin.com>
X-Cookie: Sic transit gloria Monday!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_051505_352011_797C2193 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.98 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, codekipper@gmail.com,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2043041474223670550=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2043041474223670550==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5uO961YFyoDlzFnP"
Content-Disposition: inline


--5uO961YFyoDlzFnP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 19, 2019 at 09:25:28PM +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>=20
> In addition to the I2S format, the controller also supports the DSP_*
> formats.

This doesn't seem to apply against current code, please check and
resend.

--5uO961YFyoDlzFnP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1dNcMACgkQJNaLcl1U
h9D3iQf/bXRJ2E8Ojq2kL+wJHey9oZmklhShBIGtZToXjBYiLvXOKxDZF0oAkhMI
gEFuZrDp/IDMtsTlXJ3OGhenBm6x6gQH+H2aTrUetM5G88JZ4c8kpJbG2s7Fvgvh
AE/yrrimb4wSW4LVbrmoe4e0N9M4V8VkG23BeJUBkQ3FVkcfTgVfLyoEdR+cvTlJ
Qyx58lTPdnnjkiW8df6XpND3ecO0sEyhdyJcNfLPNU/iXTuyK4wI30zujrwdRTyF
fJAfg4uzwkBDP3/vMftf6RwwDmK56MfRkeLYicwHkOTVWZsyht7TFuqW7k74Uy1J
UUaqo75QN/JdI7QkSurXjhmilrAIdw==
=cEmS
-----END PGP SIGNATURE-----

--5uO961YFyoDlzFnP--


--===============2043041474223670550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2043041474223670550==--

