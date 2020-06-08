Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4E61F1A73
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 15:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YqhFzQ+EmbNq/FJsIYQW2mDOnjuJBv0kBeZ53J1obac=; b=QHrhA4PBAWmygUovXkzCc1qex
	3ZkDKw5Wpa51axWTE39Uzkd4owhGDV8L/VViHdaCk4gRSUUXYYQ9AAbkdJb6SU+jkIjrcold8Hg73
	SGJasH8Inw8BCxRgJXcIroBGIXTYHXLIvCe9842qaTj/9KSk9Z73oCdUxMyRF7Bd7RrTecSkSUEdp
	P7+Zgko1oP6HEUlhWCHSA4edWjdWHD4Q9+/XY6Rw4u5GkTCURv93tKlJbKAWfUHmzGt4m46xEcfzI
	hj/UHQI2zL0KIg29JXfWCjw8DRen3CWe2Dc3BMdcEcD0moUVS1LLrTdpyEmMdqbyciL46PFf8jsTB
	y8SjRhTZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiIEZ-00061H-JH; Mon, 08 Jun 2020 13:54:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiIES-000606-Ht
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 13:54:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B1C1831B;
 Mon,  8 Jun 2020 06:54:31 -0700 (PDT)
Received: from [10.57.9.113] (unknown [10.57.9.113])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ABB393F52E;
 Mon,  8 Jun 2020 06:54:30 -0700 (PDT)
Subject: Re: [PATCH] ARM: VDSO: Fix incorrect clock_gettime64
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20200409050508.96753-1-jaedon.shin@gmail.com>
 <b17b74eb-1ca9-8af4-6564-3874c97d5ae7@arm.com>
 <20200530145923.GF1551@shell.armlinux.org.uk>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d82df693-1a09-c417-c56c-d3c974d373b4@arm.com>
Date: Mon, 8 Jun 2020 14:54:27 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200530145923.GF1551@shell.armlinux.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_065432_637571_05CF8C8C 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Jaedon Shin <jaedon.shin@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-30 15:59, Russell King - ARM Linux admin wrote:
> On Sat, May 30, 2020 at 03:51:35PM +0100, Robin Murphy wrote:
>> On 2020-04-09 06:05, Jaedon Shin wrote:
>>> __vdso_*() should be removed and fallback used if CNTCVT is not
>>> available by cntvct_functional(). __vdso_clock_gettime64 when added
>>> previous commit is using the incorrect CNTCVT value in that state.
>>> __vdso_clock_gettime64 is also added to remove it's symbol.
>>
>> Tested-by: Robin Murphy <robin.murphy@arm.com>
>>
>> Turns out this is what was making my RK3288 box virtually unusable since its
>> last couple of updates - it would be nice to get the fix merged and
>> backported ASAP. I suspect it's also the same underlying thing for the
>> Raspberry Pi thread over here:
>>
>> https://lore.kernel.org/linux-arm-kernel/CAK8P3a2Tw2w73ZkK-W6AA9veMK4-miLUx-TL1EuOdP7EdW-AmQ@mail.gmail.com/
> 
> Does this mean I need to do something with this patch? It's not been
> put in the patch system, so I'm afraid it's missed the boat for 5.7.

Well, there still seems to be a little uncertainty over whether this is 
the best fix, so I guess we may as well wait until the end of the merge 
window just in case somebody comes up with something more solid.

In this particular context I'm merely a user who wants my thing to work, 
but I'll try to keep an eye out and follow up if I don't see any other 
movement.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
