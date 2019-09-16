Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A105EB3783
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 11:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/s07Klv1d2OySnheXOSh+kl011hrEHNhD+XuCza7Oc=; b=QmybtKiuCmqBw5
	g5jVXJaAbE5jT+bKK1gbNXP6NBZ9z9UAnz4PWZykIVGU2A3papd2st8f+cYP6vZOK4DBg1UBsUzJn
	XbsrdAYQ40OqlHbS03nkiUxbADV2VTx/ji4QrteVu8NS1P3r/tiLmn4/KGLTO7/lxZlr8YNqaQwHJ
	z/ulJOLzZFhT9GxNCRgteKdDYKxykvktVEftBOPameRFAyd8BKMfwaEzm3Eppe5uQ/8wzdEhPKonk
	b0K26CFa3yp4yjfI1R4+Gg4vOqSWa/7sAlKwXPzFbNxGnGbrc8zCC/RZWtLmHf3t0m6cFyMaxdY1f
	9PLbqpgxehcL9F3BhU2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9neJ-0006JK-RJ; Mon, 16 Sep 2019 09:50:23 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ndz-0005OC-7c
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 09:50:05 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190916094957euoutp010c1d679f7f345e5912d0a6d1bc6bfa00~E4k6v6w7n1114311143euoutp01w
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 09:49:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190916094957euoutp010c1d679f7f345e5912d0a6d1bc6bfa00~E4k6v6w7n1114311143euoutp01w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568627397;
 bh=iuHLb85Z2D3Szb5HcwZ4eEWC4tX/t5FH2HMb/lXL8xM=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=LUYpa4Sh3S8XjbZGY7vITT/EJ2IwD14Svik/lE5EvSYeHsJJ2Gg9EfVQmJ6I4DS1f
 IVz8ZJFtLTOd/DZ/78TydKSRZjizifz9P7Ut2Ak33BDiZjoavUaf1UIKqt4Zk08s7N
 ppojjdbIUeBAgzWV0v50tmR2hIQwVSrrt82gbEmI=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190916094957eucas1p1035b14c56a867a0206e2e1d11c19645b~E4k5-3U-E2395523955eucas1p1O;
 Mon, 16 Sep 2019 09:49:57 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 15.1B.04374.4CA5F7D5; Mon, 16
 Sep 2019 10:49:56 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190916094956eucas1p24cc2a1dfa8565ba6e1ff3d4fd1f09f73~E4k5KmyED0502405024eucas1p2M;
 Mon, 16 Sep 2019 09:49:56 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190916094955eusmtrp2debf0d072bbc1b2e06241b7ea59df52d~E4k48V3iW1858618586eusmtrp2l;
 Mon, 16 Sep 2019 09:49:55 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-2e-5d7f5ac4b73e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 4B.F0.04166.3CA5F7D5; Mon, 16
 Sep 2019 10:49:55 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190916094954eusmtip11d9afbb904d4a61073bd82cea965e2cb~E4k33i_DG2359023590eusmtip12;
 Mon, 16 Sep 2019 09:49:54 +0000 (GMT)
Subject: Re: [PATCH 3/3] dt-bindings: ddr: Add bindings for Samsung LPDDR3
 memories
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <a06caf21-b2a9-919f-6e73-69122fee5f66@partner.samsung.com>
Date: Mon, 16 Sep 2019 11:49:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5d7ba95a.1c69fb81.bfd81.77ba@mx.google.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+3Z2Li4nn1PzRaNwEN1Q0/rjWNIFREYEldGFYtmqg0Zu051W
 qyRXoGml3cDLMldQrdZqtWxeikW6vJS6ZFR2o4uDoKaBWiSrzHkm+d/vfd7n430e+BhC9paM
 Y/Zo9nE6jSpPTknEzrbRnkT31iLloiFHInu32k6yr0a+kKzZ3UOyp/u/EazHc4dmu4/5adbR
 /5Jkvc21FDtc7kZstcclYm+539Ps1Ve9Ivbt0esUO/awkWZb/cdJ9mfHZ7QSK2x1NqRoMr2n
 FQ5rGaW4d6VIUVFvRYphx6x11FZJ+m4ub89+Tpe8fIckt/mkXZTfFGfwtV6mjMgZcwKFMYCX
 wOO2TnQCSRgZvo6gq+sJIQwjCDpGn9DCMIygu26Qmnxy8/yN0MKCoMVRGRoGEHjbAqKgKwpv
 hK6TATrI0VgB72ptEyYC28RgMn4Yv8gwFE6CRmtB0CPFmeC7cVYcZDGeA2W9T4kgx+AtMPSx
 lRQ8kdBZ45vwhOE0KGnwTDCBY+GNzywSeDY0DNROdAD8h4bOd15CiJ0Bpe02kcBR8LW9nhZ4
 Jow1mUM6D8byy0jgQug/fTHkWQat7b1kMDOB54O9OVmQV8GY6RwVlAFHQN9ApBAhAs45qwhB
 lkJpiUxwz4P6U89Dh2aAxVZJn0Fy05RipillTFPKmP7fvYTEVhTL6Xl1Dscv1nAHkniVmtdr
 cpJ2adUONP7lnv1t/9GIXL93tiDMIHm41Fh8RCkjVfv5g+oWBAwhj5ZuLj2slEl3qw4e4nTa
 bJ0+j+NbUDwjlsdKD0/7uE2Gc1T7uL0cl8/pJrciJizOiLJvv+bM14pS5Pq4NE6XubT7bL4y
 zeBiZlesfxO/qVird4UXfE/Aqele/xp11vOM1Bff+fslqwt/NfMa1+AKrVnVEzhQ98DlvjBk
 8cf0Wa55PznnagwdJnPkM7stkMlNpz4zfQs/VSVkFNdkJb3WSdfKDIOPvsQGyjbEt22/Khfz
 uaqUBYSOV/0DAL2IlG4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrLIsWRmVeSWpSXmKPExsVy+t/xu7qHo+pjDU5OMLHYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C3ONr1ht9j0+BqrxeVdc9gsPvceYbSYcX4fk8XaI3fZLZZev8hk
 cbtxBZvF/z072C0Ov2lntfh24hGjg4DHmnlrGD12zrrL7rFpVSebx+Yl9R59W1YxenzeJBfA
 FqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mWWqRvl6CXsat7
 PVPBTqmKJ4cXsjUwbhPtYuTkkBAwkVg9eSV7FyMXh5DAUkaJ5/eOskAkxCQm7dvODmELS/y5
 1sUGYgsJvGaUuDufB8QWFgiVONP9G6xGRMBD4s6cNWCDmAXWsUgsnviaCaLhILNE51G9LkYO
 DjYBPYkdqwpBwrwCbhJPVk4E28UioCrRefEUM4gtKhAhcXjHLEaIGkGJkzOfgNVwClhKtG0/
 D2YzC5hJzNv8kBnCFpe49WQ+E4QtL7H97RzmCYxCs5C0z0LSMgtJyywkLQsYWVYxiqSWFuem
 5xYb6hUn5haX5qXrJefnbmIERvW2Yz8372C8tDH4EKMAB6MSD29Da12sEGtiWXFl7iFGCQ5m
 JRHe8I7qWCHelMTKqtSi/Pii0pzU4kOMpkDPTWSWEk3OByacvJJ4Q1NDcwtLQ3Njc2MzCyVx
 3g6BgzFCAumJJanZqakFqUUwfUwcnFINjDxuaQvCPuYennXzMbu58wXbnBnc6bO2yy6aaavs
 Oenz3hNLQ/3izCduPJInuJb9+CeefN4NLUZCM7+n9NUJXlOXDJ7KP6/h57726lsm7Q+jUk59
 beZnP7ms/4R0z4/8sGU1wWY7SoqdObMZn625e+GX0g2n3GL53/LS5ms0rLqXLdz7mL3ipRJL
 cUaioRZzUXEiACZDB4wAAwAA
X-CMS-MailID: 20190916094956eucas1p24cc2a1dfa8565ba6e1ff3d4fd1f09f73
X-Msg-Generator: CA
X-RootMTR: 20190906101407eucas1p15eb0df53374b27497b4793eab24becf6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190906101407eucas1p15eb0df53374b27497b4793eab24becf6
References: <CGME20190906101407eucas1p15eb0df53374b27497b4793eab24becf6@eucas1p1.samsung.com>
 <20190906101344.3535-1-l.luba@partner.samsung.com>
 <20190906101344.3535-4-l.luba@partner.samsung.com>
 <CAJKOXPfoYxTVvt_bMQOs1=BkHzUuW_WvL9zn0jTGS6LLpv=fhQ@mail.gmail.com>
 <52963d0d-cf48-7085-5581-a94c6e15e0bd@partner.samsung.com>
 <CAJKOXPfEcURr_bLRaAdjWT3cb7mcuKTk8rmn7OTO=xtvjvJ=jQ@mail.gmail.com>
 <5d7ba95a.1c69fb81.bfd81.77ba@mx.google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_025003_456513_4C2DE05D 
X-CRM114-Status: GOOD (  18.29  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Chanwoo Choi <cw00.choi@samsung.com>, kyungmin.park@samsung.com,
 kgene@kernel.org, myungjoo.ham@samsung.com, s.nawrocki@samsung.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 9/13/19 4:36 PM, Rob Herring wrote:
> On Fri, Sep 06, 2019 at 01:50:26PM +0200, Krzysztof Kozlowski wrote:
>> On Fri, 6 Sep 2019 at 13:39, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>>
>>> Hi Krzysztof,
>>>
>>> On 9/6/19 12:56 PM, Krzysztof Kozlowski wrote:
>>>> On Fri, 6 Sep 2019 at 12:14, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>>>>
>>>>> Add description of bindings for Samsung k3qf2f20db LPDDR3 memory.
>>>>> Minor fixes in the old documentation.
>>>>>
>>>>> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
>>>>> ---
>>>>>    .../devicetree/bindings/ddr/lpddr3.txt        | 29 +++++++++++++++++--
>>>>>    1 file changed, 27 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/ddr/lpddr3.txt b/Documentation/devicetree/bindings/ddr/lpddr3.txt
>>>>> index 3b2485b84b3f..de0905239767 100644
>>>>> --- a/Documentation/devicetree/bindings/ddr/lpddr3.txt
>>>>> +++ b/Documentation/devicetree/bindings/ddr/lpddr3.txt
>>>>> @@ -40,10 +40,34 @@ Child nodes:
>>>>>      a given speed-bin. Please see Documentation/devicetree/
>>>>>      bindings/ddr/lpddr3-timings.txt for more information on "lpddr3-timings"
>>>>>
>>>>> +Samsung K3QF2F20DB LPDDR3 memory
>>>>> +------------------------------------------------------------
>>>>> +
>>>>> +This binding uses the LPDDR3 binding (described above)
>>>>> +
>>>>> +Required properties:
>>>>> +- compatible:  Should be:
>>>>> +               "samsung,K3QF2F20DB"
>>>>> +               followed by "jedec,lpddr3"
>>>>> +- density  : <u32> representing density in Mb (Mega bits)
>>>>> +- io-width : <u32> representing bus width. Possible value 32
>>>>> +- #address-cells: Must be set to 1
>>>>> +- #size-cells: Must be set to 0
>>>>
>>>> If you decided to repeat all properties again, then it deserves its
>>>> own bindings file. However I though about simpler solution - just
>>>> document compatible. Exactly the same as AT24 or AT25 EEPROM bindings.
>>>> There is not much benefit from copying all these properties.
>>> OK, I see. I will add only 'compatible' and skip the rest then.
>>> So the lpddr3.txt file will get this addition:
>>>
>>> +Samsung K3QF2F20DB LPDDR3 memory
>>> +------------------------------------------------------------
>>> +
>>> +This binding uses the LPDDR3 binding (described above)
>>> +
>>> +Required properties:
>>> +- compatible:  Should be:
>>> +               "samsung,K3QF2F20DB"
>>> +               followed by "jedec,lpddr3"
>>> +
>>> +Optional properties:
>>> +
>>> +The optional properties are the same as in the LPDDR3 generic bindings and
>>> +values should be taken from the data-sheet. Detailed bindings are described
>>> +above.
>>> +
>>> +Child nodes:
>>> +
>>> +Detailed bindings are described in LPDDR3 generic bindings described above.
>>> +
>>>
>>> Is it OK?
>>
>> To me it is still a lot of text just for one compatible and I can
>> image more of such entries for other memories... However I do not mind
>> and anyway, YAML will simplify it. If you're in doubt, wait for Rob's
>> reply as this is his part.
> 
> We can't have multiple (top-level) schema in one file, so better to add
> in where the existing compatible strings are.

Thank you for your comment. I will add the needed string into existing
compatible then.

Regards,
Lukasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
