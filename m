Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7749F67B4C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 18:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QCO/VlBH0T+145cxFxF7OfeCwkqI3MhvEZ5YOkxxJ4w=; b=Fe8z9WNwhSZ9TyJ743UTe5wiH
	5TXxbNoBSeeDV+yJz2lnVp55fLApfx7MAHgP+oI1hAC7/IlR04mf5TjZkd/J1K5ekOmuZaph31WEa
	ESompsgN5PARIZOHogg578x0bye4vWYK3ahC9chNlOAFeWF9RUI9Ui5wXm1OjCuctTkuo1Lh3KxlL
	b5nXMBmskUcg1861T3YhFymUNSjl4dHmLcPksZA506xXCoCO0K6AA/lRk1ZZHmnias4XDcljFTnRg
	o+7OPLUu4FbPPMYoLzDICXO+mbm08Ft4S3B+7CuzUtGDbt5idoEOHPYMcmDOX41gHS7nW9crJZLq6
	pkTscccIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmL7g-0006Jx-Un; Sat, 13 Jul 2019 16:43:44 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmL7Q-0006Iu-EY; Sat, 13 Jul 2019 16:43:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563036189;
 bh=UwOTxlpedAtIJteQ+EbYcD45ermXVB3b8k/rX3ec3R0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=LlCGds8tLFHkxQY4A8DYQ+UAbiJQU028pr6FQHzOsrURWh+QiN2Vv/OZvVfaqCol9
 1VHWdYfibOHTQNvIEiNHVopZJLq4qxGM4dCAiDDsxdT21Nfpkxmmm93UsEFtrbH/qC
 x6CfyMVaac32WKrRbDUyOB/9d8sbNsvqo4rDdK4s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.43.148] ([188.29.165.74]) by mail.gmx.com (mrgmx003
 [212.227.17.184]) with ESMTPSA (Nemesis) id 0LwIuc-1iXL3y2psk-0185OJ; Sat, 13
 Jul 2019 18:43:08 +0200
Subject: Re: [REGRESSION] Xorg segfaults on Asus Chromebook CP101 with Linux
 v5.2 (was Asus C101P Chromeboot fails to boot with Linux 5.2)
To: Heiko Stuebner <heiko@sntech.de>
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
 <f47f8759-8113-812a-b17a-4be09665369e@gmx.co.uk> <2648434.ut0pN6mfR1@phil>
From: Alex Dewar <alex.dewar@gmx.co.uk>
Message-ID: <2d52b787-187c-5638-660c-33d51a07770c@gmx.co.uk>
Date: Sat, 13 Jul 2019 17:43:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <2648434.ut0pN6mfR1@phil>
Content-Language: en-US
X-Provags-ID: V03:K1:JRa8kHbPxKGkpPygG10tX/aBQSMIisJJ9fXnJjgZuyZ1W7GC+Mp
 UWk2xOEa+tqjn8j3Fydrl7wjTyNAo4dzQaHGBneHQwzWL8L0x29CRmeKCq0qpkFe7sy3UMj
 VIrUk1ExlWOkyAkJxv3p7SybwDr98MbR7e2wtwG3O0iRaUKx9NI2fHU70L04yvE8Q9q3XyJ
 sFEmN+nz9ndgdoGzIU24A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:w4DUqOcE0LY=:WP0Ayt3RvUP59J/j6MUqTK
 7pAH60CiZthm4S9UOwZO7na+vFNfY80H0SkBkOq/XAmsJawrqisvGG7o2u/laPEZyNQ80UQka
 FU3JXw3Pkf+V+TVlOCTs+YK1jUMOG9O4gHwtTKMSChU/XDyWxje2DI597MkODMeojaWY3OF4S
 vXLGo0JOViaf7RK3V13r7x11ac71ZRZDF7eEQknTQnG/rCkDki/Og/69f4T6RzDWbRJLf0B3V
 B29gfO1H2T5z5e6iB+E2MZgEEAZXoWyUU1uzCqOCnK3dgCxUX77eV01dF55AJz2czL575PDLr
 hOxNDEh9OLi7tctbmo7mF2AWX+oRWFcVlomcAlDnNFp7i+Sa6CUmREEOfodipidbiE3GCbZB2
 hVw2Tx3scBApcn283GxyMBJvnzc3HfeAfl2sepC5w4lfXbS0nsdNtZgemPzFGiNlPLMtFuYUN
 n/nJqiiD4DDfnpGKkpu1sTFcTIJDnTd0/XqE2zBoUsn0yMZlYz5ZUgJ48kKBEqULZGsVy1Izh
 rDMCp74boOgMAAbl31ujlH9m55IR1DLbnQi9r/BRu1a/F/5BZhDvI49EpGKWlQIVtykpBAczX
 Q8oBrsBIBR/0y13IVHu/LyI7OjtgivJSrgbv5rlyTUOgbVPJcuHgDETQ2kEyW3ncvhQw/UatF
 BeH50lKO8E5CqNAjvv5v4P7o6hk1YElaDCM+/sS7vhIivxr5KCe8i0sAEHm9GQYQx9XBvplMW
 qll72M8rekGmMla2b3pPnpDjlx4pEQ8KvONfjx7l9lnIFI8CRR6413j7CPpvDzQY+LrSBke1y
 aqVySXnaQkgGzKsF1qgRyF8q71GsYroJe393asclnNW3IS5AuPLeGX5qxnfudHak+1Yevhwhs
 1QfqvCVUWh7ko6kW3RUGiGTpVCO+6k/n7nN6xeXcDSGfEu4KHE99UMMZ/+mnGFn1bnxViPU/F
 1OlK1xeq4RKkRby0B4Efnxwo1owMXBfmqVaBfBGwE+ZXpimyeqUcqDJ3QpzU0V/BWDWgQCgIs
 3GuD0tGmVpb9WwQxOkdh97NEenhL1ydmNVrLIg4JYKmurB2rXgT7KWj6tPwb+hCjy5gfYS5qd
 JzejdaCIP1RedpkyvkYYSOiXsfBBom7EYgO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_094328_823336_D1CA83D4 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/07/2019 16:17, Heiko Stuebner wrote:
> Hi,
>
> Am Samstag, 13. Juli 2019, 13:38:45 CEST schrieb Alex Dewar:
>> I initially thought my machine was failing to boot entirely, but it
>> turns out it was just failing to start the display manager. I managed to
>> escape to a tty by hammering the keyboard a bit.
>>
>> I suspect the culprit is the rockchip_vpu driver (in staging/media),
>> which has been renamed to hantro in this merge window. When I run startx
>> from a terminal, X fails to start and Xorg segfaults (log here:
>> http://users.sussex.ac.uk/~ad374/xorg.log). X seems to work without any
>> issues in v5.1.
>
> 5.2 also has support for Panfrost (Mali-Midgard GPUs) but I'm not
> sure if it already can support X11 yet and your X11 log mentions
> libglamoregl in the segfault stack trace.
>
> Apart from it bisect that Greg suggested you could also just try
> blacklisting either panfrost or vpu kernel modules
> /etc/udev/somewhere . This would prevent them from loading
>
> Hope that helps
> Heiko
>
>

Hi Heiko,

Thanks for this. I blacklisted the panfrost driver and X magically
started working again.

I'll try to do a bisect later to find the offending commit though.

In related news, it also seems that the sound and wifi drivers aren't
working either in 5.2 (although I need to do a bit more testing to
confirm the latter).

Best,
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
