Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FEE1F497
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 14:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jt+SmG78HYjpCMbl7G4cPzS5LhpTvAAvv9UPKbr00/U=; b=hdIeZTDFeWMQLhAo8O5KpymHs
	sZTEQe/sKSFR0GXXSVcPk03NEeln30MfsZkvx4uwSje95CxNaUkOFzsfkPu6DbAvN2ghrsUJNGrBF
	MjlSZGucbALWcZ6rhb3utdvnFMeb68M1nHFKtOLNxcprMqADjphiAtOSBmcf7L427HjOU4bQ1Qwhx
	XVygE8yGI5CsGOI3mpeJgNzlJIf6B363ep8UmI0VPklCSm0A4yMpfUWQK7px31gwtatv9kn04STt4
	aysuDWqeXtl/8Y9ZzPfQjfW9FL3EF7BVLbuvhDqTva9jL0C3x/Ex8K/t7DqnvlVXmVTkxVVfFYfir
	qEL8771mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQtCR-0004EC-7S; Wed, 15 May 2019 12:39:59 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtCK-0004Dn-EJ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 12:39:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C2262374;
 Wed, 15 May 2019 05:39:50 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 219443F71E;
 Wed, 15 May 2019 05:39:48 -0700 (PDT)
Subject: Re: [PATCH] arm64: do_csum: implement accelerated scalar version
To: David Laight <David.Laight@ACULAB.COM>, 'Will Deacon' <will.deacon@arm.com>
References: <20190218230842.11448-1-ard.biesheuvel@linaro.org>
 <d7a16ebd-073f-f50e-9651-68606d10b01c@hisilicon.com>
 <20190412095243.GA27193@fuggles.cambridge.arm.com>
 <41b30c72-c1c5-14b2-b2e1-3507d552830d@arm.com>
 <20190515094704.GC24357@fuggles.cambridge.arm.com>
 <6e755b2daaf341128cb3b54f36172442@AcuMS.aculab.com>
 <3d4fdbb5-7c7f-9331-187e-14c09dd1c18d@arm.com>
 <9f72aecd99e74c1a939df6562ed9c18c@AcuMS.aculab.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <083f8222-971c-0d8e-4650-0d88b193e316@arm.com>
Date: Wed, 15 May 2019 13:39:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <9f72aecd99e74c1a939df6562ed9c18c@AcuMS.aculab.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_053952_494066_DECDFCE0 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "ilias.apalodimas@linaro.org" <ilias.apalodimas@linaro.org>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "huanglingyan \(A\)" <huanglingyan2@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "steve.capper@arm.com" <steve.capper@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/05/2019 12:13, David Laight wrote:
> From: Robin Murphy
>> Sent: 15 May 2019 11:58
>> To: David Laight; 'Will Deacon'
>> Cc: Zhangshaokun; Ard Biesheuvel; linux-arm-kernel@lists.infradead.org; netdev@vger.kernel.org;
>> ilias.apalodimas@linaro.org; huanglingyan (A); steve.capper@arm.com
>> Subject: Re: [PATCH] arm64: do_csum: implement accelerated scalar version
>>
>> On 15/05/2019 11:15, David Laight wrote:
>>> ...
>>>>> 	ptr = (u64 *)(buff - offset);
>>>>> 	shift = offset * 8;
>>>>>
>>>>> 	/*
>>>>> 	 * Head: zero out any excess leading bytes. Shifting back by the same
>>>>> 	 * amount should be at least as fast as any other way of handling the
>>>>> 	 * odd/even alignment, and means we can ignore it until the very end.
>>>>> 	 */
>>>>> 	data = *ptr++;
>>>>> #ifdef __LITTLE_ENDIAN
>>>>> 	data = (data >> shift) << shift;
>>>>> #else
>>>>> 	data = (data << shift) >> shift;
>>>>> #endif
>>>
>>> I suspect that
>>> #ifdef __LITTLE_ENDIAN
>>> 	data &= ~0ull << shift;
>>> #else
>>> 	data &= ~0ull >> shift;
>>> #endif
>>> is likely to be better.
>>
>> Out of interest, better in which respects? For the A64 ISA at least,
>> that would take 3 instructions plus an additional scratch register, e.g.:
>>
>> 	MOV	x2, #~0
>> 	LSL	x2, x2, x1
>> 	AND	x0, x0, x1

[That should have been "AND x0, x1, x2", obviously...]

>>
>> (alternatively "AND x0, x0, x1 LSL x2" to save 4 bytes of code, but that
>> will typically take as many cycles if not more than just pipelining the
>> two 'simple' ALU instructions)
>>
>> Whereas the original is just two shift instruction in-place.
>>
>> 	LSR	x0, x0, x1
>> 	LSL	x0, x0, x1
>>
>> If the operation were repeated, the constant generation could certainly
>> be amortised over multiple subsequent ANDs for a net win, but that isn't
>> the case here.
> 
> On a superscaler processor you reduce the register dependency
> chain by one instruction.
> The original code is pretty much a single dependency chain so
> you are likely to be able to generate the mask 'for free'.

Gotcha, although 'free' still means additional I$ and register rename 
footprint, vs. (typically) just 1 extra cycle to forward an ALU result. 
It's an interesting consideration, but in our case there are almost 
certainly far more little in-order cores out in the wild than big OoO 
ones, and the double-shift will always be objectively better for those.

Thanks,
Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
