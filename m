Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE9265774
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 14:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIOl55KUHpdsalOFvLvwt6zKIuCNx0dQPj2UTC9DeHo=; b=JrYkPN5uqMUiAZ
	y0sOnxfrEywFYug/Wq6D1Do5D7ngt/Kf9Th6XxYCewPf0gN5JyOMwj9E3rWP2YiMOndBJgpFkprP0
	VxGa9fPIqdAbPpnpr0DOPtTq8+iCmnEUJYFeDhMDvMkLQwfIqDcRPGlSmdGvaN/jTrZsb/W+OsPMF
	YF8UEy+nuHSjmQz/UsX6tDe+5XqCerM1pvrBbdZh2h6QY5qRgfC5IlBQ1x12GsOHFfeNT45I1Hsy6
	N3IlHWqnttg4/8pym3CLHVIRXCw99E0lBo6TtcZbyZ/yavlUO9DCGIOUedcjVi5Aw00tK2UClTSII
	1UCrEANxaWpeBlxPqaLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlYeN-00014Y-JM; Thu, 11 Jul 2019 12:58:15 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlYeD-00013Z-T0
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 12:58:07 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190711125800euoutp01828740e0289a689a971bccc7586ff02b~wW6_nij1w1548715487euoutp01d
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 12:58:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190711125800euoutp01828740e0289a689a971bccc7586ff02b~wW6_nij1w1548715487euoutp01d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562849880;
 bh=vU9qDdY1dDbJlzQ9n1GbwihwW2hQxnIb8uEXqej1M0w=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=OgaSn6McuxgFj/ZbUKd5QfPd0NJAUGPGKUO+WkU/7vqTu0zOPxxQ4s2hEm1x0Nag3
 nL+I8x0ztc68T7AhePCqkNhKwTe/ajJzsTQsyptLVPevNtG3jclZdAHdvXEHURzDHS
 mi3zRs0Hta5ya2n7H1lplC54MUMK8DrYiXWBYr34=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190711125759eucas1p1eb80c893d814e311caf62e05af60d236~wW693jgVi2653926539eucas1p1W;
 Thu, 11 Jul 2019 12:57:59 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 37.05.04298.752372D5; Thu, 11
 Jul 2019 13:57:59 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190711125758eucas1p2726d34fa165f6645a51acd9f5b74ee68~wW69CUW4d2688026880eucas1p2j;
 Thu, 11 Jul 2019 12:57:58 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190711125758eusmtrp11e5293de3383f2e2615ebddb8ffe54ec~wW680Bw2Z2705327053eusmtrp1A;
 Thu, 11 Jul 2019 12:57:58 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-d6-5d2732576105
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 6B.04.04140.652372D5; Thu, 11
 Jul 2019 13:57:58 +0100 (BST)
Received: from [106.120.51.18] (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190711125757eusmtip2f5b45b481281385eea833ffcf9a8fdf9~wW68Aeypy2342723427eusmtip2T;
 Thu, 11 Jul 2019 12:57:57 +0000 (GMT)
Subject: Re: [PATCH 1/3] opp: core: add regulators enable and disable
To: Viresh Kumar <viresh.kumar@linaro.org>
From: Kamil Konieczny <k.konieczny@partner.samsung.com>
Message-ID: <fc404004-510e-5e76-df5f-ea78fdf51bf7@partner.samsung.com>
Date: Thu, 11 Jul 2019 14:58:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190711062226.4i4bvbsyczshdlyr@vireshk-i7>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUzMcRzHfe/3WHP27efUZxjb0YxNYTbfloXNwzF/mM3DWOXST6Gr3K8o
 bPIYt0rY6E4qG2qhuuvJGsfqdLjU0iPC9WBE56mHFRZ+/Zj+e33fn/d7n/dn+/KU8JaZyu+O
 TRCNsfoYLetNV9SONMzfsmhO6ILXdf7EmlXMkLaBdwzJddQz5Gz3R4o0NJRw5OmxPo7YulsZ
 0lSVzZL+dAciWQ12FbnteMWR622NKvLyaAFL+oafqsjJew6OjLZaaWId1JFSdy27XNDdyrmF
 dLbCM6yuo/Uuqyu9dkSXUVaIdM72SpWu3zZjA7fNe2mkGLN7v2gMDNnhHf3Aszbe7JPU1OKb
 gobUJuTFA14MtzvKOBPy5gVcgKDl03VWHgh4AEF282qF+xEcL4J/gRFTClIC+Qgyb9hVysOD
 wPXwPpJdk/EqaMnNp0yI5zV4HvQ+F2UPhUdoKGmycrKHxUugq7JOJbMar4YvXb1I9tPYH8o8
 YbI8BW+FJ44cWrH4wGNzzxh74SCoyCoYi1LYD1705P7lmVDpyabkXYDTeRgaymCV1iuhvNRD
 KTwZPjjLOIWng+tCGq3wAXh7NYNTwicQuFO//h0EQ42zkZHLUXguFFcFKvIK6D5To5JlwJOg
 3eOjdJgE5ysuUYqshtOnBMU9H3J+1TEKTwPTryImE2kt4y6zjLvGMu4ay/+9eYguRH5iomSI
 EqWFseKBAElvkBJjowJ2xhls6M/nc406v91Bg88iqhHmkXaimvf4hwqMfr+UbKhGwFNajdq+
 ZlaooI7UJx8UjXHhxsQYUapG03ha66c+NMG9XcBR+gRxryjGi8Z/UxXvNTUF3ezZsy7O3aE5
 Ohi5wV4SnGq8bzcXHhqocS1rbB22cFxvUcm7+jftV8JLL9vPueMNkd+HyzX7gka9PvSJq9LD
 ijoTmfi560Vzp7PWsDTJfHhT9LB0sTwkc3ZAXpz1s+vSz10Rm+lq31TwT3v/6lGuxm9jV0T+
 4I8MW5jRuldoTtLSUrR+4TzKKOl/A4oj3pV4AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrJIsWRmVeSWpSXmKPExsVy+t/xe7phRuqxBtOOaFhsnLGe1eL6l+es
 FvOPnGO16H/8mtni/PkN7BZnm96wW2x6fI3V4vKuOWwWn3uPMFrMOL+PyWLtkbvsFkuvX2Sy
 uN24gs3izY+zTBate4+wW/y7tpHFYuNXD4vND46xOQh5rJm3htFj06pONo871/aweWxeUu/R
 t2UVo8fxG9uZPD5vkgtgj9KzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rez
 SUnNySxLLdK3S9DLOPDWs2CmYMXlq2INjN94uxg5OSQETCR+djUwgthCAksZJTbeK4CIS0s0
 nl7NBGELS/y51sXWxcgFVPOaUWLW9j9gDcICrhJX5y9n7mLk4BAR0JJ4eTMVpIZZ4DeLxP6F
 56EampgkZj1dAtbAJmAu8Wj7GbCpvAJuEh8evWQEaWYRUJXY8jYOJCwqECEx6dpOFogSQYmT
 M5+A2ZwClhLbZqwAa2UWUJf4M+8SM4QtLnHryXyouLzE9rdzmCcwCs1C0j4LScssJC2zkLQs
 YGRZxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERjt24793LKDsetd8CFGAQ5GJR7egIeqsUKs
 iWXFlbmHGCU4mJVEePe5K8cK8aYkVlalFuXHF5XmpBYfYjQF+m0is5Rocj4wEeWVxBuaGppb
 WBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamBM5jykK5VVkS2+NzU0cFbOogyP
 tRfvPz9fVHWnOkbgZGGn0QIz3xmFNbyRNq9zzhmF5tv9+sr+TO/Yf6/A9Tc3+NRzufz1KbDk
 z1D+NU2C/3fygk1F8/JZes3L7m6fwyxtbR6hrnt91We59JfT+hz/ipU/47y7uT42x0vw5fkf
 l7Me+hyWuKvEUpyRaKjFXFScCADk5HCkDAMAAA==
X-CMS-MailID: 20190711125758eucas1p2726d34fa165f6645a51acd9f5b74ee68
X-Msg-Generator: CA
X-RootMTR: 20190708141159eucas1p1751506975ff96a436e14940916623722
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190708141159eucas1p1751506975ff96a436e14940916623722
References: <20190708141140.24379-1-k.konieczny@partner.samsung.com>
 <CGME20190708141159eucas1p1751506975ff96a436e14940916623722@eucas1p1.samsung.com>
 <20190708141140.24379-2-k.konieczny@partner.samsung.com>
 <20190711062226.4i4bvbsyczshdlyr@vireshk-i7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_055806_073260_D50F097E 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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
 linux-samsung-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11.07.2019 08:22, Viresh Kumar wrote:
> On 08-07-19, 16:11, k.konieczny@partner.samsung.com wrote:
>> From: Kamil Konieczny <k.konieczny@partner.samsung.com>
>>
>> Add enable regulators to dev_pm_opp_set_regulators() and disable
>> regulators to dev_pm_opp_put_regulators(). This prepares for
>> converting exynos-bus devfreq driver to use dev_pm_opp_set_rate().
>>
>> Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
>> ---
>>  drivers/opp/core.c | 13 +++++++++++++
>>  1 file changed, 13 insertions(+)
>>
>> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
>> index 0e7703fe733f..947cac452854 100644
>> --- a/drivers/opp/core.c
>> +++ b/drivers/opp/core.c
>> @@ -1580,8 +1580,19 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
>>  	if (ret)
>>  		goto free_regulators;
>>  
>> +	for (i = 0; i < opp_table->regulator_count; i++) {
>> +		ret = regulator_enable(opp_table->regulators[i]);
>> +		if (ret < 0)
>> +			goto disable;
>> +	}
> 
> What about doing this in the same loop of regulator_get_optional() ?

yes, this is good, it will simplify code

>> +
>>  	return opp_table;
>>  
>> +disable:
>> +	while (i != 0)
>> +		regulator_disable(opp_table->regulators[--i]);
>> +
>> +	i = opp_table->regulator_count;
> 
> You also need to call _free_set_opp_data() here.

good catch
if I move enable in loop above, then this will not be needed

>>  free_regulators:
>>  	while (i != 0)
>>  		regulator_put(opp_table->regulators[--i]);
>> @@ -1609,6 +1620,8 @@ void dev_pm_opp_put_regulators(struct opp_table *opp_table)
>>  
>>  	/* Make sure there are no concurrent readers while updating opp_table */
>>  	WARN_ON(!list_empty(&opp_table->opp_list));
> 
> Preserve the blank line here.
> 
>> +	for (i = opp_table->regulator_count - 1; i >= 0; i--)
>> +		regulator_disable(opp_table->regulators[i]);
>>  
>>  	for (i = opp_table->regulator_count - 1; i >= 0; i--)
>>  		regulator_put(opp_table->regulators[i]);
> 
> Only single loop should be sufficient for this.

you are right, I will do this in single loop

I will send v2

-- 
Best regards,
Kamil Konieczny
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
