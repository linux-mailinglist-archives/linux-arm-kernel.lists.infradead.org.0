Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BACB3657F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 15:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OPOfnKU+uRX6cV17plHtrQRYH+CpUoaVhnROyvJrEA=; b=j86qilZQ+nOjPf
	PqCjqNajB3Bzngq82T79C2OaB41wOD3R4UHrVfEbaZw9yibLbE84OSFGRmYO6dTBQW3eEcU810od1
	5ZD0YwDHvTWzNW91kyXgMYSRvTGnqMZGHVbO8iGbmUQU92t3pxy0poqBXZCOPx1ydS0xhj9oSNWrI
	CWdrQfrJvspqsSsN9/Dxl3xPYAJAqI9SLvfR9fGs3QY3Otu9uG6PV/xJhCBuPIpHMb0o4xI+VtPuW
	wRz5j5lcPLuKZIyNoF2jQz8/xSAPRP/u3++Yk4etOo0b33B/xUhUO+y36niEFOG9OKPc+zgW8KSlf
	c6ewg2ysCdWIvKwvBxkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlZGU-00067z-0S; Thu, 11 Jul 2019 13:37:38 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlZFi-00067A-Qn
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 13:36:52 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190711133647euoutp02a5ec1d38e8d3f25f258d6ed3e4041d5a~wXc2GK_cG1672816728euoutp02U
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 13:36:47 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190711133647euoutp02a5ec1d38e8d3f25f258d6ed3e4041d5a~wXc2GK_cG1672816728euoutp02U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562852208;
 bh=hapnjd460596E34R5EF9h7HtShY2YdFfJ/cJBJjjuB8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=a6sSMETdviIDhrWlA/cN3THO5YD/K8ol53OpmCB0ezjXTle1BI1qsMeH9ZjasWxnd
 JYoBPsFOTqGqXLZbDI43JJPAkVVbJhiWz0TThQTCLhLAgp4usbqH9EGVSLNxPYlWD5
 8EA3a64DFJ0oa4sSfSUYYs3T//V604ed0CrZBxnc=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190711133647eucas1p10e90994cb5ce5a56b1b9f13c3f6937f3~wXc1PY2YM1292912929eucas1p14;
 Thu, 11 Jul 2019 13:36:47 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 21.D6.04377.E6B372D5; Thu, 11
 Jul 2019 14:36:46 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190711133646eucas1p17268f944b0a1f3ab0a023b0379481326~wXc0fRNOx0579005790eucas1p1g;
 Thu, 11 Jul 2019 13:36:46 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190711133646eusmtrp14a1606e8fd467e4612fa8ac535f42643~wXc0Q58Mf1914719147eusmtrp1x;
 Thu, 11 Jul 2019 13:36:46 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-b5-5d273b6ed68f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 06.69.04140.D6B372D5; Thu, 11
 Jul 2019 14:36:45 +0100 (BST)
Received: from [106.120.51.18] (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190711133645eusmtip2fdfcf3a65fdaf9568af38b0b88a7aefc~wXczjIZwg1545915459eusmtip2Q;
 Thu, 11 Jul 2019 13:36:45 +0000 (GMT)
Subject: Re: [PATCH 2/3] devfreq: exynos-bus: convert to use
 dev_pm_opp_set_rate()
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Kamil Konieczny <k.konieczny@partner.samsung.com>
Message-ID: <a5da4135-0471-3628-c78a-c4fffc75723b@partner.samsung.com>
Date: Thu, 11 Jul 2019 15:36:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAJKOXPfWr-2t_e3f6oi7E6KLLRAbskzgEKz26XyK5n_9C8wV1w@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SeUhUURTGu/NWB0eeY+FJo2BEwkCtKLqVmUHLCEUWBW1SYz1M0qlmcssk
 l1wzDSvSUcaETJnMnSaXBtFBK7VnlnulaCmZQqGhgUvOPCX/+53vfIdzvstlCfkA5cQGqW/w
 GrUqWEFLyZdNfwV39e6N/psHRjxxeVYphbunRimcZ35P4YzhnwQWhDIGt8WNM7hiuIvCH2ty
 aTx5z4xwlmCS4BfmLwwu6P4gwf2xRTQen2mT4ITXZgbPd5WTuHKwifaxVxbri5GywpBCKyuf
 3lamVxmQsrnHKFFOVqz3o89IvS7xwUFhvMbT+4L0stDmdy2HidB3PGNi0AKVimxY4LbBUJuR
 SEVSVs4VITA8qUdiMYUgY7ZTIhaTCPJKO8jlkbS3JsLCcq4QQUnOddE0gaCz6Y/V5MCdgMa7
 gnXHas4NuuemKYuJ4GZIiBmrtppobgcMGVslFpZxB6Gu/4tVJzlX6BvopS28hjsF78x6UvTY
 w9vsb4vMsjbcMXhTFmSRCc4R+r7lSUTeAMaJXGse4BJYGCl/SIhX71+MM0SL7ABjzVWMyOug
 5UHaUrJw+J6fzojDdxAMJv1eauyGxuYPlGUxsZimtMZTlPdBaVy99R7g7KBnwl68wQ4yXz4m
 RFkGyYly0e0O+oXWpWd3htSFEuo+UuhWBNOtSKNbkUb3f+8TRBqQIx+qDQnktVvVfLiHVhWi
 DVUHely8GlKBFr9dy3zz1CtUMxvQgDgWKWxlPTs3+sspVZg2MqQBAUsoVstMh1z85bJLqsib
 vObqeU1oMK9tQM4sqXCURa0aPCvnAlU3+Cs8f43XLHclrI1TDPIiyxnvN8m+0eOZrSRvl8bn
 j0pjt5+zHTlZ/YNJr3MTUl4UChOfEg/hj0ecWB+Xr2f1h48bvNqjPFzT4jtNvaZP26a7yKSR
 PTbScGMtjq4jkgt8s0vC1nbW7nKPGV3wihiL/ywcSD6a9Gtt6um7c8ytpOr2vdm+z1+NPTIG
 dMcrSO1l1ZZNhEar+gesG9MScgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEIsWRmVeSWpSXmKPExsVy+t/xe7p51uqxBluFLDbOWM9qcf3Lc1aL
 +UfOsVr0P37NbHH+/AZ2i7NNb9gtNj2+xmpxedccNovPvUcYLWac38dksfbIXXaLpdcvMlnc
 blzBZvHmx1kmi9a9R9gt/l3byGKx+cExNgdBjzXz1jB6bFrVyeaxeUm9R9+WVYwex29sZ/L4
 vEkugC1Kz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSezLLVI3y5B
 L+P82YCC2ewV8y4tY29g/M/axcjJISFgItFzch9zFyMXh5DAUkaJjXNmM0IkpCUaT69mgrCF
 Jf5c62KDKHrNKPHj6mxmkISwQIjE4e7zYJNEBDQlrv/9zgpSxCzwh0Wiq3EGI0THLCaJs5vf
 gVWxCZhLPNp+Bmwsr4CbxJ7bd1lAbBYBVYlb92+ygdiiAhESk67tZIGoEZQ4OfMJkM3BwSkQ
 KHFiQyZImFlAXeLPvEvMELa4xK0n85kgbHmJ7W/nME9gFJqFpHsWkpZZSFpmIWlZwMiyilEk
 tbQ4Nz232EivODG3uDQvXS85P3cTIzC+tx37uWUHY9e74EOMAhyMSjy8NyzVY4VYE8uKK3MP
 MUpwMCuJ8O5zV44V4k1JrKxKLcqPLyrNSS0+xGgK9NtEZinR5Hxg6skriTc0NTS3sDQ0NzY3
 NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cDo/FlD3l5zWX/3uzCfuCt1WyrXfQoImTTl
 5mfNn9Mm6jpedt67++uX5NPRJ8suBM254Mv94VuIX8nmkMpozyNz5KfoGlWFf5kd+Els7jdH
 iR/rHor75fiwFTAfqnNeOVnk1L4/xXWzrzrlPD+t6HlikvDO5sdnDRbbz0ifY3Co5Y6u9MPD
 H2uXKbEUZyQaajEXFScCAGLPHXUFAwAA
X-CMS-MailID: 20190711133646eucas1p17268f944b0a1f3ab0a023b0379481326
X-Msg-Generator: CA
X-RootMTR: 20190708141200eucas1p144ca3b2a5b4019aaa5773d23c0236f31
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190708141200eucas1p144ca3b2a5b4019aaa5773d23c0236f31
References: <CGME20190708141200eucas1p144ca3b2a5b4019aaa5773d23c0236f31@eucas1p1.samsung.com>
 <20190708141140.24379-1-k.konieczny@partner.samsung.com>
 <20190708141140.24379-3-k.konieczny@partner.samsung.com>
 <CAJKOXPfWr-2t_e3f6oi7E6KLLRAbskzgEKz26XyK5n_9C8wV1w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_063651_146700_E586030F 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10.07.2019 19:04, Krzysztof Kozlowski wrote:
> On Mon, 8 Jul 2019 at 16:12, <k.konieczny@partner.samsung.com> wrote:
>>
>> From: Kamil Konieczny <k.konieczny@partner.samsung.com>
>>
>> Reuse opp core code for setting bus clock and voltage. As a side
>> effect this allow useage of coupled regulators feature (required
>> for boards using Exynos5422/5800 SoCs) because dev_pm_opp_set_rate()
>> uses regulator_set_voltage_triplet() for setting regulator voltage
>> while the old code used regulator_set_voltage_tol() with fixed
>> tolerance. This patch also removes no longer needed parsing of DT
>> property "exynos,voltage-tolerance" (no Exynos devfreq DT node uses
> 
> Please also update the bindings in such case. Both with removal of
> unused property and with example/recommended regulator couplings.

Right, I will remove it.

-- 
Best regards,
Kamil Konieczny
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
