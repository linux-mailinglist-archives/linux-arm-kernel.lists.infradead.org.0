Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B24B745C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 09:45:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpoJ4oYLSjHRk/SCy8f2spnKPu/tjSfzajotq1iQKzA=; b=sAM/47afisJ1KM
	1MnTC0NMAuOwdW8ldpSasoOlb+CcWYuyemAi4kd3Z68pp3n9s0hn6q08RKRU298gCQg1ljMA54wvG
	SgHlkkT/tDbcCDWlDl43x9BRtdFTl5k2GnJrzaC1rTgLg6Np7Y25uMFk614AgA1VVmvaFw2MqVqXX
	0LD0C/MzZ6XH0aPATmS7CexQYqpAyac2dJqGDBML06vSkHVWosHqMBn6LF1j6zJ3LayzFiiGxqPNM
	DV0T2HPSPEiHYXe+3EB5x/QZZ584D6WXpt45ou+5hCd2mXSLKhgIe2woFO2ZhLt/OpDpNBDjCsZlA
	mFugMluaHKSDZM9mpKvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAr7O-0006eV-RF; Thu, 19 Sep 2019 07:44:47 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAr64-0006cT-2z
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 07:43:29 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919074321euoutp02abd2b4a2839a1d69e73fc4b236be71db~FxyO9pAcu1572615726euoutp02o
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 07:43:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190919074321euoutp02abd2b4a2839a1d69e73fc4b236be71db~FxyO9pAcu1572615726euoutp02o
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568879001;
 bh=VM4IIbn3EevkeSWzC5pJywlEMfKiPVMT0Ut0ubgYWY4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=M3fIaDoSEb3ylVYa6JUrMXMcIDPluwbFQjkx+UV92J2JZ1I7MPDhx7/43b3fJ4VfT
 ZxZ8IabQVghTRSLOgLm/gQYS0E1LIH07FYY1h4+fXiA+5ogjdAX0ZsFFChsc3CBv+m
 wi4rpVoUcRtyRPp6+p+8YQNqtmjYzqd8A98hd23Y=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190919074320eucas1p24957c0a000c67fdfceb824fa47a92d0d~FxyOJzSAT1725317253eucas1p2n;
 Thu, 19 Sep 2019 07:43:20 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 45.6F.04469.891338D5; Thu, 19
 Sep 2019 08:43:20 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190919074319eucas1p161853b43fb7799db11b6eacd89211c98~FxyNSSOKd1048710487eucas1p1w;
 Thu, 19 Sep 2019 07:43:19 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190919074319eusmtrp2d1b2797578f57c87f1980419ade35036~FxyNCZqbf2055420554eusmtrp2e;
 Thu, 19 Sep 2019 07:43:19 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-03-5d8331989d8c
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 09.B5.04166.791338D5; Thu, 19
 Sep 2019 08:43:19 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919074318eusmtip1991029d24405dec0743580d437c41e16~FxyMT6ouz1755617556eusmtip1x;
 Thu, 19 Sep 2019 07:43:18 +0000 (GMT)
Subject: Re: [PATCH v2 3/3] dt-bindings: ddr: Add bindings for Samsung
 LPDDR3 memories
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <4e7b0a6d-491f-a764-f038-1aff5534320f@partner.samsung.com>
Date: Thu, 19 Sep 2019 09:43:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPfBueaf2UVik8x2L_D_PTxdkvRukuWL3xh_jDiLKtt7pQ@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRj22zln52y1+jYr3zSUVtGNrIHRgSwKIlZBVD8qulCrDlpu03a0
 O3gJL5lTq1W6LS9gKmtizmFqdGFKWsumBS6KUHQSVKvILkqpbTtG/nu+53ne73kfeBlC8YaK
 ZI7rUzmDXqNViqVk05NRz4oS1cWDqx4XhbMNJfUU6/3+nmLL219QbNHgR4L1eO7SbFfWJ5p1
 DPZS7KtWq5gdNrYjtsTzUMTWtb+j2dveHhH7NrNWzGY/aKfZtk+5FPuzcwBtwGp7mR2pW8zv
 aLXDdkmsbqxKVxc6bUg97IjeId4njT/GaY+f4gwr1x+WJj6ZsFApz6PPFJq6yQzkg3wkYQDH
 QeOzKpSPpIwC1yL4OlQpDgoK/B1Bff5uQRhG8KhznPg30XDtIy0INQjcpjuk8PAjyLNbQ+Ph
 eC9k1JpEQTwLLwXv2C8qaCKwi4SS1tGAwDBiHAvNtpNBjwxvhuKRGyE/iRfBD7ePCuLZgX++
 9bdRgkcOT0t9ZBBL8E7oyu4KZRE4At74ykUCjoF7fisRzAKcyUDBzxFaWHsT9DW4xQIOhw8d
 zkl+Hky0CMOAecgwViIBX4DBoluTnrXQ1tFDBXcmAmXqW1cK9EZ40O0M0YBnwGu/XFhhBlxt
 ukkItAzychSCewk4C7ong+ZAjf0GXYyU5inFzFPKmKeUMf/PrUCkDUVwabwugeNVeu50LK/R
 8Wn6hNijyToHClyce7zjWzP68fKIC2EGKafLRhZnHVRQmlP8WZ0LAUMoZ8msqwOU7Jjm7DnO
 kHzIkKbleBeKYkhlhOx8WP9+BU7QpHJJHJfCGf6pIkYSmYGidHua1qgbb2obCsq9fypKF/Zm
 ZzeHUZYsW9SB7c/p3l0dhrjW1ITzquq6pV+M/dN4ecv1Dxfkks8mB5+/rXrxyHxTQd2KobkW
 t7dM4l+Ot4zFhB3K/TUQmdKnNBamD8jXVW6N8WfyaKb+clLfiSthOTZHfFTZfUtsbdLvBfuT
 lSSfqFEtIwy85i8uymdrbQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrPIsWRmVeSWpSXmKPExsVy+t/xu7rTDZtjDc4dkLTYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C3ONr1ht9j0+BqrxeVdc9gsPvceYbSYcX4fk8XaI3fZLZZev8hk
 cbtxBZtF694j7BaH37SzWnw78YjRQcBjzbw1jB47Z91l99i0qpPNY/OSeo++LasYPT5vkgtg
 i9KzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxLLdK3S9DLOPZ/
 NmvBGbmKvikXWBoYn0h0MXJySAiYSGyc/Jq9i5GLQ0hgKaPExK3trBAJMYlJ+7azQ9jCEn+u
 dbFBFL1mlDh/5S8TSEJYIEKi59h0sAYRAU2J63+/s4IUMQscYpH4tPU4I0THFGaJxh2PgDo4
 ONgE9CR2rCoEaeAVcJOY8GMa2CAWAVWJr6efgA0SBRp6eMcsRogaQYmTM5+wgNicAoESZ1vP
 soHYzAJmEvM2P2SGsMUlbj2ZzwRhy0tsfzuHeQKj0Cwk7bOQtMxC0jILScsCRpZVjCKppcW5
 6bnFhnrFibnFpXnpesn5uZsYgZG97djPzTsYL20MPsQowMGoxMP7Q70pVog1say4MvcQowQH
 s5II7xxToBBvSmJlVWpRfnxRaU5q8SFGU6DnJjJLiSbnA5NOXkm8oamhuYWlobmxubGZhZI4
 b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGRl6BOKdfLowz5Czft+cwzzoYHt1a3vB+6/aZrm8d
 3m870Hv5zZlTD/jWMd7I9ok5ejZm/0k7nui/72dcVDRvqJ4bXFNytjvEk5f7ZO5/7Ywd/Rec
 Zr88UPSr/03vqlef9zQuMkjkD5PaP3cre/7fCV/36RxhO3fY1T1hT4jLRUveI9rnuKUkriqx
 FGckGmoxFxUnAgBc5KIXAgMAAA==
X-CMS-MailID: 20190919074319eucas1p161853b43fb7799db11b6eacd89211c98
X-Msg-Generator: CA
X-RootMTR: 20190916100719eucas1p206fe95982b774840b5d6e62ba9c42c79
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190916100719eucas1p206fe95982b774840b5d6e62ba9c42c79
References: <CGME20190916100719eucas1p206fe95982b774840b5d6e62ba9c42c79@eucas1p2.samsung.com>
 <20190916100704.26692-1-l.luba@partner.samsung.com>
 <20190916100704.26692-4-l.luba@partner.samsung.com>
 <CAJKOXPcxG-mMKy5u-b0+xj_sOmrq5yq5-LYJx0Ds6_+yo_=JbA@mail.gmail.com>
 <4a0d1d2c-cd1d-5df4-d4b1-f2dd1ef3bb72@partner.samsung.com>
 <CAJKOXPfBueaf2UVik8x2L_D_PTxdkvRukuWL3xh_jDiLKtt7pQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_004325_388918_BD23EE3C 
X-CRM114-Status: GOOD (  26.31  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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



On 9/19/19 9:28 AM, Krzysztof Kozlowski wrote:
> On Thu, 19 Sep 2019 at 08:49, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>
>> Hi Krzysztof,
>>
>> On 9/18/19 8:51 PM, Krzysztof Kozlowski wrote:
>>> On Mon, 16 Sep 2019 at 12:07, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>>>
>>>> Add compatible for Samsung k3qf2f20db LPDDR3 memory bindings.
>>>> Introduce minor fixes in the old documentation.
>>>>
>>>> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
>>>> ---
>>>>    Documentation/devicetree/bindings/ddr/lpddr3.txt | 9 ++++++---
>>>>    1 file changed, 6 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/ddr/lpddr3.txt b/Documentation/devicetree/bindings/ddr/lpddr3.txt
>>>> index 3b2485b84b3f..49afe794daaa 100644
>>>> --- a/Documentation/devicetree/bindings/ddr/lpddr3.txt
>>>> +++ b/Documentation/devicetree/bindings/ddr/lpddr3.txt
>>>> @@ -1,7 +1,9 @@
>>>>    * LPDDR3 SDRAM memories compliant to JEDEC JESD209-3C
>>>>
>>>>    Required properties:
>>>> -- compatible : Should be  - "jedec,lpddr3"
>>>> +- compatible : should be one of the following:
>>>> +       Generic default - "jedec,lpddr3".
>>>
>>> The convention is first compatible, then description. I gave you the
>>> example to base on - at25. Why making it different?
>>
>> I have checked at25 that you pointed me to and also checked at24, which
>> has a bit longer "compatible" section.
>>
>> I found that there are many "jedec,spi-nor" compatible devices, which I
>> thought would be a better example for my "jedec,lpddr3".
>> For example, two configurations, where you have a single labels or dual
>> (with specific device)
>> arch/arm/boot/dts/imx6dl-rex-basic.dts:
>> compatible = "sst,sst25vf016b", "jedec,spi-nor";
>> arch/arm/boot/dts/imx6q-ba16.dtsi:
>> compatible = "jedec,spi-nor";
>>
>> The 'compatible' in documentation for the "jedec,spi-nor" is slightly
>> different (similar to at24).
>> Documentation/devicetree/bindings/mtd/jedec,spi-nor.txt
>> It has a long explanation, which is also OK. So I thought that it is
>> quite flexible what you put in there.
> 
> It is flexible but I see clear pattern in existing sources:
>    jedec,spi-nor.txt
>    compatible : May include a device-specific ..
>    ...
>    Supported chip names:
>      at25df321a
>      ...
> 
>    at25.txt:
>    - compatible : Should be "<vendor>,<type>", and generic value "atmel,at25".
>      Example "<vendor>,<type>" values:
>        "anvo,anv32e61w"
>        "microchip,25lc040"
> 
> In these cases the doc says that "compatible should be" and then you
> have the list of values. Your example says that the compatible should
> be "Generic default" or "For Samsung 542x SoC"... :) The difference is
> slight but putting the value first is a simple and elegant solution.
> In your case one has to go to the end of sentence to find the most
> important information - the compatible value.
> 
>> I have also checked Cadance QSPI controller.
>> Documentation/devicetree/bindings/mtd/cadence-quadspi.txt
>> The controller might be built-in into different vendor SoC's
>> and the "compatible" is ready to reflect it in similar fashion but
>> with a short explanation in this section.
> 
> I see. I do not find this pattern as much readable as jedec-spi-nor or
> at25 therefore I mentioned them as an example to base on ("Exactly the
> same as AT24 or AT25 EEPROM bindings."). We can avoid also this entire
> discussion with YAML (which also follows approach of at25 - value
> first).
> 
>> Therefore, what you see in the patch draw heavily on Cadence's qspi,
>> with a bit of inspiration from jedec,spi-nor usage.
>>
>> Should I change it to at25 "compatible" style and send next patch?
> 
> Yes, please. Or go to YAML and make entire discussion obsolete.

OK I will change it to at25 style.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
