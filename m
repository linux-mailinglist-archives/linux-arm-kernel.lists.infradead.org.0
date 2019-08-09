Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BAA87EC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:59:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQ2z0pINUZm6e6FtVsfb1vKO8b51Z5/aHBs9aPuml6c=; b=Xo0FvGTPnC+wDk
	su/MR8AVIFfKmLdJFAzA5mVyiv5r6Y52eVEUc+lM3TTM2t5x8lAus678uzc36m22IhhkfFdjwruEh
	ePOcM09YM7TOrxBlJmfoeJUpM03a8OEc2gQMbLNGept0ZM/hJUz9UeLitD9mh44LtescsNcD9pG9e
	/7uG7l7W3Seo49NQhAbUAhd/cP9hWrRu4v9Rp3B7IY0iOxbN0l/t5uHyuf95O8IUbFp6l9zdbhAQE
	JHBhcmGU7mVIrWQfj4z7u8OzoG4o9y2icJqc9mhqiB7idVK9oFl0LlYI+7YxVwDz5pW3JrRfmOpwb
	+JpU/8i/iORS1iR9pOnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7IR-0003J4-Cs; Fri, 09 Aug 2019 15:59:15 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7IG-0003I1-HT
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:59:06 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190809155900euoutp01d9446a4f196fc87c31ff04c0b6ac34be~5TGSkRLpy2360823608euoutp01h
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  9 Aug 2019 15:59:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190809155900euoutp01d9446a4f196fc87c31ff04c0b6ac34be~5TGSkRLpy2360823608euoutp01h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565366340;
 bh=4YzeeKKPFr++N86ARxVSHPawyKjy2TYXNkKlduZSeco=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=b4Y1YUbd7XSyLjsTr1HDcsailVX08NqdKKoNI/YTrEUY1sIfhw9Rm/vWHZHZgs860
 uMh3LOKK/PARXFc10V8wDXCeQdAKPtVWu2A4tugsGOde3c0jAKjr8k5+3gELiGUHDb
 vY3cAl6yzntpCKzOA2hHP+mNwGbiTdDpbtTJW2sU=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190809155859eucas1p120faf243c7885b7a47062ef416ad8219~5TGRwjGNE1518415184eucas1p1f;
 Fri,  9 Aug 2019 15:58:59 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 01.BE.04374.3489D4D5; Fri,  9
 Aug 2019 16:58:59 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190809155858eucas1p1b86dfa70fce2366fb99e85dd585a2cdc~5TGRBaTGC1518515185eucas1p1n;
 Fri,  9 Aug 2019 15:58:58 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190809155858eusmtrp12b9fcab5ac2f2878f93826e4e2e4c5ff~5TGQy8qOJ2026120261eusmtrp1N;
 Fri,  9 Aug 2019 15:58:58 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-84-5d4d9843cc42
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C2.27.04117.2489D4D5; Fri,  9
 Aug 2019 16:58:58 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190809155858eusmtip22c7f5a027df8a3d1a2bb827e52f25a5f~5TGQNGUDp0941309413eusmtip2P;
 Fri,  9 Aug 2019 15:58:58 +0000 (GMT)
Subject: Re: [PATCH v2 0/9] Exynos Adaptive Supply Voltage support
To: Viresh Kumar <viresh.kumar@linaro.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <562dd2e7-2b24-8492-d1c1-2dc4973f07be@samsung.com>
Date: Fri, 9 Aug 2019 17:58:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725022343.p7lqalrh5svxvtu2@vireshk-i7>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01SbUhTYRT23e69u96aXKe1k4nBMiIhTfq6fSBa/hiBpUFghejSi0p+savW
 7EdiKbnmtEK0YThMUEc6nWbmN3NulaakJqYNJS1KGYQfWGmW8xr573me85z3POfwkkJJL+5F
 Jqaks8oURZKMoLBm68+Bg2dLw6IO5T3xZhpKjThTbhnAmcLpOSEzOFgvYkzTozgz3FpGMAsF
 FsSUDnYKmFqLXcRUPF8UMbkdFhHTsCRnGqesRLBYbjLkE/KPo+2EvLHytlzbZEDyBZNPOH6F
 Oh3HJiVmssqAoBgqQVOdj6eV+NwsL5/AslENqBFJAn0ENPZUNaJICV2NoHj4Kc6TRQTG3q8E
 TxYQ2AccAjVy3ehw6IY2C1UIbL8qhDxxIOjWL4icLg/6DLSvLBHOGZ60H3z7wDplIf1eAK1L
 G5igA6GgV4ucWEwHQb3esGHHaF8otqc55R10JMxP9eC8xR1eP57BnNiVPgGTjRrEPymFnMUa
 nMd74IWjbCMO0OMiGL9buRk6FKxDaoLHHjBraxLx2Bv6HmkwvuEOAk3bhIgnRQgmbXrEu05B
 j+0d7kwnpA+AsTWAl0NAO2IR8Hd0gzGHOx/CDR42lwh5WQz38iS82xdWDCWbcbzg/swfrAjJ
 dFtW021ZR7dlHd3/uXqEGZCUzeCS41nucAp7w59TJHMZKfH+sanJJrT+ufrWbEstqHP1mhnR
 JJJtF3fnhkVJcEUmp0o2IyCFMk/xCLkuieMUqixWmRqtzEhiOTPaTWIyqfiWy9RVCR2vSGev
 s2waq/xXFZCuXtmobKgu4vIz6i2o1qg64/G9HkUxQeGyvl2OT+n9wS/PrdjmFsNHIupWoweo
 8/aQ2sKx5f5lirvwitYZR7oSf/vNU1XtP+K6kqSx+xRZkW1teuyobdulN/HNLvurPneYv1da
 wzQXJx7kaKUaVWbhyTZ7qMowu5NsVPd/Oaat1bbIMC5BEegnVHKKv0yxV1hYAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOIsWRmVeSWpSXmKPExsVy+t/xe7pOM3xjDZ6uU7PYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLTZ+9bDY
 /OAYmwOvx6ZVnWwed67tYfPYvKTeo2/LKkaPz5vkAlij9GyK8ktLUhUy8otLbJWiDS2M9Awt
 LfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S9DJ6VnSyFkyXq5g//zZLA+NKiS5GTg4JAROJ
 t7MusYHYQgJLGSXWNxp0MXIAxaUk5rcoQZQIS/y51gVUwgVU8ppR4tXbC2D1wgJOEnt+f2UD
 qRcR0JJ4eTMVpIZZ4CqTxOI9l1ggGhYxSSw5fQysgU3AUKL3aB8jiM0rYCexYcEqsGYWARWJ
 qXcLQMKiAhESh3fMgioRlDg58wkLiM0pYClxf3MPWJxZQF3iz7xLzBC2uETTl5WsELa8xPa3
 c5gnMArNQtI+C0nLLCQts5C0LGBkWcUoklpanJueW2ykV5yYW1yal66XnJ+7iREYqduO/dyy
 g7HrXfAhRgEORiUe3gOtvrFCrIllxZW5hxglOJiVRHivcACFeFMSK6tSi/Lji0pzUosPMZoC
 /TaRWUo0OR+YRPJK4g1NDc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTBW
 euVN+fYmQ1773/l7cyR/1jxbrXhLltlhyem3L/N3LL79yHBFgeNLkf/Cs4NN3keEzvqXVTBv
 zgbes75GyvEtJftPyD6tmbtsk4seY3PB+zeLwzPkLau3T9e5791Z0191Yt7xtR5cIbeZ94pu
 Tth6VmVWT6rXtblJ02IFBB9Os1y3vsrATFZDiaU4I9FQi7moOBEAdP93MOoCAAA=
X-CMS-MailID: 20190809155858eucas1p1b86dfa70fce2366fb99e85dd585a2cdc
X-Msg-Generator: CA
X-RootMTR: 20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1
References: <CGME20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1@eucas1p1.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190723020450.z2pqwetkn2tfhacq@vireshk-i7>
 <5ef302a4-5bbf-483d-dfdf-cf76f6f69cee@samsung.com>
 <20190725022343.p7lqalrh5svxvtu2@vireshk-i7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_085904_719593_27AEC49F 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, pankaj.dubey@samsung.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Viresh,

On 7/25/19 04:23, Viresh Kumar wrote:
> On 24-07-19, 15:10, Marek Szyprowski wrote:
>> On 2019-07-23 04:04, Viresh Kumar wrote:
>>> On 18-07-19, 16:30, Sylwester Nawrocki wrote:
>>>> This is second iteration of patch series adding ASV (Adaptive Supply
>>>> Voltage) support for Exynos SoCs. The first one can be found at:
>>>> https://lore.kernel.org/lkml/20190404171735.12815-1-s.nawrocki@samsung.com
>>>>
>>>> The main changes comparing to the first (RFC) version are:
>>>>   - moving ASV data tables from DT to the driver,
>>>>   - converting the chipid and the ASV drivers to use regmap,
>>>>   - converting the ASV driver to proper platform driver.
>>>>
>>>> I tried the opp-supported-hw bitmask approach as in the Qualcomm CPUFreq
>>>> DT bindings but it resulted in too many OPPs and DT nodes, around 200
>>>> per CPU cluster. So the ASV OPP tables are now in the ASV driver, as in
>>>> downstream kernels.
>>> 
>>> Hmm. Can you explain why do you have so many OPPs? How many
>>> frequencies do you actually support per cluster and what all varies
>>> per frequency based on hw ? How many hw version do u have ?
>>
>> For big cores there are 20 frequencies (2100MHz .. 200MHz). Each SoC 
>> might belong to one of the 3 production 'sets' and each set contains 14 
>> so called 'asv groups', which assign the certain voltage values for each 
>> of those 20 frequencies (the lower asv group means lower voltage needed 
>> for given frequency).
>
> There is another property which might be useful in this case:
> "opp-microvolt-<name>" and then you can use API
> dev_pm_opp_set_prop_name() to choose which voltage value to apply to
> all OPPs.

Thank you for your suggestions.

For some Exynos SoC variants the algorithm of selecting CPU voltage supply
is a bit more complex than just selecting a column in the frequency/voltage 
matrix, i.e. selecting a set of voltage values for whole frequency range.

Frequency range could be divided into sub-ranges and to each such a sub-range 
part of different column could be assigned, depending on data fused in 
the CHIPID block registers.

We could create OPP node for each frequency and specify all needed voltages 
as a list of "opp-microvolt-<name>" properties but apart from the fact that 
it would have been quite many properties, e.g. 42 (3 tables * 14 columns), 
only for some SoC types the dev_pm_opp_set_prop_name() approach could be 
used. We would need to be able to set opp-microvolt-* property name 
separately for each frequency (OPP).

Probably most future proof would be a DT binding where we could still 
re-create those Exynos-specific ASV tables from DT. For example add named 
opp-microvolt-* properties or something similar to hold rows of each ASV 
table. But that conflicts with "operating-points-v2" binding, where 
multiple OPP voltage values are described by just named properties and 
multiple entries correspond to min/target/max.

opp_table0 {
	compatible = "...", "operating-points-v2";
	opp-shared;
	opp-2100000000 {
		opp-hz = /bits/ 64 <1800000000>;
		opp-microvolt = <...>;
		opp-microvolt-t1 = <1362500>, <1350000>, ....;
		opp-microvolt-t2 = <1362500>, <1360000>, ....;
		opp-microvolt-t3 = <1362500>, <1340000>, ....;
	};
	...
	opp-200000000 {
		opp-hz = /bits/ 64 <200000000>;
		opp-microvolt = <...>;
		opp-microvolt-t1 = <900000>, <900000>, ....;
		opp-microvolt-t2 = <900000>, <900000>, ....;
		opp-microvolt-t3 = <900000>, <900000>, ....;
	};
};

I might be missing some information now on how those Exynos ASV tables 
are used on other SoCs that would need to be supported.

There will be even more data to include when adding support for the Body
Bias voltage, for each CPU supply voltage we could possibly have 
corresponding Body Bias voltage.

-- 
Thanks,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
