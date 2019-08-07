Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CF584DE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2uu2skNpj+mhVRG9DivcvuuAen1bCH4hxnFKJDfQ6HY=; b=kJgsA/Djqwdc+4
	rVwEdRxhggBdFXsPamZ6/9qm5v4kBgVsQ8gtCv5EmHjK1fFcbyr7rWdweUxDNIHS0mmWBkalpsB0r
	XIGKElzbxomVUa+LC4lD1embEhl+eNVZBX+Fl4zZmXfFt9jbYnK7+pu+A0MfG2XUSowB9Oecja/w9
	XyTIkEZ1z/aSjCElXjcqeSJPfPt/bolVkChVR+C6N263I5W8PJKyCXvahD/rpeMVKG0/CEnMaaCdj
	/wn1Mneb9qRpq4ZJvERX7KOZY/6tAfk07vYFBZqZSLD1xee3hXWfjgcNu5vVgRNPgqsbzzHTxbO11
	JvXdwBR7u5iYwHWgYINQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvMLj-0007sj-C1; Wed, 07 Aug 2019 13:51:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvMLX-0007sC-7z
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:51:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1D9F228;
 Wed,  7 Aug 2019 06:51:18 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D77E03F706; Wed,  7 Aug 2019 06:51:16 -0700 (PDT)
Subject: Re: [PATCH 6/9] KVM: arm64: Provide a PV_TIME device to user space
To: Steven Price <steven.price@arm.com>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-7-steven.price@arm.com> <20190803135113.6cdf500c@why>
 <20190803183335.149e0113@why> <5aa54066-b9f6-22d1-fa2b-ce5cbf244ab5@arm.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <9c416f28-d078-4575-8095-8b4cccfe40ec@kernel.org>
Date: Wed, 7 Aug 2019 14:51:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5aa54066-b9f6-22d1-fa2b-ce5cbf244ab5@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_065119_333203_EFEFAC27 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/08/2019 14:39, Steven Price wrote:
> On 03/08/2019 18:34, Marc Zyngier wrote:
>> On Sat, 3 Aug 2019 13:51:13 +0100
>> Marc Zyngier <maz@kernel.org> wrote:
>>
>> [forgot that one]
>>
>>> On Fri,  2 Aug 2019 15:50:14 +0100
>>> Steven Price <steven.price@arm.com> wrote:
>>
>> [...]
>>
>>>> +static int __init kvm_pvtime_init(void)
>>>> +{
>>>> +	kvm_register_device_ops(&pvtime_ops, KVM_DEV_TYPE_ARM_PV_TIME);
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> +late_initcall(kvm_pvtime_init);
>>
>> Why is it an initcall? So far, the only initcall we've used is the one
>> that initializes KVM itself. Can't we just the device_ops just like we
>> do for the vgic?
> 
> So would you prefer a direct call from init_subsystems() in
> virt/kvm/arm/arm.c?

Yes. Consistency is important.

> The benefit of initcall is just that it keeps the code self-contained.
> In init_subsystems() I'd either need a #ifdef CONFIG_ARM64 or a dummy
> function for arm.

Having a dummy function for 32bit ARM is fine. Most of the code we add
to the 32bit port is made of empty stubs anyway.

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
