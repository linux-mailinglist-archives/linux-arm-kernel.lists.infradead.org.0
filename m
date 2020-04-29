Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5481BD462
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 08:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnc5U3CvXlfFzsyAxsu3YIAtaNw+hEeKKwqBN80J++0=; b=GxaLJktys4bAE6
	bdjqQjjRAkqexj3m0derNKwXyV/YK8+eHj26qTotQrVBFGRJ0HOpwyAzeoQUWa1qaXh/YV9HIYfvH
	CO4xqEjiZzq/YH8jkNSLlXjJ1RXsHe3a3CLqJt+o9fMI5pm4d8RJBKihXfXHNVLugvzardZQjOWid
	cwPXx775GT5t+9R60iNbXE03CmyY5RYtL5vZkOxwoIHlC5PesH64N1ufAkWxoSuTHVdaVsAzq2WSG
	2qWN8mFBRshEn4LrjeVwKQuCO+AZTZpPR4RK8KybiCR+wCzTtfrUdJjWtcZ7p81g40jzsWMYEc6Zk
	5X1Ohgds+XGwM74lkq8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTfrL-0005Fs-6M; Wed, 29 Apr 2020 06:06:15 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTfrC-0005F6-Rg
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 06:06:08 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200429060601euoutp0173899f81b73568490fe7335107d3ddd3~KNT6HgLc20455204552euoutp014
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 06:06:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200429060601euoutp0173899f81b73568490fe7335107d3ddd3~KNT6HgLc20455204552euoutp014
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588140361;
 bh=Ls5ZtxTI+tQEaYr1VyHfh2pyhhhKRj+ay81rHIQleaM=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=FGXZ9SRhVSBVQWnn9Z1NiPf0/37Fx9fOG5uk5WkD/GWmr6voAKK2LRrDk3eUXYRop
 WTgVg+CvoylR7slNn0DtZClHtZLACM/4G9AU7sVKk8x/3XMXBTYa3thFKYLS98qQ2y
 4PchTFjKOfF+SQS8I8+FuLlC7+bdQZHa2zuHgxiM=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200429060601eucas1p156bc9b39f3c067453418ddc0eed7f161~KNT58vlbx3063730637eucas1p18;
 Wed, 29 Apr 2020 06:06:01 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id A5.70.60698.84919AE5; Wed, 29
 Apr 2020 07:06:00 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200429060600eucas1p1be09888a83878d2a76575edb1b97371a~KNT5jGZmS3064930649eucas1p16;
 Wed, 29 Apr 2020 06:06:00 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200429060600eusmtrp2c61deef967cdcf7a1282a7f0e9f41834~KNT5iaGop0618806188eusmtrp2C;
 Wed, 29 Apr 2020 06:06:00 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-db-5ea919480bf8
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 98.6E.08375.84919AE5; Wed, 29
 Apr 2020 07:06:00 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200429060600eusmtip28ea42ac285658f89d65c9753cb870df5~KNT5DFR3J2616726167eusmtip2A;
 Wed, 29 Apr 2020 06:06:00 +0000 (GMT)
Subject: Re: [PATCH] amba: Retry adding deferred devices at late_initcall
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <733e20b1-9592-6941-766b-9f321ad2ace5@samsung.com>
Date: Wed, 29 Apr 2020 08:06:01 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdZSPb8FxTSt8F3F1VcsTM4qG=6gxz1pBPjTZ0Dk2iVfSQ@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTcRTH++3e3d2Js+s0PJoQLJKKdJlFlxLpRd6ooEAKLa2VF5Xc1F3n
 oxAty8ewTCkf00rM0s1HNWWamY8VmVliPka+CHP/mGhgSZiWOa+W/32+53zPCw6JSduEbmSE
 KpZVqxSRMsION72Z7fJkXPUh2wuv+9L3inIR/X7Ok74zXy6gjWMWIW2++xLRJl05QS80NYho
 rfk3QZe/a8D3iZmq+1WI6bV8xJicD55MiVHDGA2ZBDNsaSKY2rJkprbzygkyyM43lI2MiGPV
 cr/zduHmAa0g2iRNKMx4JEhBOWu1SEwCtRMG81pwLbIjpVQFgml9qYgXPxDM94wTvPiO4FlW
 hXCl5Ke+EfGJcgTFc40YL74hSH1xA9lcTtQRmJgqE9jYmToKQ8OzSyaMqhPAcPY4ZksQlDdo
 J7WEjSWUH/SmP1xinNoEMwPWxUYkuY4KhnxLAG9xhI5CK25jMXUS8tJKl9pg1AaonyxeZhcY
 tD4Q2GYBZRFB0Xzl8tqHoLbYQPDsBF/b60Q8u8PC85WCVASjXdUiXmQh6L1WgHjXXhju+kXY
 NsKoLfCkUc6H90NZxuhSGCgH+DTpyC/hALmmfIwPSyAjTcq7PUDXXvNvbFt3D3YbyXSrTtOt
 Oke36hzd/7klCDcgF1bDKcNYzkfFxntxCiWnUYV5XYxSGtHiY3X+aZ9pQM3zF8yIIpHMXvLU
 viJEKlTEcYlKMwISkzlLvoQ/DpFKQhWJl1l11Dm1JpLlzGg9ictcJD6l48FSKkwRy15i2WhW
 vZIVkGK3FFQpLAjcFfqj0bq5PjtIOVQ4Ric0xRz83HOr/1hSl/VUh7HWa0+3fdDIYWtf/w7/
 gOaiJI+sGu+0qTOhrz0W3L1bqgOLcGtrS+tUUIJe6bdNltGaUj19k6tXH1gYCRmV9+mvTqjE
 Gw1v18S4iU/L+6ZfuZ6Vp+dIUzKPFyfH+2t2y3AuXOG9FVNzir9UcCD5VAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMIsWRmVeSWpSXmKPExsVy+t/xe7oekivjDI6fUbOYO3sSo8WZ37oW
 U/4sZ7LY9Pgaq8WhqXsZLbbNWs5m8X/PDnaLrkN/2SyWn9rB4sDpsWbeGkaPy9cuMntMPKvr
 sWBTqcemVZ1sHneu7WHz2Lyk3mPz6eoAjig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1D
 Y/NYKyNTJX07m5TUnMyy1CJ9uwS9jEM3u5gKtglVzOxYytTAOJG/i5GTQ0LAROL7yl2MXYxc
 HEICSxklvu9ZyA6RkJE4Oa2BFcIWlvhzrYsNougto8S+7w8YQRLCAp4Sr98tYQKxRQS8JW7f
 +ckMUsQssI1JYtOPg0wQHecZJa5c3AM2lk3AUKLrLcgoTg5eATuJy+2LwWwWAVWJrzefAE3l
 4BAViJVouagJUSIocXLmExYQm1MgUGJa2yJmEJtZwExi3uaHULa8xPa3c6BscYlbT+YzTWAU
 moWkfRaSlllIWmYhaVnAyLKKUSS1tDg3PbfYUK84Mbe4NC9dLzk/dxMjMEK3Hfu5eQfjpY3B
 hxgFOBiVeHg38KyIE2JNLCuuzD3EKMHBrCTC+yhjWZwQb0piZVVqUX58UWlOavEhRlOg3yYy
 S4km5wOTR15JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBsbQ9stB
 U/uu3loR7HDr44J8w7dr6w8tPWPoZ36WX2rOjyJGZ52dNanyfV8kNkiJfXW9snTHDeXq1He1
 M/cue6Q+8Y1T79p0BZvHzVsiXBs/TTNvXDnt1MFKGc6Y0I9rzm7etW/ZLde0y3kbxWy5cxZY
 sDLETZ2rx6ge86Xwy+cFyYmxggs2x1spsRRnJBpqMRcVJwIAsLOJ4OYCAAA=
X-CMS-MailID: 20200429060600eucas1p1be09888a83878d2a76575edb1b97371a
X-Msg-Generator: CA
X-RootMTR: 20200428203953eucas1p20561ca638be023be0fae9b613d4a1d4f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428203953eucas1p20561ca638be023be0fae9b613d4a1d4f
References: <20200427212514.11219-1-robh@kernel.org>
 <CGME20200428203953eucas1p20561ca638be023be0fae9b613d4a1d4f@eucas1p2.samsung.com>
 <CACRpkdZSPb8FxTSt8F3F1VcsTM4qG=6gxz1pBPjTZ0Dk2iVfSQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_230607_201845_61DABCDE 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Saravana Kannan <saravanak@google.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Russell King <linux@armlinux.org.uk>, John Stultz <john.stultz@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On 28.04.2020 22:39, Linus Walleij wrote:
> On Mon, Apr 27, 2020 at 11:25 PM Rob Herring <robh@kernel.org> wrote:
>> If amba bus devices defer when adding, the amba bus code simply retries
>> adding the devices every 5 seconds. This doesn't work well as it
>> completely unsynchronized with starting the init process which can
>> happen in less than 5 secs. Add a retry during late_initcall. If the
>> amba devices are added, then deferred probe takes over. If the
>> dependencies have not probed at this point, then there's no improvement
>> over previous behavior. To completely solve this, we'd need to retry
>> after every successful probe as deferred probe does.
>>
>> The list_empty() check now happens outside the mutex, but the mutex
>> wasn't necessary in the first place.
>>
>> This needed to use deferred probe instead of fragile initcall ordering
>> on 32-bit VExpress systems where the apb_pclk has a number of probe
>> dependencies (vexpress-sysregs, vexpress-config).
>>
>> Cc: John Stultz <john.stultz@linaro.org>
>> Cc: Saravana Kannan <saravanak@google.com>
>> Cc: Linus Walleij <linus.walleij@linaro.org>
>> Cc: Sudeep Holla <sudeep.holla@arm.com>
>> Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
>> Cc: Russell King <linux@armlinux.org.uk>
>> Signed-off-by: Rob Herring <robh@kernel.org>
> Makes sense to me, and the same approach is found
> in the generic code in drivers/base/dd.c so
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> The timer-based re-probe was added by Marek Szyprowski
> in commit a41980f2a3eb33ed7a2636e83498b47e95ceb05b
> do deal with power domains. I guess it mimics dd.c
> deferred probe at this point?
>
> There are a bit of other differences that have piled up,
> should we take a quick look at dd.c so there is not something
> else we're missing? I see some PM code for example.

Well, late initcall based approach is what earlier version of my patch did:

https://lkml.org/lkml/2016/4/12/414

but then it has been requested to solve the issue 'properly':

https://lkml.org/lkml/2016/4/12/455

https://lkml.org/lkml/2016/4/14/875

For me it is fine to get back to late initcall based solution, though.

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
