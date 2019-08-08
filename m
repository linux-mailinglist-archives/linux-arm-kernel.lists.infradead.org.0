Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C364286239
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:48:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w1dE9vdjJZUuBCybFYWr+/44syl9ykvpfIu3VJxVCY0=; b=ATQv3dSYPSHyD7yQEWJ2mXX3E
	N0ilmAQyntLRTObo0IktsycCvc90YKHCL5BkEnvdVb5b9e+TD2tXSbBTqUv7JVL51wOq1ZthgMeXT
	jEanx4SnM3kRRrHF38/+GcMT5slmn5U69Mu6UP4LN61TT1AEpT+hgLvnQAfctEOEiZY+yhzbBIszu
	uIjMdkADj8rtLW9lk3fPO38aOP6cckzSb+uaOcuDwZmtiIgFKdXJ+Zv60giCBBRME2vIdlPy3vLN+
	fiRSWHbQwid7H8H3I8y2A8avqLrfO2oaMbmT4za5KIlv3TWbK24CKKtyujK6eY4xpWDO77wkTf1Tz
	Gv8nIqppw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhqU-00011g-DX; Thu, 08 Aug 2019 12:48:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhqG-00010h-Rr
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:48:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8BE6115A2;
 Thu,  8 Aug 2019 05:48:27 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E029C3F694;
 Thu,  8 Aug 2019 05:48:25 -0700 (PDT)
Subject: Re: [PATCH v2 3/9] soc: samsung: Add Exynos Adaptive Supply Voltage
 driver
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>
References: <CGME20190718143130eucas1p26f2058f47eb2f4020e1ddbf1619d1ac8@eucas1p2.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190718143044.25066-4-s.nawrocki@samsung.com>
 <CAJKOXPeOfDHjqSotxVwVuy+6r9X3Q8ZXLit1_=gGd7bOwkHupA@mail.gmail.com>
 <a56fe2d8-1f26-b462-1564-f23902f7dbb5@samsung.com>
 <CAJKOXPc8iFo=2JAGEZSC46N3sZae4+JcZYBCjpKysb6PFPzyaQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <669c6b25-eb7e-ed3a-72a2-ee155a568363@arm.com>
Date: Thu, 8 Aug 2019 13:48:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJKOXPc8iFo=2JAGEZSC46N3sZae4+JcZYBCjpKysb6PFPzyaQ@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_054830_518785_BB83F5B5 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, pankaj.dubey@samsung.com, linux-pm@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, kgene@kernel.org, vireshk@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/08/2019 13:31, Krzysztof Kozlowski wrote:
> On Thu, 8 Aug 2019 at 14:07, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
>>>> +static unsigned int exynos5422_asv_parse_table(struct exynos_asv *asv,
>>>> +                                     unsigned int pkg_id)
>>>> +{
>>>> +       return (pkg_id >> EXYNOS5422_TABLE_OFFSET) & EXYNOS5422_TABLE_MASK;
>>>> +}
>>>> +
>>>> +static bool exynos5422_asv_parse_bin2(struct exynos_asv *asv,
>>>> +                                    unsigned int pkg_id)
>>>> +{
>>>> +       return (pkg_id >> EXYNOS5422_BIN2_OFFSET) & EXYNOS5422_BIN2_MASK;
>>>
>>> return !!() for converting to boolean.
>>
>> I'm not convinced it is needed, the return type of the function is bool
>> and value of the expression will be implicitly converted to that type.
>> Is there any compiler warning related to that?
> 
> Yeah, but bool is int so there will be no implicit conversion... I
> guess it is a convention. In theory !! is the proper conversion to
> bool but if bool==int then it's essentially conversion to 1. I am not
> sure what's the benefit, maybe for some wrong code which would do
> comparisons on result like if (exynos5422_asv_parse_bin2() == TRUE)...

Not so - since we use "-std=gnu89", we have C99-like _Bool, which our 
bool is a typedef of. Conversions, either implicit or explicit, are 
well-defined:

"6.3.1.2 Boolean type

When any scalar value is converted to _Bool, the result is 0 if the 
value compares equal
to 0; otherwise, the result is 1."

This is even called out in Documentation/process/coding-style.rst:

"When using bool types the !! construction is not needed, which 
eliminates a class of bugs."

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
