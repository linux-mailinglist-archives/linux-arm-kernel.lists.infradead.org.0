Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E526BB02
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 13:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZYWZiGSgWpwva1RQrp1LPR36qNmn8Jl5yrnUjJUFzI=; b=fvb4OpWurPrgKR
	hACHelaJbRoUSp4mxUSOEyNJUTYkxyY+kHMGp/fgMQsyexyd4GYNCXqzfSv0YBgJqbbpHPzE8vbuL
	rVZRXgtl3vjTbpDxK87oROk6FPmMUIWCDueWJ2UkI0E7p+dOu2d7jflgQO+OsvMtskpfGkXLdlstN
	/3GrvunfjxeNvsMMwspljLgRd8wAnaqmkzxnEtxETNLuOGYyj8qZmw3ksGM+XFA39eNgQQ+yRWORv
	sr59avazOsQxf+wZFfDmVkNf6TFLWuF2p3rmtyfSd+fBx0ATSe+/LEWg9XUZIHdK9Zw9HNCSAChP9
	dGth2MnRV9XJg8sdFM3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhlF-0005Cz-Er; Wed, 17 Jul 2019 11:06:13 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhl7-0005CW-Dk
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 11:06:07 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190717110603euoutp02866c3a77b723b2668801ec1b16ffce2f~yLQ8QhnMX0501405014euoutp02j
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 11:06:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190717110603euoutp02866c3a77b723b2668801ec1b16ffce2f~yLQ8QhnMX0501405014euoutp02j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563361563;
 bh=iAfrBLURBPFLNZXDcSr/kH1z/iFyZF4K7ye5pfu80hA=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=OOqUOaKaRD8FGqMiXxQeZlLEYrUp/V7KgIFAQtsrjxHTLgmykvwJXXZ6ozrfvGvuY
 Fc3jLjgKMwc2Zb9wnUxk59TU9ayDEY1kBtBN900HqAJkPlLFaB1tBaZmfxDfKy1le+
 9xDl4DDIEM9r6t3YxV7bUqR4Mqf59EiJ9NViUlmg=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190717110602eucas1p1e196030e637b25186941ad6015b25a9a~yLQ7dzRlu2807728077eucas1p1B;
 Wed, 17 Jul 2019 11:06:02 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 47.7B.04325.A110F2D5; Wed, 17
 Jul 2019 12:06:02 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190717110601eucas1p2ce5ccf9528a665b33dd6b31781887fc9~yLQ6Zvt671400914009eucas1p22;
 Wed, 17 Jul 2019 11:06:01 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190717110601eusmtrp15dc480f29a41416857ad562989e230f8~yLQ6Lh3qY2223122231eusmtrp1K;
 Wed, 17 Jul 2019 11:06:01 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-21-5d2f011ab3ef
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 8A.18.04140.8110F2D5; Wed, 17
 Jul 2019 12:06:00 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190717110600eusmtip21ac2eeb6cfbe74f33dc73bb1188fa0a5~yLQ5Mmlyd0640006400eusmtip2x;
 Wed, 17 Jul 2019 11:06:00 +0000 (GMT)
Subject: Re: [PATCH v1 37/50] ARM: dts: exynos: change parent and rate of
 bus_fsys in Exynos5422
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <518c26ca-4254-056c-d6d0-ae1b4b63709c@partner.samsung.com>
Date: Wed, 17 Jul 2019 13:05:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAJKOXPd3gm7no-0TnPmgFg+X3FgdiM6ov5rtzFSM6hKEdEzRCg@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrPKsWRmVeSWpSXmKPExsWy7djP87pSjPqxBs83cVncWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFtsenyN1eJjzz1Wi8u75rBZzDi/j8li7ZG77BZL
 r19ksrh4ytXiduMKNovWvUfYLQ6/aWe1+HdtI4uDkMeaeWsYPd7faGX32LSqk81j85J6j74t
 qxg9Pm+SC2CL4rJJSc3JLEst0rdL4Mp4tZK74LxIRfM3swbGZoEuRk4OCQETidVN7exdjFwc
 QgIrGCUun3/OAuF8YZTY+H4/lPOZUeLPmhlsXYwcYC1rV0VCxJczSnT/esEM4bxllDh+aj4b
 yFxhgSSJU3teM4PYIgKaEtf/fmcFKWIWuMoi8eP+dxaQSWwCehI7VhWC1PAKuEnsmjKNBcRm
 EVCVONT0HswWFYiQuLxlFyNEjaDEyZlPwFo5BQIlGvY4g4SZBcQlbj2ZzwRhy0tsfzsH7B4J
 gU4OiQnHZ7NCHO0isfqYNcTLwhKvjm9hh7BlJE5P7mGBsIslGnoXMkLYNRKP++dC1VhLHD5+
 EWwMM9Ar63fpQ4QdJaZeeA41nU/ixltBiAv4JCZtm84MEeaV6GgTgqjWkNjSc4EJwhaTWL5m
 GvsERqVZSN6aheSXWUh+mYWwdwEjyypG8dTS4tz01GLjvNRyveLE3OLSvHS95PzcTYzAZHf6
 3/GvOxj3/Uk6xCjAwajEw+txWDdWiDWxrLgy9xCjBAezkgiv7VftWCHelMTKqtSi/Pii0pzU
 4kOM0hwsSuK81QwPooUE0hNLUrNTUwtSi2CyTBycUg2M6x47P7C6lVZxuUXjwvavj5u5Xisc
 s87fefSoyZP2r+HmV2tEtlnuv25549rrTznM0n/eGx7zE+U7IMrjtbK+IvJV+N6FDdtjHrX8
 35RirtZrqP6qTW35G9Ffd9/oLDvYdnuOp5SM1OqI8wcWhtecXK05feH7+UKqexm+7hVbvXdK
 XZ70n0MGm5VYijMSDbWYi4oTAQICzopyAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMIsWRmVeSWpSXmKPExsVy+t/xe7oSjPqxBrsmGFrcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFtsenyN1eJjzz1Wi8u75rBZzDi/j8li7ZG77BZL
 r19ksrh4ytXiduMKNovWvUfYLQ6/aWe1+HdtI4uDkMeaeWsYPd7faGX32LSqk81j85J6j74t
 qxg9Pm+SC2CL0rMpyi8tSVXIyC8usVWKNrQw0jO0tNAzMrHUMzQ2j7UyMlXSt7NJSc3JLEst
 0rdL0Mt4tZK74LxIRfM3swbGZoEuRg4OCQETibWrIrsYOTmEBJYySpx7mgJiSwiISUzat50d
 whaW+HOti62LkQuo5jWjxOt3HxlBEsICSRKn9rxmBrFFBDQlrv/9zgpSxCxwlUViyquN7BAd
 k5klWucsZQTZxiagJ7FjVSFIA6+Am8SuKdNYQGwWAVWJQ03vwWxRgQiJvrbZbBA1ghInZz5h
 AWnlFAiUaNjjDBJmFjCTmLf5ITOELS5x68l8JghbXmL72znMExiFZiHpnoWkZRaSlllIWhYw
 sqxiFEktLc5Nzy020itOzC0uzUvXS87P3cQIjPBtx35u2cHY9S74EKMAB6MSD6/HYd1YIdbE
 suLK3EOMEhzMSiK8tl+1Y4V4UxIrq1KL8uOLSnNSiw8xmgL9NpFZSjQ5H5h88kriDU0NzS0s
 Dc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MK4xS1e1LA8/yynzws5futglpOdC
 ndazRVZ599zfnve3VmYXXVbwI+Kp05ye2cKqnxSm35p2QTZDdbkSQ0rOoVcRTRfXpky9aGOt
 skFTUPCxs6j3mfobMtf9nmx677z1hIozl/G7cl1zxtO32yulTOt0Lt0/vXx61gLJV7P5ImuD
 N6ctvzrnrBJLcUaioRZzUXEiANTgzhoGAwAA
X-CMS-MailID: 20190717110601eucas1p2ce5ccf9528a665b33dd6b31781887fc9
X-Msg-Generator: CA
X-RootMTR: 20190715124504eucas1p1afe0da2c6ac3a8b45d85017a77ba9edf
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124504eucas1p1afe0da2c6ac3a8b45d85017a77ba9edf
References: <CGME20190715124504eucas1p1afe0da2c6ac3a8b45d85017a77ba9edf@eucas1p1.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-38-l.luba@partner.samsung.com>
 <CAJKOXPfrGgAczQ-=1aE453RpJ9BN10ZDmFcrEMPkNyF6GcGtNA@mail.gmail.com>
 <2fe2e840-f4b2-773b-7d92-4ffb8502d4e6@partner.samsung.com>
 <CAJKOXPd3gm7no-0TnPmgFg+X3FgdiM6ov5rtzFSM6hKEdEzRCg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_040605_675568_0BC9943A 
X-CRM114-Status: GOOD (  21.95  )
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



On 7/17/19 12:45 PM, Krzysztof Kozlowski wrote:
> On Wed, 17 Jul 2019 at 12:39, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>>>
>>>>    &bus_fsys {
>>>>           devfreq = <&bus_wcore>;
>>>> +       assigned-clocks = <&clock CLK_MOUT_ACLK200_FSYS>,
>>>> +                         <&clock CLK_DOUT_ACLK200_FSYS>,
>>>> +                         <&clock CLK_FOUT_DPLL>;
>>>> +       assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>;
>>>> +       assigned-clock-rates = <0>, <240000000>,<1200000000>;
>>>
>>> Here and in all other patches:
>>> I am not entirely sure that this should be here. It looks like
>>> property of the SoC. Do we expect that buses will be configured to
>>> different clock rates between different boards? Since the OPP tables
>>> are shared (they are property of the SoC, not board) then I would
>>> assume that default frequency is shared as well.
>> These clocks they all relay on some bootloader configuration. It depends
>> which version of the bootloader you have, then you might get different
>> default configuration in the clocks.
> 
> I do not agree here. This configuration is not dependent on
> bootloader. Although one bootloader might set the clocks to X and
> other to Y, but still you provide here valid configuration setting
> them, e.g. to Y (or to Z). What bootloader set before does not matter
> because you always override it.
This exactly the patch set is aim to do: overwrite any bootloader
configuration which could be wrong set after boot.
I don't know for how long it is left in such
'bootloader-default-clock-settings' but it is not accurate
configuration. The pattern in the DT to change the clock rates is
there.

> 
>> The pattern of changing the parent
>> or even rate is known in the DT files (or I am missing something).
>> When you grep for it, you get 168 hits (38 for exynos*):
>> git grep -n "assigned-clock-rates" ./arch/arm/boot/dts/ | wc -l
> 
> Yeah, and if you grep per type you got:
> DTSI: 114
> DTS: 54
> so what do you want to say?
Thus, It could be changed in DT.
> 
> My thinking is that all the boards have buses configured to the same
> initial frequency. I am not questioning the use of
> assigned-clock-rates at all. Just the place...
It is not only 'initial frequency' as you name it. It has three changes:
- re-parent to proper PLL
- changing this PLL rate
- change the OPPs frequency values to integer values derived from PLL

The initial frequencies will be changed by devfreq governor using OPP
tables and the load after the whole system boots.

Regards,
Lukasz
> 
> BR,
> Krzysztof
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
