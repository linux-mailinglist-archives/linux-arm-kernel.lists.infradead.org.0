Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD636FE91
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 13:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xdQxz3sjAarYz0aUlpciIIAdONqhcOTMHE7FoxF60hM=; b=IGQtyYhqertZaJNIw95TwdBpm
	wNwnf/XxYHFyt5juy60/E1c+H6d88Jx5MzAP8xGTLNrPYe+lu6yaLFQENOqCT4NpRbTprM4G+a/q9
	k79zhL6Mdx/ukYOyCnzgzR8iVPUcqOnmlimILBislhboPkTw4DwRaJ4zBl4nOFFlcmdHwmkt0RY7d
	iZ3mNzuoYJVK6yOZaum52anYFYjMARBZ+qesEhNIw4acixfCagHqvsOszt7Egunv7bm7HaM4dx0Dj
	Sud1ZFeFcFwf61DN8Au9wkrwzSjbD31QRMsxPEM+TaskX6nERQ8eSsTS3CdXEQ+b7lnQgUPVm6G4I
	xoTAqr/qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpWFc-00047q-Or; Mon, 22 Jul 2019 11:13:04 +0000
Received: from kadath.azazel.net ([2001:8b0:135f:bcd1:e2cb:4eff:fedf:e608])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpWFS-00046m-4H
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 11:12:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nRKtjKqcBWW7M2EO6E9825yGNowX3ZQvNK7zSogKi4g=; b=qA5XpTBPSDi+DHEzVIOqvpqNzP
 5bJhYO3axaOUNw4sQFexNJkkynKD8MrWTHgD9LWWjm918agoCb2A690zthGFa9il5uDt7LJQyw6Ek
 lsF/wOt6htqWiYRTImWVxbllR/XM9d3rIXkb2Ct/mmfZwpHzCyiE0THJpzEgtvLyptzKcAPTBxNAu
 DpTYpZBqqTm0QvMN+6Jd4CluE9Kwq1aHkVDXKpUCbUcAHJZwMYywTBzlkdR8yxjaACuqEsz13I6hd
 Bte5RAVWO0fLhjWy2dzTpWRhx/9cLhcA2LcVulMnRadZMnwOUGojI7DzFgbflWhWeTZqnfU1i4/LF
 8Je+kcuA==;
Received: from pnakotus.dreamlands ([192.168.96.5] helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <jeremy@azazel.net>)
 id 1hpWF1-0004e2-S8; Mon, 22 Jul 2019 12:12:27 +0100
Date: Mon, 22 Jul 2019 12:12:25 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH v2] staging: media: sunxi: Add bool cast to value
Message-ID: <20190722111225.GA2695@azazel.net>
References: <20190722060651.6538-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190722060651.6538-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 192.168.96.5
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_041254_172673_11061269 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, maxime.ripard@bootlin.com,
 gregkh@linuxfoundation.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6448073634789475099=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6448073634789475099==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9jxsPFA5p3P2qPhR"
Content-Disposition: inline


--9jxsPFA5p3P2qPhR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2019-07-22, at 11:36:51 +0530, Nishka Dasgupta wrote:
> Typecast as bool the return value of cedrus_find_format in
> cedrus_check_format as the return value of cedrus_check_format is
> always treated like a boolean value.
>
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
> Changes in v2:
> - Add !! to the returned pointer to ensure that the return value is
>   always either true or false, and never a non-zero value other than
>   true.
>
>  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index e2b530b1a956..b731745f21f8 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -86,7 +86,7 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
>  static bool cedrus_check_format(u32 pixelformat, u32 directions,
>  				unsigned int capabilities)
>  {
> -	return cedrus_find_format(pixelformat, directions, capabilities);
> +	return !!(bool)cedrus_find_format(pixelformat, directions, capabilities);
>  }

I think the original was fine.  The return value of cedrus_find_format
will be automatically converted to bool before being returned from
cedrus_check_format since that is the return-type of the function, and
the result of converting any non-zero value to bool is 1.

>  static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
> --
> 2.19.1

--9jxsPFA5p3P2qPhR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAl01mg0ACgkQ0Z7UzfnX
9sNP7Q/8CiUixCeseW+FrbQE9zhblAGy6HdO5TApJGzM51La4NCeZEYwl2v6oRvB
uG6/+E+AjN4nHphI35buzhR2aJm1IGdU+qVpObRG8llcmUCWVHSfyCzpsnCdXX80
klN9+74CM8nZg//4675DsDiAq28h/ygBzr2c+C8G4zV/ycgYW9Q7zUdbSaaRmtUA
gW+vsE4dkKxX4CFgLOeg8dqBIHW9gT+hS2aZPQSp40ZEKKQYAsbAk3XyifLoim5E
sC9DIVJMnj+szfH/C5Pf/GBRhdzLw7Ysf33czJqWZU64CWsMZvxF/ypZXQ/Ynt9r
r+GSZdwV0LIrIkGkOeQ2PISAaZKJvZ4iwW663OOtye7n3C7XnxYtt0PsLlrT5oef
3GCd+whORdefuJDQX0QwzKS8ix1HhW0zi/6sskBkoCpy8RH70s0IsB30uURs6UvF
kNLhBz08Vx/x/AbkwPD988n4raS3IcgD/jPGYjTI1sagif68AUQTn2wMJ29yx9y+
o7Qo68DqgzGviMvO24ygig3K4jABgELuX2v2F3W2KRYMtedLD5nIn4A1Bsh7PjQo
8AO295O64b4Z8RHb68MwwiObmIZj70Aq6LP9cfrOARA+8nxRQU8XEzsdB57URHnA
ebzSt/4+OEbLWFtF9V71L2a6GWRbqw/dEydAxENGaof0UbdiDM0=
=frdo
-----END PGP SIGNATURE-----

--9jxsPFA5p3P2qPhR--


--===============6448073634789475099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6448073634789475099==--

