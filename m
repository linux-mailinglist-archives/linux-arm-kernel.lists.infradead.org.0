Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16790AB751
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 13:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yj4SYtoao2DrTSLARbkNjoumROdhLCDrDjeEF2Lr6PI=; b=XPOO3ExlMm7H3s
	JT/Gql3GfwWPrNcClfbpulzIyK0QffbPqBjeKTdPd8c1szJwAo06agePwmPVX9lEnETD8v3UtSEVf
	3ER0DJ0Z7eS61pJtoGnIlzvhU4Ap7zvlNcGQm9Pu2w0v4f3eGKgcraD+Jc0Zfpy0vSJ/MJQU/cRz3
	MlHFJ1PrNVgvI9rE8w2GnWIftsJPRHGLiJJ3CzgWk2wz2vIxPYpQ2dd1qowyHQG7Sz9sKVwIxXFT/
	IJ0fmTgJHUnHAivjupfU07kGRG1cOn/TaRgRZJ+OhrcA0iw8oWraFxB4lCBXcbi2qs9sHbCO7JbRQ
	Dj9bk3bGAY1ewpE27gSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6CeZ-0007Io-00; Fri, 06 Sep 2019 11:43:47 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6CeT-0007IS-E9
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 11:43:42 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190906114340euoutp0234556aa041498d59d3d8f2d1252bd2a4~B1rV1hZxI2778527785euoutp02V
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Sep 2019 11:43:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190906114340euoutp0234556aa041498d59d3d8f2d1252bd2a4~B1rV1hZxI2778527785euoutp02V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1567770220;
 bh=OW0f6c3CLqS1mIrCtJ9qyU+c9aKY4mGI3dmjJibuHYo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=p9Fm55eyP30q2s1FyECXUE6OHs7Mvjisc7q9UfP9E4lcRV4rIDDsIGKVO6S14BIZM
 KZH+JONQRLcGfMRguXyoSALU6V6u1g4giF69jT10QWeMicjDUX/ErIc8WfvuXj0t7s
 +zrCGvXbV0OR6fPGQ0Sgp6PoT9fEWLRzQsyZNwO8=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190906114339eucas1p174db246a792bbf8492f717c3388f5578~B1rVTi8Ad2539525395eucas1p1Q;
 Fri,  6 Sep 2019 11:43:39 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 71.4E.04309.B66427D5; Fri,  6
 Sep 2019 12:43:39 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190906114338eucas1p28dae7245ddbcd5b438d025665510dd63~B1rUg1y8N2426224262eucas1p2k;
 Fri,  6 Sep 2019 11:43:38 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190906114338eusmtrp22d07ec883e3f41b3a4f242c81b665047~B1rUgFV421872918729eusmtrp2-;
 Fri,  6 Sep 2019 11:43:38 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-98-5d72466b9e93
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 64.2D.04117.A66427D5; Fri,  6
 Sep 2019 12:43:38 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190906114337eusmtip22215df20daca6c6f45fa78f70fee86be~B1rTwyf7l1724517245eusmtip2P;
 Fri,  6 Sep 2019 11:43:37 +0000 (GMT)
Subject: Re: [PATCH 1/3] memory: Exynos5422: minor fixes in DMC
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <80c5aade-0ce3-e2c8-454b-78dc366dac67@partner.samsung.com>
Date: Fri, 6 Sep 2019 13:43:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPdLhrvqR==k4a9w9cmdnwGRYaTXC1ya+vOeVaGpML0zcQ@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SW0hUURTtzJ079yqOHUfNjWXBYFGCWuHHCU3tgQ31UdGDKCUnvaj4bK5a
 apCajxJfiKgNphVWNkz5TMcxK0bxgdpUQpZhaRpGKphKpmjlzB3Jv7XXXvusvTaHpWRDtDMb
 ERPPqWKUUXKJtbipc9HoHhmgCtpdPCojdWU1NBmcn6BJZcdrmhSMTVLEaKxlSH/6FEPqx97T
 ZEBfLiFzeR2IlBlfiMiTjmGGPBh8KyKf0qolJLOtgyHtU9k0+dX9FfljhbZCixQt6mFGUa+5
 JVE0VF1X5DdqkGKufusJyXlrn1AuKiKRU3n6BluHG/qG6Lh+6mrb7UwqFf0U5SArFrAXjGao
 V7E1K8PVCIoLJhihmEew+F1jKeYQDFY8kKyNtMx0WxqPEEzkaswNGZ5GoO31MGF77Ae66XKx
 CTvgXTC4skCbBihsEEOZfnHVkGUl2AN0mssmjRQHQNO7SfM7YuwKJQ355llHfA5mR9ppQWMH
 PbfHzbwVPgnZAzfMego7wdB4pUjA26B5upwyeQFOY6GpsZMStj4Mn58XMgK2hx9djRa8Bf62
 VFqOwUNq3j0k4GswVnDHovGG9q63tGlnajVMjd5ToA+AevQ3Y6IB28KHaTthBVsoaiqlBFoK
 N7NkgnonNOa+sRhtgkfaEqYQydXrgqnXhVGvC6P+73sXiTXIiUvgo8M4fm8Md8WDV0bzCTFh
 HiGx0fVo9cf1/uma1yH98iUDwiyS20jJIVWQjFYm8knRBgQsJXeQ1tTFBcmkocqkZE4Ve1GV
 EMXxBrSZFcudpCkbRi7IcJgynovkuDhOtdYVsVbOqejOzONUUXJeRo8xt/aZ0d4pQqfIYY69
 S3ILdlkpyxo/3Rru6x8Ykqt9FdaylHfc28Wl7Xj/Rs++L8vd3kuG2iN4vv+pX12z9D4lby0v
 PRVIZvWePkVHZzmvAEd35407Dm7/aJfycMFZy51Nr2GyC89M7V/+NlPV9bJdvi/SRueaLBfz
 4co9bpSKV/4DkkjR/m0DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrPIsWRmVeSWpSXmKPExsVy+t/xe7pZbkWxBm031Sw2zljPanH9y3NW
 i/lHzrFa9D9+zWxx/vwGdouzTW/YLTY9vsZqcXnXHDaLz71HGC1mnN/HZLH2yF12i6XXLzJZ
 3G5cwWbRuvcIu8XhN+2sFt9OPGJ0EPBYM28No8fOWXfZPTat6mTz2Lyk3qNvyypGj8+b5ALY
 ovRsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/TtEvQyDp25
 xVpwlrli78xW5gbGj0xdjJwcEgImEjs/nGDvYuTiEBJYyijxfdt7qISYxKR929khbGGJP9e6
 2CCKXjNKHF17ECwhLGAvsePtHBYQW0RAU+L63++sIEXMAodYJD5tPc4I0dHHJDF77XrmLkYO
 DjYBPYkdqwpBGngF3CS2XXrNBmKzCKhITNvcBzZIVCBC4vCOWYwQNYISJ2c+AYtzCgRKtF9u
 BqtnFjCTmLf5ITOELS5x68l8JghbXmL72znMExiFZiFpn4WkZRaSlllIWhYwsqxiFEktLc5N
 zy020itOzC0uzUvXS87P3cQIjOxtx35u2cHY9S74EKMAB6MSD+8Dh6JYIdbEsuLK3EOMEhzM
 SiK86zcWxArxpiRWVqUW5ccXleakFh9iNAV6biKzlGhyPjDp5JXEG5oamltYGpobmxubWSiJ
 83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYDyTqCzHc+/GN6VNM6LarbWmXdKsnr9B75D9qxrn
 C+37zi/4v2rhCYZW9i2fVLafmstTOsXAT5zxZu+yj2KNjLyTKq/eq5jjZVQzf/2KFiaHYL4d
 l2utozI3W9V43pqzZFaYxvKM1xeuBa87Ov/hjpXRTD4n3/Fv/Fdp93V+zjsW/R+5rDlf/m1W
 YinOSDTUYi4qTgQAWOqTMgIDAAA=
X-CMS-MailID: 20190906114338eucas1p28dae7245ddbcd5b438d025665510dd63
X-Msg-Generator: CA
X-RootMTR: 20190906101405eucas1p2e3da7b461810a3a520e76c636a06e486
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190906101405eucas1p2e3da7b461810a3a520e76c636a06e486
References: <CGME20190906101405eucas1p2e3da7b461810a3a520e76c636a06e486@eucas1p2.samsung.com>
 <20190906101344.3535-1-l.luba@partner.samsung.com>
 <20190906101344.3535-2-l.luba@partner.samsung.com>
 <CAJKOXPdLhrvqR==k4a9w9cmdnwGRYaTXC1ya+vOeVaGpML0zcQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_044341_614673_3D158C30 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, linux-pm@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/6/19 12:51 PM, Krzysztof Kozlowski wrote:
> On Fri, 6 Sep 2019 at 12:14, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>
>> Small fixes captured by static analyzes.
> 
> Explain please what are the errors being fixed. Additionally error
> message from tool might be useful.
> 
> Also:
> Reported-by: Krzysztof Kozlowski <krzk@kernel.org>

OK, I will add it in the next version.
My apologies for missing your name there.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
