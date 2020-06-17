Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E471FCA2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 11:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzNQRWpr9MpsidxFLW1JjqoxIaFwaCWP9mhWuYhv070=; b=Do+qmEOEouf3ZP
	Hgls3Cs+hTraxGIrdIp3Cksvq8tWrd2OoGQt4QiQqBdfZy4xfPHi3K/tX7uGjrdIXIVHwOlh0gHsa
	quf6AgicOhLE0evFBBi7dPxjLFZZmELygpqmzhsa8qDfB11ymfHDl7XR0gFS4ZMhjRhHeEIwVd7cX
	0bEi739PNYtAD7xSQsjtIVVCJ1SUI8ja4dnYcxLL4sCpNWD6dzVw5Sd6fw1BCGd2W1Jz4otv8z129
	+eOKacdyzPP96quCi7lUaKQsrCXysP1g7ZeYIPkXSiT/IOLpfuM46RZvPotIyANC7cD4T4p/HLRlz
	dgobFpVHCSz9zr5Fgl9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUgg-000201-Jq; Wed, 17 Jun 2020 09:48:54 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUgT-0001yU-8c
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 09:48:43 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200617094838euoutp0150a827e2c29f503e87217845c7ff4fa7~ZS9RVWNAp0840308403euoutp017
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 09:48:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200617094838euoutp0150a827e2c29f503e87217845c7ff4fa7~ZS9RVWNAp0840308403euoutp017
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592387318;
 bh=1hn/86bQTTmfmak5bZLBcL+7yv5YdedGxXKkEAfzkb0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=HEUIMnfoaZikpTeNKtCU9wzSdlWoI17KuUNMGjS1BGWFk7v5lp/grrip3I4VP+Ail
 f0/G/Y7LGyjB7zymuyoQM/gLSqzMqON+HBk9NPHov193EE8hL7cfTMMACU0ZhEf1p5
 XguYHUHNST2Q24roi+ecIw6ebbcH618SHzabx224=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200617094838eucas1p278ca479fb46c8e0f9358cb38926f7c77~ZS9RGrvB41583215832eucas1p2B;
 Wed, 17 Jun 2020 09:48:38 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 24.03.60698.6F6E9EE5; Wed, 17
 Jun 2020 10:48:38 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200617094837eucas1p2a59fc3e396618cd88b1b2fd344d56661~ZS9Qx5Rur1583615836eucas1p2M;
 Wed, 17 Jun 2020 09:48:37 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200617094837eusmtrp1cc2ede5f31119a9af238de47c53ad5c4~ZS9QxOT6Y1215412154eusmtrp1b;
 Wed, 17 Jun 2020 09:48:37 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-e2-5ee9e6f65bd8
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D8.F6.07950.5F6E9EE5; Wed, 17
 Jun 2020 10:48:37 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200617094837eusmtip133d2047761def59ec87694796628e3a7~ZS9QTTWdc1575215752eusmtip12;
 Wed, 17 Jun 2020 09:48:37 +0000 (GMT)
Subject: Re: [PATCH 0/4] Restore big.LITTLE cpuidle driver for Exynos
To: Anand Moon <linux.amoon@gmail.com>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <3e6b5dbb-a8a2-e3db-d740-53e13676455c@samsung.com>
Date: Wed, 17 Jun 2020 11:48:37 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CANAwSgStsYP5fBB7z7-Reo2BP4ZQPT6RN4s8QdLGVGhKCDA_Ng@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrLKsWRmVeSWpSXmKPExsWy7djP87rfnr2MM+g4LGyxccZ6Vot5n2Ut
 zp/fwG6x6fE1VovPvUcYLWac38dksW7jLXaLN79fsFssbGphd+D0WDNvDaPHzll32T02repk
 87hzbQ+bx+Yl9R59W1YxenzeJBfAHsVlk5Kak1mWWqRvl8CV8eq7f0EvT8WbQ81sDYw3OLsY
 OTkkBEwkpm55y9bFyMUhJLCCUeLS2rNsIAkhgS+MEv/eqkIkPjNKXG15xgrT8ffffxaIxHJG
 ib2PrjBDOO8ZJe59PckIUiUs4CqxduZ9dhBbREBN4srTFawgRcwCr5kkPrw8BZZgEzCU6Hrb
 BbaPV8BOoquvkxnEZhFQlbi/6SjYIFGBWIm+pQugagQlTs58wgJicwoESmz81gsWZxaQl9j+
 dg4zhC0ucevJfCaQZRICp9gl9i/uYIa420Vi8clWNghbWOLV8S3sELaMxOnJPSwQDc2MEg/P
 rWWHcHoYJS43zWCEqLKWuHPuF1A3B9AKTYn1u/Qhwo4SFxu3sYCEJQT4JG68FYQ4gk9i0rbp
 zBBhXomONiGIajWJWcfXwa09eOES8wRGpVlIXpuF5J1ZSN6ZhbB3ASPLKkbx1NLi3PTUYuO8
 1HK94sTc4tK8dL3k/NxNjMBEdfrf8a87GPf9STrEKMDBqMTD27DwRZwQa2JZcWXuIUYJDmYl
 EV6ns6fjhHhTEiurUovy44tKc1KLDzFKc7AoifMaL3oZKySQnliSmp2aWpBaBJNl4uCUamA8
 EhJoXm92wWhl2O0D8VM/zPoqaHdrS1LmrOyDlQ/yjv6tq/y579MLTa3iv+JTrnbXCse33y7v
 eXNVoO7R63mbZ4RF2ime0TnRn5O4vXjXVs17+/aISNV9mT9v6+mOJw84YpyUuH8evfCseiNf
 4fM5Z3Mv7HhQnabp+yCYzXpSgcz643KPz1n0KrEUZyQaajEXFScCACH1iMFQAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPIsWRmVeSWpSXmKPExsVy+t/xu7pfn72MM/jzzMpi44z1rBbzPsta
 nD+/gd1i0+NrrBafe48wWsw4v4/JYt3GW+wWb36/YLdY2NTC7sDpsWbeGkaPnbPusntsWtXJ
 5nHn2h42j81L6j36tqxi9Pi8SS6APUrPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzW
 yshUSd/OJiU1J7MstUjfLkEv49V3/4Jenoo3h5rZGhhvcHYxcnJICJhI/P33n6WLkYtDSGAp
 o8TBXd2sEAkZiZPTGqBsYYk/17rYQGwhgbeMEn0r9UFsYQFXibUz77OD2CICahJXnq5gBRnE
 LPCeSWJ11zuoqTcYJXbse8gMUsUmYCjR9RZiEq+AnURXXydYnEVAVeL+pqOMILaoQKzEt3tb
 oGoEJU7OfMICYnMKBEps/NYLFmcWMJOYtxliJrOAvMT2t3OgbHGJW0/mM01gFJqFpH0WkpZZ
 SFpmIWlZwMiyilEktbQ4Nz232EivODG3uDQvXS85P3cTIzAytx37uWUHY9e74EOMAhyMSjy8
 DQtfxAmxJpYVV+YeYpTgYFYS4XU6ezpOiDclsbIqtSg/vqg0J7X4EKMp0HMTmaVEk/OBSSOv
 JN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAOj0+oDf5cFBKUasbGv
 S2to+NqSOqvZ+sBNpbdR8+zKVQTeBLFcK7t4MfnK7gzJxn2laX9uaz2+eChn2oPF6bemTJqX
 /jH1daVyoE2V0AHJcKPJoQaVzkkuD1ju31vWY7hD5LH068S7BtO+r+05cm8ac3KFhaf0+03P
 v075bG7yeOXte/LHXtj+VGIpzkg01GIuKk4EACPj+IHiAgAA
X-CMS-MailID: 20200617094837eucas1p2a59fc3e396618cd88b1b2fd344d56661
X-Msg-Generator: CA
X-RootMTR: 20200616081248eucas1p168faa343ce333a28c8fd3cf9a6a58b3c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200616081248eucas1p168faa343ce333a28c8fd3cf9a6a58b3c
References: <CGME20200616081248eucas1p168faa343ce333a28c8fd3cf9a6a58b3c@eucas1p1.samsung.com>
 <20200616081230.31198-1-m.szyprowski@samsung.com>
 <CANAwSgStsYP5fBB7z7-Reo2BP4ZQPT6RN4s8QdLGVGhKCDA_Ng@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_024841_503785_14908876 
X-CRM114-Status: GOOD (  14.70  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Lukasz Luba <lukasz.luba@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anand,

On 16.06.2020 22:58, Anand Moon wrote:
> On Tue, 16 Jun 2020 at 13:44, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
>> The ARM big.LITTLE cpuidle driver has been enabled and tested on Samsung
>> Exynos 5420/5800 based Peach Pit/Pi Chromebooks and in fact it worked
>> only on those boards.
>>
>> However, support for it was broken by the commit 833b5794e330 ("ARM:
>> EXYNOS: reset Little cores when cpu is up") and then never enabled in the
>> exynos_defconfig. This patchset provides the needed fix to the common
>> code and restores support for it. Thanks to Lukasz Luba who motivated me
>> to take a look into this issue.
>>
> Thanks for this updates.
>
> But I feel some DTS changes are missing for example
> d2e5c871ed8a drivers: cpuidle: initialize big.LITTLE driver through DT

This is not strictly needed. The bl-cpuidle matches also to the A7/A15 
CPU product ids and it is properly instantiated on the Peach Pit/Pi 
Chromebooks. Those CPU DT properties were added as a future-proof 
generic solution. I won't hurt to add them though.

> But I feel that this feature is not working as desired since
> still some missing code changes for cluster idle states are missing.
> like clock  PWR_CTR and PWR_CTRL2.

I cannot judge now. All I can test now is a that the boards enters those 
idle states and system works stable. I cannot measure power consumption, 
because currently I have only remote access to the boards.

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
