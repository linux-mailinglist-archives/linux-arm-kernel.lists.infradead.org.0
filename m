Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBDF6B9BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JoQwYzn12Yyu3ummucqmBJatb+0iBUm8Xlzg+sOBv18=; b=aKrAQOk+buSAss
	PdQ2lygfOr8elelKOYtXAWLG0kUQUOtuP/nm+W6DYX8BnGO32rYUSLjlN91FtYqFzhedWPr+MWjgR
	NKIta2KZvQPL7yKZURZUQgwM8AdJbsKBUgmN/BvJBD4OZTMAeYFtA1izdLA6fGwjYkgZ0nkzSGI58
	o67fwEDCMm8bZDsAwhr0I0NbCfBy4DI9XJ2nR5NqvBGvx6nvBrKD4+7n0OQt/Ynv+qM+zNGvZHxMx
	wSb7/TUQ7+vd/Urnm8cGekbNVNaTddtj0AXyj5g+AqlE1rgBbZIY5Eq6pwLVwhJs9SUEgoyyQ13Of
	Os5kNFPILudkn2jvYKiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hngoS-0006ed-9u; Wed, 17 Jul 2019 10:05:28 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hngnu-0005DD-RA
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:04:57 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190717100449euoutp017b1966d224fcbfade2900a0c689fc8db~yKbelL0-A1886618866euoutp012
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 10:04:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190717100449euoutp017b1966d224fcbfade2900a0c689fc8db~yKbelL0-A1886618866euoutp012
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563357889;
 bh=woUJD0MUnc7hgwlmdEjoDvm2u+6Gwv5jeL7G5nOpHTQ=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=fp+150wWRFK7b/hDvHrDMyGmhJ++OhFBf/C1SXbo08qLP04PcruqlM14nVbSA0Fya
 lGBHrxBc4VSwbRp5qA0MAWdB5366JYtige0BHcxI++GG7Hp8Rmbd4z6lxtLUe3rEVq
 rEXfePNKnJXGkt2YRRJF+Qyjg9HiFd+XN3bkplcc=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190717100448eucas1p116241be6945c25de5db5c28dabc6360e~yKbdyJ_Hk1760117601eucas1p1v;
 Wed, 17 Jul 2019 10:04:48 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 94.14.04325.0C2FE2D5; Wed, 17
 Jul 2019 11:04:48 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190717100447eucas1p2c3ee55926bbd8e8461f0ff6cce4c2d22~yKbc1SkET3264032640eucas1p2p;
 Wed, 17 Jul 2019 10:04:47 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190717100447eusmtrp163ec65e7682310c1a3264c64fcd8c9b8~yKbcnChcV1501515015eusmtrp1g;
 Wed, 17 Jul 2019 10:04:47 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-ff-5d2ef2c0e56b
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 7C.E8.04146.FB2FE2D5; Wed, 17
 Jul 2019 11:04:47 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190717100446eusmtip224af8f2f728af37f179fcc85a4346b9a~yKbb22hAM0168001680eusmtip2U;
 Wed, 17 Jul 2019 10:04:46 +0000 (GMT)
Subject: Re: [PATCH v1 20/50] ARM: dts: exynos: change and rename FSYS OPP
 table in Exynos5420
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <33804835-4003-b86d-62cf-3802fbb91202@partner.samsung.com>
Date: Wed, 17 Jul 2019 12:04:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAJKOXPfHgmBo9NX6jO8qSqXjN1pFmnKkQEWbou+q7-BDq2XKQg@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrPKsWRmVeSWpSXmKPExsWy7djP87oHPunFGuw/wmVxa905VouNM9az
 Wlz/8pzVYv4RILf/8Wtmi/PnN7BbnG16w26x6fE1VouPPfdYLS7vmsNmMeP8PiaLtUfuslss
 vX6RyeLiKVeL240r2Cxa9x5htzj8pp3V4t+1jSwOQh5r5q1h9Hh/o5XdY9OqTjaPzUvqPfq2
 rGL0+LxJLoAtissmJTUnsyy1SN8ugStj02qfgr3yFc9O5jYw3hDrYuTkkBAwkWhqfcHcxcjF
 ISSwglHi59+FzCAJIYEvjBJtn0shEp8ZJTZe2ckO03HpxiVGiMRyRok1t+6wQHS8ZZQ4cCgQ
 xBYWSJDYubuJCcQWEdCUuP73OytIA7PAVRaJH/e/AzVwcLAJ6EnsWFUIYvIKuEmsvyQJUs4i
 oCqx/+wyNhBbVCBC4vKWXYwgNq+AoMTJmU/AVnEKBEr82n4MbDyzgLjErSfzoWx5ie1v54B9
 IyHQySFx/mYXC8TRLhLfOreyQtjCEq+Ob4F6Rkbi9OQeqJpiiYbehYwQdo3E4/65UDXWEoeP
 X2QFuZMZ6Jf1u/Qhwo4Sj16+ZQIJSwjwSdx4KwhxAp/EpG3TmSHCvBIdbUIQ1RoSW3ouMEHY
 YhLL10xjn8CoNAvJY7OQPDMLyTOzEPYuYGRZxSieWlqcm55abJyXWq5XnJhbXJqXrpecn7uJ
 EZjsTv87/nUH474/SYcYBTgYlXh4PQ7rxgqxJpYVV+YeYpTgYFYS4bX9qh0rxJuSWFmVWpQf
 X1Sak1p8iFGag0VJnLea4UG0kEB6YklqdmpqQWoRTJaJg1OqgXFG/p2bn0Jjp61t3qLR4fO3
 9I6PuZlN8LUM8XnhZ4UO/mG4m/x05r8DZ5JrihnvFB7fEmX1v/yUz7bioFOiVjM3O8xYyJL2
 oI3zZqzi0STXXrGcX5oGhhv9VJe0PQw99r/aZeWzj/KnD4p1ezxMP6Qi/WpthmzL/WkrDv15
 3soaxBR4UenxTmYlluKMREMt5qLiRACmTvIicgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrKIsWRmVeSWpSXmKPExsVy+t/xe7r7P+nFGmzdzWtxa905VouNM9az
 Wlz/8pzVYv4RILf/8Wtmi/PnN7BbnG16w26x6fE1VouPPfdYLS7vmsNmMeP8PiaLtUfuslss
 vX6RyeLiKVeL240r2Cxa9x5htzj8pp3V4t+1jSwOQh5r5q1h9Hh/o5XdY9OqTjaPzUvqPfq2
 rGL0+LxJLoAtSs+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384mJTUnsyy1
 SN8uQS9j02qfgr3yFc9O5jYw3hDrYuTkkBAwkbh04xJjFyMXh5DAUkaJBxtPs0IkxCQm7dvO
 DmELS/y51sUGUfSaUWL1po1gRcICCRI7dzcxgdgiApoS1/9+ZwUpYha4yiIx5dVGdoiOfiaJ
 Z2sPALVzcLAJ6EnsWFUIYvIKuEmsvyQJ0ssioCqx/+wyNhBbVCBCoq9tNpjNKyAocXLmExYQ
 m1MgUOLX9mNgu5gFzCTmbX7IDGGLS9x6Mh8qLi+x/e0c5gmMQrOQtM9C0jILScssJC0LGFlW
 MYqklhbnpucWG+oVJ+YWl+al6yXn525iBEb5tmM/N+9gvLQx+BCjAAejEg+vx2HdWCHWxLLi
 ytxDjBIczEoivLZftWOFeFMSK6tSi/Lji0pzUosPMZoCPTeRWUo0OR+YgPJK4g1NDc0tLA3N
 jc2NzSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTD2zFzdtpphsel25Smbsg4pFLZMOWPT
 fi3ZeneD0HazuDWr3q5z+dVctbjean198YN/jxtYymbunhElqnD7+8S8WfJvvhtebNL8JmZi
 EBDx6+Gy6s+/56epZar1TTkqelj+ceTlr7lTrt2c+nae1ptfkVYlT6dfi4nmV9z4nuViVfzb
 v4FKCgWnlFiKMxINtZiLihMB7Er3dQgDAAA=
X-CMS-MailID: 20190717100447eucas1p2c3ee55926bbd8e8461f0ff6cce4c2d22
X-Msg-Generator: CA
X-RootMTR: 20190715124450eucas1p189043d196375aa6adacf898de81bfa9b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124450eucas1p189043d196375aa6adacf898de81bfa9b
References: <CGME20190715124450eucas1p189043d196375aa6adacf898de81bfa9b@eucas1p1.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-21-l.luba@partner.samsung.com>
 <CAJKOXPfHgmBo9NX6jO8qSqXjN1pFmnKkQEWbou+q7-BDq2XKQg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_030455_183078_7AE2E86E 
X-CRM114-Status: GOOD (  26.11  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 7/17/19 10:39 AM, Krzysztof Kozlowski wrote:
> On Mon, 15 Jul 2019 at 14:44, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>
>> The FSYS and FSYS2 buses have similar characteristics and both have max
>> frequency 240MHz. The old OPP table bus_fsys_apb_opp_table should be used
>> only to FSYS APB bus because APB max frequency is 200MHz.
>> The new OPPs for FSYS should increase its performance and related devices.
> 
> I do not understand the explanation. You say that there are two buses
> - FSYS and FSYS2 - and old OPP table should be used for FSYS APB but
> you remove the old one (by renaming). Or which one is the 'old one'
> here? The reason is speed... wait, what? Usually DTS should describe
> the HW so I imagine that proper opp table should be used for proper
> bus. It surprised me that we switch a bus to different OPP table just
> because of speed concerns. It should be correctness concern.
> 
> Please clarify and reword all this.
> 
> I am also not sure how this relates with previous patch - whether you
> are fixing independent issues. Maybe because I do not see the issue
> fixed... change the commit title and adjust the messages to focus WHY
> you are doing it. For small fixes WHAT you are doing is rather obvious
> so commit msg (and title) should not focus on it.

I don't know how familiar you are with AMBA standard or general concept
of NoC, so I am not sure if the explanation below would be sufficient.
There are 3 buses: FSYS, FSYS2, FSYS APB. The first two are connecting
AXI Slave/Master interfaces of the IP blocks. They are dedicated to
transfer the data i.e. to MMC block using 128 bit bus width and 240MHz
clock. The 3rd is dedicated for accessing peripheral registers -
connecting to IP block interfaces called APB3 slave.
As I mentioned in the comment the FSYS and FSYS2 are able to run faster
than the APB bus.
Thus, changing the old implementation which pinned FSYS and FSYS APB
to the same OPP table is wrong. The right connection made by OPP
reference should be FSYS and FSYS2 with also 240MHz max freq inside.

I have discussed offline with Bartek and I will squash DT patches to
an atomic-change-with-OPPs-and-PLL-rate-for-all-children, with more
detailed comment in the commit message describing the old state and the
new one.

Thank you for the review.

Regards,
Lukasz

> 
> Best regards,
> Krzysztof
> 
>>
>> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
>> ---
>>   arch/arm/boot/dts/exynos5420.dtsi | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
>> index 941c58bdd809..c7fc4b829b2a 100644
>> --- a/arch/arm/boot/dts/exynos5420.dtsi
>> +++ b/arch/arm/boot/dts/exynos5420.dtsi
>> @@ -995,7 +995,7 @@
>>                          compatible = "samsung,exynos-bus";
>>                          clocks = <&clock CLK_DOUT_ACLK200_FSYS>;
>>                          clock-names = "bus";
>> -                       operating-points-v2 = <&bus_fsys_apb_opp_table>;
>> +                       operating-points-v2 = <&bus_fsys_opp_table>;
>>                          status = "disabled";
>>                  };
>>
>> @@ -1003,7 +1003,7 @@
>>                          compatible = "samsung,exynos-bus";
>>                          clocks = <&clock CLK_DOUT_ACLK200_FSYS2>;
>>                          clock-names = "bus";
>> -                       operating-points-v2 = <&bus_fsys2_opp_table>;
>> +                       operating-points-v2 = <&bus_fsys_opp_table>;
>>                          status = "disabled";
>>                  };
>>
>> @@ -1157,7 +1157,7 @@
>>                          };
>>                  };
>>
>> -               bus_fsys2_opp_table: opp_table5 {
>> +               bus_fsys_opp_table: opp_table5 {
>>                          compatible = "operating-points-v2";
>>
>>                          opp00 {
>> --
>> 2.17.1
>>
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
