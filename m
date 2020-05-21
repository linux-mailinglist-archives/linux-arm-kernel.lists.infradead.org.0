Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAC71DCEA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:In-Reply-To:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V84lcjnCUMrgn02Csk4ax5ux3AoyMhMsAa99teh6ijg=; b=TH/xDYrFeRjzc6mvZZYG5HQyn
	ZHYPjRiar8ltkwSUDnd4A57lNp939rOQ+XVgwVy4vLkfLvL40OUhwDJDxBVGkP21NZROnUyUXsCsc
	yFITkVLpTKA37aOI0dQiWO71hce+pUCny0T7fsdpQXAgarSD4RLCfG8W+LXyrw/Y9y2979rdiW1xP
	GpzHd1qMgRwK8c4TYTkgGMnnxZUaKr3HCuVM/9/tvr4x+m/kD0PfZjG1nJOH4r7/0mhkq57uIsLns
	OHecWcZ5OpU/VezxbUpoOeA7n9M/3o/vD10bEpnizIf7INuOHkbN8vhQhnpZNM+NbbWYEhPLyY9Mx
	Q/g0yx2mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbldS-00016I-Ic; Thu, 21 May 2020 13:53:22 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbldJ-00015a-93
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:53:14 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200521135310euoutp012ec60fdbed0cda17e2b7d3cad3c9823d~RD4EMlap00262402624euoutp01C;
 Thu, 21 May 2020 13:53:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200521135310euoutp012ec60fdbed0cda17e2b7d3cad3c9823d~RD4EMlap00262402624euoutp01C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590069190;
 bh=YfRtVo8/rtlJ19IErtdjlJ6JVjpxclDbDa34stjlnO8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=j6FR1biLt8D+cfQ+J7u1OupmI2veRnVbgvB+flxRmCCMO1JyKgbMloYzT7+YW6l9B
 gP7BrtVHJJcohh04Hz//3ZsH1SegnO4Zgr3w8jjREuSQkei53TW03Bqfh52vOTsrtZ
 9p8F5wIvgeOp/ZbAhnWkAYYfOSdYdJFi9K9JuAyU=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200521135310eucas1p21b83ff5816dc51b51e4155298e15dfd5~RD4D-U-pn1391613916eucas1p2l;
 Thu, 21 May 2020 13:53:10 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 85.D2.60679.6C786CE5; Thu, 21
 May 2020 14:53:10 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200521135309eucas1p1c0734570f04660c8b60ea12531f53e60~RD4Dp5vXT2496524965eucas1p10;
 Thu, 21 May 2020 13:53:09 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200521135309eusmtrp2aa4fddb17d67739dcf9feec5996efb4b~RD4DpNwcT1832118321eusmtrp2K;
 Thu, 21 May 2020 13:53:09 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-49-5ec687c6951f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E9.A5.07950.5C786CE5; Thu, 21
 May 2020 14:53:09 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200521135309eusmtip2b27232232bd46d20d6f1afbec6d9c609~RD4DbB-7K0157001570eusmtip2N;
 Thu, 21 May 2020 13:53:09 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Dinghao Liu <dinghao.liu@zju.edu.cn>
Subject: Re: [PATCH] hwrng: exynos - fix runtime pm imbalance on error
Date: Thu, 21 May 2020 15:52:56 +0200
In-Reply-To: <20200520131911.16813-1-dinghao.liu@zju.edu.cn> (Dinghao Liu's
 message of "Wed, 20 May 2020 21:19:10 +0800")
Message-ID: <dleftjmu61z96v.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUhTURjGOd67e6/D2XEavi2LGArZh1pa3uibpC4RGYgQQdZqN5W2GVtm
 5R9+ZOXMUpcfJas008R0mcnaVErEViK6orKCUsnM7ywNTGua8yr03+99nue8530PhyGkIyIZ
 E6s5zWs1CpWcEpNm22T7WttlW1TQ4xGCdRhsNPtkIoVkL5Q8pNgrgz5sVs8Qwb683Uazdns1
 zdb0dIjYrs5JF/ZNnZFib9ifurBF5mtohxv3Z8qAOHOjH1dToae4Z7cqae7xvSTu2kA14t4V
 p9LceM1yTl83Qh1wPSTeouRVsWd4beC2o+KY/PcO4lTmorOWtxY6GWVJMpArAzgErji+URlI
 zEhxOYLCtp+EUPxCcKGvnBSKcQTPLqeIFo7MGK4iwbiP4G++nXYaUtyHwKoPy0AMQ+EAqKo6
 6JS98Eqo702lnXkC6wkoaxgnnYYn3g0T3wuQk0nsBy3TVsLJrjgRsnO75zISHArTQ5mUkxfj
 TVDb30ULuge03Pw6lyGwGm7ah+cGAqxnoNRqooVJwyB14M08e8Lgi9p59oEZ6x0X56CAk+C6
 YaNwNhOB2fibFDKb4VP7FCXwTmjsrSeEvDt8GPEQ7nUHg7lgXpZA+iWpkPYFU1bDfBcZXB0s
 RwJzUF9gEQnvloUgx5ROZaMVhf+tU/jfOoWzbQnsDw/rAgV5NZQVDxECbwWTaZQsQqIK5M3H
 69TRvG69hk8I0CnUunhNdMDxOHUNmv14rdMvfllQ3d9jTQgzSO4m6T5ui5KKFGd059RNyHe2
 05fqB6+QjNTEaXi5l6R40fMoqUSpOHee18Yd0careF0TWsqQcm9J8N2Bw1IcrTjNn+T5U7x2
 wXVhXGXJyMznVPw4S4d4BIWHIyLQ4h+xPSdt1C/vsF/yBs/SUOPH4f1t1mW1pS3v+8aC80YV
 31WOye7E8p5lXrtO7O1MSVvCRirz1ktXl3Ss2rMzcE14c0Ra60VT2T5Za3NLztGKhMrUgUna
 N9241qOrn8lLGgvyfm2OfKQc+3wp18cY+7xBTupiFOtWEVqd4h9uZsX1gAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKIsWRmVeSWpSXmKPExsVy+t/xe7pH24/FGXy6pGHxd9Ixdovt3xtZ
 LJoXr2ez6H4lY9H/+DWzxYl5Z9ktzp/fwG6x6fE1Vov7934yWVzeNYfNYsb5fUwWC7b1MTrw
 ePz+NYnRY9sBVY9NqzrZPPbPXcPusXlJvUffyw2MHlcXNrF7fN4k59G56y1bAGeUnk1RfmlJ
 qkJGfnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+nU1Kak5mWWqRvl2CXsa063+ZC3r4K3Zc
 2cHewNjP28XIySEhYCLxf1IvYxcjF4eQwFJGiYn/ZgI5HEAJKYmVc9MhaoQl/lzrYoOoecoo
 ce19LxtIDZuAnsTatREgNSICGhK7nzaxg9QwC/xnkljy8QojSEJYwE3i+7vpYLaQgLXEme5D
 YDaLgKrEyX87mUFsToFqiQlTHrCA2LwC5hL/XvewgdiiApYSW17cZ4eIC0qcnPkErIZZIFvi
 6+rnzBMYBWYhSc1CkpoFdB6zgKbE+l36EGFtiWULXzND2LYS69a9Z1nAyLqKUSS1tDg3PbfY
 SK84Mbe4NC9dLzk/dxMjMFq3Hfu5ZQdj17vgQ4wCHIxKPLwPko/FCbEmlhVX5h5iVAEa82jD
 6guMUix5+XmpSiK8C/mPxgnxpiRWVqUW5ccXleakFh9iNAX6cyKzlGhyPjDB5JXEG5oamltY
 GpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYNR+GrfUnHO7adfF19qMc+YsaHG5
 9/eXyqSnk3Kddp15PeFldIiSqpJLjYTO20lXdxRM//JWbcvZ9jgWQZYVQqwPvzEUaclt6hQX
 YvQ6vuTmZM3j9Qa1RbFqV59JL9grzNcpVaizx5HFydZ2Tszri6lt9mGT8if9s3S3/vGl3MBW
 //JihZj2EiWW4oxEQy3mouJEAKZFW3z4AgAA
X-CMS-MailID: 20200521135309eucas1p1c0734570f04660c8b60ea12531f53e60
X-Msg-Generator: CA
X-RootMTR: 20200521135309eucas1p1c0734570f04660c8b60ea12531f53e60
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200521135309eucas1p1c0734570f04660c8b60ea12531f53e60
References: <20200520131911.16813-1-dinghao.liu@zju.edu.cn>
 <CGME20200521135309eucas1p1c0734570f04660c8b60ea12531f53e60@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_065313_531053_9734165E 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7173981058874240279=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7173981058874240279==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-05-20 =C5=9Bro 21:19>, when Dinghao Liu wrote:
> pm_runtime_get_sync() increments the runtime PM usage counter even
> the call returns an error code. Thus a pairing decrement is needed
> on the error handling path to keep the counter balanced.
>
> Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>
> ---
>  drivers/char/hw_random/exynos-trng.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/char/hw_random/exynos-trng.c b/drivers/char/hw_rando=
m/exynos-trng.c
> index 8e1fe3f8dd2d..133e017db577 100644
> --- a/drivers/char/hw_random/exynos-trng.c
> +++ b/drivers/char/hw_random/exynos-trng.c
> @@ -165,9 +165,8 @@ static int exynos_trng_probe(struct platform_device *=
pdev)
>  	clk_disable_unprepare(trng->clk);
>=20=20
>  err_clock:
> -	pm_runtime_put_sync(&pdev->dev);
> -
>  err_pm_get:
> +	pm_runtime_put_sync(&pdev->dev);
>  	pm_runtime_disable(&pdev->dev);
>=20=20
>  	return ret;

You are right. I will accept the patch, when you remove the err_clock
label and and change goto instructions above to point to
err_pm_get. There is no point in having two labels.

Thank you.
=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl7Gh7kACgkQsK4enJil
gBBm2Af/SrD1GVby/I1q7EfWsefc/fbhflA6BuaxaeBQftAotiqgfdhW4fSiUyjb
6eG0I7Yq9kppEWBOyUi1qEUypzN9KFvBQ20ey9mqNtj+g+xVXTxmHMjZMrszb41U
tO7ePEx15hrnjro40NmDMlObuJU1PMVb3EZuZbkoM2qiC9S8ktAar1Cuiw2etyMf
yFWlwmjb+H+RsjVokVyQxW+UgZ9BgRFBXgifvHixN4ngrVB6ANSZAjjhNE66v0R3
/8V9R+Z562uWyoqser/x4Nm9ygmBvtB9cKWiHgODK5sycgwuGQYlaFGWWTdZ6P7L
7pFWPeP4nd73lk8OQwAz7w6E9U7Crw==
=o590
-----END PGP SIGNATURE-----
--=-=-=--


--===============7173981058874240279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7173981058874240279==--

