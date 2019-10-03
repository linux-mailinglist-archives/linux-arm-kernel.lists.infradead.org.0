Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D799DC9B70
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 12:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fq5WyJ9IVdMpJa3o0T+u57tsaU5e5mt9qob7fgt1z5A=; b=QbPh1QCbv5p1r9
	EczJsSRS+U7xI5Dub/DsN5J7MCa2OADSahPfGNemQESgUvvt07YC4LPf1qdSCwnIDhrKRvHK5XuL4
	PRrcoZgNIA0lDjOxzAHI+7s4ZwmJYEzBE4YHKYwyZ0kvTEhD98WX4AqxrHudJxDVQyW+wO3X2rmcY
	hhenjfwhOUXpd27xOblZT157QGQyDLhNeGtA6pV63eQz7f1NtsL4UO5ckwTQN9NKS8/gdX9IgfeAs
	1FPHLYe+LFZ4tHO+S0VU3ui6xN3rHoQpOAjzaU2Oeiie1YxlK04KR2UvtfwXiZkOI4jIkLrulDq7P
	i6oqaEmbM0c8p0kv9lcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxyK-0005uf-Fz; Thu, 03 Oct 2019 10:04:32 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxyC-0005tk-NE
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 10:04:26 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191003100422euoutp018b957af25eb4ac2b9fee1d491b4a9003~KGvW80ueT2017020170euoutp01w
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  3 Oct 2019 10:04:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191003100422euoutp018b957af25eb4ac2b9fee1d491b4a9003~KGvW80ueT2017020170euoutp01w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570097062;
 bh=9FfdxOF7vnF6vNWvFg7wwQjhh86Fz5rU4uACN+T5VYU=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=azgvbQZ8ajCNhEE0OIvLIMJ50wu9ygGQeXtOPc+aCSi7ei2ka1kuJD2KDkaAyJZEO
 OnCo5sgGSNsK/pNJeURn7aa6LiSf0THE/6WJ6fv+lcujTssFOoQrEXJx440tvsTIii
 svO56HjjRHw8xYlCYrrEE+SRMWL0mahXUtMGlYZQ=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191003100422eucas1p2f825c8fea78ab0ff971999959437a932~KGvWbRRY31631516315eucas1p2a;
 Thu,  3 Oct 2019 10:04:22 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id AD.3D.04469.6A7C59D5; Thu,  3
 Oct 2019 11:04:22 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191003100421eucas1p2785448de3ed8c90e93a61510403a9202~KGvWFBLEV1622016220eucas1p2k;
 Thu,  3 Oct 2019 10:04:21 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191003100421eusmtrp1e1539dc74c42577aa5b01c2c0fcfcda9~KGvWEKQE61454314543eusmtrp1b;
 Thu,  3 Oct 2019 10:04:21 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-de-5d95c7a6699f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 95.F1.04166.5A7C59D5; Thu,  3
 Oct 2019 11:04:21 +0100 (BST)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191003100421eusmtip1e188990cf25c7ee043a9c6827e1dde4e~KGvVT2Uzu0342403424eusmtip1b;
 Thu,  3 Oct 2019 10:04:21 +0000 (GMT)
Subject: Re: [RESEND PATCH v5 3/4] ARM: dts: exynos: add initial data for
 coupled regulators for Exynos5422/5800
To: Krzysztof Kozlowski <krzk@kernel.org>, Kamil Konieczny
 <k.konieczny@partner.samsung.com>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <2fbc9880-3dfe-145c-e036-16276c314353@samsung.com>
Date: Thu, 3 Oct 2019 12:04:20 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191002142704.GA15827@pi3>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTQRzGme52d2ksWQqEf8Qj1iMesUKiZoxGMdGkj5roiwaxyAaItJAu
 oOiDCqFAg0jAA2sFFERCEKQcIlGUWmmU0AIiIB6VVGJVqpFDUBRsux68fd9/fjPffJNhCNmI
 eCGToEnhtBpVopySkM0d323rK60XosIrG6W4vrhOjAcm3otxqcUmxvltcwifc34isN1+m8Zd
 GaM0Njn7xfhZq5HC42ctCBfb20T4xkCPCL88U0Xh0ekuEc66b6HxbH89iRvedlCRgcqakhqk
 NFXnUsqGilPK9s/3RMr8xmqktA7eESnHTUv20Ack22K5xIQ0Trth+2FJ/NfhITo5mz7e/KGJ
 OI1GxHrEMMBuBOOTdD2SMDK2CkFjjp0WzASCM0UPSD3y95hxBFnnjni1d0O100YK0E0Ev2pL
 /hg3AtfMjMhLBbFaeD49TXh1MHsIvkxlEF6IYMtJqJsbRt4Fio0AvVtPebWU3Q5XM7N8mmRX
 wKg52xcdwkbBm2krITCB8OTyO9/cn10DtpGnPp5gl8Idt5EQdCgMvSsVecOAzWXg7N0eSii6
 C+pdMUKFIPhobaQFvQg6i/JIgc9EMGy7RQsmD8GzjGIkUFvhkbXH92KEJ7mudYMw3gk/v3aS
 wvkBMOgOFO4QAIXNlwhhLIUcnUygV4HBWvsvtr27lyhAcsO8ZoZ5bQzz2hj+55YhshqFcqm8
 Oo7jIzTcMQWvUvOpmjjFkSS1CXk+X+esdawFTfbGmBHLIPkCafGb81EysSqNT1ebETCEPFja
 W+cZSWNV6Sc4bVK0NjWR480ojCHlodKTfm8Pytg4VQp3lOOSOe3fVRHjv/A0illp5CdjIyMV
 rnWvMgoy01vmunXfol2Xy6b61FXLw3XqZSEw5vDrC/x+reP65lO79yUHS3U7ZrsDSvePXBkr
 m3D+MkiopQN+kxVJyZu3KGo1910nFvzIaypMuPjQsZd9UbJ+04Txx6BjcPHq8D2PLdpgR8Xr
 JgU3UzS2ppzQ7QyTk3y8KmItoeVVvwEll2pteAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrJIsWRmVeSWpSXmKPExsVy+t/xu7pLj0+NNdj5Wt9i44z1rBbXvzxn
 tZh/5ByrRd++/4wW/Y9fM1ucP7+B3eJs0xt2i02Pr7FaXN41h83ic+8RRosZ5/cxWSy9fpHJ
 4nbjCjaLNz/OMlm07j3CbvHv2kYWi80PjrE5CHqsmbeG0WPTqk42j81L6j0OvtvD5NG3ZRWj
 x/Eb25k8Pm+SC2CP0rMpyi8tSVXIyC8usVWKNrQw0jO0tNAzMrHUMzQ2j7UyMlXSt7NJSc3J
 LEst0rdL0Mv4+PAWe0E7e8W2l1uZGxifsnYxcnJICJhIrHp8jqWLkYtDSGApo8Tf40uZIRIy
 EienNUAVCUv8udbFBlH0mlHicddbsCJhgSKJqz9+gNkiAnES3xvXsYIUMQssZZF4uGIlK0TH
 J0aJnps/warYBAwlut6CjOLk4BWwk5jb3ApmswioSLw51A50BweHqECsxKa9ZhAlghInZz5h
 AbE5BTQlzj09BVbOLGAmMW/zQ2YIW15i+9s5ULa4xK0n85kmMArNQtI+C0nLLCQts5C0LGBk
 WcUoklpanJueW2yoV5yYW1yal66XnJ+7iREY7duO/dy8g/HSxuBDjAIcjEo8vDPuTYkVYk0s
 K67MPcQowcGsJMJ7aT1QiDclsbIqtSg/vqg0J7X4EKMp0G8TmaVEk/OBiSivJN7Q1NDcwtLQ
 3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVANj8IXDekrX984pXFmzxrG/NuJOgZ6t
 PXtuxYn6n5OE9sZfi1q7bkKYmtBXTq3PP7jZ3Vl2Sa3aU7O72eqmk7PAspyQWaV6az4tS/G1
 tPvErWORsTLZQWu1gvh1meBN/06ayB69+3a/YHlx7Kwv+l2qD76fbpg9M/X/s1LTC6kBC7+f
 mulidd9DiaU4I9FQi7moOBEA0H6JoQwDAAA=
X-CMS-MailID: 20191003100421eucas1p2785448de3ed8c90e93a61510403a9202
X-Msg-Generator: CA
X-RootMTR: 20190808090252eucas1p2afec3e288965bb7e7aa6f96f67686273
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190808090252eucas1p2afec3e288965bb7e7aa6f96f67686273
References: <20190808090234.12577-1-k.konieczny@partner.samsung.com>
 <CGME20190808090252eucas1p2afec3e288965bb7e7aa6f96f67686273@eucas1p2.samsung.com>
 <20190808090234.12577-4-k.konieczny@partner.samsung.com>
 <20191002142704.GA15827@pi3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_030424_959554_3EAC4814 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 02.10.2019 16:27, Krzysztof Kozlowski wrote:
> On Thu, Aug 08, 2019 at 11:02:33AM +0200, Kamil Konieczny wrote:
>> From: Marek Szyprowski <m.szyprowski@samsung.com>
>>
>> Declare Exynos5422/5800 voltage ranges for opp points for big cpu core and
>> bus wcore and couple their voltage supllies as vdd_arm and vdd_int should
>> be in 300mV range.
>>
>> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
>> [k.konieczny: add missing patch description]
>> Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
>> Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
> The bindings were acked. Can I pick it up?

All needed fixes have been merged to v5.4-rc1, so it is okay to merge 
this patch. However I've checked and it doesn't apply now, so I will 
send a rebased version.

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
