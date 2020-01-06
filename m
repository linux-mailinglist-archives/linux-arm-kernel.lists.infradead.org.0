Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0B5130B86
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 02:31:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfHdu9UeAKXAzky8AlP4COP+OJkXZC2pKr5PjPpKzXA=; b=hQKMDQV9qO1Zlh
	L2mxVwRLcLH47XZF/ju1nKjT3o0bz/R2XmrOD5Q6YgzkOj16rJZRCBag9NM3ut4acadeOPa5WpRhC
	+kf2hFiIaxiJQsm/LT/HFUlKrzh1lGwuvox2EIiFXA3Ik1SPASRATHvpmxiSi9gc01MZ4GbQLwhuU
	FePzhzIst9jOLjR/XfhRZaGbfMMX4DtARWvgHYSvXg98cT7JJbKQnifMPnTuWDemk1h8hlTy7B/AT
	UA5DWngaWnknEsGLmF1j5uL1+GbWRT6rAW3ClFAnVlVNNy8tPo6jVFm/uuwtmSIu/2AlTj+BWnTMg
	+po5wtB3TAYuq8XmGKBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioHF4-000694-6j; Mon, 06 Jan 2020 01:31:38 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioHEx-00067g-U4
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 01:31:34 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200106013126epoutp04e9c1d5fa38458fc1c154805809e4395f~nKBoHOAZp2702427024epoutp04S
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  6 Jan 2020 01:31:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200106013126epoutp04e9c1d5fa38458fc1c154805809e4395f~nKBoHOAZp2702427024epoutp04S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1578274286;
 bh=3VT2jsnbqSwTZB49bAGF93TSEbfGxtSZE2W2NtD5GKg=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=IFjvS9gWfzR/5IqUANVNWMF6w+8lzxWSC/djOd4S07OGCFjG+9Ew4OOXQdXGeVn1V
 TJzoGVtAixOfvsIJsjEi2BqS12UlrEp+VE4W85yZTYDNhWlMrZ255OpFO1Hi8qjCHJ
 wIUnEhgjzwygKSLWYgj+Zm9WO1F6lqQcd3ulS98o=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200106013126epcas1p139555304382a9b47900ba799655158ca~nKBnieZMJ0763307633epcas1p1f;
 Mon,  6 Jan 2020 01:31:26 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.157]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47rdJW4lWBzMqYkd; Mon,  6 Jan
 2020 01:31:23 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 28.CD.48498.BED821E5; Mon,  6 Jan 2020 10:31:23 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20200106013123epcas1p49edbebd5bf248f8814d56240ef670218~nKBk1VO5f0639406394epcas1p4G;
 Mon,  6 Jan 2020 01:31:23 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200106013123epsmtrp10e2268e22f89952b99c6a2893017c241~nKBk0Y2YR2423224232epsmtrp19;
 Mon,  6 Jan 2020 01:31:23 +0000 (GMT)
X-AuditID: b6c32a36-a55ff7000001bd72-7a-5e128debde22
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 F2.47.10238.AED821E5; Mon,  6 Jan 2020 10:31:22 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200106013122epsmtip1d1087755a7ebce07ebc8ba09f1acd44f~nKBkfaiSH1136211362epsmtip1c;
 Mon,  6 Jan 2020 01:31:22 +0000 (GMT)
Subject: Re: [PATCH 4/9] PM / devfreq: exynos-bus: Replace deprecated
 'devfreq' property
From: Chanwoo Choi <cw00.choi@samsung.com>
To: Rob Herring <robh@kernel.org>
Organization: Samsung Electronics
Message-ID: <76616499-7c19-06b1-461a-28ae17a76c60@samsung.com>
Date: Mon, 6 Jan 2020 10:38:29 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <a54e4275-012e-77d9-bdbe-1aab64b5c12b@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrPJsWRmVeSWpSXmKPExsWy7bCmge7rXqE4g6cf1Szuz2tltJh/5Byr
 xf9Hr1kt+h+/ZrY4f34Du8XZpjfsFivufmS12PT4GqvF5V1z2Cw+9x5htPj04D+zxYzz+5gs
 Fja1sFusPXKX3WLp9YtMFrcbV7BZ/N+zg91B0GPNvDWMHptWdbJ5bF5S77Hx3Q4mj74tqxg9
 tl+bx+zxeZNcAHtUtk1GamJKapFCal5yfkpmXrqtkndwvHO8qZmBoa6hpYW5kkJeYm6qrZKL
 T4CuW2YO0AdKCmWJOaVAoYDE4mIlfTubovzSklSFjPziElul1IKUnALLAr3ixNzi0rx0veT8
 XCtDAwMjU6DChOyMl3+vMBacEqtoWdzC1sC4SKiLkZNDQsBE4uTixcwgtpDADkaJ/4vCuxi5
 gOxPjBKPp/9jhXC+MUq8+t/HBtMxrXk6C0RiL6PE7fO/2SCc94wSm5beYgWpEhaIkth2YBGY
 zSagJbH/xQ2wbhEBRYnfbdPAxjILrGGWaJvymwUkwQ+UuPrjMSOIzStgJ7F1/xmgIg4OFgEV
 idvNFSBhUYEwiZPbWqBKBCVOznzCAlLCKWAvceWUPUiYWUBc4taT+UwQtrzE9rdzmEFWSQic
 YpeYdnITE8QHLhIt++ZBfSMs8er4FnYIW0riZX8blF0tsfLkETaI5g5GiS37L7BCJIwl9i+d
 zASymFlAU2L9Ln2IsKLEzt9zGSEW80m8+9oDdr6EAK9ERxs0qJUlLj+4C3WCpMTi9k62CYxK
 s5B8MwvJC7OQvDALYdkCRpZVjGKpBcW56anFhgVGyJG9iRGcuLXMdjAuOudziFGAg1GJh5ch
 WChOiDWxrLgy9xCjBAezkghvo5tgnBBvSmJlVWpRfnxRaU5q8SFGU2BYT2SWEk3OB2aVvJJ4
 Q1MjY2NjCxNDM1NDQyVxXo4fF2OFBNITS1KzU1MLUotg+pg4OKUaGFXm7eLaacTF9XOK68Lr
 +Xonv0Q8Wfp6rcZW4euJuQbMZlon2qtkfVfqbT3wM/xmeMHE+OjZry+nR39zTfiv+ObgrvRX
 z3WsDbZnWDVaxW5ebdi5f+F5qz2ePwL+bq3bzfBeu/X2hwf7gxeKvlm43n6tRnhUM4ONlzJ7
 PkcYC3PG1HyFE9PidymxFGckGmoxFxUnAgCG0r0r8gMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJIsWRmVeSWpSXmKPExsWy7bCSnO6rXqE4g7edNhb357UyWsw/co7V
 4v+j16wW/Y9fM1ucP7+B3eJs0xt2ixV3P7JabHp8jdXi8q45bBafe48wWnx68J/ZYsb5fUwW
 C5ta2C3WHrnLbrH0+kUmi9uNK9gs/u/Zwe4g6LFm3hpGj02rOtk8Ni+p99j4bgeTR9+WVYwe
 26/NY/b4vEkugD2KyyYlNSezLLVI3y6BK+Pl3yuMBafEKloWt7A1MC4S6mLk5JAQMJGY1jyd
 pYuRi0NIYDejRO/Kn0wQCUmJaRePMncxcgDZwhKHDxeDhIUE3jJK/G8PBLGFBaIkth1YxApi
 swloSex/cYMNxBYRUJT43TaNFWQms8AaZonzPd1QCyYxSax8sxGsih+o6uqPx4wgNq+AncTW
 /WdYQZaxCKhI3G6uAAmLCoRJ7FzymAmiRFDi5MwnLCAlnAL2EldO2YOEmQXUJf7Mu8QMYYtL
 3HoynwnClpfY/nYO8wRG4VlIumchaZmFpGUWkpYFjCyrGCVTC4pz03OLDQsM81LL9YoTc4tL
 89L1kvNzNzGCI1hLcwfj5SXxhxgFOBiVeHhXBAjFCbEmlhVX5h5ilOBgVhLhbXQTjBPiTUms
 rEotyo8vKs1JLT7EKM3BoiTO+zTvWKSQQHpiSWp2ampBahFMlomDU6qBUavr0C3B4Cn8z4zv
 Nd+p0fP4fuhobP/17esrHpvwHk+ZPJPVevKKd5oN2reCPDUfzOdvapjLKdlcvTJV4BFba03k
 BRun6aKfbI0+mgWbfWZ4a5v2uzyaeTPbX8fIg/89a132rm5cn+B2xcLpcprVYsdq35x0XkbJ
 QE6m3Q9vRU8VqdnzO3uLEktxRqKhFnNRcSIAgoO6E9wCAAA=
X-CMS-MailID: 20200106013123epcas1p49edbebd5bf248f8814d56240ef670218
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191217055106epcas1p11f2bc81d6bb2db3fc4bc257d78c337b9
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055106epcas1p11f2bc81d6bb2db3fc4bc257d78c337b9@epcas1p1.samsung.com>
 <20191217055738.28445-5-cw00.choi@samsung.com> <20191226210119.GA8706@bogus>
 <a54e4275-012e-77d9-bdbe-1aab64b5c12b@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_173132_201729_608425FD 
X-CRM114-Status: GOOD (  24.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-samsung-soc@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 a.swigon@samsung.com, krzk@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com,
 kgene@kernel.org, myungjoo.ham@samsung.com, leonard.crestez@nxp.com,
 lukasz.luba@arm.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Gently Ping.

On 12/27/19 9:09 AM, Chanwoo Choi wrote:
> On 12/27/19 6:01 AM, Rob Herring wrote:
>> On Tue, Dec 17, 2019 at 02:57:33PM +0900, Chanwoo Choi wrote:
>>> In order to remove the deprecated 'devfreq' property, replace with
>>> new 'exynos,parent-bus' property in order to get the parent devfreq device
>>> in devicetree file instead of 'devfreq' property. But, to guarantee the
>>> backward-compatibility, keep the support 'devfreq' property.
>>>
>>> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
>>> ---
>>>  .../bindings/devfreq/exynos-bus.txt           | 16 +++++++--------
>>>  drivers/devfreq/exynos-bus.c                  | 20 ++++++++++++-------
>>>  2 files changed, 21 insertions(+), 15 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
>>> index e71f752cc18f..c948cee01124 100644
>>> --- a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
>>> +++ b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
>>> @@ -45,7 +45,7 @@ Required properties only for parent bus device:
>>>    of buses.
>>>  
>>>  Required properties only for passive bus device:
>>> -- devfreq: the parent bus device.
>>> +- exynos,parent-bus: the parent bus device.
>>
>> If you are going to do something new, why not use the interconnect 
>> binding here?
> 
> As I knew, interconnect make the data path among multiple nodes
> and set the average and peak bandwidth to the specific data path.
> 
> It means that some data will be flowed from node_a to node_d
> or the reverse way because each node has the tightly coupled
> dependency for data flow.
> 
> 	node_a <-> node_b <-> node_c <-> node_d
> 
> 
> On the other hand, exynos-bus.c driver is not related to 'data path'.
> Each bus just need to control the their own frequency and voltage.
> But, share the power line (regulator) between exynos-bus device
> even if there are no any dependency of data flow.
> 
> 'exynos,parent-bus' property just indicate the specific
> devfreq device(parent bus device) which controls
> the shared power line(regulator) in order to prevent
> the h/w problem due to the wrong pair of frequency and voltage.
> 
> 'exynos,parent-bus' property is only used to catch
> the change timing of shared power line.
> 
> 
> And,
> as you commented, there are some data path among the exynos-bus
> devices for the display h/w as following:
> 
> 	bus_display -> bus_leftbus -> bus_dmc
> 
> In order to make the data path between bus devices,
> interconnect binding is required. This approach[1] was posted.
> [1] https://patchwork.kernel.org/cover/11305265/
> - [RFC,v3,0/7] PM / devfreq: Simple QoS for exynos-bus using interconnect
> 

Are there any other commentss?


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
