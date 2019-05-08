Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3183173C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 10:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BJnprBSoGaofLZfDIpQL91Kd4FNBl6KzbdcEiW88ea8=; b=BhqYL3wxVFXfiy
	jhjQfmxIa87Ig2dR/FNGbOFcv+nd1d0QlVrpHAXCVFf2ZbFYluvKabnw82MRZCGS5aDIUyEM+6MDl
	AffSOAvUBmrzw8y9WiTzOb1NO3aD6gVJHSCpDNSpLJBceCbL1q0OZoPdT9Ja+s48ZeT0plrC/Bcih
	C+8bX8jbR1m0plAQNQj/yVbN5mDUrL+MlMgxO9LluxcdIUpGQ1BcJKrEzaIU9iJ22gyckFl969O/P
	DuUHCWLrx2xPSj0BCgffrF+I7Gf02YCpLIHpMZzdLIzJLQqv51kgr7aTU0DfdC5yITS3OiWrsQY2/
	WNHNCgolnfi2Z3OsmASw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHvs-0008AA-Qv; Wed, 08 May 2019 08:28:08 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHvk-000891-Lh
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 08:28:03 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190508082756euoutp0199e97e98afc66cce46b3109437a83103~cp85wDnnL2646426464euoutp012
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  8 May 2019 08:27:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190508082756euoutp0199e97e98afc66cce46b3109437a83103~cp85wDnnL2646426464euoutp012
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1557304076;
 bh=M4mu9eJCCybXEe/MwRtmtZ/unoWjTw3QHUKRuPZGCq8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Uy6wXrmQTcEYe9xqOBq0vV9FpWIc/SXhUaCR32DFsAqXD38gbdCi+HlPdgOOYD7kR
 ATuj9mLPXp/DRCRx88R46Y68RbMOahz0qMptUiSfybacBYowYM1AU03zqN/DsQq6ay
 DZnAKOp9/MYYQO4kE1MfplzRB/mW9N6Mp3JvGjic=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190508082755eucas1p2903df84538b5040ee65b5a63a7df0271~cp846_nvr0525005250eucas1p2U;
 Wed,  8 May 2019 08:27:55 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 05.2F.04325.B0392DC5; Wed,  8
 May 2019 09:27:55 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190508082754eucas1p1e2cd519164630da5c563d523a57335fb~cp84ECnnR2412224122eucas1p1t;
 Wed,  8 May 2019 08:27:54 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190508082754eusmtrp2dc29a29dfafd2669df0b9310997d1013~cp83w7pXG0448304483eusmtrp2A;
 Wed,  8 May 2019 08:27:54 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-94-5cd2930be523
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 80.6E.04146.90392DC5; Wed,  8
 May 2019 09:27:54 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190508082753eusmtip206c1e39f35a9bc347c80d2cf32caaf53~cp83DWoZ01049510495eusmtip2W;
 Wed,  8 May 2019 08:27:53 +0000 (GMT)
Subject: Re: [PATCH v3 3/4] Documentation: devicetree: add PPMU events
 description
To: Rob Herring <robh@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <d48d6629-f171-aae3-ba5a-ae4c13d29407@partner.samsung.com>
Date: Wed, 8 May 2019 10:28:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+K-bdhTBnW5R4M0nDoikfFRdz-BeZf9Rf-hSmACj4B2w@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SWUwTURT1dTrTAa0+CsoVXGLxQ4yCCwkvEQkao/3wA4OJRkmwyFiIbHYE
 RTQWNxREcZcK1CYoUNksjVBiiKksilhADBUIaiwKYXEBl7gi7dTI33lnybkneSwl66Z92LjE
 /Zw6URkvZ9zF95q+W5dPv/QsckWOhSF3r1fSxPZ5gCa6BitNztuHKdLWViUhT4+NSIjR3kWT
 zrp8hoznNCByva1eRMob+iTklq1DRHozShgycb9WQh6OZNLk66M3KAwrygrLkMKs7ZMojIYz
 jKK66KjinMmAFOPGBeHMDveQGC4+LpVTB4buco+tbbokTtbBwYrHNSIN6vXMQm4s4CB4ndFI
 ZyF3VoZLEFy7YxA5BBn+jOD92whBGJ/EZTb0L9FUk4cEoRjBx8ELYuExiqDiRK4z7om3QsXL
 LokDe+FF8PPUVWcHhVtpaNdmTiZYlsEBUGvY5/BI8UbI/HSFcWAxXgxjtz848Wy8HV41VdGC
 xwMe5/U7o254Cwz3hTloCntDT79OJOCFUDOaTzmqAGewMNhiFglXb4CL74rEAvaEoWaTRMDz
 YMKsc3l40OToXSsPg/18gcuzBh42d9COXgr7Q2VdoECvg+qS38hBA54JL0Y9hBNmwsV71yiB
 lsLpUzLBvQRMZ9tdRXOguOyqJBfJtVN2aaeM0U4Zo/3fexOJDcibS+ETVBy/OpE7EMArE/iU
 RFXA7qQEI5r8cE/+NH+pRfW/oi0Is0g+QzqY3BEpo5WpfFqCBQFLyb2ktgvPImXSGGXaIU6d
 FKVOied4C/JlxXJvafq01ztlWKXcz+3luGRO/U8VsW4+GnTc+lx/OGjB5tJcg6ZrBfbv1D+3
 qqOUXuunVQ11b8uKXPbj8tqeiaO707IjWnuGo0vTb/QcCYkNDgN9mC/XPfKg/tW3uar8+fZ2
 TXyLucAazIXqC8fCT4Yn+/kfU23KztY3zhoY8zXP2+PHdD6QrzGJHg2t9wsOKSWK4zPKYRUv
 F/OxypVLKTWv/AuvsEkVbAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02SXUhTYRjHe3fO2Y7W4jhnvgilji4icHb82jtZKl3ELozKLMoWNvSg5j50
 Z5PsJtPQWpTaSnSIBqXJMNucuRUhZssUzbEFW000TEvwAykziEpzjsC7H8///7t4eB4SEyzj
 MWSJRs/oNEqViBuOj62/nU4IN3kVhx4fQLbmpwTy/5gnULtrgkD1s4sYcrutPPSueomHemd9
 BHr/opWLVm+7AGp2D3DQE9cUD3X4PRw0ea2LizZeOnno9VIdgX6OfAZZlLy7rRvIn5unePJe
 y02u3P7oqvxOnwXIV3v3neDmiWU6rUHPxBVrWf1h0XkaJYlpKRInpUjFdLLkQnpSqigxQ1bI
 qEoqGF1ixkVxsXPYhJe1w8s9ow5OFZiMNIIwElIpcNjRAowgnBRQHQDOrX/CQ8EeeHfAwQtx
 JPzjM3JDpUUA19z3OMEgksqFPdO+rZKQioe/a5uIYAmjvAR81l9NhIw3OPww+xAzApLkUmLo
 tJQHBT51FNZ9u88NMk7th987V7Y4ijoLx1e68FAnAo62zOFBNYw6CRensoJjjEqDbfYZLMTR
 MDDXzglxLHQst2INQGDeZpu3KeZtinmb8gDgFiBkDKy6SM3SYlapZg2aInGBVt0LNk/dP/zL
 7gRe26khQJFAtIvfoPEoBISygq1UDwFIYiIh39/oVQj4hcrKK4xOm68zqBh2CKRu7taIxUQV
 aDcfR6PPp1NpCZLSkmRJchoSRfNvUK8UAqpIqWdKGaaM0f33OGRYTBU4QkyCQE2gdnBMsTMh
 FzZZd3wp/xpYO5fD0n/LRwbyHPJ6aBc1npnJNDGZgzPKZmgd9I9Z82TDy3GsbUE2v9GZnmOa
 +MjZ3aDOXrjEjgdWrdm8UnfraWHEgzKfk7h1rMURZ9SYY1XxQ0IPf0DqqdEe97YV7nXZ+ubX
 r4twtlhJH8R0rPIfFFgdEwADAAA=
X-CMS-MailID: 20190508082754eucas1p1e2cd519164630da5c563d523a57335fb
X-Msg-Generator: CA
X-RootMTR: 20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0
References: <1555681688-19643-1-git-send-email-l.luba@partner.samsung.com>
 <CGME20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0@eucas1p2.samsung.com>
 <1555681688-19643-4-git-send-email-l.luba@partner.samsung.com>
 <20190430223629.GA22317@bogus>
 <1fd44623-4a59-f014-1ae9-a7cc605ad30f@partner.samsung.com>
 <CAL_JsqJcm9Z6vYFHGyAZ+h3-kmSv6e=3NtO-fjJn3-QT0JoX+w@mail.gmail.com>
 <97277857-666d-7720-9d85-19120c977682@partner.samsung.com>
 <3d221027-292b-7d0d-2510-f230a81f4b52@partner.samsung.com>
 <CAL_Jsq+K-bdhTBnW5R4M0nDoikfFRdz-BeZf9Rf-hSmACj4B2w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_012800_998955_9285C912 
X-CRM114-Status: GOOD (  22.13  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 "moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 5/7/19 6:50 PM, Rob Herring wrote:
> On Tue, May 7, 2019 at 4:05 AM Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>
>> Hi Rob,
>>
>> On 5/6/19 12:29 PM, Lukasz Luba wrote:
>>> Hi Rob,
>>>
>>> On 5/2/19 10:24 PM, Rob Herring wrote:
>>>> On Thu, May 2, 2019 at 3:52 AM Lukasz Luba
>>>> <l.luba@partner.samsung.com> wrote:
>>>>>
>>>>> Hi Rob,
>>>>>
>>>>> On 5/1/19 12:36 AM, Rob Herring wrote:
>>>>>> On Fri, Apr 19, 2019 at 03:48:07PM +0200, Lukasz Luba wrote:
>>>>>>> Extend the documenation by events description with new
>>>>>>> 'event-data-type'
>>>>>>> field. Add example how the event might be defined in DT.
>>>>>>
>>>>>> Why do we need event types in DT? We don't do this for other h/w
>>>>>> such as
>>>>>> ARM PMU.
>>>>> In ARM PMU all the events are hard-coded into the driver code i.e. in v7
>>>>> arch/arm/kernel/perf_event_v7.c
>>>>> and are seen from perf. They are different type and for different
>>>>> purpose. The Ecynos PPMU events are not seen in perf, they are
>>>>> for internal monitoring and must not be reset by other actors like perf.
>>>>> They are used by the 'bus drivers' to made some heuristics and tune the
>>>>> internal settings, like frequency.
>>>>>
>>>>> Chanwoo has written PPMU driver which relies on DT definition.
>>>>> The DT events are used by other DT devices by phandle.
>>>>
>>>> How is that done? I don't see anything in the binding for that.
>>> Here are the DT devices and how they are pinned together:
>>> - declared devfreq events:
>>> https://elixir.bootlin.com/linux/latest/source/arch/arm/boot/dts/exynos4412-ppmu-common.dtsi
>>>
>>> - devfreq events pinned to the bus device:
>>> https://elixir.bootlin.com/linux/latest/source/arch/arm/boot/dts/exynos4412-odroid-common.dtsi#L107
>>>
>>> - the bus device itself:
>>> https://elixir.bootlin.com/linux/latest/source/arch/arm/boot/dts/exynos4412.dtsi#L457
>>>
>>>
>>> Regards,
>>> Lukasz
>>>
>>>>
>>>> Rob
>>>>
>>>>
>> Can I send the next version of the patch set, which has Chanwoo's
>> suggestions, or do you have some objections to this PPMU entries?
> 
> I think the existing binding which this is based on needs some
> changes, so it's pointless really for me to comment on additions.
Maybe the bindings description is not perfect, but it contains
examples which might help clarifying the idea.
Regarding the real value of the patch set, it is needed for some
research. Currently, the Odroid xu3/4 is the best 'mainline' platform
with big.LITTLE, has good performance and these counters.
Willy, who is doing his PhD, wants to experiment with it. I agree that
it could be better documented but it requires more effort.
I will extend the documentation it in my free time slots (it is not my
main task for now).

For now, I have received comments and parts of code from Chanwoo which
made the next patch set mature and ready to merge (IMHO).

If you have suggestions how to improve these bindings or links for good
examples, I would really appreciate. Thank you for your time and review.

Regards,
Lukasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
