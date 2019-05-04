Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9A813A93
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 16:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HEleYDrQD7IaRB2svkc0iwJxKUuM03Tv3gyeqC3Eg0U=; b=aYLNKrsrHfwCye9UfasheiFvT
	97sMd8RJy3agUu2DGuk0eqsuuErShVgvWhQaBA+rUJpmIpnt/SkJ9yTvKPUKOGoxn641LYRqNVGyn
	fIQZRy6BhCYfjQFieiYZVSnFtOaqgWm7Gb0Q2X0Wi/fYYG44pkj+irkfW0TK9H4FdmMj6V9FIef/X
	y634/fCg8/vSpYt+fBC5NPjyC9GT7NlqTqEHnB5b6GexHM/QTNbhedA7zY+uqSK9DbqpX+wkHKnBc
	DkT+7UUi2kfFPR5nIiSqMKOTTblgGKEFvOBP9Xr9XXJQeKgRvk9Qx/7d7jXCUh/qV/ZuDg7OfQodN
	2Hj8Xq6FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMvdM-0005UL-LW; Sat, 04 May 2019 14:27:24 +0000
Received: from icp-osb-irony-out7.external.iinet.net.au ([203.59.1.107])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMvdC-0005LB-E4
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 14:27:17 +0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AJAACjoM1c/7akqnwNWBkBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEHAQEBAQEBgVQBAQEBAQELAYQlhBCTYAEBAQEBAQaBCC2DXoVukQG?=
 =?us-ascii?q?EfQKCKTcGDgEDAQEBBAEBAQEChl8BAQEBAgEjFUEQCw4KAgImAgJXBgEMBgI?=
 =?us-ascii?q?BAYMegXcFqjtxgS+FR4MegUWBCycBi2R4gQeBOIJrPodOglgEizeBboVolCU?=
 =?us-ascii?q?JgguSPwYblUiMG5Z2gXgzGggoCIMnkGNgkT8BAQ?=
X-IPAS-Result: =?us-ascii?q?A2AJAACjoM1c/7akqnwNWBkBAQEBAQEBAQEBAQEHAQEBA?=
 =?us-ascii?q?QEBgVQBAQEBAQELAYQlhBCTYAEBAQEBAQaBCC2DXoVukQGEfQKCKTcGDgEDA?=
 =?us-ascii?q?QEBBAEBAQEChl8BAQEBAgEjFUEQCw4KAgImAgJXBgEMBgIBAYMegXcFqjtxg?=
 =?us-ascii?q?S+FR4MegUWBCycBi2R4gQeBOIJrPodOglgEizeBboVolCUJgguSPwYblUiMG?=
 =?us-ascii?q?5Z2gXgzGggoCIMnkGNgkT8BAQ?=
X-IronPort-AV: E=Sophos;i="5.60,430,1549900800"; d="scan'208";a="173381743"
Received: from 124-170-164-182.dyn.iinet.net.au (HELO [192.168.0.106])
 ([124.170.164.182])
 by icp-osb-irony-out7.iinet.net.au with ESMTP; 04 May 2019 22:27:06 +0800
Subject: Re: [PATCH 1/6] ARM: ks8695: watchdog: stop using mach/*.h
To: Guenter Roeck <linux@roeck-us.net>,
 Linus Walleij <linus.walleij@linaro.org>
References: <20190415202501.941196-1-arnd@arndb.de>
 <2424c672-e3fb-4c32-4c24-fafc59d03a96@uclinux.org>
 <CACRpkdaJ+2bub_nDp9=5b4kyKjWDnOGKscWg3KsEVixDpk8rzA@mail.gmail.com>
 <20190503170613.GA1783@roeck-us.net>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <d8d81aca-722d-8b5f-cd5f-30cc3e4e407b@kernel.org>
Date: Sun, 5 May 2019 00:26:53 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503170613.GA1783@roeck-us.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_072714_849087_DE623311 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [203.59.1.107 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 arm-soc <arm@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 4/5/19 3:06 am, Guenter Roeck wrote:
> On Fri, May 03, 2019 at 08:16:05AM +0100, Linus Walleij wrote:
>> On Fri, May 3, 2019 at 8:02 AM Greg Ungerer <gerg@uclinux.org> wrote:
>>
>>> I dug out some old ks8695 based hardware to try this out.
>>> I had a lot of trouble getting anything modern working on it.
>>> In the end I still don't have a reliable test bed to test this properly.
>>
>> What is usually used by old ARMv4 systems is OpenWrt or
>> OpenEmbedded. Those is the only build systems that reliably
>> produce a userspace for these things now, and it is also the
>> appropriate size for this kind of systems.

No, I can produce a user space environment for the KS8695 as well
using the uClinux-dist build system. But that worked even less well
than the old root filesystem that I had (which was also built with
an older version of that build system).

But there is no reason that old root filesystem should not work.
And that is the thing that concerns me a bit here. I could mount
it ok (it was a CRAMFS), it would run up the shell to a shell prompt,
but when I try to run any commands from there they would oops.
I didn't debug any further than that.


>>> Ultimately though I am left wondering if the ks8695 support in the
>>> kernel is useful to anyone the way it is at the moment. With a minimal
>>> kernel configuration I can boot up to a shell - but the system is
>>> really unreliable if you try to interactively use it. I don't think
>>> it is the hardware - it seems to run reliably with the old code
>>> it has running from flash on it. I am only testing the new kernel,
>>> running with the existing user space root filesystem on it (which
>>> dates from 2004 :-)
>>
>> Personally I think it is a bad sign that this subarch and boards do
>> not have active OpenWrt support, they are routers after all (right?)
>> and any active use of networking equipment should use a recent
>> userspace as well, given all the security bugs that popped up over
>> the years.
>>
>> With IXP4xx, Gemini and EP93xx we have found active users and
>> companies selling the chips and reference designs and even
>> recommending it for new products (!) at times.  If this is not the
>> case with KS8695 and no hobbyists are willing to submit it
>> to OpenWrt and modernize it to use device tree I think it should be
>> deleted from the kernel.
>>
> 
> That may be the best approach if indeed no one is using it,
> much less maintaining it.

Well, I for one don't really use it any more. So I don't have a lot
of motivation to maintain it any longer.

Regards
Greg


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
