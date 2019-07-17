Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE43F6BCA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 14:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wu0BOwuWFQKaMj2chJZxmcKeBiGpXeC3Xuqj6KJVpdw=; b=ZhPoutvhm7DwHW
	wt0Dxk/WXdTX/jWFZnX1GubeqPzrXSKQNA+1M3f+1YgE4p3/j34QjzIBSzC9y+uuOOpR0hmv7wFSw
	DTOnKkHMDBMedbmQPaWCGrXE/4miIyeNP3snejy5OKX2ziwvqVJy6XnxrUGZK/o/m5kZ4t71hn+fu
	/UdvC7t8CZ8PYKEe4HmNGzdr94zmBuYqPRezJojdsx/s3WpQpVJiz9nVCg15VroMGwzxzVvBvQs9u
	6GVj9nPQQKgYgntkpSpE4Gko8EkqEHRLUBKfNsZjYWJ0YdS4btndQw28s03usql6x91/yUmg5P9ya
	MEGSV+Q/Cwc4cjDfinCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnjTd-000216-AS; Wed, 17 Jul 2019 12:56:09 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnjTU-0001zq-7z
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 12:56:02 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190717125557euoutp01ab5d59f81e2fc776327b7127fea7214b~yMw59h84w1540615406euoutp01h
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 12:55:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190717125557euoutp01ab5d59f81e2fc776327b7127fea7214b~yMw59h84w1540615406euoutp01h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563368158;
 bh=Pyn39ljLoe2TXoiUtMo/+jv8HgmCe4hW5kgEZQJmjKo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=b54ZgPLywJDb+7Wru1kXVxqHQKEtowoN5rf2nA+63Oxddi2aPPKnm6iXjY6NPp+56
 AnRdf9IcW/GEAlzQH3I4zDASf3J0j7GusluC94YpSMWuNAO+Yk1T938yTPe9NomMqO
 7O4y39KCmQCAkkB2PHCZBmnVzepPKbDbTwfHtmqU=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190717125557eucas1p1a270d9c2660feb0a4be022e93a66c786~yMw5QgV7s2076120761eucas1p1d;
 Wed, 17 Jul 2019 12:55:57 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 35.59.04325.CDA1F2D5; Wed, 17
 Jul 2019 13:55:56 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190717125556eucas1p2d36e446f5a5def293b979854bcd497ec~yMw4aCg431675416754eucas1p2B;
 Wed, 17 Jul 2019 12:55:56 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190717125556eusmtrp18952f3ae296d8cad61f8e718184bb943~yMw4LKels2815428154eusmtrp1P;
 Wed, 17 Jul 2019 12:55:56 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-98-5d2f1adc9daa
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 15.1E.04146.BDA1F2D5; Wed, 17
 Jul 2019 13:55:56 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190717125555eusmtip190b8f69b8237686d25636da30ebc5e4a~yMw3dqLYC1016810168eusmtip1b;
 Wed, 17 Jul 2019 12:55:55 +0000 (GMT)
Subject: Re: [PATCH v1 37/50] ARM: dts: exynos: change parent and rate of
 bus_fsys in Exynos5422
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <7ad899c5-347d-546e-a2e9-d96f0203210c@partner.samsung.com>
Date: Wed, 17 Jul 2019 14:55:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAJKOXPfDX06s7eMctbnPabxho2EaWcTM4xAGKCd_+O6jCCDcRQ@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEKsWRmVeSWpSXmKPExsWy7djPc7p3pPRjDa4usLS4te4cq8XGGetZ
 La5/ec5qMf8IkNv/+DWzxfnzG9gtzja9YbfY9Pgaq8XHnnusFpd3zWGzmHF+H5PF2iN32S2W
 Xr/IZHHxlKvF7cYVbBate4+wWxx+085q8e/aRhYHIY8189Ywery/0crusWlVJ5vH5iX1Hn1b
 VjF6fN4kF8AWxWWTkpqTWZZapG+XwJXRefMsa0GTSsXVqXfYGxh3y3QxcnJICJhI/HmynqWL
 kYtDSGAFo8TFS1sZIZwvjBL7Z15kg3A+M0pcmviCCabl66KTrBCJ5YwS/3tXQDlvGSW2r3/P
 AlIlLJAkcWrPa2YQW0RAU+L63+9gRcwCV1kkftz/DlTEwcEmoCexY1VhFyM7B6+Am8R7sGoW
 AVWJHcvbwGxRgQiJy1t2MYLYvAKCEidnPgGbzikQKLFty1d2EJtZQFzi1pP5TBC2vMT2t3OY
 QTZJCPRySBw5sZ4F4mgXiWOXD7ND2MISr45vgbJlJE5P7oGqKZZo6F3ICGHXSDzunwtVYy1x
 +PhFVpCLmYFeWb9LHyLsKDH1wnOwsIQAn8SNt4IQJ/BJTNo2nRkizCvR0SYEUa0hsaXnAjQE
 xSSWr5nGPoFRaRaSx2YheWYWkmdmIexdwMiyilE8tbQ4Nz212DgvtVyvODG3uDQvXS85P3cT
 IzDlnf53/OsOxn1/kg4xCnAwKvHwehzWjRViTSwrrsw9xCjBwawkwmv7VTtWiDclsbIqtSg/
 vqg0J7X4EKM0B4uSOG81w4NoIYH0xJLU7NTUgtQimCwTB6dUA+O5AOcOi13SUxMXMuroB0dP
 cHyZm/SeV7DeOvM9w8lZh9/ecnrVlBf1dM7K+edzr/qfckh7xVqVuFI+fMHb7RUxGX//JOgt
 vHDN++htl22ygQ99RFhYNIwOJJ9ybi1blnmtnTvjd42U0beIdcc9lzYd/VsrfdCIq13dp+6V
 /VnLzxcnuKhEhCuxFGckGmoxFxUnAgDlgYu1dQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrKIsWRmVeSWpSXmKPExsVy+t/xu7p3pPRjDU48YrS4te4cq8XGGetZ
 La5/ec5qMf8IkNv/+DWzxfnzG9gtzja9YbfY9Pgaq8XHnnusFpd3zWGzmHF+H5PF2iN32S2W
 Xr/IZHHxlKvF7cYVbBate4+wWxx+085q8e/aRhYHIY8189Ywery/0crusWlVJ5vH5iX1Hn1b
 VjF6fN4kF8AWpWdTlF9akqqQkV9cYqsUbWhhpGdoaaFnZGKpZ2hsHmtlZKqkb2eTkpqTWZZa
 pG+XoJfRefMsa0GTSsXVqXfYGxh3y3QxcnJICJhIfF10khXEFhJYyihxZK08RFxMYtK+7ewQ
 trDEn2tdbF2MXEA1rxklpn1YwQySEBZIkji15zWYLSKgKXH973dWkCJmgassElNebWSH6JjO
 IvHx6lWmLkYODjYBPYkdqwq7GNk5eAXcJN6DtbIIqErsWN4GZosKREj0tc1mA7F5BQQlTs58
 wgJicwoESmzb8hXsHmYBM4l5mx8yQ9jiEreezGeCsOUltr+dwzyBUWgWkvZZSFpmIWmZhaRl
 ASPLKkaR1NLi3PTcYkO94sTc4tK8dL3k/NxNjMAo33bs5+YdjJc2Bh9iFOBgVOLh9TisGyvE
 mlhWXJl7iFGCg1lJhNf2q3asEG9KYmVValF+fFFpTmrxIUZToOcmMkuJJucDE1BeSbyhqaG5
 haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQZGUcfHc+r1GL/PUa8NWSo2L0I0
 8RK36lrZz1tktvOYeZXKKZzvTvic7MZxj0G36PKD+kt7Lm5p/HDrs2PDEZnqrxznfmowaswL
 iV1ZXee/V9466/qtxasfWu0P03QzWVPdlCol98RdoXjDzDWb2/0m+0ncX91TpvRs3ZRo5olV
 r2f/DPpT+vmEEktxRqKhFnNRcSIA9W4TWggDAAA=
X-CMS-MailID: 20190717125556eucas1p2d36e446f5a5def293b979854bcd497ec
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
 <518c26ca-4254-056c-d6d0-ae1b4b63709c@partner.samsung.com>
 <CAJKOXPfDX06s7eMctbnPabxho2EaWcTM4xAGKCd_+O6jCCDcRQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_055600_488560_0FC285DC 
X-CRM114-Status: GOOD (  25.67  )
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


On 7/17/19 1:11 PM, Krzysztof Kozlowski wrote:
> On Wed, 17 Jul 2019 at 13:06, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>
>>
>>
>> On 7/17/19 12:45 PM, Krzysztof Kozlowski wrote:
>>> On Wed, 17 Jul 2019 at 12:39, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>>>>>
>>>>>>     &bus_fsys {
>>>>>>            devfreq = <&bus_wcore>;
>>>>>> +       assigned-clocks = <&clock CLK_MOUT_ACLK200_FSYS>,
>>>>>> +                         <&clock CLK_DOUT_ACLK200_FSYS>,
>>>>>> +                         <&clock CLK_FOUT_DPLL>;
>>>>>> +       assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>;
>>>>>> +       assigned-clock-rates = <0>, <240000000>,<1200000000>;
>>>>>
>>>>> Here and in all other patches:
>>>>> I am not entirely sure that this should be here. It looks like
>>>>> property of the SoC. Do we expect that buses will be configured to
>>>>> different clock rates between different boards?
This is the board file for Exynos5420/5422/5800 which enables buses.
Thus, I have change them here. Patch 49/50 adds these buses to
Exynos5800 (Peach Pi). In Exynos5420 there is no clock tree for
bus_isp266. The parents for different devices could be also different.
It is because i.e. in 5420 there is 2 bit in the WCORE 1st mux while in
5422 there is 3 bits (6 parents possible).
That's why I have picked exynos5422-odroid-core.dtsi to reference
the bus devices and pinned them into proper parent and changed rate.
When you check patch 49/50 for 5800 not all the parents are the same.

(1) I could create a dedicated files like: exynos5422-bus.dtsi,
exynos5420-bus.dtsi, exynos5800-bus.dtsi which would include some
base file with the basic &bus_X and set the right parent, rate.
Then these files would be included into proper board file like:
exynos5800-peach-pi.dts.
Is this something that you would like to see?
  Since the OPP tables
>>>>> are shared (they are property of the SoC, not board) then I would
>>>>> assume that default frequency is shared as well.
>>>> These clocks they all relay on some bootloader configuration. It depends
>>>> which version of the bootloader you have, then you might get different
>>>> default configuration in the clocks.
>>>
>>> I do not agree here. This configuration is not dependent on
>>> bootloader. Although one bootloader might set the clocks to X and
>>> other to Y, but still you provide here valid configuration setting
>>> them, e.g. to Y (or to Z). What bootloader set before does not matter
>>> because you always override it.
>> This exactly the patch set is aim to do: overwrite any bootloader
>> configuration which could be wrong set after boot.
>> I don't know for how long it is left in such
>> 'bootloader-default-clock-settings' but it is not accurate
>> configuration. The pattern in the DT to change the clock rates is
>> there.
> 
> Still it is not the answer to my concerns and questions.
Please look at my answer above.
> 
>>>
>>>> The pattern of changing the parent
>>>> or even rate is known in the DT files (or I am missing something).
>>>> When you grep for it, you get 168 hits (38 for exynos*):
>>>> git grep -n "assigned-clock-rates" ./arch/arm/boot/dts/ | wc -l
>>>
>>> Yeah, and if you grep per type you got:
>>> DTSI: 114
>>> DTS: 54
>>> so what do you want to say?
>> Thus, It could be changed in DT.
> 
> Of course, why not. But how this relevant to my question?
Please see above.
> 
>>> My thinking is that all the boards have buses configured to the same
>>> initial frequency. I am not questioning the use of
>>> assigned-clock-rates at all. Just the place...
>> It is not only 'initial frequency' as you name it. It has three changes:
>> - re-parent to proper PLL
>> - changing this PLL rate
>> - change the OPPs frequency values to integer values derived from PLL
>>
>> The initial frequencies will be changed by devfreq governor using OPP
>> tables and the load after the whole system boots.
> 
> I simplified with "initial frequency" but it does not matter. Let me
> try to raise my concerns again, different wording:
> All this looks like property of the SoC, not the board, because:
> 1. the OPPs are already properties of the SoC, not the board (XU3 Lite
> is kind of exception but in fact it uses different flavor of
> Exynos5422 SoC which we do not model here as separate DTSI),
Please see above at (1).
> 2. I expect all boards to have the same properties.
All boards which have the same SoC, i.e. Exysno5422 <- then I agree.

Thank you for the comments.

Regards,
Lukasz
> 
> Best regards,
> Krzysztof
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
