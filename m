Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0DB87CD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:36:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFT23OEckUtSa8PIlzR3LJ/ONZE3B5k6AQmC3ERy5XY=; b=AhCkm6AZNo4t8W
	w5OSaUyseDlzYCowV5r9MDEULYp/WMQvnN5HfxsuYXRqWqo86uufzzxMSDha4+B4uf0SdcbqE8l2U
	dQ1sm44VmSBRReYrtOWxIqjEek6hu7HBHkFOgstlaVyL1I7pmH9z6lDtxWFCDvOAw8hKZyil/Zwdu
	cHJST8T9ZGtiPMzc0XBQXZ18XZol2B5lUBeegmNMMYN2YUe3mbz2NtiLT1QL3iSfhKBWvevQ+fIqo
	eMkdcHwj+weKHq7UzPOufFxqGN3VM0Q5eo2+AnALC5zbWLT86LIQ0mQg7IZ2TdF9qGHjSNleCD5iI
	+py/L7rGrMbidPQ5nzOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw60L-0002Nq-4p; Fri, 09 Aug 2019 14:36:29 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw609-0002NT-TM
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:36:19 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190809143615euoutp019fedfb19894ace7f2256edad44f0de1b~5R_CgH9v33227432274euoutp01z
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  9 Aug 2019 14:36:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190809143615euoutp019fedfb19894ace7f2256edad44f0de1b~5R_CgH9v33227432274euoutp01z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565361375;
 bh=eDflF5RCD/YInlHvL2icWnHt8F3jpysJjiPXi+H+VKs=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=AJ4bJsKfq+cQjbUoXDxLYnMKvsxdvlhSIPr27JuByO+X2MmkJ//WIdwvrkhm3EL5d
 yQtnffUb/I2wx29XysM6YPzI0Ctle8sV8fLVla+aXYYeODVmXJYaL/4F5uAGkKFkO4
 ITqfX6DQuzQt5zIle6ST8WKl3OX7HvHrQ+zH6iLY=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190809143614eucas1p1ba207acb51332fde256c48166f216859~5R_B75nLN0762007620eucas1p1g;
 Fri,  9 Aug 2019 14:36:14 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id DD.2A.04309.ED48D4D5; Fri,  9
 Aug 2019 15:36:14 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190809143614eucas1p136e66c4c1a7a6ec3315a701a7919be37~5R_BGXnlT0369903699eucas1p1f;
 Fri,  9 Aug 2019 14:36:14 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190809143613eusmtrp2e400ad28dd326312b2fc92a9702cae3e~5R_A4SEyX0063000630eusmtrp23;
 Fri,  9 Aug 2019 14:36:13 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-4a-5d4d84de3cb2
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 90.90.04166.DD48D4D5; Fri,  9
 Aug 2019 15:36:13 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190809143613eusmtip1dc788cff9033ec99180a64f220b6c914~5R_AbcTKG0489304893eusmtip1U;
 Fri,  9 Aug 2019 14:36:13 +0000 (GMT)
Subject: Re: [PATCH 02/22] ARM: omap1: make omapfb standalone compilable
To: Arnd Bergmann <arnd@arndb.de>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <487da98d-a862-0207-289a-bca8ff18e51a@samsung.com>
Date: Fri, 9 Aug 2019 16:36:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3grFEGr33s327yNMabK5=1kCJc3k7y55dhzQx9sTvkyQ@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDKsWRmVeSWpSXmKPExsWy7djPc7r3WnxjDXZ/17BY88LB4u+kY+wW
 V76+Z7NoXryezWLKn+VMFpseX2O1uLxrDpvF7CX9LBbr599is9h/xcuBy+P3r0mMHt++TmLx
 OPx1IYvHnWt72Dz2z13D7nG/+ziTx+Yl9R7Hb2xn8vi8SS6AM4rLJiU1J7MstUjfLoEr4+me
 f6wFJ/kq/h5/x9zA+Jy7i5GTQ0LARGLh1RusILaQwApGiZftRl2MXED2F0aJ2SuOs0M4nxkl
 5p18zQTTcW3THKjEckaJ26+vskA4bxklbm7+xQ5SJSzgIdG+5zSYLSKgKDH1xTNmkCJmgZnM
 Ekc37gRbyCZgJTGxfRUjiM0rYCcxrW8XmM0ioCJx+fAesBpRgQiJ+8c2sELUCEqcnPmEBcTm
 FAiU2Ph+NlicWUBc4taT+UwQtrzE9rdzwJZJCLxkl3h8Zz4LxN0uEnPurYP6QVji1fEt7BC2
 jMT/nSDNIA3rGCX+dryA6t7OKLF88j82iCpricPHLwKt4wBaoSmxfpc+RNhR4t2f9YwgYQkB
 PokbbwUhjuCTmLRtOjNEmFeio00IolpNYsOyDWwwa7t2rmSewKg0C8lrs5C8MwvJO7MQ9i5g
 ZFnFKJ5aWpybnlpslJdarlecmFtcmpeul5yfu4kRmMZO/zv+ZQfjrj9JhxgFOBiVeHgzmn1j
 hVgTy4orcw8xSnAwK4nwXuEACvGmJFZWpRblxxeV5qQWH2KU5mBREuetZngQLSSQnliSmp2a
 WpBaBJNl4uCUamB0+hJqud+cNSczb60x5/u0r38u7654+SdH9bzsQmYd52SDVJezWzhWWYpd
 nsCXJnqrfJ1VvWe7oHJEv97NxGNBHx9MC3z4LXzZzL2F5k0+J4sVgwoOvoqq/zRpwRw5lqQl
 ezfe4MqeNbco6PjE/2+W1pTfWn8keHPou9c/lD9O/Cmz6NKVx95zlViKMxINtZiLihMBtKx3
 MV8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDIsWRmVeSWpSXmKPExsVy+t/xu7p3W3xjDX5+17NY88LB4u+kY+wW
 V76+Z7NoXryezWLKn+VMFpseX2O1uLxrDpvF7CX9LBbr599is9h/xcuBy+P3r0mMHt++TmLx
 OPx1IYvHnWt72Dz2z13D7nG/+ziTx+Yl9R7Hb2xn8vi8SS6AM0rPpii/tCRVISO/uMRWKdrQ
 wkjP0NJCz8jEUs/Q2DzWyshUSd/OJiU1J7MstUjfLkEv4+mef6wFJ/kq/h5/x9zA+Jy7i5GT
 Q0LAROLapjnsXYxcHEICSxklJmzqZeli5ABKyEgcX18GUSMs8edaFxuILSTwmlFi7jEHEFtY
 wEOifc9pdhBbREBRYuqLZ8wgc5gF5jJLLHt0mR2iYT2TRO+dehCbTcBKYmL7KkYQm1fATmJa
 3y4wm0VAReLy4T2sILaoQITEmfcrWCBqBCVOznwCZnMKBEpsfD8brIZZQF3iz7xLzBC2uMSt
 J/OZIGx5ie1v5zBPYBSahaR9FpKWWUhaZiFpWcDIsopRJLW0ODc9t9hQrzgxt7g0L10vOT93
 EyMwZrcd+7l5B+OljcGHGAU4GJV4eDOafWOFWBPLiitzDzFKcDArifBe4QAK8aYkVlalFuXH
 F5XmpBYfYjQFem4is5Rocj4wneSVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgt
 gulj4uCUamCU2Ss99Yz7tr+8L3cvqngpJL0/Kr770ucAFZbHW88kB/iKsRmfnLgoc+o8b6GQ
 u2eL757gcry5uGVJDGM616dfex7xnBPuF2dsX3mP5bqd91nrSZeclNYsLN3wn2fvtHKWnLN3
 nCXP2P512/V199cW822fjE1/uhpwHnm+pixbNPRjcc9piQmtSizFGYmGWsxFxYkAEN++Je8C
 AAA=
X-CMS-MailID: 20190809143614eucas1p136e66c4c1a7a6ec3315a701a7919be37
X-Msg-Generator: CA
X-RootMTR: 20190808212453epcas2p44ff418662ee1acf428c6842ee4488f9f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190808212453epcas2p44ff418662ee1acf428c6842ee4488f9f
References: <20190808212234.2213262-1-arnd@arndb.de>
 <CGME20190808212453epcas2p44ff418662ee1acf428c6842ee4488f9f@epcas2p4.samsung.com>
 <20190808212234.2213262-3-arnd@arndb.de>
 <55c9608d-68c4-17f6-2682-7668d5d7720a@samsung.com>
 <CAK8P3a3grFEGr33s327yNMabK5=1kCJc3k7y55dhzQx9sTvkyQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_073618_250783_CB0B7EA9 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 8/9/19 1:43 PM, Arnd Bergmann wrote:
> On Fri, Aug 9, 2019 at 1:32 PM Bartlomiej Zolnierkiewicz
> <b.zolnierkie@samsung.com> wrote:
>> On 8/8/19 11:22 PM, Arnd Bergmann wrote:
>>> The omapfb driver is split into platform specific code for omap1, and
>>> driver code that is also specific to omap1.
>>>
>>> Moving both parts into the driver directory simplifies the structure
>>> and avoids the dependency on certain omap machine header files.
>>>
>>> The interrupt numbers in particular however must not be referenced
>>> directly from the driver to allow building in a multiplatform
>>> configuration, so these have to be passed through resources, is
>>> done for all other omap drivers.
>>>
>>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>>
>> For fbdev part:
>>
>> Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> 
> Thanks for taking a look.
> 
>> [ It seems that adding of static inline for omap_set_dma_priority()
>>   when ARCH_OMAP=n should be in patch #9 but this is a minor issue. ]
> 
> That would have been ok as well, but having the addition here was
> intentional and seems more logical to me as this is where the headers
> get moved around.
I see that this is an optimization for making the patch series more
compact but I think that this addition logically belongs to patch #9
(which adds support for COMPILE_TEST) where the new code is required.

Moreover patch description for patch #2 lacks any comment about this
addition being a preparation for changes in patch #9 so I was quite
puzzled about its purpose when seeing it first.

Therefore please have mercy on the poor/stupid reviewer and don't do
such optimizations intentionally (or at least describe them properly
somewhere).. ;-)

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
