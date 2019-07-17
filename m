Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEF16BFFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 18:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xuk7zTpd9oPBvTfKT26BBF11yUwiUGdvU06u4JHzW2Q=; b=GAucm7yeyUrY/9
	yqtnBYSLn9SGt719/KNMbig+qJhS3ek/i5KxNjX4LMU0CJ3biaDRmFE/pN5piUNzmYOSt7Z+yiS9E
	AH4TOvui/BJHX3cE9WgVbBxUBI7vGP273GwQXKITiOBBqnh99SDfm+OdeDU2WP1Y4ER7n5F0ziehV
	vrzSYQR4aHX2h8pX0eg2hWh3eASsTRYAKC1YjgO9jTmEEF31h+dgiHkdA8bWLkractjhdli+Us3Sw
	RsH1IHwYRjPzskcQextvjaxQ2JyK4F7CUrxioa9lbFBJDWdw7i3UO38xgz2JQrEIrm185r69+zjC0
	FFYGZ/m8El1aXh4xUoGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnGE-0002OI-6s; Wed, 17 Jul 2019 16:58:34 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnFz-0002NH-AL
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 16:58:21 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190717165816euoutp0295d67eaae8cb42d25829618467d3c79b~yQEdqh7SS2742827428euoutp02S
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 16:58:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190717165816euoutp0295d67eaae8cb42d25829618467d3c79b~yQEdqh7SS2742827428euoutp02S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563382696;
 bh=V1wpaje81eje1NrWW1ptiMNOsXRcdxiPOhucNCD1eEY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=nXGYX7Bn/Dttv3kcmrDFOqvKZtr0pc1MRR1tO26/7uo6bWRbhUFyXXfV0MOkGc8Sm
 CpHiOKuHpopLRT/8MyewI1uwD4PIi9Y5zAch6OV8nV/dSTOdvJSqXNzchFBAKobqfm
 ZKgiGcj/R75a4WVAHlMzRS3FKueC6v214okphNjo=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190717165815eucas1p279fee303eaec634eaed3461d3802b2cb~yQEc9FbDO0444204442eucas1p2k;
 Wed, 17 Jul 2019 16:58:15 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 2D.C5.04377.7A35F2D5; Wed, 17
 Jul 2019 17:58:15 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190717165814eucas1p12a0a42511f483a59ec4cfa08539c8473~yQEb7XByq0096600966eucas1p1y;
 Wed, 17 Jul 2019 16:58:14 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190717165814eusmtrp22999ba4923bc624cb160ac404a2ba979~yQEbtIgkL0331803318eusmtrp2j;
 Wed, 17 Jul 2019 16:58:14 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-2c-5d2f53a7298d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D0.AD.04140.5A35F2D5; Wed, 17
 Jul 2019 17:58:13 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190717165813eusmtip2dfc0e9d3fca9dda817e61896f286116d~yQEayw2Ai3092430924eusmtip2E;
 Wed, 17 Jul 2019 16:58:13 +0000 (GMT)
Subject: Re: [PATCH v1 27/50] ARM: dts: exynos: align bus_wcore OPPs in
 Exynos5420
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <15310bd0-0fd4-8d62-82a9-7a9df6a8ced3@partner.samsung.com>
Date: Wed, 17 Jul 2019 18:58:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAJKOXPfFZL8q9hM1vPsLq+Qxe-gMz4c8j0jgFKfdf5qs68MTmA@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrIKsWRmVeSWpSXmKPExsWy7djPc7rLg/VjDZ7tYrW4te4cq8XGGetZ
 La5/ec5qMf8IkNv/+DWzxfnzG9gtzja9YbfY9Pgaq8XHnnusFpd3zWGzmHF+H5PF2iN32S2W
 Xr/IZHHxlKvF7cYVbBate4+wWxx+085q8e/aRhYHIY8189Ywery/0crusWlVJ5vH5iX1Hn1b
 VjF6fN4kF8AWxWWTkpqTWZZapG+XwJVx6c4u9oK18hWz959jbGB8JNLFyMEhIWAiceueaxcj
 F4eQwApGidm31rJDOF8YJc7u+ssG4XxmlDh66AkLTMfaU3JdjJxA8eWMEqdvqkHUvGWUaLjW
 zQaSEBYIkZhxpoUJxBYR0JS4/vc7K0gRs8BVFokf97+DDWIT0JPYsaoQpIZXwE2iqWs2M4jN
 IqAqcXfdZ0YQW1QgQuLyll2MEDWCEidngtzAycEpECix/v4isPnMAuISt57Mh7LlJba/ncMM
 sktCoJdDYtPspWAJCQEXicn3D7FC2MISr45vYYewZST+75wPVVMs0dC7kBHCrpF43D8XqsZa
 4vDxi6wgNzMDPbN+lz5E2FFi/YrvTJAw4ZO48VYQ4gQ+iUnbpjNDhHklOtqEIKo1JLb0XIBa
 JCaxfM009gmMSrOQPDYLyTOzkDwzC2HvAkaWVYziqaXFuempxUZ5qeV6xYm5xaV56XrJ+bmb
 GIEJ7/S/4192MO76k3SIUYCDUYmHt0FBP1aINbGsuDL3EKMEB7OSCK/tV+1YId6UxMqq1KL8
 +KLSnNTiQ4zSHCxK4rzVDA+ihQTSE0tSs1NTC1KLYLJMHJxSDYycZ3ds+TWLxfHv3m81t4P+
 Viyo3xO1I3zLQSkWk4TbOzJtb9sI/mQJneKZqW2m++/l770JimvCLa/ZGItff+RVbhiRdHjD
 LO+fF6YIv/if4nd/1seX03cL7wr0q/I+eMLDrFPtSv70GZ+Li86tDOYUXcf8qTPM/LQL+7N9
 7+YET9KfqzCVd+YDJZbijERDLeai4kQAVeYqP3QDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGIsWRmVeSWpSXmKPExsVy+t/xe7pLg/VjDVa/sbK4te4cq8XGGetZ
 La5/ec5qMf8IkNv/+DWzxfnzG9gtzja9YbfY9Pgaq8XHnnusFpd3zWGzmHF+H5PF2iN32S2W
 Xr/IZHHxlKvF7cYVbBate4+wWxx+085q8e/aRhYHIY8189Ywery/0crusWlVJ5vH5iX1Hn1b
 VjF6fN4kF8AWpWdTlF9akqqQkV9cYqsUbWhhpGdoaaFnZGKpZ2hsHmtlZKqkb2eTkpqTWZZa
 pG+XoJdx6c4u9oK18hWz959jbGB8JNLFyMEhIWAisfaUXBcjJ4eQwFJGic2TKkBsCQExiUn7
 trND2MISf651sXUxcgHVvGaUuLH7BwtIQlggRGLGmRYmEFtEQFPi+t/vrCBFzAJXWSSmvNrI
 DtHRzyRxesNBZpBtbAJ6EjtWFYI08Aq4STR1zWYGsVkEVCXurvvMCGKLCkRI9LXNZoOoEZQ4
 OfMJ2DJOgUCJ9fcXgS1jFjCTmLf5ITOELS5x68l8qLi8xPa3c5gnMArNQtI+C0nLLCQts5C0
 LGBkWcUoklpanJueW2ykV5yYW1yal66XnJ+7iREY59uO/dyyg7HrXfAhRgEORiUe3htK+rFC
 rIllxZW5hxglOJiVRHhtv2rHCvGmJFZWpRblxxeV5qQWH2I0BXpuIrOUaHI+MAXllcQbmhqa
 W1gamhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpgbDb+Vlp1IEGlgoevuIjzNqes
 ZENo1d/+NbVa52JOyFXx9lvxse5s3FPAkX9tX43BOf+Gvxcj734zF9F79Kj8sUnlnMnvtNrD
 ly289FmHZTvfDqEPCkWZq++6eiZv7ZZ7FfF/Q88FAUXXU+W3uwyevNx4oZFlhuy7qX6tJwo8
 HCcrZubtbt+txFKckWioxVxUnAgA4nArRwkDAAA=
X-CMS-MailID: 20190717165814eucas1p12a0a42511f483a59ec4cfa08539c8473
X-Msg-Generator: CA
X-RootMTR: 20190715124456eucas1p2acf15d00e3fa7b77fe3a2b10ce1ab74f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124456eucas1p2acf15d00e3fa7b77fe3a2b10ce1ab74f
References: <CGME20190715124456eucas1p2acf15d00e3fa7b77fe3a2b10ce1ab74f@eucas1p2.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-28-l.luba@partner.samsung.com>
 <CAJKOXPfFZL8q9hM1vPsLq+Qxe-gMz4c8j0jgFKfdf5qs68MTmA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_095819_583458_908C56C9 
X-CRM114-Status: GOOD (  23.69  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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

On 7/17/19 12:15 PM, Krzysztof Kozlowski wrote:
> On Mon, 15 Jul 2019 at 14:44, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>
>> This is the most important bus in the Exynos5x SoC. The whole communication
>> inside SoC does through that bus (apart from direct requests from CCI to
>> DRAM controller). It is also modeled as a master bus in devfreq framework.
>> It is also the only one OPP table throughout other buses which has voltage
>> values. The devfreq software controls the speed of that bus and other
>> buses. The other buses follows the rate of the master. There is only one
>> regulator. The old lowest OPP had pair 925mV, 84MHz which is enough for
> 
> s/lowest/slowest/
please see below
> 
>> this frequency. However, due to the fact that the other buses follows the
>> WCORE bus by taking the OPP from their table with the same id, e.g. opp02,
>> the children frequency should be stable with the set voltage.
>> It could cause random faults very hard to debug.
>> Thus, the patch removes the lowest OPP to make other buses' lowest OPPs
> 
> s/lowest/slowest/
Actually, I have double checked that, because we always used this 
terminology: low OPP, high OPP, lower OPPs, higher OPPs. I can change
it here for you, but I think this is not something that people are used
to. Please check EAS pdf documentation or this file:
https://www.kernel.org/doc/Documentation/scheduler/sched-energy.txt
i.e. "running at a lower OPP" or "high OPPs", "lowest OPPs".

Regards,
Lukasz
> 
>> working. The new lowest OPP has voltage high enough for buses working up
>> to 333MHz. It also changes the frequencies of the OPPs to align them to
>> PLL value such that it is possible to set them using only a divider without
>> reprogramming OPP.
> 
> Reprogramming OPP? What is it?
> 
>> Reprogramming the PLL was not set, so the real frequency
> 
> I understood from the previous that reprogramming the OPP (PLL?) was
> happening... Please rephrase entire sentence.
> 
> BR,
> Krzysztof
> 
>> values were not the one from the OPP table, which could confuse the
>> governor algorithms which relay on OPP speed values making the system to
>> behave weird.
>>
>> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
>> ---
>>   arch/arm/boot/dts/exynos5420.dtsi | 12 ++++--------
>>   1 file changed, 4 insertions(+), 8 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
>> index f8c36ff0d4c3..a355c76af5a5 100644
>> --- a/arch/arm/boot/dts/exynos5420.dtsi
>> +++ b/arch/arm/boot/dts/exynos5420.dtsi
>> @@ -1107,22 +1107,18 @@
>>                          compatible = "operating-points-v2";
>>
>>                          opp00 {
>> -                               opp-hz = /bits/ 64 <84000000>;
>> -                               opp-microvolt = <925000>;
>> +                               opp-hz = /bits/ 64 <150000000>;
>> +                               opp-microvolt = <950000>;
>>                          };
>>                          opp01 {
>> -                               opp-hz = /bits/ 64 <111000000>;
>> +                               opp-hz = /bits/ 64 <200000000>;
>>                                  opp-microvolt = <950000>;
>>                          };
>>                          opp02 {
>> -                               opp-hz = /bits/ 64 <222000000>;
>> +                               opp-hz = /bits/ 64 <300000000>;
>>                                  opp-microvolt = <950000>;
>>                          };
>>                          opp03 {
>> -                               opp-hz = /bits/ 64 <333000000>;
>> -                               opp-microvolt = <950000>;
>> -                       };
>> -                       opp04 {
>>                                  opp-hz = /bits/ 64 <400000000>;
>>                                  opp-microvolt = <987500>;
>>                          };
>> --
>> 2.17.1
>>
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
