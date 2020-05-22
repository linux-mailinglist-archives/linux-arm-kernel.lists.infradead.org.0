Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9941DE298
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 11:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:Date:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KTpIN2tlrnHeN2e24DrxABm+nrIiAJc8+BhFnZnfeEY=; b=FLzYJcdORzdq2d35tInPyYC9u
	A2WFRzDFV8PUEZAWHejVUUdgJcyx3RcxucBPQprHvBMXdvnuUdqbdmO7yO0sesmfzGJWg/jmgjvqz
	vEAydWesbfmzBSmnh7CBPlhHisRv+pL4M8Ujc/bVhNfre2WJkvbARmu/9462elNGwmdpo0DwSHMlk
	64SilqRJTDGP1ddGZT49SEfiR1m9IxCtRKl700cc8yRzqvLtiCOcfmA+YDZD3LTuh/UTSMRazsUeF
	lvZK7taZUazjW4tqfd03kG72fudGDqDjUXEeje1HHEqS3DwVq/4R7JN+ABkb/tc7n7IhpFWugHW3d
	uXjXVrwVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc3eg-0000ZP-Jx; Fri, 22 May 2020 09:07:50 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc3eW-0000YB-5f
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 09:07:42 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200522090737euoutp02fcebc4052c828f10adfaae263e9083eb~RToCAmEDm3252632526euoutp02d;
 Fri, 22 May 2020 09:07:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200522090737euoutp02fcebc4052c828f10adfaae263e9083eb~RToCAmEDm3252632526euoutp02d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590138457;
 bh=LAJlAB+Cl4QZToEXloGJT78LJ66J5myMnOOW1nh9Qhc=;
 h=From:To:Cc:Subject:In-Reply-To:Date:References:From;
 b=pDqHzZ2NDNTjaklpjSTBfU3XfCScZa2fXfsVH/Pc2664IlhWOH1JsRFI3QsCiBq5l
 kNuEBXuUu0bW0McSY1RMSng7Vy8wzGnjjBeSnp87PnhOemjePd18OXaXwG49IcXXrY
 DyA6rSNSafwsrgJq7GaWEzOaVTwfo3qT0VzvTICQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200522090737eucas1p163e418a4d66ff2b5eb8f7f071ca46d89~RToByECRN2903729037eucas1p1F;
 Fri, 22 May 2020 09:07:37 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 6B.36.60679.85697CE5; Fri, 22
 May 2020 10:07:36 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200522090736eucas1p1ad308b9b37d50d9243f0fbeeeb3eab0a~RToBeOF0B0435204352eucas1p1N;
 Fri, 22 May 2020 09:07:36 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200522090736eusmtrp1121791b9d914631c03aaf13a893bde84~RToBdcSaz1310913109eusmtrp1U;
 Fri, 22 May 2020 09:07:36 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-02-5ec79658ba3d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 90.46.08375.85697CE5; Fri, 22
 May 2020 10:07:36 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200522090736eusmtip269ccc5281a270cb5335b0ae711f262b7~RToBSCf9a1808618086eusmtip2X;
 Fri, 22 May 2020 09:07:36 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Dinghao Liu <dinghao.liu@zju.edu.cn>
Subject: Re: [PATCH] [v2] hwrng: exynos - Fix runtime PM imbalance on error
In-Reply-To: <20200522011659.26727-1-dinghao.liu@zju.edu.cn> (Dinghao Liu's
 message of "Fri, 22 May 2020 09:16:59 +0800")
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
Date: Fri, 22 May 2020 11:07:11 +0200
Message-ID: <dleftj1rncz6bk.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTQRiAM93t7lIsDgXlDyIxDRqPiGd0CXglPqz64iOaiFbdAJEW0gUU
 CQGPEC5Bi3IFD44oR4GCtZpqUGoEBWzrhUZRpCByWE0QUwVBKVsT377/+uafyTCEwiUNZGI1
 ibxWo4pTUjLS1P7LtjqyqCNq7a3BcHZa106zzSVNUva26xTJnqlqotjc0SC2YGCMYB9feUqz
 NpuBZlsGeqRs34dfEvaFuZxiS2ytEvaaKR9tl3NTkzrEmR4s5Vrqsinu/mU9zd2sTufyjXWI
 yx8xIO5VxWma+94SzGWbndRe2X5ZxFE+LjaZ167ZekgWk/lymEwYU5zIsmZJMtBZnIO8GMAb
 oWfiGZ2DZIwC1yAw2nM9wQSC6UmrJ/iOYHC6gfg3kj3+DImFGwj0w31SMfiMoDO3XpKDGIbC
 odDQEOke8MfL4e6n03MmArcR4LxqmTP54T2gsw9K3eyFU8H8egi5eQEOA+NwH+32kHgptFb7
 u9NyvBnOVBZKRPaFJ6WDpJsJrIZS25e5hQCXMmD6Ou7ZdCd0l9R62A9GO4y0yEHQVZhHuv2A
 06FQt0mczUNgKv9Jij3h0GudpETeAWUOIyH2+8Abp694rg/oTMWetByyMhVidwg0FtzzWALh
 3GgNEpmD5k6X56kKEHy88JY+j5aU/Xedsv+uUzarJfAKaDKvEdOr4HrFGCHyFmhs/EZeQ9I6
 FMAnCepoXliv4Y+HCiq1kKSJDj0Sr25Bs1+wa6Zj4g4y/z5sQZhBynnyj0faoxRSVbKQorag
 kFmTw1BvR4GkJl7DK/3lFfMfRSnkR1UpJ3lt/EFtUhwvWNAihlQGyDdUjhxQ4GhVIn+M5xN4
 7b+qhPEKzEAXVbt3D/Rus0tGpoIeGnwuDdVIq7am67vsSfuyau1h3vpkRwDrndG/yjGTZk3r
 K4g9+yjjcnxC+HyXEKzt77eSC7ctswgR27udcRfIIf3hVGVu9nuq/vafjm86g5DqLHY0bNiV
 aXGlPn6ODxb9aAv9TIQtfqAceuntNFLvbJVKUohRrVtJaAXVX9WfYm2KAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrHIsWRmVeSWpSXmKPExsVy+t/xe7oR047HGbz5omLxd9IxdouNM9az
 Wmz/3shi0bx4PZtF9ysZi/7Hr5ktTsw7y25x/vwGdotNj6+xWty/95PJ4vKuOWwWM87vY7JY
 sK2P0YHX4/evSYwe2w6oemxa1cnmsX/uGnaPzUvqPfq2rGL06Hu5gdHj6sImdo/Pm+Q8One9
 ZQvgitKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxLLdK3S9DL
 aLvygqXgtVBFx7kOpgbGFoEuRk4OCQETic5PFxm7GLk4hASWMkpcnruVuYuRAyghJbFybjpE
 jbDEn2tdbBA1Txkltv/8CFbDJqAnsXZtBEiNiICGxO6nTewgNcwCW5kl3n74yQqSEBbwlph0
 4QmYzSlQLbHr+jNGEFtIwFrizfHrzCC2qIClxJYX99lBZrIIqErsWyICEuYVMJdoXjSZCcIW
 lDg58wkLiM0skC3xdfVz5gmMArOQpGYhSc0CmsQsoCmxfpc+RFhbYtnC18wQtq3EunXvWRYw
 sq5iFEktLc5Nzy021CtOzC0uzUvXS87P3cQIjN9tx35u3sF4aWPwIUYBDkYlHt4HycfihFgT
 y4orcw8xqgCNebRh9QVGKZa8/LxUJRHehfxH44R4UxIrq1KL8uOLSnNSiw8xmgK9M5FZSjQ5
 H5hy8kriDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MKZv/el+h6lV
 VmQLV9n0xlcb1ubKXi56OneChkGp3sUtNift5Ze6C+XEREW98/6TmzSZxevR0fStJ2odO2tz
 P6sE/bGRv7I/lOtwkOavnCk59gyhGe1patGLWnZo7ra69mdbYZsQo1iy4mVXBr+wx8ckHsyM
 YtJJPfKz30fy1Ya+i4tqQx8eU2Ipzkg01GIuKk4EAGVzO/UBAwAA
X-CMS-MailID: 20200522090736eucas1p1ad308b9b37d50d9243f0fbeeeb3eab0a
X-Msg-Generator: CA
X-RootMTR: 20200522090736eucas1p1ad308b9b37d50d9243f0fbeeeb3eab0a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200522090736eucas1p1ad308b9b37d50d9243f0fbeeeb3eab0a
References: <20200522011659.26727-1-dinghao.liu@zju.edu.cn>
 <CGME20200522090736eucas1p1ad308b9b37d50d9243f0fbeeeb3eab0a@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_020740_412649_42CB7432 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-crypto@vger.kernel.org,
 Matt Mackall <mpm@selenic.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1893168445437153862=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1893168445437153862==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-05-22 pi=C4=85 09:16>, when Dinghao Liu wrote:
> pm_runtime_get_sync() increments the runtime PM usage counter even
> when it returns an error code. Thus a pairing decrement is needed on
> the error handling path to keep the counter balanced.
>
> Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>
> ---
>
> Changelog:
>
> v2: -- Remove unnecessary 'err_clock' label
> ---
>  drivers/char/hw_random/exynos-trng.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>

Reviewed-by: Lukasz Stelmach <l.stelmach@samsung.com>


Thank you.

> diff --git a/drivers/char/hw_random/exynos-trng.c b/drivers/char/hw_rando=
m/exynos-trng.c
> index 8e1fe3f8dd2d..8393b898a50e 100644
> --- a/drivers/char/hw_random/exynos-trng.c
> +++ b/drivers/char/hw_random/exynos-trng.c
> @@ -142,13 +142,13 @@ static int exynos_trng_probe(struct platform_device=
 *pdev)
>  	if (IS_ERR(trng->clk)) {
>  		ret =3D PTR_ERR(trng->clk);
>  		dev_err(&pdev->dev, "Could not get clock.\n");
> -		goto err_clock;
> +		goto err_pm_get;
>  	}
>=20=20
>  	ret =3D clk_prepare_enable(trng->clk);
>  	if (ret) {
>  		dev_err(&pdev->dev, "Could not enable the clk.\n");
> -		goto err_clock;
> +		goto err_pm_get;
>  	}
>=20=20
>  	ret =3D devm_hwrng_register(&pdev->dev, &trng->rng);
> @@ -164,10 +164,8 @@ static int exynos_trng_probe(struct platform_device =
*pdev)
>  err_register:
>  	clk_disable_unprepare(trng->clk);
>=20=20
> -err_clock:
> -	pm_runtime_put_sync(&pdev->dev);
> -
>  err_pm_get:
> +	pm_runtime_put_sync(&pdev->dev);
>  	pm_runtime_disable(&pdev->dev);
>=20=20
>  	return ret;

=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl7Hlj8ACgkQsK4enJil
gBDRDgf/QL0m9IpHrTs4brf2dXxQomAaGUw4FEMmyibxtjTI29tkohcH6FEiXj6f
rsGopDupsB84vj4FRgBSTmOff68IzK754VUKTUO7PQIKO/nqnjcI6SnqJW0BcmQ5
7ufw3mcrIYdKzjHZJjepq71BWcxBe3rYhKO78Hi9QuMojn9M42bp/54EwYJ36ODR
Thvt66oRP3ktSqqjBBrsd+suPYn/Zr4eW553GsA/08EsV6PONcRx34NPdLwEd8oB
z/5TBNIdOHBwWLHjc+AOPhsPEQ+OZLw06++C4PnFKlkBX/RU7HZy5CTVQS3eyak/
0Rah/S9PSELxLUl6kBvYX/D5HrPpZA==
=9roz
-----END PGP SIGNATURE-----
--=-=-=--


--===============1893168445437153862==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1893168445437153862==--

