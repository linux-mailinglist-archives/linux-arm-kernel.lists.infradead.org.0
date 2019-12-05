Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6A811436F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 16:21:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3K/IpWGCQnGyAvbeF8PE7T9uXJ+SyoMv75kK6EIe6oo=; b=O3pusFGPt6Xpq1
	yO7XHTmEHQzHja1RCwSTE3qDsHDiwfoQBsttx/HnaSFsCMZJckLj15DE5RISEqsOQWKz1zt1mnfSq
	H/qTHg5YuTsB2iudw8VTcLYJcsLtsZfoNniT653hvLOqS3zkMIXIX18sADQ8/zycekt1jLPIxjDQ7
	1GkV8wqJk85Wh9n6OKbXFUnGIE08Pu95XDYO2XAXRkltbAhbNqkMq1fkDHX/XXCLZW2EuwiHgAP2W
	7kX7juQ9414qUTkURYt4WTNvH6qkNNLBfSIEPKunHvsjiErvSecvwoXNsDng2GBY2uV+NCSJbOeYq
	H/421Pe319TP+bppqBfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icswQ-0000BX-2S; Thu, 05 Dec 2019 15:21:18 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icswB-0000Ac-RJ
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 15:21:11 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191205152101euoutp0263f9a4f500106dddda74133dc5a30ffe~dgsz8r0jZ2202422024euoutp02b
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  5 Dec 2019 15:21:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191205152101euoutp0263f9a4f500106dddda74133dc5a30ffe~dgsz8r0jZ2202422024euoutp02b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575559261;
 bh=/mzOajTgCrZXkVi1vJIIwlHiKlzohDxrYuGIp2O7vpA=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=EAFyseuATKu/8Rsj8KWO5NSXkY9maeydu3MjBnqNc2AKdrWjulUpw1M0Yf7wsDUCU
 E7uQpVEOiw//dgnWZlDxpX4I1MqSllXJEcOuUenuHq77i6n03MvqbchX+yBUPO1dZC
 Zr3lhryzvZfxD4sVWYq6mF0bisksR+V9UXCdod4s=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191205152101eucas1p2ec0745ee21f0f39f31394826e6d1041a~dgszz4V4i2400824008eucas1p26;
 Thu,  5 Dec 2019 15:21:01 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id F6.CF.60679.D5029ED5; Thu,  5
 Dec 2019 15:21:01 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191205152101eucas1p18e2010e9eafcfefe48bd5af9b82df718~dgszgeuix1290612906eucas1p1K;
 Thu,  5 Dec 2019 15:21:01 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191205152101eusmtrp1ddc30c321606761fcf7bd40ad4c55d88~dgszfNRaH0961309613eusmtrp17;
 Thu,  5 Dec 2019 15:21:01 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-fb-5de9205d3663
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 4F.94.07950.C5029ED5; Thu,  5
 Dec 2019 15:21:01 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191205152100eusmtip19e1e064da89b7edf8fdbd87b671900fc~dgszF7-xI0555705557eusmtip1N;
 Thu,  5 Dec 2019 15:21:00 +0000 (GMT)
Subject: Re: [PATCH] ARM: exynos: add select EXYNOS_IRQ_COMBINER
To: Hyunki Koo <hyunki00.koo@gmail.com>, krzk@kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <d7439e6a-c5dc-ea45-204f-90aa139291e5@samsung.com>
Date: Thu, 5 Dec 2019 16:21:00 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191205151614.23268-1-hyunki00.koo@gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SbUhTYRTu3b27u5tuvU5jBzONlcLMj8yKC4lZKOxPUCH9SFatvEzxk03N
 DyLTEHNakYU2hMIUdZXZ5jeWuMopltOGZn6gopCzzEwNopDcLpX/nuc55zznPC8vTUjNfG86
 MTWD1aaqk+WUiGzt/WkLVu12qPZfm5QxIwXLFGOsHSOYW3OfCcZmaxIwprlRPmPvrKKYSttL
 HmO59wJF0Ur76DCh7DBMCZQm4w1Kaa65qrzZbETKVZPvSeqsKCKeTU7MYrWhkRdECd2va/jp
 K4LsivUqKh91USVISAM+CMWPV3glSERLcT2C6rIRPkfWEDzq+EFxZBVB/dr8ZhvtGhk2+nB6
 HYLlyTckR5YQNNfOEU5fTxwF5hkb34m9MAPL3Y0uWwJPIHhX1oacBQqHQclSCeV0FeNIGC86
 7ZRJvBda9CsueQdWQXFdglMWYw/ovz9POrEQR0BLQ5HLnsB+0LZURXBYBuPzD1xxAFsEMDh9
 ncfljIbaWT3BYU9YtDYLOOwDA+WlJDdQiGB28KmAI6UI7AWViOs6Aq+sw3znRQRWwLPOUE4+
 Buv5dop7FQmMLXlwR0jgTmsFwcliKC6Sct0BYLA2/lvbM/SeuI3khi3RDFviGLbEMfzf+xCR
 RiRjM3UpGlZ3IJW9HKJTp+gyUzUhl9JSTGjzKw1sWNfaUefvixaEaSR3F1euLqikfHWWLifF
 goAm5F5ijcShkorj1Tm5rDbtvDYzmdVZ0E6alMvEedtm4qRYo85gk1g2ndX+rfJooXc+oqqn
 vwXuyfh0mIpxBHmWx90NPzFtk8Vauq58iN3F3/Be1FcqFPZ9kV5JCxEbZ7KnJD3RQ2vp9ZLA
 4FbzuayipiB5v8Z3GZfrD7l95+VOuFXXuev720n/r34nxj4ejUk+nvdF0dCXLwyYWnf8EjwP
 7Ct0CE/1jj7x8U8MZ41vt8tJXYI6LJDQ6tR/AF39xfhGAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrKIsWRmVeSWpSXmKPExsVy+t/xu7qxCi9jDXb4WFxtes9msWrpDWaL
 /sevmS3On9/AbrHp8TVWi8u75rBZzDi/j8ni0NS9jA4cHpevXWT22DnrLrvHplWdbB6bl9R7
 9G1ZxejxeZNcAFuUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+nU1Kak5m
 WWqRvl2CXsb+I0tYCz6yV0z/OoetgXEPWxcjB4eEgInExVUyXYxcHEICSxkl9nf+Zepi5ASK
 y0icnNbACmELS/y51sUGUfSaUeLN1L9gCWEBB4nND86D2SICFhLv969jBSliFrjNKHF6xW52
 iI5+IGfiU0aQKjYBQ4mut11gq3kF7CRutQWBhFkEVCS2dn9kA7FFBWIlvq/8BFbOKyAocXLm
 ExYQm1PARmLryjawZcwCZhLzNj9khrDlJba/nQNli0vcejKfaQKj0Cwk7bOQtMxC0jILScsC
 RpZVjCKppcW56bnFRnrFibnFpXnpesn5uZsYgVG47djPLTsYu94FH2IU4GBU4uGd8flFrBBr
 YllxZe4hRgkOZiUR3nS+l7FCvCmJlVWpRfnxRaU5qcWHGE2BnpvILCWanA9MEHkl8YamhuYW
 lobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhg33v86KXYWY1a4aWX5Nw5j58cm
 wjG6VknTb4Z8S2rQCzZmf8Y8T1YzbnHklKlzLVdNLjmn9+nacv4jRraRjoLdev+nTf+aWatt
 VXwv7dO74M+JpZl1HC4xk89+6TPRfex9nXlz6YSG1CKmBV/r+s1/surbLvqrVWBxbmv7ydL1
 T1l6zjXeXKzEUpyRaKjFXFScCADKBBxu2AIAAA==
X-CMS-MailID: 20191205152101eucas1p18e2010e9eafcfefe48bd5af9b82df718
X-Msg-Generator: CA
X-RootMTR: 20191205151632epcas4p1be532de5e5863d7b4cfbb1556ca189c8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191205151632epcas4p1be532de5e5863d7b4cfbb1556ca189c8
References: <CGME20191205151632epcas4p1be532de5e5863d7b4cfbb1556ca189c8@epcas4p1.samsung.com>
 <20191205151614.23268-1-hyunki00.koo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_072109_920784_67348821 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 Hyunki Koo <hyunki00.koo@samsung.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 05.12.2019 16:16, Hyunki Koo wrote:
> From: Hyunki Koo <hyunki00.koo@samsung.com>
>
> This patch add select EXYNOS_IRQ_COMBINER
> on aarch32 Exynos devices
What's the point of this patch? EXYNOS_IRQ_COMBINER config option is not 
a part of mainline kernel:
$ git grep EXYNOS_IRQ_COMBINER
$
> Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> ---
>   arch/arm/mach-exynos/Kconfig | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
> index 4ef56571145b..c0efd544501e 100644
> --- a/arch/arm/mach-exynos/Kconfig
> +++ b/arch/arm/mach-exynos/Kconfig
> @@ -18,6 +18,7 @@ menuconfig ARCH_EXYNOS
>   	select EXYNOS_THERMAL
>   	select EXYNOS_PMU
>   	select EXYNOS_SROM
> +	select EXYNOS_IRQ_COMBINER
>   	select EXYNOS_PM_DOMAINS if PM_GENERIC_DOMAINS
>   	select GPIOLIB
>   	select HAVE_ARM_ARCH_TIMER if ARCH_EXYNOS5 && VIRTUALIZATION

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
