Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDBD19C35D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 15:58:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dg+cjrW3Ol3f/SgV4VYf5wzXIVInAOKoK3W3sAdNCRQ=; b=GT5UoTnLXWqH0mt0wgHUItMXe
	x3URqNB70pKshV6GDPphq0g4UF/8JeHWOH/zvZolQAoQLc8fjAmmHAcuRQR1qtSbZAWhktY0yZSxn
	AbHYGWZ6PuiXOc1O+Hze/QL7mk4ROHhTPjPneA48eqZDgFTzqGdw68FwmPVCVr0BdOXI0wkIXwUrl
	AHUfAtNMftOjOqpB++wMoxn7ivssA1Fb7fN1XM+VkmFyV6CzaFJ2OvCU/eDScwWwZ7yItbIokoFVc
	wcCbnWSZE5dcCXN6tfAxwHbX1E7NsxQlpEjYlCtDHrMbsafjiViT+CBkZzcST9JGyChSxGXjdRW8j
	Yyc3Fb7Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0Lu-00025D-Ts; Thu, 02 Apr 2020 13:57:50 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0Ll-00022p-Mx
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 13:57:43 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id E40DB6000D;
 Thu,  2 Apr 2020 13:57:31 +0000 (UTC)
Date: Thu, 2 Apr 2020 15:57:31 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 2/2] rtc: sun6i: switch to
 rtc_time64_to_tm/rtc_tm_to_time64
Message-ID: <20200402135731.GA625345@aptenodytes>
References: <20200330201510.861217-1-alexandre.belloni@bootlin.com>
 <20200330201510.861217-3-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20200330201510.861217-3-alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_065741_881813_03600416 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5515629973468492489=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5515629973468492489==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline


--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 30 Mar 20, 22:15, Alexandre Belloni wrote:
> Call the 64bit versions of rtc_tm time conversion.
>=20
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

This was successfully:
Tested-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> ---
>  drivers/rtc/rtc-sun6i.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/rtc/rtc-sun6i.c b/drivers/rtc/rtc-sun6i.c
> index 446ce38c1592..e2b8b150bcb4 100644
> --- a/drivers/rtc/rtc-sun6i.c
> +++ b/drivers/rtc/rtc-sun6i.c
> @@ -498,7 +498,7 @@ static int sun6i_rtc_getalarm(struct device *dev, str=
uct rtc_wkalrm *wkalrm)
> =20
>  	wkalrm->enabled =3D !!(alrm_en & SUN6I_ALRM_EN_CNT_EN);
>  	wkalrm->pending =3D !!(alrm_st & SUN6I_ALRM_EN_CNT_EN);
> -	rtc_time_to_tm(chip->alarm, &wkalrm->time);
> +	rtc_time64_to_tm(chip->alarm, &wkalrm->time);
> =20
>  	return 0;
>  }
> @@ -519,8 +519,8 @@ static int sun6i_rtc_setalarm(struct device *dev, str=
uct rtc_wkalrm *wkalrm)
>  		return -EINVAL;
>  	}
> =20
> -	rtc_tm_to_time(alrm_tm, &time_set);
> -	rtc_tm_to_time(&tm_now, &time_now);
> +	time_set =3D rtc_tm_to_time64(alrm_tm);
> +	time_now =3D rtc_tm_to_time64(&tm_now);
>  	if (time_set <=3D time_now) {
>  		dev_err(dev, "Date to set in the past\n");
>  		return -EINVAL;
> --=20
> 2.25.1
>=20
>=20
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--fUYQa+Pmc3FrFX/N
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6F70sACgkQ3cLmz3+f
v9FADgf/Z8x/NG6rzW4iNYoe/p42n/FIn4dXr7WV1OAzVj+G2wBINasXpLZtHsOI
yOoKl5GNGQXF85p1b6sQaZ+FVwA0YqZsGfzum93w0s0YeoQpBSMjhYjUuneHarB0
hsQR0LWjcgTe2/FmvBKgsjZ+iAo+6M+iB0R0M/qVLpFl3vzNltJFPcLTABAbdFOX
WLy84aeTTrwWnvjPkxIZpMQGXkAnEfYe+NlejO/KqlvUZVvOsbVVokqmCk2/4iib
oOV+35FTm8Bg0jwD7VORvp8CcMbNRTDT3dIivW+SzG4qnx2Q1kGyRKxYDpMSdgyc
M+gTvQcwLkm5zpwNxP85+Y0aIqBYxA==
=/1Dq
-----END PGP SIGNATURE-----

--fUYQa+Pmc3FrFX/N--


--===============5515629973468492489==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5515629973468492489==--

