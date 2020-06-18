Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FA51FFA50
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 19:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jmTQVvOCAT06Fi7VohGglPhkj/J73s21I+qLPGcp6WI=; b=nk22WKdpFezkeIAFKNUMxp4U1
	P2tOcyCp9nt/tkWE8EVUV+LLobYp+z/v9GQhMo9AotCsTZIVzOwFZTS4XO2qKMnNc/n3ah0qODWK2
	Y3GhyPsnlz3XIGH6rWNsklVbDaQMqpudbmiAkl+nDA+yWCD9aq0HmYQZegumi20617oHhnLNWI82j
	1VCthcOfhGRx+Mtptgv1hhrJuwgfRMMYI/UnsTCPBU+5TaelgRiuWUiqJn8S15FD4N19npXAuJqLI
	e82RU0Y6ACbUrmUPSx0Tskuk3/7aqqNnI4QrsKSBWx7GZG/lewJwke8/ORf9l3Ah9ZmD1+7rM5opf
	9TS4Uegpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlyOR-0002fD-1P; Thu, 18 Jun 2020 17:32:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlyN6-0001ls-SG
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 17:30:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD24631B;
 Thu, 18 Jun 2020 10:30:39 -0700 (PDT)
Received: from [10.57.9.128] (unknown [10.57.9.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7BF323F6CF;
 Thu, 18 Jun 2020 10:30:36 -0700 (PDT)
Subject: Re: [PATCH] ARM: VDSO: Fix incorrect clock_gettime64
From: Robin Murphy <robin.murphy@arm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20200409050508.96753-1-jaedon.shin@gmail.com>
 <b17b74eb-1ca9-8af4-6564-3874c97d5ae7@arm.com>
 <20200530145923.GF1551@shell.armlinux.org.uk>
 <d82df693-1a09-c417-c56c-d3c974d373b4@arm.com>
Message-ID: <5d5eb1b3-3033-eeaf-6819-2f7a11d42d0c@arm.com>
Date: Thu, 18 Jun 2020 18:30:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <d82df693-1a09-c417-c56c-d3c974d373b4@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_103041_057963_E4687E07 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jaedon Shin <jaedon.shin@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-08 14:54, Robin Murphy wrote:
> On 2020-05-30 15:59, Russell King - ARM Linux admin wrote:
>> On Sat, May 30, 2020 at 03:51:35PM +0100, Robin Murphy wrote:
>>> On 2020-04-09 06:05, Jaedon Shin wrote:
>>>> __vdso_*() should be removed and fallback used if CNTCVT is not
>>>> available by cntvct_functional(). __vdso_clock_gettime64 when added
>>>> previous commit is using the incorrect CNTCVT value in that state.
>>>> __vdso_clock_gettime64 is also added to remove it's symbol.
>>>
>>> Tested-by: Robin Murphy <robin.murphy@arm.com>
>>>
>>> Turns out this is what was making my RK3288 box virtually unusable 
>>> since its
>>> last couple of updates - it would be nice to get the fix merged and
>>> backported ASAP. I suspect it's also the same underlying thing for the
>>> Raspberry Pi thread over here:
>>>
>>> https://lore.kernel.org/linux-arm-kernel/CAK8P3a2Tw2w73ZkK-W6AA9veMK4-miLUx-TL1EuOdP7EdW-AmQ@mail.gmail.com/ 
>>>
>>
>> Does this mean I need to do something with this patch? It's not been
>> put in the patch system, so I'm afraid it's missed the boat for 5.7.
> 
> Well, there still seems to be a little uncertainty over whether this is 
> the best fix, so I guess we may as well wait until the end of the merge 
> window just in case somebody comes up with something more solid.
> 
> In this particular context I'm merely a user who wants my thing to work, 
> but I'll try to keep an eye out and follow up if I don't see any other 
> movement.

Since the discussion about why the expected fallback behaviour didn't 
happen seems to have died down, and the Raspberry Pi folks have gone 
down the commendable path of actually fixing their firmware (!), I've 
taken the liberty of chucking this into the patch system for the sake of 
the remaining minority of affected machines.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
