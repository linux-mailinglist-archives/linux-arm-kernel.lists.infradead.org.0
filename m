Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B10A797A08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5OCbJmAmEZm5N3nJgEhbJSLzr6/W4WKXkVd6wWzVGnU=; b=A7Ku+MNMsOeBUG0PSbKzLdSrj
	jJuy7sUD2Ou5irKijUB1TFTBe4ONzGk0D96sgoRNvO7W896scr0SGiphSMlFpf6nyOXs0n1XOCB0P
	wrAkxDpw9P2Neo00+4fJhPRfOldc5seXuD7jcHbnXv6LgZg1CkMG7GJDzo8Y+f11I0dJPVtE2xjjy
	WX0rW9Gm9s+LJSMFu0kY1mOuooZeZOejnuLFCnx5tEVMxkWShxmKIDkkEZcETbPZzBncju6V7oezK
	jiXP89XdcxutL8IXujGP+98cI2gPfykKfo2PmEV1DTh4yv0QhG9UkvDQwzYXoRFgrWHLx6l1Ytim4
	V2Jrh/Dzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0QAG-0004ZF-RP; Wed, 21 Aug 2019 12:56:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0QA3-0004Ys-G7
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:56:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9120F344;
 Wed, 21 Aug 2019 05:56:22 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD3CE3F718;
 Wed, 21 Aug 2019 05:56:21 -0700 (PDT)
Subject: Re: [PATCH 3/4] iommu/io-pgtable-arm: Rationalise TCR handling
To: Will Deacon <will@kernel.org>
References: <cover.1566238530.git.robin.murphy@arm.com>
 <78df4f8e2510e88f3ded59eb385f79b4442ed4f2.1566238530.git.robin.murphy@arm.com>
 <20190820103115.o7neehdethf7sbqi@willie-the-truck>
 <48ca6945-de73-116a-3230-84862ca9e60b@arm.com>
 <20190820160700.6ircxomwuo5bksqz@willie-the-truck>
 <8cc47f43-ad74-b4e2-e977-6c78780abc91@arm.com>
 <20190821121120.34wqo7vj56pqk57c@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <cdceec32-8dae-2c9e-8f66-0cd86288529f@arm.com>
Date: Wed, 21 Aug 2019 13:56:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190821121120.34wqo7vj56pqk57c@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_055623_626872_89F522D4 
X-CRM114-Status: GOOD (  24.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: robdclark@gmail.com, joro@8bytes.org, jcrouse@codeaurora.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/08/2019 13:11, Will Deacon wrote:
> On Tue, Aug 20, 2019 at 07:41:52PM +0100, Robin Murphy wrote:
>> On 20/08/2019 17:07, Will Deacon wrote:
>>> On Tue, Aug 20, 2019 at 04:25:56PM +0100, Robin Murphy wrote:
>>>> On 20/08/2019 11:31, Will Deacon wrote:
>>>>> On Mon, Aug 19, 2019 at 07:19:30PM +0100, Robin Murphy wrote:
>>>>>> Although it's conceptually nice for the io_pgtable_cfg to provide a
>>>>>> standard VMSA TCR value, the reality is that no VMSA-compliant IOMMU
>>>>>> looks exactly like an Arm CPU, and they all have various other TCR
>>>>>> controls which io-pgtable can't be expected to understand. Thus since
>>>>>> there is an expectation that drivers will have to add to the given TCR
>>>>>> value anyway, let's strip it down to just the essentials that are
>>>>>> directly relevant to io-pgatble's inner workings - namely the address
>>>>>> sizes, walk attributes, and where appropriate, format selection.
>>>>>>
>>>>>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>>>>>> ---
>>>>>>     drivers/iommu/arm-smmu-v3.c        | 7 +------
>>>>>>     drivers/iommu/arm-smmu.c           | 1 +
>>>>>>     drivers/iommu/arm-smmu.h           | 2 ++
>>>>>>     drivers/iommu/io-pgtable-arm-v7s.c | 6 ++----
>>>>>>     drivers/iommu/io-pgtable-arm.c     | 4 ----
>>>>>>     drivers/iommu/qcom_iommu.c         | 2 +-
>>>>>>     6 files changed, 7 insertions(+), 15 deletions(-)
>>>>>
>>>>> Hmm, so I'm a bit nervous about this one since I think we really should
>>>>> be providing a TCR with EPD1 set if we're only giving you TTBR0. Relying
>>>>> on the driver to do this worries me. See my comments on the next patch.
>>>>
>>>> The whole idea is that we already know we can't provide a *complete* TCR
>>>> value (not least because anything above bit 31 is the wild west), thus
>>>> there's really no point in io-pgtable trying to provide anything other than
>>>> the parts it definitely controls. It makes sense to provide this partial TCR
>>>> value "as if" for TTBR0, since that's the most common case, but ultimately
>>>> io-pgatble doesn't know (or need to) which TTBR the caller intends to
>>>> actually use for this table. Even if the caller *is* allocating it for
>>>> TTBR0, io-pgtable doesn't know that they haven't got something live in TTBR1
>>>> already, so it still wouldn't be in a position to make the EPD1 call either
>>>> way.
>>>
>>> Ok, but the driver can happily rewrite/ignore what it gets back. I suppose
>>> an alternative would be scrapped the 'u64 tcr' and instead having a bunch
>>> of named bitfields for the stuff we're actually providing, although I'd
>>> still like EPDx to be in there.
>>
>> I like the bitfield idea; it would certainly emphasise the "you have to do
>> something more with this" angle that I'm pushing towards here, but still
>> leave things framed in TCR terms without having to go to some more general
>> abstraction. It really doesn't play into your EPD argument though - such a
>> config would be providing TxSZ/TGx/IRGNx/ORGNx/SHx, but EPDy, for y = !x.
>> For a driver to understand that and do the right thing with it is even more
>> involved than for the driver to just set EPD1 by itself anyway.
> 
> Having considered the bitfield idea some more, I'm less attached to EPDx
> because we simply wouldn't be making a statement about them, rather than a
> (dangerous) zero value and expecting it to be ignored. So I think we're in
> agreement on that.

Cool, I'll give bitfields a go for v2.

> The only part I'm still stuck to is that I think io-pgtable should know
> whether it's targetting TTBR0 or TTBR1 so that it can sanitise input
> addresses correctly. Doing this in the driver code is possible, but I'd
> rather not start from that position, particularly as it would require things
> like sign-extension in the TLBI callbacks.

Good point, and thanks for the prod that the way I end up propagating 
masked-off IOVAs through to the TLBI calls here is busted either way. 
I'm OK with introducing an explicit TTBR1 quirk to begin with, as it 
should make things a little easier to reason about, and we can always 
revisit later if and when we do find a need for more flexibility.

>> If only LPAE had created these bits as enables rather than disables then
>> things would be logical and we could all be happy, but here we are...
> 
> I'm happy! :D:D:D

Yeah, but I refuse to believe it's ever because of pagetables ;)

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
