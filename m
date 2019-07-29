Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FBB78C0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 14:54:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WhTtAMY0UmdmKMrAHZl97rWEfV5b0yECeCSGHZjDgoY=; b=ZkBLyc6MEAf6Cgox6naseDb7a
	rd4ilaoEBw8bQ7TromfCjNxEEK38SJMg1UBvMlvCBcq3Ufhg4ao9GQP7LFcb3LuySSQtS+uKCCS85
	t3LTetiKhRZFkqv5QOBqAXqUN4PtS37LJ4RAsdsf/Hk7IpBJJbDitc9fhmcKFunLONvvAyYKXqHWq
	BTiQuM26Ne0fJaKFJ4UxI5qB7qjin4mup20k/NJnlBdKqyzwWrTdP6oz8C+yyg1i9c2KjT+NBSGAt
	Ii004nf45T1Y+ZR5aKQJGCWXK+SrCMK6fhiDqitbpD/5VzKmyzE3MtfOHZNl9H0USjliw2ff/vTk8
	6dZh5bqmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs59x-0003jQ-PR; Mon, 29 Jul 2019 12:53:49 +0000
Received: from icp-osb-irony-out3.external.iinet.net.au ([203.59.1.153])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs59q-0003j0-7i
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 12:53:44 +0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AWAAAF6z5d/zXSMGcNWRkBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEHAQEBAQEBgWeDBIEuhB6RZQEBAQEBBoEJCCWDZIV+kRoJAQEBAQE?=
 =?us-ascii?q?BAQEBKwwBAYRAAoMPOBMBAwEBAQQBAQEBBQGFUjmFVgEBAQECASMVQQULCw0?=
 =?us-ascii?q?LAgImAgJXBg0GAgEBgx4BgXYFHqsccYEyGoQZARRAQIMxgUiBDCiBY4oUeIE?=
 =?us-ascii?q?HgTgMgl8+gmEEgTiDMoJYBIxFggSGL5V/CYIchluNMwYbgxuKMgOKPpQpXJI?=
 =?us-ascii?q?bgXkzGggoCDuCOAEBMgmGKoRZhgxgjBmCUgEB?=
X-IPAS-Result: =?us-ascii?q?A2AWAAAF6z5d/zXSMGcNWRkBAQEBAQEBAQEBAQEHAQEBA?=
 =?us-ascii?q?QEBgWeDBIEuhB6RZQEBAQEBBoEJCCWDZIV+kRoJAQEBAQEBAQEBKwwBAYRAA?=
 =?us-ascii?q?oMPOBMBAwEBAQQBAQEBBQGFUjmFVgEBAQECASMVQQULCw0LAgImAgJXBg0GA?=
 =?us-ascii?q?gEBgx4BgXYFHqsccYEyGoQZARRAQIMxgUiBDCiBY4oUeIEHgTgMgl8+gmEEg?=
 =?us-ascii?q?TiDMoJYBIxFggSGL5V/CYIchluNMwYbgxuKMgOKPpQpXJIbgXkzGggoCDuCO?=
 =?us-ascii?q?AEBMgmGKoRZhgxgjBmCUgEB?=
X-IronPort-AV: E=Sophos;i="5.64,322,1559491200"; d="scan'208";a="200466061"
Received: from unknown (HELO [10.44.0.193]) ([103.48.210.53])
 by icp-osb-irony-out3.iinet.net.au with ESMTP; 29 Jul 2019 20:53:32 +0800
Subject: Re: [PATCH 1/6] ARM: ks8695: watchdog: stop using mach/*.h
To: Arnd Bergmann <arnd@arndb.de>
References: <20190415202501.941196-1-arnd@arndb.de>
 <2424c672-e3fb-4c32-4c24-fafc59d03a96@uclinux.org>
 <CACRpkdaJ+2bub_nDp9=5b4kyKjWDnOGKscWg3KsEVixDpk8rzA@mail.gmail.com>
 <20190503170613.GA1783@roeck-us.net>
 <d8d81aca-722d-8b5f-cd5f-30cc3e4e407b@kernel.org>
 <CAK8P3a0StV==jMq1L9k91qEsvRD1Cw2FB1V25wr1AQqzmjsTVw@mail.gmail.com>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <2bc41895-d4f9-896c-0726-0b2862fcbf25@kernel.org>
Date: Mon, 29 Jul 2019 22:53:30 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0StV==jMq1L9k91qEsvRD1Cw2FB1V25wr1AQqzmjsTVw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_055343_039007_E7BA7B45 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [203.59.1.153 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 arm-soc <arm@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On 23/7/19 12:44 am, Arnd Bergmann wrote:
> On Sat, May 4, 2019 at 4:27 PM Greg Ungerer <gerg@kernel.org> wrote:
>> On 4/5/19 3:06 am, Guenter Roeck wrote:
>>> On Fri, May 03, 2019 at 08:16:05AM +0100, Linus Walleij wrote:
>>>> On Fri, May 3, 2019 at 8:02 AM Greg Ungerer <gerg@uclinux.org> wrote:
>>>>> Ultimately though I am left wondering if the ks8695 support in the
>>>>> kernel is useful to anyone the way it is at the moment. With a minimal
>>>>> kernel configuration I can boot up to a shell - but the system is
>>>>> really unreliable if you try to interactively use it. I don't think
>>>>> it is the hardware - it seems to run reliably with the old code
>>>>> it has running from flash on it. I am only testing the new kernel,
>>>>> running with the existing user space root filesystem on it (which
>>>>> dates from 2004 :-)
>>>>
>>>> Personally I think it is a bad sign that this subarch and boards do
>>>> not have active OpenWrt support, they are routers after all (right?)
>>>> and any active use of networking equipment should use a recent
>>>> userspace as well, given all the security bugs that popped up over
>>>> the years.
> 
> Looking around on the internet, I found that Micrel at some point
> had their own openwrt fork for ks8695, but I can't find a copy
> any more, as the micrel.com domain is no longer used after the
> acquisition by Microchip.

I build it with uClinux-dist, https://sourceforge.net/projects/uclinux/files/uClinux%20Stable/.
And again I can build for it, it just doesn't currently work
in any sort of reasonable way. So I get the impression it
hasn't worked for a while and nobody has noticed.


> https://wikidevi.com/wiki/Micrel has a list of devices based on
> ks8695, and it seems that most of these are rather memory
> limited, which is a problem for recent openwrt builds.
> 
> Only two of the 17 listed devices have the absolute minimum of 4MB
> flash and 32MB RAM for openwrt, two more have 8/32 and one
> or two have 4/64, but all these configurations are too limited for the
> web U/I now.


>>>> With IXP4xx, Gemini and EP93xx we have found active users and
>>>> companies selling the chips and reference designs and even
>>>> recommending it for new products (!) at times.  If this is not the
>>>> case with KS8695 and no hobbyists are willing to submit it
>>>> to OpenWrt and modernize it to use device tree I think it should be
>>>> deleted from the kernel.
>>>>
>>>
>>> That may be the best approach if indeed no one is using it,
>>> much less maintaining it.
>>
>> Well, I for one don't really use it any more. So I don't have a lot
>> of motivation to maintain it any longer.
> 
> I came across my patches while rebasing my backlog to 5.3-rc1.
> 
> Should I save the (very small) trouble of sending them out again
> and just remove the platform then?

At this time I have no issue with removing it.

Regards
Greg


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
