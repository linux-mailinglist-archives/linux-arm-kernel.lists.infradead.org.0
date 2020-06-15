Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6FE1F9825
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:In-Reply-To:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hr/V1X7VH6ySi/zeeLww5b9qyPHjmlCXWE/0w4raBHo=; b=QJa3KDZaNbS96HO+Y4aoPwUip
	+/8BSGHniByXWvLHcbtzQ5vmFGHhmQRErNAPelamt4PSvkDpkeZNuSHwwsK+5aSx8xXdP0pGBDVDo
	N/GNbFJId9txXRdOafS/3Z9LqStN835hDmonaru6daX+dazmWPV0UBjtHrEinRFy9JZFfnJ19QHwR
	rd7ooZH8nORBZtfPje88qEnmwkCvoOo5JgeWpUmTUnHnNpFWKV/rwOJo2VlNzbh5eejsTd8dDjU3W
	Z+MSbsC24gPS8k29Xl2WRIfYV41EAi+OELs6tDZ0gpsiw3GdKF8chc1yLP3zm7Kcjb+1kDiA4BWEH
	42/RQvqrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkp1Q-0003ee-K4; Mon, 15 Jun 2020 13:19:32 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkp1E-0003e6-Vr
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:19:22 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200615131916euoutp011d38515942b39713ac1d2dc174e6aaed~YuimTRvJm1674416744euoutp01a;
 Mon, 15 Jun 2020 13:19:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200615131916euoutp011d38515942b39713ac1d2dc174e6aaed~YuimTRvJm1674416744euoutp01a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592227156;
 bh=00ri6SjJ/Rg0Aq+3qPbzYS+SXvTUwFNZD2ZH7+gh94E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=N8PBRNBYjNMTegmSoc8kZy+p8dMQ83Y6g66tLj2fS+X3gd1QRzH//38ZCuyimf11y
 9dnTdyMqImSGISkG3pNzkhAyvvdJJi4VsUJSjdbI7H2ZGnWxIztOuXdt84Gm0nfh+c
 7UAYB9SGMpgBgIQwpDQSVLSdh6ENQpe65U/4S8tA=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200615131915eucas1p1796b65e90b8a159402861ec28b7337ab~YuimC0hnP3201032010eucas1p1K;
 Mon, 15 Jun 2020 13:19:15 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 56.27.60679.35577EE5; Mon, 15
 Jun 2020 14:19:15 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200615131915eucas1p2b8f3fa0ceb757e36aa888a4476de034f~YuilpaNVb1888918889eucas1p24;
 Mon, 15 Jun 2020 13:19:15 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200615131915eusmtrp172486c8255f4901a8088cd62f8f10c53~YuilooOqc1483814838eusmtrp1-;
 Mon, 15 Jun 2020 13:19:15 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-f8-5ee77553f2b3
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D9.DE.07950.35577EE5; Mon, 15
 Jun 2020 14:19:15 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200615131915eusmtip2d89aa304f9db47fdd67564bdbdeeea88~YuilfCWxZ0995509955eusmtip2L;
 Mon, 15 Jun 2020 13:19:15 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: wu000273@umn.edu, Herbert Xu <herbert@gondor.apana.org.au>
Subject: Re: [PATCH] char: hw_random: Fix a reference count leak.
Date: Mon, 15 Jun 2020 15:18:54 +0200
In-Reply-To: <20200613214128.32665-1-wu000273@umn.edu> (wu's message of
 "Sat, 13 Jun 2020 16:41:28 -0500")
Message-ID: <dleftjr1uglb5t.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTcRTH/e3ebdfVjV/XpINFyHJRRlr2ulJKSsT9I8JeYFLWqotK25TN
 WQahKWSaOlNCXQ8fhTPNaatGLbEwH5XoKlF7WFIa062HpVRqWc5r4H+fc873nPM9P34UwQyL
 fag4TSKv1ShVcomMtLaMdazarXdEr7Z1L2f/5LdI2fSrtRL2nHMxa+h3EezjK+1S1m6vk7KW
 /m4x2/duTMR22i5J2CJ7g4gtteYi9u9Eh5jNaT4t2UJzE+P5iLM+VHCWqkwJ9+DyDSl361oK
 Z7q3jssdqkNcV1malBuxLInwjJJtPsqr4pJ4bWDoIVlsXnNEwmfmRLUhXZKKinAW8qQAr4Oh
 zDQiC8koBlciqDUMiIRgFMHri4VICEYQFL8vkfxvMVkHkJsZbELw7MYpQeRAUFNfK85CFCXB
 AVBTE+nWLMChYDFZp1cQ+BwBBdkOwl3wwmHw5OkX0s0kVkDf1Sapmz2xCsx1FSI303gjfP94
 f3qZNw6G24N9UiE/H54UD0z3ElgNxfZP004Bn6cgp+oVEpxuBUPziEhgL3C23pYKvBjaCrJJ
 t1HAKVCQv0HozUZgvfSLFDSboLdjfObiMCjpuSUW9PPg5ef5wt55kG8tJIQ0DWfPMILaD8yG
 +pkpPpDjrJxxw8FP13NSeKtMBC/S2kV5yNc46xzjrHOMU2MJvAJqbYFCeiVUlLkIgUPAbP5K
 liJxFVrI63XqGF4XpOGPB+iUap1eExNwJF5tQVN/r22ydfQusv0+3IgwheRz6chdjmhGrEzS
 Jasbkd/UpA911c+QD6mJ1/DyBXR4e1s0Qx9VJp/ktfEHtXoVr2tEiyhSvpBeWz50gMExykT+
 GM8n8Nr/VRHl6ZOKjgPNeIQEz9k219qT2rvHa9kbxU4Xk/foZcX9I7GqkPD23r101ElFbtDK
 fREJ6RmjY+WTkya5Sz5Y8davadAY8620IepRZ9z4j0j/iO1v3jqMQRf879Qbu5PWd8l+NAx5
 3PXdoUiyk5szCp1gLPJ+UZASsD+7a/fw0psdRu+wP9flpC5Wucaf0OqU/wAgRq1BgwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBIsWRmVeSWpSXmKPExsVy+t/xe7rBpc/jDI6t47f4O+kYu0Xz4vVs
 Ft2vZCz6H79mtjgx7yy7xfnzG9gtNj2+xmpx/95PJovLu+awWcw4v4/JYsG2PkaL/7/PsVr0
 Hm1kc+D1+P1rEqPHtgOqHptWdbJ57J+7ht1j85J6j+U7TTz6Xm5g9Li6sInd4/MmuQDOKD2b
 ovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1MlfTublNSczLLUIn27BL2MCUcDCt4K
 Vazub2ZrYJwh0MXIySEhYCKxfNsTxi5GLg4hgaWMEuvudbN3MXIAJaQkVs5Nh6gRlvhzrYsN
 ouYpo8SU+3cYQWrYBPQk1q6NAKkREbCT2LR8GzNIDbNAI7PEwdl/WEASwgKOEidPvQOzhQRM
 JVYf2sIEYrMIqErcX3yEHcTmFMiReDPvNSOIzStgLvHp6W4wW1TAUmLLi/vsEHFBiZMzn4DN
 YRbIlvi6+jnzBEaBWUhSs5CkZgGdxyygKbF+lz5EWFti2cLXzBC2rcS6de9ZFjCyrmIUSS0t
 zk3PLTbSK07MLS7NS9dLzs/dxAiM2W3Hfm7Zwdj1LvgQowAHoxIPb0TQ8zgh1sSy4srcQ4wq
 QGMebVh9gVGKJS8/L1VJhNfp7Ok4Id6UxMqq1KL8+KLSnNTiQ4ymQH9OZJYSTc4Hppm8knhD
 U0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2MZXNEG6+FtO1yUr3qabvs
 mEnuTZ/v53UqWKr6n1xdrlj36cjpZ0mrbVQ+2bpXvZ17aNp5OcNznYwelxZzfJvnnO4k/rZt
 X1iXhYTR1tln80KDetc3LE8+P0F544qq89t3mYrN/+EaoSC+OMPzzuczx2JP60isrV50fbHk
 JY/0l2kPlx9/9dhSTomlOCPRUIu5qDgRAAhbSw37AgAA
X-CMS-MailID: 20200615131915eucas1p2b8f3fa0ceb757e36aa888a4476de034f
X-Msg-Generator: CA
X-RootMTR: 20200615131915eucas1p2b8f3fa0ceb757e36aa888a4476de034f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200615131915eucas1p2b8f3fa0ceb757e36aa888a4476de034f
References: <20200613214128.32665-1-wu000273@umn.edu>
 <CGME20200615131915eucas1p2b8f3fa0ceb757e36aa888a4476de034f@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_061921_230002_8664520B 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Philippe Ombredanne <pombredanne@nexb.com>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-crypto@vger.kernel.org,
 Matt Mackall <mpm@selenic.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3961380104227966674=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3961380104227966674==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-06-13 sob 16:41>, when wu000273@umn.edu wrote:
> From: Qiushi Wu <wu000273@umn.edu>
>
> Calling pm_runtime_get_sync increments the counter even in case of
> failure, causing incorrect ref count if pm_runtime_put_sync is not
> called in error handling paths. Thus replace the jump target
> "err_pm_get" by "err_clock".
>
> Fixes: 6cd225cc5d8a ("hwrng: exynos - add Samsung Exynos True RNG driver")
> Signed-off-by: Qiushi Wu <wu000273@umn.edu>
> ---
>  drivers/char/hw_random/exynos-trng.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/char/hw_random/exynos-trng.c b/drivers/char/hw_rando=
m/exynos-trng.c
> index 8e1fe3f8dd2d..ffa7e0f061f0 100644
> --- a/drivers/char/hw_random/exynos-trng.c
> +++ b/drivers/char/hw_random/exynos-trng.c
> @@ -135,7 +135,7 @@ static int exynos_trng_probe(struct platform_device *=
pdev)
>  	ret =3D pm_runtime_get_sync(&pdev->dev);
>  	if (ret < 0) {
>  		dev_err(&pdev->dev, "Could not get runtime PM.\n");
> -		goto err_pm_get;
> +		goto err_clock;
>  	}
>=20=20
>  	trng->clk =3D devm_clk_get(&pdev->dev, "secss");
> @@ -166,8 +166,6 @@ static int exynos_trng_probe(struct platform_device *=
pdev)
>=20=20
>  err_clock:
>  	pm_runtime_put_sync(&pdev->dev);
> -
> -err_pm_get:
>  	pm_runtime_disable(&pdev->dev);
>=20=20
>  	return ret;

I believe this fix has already been submitted

    https://lore.kernel.org/linux-arm-kernel/20200522011659.26727-1-dinghao=
.liu@zju.edu.cn/T/#u

It hasn't been applied though. Anyway, thank you for your work.

Herbert, could you take a look at the Dinghao's patch, please?
=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl7ndT4ACgkQsK4enJil
gBD/fgf+PrssB4H9APSVtgC1hd9Nwwi8U9rocQl1m7+V1pb7Vu9MFM4Hx1MRDHRr
mJZ5eW5fOHRVsU2z6ryFP1b7SjzPOjzvP+hItfGjwcbKXtCwwanaGxnHAbLsgYya
PS232AaRE6TShah294Y4LKyRK1b9rlebdrltcznt4ENzSPAadjOq/I1mqHBpz8My
yI45lWlJ7tFOokRtfwEWvUka4T/omtUbH27m7a2yVwGjmF45OAcqnxtqKNFlRPrS
j3+hIMwrNHq68s8o4YpPkj/K3OHFeFxgHLA+AUTvJrW3ZnKaPCstXoUCNMAPZJwV
aoev1fOx6RaRfte97fSLbNIi2m3sFw==
=UOtD
-----END PGP SIGNATURE-----
--=-=-=--


--===============3961380104227966674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3961380104227966674==--

