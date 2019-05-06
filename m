Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F4C14858
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 12:30:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ftdbpaI+lhWs8IS1T8HFHQ9K/HurWmpblJ0sFXkvMyA=; b=s0Ic1NBiZvYg8N
	eEaCl3lBegnmUgkV7YYLkQjE4iJnyVjDaznOyI7fcbGvGITOUTBuBwS6JwctCs0FKt6VgHlpn9WgF
	G7jiJ9pSvWZAH39JIKj07pwHvp9RFs7iGBXK4aqsRpIeuBrF2WmALsxoNJjgQ3qR7hGD3qT7vh3ON
	uGK3BfkE/cSAW0UNy7TkjINWB9ofmc9Cc8PxWIL6ePgzBcN4kHgpK1afL39xvctaDmRlODyIYW/0R
	UuAz5SCrKjKUh9CRfaQ1APrNSzuq6vY0roK4Dyqq+2tVGgPVJn4KsgNY0Cfi+bQ+o5aRD6VYRjIdT
	EXK4G0821h+n2cUtTIkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNash-0005Yp-Nn; Mon, 06 May 2019 10:29:59 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNasZ-0005XR-Fg
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 10:29:53 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190506102942euoutp01d0d5d59a5be04741289101392b6a7438~cEUp93xbV2799027990euoutp01j
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  6 May 2019 10:29:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190506102942euoutp01d0d5d59a5be04741289101392b6a7438~cEUp93xbV2799027990euoutp01j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1557138582;
 bh=1Zxj4PqvwivxAPF6w95dS0sI9tHHMuUsGPtKoed7y/0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Gb958JLSKuhMoy6HkhEyV7Mk01thn6AleP6oKBL4N+STSSvS7jwSQOM7bbrbGkiAd
 x6n6/Wvfg2z5A029EoR1LFALbIacRjHSO8Vw4YuzZ7ekiF5MYj8zHuki/Q4xbchSZI
 8aGT53rbUCrNhT5jA3umZ7BFD8OjJNzngvq78aJw=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190506102941eucas1p13c11436a32f3a0770ad3be1a982a263b~cEUpIJWCm1056610566eucas1p1U;
 Mon,  6 May 2019 10:29:41 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 73.4D.04377.59C00DC5; Mon,  6
 May 2019 11:29:41 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190506102940eucas1p1ee62c58e1fc8ffa155cf1710baa82548~cEUoQxyBK0861308613eucas1p1x;
 Mon,  6 May 2019 10:29:40 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190506102940eusmtrp112e35268797a7148d8ca48cce4162727~cEUoCo97o2720527205eusmtrp1N;
 Mon,  6 May 2019 10:29:40 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-95-5cd00c95580a
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D6.57.04140.49C00DC5; Mon,  6
 May 2019 11:29:40 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190506102939eusmtip166c1968f0a5a51232c34544383386cf3~cEUnP8XUo0073300733eusmtip1L;
 Mon,  6 May 2019 10:29:39 +0000 (GMT)
Subject: Re: [PATCH v3 3/4] Documentation: devicetree: add PPMU events
 description
To: Rob Herring <robh@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <97277857-666d-7720-9d85-19120c977682@partner.samsung.com>
Date: Mon, 6 May 2019 12:29:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJcm9Z6vYFHGyAZ+h3-kmSv6e=3NtO-fjJn3-QT0JoX+w@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUyNYRjHu8/z2lknd4d0iWkefaBNaD7cphkmzjeahtFw6FmikvOU900y
 p6S3Fac6S2Veau3k5JRU3iu9rHJCq5QwpUYdTLEsSU9Ppm+/+7p//93/a7t5StvFePJhkdGi
 IVIfLrBqurzul33ZFZfW4BWmpMXkTpaVIR0jAwzJq33OkNTeQYrY7SUcaYkb4oitt50hr6py
 WDKcXItIlv2RihTX9nDkZscLFek+V8iSiQcVHKkZimfIz4YPaB3WWXItSFdp7uF0tqKLrK70
 xlldSlkR0g3bFm5ld6n9Q8TwsGOiYfnafeqD1oEGOqrT5cSjpy+pWGRTJyJnHvAqmOj+xiUi
 Na/FhQjSU5pp5TCC4ElsMSVbWjyM4OWtkH+JrxktjCIVIGhr/jGdcCC4bMpiZWs2DoLbb9s5
 mefgRTBmNE0lKNzMQKs5fjLB8yz2hYqio7KjwZvAktbIyExjb0i8mzDF7ngnvKsrYRTHDRqz
 +2iZnXEgpA1dmGpHYQ/o6stTKewF9xw5lPwW4HEOno3WskrtjdB56Q+n8Gz4XF82zQugKSOJ
 VliC2ORrSOEz0Jt6ddpZAzX1Lxi5M4WXgrVquTJeD6WF40geA3aFToebUsEV0sszKWWsgQSj
 VrGXQFlSq0rhuVBgMXFpSDDPWMw8YxnzjGXM/9/NR3QR8hBjpIhQUfKLFI/7SvoIKSYy1PfA
 kQgbmvxxTX/qRypQ1e/91QjzSHDR5Hvbg7WM/ph0MqIaAU8JczT6/ufBWk2I/uQp0XBkryEm
 XJSq0XyeFjw0p53e79biUH20eFgUo0TDv1sV7+wZi5LzjQ1xeYOPT7w9uyTzixDSV7fSmGAX
 3Dnrho9Bhype33aQtQ91zYPbP/tVVg3mdp5v7y/v+bq+8c3cluptPWxKVDgN7r0lJu11o1d2
 sXXP6JNPD5qGt5jrAvz9HS73db935AbM89m82jQWyKdqhFctTkGzMrOEdfELPJIenv/eJtDS
 Qf1KH8og6f8CTulMDW0DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrPIsWRmVeSWpSXmKPExsVy+t/xu7pTeC7EGJyfqmWxccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbrHp8TVWi8u75rBZfO49wmgx4/w+Jou1R+6yWyy9fpHJ
 4nbjCjaL/3t2sFscftPOavHtxCNGBwGPNfPWMHrsnHWX3WPTqk42j81L6j36tqxi9Pi8SS6A
 LUrPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/OJiU1J7MstUjfLkEvY/3z
 EywFN3gq9h28xNzAuImri5GTQ0LAROL95LOsXYxcHEICSxklJl67yA6REJOYtG87lC0s8eda
 FxtE0WtGiRfHVoAlhAVCJNbduwZmiwgoSvxumwY2iVngEqvE1m1NUGNbmCWmNhxk7GLk4GAT
 0JPYsaoQpIFXwE1izYSTrCA2i4CKRNfWDjBbVCBC4sz7FSwQNYISJ2c+AbM5BQIlJrxpZQax
 mQXMJOZtfghli0vcejKfCcKWl9j+dg7zBEahWUjaZyFpmYWkZRaSlgWMLKsYRVJLi3PTc4uN
 9IoTc4tL89L1kvNzNzECI3vbsZ9bdjB2vQs+xCjAwajEw+uhdD5GiDWxrLgy9xCjBAezkghv
 4rNzMUK8KYmVValF+fFFpTmpxYcYTYGem8gsJZqcD0w6eSXxhqaG5haWhubG5sZmFkrivB0C
 B2OEBNITS1KzU1MLUotg+pg4OKUaGDeoRlxTe3Xhna9yipRq42r5gzyPJ6gXTHI/vzBq4s0z
 LO/dDNcGsiyL5w72XpAq7FazRbG/7x/7lDLFZx4mlXPn7PhfYH7++7Hdn00mn43mVhe7PX/L
 ba17Gt/3Tll347BZxO1nWUvNFCsYbvo9mFvJKHjjbrhFvaN25l1v1rSK7WGXZj05wqXEUpyR
 aKjFXFScCACXdFxBAgMAAA==
X-CMS-MailID: 20190506102940eucas1p1ee62c58e1fc8ffa155cf1710baa82548
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_032951_662129_7EC420AC 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 5/2/19 10:24 PM, Rob Herring wrote:
> On Thu, May 2, 2019 at 3:52 AM Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>
>> Hi Rob,
>>
>> On 5/1/19 12:36 AM, Rob Herring wrote:
>>> On Fri, Apr 19, 2019 at 03:48:07PM +0200, Lukasz Luba wrote:
>>>> Extend the documenation by events description with new 'event-data-type'
>>>> field. Add example how the event might be defined in DT.
>>>
>>> Why do we need event types in DT? We don't do this for other h/w such as
>>> ARM PMU.
>> In ARM PMU all the events are hard-coded into the driver code i.e. in v7
>> arch/arm/kernel/perf_event_v7.c
>> and are seen from perf. They are different type and for different
>> purpose. The Ecynos PPMU events are not seen in perf, they are
>> for internal monitoring and must not be reset by other actors like perf.
>> They are used by the 'bus drivers' to made some heuristics and tune the
>> internal settings, like frequency.
>>
>> Chanwoo has written PPMU driver which relies on DT definition.
>> The DT events are used by other DT devices by phandle.
> 
> How is that done? I don't see anything in the binding for that.
Here are the DT devices and how they are pinned together:
- declared devfreq events:
https://elixir.bootlin.com/linux/latest/source/arch/arm/boot/dts/exynos4412-ppmu-common.dtsi
- devfreq events pinned to the bus device:
https://elixir.bootlin.com/linux/latest/source/arch/arm/boot/dts/exynos4412-odroid-common.dtsi#L107
- the bus device itself:
https://elixir.bootlin.com/linux/latest/source/arch/arm/boot/dts/exynos4412.dtsi#L457

Regards,
Lukasz

> 
> Rob
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
