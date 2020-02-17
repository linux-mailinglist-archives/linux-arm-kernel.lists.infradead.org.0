Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 580981611F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 13:22:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBYGBN4MLpRF9IUsNuRcKi7RjZNiaksftjlMkFHtlO8=; b=IRxTot98puG+q7
	VJMKmE8h/bHFEFQLEZ3VFAXGjIIsaBgOueyzq8HHRcghks06zK4LcwvKDXITGjsvF9UvlAvTQvspR
	k+KozBU4ZRxhBbb3yfFvoB/ih9Cf28F3Sl7bGp5OuUd0ASzjvjUk52ot92+fe0r9ttLWUsK9xXq2M
	0A6nlHyJNGnWjbPWKyJqOc1weBGM157quzavxon3RbQSoiPCDFhzT0rwfexPqFqddrORTwkuDgpqQ
	sJ5apwqxOl/+Hjpp4YDkM1ieJIEno/YiQv5a+BULHMZtE6rUt1oHHFvf/MRxhs1aFCg/vZWXIIJuW
	ucCpOUTnDZUv8tv3SHEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3fQ4-00046D-Hf; Mon, 17 Feb 2020 12:22:36 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fPt-00045P-Rk
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:22:27 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200217122224euoutp025ee7d028917f9edf8014c6946608bb40~0L-_hwC-B1679516795euoutp02d
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 12:22:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200217122224euoutp025ee7d028917f9edf8014c6946608bb40~0L-_hwC-B1679516795euoutp02d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1581942144;
 bh=pepeLGM6JPh2niWR4Zq0KSrOrfT2c2MNZvG/qj9b8mA=;
 h=Subject:To:From:Date:In-Reply-To:References:From;
 b=E6dknFPREmy9aW6ZSNCTO1egqzsjCrjIE+w7aFdYtuN3R1drjQlxQE+Y/HJ7Q/Mnr
 JHMd50lLLzQT31sVQnRsvjdujj6DhcOBILImhntu+6J9R4QPS6ycddlCVBVvrNR1eB
 uRuYz2tu2MPMrsWvp752zIRjKrs+KPU7EDXVNupU=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200217122223eucas1p208d0aa69d3df2975b123de0e39411e46~0L-_Y6yJh3165531655eucas1p2s;
 Mon, 17 Feb 2020 12:22:23 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 98.8A.60698.F758A4E5; Mon, 17
 Feb 2020 12:22:23 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200217122223eucas1p22e5947908dcdc0c2ea1dfe958b851a4e~0L-_C7eBG3165531655eucas1p2r;
 Mon, 17 Feb 2020 12:22:23 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200217122223eusmtrp1603ff6a3bd2c59d746cd03352112cea1~0L-_CTqhZ1377413774eusmtrp18;
 Mon, 17 Feb 2020 12:22:23 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-e6-5e4a857f0170
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 4C.14.07950.F758A4E5; Mon, 17
 Feb 2020 12:22:23 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200217122223eusmtip2333914dac7ae29e7a91441ce3791af8d~0L-9qcuW-1085210852eusmtip2N;
 Mon, 17 Feb 2020 12:22:23 +0000 (GMT)
Subject: Re: [PATCH] ARM: bcm2835_defconfig: add minimal support for
 Raspberry Pi4
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Stefan Wahren
 <stefan.wahren@i2se.com>, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <9330d511-dc7d-8d67-043a-acee7e6ebd73@samsung.com>
Date: Mon, 17 Feb 2020 13:22:22 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <C0LZGU1IU7QO.9VKWHWJ56XZV@vian>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOKsWRmVeSWpSXmKPExsWy7djPc7r1rV5xBsd2m1psenyN1eLyrjls
 FhNvb2C32DZrOZvFphU32BxYPbbeMvXYvKTeY/Ppao/Pm+QCWKK4bFJSczLLUov07RK4Mlr/
 XmYpeMNfcbwnqoHxLU8XIyeHhICJxLt7XYxdjFwcQgIrGCUWXtrIDuF8YZTY+OM+VOYzo8S2
 j7eZYFrmP1zMBmILCSxnlPh+WRKi6C2jxMdLvcwgCWGBEIktnXOYQRIiAicZJSbvP8cKkmAT
 MJToetsF1s0rYCfxu6mJHcRmEVCV+PT9AtgGUYFYidkrD7NA1AhKnJz5BMjm4OAU0JU4MFkQ
 JMwsIC+x/e0cZghbXOLWk/lMILskBNrZJabu+8wKcamLxMeDk9ghbGGJV8e3QNkyEqcn97BA
 NDQzSjw8t5YdwulhlLjcNIMRospa4s65X2wgm5kFNCXW79KHCDtK/Lu2igkkLCHAJ3HjLdRB
 fBKTtk1nhgjzSnS0CUFUq0nMOr4Obu3BC5egSjwk1j8Mn8CoOAvJk7OQfDYLyWezEE5YwMiy
 ilE8tbQ4Nz212DgvtVyvODG3uDQvXS85P3cTIzC5nP53/OsOxn1/kg4xCnAwKvHwOoR4xgmx
 JpYVV+YeYpTgYFYS4fUW94oT4k1JrKxKLcqPLyrNSS0+xCjNwaIkzmu86GWskEB6Yklqdmpq
 QWoRTJaJg1OqgbE0M6/0azlL09/N6fWTBfX57kg+/hPfcvRL8wRv9Ryz0r1TM97E798j7Opv
 EahyUX3NsT8thZV+Z7KtOv13b3masu/Apck/nqTNWfl3spxi+aKlfunOe8uvtEyxe6TszvNh
 kVb67CMv+/O10jiPTrrTYrpe0kTBV1Dh8oE7LYEruaT/12x/lqHEUpyRaKjFXFScCAC2bjZc
 KgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7r1rV5xBvcXy1hsenyN1eLyrjls
 FhNvb2C32DZrOZvFphU32BxYPbbeMvXYvKTeY/Ppao/Pm+QCWKL0bIryS0tSFTLyi0tslaIN
 LYz0DC0t9IxMLPUMjc1jrYxMlfTtbFJSczLLUov07RL0Mlr/XmYpeMNfcbwnqoHxLU8XIyeH
 hICJxPyHi9m6GLk4hASWMkrMnHiJHSIhI3FyWgMrhC0s8edaF1TRa0aJyW86wRLCAiEST3qX
 sYMkRAROM0r8v3gYqqqBUeLVss9sIFVsAoYSXW+7wGxeATuJ301NYCtYBFQlPn2/wARiiwrE
 StyY2cEEUSMocXLmE5YuRg4OTgFdiQOTBUHCzAJmEvM2P2SGsOUltr+dA2WLS9x6Mp9pAqPg
 LCTds5C0zELSMgtJywJGllWMIqmlxbnpucVGesWJucWleel6yfm5mxiBkbPt2M8tOxi73gUf
 YhTgYFTi4XUI8YwTYk0sK67MPcQowcGsJMLrLe4VJ8SbklhZlVqUH19UmpNafIjRFOi3icxS
 osn5wKjOK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAqPriUpCD
 HOs3071czxKEKwtmfwnpX/ZXr7nwyIE51eePzLkyxbddx5qDyYzvcuK57VM+R54SPfxLeUNu
 xvnizRxcv9PPsva+NLRQkVr0wpon8OT5xU/ztnfO4W76bqUU9WIm1+bYo+7fb73pZF9695G1
 o8t0PokTxe8Y15Z2Pw0wtjMzFZj/SImlOCPRUIu5qDgRALGTGb2yAgAA
X-CMS-MailID: 20200217122223eucas1p22e5947908dcdc0c2ea1dfe958b851a4e
X-Msg-Generator: CA
X-RootMTR: 20200214151840eucas1p2ccd15a69aea02a20eda1e4b6e9c8f44e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200214151840eucas1p2ccd15a69aea02a20eda1e4b6e9c8f44e
References: <CGME20200214151840eucas1p2ccd15a69aea02a20eda1e4b6e9c8f44e@eucas1p2.samsung.com>
 <C0LZGU1IU7QO.9VKWHWJ56XZV@vian>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_042226_106473_7EC29169 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On 14.02.2020 16:14, Nicolas Saenz Julienne wrote:
> On Fri Feb 14, 2020 at 1:25 PM, Marek Szyprowski wrote:
>> On 13.02.2020 10:59, Stefan Wahren wrote:
>>> On 13.02.20 08:35, Marek Szyprowski wrote:
>>>> On 12.02.2020 19:31, Nicolas Saenz Julienne wrote:
>>>>> On Wed, 2020-02-12 at 11:20 +0100, Marek Szyprowski wrote:
>>>>>> Add drivers for the minimal set of devices needed to boot Raspberry Pi4
>>>>>> board.
>>>>>>
>>>>>> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
>>>>> Just so you know, the amount of support on the RPi4 you might be able to get
>>>>> updating bcm2835_defconfig's config is very limited. Only 1GB of ram and no
>>>>> PCIe (so no USBs).
>>>> Yes, I know. A lots of core features is missing: SMP, HIGHMEM, LPAE, PCI
>>>> and so on, but having a possibility to boot RPi4 with this defconfig
>>>> increases the test coverage.
>>> in case you want to increase test coverage, we better enable all
>>> Raspberry Pi 4 relevant hardware parts (hwrng, thermal, PCI ...). This
>>> is what we did for older Pi boards.
>> Okay, I will add thermal in v2. HWRNG is already selected as module.
>> Enabling PCI without LPAE makes no sense as the driver won't be able to
>> initialize properly.
> Agree on this.
>>> SMP, HIGHMEM, LPAE are different and shouldn't be enabled in
>>> bcm2835_defconfig from my PoV.
>> Maybe it would make sense to also add bcm2711_defconfig or
>> bcm2835_lpae_defconfig?
> IMO bcm2711_defconfig if the last resort solution. I don't think you can
> do bcm2835_lpae_defconfig as RPi and RPi2 SoCs don't support LPAE.

Okay, if you want I can send a patch adding bcm2711_defconfig.

>   An
> intemediate solution is being discussed here:
> https://lkml.org/lkml/2020/1/10/694

Right, I also agree that multi_v7_lpae_defconfig is needed. Best would 
be to have both (bcm2711 for quick tests of board-dedicated kernel and 
multi for distributions).

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
