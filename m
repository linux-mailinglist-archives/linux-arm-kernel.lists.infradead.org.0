Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B042E1601C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iF9b4uFlbhufsw6G7ZkMKJMaHycTKs+s7rH6B5I5PPw=; b=fo2j8DClLFwBVc
	WWsW+zs0MD+57JEss1Q/zIczLSRNyVYgHviYyOi/mUoSOwvzpXJGnHYAHDIaicZaBXJGZmOF01LOB
	k2bYkmpp8JIyItsx0ARwJgzPF9g5Zc0v71soqKHFjaVCdpI6C4+nziFXDdZ3xN3UAPAaQ9YmGrPM9
	JB3HX0X+BAh4X2VDQNFsF5pFm9uVKhCaSrsGzvlTTIWd3uRt0kUN/RpiWg09ZBbB2G3uv574eCfsF
	bdlijk721QetB0YAmja9qYB3M6b/biU0Wfz6cP2zD6jATtmAHWuBqKsm5fwI6sYYhgGtVexw015KK
	MP44V+bCowqDn8TKWS1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNw2m-0003sv-2Q; Tue, 07 May 2019 09:05:48 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNw2e-0003ru-8p
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 09:05:42 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190507090536euoutp02a681c49f477db2f1527e53fc5fb22eea~cW0gQL1fr2591725917euoutp02j
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 May 2019 09:05:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190507090536euoutp02a681c49f477db2f1527e53fc5fb22eea~cW0gQL1fr2591725917euoutp02j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1557219936;
 bh=Ukf+FLcqAF3cEVXKTbQFGjd2gzyerf+1cQvBi47rjTU=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=oESQ57Q+uc54HIJ91fJzUQOwmfe0jjkbA2i3J5cuHk6Vp8QkhbcY+ti7BUCe6fZ8J
 VGd4XJUBYHe9vEaGGMPfqd8BHEET9uH1uyOxPztvC+DHLJM1n/t+ZVkjNBjoux3xt/
 QyifCw8f1I4nDILwUonTV5/osasGLhNQbQuXFGyE=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190507090535eucas1p1eeff1030a0df912b00643c9273cc6d72~cW0fM8Bm23257032570eucas1p1p;
 Tue,  7 May 2019 09:05:35 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id EA.90.04325.E5A41DC5; Tue,  7
 May 2019 10:05:34 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190507090534eucas1p2f6624c19f0c2d2b084bddcc72d544a60~cW0eVsZMY2656426564eucas1p2P;
 Tue,  7 May 2019 09:05:34 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190507090533eusmtrp1aefae86a1bd5f3855c85ddf8ff2df8ff~cW0eHdzcR3169331693eusmtrp14;
 Tue,  7 May 2019 09:05:33 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-5e-5cd14a5ed4c8
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E9.35.04140.D5A41DC5; Tue,  7
 May 2019 10:05:33 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190507090533eusmtip20d4a7dacfddd5212fbd5671d0e54bc67~cW0ddmHD72340623406eusmtip2D;
 Tue,  7 May 2019 09:05:33 +0000 (GMT)
Subject: Re: [PATCH v3 3/4] Documentation: devicetree: add PPMU events
 description
From: Lukasz Luba <l.luba@partner.samsung.com>
To: Rob Herring <robh@kernel.org>
Message-ID: <3d221027-292b-7d0d-2510-f230a81f4b52@partner.samsung.com>
Date: Tue, 7 May 2019 11:05:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <97277857-666d-7720-9d85-19120c977682@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUhTURjGPbu7u9fV5DgrXyqKRmIJzbKIS99F1IqooJA+pFp50dG2bFdd
 X5AWZJpLUzAbliWZ08yPKWqSS1S0stqWYJFf6VZWumJsBaFWzrvI/573eX7nnPeBQxPSHnIu
 rdImsjqtUi0TiYV17b+sy47stMcsH2lcxlTnV5LMW+8wyRS2vSaZLMcIwVitVRTz6tIoxZgd
 3STT1VggYjyGNsTkWy0C5lFbH8UUv7ULmJ5Uk4j586SBYlpH00jm57MhtAkryu+UI8VjYx+l
 MJelixQ19y8qrteWIYXHvGCv6JB4XSyrViWzusgNx8TxTUX5goSxoDPXClJRCkqfmYECacCr
 oP5BFpGBxLQUmxB8cT0R8YMXwf1BD8UPHgTO/HT070ha3m9/UIKgdcAj5AcXgvHv7ZSPCsH7
 oaK/e1LTtAjLoaHstM+ehRfB2JU80scT+CUJNmOa0BdI8DZorpggfFqIF4PD3jt1z2x8AAba
 q0ieCYbnt5xTfCDeDiOFT6d8AofCe2ehgNcLod5VMFUIcCoNX8xu/9pboa46Q8jrEPjaUUvx
 ej505mb6fQ5SDPf8/AVwZN32M2uhtcNO+soQeClUNkby9maoMU0gnw04CN65gvkVgiCn7ibB
 2xK4ekXK00ugNtMm4PUcKCnPo7KRzDitmHFaGeO0Msb/795FwjIUyiZxmjiWW6ll9XJOqeGS
 tHHyE6c0ZjT55Tp/d/xoQJbx4y0I00g2U5K9xRYjJZXJ3FlNCwKakM2SKD+9jpFKYpVnz7G6
 U0d1SWqWa0HzaKEsVHI+4MNhKY5TJrInWTaB1f1LBXTg3BQkn3jzKj7cud5iOHc5LG+PXmMa
 V2/sstT1OZszPpbaTEWbdxU1kdFa447iBS92dw6FR98QlO5T1AREub0zAvSfB6PWxOb2rgg2
 eHM25Ri8G+5t7VGpqiv6V9vFB+9+u+y+sCvC9DBs2F3q0RQG7NzdL9N/bdVE3Mp0rLUFk39q
 5TIhF69cEUHoOOVf0QlhiG4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrHIsWRmVeSWpSXmKPExsVy+t/xe7qxXhdjDI6eNrXYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C3ONr1ht9j0+BqrxeVdc9gsPvceYbSYcX4fk8XaI3fZLZZev8hk
 cbtxBZvF/z072C0Ov2lntfh24hGjg4DHmnlrGD12zrrL7rFpVSebx+Yl9R59W1YxenzeJBfA
 FqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mWWqRvl6CXsXfR
 DKaC33wV3XMaGRsYO3m6GDk5JARMJNqn/WPvYuTiEBJYyihx5+N9ZoiEmMSkfdvZIWxhiT/X
 uthAbCGB14wSi6akgNjCAiES6+5dA6rh4GAT0JPYsaoQJCwioCjxu20aK8hMZoFLrBJbtzWx
 Qiw4yCyxb/9aVpAqXgE3iQPr/oItYxFQkXh88Q7YMlGBCIkz71ewQNQISpyc+QTM5hRwl3g9
 fz9YL7OAmcS8zQ+ZIWxxiVtP5jNB2PIS29/OYZ7AKDQLSfssJC2zkLTMQtKygJFlFaNIamlx
 bnpusZFecWJucWleul5yfu4mRmBcbzv2c8sOxq53wYcYBTgYlXh4H9heiBFiTSwrrsw9xCjB
 wawkwpv47FyMEG9KYmVValF+fFFpTmrxIUZToOcmMkuJJucDU05eSbyhqaG5haWhubG5sZmF
 kjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQZGrnPM25azl7jyGalVRxxusHEs1BFiak3u031c
 +qz3kMjpuTVdx3rlf+lE7GWbv03nqkrgrMytLSpfuvNPfPl8339x6svtIhV52xkXrmqwvWUt
 vudVvM6ysimVt/6eEsqqq3Xi/Pv47fyo1Uo/fM4tKXYo7OHWKxYw2vzEw3VbhOWL6OWXVzEo
 sRRnJBpqMRcVJwIAomVimwEDAAA=
X-CMS-MailID: 20190507090534eucas1p2f6624c19f0c2d2b084bddcc72d544a60
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_020540_604191_699F3CD6 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 5/6/19 12:29 PM, Lukasz Luba wrote:
> Hi Rob,
> 
> On 5/2/19 10:24 PM, Rob Herring wrote:
>> On Thu, May 2, 2019 at 3:52 AM Lukasz Luba 
>> <l.luba@partner.samsung.com> wrote:
>>>
>>> Hi Rob,
>>>
>>> On 5/1/19 12:36 AM, Rob Herring wrote:
>>>> On Fri, Apr 19, 2019 at 03:48:07PM +0200, Lukasz Luba wrote:
>>>>> Extend the documenation by events description with new 
>>>>> 'event-data-type'
>>>>> field. Add example how the event might be defined in DT.
>>>>
>>>> Why do we need event types in DT? We don't do this for other h/w 
>>>> such as
>>>> ARM PMU.
>>> In ARM PMU all the events are hard-coded into the driver code i.e. in v7
>>> arch/arm/kernel/perf_event_v7.c
>>> and are seen from perf. They are different type and for different
>>> purpose. The Ecynos PPMU events are not seen in perf, they are
>>> for internal monitoring and must not be reset by other actors like perf.
>>> They are used by the 'bus drivers' to made some heuristics and tune the
>>> internal settings, like frequency.
>>>
>>> Chanwoo has written PPMU driver which relies on DT definition.
>>> The DT events are used by other DT devices by phandle.
>>
>> How is that done? I don't see anything in the binding for that.
> Here are the DT devices and how they are pinned together:
> - declared devfreq events:
> https://elixir.bootlin.com/linux/latest/source/arch/arm/boot/dts/exynos4412-ppmu-common.dtsi 
> 
> - devfreq events pinned to the bus device:
> https://elixir.bootlin.com/linux/latest/source/arch/arm/boot/dts/exynos4412-odroid-common.dtsi#L107 
> 
> - the bus device itself:
> https://elixir.bootlin.com/linux/latest/source/arch/arm/boot/dts/exynos4412.dtsi#L457 
> 
> 
> Regards,
> Lukasz
> 
>>
>> Rob
>>
>>
Can I send the next version of the patch set, which has Chanwoo's
suggestions, or do you have some objections to this PPMU entries?

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
