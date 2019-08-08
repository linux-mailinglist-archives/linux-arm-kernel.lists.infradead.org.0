Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C6D8663B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 17:50:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z9hLJAxoJC0g2ptSStYAHpN5rDoyuvN+/Ya2trXrtAw=; b=Fr4QZh0fHTb2bI
	J5amPG6VQ77Vv+2u1029385o6EcLpujlrhrYrD6VBbkveq4fCgrU1y7Iy5Oh+Y0KUHd42hrAN03Kg
	MTG4t9wqCO7Oaq+f1Fk2QkMCE+LFB974G3WSS2p0U4KXR+KZXC3mqhadvQpoHJDSxY5kPzgfUDZ2E
	FRzJEP0f+1R7OPPsJIEonn3xl3EUMEZirnVaVq49m0Z6YYEFuGU81Uhczt7fly2k8cX+qfMOerCx8
	dsHloBBUTOTM84Rxc8tGjDXczfbXmIgyU5vVNCxhY+rmGPSEhjQ2QiYgSgMbFBDYXyjVe4cysQruC
	v/5wGuYwgvuE4ilPmReQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvkfw-0001mO-8Q; Thu, 08 Aug 2019 15:50:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvkfl-0001lg-VC
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 15:49:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 593D01596;
 Thu,  8 Aug 2019 08:49:48 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A5E283F706; Thu,  8 Aug 2019 08:49:46 -0700 (PDT)
Subject: Re: [PATCH 9/9] arm64: Retrieve stolen time as paravirtualized guest
To: Steven Price <steven.price@arm.com>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-10-steven.price@arm.com> <20190804105353.5e9824dc@why>
 <dc8a1e56-7b52-cc8f-265d-27eb5f458613@arm.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <7108a70b-dafd-507b-8509-f4a092ef24af@kernel.org>
Date: Thu, 8 Aug 2019 16:49:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <dc8a1e56-7b52-cc8f-265d-27eb5f458613@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_084950_051400_A5744B18 
X-CRM114-Status: GOOD (  13.76  )
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
Cc: kvm@vger.kernel.org, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/08/2019 16:29, Steven Price wrote:
> On 04/08/2019 10:53, Marc Zyngier wrote:
>> On Fri,  2 Aug 2019 15:50:17 +0100
>> Steven Price <steven.price@arm.com> wrote:
>>
>>> Enable paravirtualization features when running under a hypervisor
>>> supporting the PV_TIME_ST hypercall.
>>>
>>> For each (v)CPU, we ask the hypervisor for the location of a shared
>>> page which the hypervisor will use to report stolen time to us. We set
>>> pv_time_ops to the stolen time function which simply reads the stolen
>>> value from the shared page for a VCPU. We guarantee single-copy
>>> atomicity using READ_ONCE which means we can also read the stolen
>>> time for another VCPU than the currently running one while it is
>>> potentially being updated by the hypervisor.
>>>
>>> Signed-off-by: Steven Price <steven.price@arm.com>
>>> ---
>>>  arch/arm64/kernel/Makefile |   1 +
>>>  arch/arm64/kernel/kvm.c    | 155 +++++++++++++++++++++++++++++++++++++

[...]

>>> +static int __init kvm_guest_init(void)
>>> +{
>>> +	int ret = 0;
>>> +
>>> +	if (!has_kvm_steal_clock())
>>> +		return 0;
>>> +
>>> +	ret = kvm_arm_init_stolen_time();
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	pv_ops.time.steal_clock = kvm_steal_clock;
>>> +
>>> +	static_key_slow_inc(&paravirt_steal_enabled);
>>> +	if (steal_acc)
>>> +		static_key_slow_inc(&paravirt_steal_rq_enabled);
>>> +
>>> +	pr_info("using stolen time PV\n");
>>> +
>>> +	return 0;
>>> +}
>>> +early_initcall(kvm_guest_init);
>>
>> Is there any reason why we wouldn't directly call into this rather than
>> using an initcall?
> 
> I'm not sure where the direct call would go - any pointers?

I'd be temped to say arch/arm64/kernel/time.c:time_init(), provided that
there is no issue with the CPU hotplug lock (I remember hitting that a
while ago).

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
