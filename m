Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D587616FBB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 11:11:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+oq1xCTZDLNrD8XonO4WIhSGK0s5kDtAp6wX8JcUoo=; b=HqlfL2PqUCzFFC
	lRwOuCmodCnDeZqgVVXeMSxDE0R42IMuNGkRVitqyOM3GjKUw13rvE/9oLDDa+GQWLQqKzlbznWTC
	tZGYcfbq1KTr+Z+pLKeAl24O7LZ0qHNfrblYs5Z/uHI19Ckmk9d55WWNzyY9Jz9oSEz+oEsWS4ivb
	Q4H/l2442G68PHoAP2YT96Q0BT90jbSi56xG5qjv+HVR56CCPPk+fDHK4gYie0kiKZFPR4tkQlSft
	tc1xlAzdsDNxTh9t8HmeKATuHl/mAblEuwBnWDRw9jIecEU5T1cBvjz2VJBxlKXujrpwjAnWPmzZB
	SsGvpsbH+i7Aw2CbkC2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tf9-00007v-Lk; Wed, 26 Feb 2020 10:11:31 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tev-00007A-Sq
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 10:11:21 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200226101115euoutp02aeb1705deab253197ac3f016983521ae~27BCtMGMQ1669116691euoutp02S
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 10:11:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200226101115euoutp02aeb1705deab253197ac3f016983521ae~27BCtMGMQ1669116691euoutp02S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1582711875;
 bh=gJhnzsw0e9znN518tPHvOvIr8D8V2pYAjMrH4fvkSss=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=C83CGgBBbBslijXht8QmjAr2ieCOP7r4OcEvZLfVBxuePgdDtLqcCUdRkCw/TaTpP
 EUcZ1KGUS+0OWo9/IQI/ByFzWyAconmGs+w0ORDLXy2zt2BX5qtUXA0vY/nY+7Dai2
 xg26Q5TPe2zud99/3U9Uc318iMMPf9wbUuR1fphU=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200226101115eucas1p14a15708f7142aa1208dcd9f1695b6d59~27BCgYM6b2612826128eucas1p1V;
 Wed, 26 Feb 2020 10:11:15 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 6E.54.60679.344465E5; Wed, 26
 Feb 2020 10:11:15 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200226101114eucas1p1bd227050f8f004d4e5ce7831745f8beb~27BCPtpT42618026180eucas1p1G;
 Wed, 26 Feb 2020 10:11:14 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200226101114eusmtrp27bef11dfca2a03f74c8cd9bc2013b7f2~27BCO9hYY0431004310eusmtrp21;
 Wed, 26 Feb 2020 10:11:14 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-f4-5e56444339b0
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 1D.4C.08375.244465E5; Wed, 26
 Feb 2020 10:11:14 +0000 (GMT)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200226101114eusmtip2dab8a6be1167c9591e699b4302436f04~27BBrYRqp2968429684eusmtip2y;
 Wed, 26 Feb 2020 10:11:14 +0000 (GMT)
Subject: Re: [PATCH 1/2] tty: serial: samsung_tty: build it for any platform
To: Geert Uytterhoeven <geert@linux-m68k.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <27d4ec69-1744-4421-0d34-924d14b3c1e6@samsung.com>
Date: Wed, 26 Feb 2020 11:11:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdVrVe37JyUNFSf9KRZTcndrvDaZvrVoBxzm_7J2nhg1kg@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHeXe2szNp9joVH8wSVkkWaReJQze6fTgf+lCYpVLmytPmbcrm
 NaIMo7zg3TTNu6Y5LNc0zYFWW2qltLAsb5ClDMtGlopYdnE7Sn77vf/n/+f/PPBShOS9wJUK
 VcawKqUsQkra8Vu65k1bDx85GbRtViuizUPtPDq5upGku+9NCmjNnQGCztdO8eissUmCTm3r
 F9Amk1ZI68beCeg3+hKSvmXq4NG91RlC+nrWKDogZnSaVJIxGFMQ87i0Qcg01VxhMguSEJPZ
 rEFMY3M/n5nWrTtGBdrtDWEjQuNYlff+YDuFcapMGD3slGCuzBAkoS6chkQUYB/4nNSJrCzB
 dxEY5w+mIbtFnkFgSalB3GMawcPSKt5yor/7Np8b1CHoSO4luIcFgen2R5vLER+FAvMQaWUn
 HAy18zd5VhOBzQS8bntOWAck3g05NzS2cjHeD4Xf62w6H2+EnM5ZoZWdsT/8GDUKOI8DvCga
 X6ymKBE+Dr/qbV0EdoGh8fIldodWS4ltIcCzQkjPThNwax+Bt5W/SY4d4Ut3s5BjN/jbVs7j
 AvcR/E6ZWEq3IqjL+7OU2AMjr36S1mYCe0Kj3puTD0JLR49NBmwPAxYHbgl7yG0pJDhZDCnX
 JZzbA7S1WnK5Nq2tnshG0uIVlxWvOKd4xTnF/3srEF+DXNhYdaScVe9QsvFealmkOlYp9zof
 FalDi9+t50/3zCOkXzhnQJhC0lXiCZFfkEQgi1MnRhoQUITUSfxgdlESh8gSL7KqqLOq2AhW
 bUBrKL7URbyz6vMZCZbLYthwlo1mVctTHiVyTUKK2LWGqhPPKvwsiY1dTwNK2C2himstfemX
 PhyWSnyY/Ln20azsSg0xdsj324z3qdULvqVfn7nNKTe4N3jkMZeHJ1+fKMr3DO8K6ktY3xDm
 /Ov0SMKups1b+D7B8WGKDfLgEXrOHKhv0M2NyfeFP970cuHC4BNT5uCnXIer8gB/VCblqxWy
 7ZsJlVr2D/R4oq9qAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBIsWRmVeSWpSXmKPExsVy+t/xe7pOLmFxBn/OGls8u7WXyaJ58Xo2
 i+NrX7NarFp6g9liyoYPTBb9j18zW3TuvMpqcf78BnaLTY+vsVpc3jWHzWLG+X1MFmcW97Jb
 tPU/YHTg9di0qpPN49DhDkaP/XPXsHtsXlLv0TetgdGjb8sqRo/1W66yeHzeJBfAEaVnU5Rf
 WpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mWWqRvl6CXcfjDPPaC2yIV
 zxb2sjYwHhPoYuTkkBAwkbh6fDZLFyMXh5DAUkaJk3NusHcxcgAlZCSOry+DqBGW+HOtiw2i
 5jWjxJfevUwgCWEBH4lpz26xgdSLCCRI7L/qD1LDLPCCWWLDq1usEA1/mSRebb7KCNLAJmAl
 MbF9FZjNK2AnMf3jcmYQm0VAVWLi0a/sILaoQITE4R2zoGoEJU7OfMICsoBTIFDi90qwvcwC
 6hJ/5l1ihrDFJW49mQ8Vl5fY/nYO8wRGoVlIumchaZmFpGUWkpYFjCyrGEVSS4tz03OLDfWK
 E3OLS/PS9ZLzczcxAmN527Gfm3cwXtoYfIhRgINRiYf3BWdonBBrYllxZe4hRgkOZiUR3o1f
 gUK8KYmVValF+fFFpTmpxYcYTYF+m8gsJZqcD0wzeSXxhqaG5haWhubG5sZmFkrivB0CB2OE
 BNITS1KzU1MLUotg+pg4OKUaGIXvdiy4fibsbobzM65PFSZXnFz1s+bH7CjxUdu4SP7mYalH
 zImvOmoLm8z+cbw20H04PXiNyfv0Z6KtnB/LrdoXONg6aArs4c08MYMv3LbneKHMxzylE6fe
 V/ruc+vZvDF4O+f9LVdV/qyN+N/PXjBFMmNFat3VekPunPVTenft3OrQ+zdPWImlOCPRUIu5
 qDgRAFmaYNT7AgAA
X-CMS-MailID: 20200226101114eucas1p1bd227050f8f004d4e5ce7831745f8beb
X-Msg-Generator: CA
X-RootMTR: 20200220121333eucas1p26befa95831b44a793822b4f07b37d2cc
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200220121333eucas1p26befa95831b44a793822b4f07b37d2cc
References: <CGME20200220121333eucas1p26befa95831b44a793822b4f07b37d2cc@eucas1p2.samsung.com>
 <20200220102628.3371996-1-gregkh@linuxfoundation.org>
 <b04ad319-9986-c357-ad37-937bbb06bc02@samsung.com>
 <CAMuHMdXzPPNqQom82frY1B6LMre+VD9fPAf98BZ3eo2DhgwoYg@mail.gmail.com>
 <20200225204151.GA13254@kroah.com>
 <CAMuHMdVrVe37JyUNFSf9KRZTcndrvDaZvrVoBxzm_7J2nhg1kg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_021118_067444_B15F5E08 
X-CRM114-Status: GOOD (  24.65  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Donghoon Yu <hoony.yu@samsung.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Shinbeom Choi <sbeom.choi@samsung.com>,
 Hyunki Koo <kkoos00@naver.com>, Kukjin Kim <kgene@kernel.org>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2/25/20 10:22 PM, Geert Uytterhoeven wrote:
> Hi Greg,
> 
> On Tue, Feb 25, 2020 at 9:41 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
>> On Tue, Feb 25, 2020 at 09:52:38AM +0100, Geert Uytterhoeven wrote:
>>> On Thu, Feb 20, 2020 at 1:13 PM Bartlomiej Zolnierkiewicz
>>> <b.zolnierkie@samsung.com> wrote:
>>>> On 2/20/20 11:26 AM, Greg Kroah-Hartman wrote:
>>>>> There is no need to tie this driver to only a specific SoC, or compile
>>>>> test, so remove that dependancy from the Kconfig rules.
>>>>
>>>> samsung_tty driver is hardware specific driver so why should we
>>>> build it for any platform?
>>
>> Why not?
> 
> Because this driver won't bind to a device anyway, when the kernel is
> configured without Samsung SoC support.  It will just bloat the kernel,
> and asking this question is a silly waste of time for anyone building a
> (non-generic) kernel for a non-Samsung SoC.
> 
>> Seriously, this "only this one specific SoC is allowed to build this
>> driver" is crazy.  It prevents anyone from building a generic kernel
>> with drivers as a module which are loaded as needed.
> 
> A generic kernel will include Samsung SoC support, hence PLAT_SAMSUNG
> or ARCH_EXYNOS will be enabled.
> 
>> That needs to be fixed, and removing this unneeded dependancy on this
>> driver allows it to be build for any system and then only loaded when
>> needed.
> 
> It can only be loaded on a Samsung system, which requires PLAT_SAMSUNG
> or ARCH_EXYNOS anyway.
> It's not like a Samsung serial device can be plugged into your PC's PCI
> bus or so, it only exists on Samsung SoCs.
> 
>>>> This change seems to defeat the whole purpose behind COMPILE_TEST
>>>> config option (which allows us to build hardware-specific drivers
>>>> without needlessly presenting the user with tons of non-relevant
>>>> config options).
>>>>
>>>> Please explain this change some more, are you planing to remove
>>>> COMPILE_TEST config option?
>>
>> I want to get rid of this:
> 
> IMHO we need _more_ of these dependencies, to avoid all these silly questions
> when they don't make sense.
> 
>>>>> -     depends on PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST
>>
>> We should not need PLAT_SAMSUNG or ARCH_EXYNOS at all, we should be able
>> to build an arm64 kernel for all platforms.
> 
> An arm64 kernel for all platforms will have ARCH_EXYNOS enabled.

+1 on all comments from Geert

IMHO this change should be reverted (it doesn't fix anything and
only makes kernel configuration harder).

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
