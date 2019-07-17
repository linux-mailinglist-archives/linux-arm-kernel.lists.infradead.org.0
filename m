Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A576BA1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mmwl7P2fnT1ymlrY+0SpBhaC2OeW1FzyU8fDAGEUxeo=; b=RZdeBFuYoG6jqh
	XFj0t0gIgM+YPVHdEKlHWxDeFVSHGzsqtIo0lAju00eWVRIrnprnKZEP9WA8kwUQrprs9TPFR6Tcg
	KSeaASCvibIPUePQUPbmC97fxakeGAPixG+XtiK0rlJAYgMcX7AFuiGtJUOq2WIvPVngI0SRjcv6R
	WNSv9iGiyW5OQacTe1bojIv6z9UYq9YA+YTAg3Hq/NVY6yIVRR6/mUuDN8b3w3br+PqTgaZecxm1c
	ZL78nIOjuVDEFinxivLU22eUV2tzQQgAV2uskI5SAmp9f1DJSUrLaER4CInieXQJX98ayDmQ8VwRI
	hSc1oQ+74SMoF841MhOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhAE-0000AZ-72; Wed, 17 Jul 2019 10:27:58 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhA0-00009a-LD
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:27:46 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190717102742euoutp024aa80372fd8d04a605840e263dc353ce~yKvdQGQfn1657216572euoutp02n
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 10:27:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190717102742euoutp024aa80372fd8d04a605840e263dc353ce~yKvdQGQfn1657216572euoutp02n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563359262;
 bh=iB1QtByjyd0P/XN/YkMVgR+nl43qh6xlM1ggN0/FSXc=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=QOsekYg7uDN/yWGFfk9LE3t/Ox1ujCFaU12WFqo6zVIzwSddz532IURaKgUy8Tsw4
 OwllVRW0RBHFM25w7xys1srQD4a0dLhDtcRiQGt8EwYd4uyQL6kRoO6SJyzkAEuWH1
 YbJiRbNweS68Mp/kwDC1Ew4GBUTOOFsJiiKfv0Lo=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190717102741eucas1p23f3d8810e1929cc25f0052c815dbf389~yKvcbvz0Q3019930199eucas1p2s;
 Wed, 17 Jul 2019 10:27:41 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 5F.9B.04298.D18FE2D5; Wed, 17
 Jul 2019 11:27:41 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190717102740eucas1p17ffdf3b1560ad6d56311b5a92e9a5e7a~yKvbfKdWR0755707557eucas1p1b;
 Wed, 17 Jul 2019 10:27:40 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190717102740eusmtrp23963acbd383cc2a0d250dd3a4f351c4c~yKvbQ3UTl1980319803eusmtrp2c;
 Wed, 17 Jul 2019 10:27:40 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-5a-5d2ef81d5c97
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id DC.23.04140.C18FE2D5; Wed, 17
 Jul 2019 11:27:40 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190717102739eusmtip1d74ac72fc55f265d9c29d7e594ecb2d3~yKvagaTUm1611016110eusmtip1B;
 Wed, 17 Jul 2019 10:27:39 +0000 (GMT)
Subject: Re: [PATCH v1 26/50] ARM: dts: exynos: align NOC100 bus OPPs in
 Exynos5420
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <8ed83c77-57f7-78a4-e437-714cfc7b5c58@partner.samsung.com>
Date: Wed, 17 Jul 2019 12:27:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAJKOXPc3qsM5Xe5JViDZXYfes+_veb-KX3fnZjpkUCrphBcu-Q@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0iTYRjt3XdVnH3Oygcro4FQicsi6IWsVljsV2QQSKK16kMjnbZPTbPL
 ilZW3ohIW2ZqmbbMy1pLJ2boSMps2UXNMA0XYToiL2iEq81vkf/Oc57zvOcceFlC5qCC2SOa
 NF6rUSfJaV/S8vyXPXz5jCIuouk9i/trX1O4obiOwr2T3yh82+YeC4ZHCWy31zO469wYg03D
 PRT+mfuZwu+sJTQutj+V4Ie2AQZX9nZLcPfLHfjT2Woa61tsDG4fu0hhV08DqZSpakprkOpH
 n55RmYyXaNWju2dU+WYjUk2YQnbT+3wjD/NJRzJ47dotB3wTmybGJakWOvP3SA6tQzrqMvJh
 gdsALZaLksvIl5Vx1QhuNn5C4jCJoNVh8G4mEDSP3SH/nXyZzSPERRUC/WsjIw5OBPambolH
 FcjthUJDLuPBi7jV0Ds7TXlEBPeBhJnBafdTLEtzCmg0HvNopNxOGCi00R5McqHw6P6NObfF
 XAy8M1uRqAmAFzccc7wPFw2VQ2VzeoILgn7HbYmIV8ATZ8lcOuAusVD07Lk3dhSUXzN5cSB8
 7zAzIl4Gf5rEY+AE0OWVIxGfhOGCW17NJmjv6KY8mQl3mTrrWpHeBtPts4yHBs4f+pwBYgR/
 uGopIkRaCjkXZKJ6FZhz33iNlkBVzXWmEMkN84oZ5pUxzCtj+O9bhkgjCuLTheQEXlin4Y8r
 BHWykK5JUBxKSTYh99/rdHWMN6KptwfbEMciuZ9U1R4eJ6PUGUJWchsClpAvkm6eCouTSQ+r
 s07w2pT92vQkXmhDS1lSHiTNXjAUK+MS1Gn8UZ5P5bX/thLWJ1iHFv/uqvg889HxvlSqLE0v
 FgwrH3ReyX4aPzCuZFr8opb3nl5oCW1ef60i7064Ky1yJGN06OF21Bkf/3hv5J6jzl3W1nrb
 vZCvro2Ndy0xtba6vtjo3LD8j61kR6p1LO9YTERRc6BfT8+gU6+SbH0VcYqY6o86jzJz0iqj
 Sz4o9/NyUkhUr1tDaAX1XwLB7od3AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRmVeSWpSXmKPExsVy+t/xu7oyP/RiDWY/5LC4te4cq8XGGetZ
 La5/ec5qMf8IkNv/+DWzxfnzG9gtzja9YbfY9Pgaq8XHnnusFpd3zWGzmHF+H5PF2iN32S2W
 Xr/IZHHxlKvF7cYVbBate4+wWxx+085q8e/aRhYHIY8189Ywery/0crusWlVJ5vH5iX1Hn1b
 VjF6fN4kF8AWpWdTlF9akqqQkV9cYqsUbWhhpGdoaaFnZGKpZ2hsHmtlZKqkb2eTkpqTWZZa
 pG+XoJex8/MnpoJtbBW/X3awNTA2sHYxcnJICJhIPPzby9zFyMUhJLCUUeLj6RdQCTGJSfu2
 s0PYwhJ/rnWxQRS9ZpS4u7aXDSQhLBAqMWFWD1iRiICmxPW/31lBipgFrrJITHm1kR2io59J
 4sfESSxdjBwcbAJ6EjtWFYI08Aq4SdydcARsEIuAqsTmlTNZQGxRgQiJvrbZbBA1ghInZz4B
 i3MKBEosfbAALM4sYCYxb/NDZghbXOLWk/lMELa8xPa3c5gnMArNQtI+C0nLLCQts5C0LGBk
 WcUoklpanJueW2ykV5yYW1yal66XnJ+7iREY69uO/dyyg7HrXfAhRgEORiUeXo/DurFCrIll
 xZW5hxglOJiVRHhtv2rHCvGmJFZWpRblxxeV5qQWH2I0BXpuIrOUaHI+MA3llcQbmhqaW1ga
 mhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpgFA2/NX9/W6Na69v9PGym0zU/7X2f
 H/BOi71vYcbmcJf2izfe31uw+8MaM+MTHpOvpoWe/jApuvPpG40PKwod5U3zLWv2bNg7nfGo
 5Ip1RUd6qnor9vJmzAtc3m370VxjavrFqt+/RCIrAk40mju8EX1/xTdO7uRhtv2/pibbHugq
 SGef0rfrjRJLcUaioRZzUXEiAHEFoU0LAwAA
X-CMS-MailID: 20190717102740eucas1p17ffdf3b1560ad6d56311b5a92e9a5e7a
X-Msg-Generator: CA
X-RootMTR: 20190715124455eucas1p13bfc0c1d113225db9607e4c0dbac353c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124455eucas1p13bfc0c1d113225db9607e4c0dbac353c
References: <CGME20190715124455eucas1p13bfc0c1d113225db9607e4c0dbac353c@eucas1p1.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-27-l.luba@partner.samsung.com>
 <CAJKOXPc3qsM5Xe5JViDZXYfes+_veb-KX3fnZjpkUCrphBcu-Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_032744_900242_5E23018C 
X-CRM114-Status: GOOD (  13.88  )
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


On 7/17/19 12:10 PM, Krzysztof Kozlowski wrote:
> On Mon, 15 Jul 2019 at 14:44, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>
>> The NOC100 has a parent which clock rate is set tot 400MHz. The OPPs which
>> are not possible to set are removed and new one is added.
> 
> I think it is just NOC bus... or are there more of such and this is 100 MHz one?
Yes, there is a bus NOC100 with a dedicated clock tree in the HW (with
3 muxes and one divider), which makes possible to take different PLL as
a source then WCORE have, divide the rate from it and even switch for a
while to alternative stable PLL (on the 2nd mux to SPLL (after a
divider)) to wait for main PLL rate change stability delay. Max rate is
limited to 100MHz for this NOC100 bus.

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
