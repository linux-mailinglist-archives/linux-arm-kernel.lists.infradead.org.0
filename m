Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A12D7854
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=taZ0BpY2Ckkn4ldTnv+d3aDFnq0wQyIUxD3A8aD9weA=; b=ORg4mRMnj+d1aDa/YZLN7Et3K
	+PbMp+UQRKRXRO6HfMUiu7twR8g3/CL667HGSv4wVzNNaVY6WKbyZOf3tG1bFV/utVAbwLDs2FCMo
	zF7tm7aiKVRycyfzRSlwNsiqrh/pF2Klc4ZshxxvP+q1ZWDQTjuVRN4oBwwKVxSgL27GX20GSYVLc
	4guESm9L/pPWGDal1r9FDe8h51LMMRoyg27vUcO2g2UhoLurwLOOd+kaBAfH3hKnFrRvxJmgtiRrB
	KVz5jmfJd10FOG8EP3+skjX2y8w06pmCNNp3xrUIM7yR0MQw+x7nHSZf59TZxs4gZnWuRYZIg6h+w
	Tq+wJpqgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKNkC-0007I9-Me; Tue, 15 Oct 2019 14:24:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKNk4-0007HP-LM
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:24:05 +0000
Received: by mail-wr1-x443.google.com with SMTP id v8so24142249wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 07:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FAnSKJ9Pew82PkAXBmKY6NLtUVGPV5vweCMQygZLvvc=;
 b=vdm+Kl7Gd2y8KQLrE/HVhM8oojADmvZGvILZ1fyliGX2ZgMa9FIC9w8kzDxAMJuDjd
 tqCIlnyOggnEoSYxZJ1Y7rUjNA8gBdVlFKsxpYi6hy+nkIaklBboKo7lkhwMrlJaFdcL
 0MgFqVTbuVUK1wuhcUhTp6rfthPK1vSdRge5O5Pcq3XW0+3kZIbigf+Y6dfavg/k4dCB
 ghGvkniJqx3yGmzSZ/i0UOfsGeMwIDESQLlGA6wl4Sfvol8nxxLE84K0mdY9BbZriZMa
 jRZoCjXC1ZUMbID1bn/0THaqWglcm+43TCn6DU24RN3vOs0NIrGxEtg6aXLoyDPw1t9r
 60rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FAnSKJ9Pew82PkAXBmKY6NLtUVGPV5vweCMQygZLvvc=;
 b=unaSwbXBt3uRtbJYPwISRl6l07sX4/2sbPtBB8Pd0ZaFc45hxjEcSanXmz+TvMsCZd
 ITfW8ZNOZhcuuqVQeyu82wCMUT4G9GlfS/dtFhtoVCW/pFMhci6GRzdY4g8QFlXnh+8i
 dwvlK4IMAatsk0Lqp5S1bit/Qcz95MOji9b1u2o/HPIg9YsyOooyiugr+PW6s7ZRQQOB
 agg/j7JEp2eRFDgc2nqel5+7ltFJsqOvIfYmolwUYbFxsxTAGqy2WpjgpAYmSq0kXdwR
 /enGPgncMsiYP//+uQhxfZhrThY63PlCrtNXvBZ2PBZHJLf9qDb/pNQJKWFOyyJXqrPR
 eB/g==
X-Gm-Message-State: APjAAAWuYfblR5ClFXZV2yWnURFI4iyUNs3kMPYlni9nbZxS5RGwysdq
 g6PoZ5g1qknrkLU/Dtreosk=
X-Google-Smtp-Source: APXvYqxMLLgnR0vPxF/fKc2CDYJpM14udBOYJNSRJ7usNIA2JSpBWl8XxRhB+VXeRePSyanx9OYDig==
X-Received: by 2002:a5d:51c8:: with SMTP id n8mr215083wrv.228.1571149442587;
 Tue, 15 Oct 2019 07:24:02 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id f20sm17308471wmb.6.2019.10.15.07.24.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 07:24:00 -0700 (PDT)
Date: Tue, 15 Oct 2019 16:23:59 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 11/36] ARM: s5pv210: split from plat-samsung
Message-ID: <20191015142359.GA1101003@ulmo>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-11-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191010203043.1241612-11-arnd@arndb.de>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_072404_723728_C737091D 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linus.walleij@linaro.org,
 alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-samsung-soc@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 linux-serial@vger.kernel.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-pwm@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jiri Slaby <jslaby@suse.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org, Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Faiz Abbas <faiz_abbas@ti.com>, Olof Johansson <olof@lixom.net>
Content-Type: multipart/mixed; boundary="===============8689526602953539372=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8689526602953539372==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d6Gm4EdcadzBjdND"
Content-Disposition: inline


--d6Gm4EdcadzBjdND
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 10, 2019 at 10:29:55PM +0200, Arnd Bergmann wrote:
[...]
> diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
> index e3a2518503ed..8eb738cac0c7 100644
> --- a/drivers/pwm/Kconfig
> +++ b/drivers/pwm/Kconfig
> @@ -394,7 +394,7 @@ config PWM_ROCKCHIP
> =20
>  config PWM_SAMSUNG
>  	tristate "Samsung PWM support"
> -	depends on PLAT_SAMSUNG || ARCH_EXYNOS
> +	depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS
>  	help
>  	  Generic PWM framework driver for Samsung.
> =20

Acked-by: Thierry Reding <thierry.reding@gmail.com>

--d6Gm4EdcadzBjdND
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2l1n0ACgkQ3SOs138+
s6Eb7xAAsZ9JZaeRn7IjUZs/yz8zD5TWoNpojsmj6Kzf947MW5cgaZEJei22skVy
3Kv1ogZu1N2WO2L7v//P9waAgCs0EuHgeRkT+UgsW2AapaShdkNmMh0tgJNWGFLm
JwwGVB6rfjuBVYQgICBlfKzPdA9KDQNlxJPJmE3lC2kAQ5KWtsWHJIuWpk3zruQK
rZyp33ecFy4Xa+Sxue8CTgyUoHv+t7fhjtpAn/NgMJGy4WGi5lfn8S9bkb9uULHD
cZY4hv+EPC/GAaMQJ6HX9BwGnY1l+Mh8K7uH323OWAMQUqNAgKYuGvhUYSCtLPB1
WNdTjM1kkz93c1pLaikNdKtO3NhqrmXD+fKwmEF7xCQqEfBvPznq4ipHb4MHJEih
YLw8CGBBCX51LOghEJsYi0dMhvWdq4WFJcmXCcjWBYygVWkbvwkdCZSOTdeyI3GE
QTTlWslD1YDL7FuwCYPLBpldFi1JT8hFwP8oK3VTSxmpd4j8mjDKsMHpHtzzTGe/
6Le5t6ewz0rvR5ZFAnZB04VlIFV+l+Zx3e3Bxaqc2h/I6u1yagTZuPSknB7FJRPs
ic4Qr6sfKbK7LMuIIohElzhuVHcEeIfZ3NYAkWh7t9sqefIRrJUcDcPkz3sQ/8Vn
ChkBlbp/IuPwYuSPNI9nf7EW5vFjV7aTYZFXI7mj5M3kK5suvsU=
=4m87
-----END PGP SIGNATURE-----

--d6Gm4EdcadzBjdND--


--===============8689526602953539372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8689526602953539372==--

