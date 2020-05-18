Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FD41D7F6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 18:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sovoKzyEouz6dYDEFjM6jEgiKlkMA0PArs3ewqJMZyw=; b=mWcNX739U7m/RcZpzr+wEEyp2
	t2Al61ksWHd/NNYNlB2TKtH19cIWDm8P4oQ/L7T3mh42AKDHjI9K3tYck6VlfaxRHs+Fbuy47bemn
	pDvCjRh/+jVtA0dzAMTSzIf5euhmsIJgENPGlyg6Ih78ukqMF/7WcKVar/WOMpdc3j46E26c/ePwc
	kf1hTkUjdBO/zLH7HpVeIzFF/s+xgFyB5MOWGHajGp6TKPidW1cpJtPQjDsuMdmZKSvmGpDStGySR
	r/0X3XyGKyyaslC+qxP59XJkKAfRtN22gI2VmlQm5Zm170LIJXdLAi8CI3EsYDjudnRZ6lhPe/lta
	3Ul3IDX3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaj76-0005Jd-H4; Mon, 18 May 2020 16:59:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaj6x-0005Io-Qk; Mon, 18 May 2020 16:59:33 +0000
Received: from localhost (p5486cdc1.dip0.t-ipconnect.de [84.134.205.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9804F207ED;
 Mon, 18 May 2020 16:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589821171;
 bh=w0HNXMQtb5MPVWf1AAAYPOcwduF4qerzU22fA0gSZiY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HHEGijKf2tjytccux+SuPlDtZb3iKDYVNS3Ck6aivHYkEgdwJogUZYvrqXz6/6nBd
 s+TW35CSH6gLtriPMS/4JmHCYvVcQFvC0xyfm2hZ7H8e+HGLqiYSqRYKAcmUixHg+8
 n8ycxmeFNXpxpd/UERdMwyR6PRtqDnuwYSa8pjt0=
Date: Mon, 18 May 2020 18:59:28 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Colin King <colin.king@canonical.com>, qii.wang@mediatek.com
Subject: Re: [PATCH][next] i2c: mediatek: fix integer overflow on an integer
 multiplication
Message-ID: <20200518165928.GA5109@ninjato>
References: <20200518165529.57821-1-colin.king@canonical.com>
MIME-Version: 1.0
In-Reply-To: <20200518165529.57821-1-colin.king@canonical.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_095931_883579_4D78BC60 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5722158020302385478=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5722158020302385478==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bg08WKrSYDhXBjb5"
Content-Disposition: inline


--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 18, 2020 at 05:55:29PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
>=20
> Currently the calculation of sample_ns is using a 32 bit integer
> multiplication and can potentially overflow. Fix this by making the
> constant a long long to use a 64 bit multiply and hence
> avoid an overflow.
>=20
> Addresses-Coverity: ("Unintentional integer overflow")
> Fixes: 5f1ae73d538a ("i2c: mediatek: Add i2c ac-timing adjust support")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

CCing the patch author.

> ---
>  drivers/i2c/busses/i2c-mt65xx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt6=
5xx.c
> index 702061805925..c93492b997ce 100644
> --- a/drivers/i2c/busses/i2c-mt65xx.c
> +++ b/drivers/i2c/busses/i2c-mt65xx.c
> @@ -551,7 +551,7 @@ static int mtk_i2c_check_ac_timing(struct mtk_i2c *i2=
c,
>  	const struct i2c_spec_values *spec;
>  	unsigned int su_sta_cnt, low_cnt, high_cnt, max_step_cnt;
>  	unsigned int sda_max, sda_min, clk_ns, max_sta_cnt =3D 0x3f;
> -	long long sample_ns =3D (1000000000 * (sample_cnt + 1)) / clk_src;
> +	long long sample_ns =3D (1000000000LL * (sample_cnt + 1)) / clk_src;
> =20
>  	if (!i2c->dev_comp->timing_adjust)
>  		return 0;
> --=20
> 2.25.1
>=20

--bg08WKrSYDhXBjb5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7CvuwACgkQFA3kzBSg
KbZ6Aw//ZeFST6GFjXIXi4OO9acwzfy4x/KqHdw2rfZlnN+ZtibcHk91s8Rnkdxk
7H8sRbJ+28ketszWJnKuhtD8z0+itUi9H2mgbV/RKhPfAzWOoLdt6fLq9OA0KzZh
Ap82nlpIpeVdr7RK+YxcUE9imjdX5bO9fZszo7uwupiUvYm+8hg2K+N8/ZS9Gz74
AEVfRRONIT9Eg+sGk+QNa8wXRitDVsXWrO9ZCWOwEJENotDFCzhUp1qv8AvoF6tq
x0LdEjnpKBe+1rl990NdipL5JBOkh6XTiWer9juE9RyRHZVshuj9CAvyVFYGHCrB
eXB7Ay8S1zkvNgK9kCD3zf1op1kCAiy27RIB2VMlyMX/FzoI/grRInTgO+ApmFW2
e4ZnM38h3lLBXZcho3JjONGt13IMhG0nTR+IWD8yEluXhoKEqZ6EU57GowCS8/sq
it5j0wZZFHLiAMty57Jg4run6MwIDkoCMZqQuPAO17kFstPBKZ8tNIQi1one8CwU
MjgT8Z8yZfaTffAWrhAEldeB3osQfGMbA3mQGdGtLgk5lNNvEAGEWNENzUduANJx
Pj1pvoNcT4rMrLawMbUQbcYLdk4s2vULjtEkyGIbWoNhhJRGT1W9GwmDWaIoiMoh
6xb0jHycEOQOW1xyc7Iw5d2wS67l2y92J0ruBCvYgbUJ1bkJfUA=
=KBYJ
-----END PGP SIGNATURE-----

--bg08WKrSYDhXBjb5--


--===============5722158020302385478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5722158020302385478==--

