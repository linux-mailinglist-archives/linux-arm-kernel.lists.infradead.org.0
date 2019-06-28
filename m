Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9584959C35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 14:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TmCMPmSj2NmAXU8EOkQTwENbsCxJje8m/jR+yrkMoUg=; b=Cp06p4yjM4QFVF
	Jnv5FkHsg8QsIOfKTXz9YGd6XKEEfYJZNDrcIFMmAYw43dHDO1cYd70PvuwzRn89J0rJWuawCkztZ
	UZEiXgJVsjHkFv0vVV85rk6wdSbnHAOozjbWFNW36VDHXIf+I/bwS36FAi7hApkTNeOJo4bIL9vWN
	coLeHGrfsW7YbQd40YACgwKTFHTeDEwcSt/Iq33tUiJX13+AlS5NXMIFF3YnydDQ/c2aYQ2fN4/Xa
	bQcPKGr+/HrV2KI/nIqdyG3nclsEN+G1lInnO+VEu8hmJTiijzdITCMtZO7979zLbwh5Gj/XB/mKm
	IrUtOAZXClBqNJdhcB8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgqTS-0008Sm-UF; Fri, 28 Jun 2019 12:59:30 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgqTA-0008RC-5O
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 12:59:13 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190628125910euoutp0223bbd3ad1516bbff2b773ea20e0bf651~sXjSdObkU0896208962euoutp02P
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 12:59:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190628125910euoutp0223bbd3ad1516bbff2b773ea20e0bf651~sXjSdObkU0896208962euoutp02P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561726750;
 bh=8Hd3VfBJL+xbiJrjQF90ePIZxnBEv9M00xB5/OAyKPM=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=FMI3ixGUI4k6ZAc1G+bgJMwhHYv20vjSnzYHzs92j8SSQ3JyQVEbpd/cBJ8jS0xti
 2YEwFH6azYkpaqoDsuXfZSGsjWfWLA3/9KdDiEGAa9mijDRPNevB0qTnidcyVJ4lJM
 IilhMVjZmVbdX6tM4Rry90VASWPCZ9rmKPZM4dus=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190628125910eucas1p202669bfbbad1a9ea55c66706559f1029~sXjR2wB1i1911519115eucas1p2u;
 Fri, 28 Jun 2019 12:59:10 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 90.6A.04377.D1F061D5; Fri, 28
 Jun 2019 13:59:09 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190628125909eucas1p272b6e6e36732ce575b70772b67ae7c6c~sXjRBheKx2972129721eucas1p2v;
 Fri, 28 Jun 2019 12:59:09 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190628125909eusmtrp2b41c12b64b7e42d74f7267a2c892ddd1~sXjQzVFZ20722007220eusmtrp2h;
 Fri, 28 Jun 2019 12:59:09 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-e9-5d160f1dc589
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E9.44.04140.C1F061D5; Fri, 28
 Jun 2019 13:59:08 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190628125908eusmtip1476c57280886b316413bd8d2c64e41ee~sXjQN785u0811308113eusmtip1c;
 Fri, 28 Jun 2019 12:59:08 +0000 (GMT)
Subject: Re: [PATCH 02/12] backlight: gpio: use a helper variable for
 &pdev->dev
To: Bartosz Golaszewski <brgl@bgdev.pl>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <f6095658-8d23-c30e-7d50-b1555e9dd3e5@samsung.com>
Date: Fri, 28 Jun 2019 14:59:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190625163434.13620-3-brgl@bgdev.pl>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SfUhTURztvq89V9PnNHfVPmBkYpFaRjzMpKLy/VFhghCK5KzX1Pxqz4/M
 P9LIaRMrKyuH5jRJW6RrC81pBRu5zFRCMbPMgUYf5EzngsCP3J6S/53fPed3zj2XS6JiK+5H
 pmRks4oMWZqUEGKtXX/7dmz08EkIfemg6dmatxhttLYS9LtfowK6vtCHHnRMEXTTbJWA/moY
 R+gxx2tA355rRGj9+BBOv7n2G6cHjNUE/apch+wXMVPDxQLmwdAnnGlXjwoYvfYqwcxc78aZ
 z0OdBDNWZkEYQ8MlxjLchjB2/aZoYZww4gyblpLLKkIiE4XJjpoRkGVGL7zQ+RaCeUQF3EhI
 7YbK5o8CFRCSYqoJwMYPNowfZgGc/qZD+MEOYGW/CqyslE/bcZ5oBLDUurismgRQea8Odaq8
 qBhYfvW+K8SbCoSa5i8uEUq9RuGPgceEkyCocFhRonXZiqhI2PL0O+7EGBUAtU/sLqP11Ek4
 1qXDeY0n7K6awJzYjQqDDUMzrgCUksCRidplvBm2TVajzjBIFZGw2Dy4RJBLwyFouryFr+AF
 f1qeCXi8AS621yK8vhnA+dLvy8ttS89xa4HgVXuh2fIedxqhVBBsMYbwxweg7Z4J4/3d4fCk
 J38Hd3iz9S7KH4tgqVLMq7dC3UMdsRKran+E3gBS9apm6lVt1KvaqP/nagCmBRI2h0uXs9yu
 DDYvmJOlczkZ8uDTmel6sPTvehYss8+BcS7JBCgSSNeJNEKfBDEuy+Xy000AkqjUW+Tb550g
 Fp2R5V9kFZmnFDlpLGcC/iQmlYgK1ljjxZRcls2eY9ksVrHCIqSbXyEos3gwlePmo1IDqUmd
 /3HEfaJEknVl41o2NKy2q9r2JzqG23A4bmAsJjHPwxbUzQaeL+g5uG9P7qU7vfGGw2ZJfES4
 0qzSOYo0oL+io0m+3f/28U51naQhFdTfNCZVvYzVaKMCOM0JJZJacWTbMX3s2Y66XnVU/4GQ
 4EMWTCzFuGTZzm2ogpP9A1lGc0xzAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEIsWRmVeSWpSXmKPExsVy+t/xu7oy/GKxBlu/W1t8mXuKxWLXg21s
 Fmfe3GW3WNQgZnHl63s2ixVfZrJbPN38mMni/tejjBZT/ixnstj0+BqrxYm+D6wWl3fNYbPY
 37uByYHX4/2NVnaPxddus3rsnHWX3WPTqk42j0/9J1k97lzbw+Zxv/s4k8fmJfUex29sZ/L4
 vEkugCtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSezLLVI3y5B
 L+Pr3FuMBYeZK/ZukGxg/MvUxcjJISFgItH78TNrFyMXh5DAUkaJjj+vGbsYOYASMhLH15dB
 1AhL/LnWxQZR85pRYtPHlWDNwgJBEr2d88BsEQF1iQXr7jGBFDELHGeWWPhiClTHekaJ5m1/
 WUCq2ASsJCa2r2IEsXkF7CTWb3zBCmKzCKhKrFr7mRnEFhWIkDjzfgULRI2gxMmZT8BsTgFj
 iSXXPoFtYwba9mfeJWYIW1zi1pP5UHF5ie1v5zBPYBSahaR9FpKWWUhaZiFpWcDIsopRJLW0
 ODc9t9hIrzgxt7g0L10vOT93EyMwvrcd+7llB2PXu+BDjAIcjEo8vAu4xGKFWBPLiitzDzFK
 cDArifBKnhOJFeJNSaysSi3Kjy8qzUktPsRoCvTcRGYp0eR8YOrJK4k3NDU0t7A0NDc2Nzaz
 UBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAKDSj0/hlUG7WJFmH4hO3F6yyqpP7USy1vErx
 ePmO12pfLqfOdF3ImaMstOFfo6m10TqJDbM93rz7JLxY8oLxHz6Py4XMXb8Wssufc3qnqvvN
 lktD9NuKJ4za+0JZGQKkvkzzS1m8zOA73/4sz/igmg0xeRlsU4Q2ML/d+fd2+IH9Qi+yf/k4
 KLEUZyQaajEXFScCADLzI24FAwAA
X-CMS-MailID: 20190628125909eucas1p272b6e6e36732ce575b70772b67ae7c6c
X-Msg-Generator: CA
X-RootMTR: 20190625163459epcas1p39631966dbd7acbbbb1f905b18e41a2d7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190625163459epcas1p39631966dbd7acbbbb1f905b18e41a2d7
References: <20190625163434.13620-1-brgl@bgdev.pl>
 <CGME20190625163459epcas1p39631966dbd7acbbbb1f905b18e41a2d7@epcas1p3.samsung.com>
 <20190625163434.13620-3-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_055912_352073_F7EE7B9D 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Jingoo Han <jingoohan1@gmail.com>, Linus Walleij <linus.walleij@linaro.org>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-fbdev@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 6/25/19 6:34 PM, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> Instead of dereferencing pdev each time, use a helper variable for
> the associated device pointer.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Reviewed-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
