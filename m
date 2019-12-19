Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C968F126127
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 12:46:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBJKNdvJcHwbZFbpqR0gVx9MqeusHa5xtivSv2Tk30I=; b=mOJ7bYpzErdTzK
	VEjc6HVICRGItcbo76P7/+WqKENBCz9DuKT+3abWXgs1pj0Tvs/xeJNaDyxAzeHrei173oEZtPJhy
	aDD1k9IyxxKH+EjyVWUGDDE3YzmZyPEDtH/QdYWxjTqqCtxYOSjfgLMgvZ0dx0HAozLWgrW6X83vt
	98FkPA+AYefFlVJXI1BGb4+fCUmBjoRkr4Yz5dRWO5H8exb8SnO0ohUxsXFQ0JSDoj9kOuE6hHg1C
	2PqgRlH2hGSfR+BwCtLDbo82XnXNddDja/u93TASpqS9z0/kM6I5Nt8TbsMn6J4/PY/5qdy3XdqMm
	7pf6fJu+Atq+izxR5aKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihuGA-00074e-3S; Thu, 19 Dec 2019 11:46:26 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihuFy-00072U-HF
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 11:46:17 +0000
Received: from DGGEMM405-HUB.china.huawei.com (unknown [172.30.72.54])
 by Forcepoint Email with ESMTP id 0245EC08727047931738;
 Thu, 19 Dec 2019 19:45:58 +0800 (CST)
Received: from dggeme755-chm.china.huawei.com (10.3.19.101) by
 DGGEMM405-HUB.china.huawei.com (10.3.20.213) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Dec 2019 19:45:57 +0800
Received: from [127.0.0.1] (10.173.221.248) by dggeme755-chm.china.huawei.com
 (10.3.19.101) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 19
 Dec 2019 19:45:56 +0800
Subject: Re: [PATCH 1/5] KVM: arm64: Document PV-lock interface
To: Steven Price <steven.price@arm.com>
References: <20191217135549.3240-1-yezengruan@huawei.com>
 <20191217135549.3240-2-yezengruan@huawei.com>
 <20191217142138.GA38811@arm.com>
From: yezengruan <yezengruan@huawei.com>
Message-ID: <49120a3c-405d-d2e3-2a88-ba590feccbcc@huawei.com>
Date: Thu, 19 Dec 2019 19:45:55 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191217142138.GA38811@arm.com>
Content-Language: en-US
X-Originating-IP: [10.173.221.248]
X-ClientProxiedBy: dggeme707-chm.china.huawei.com (10.1.199.103) To
 dggeme755-chm.china.huawei.com (10.3.19.101)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_034614_741886_3E493EAF 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.189 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "maz@kernel.org" <maz@kernel.org>, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "virtualization@lists.linux-foundation.org"
 <virtualization@lists.linux-foundation.org>, James Morse <James.Morse@arm.com>,
 "julien.thierry.kdev@gmail.com" <julien.thierry.kdev@gmail.com>, Catalin
 Marinas <Catalin.Marinas@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steve,

On 2019/12/17 22:21, Steven Price wrote:
> On Tue, Dec 17, 2019 at 01:55:45PM +0000, yezengruan@huawei.com wrote:
>> From: Zengruan Ye <yezengruan@huawei.com>
>>
>> Introduce a paravirtualization interface for KVM/arm64 to obtain the vcpu
>> is currently running or not.
>>
>> A hypercall interface is provided for the guest to interrogate the
>> hypervisor's support for this interface and the location of the shared
>> memory structures.
>>
>> Signed-off-by: Zengruan Ye <yezengruan@huawei.com>
>> ---
>>  Documentation/virt/kvm/arm/pvlock.rst | 31 +++++++++++++++++++++++++++
>>  1 file changed, 31 insertions(+)
>>  create mode 100644 Documentation/virt/kvm/arm/pvlock.rst
>>
>> diff --git a/Documentation/virt/kvm/arm/pvlock.rst b/Documentation/virt/kvm/arm/pvlock.rst
>> new file mode 100644
>> index 000000000000..eec0c36edf17
>> --- /dev/null
>> +++ b/Documentation/virt/kvm/arm/pvlock.rst
>> @@ -0,0 +1,31 @@
>> +.. SPDX-License-Identifier: GPL-2.0
>> +
>> +Paravirtualized lock support for arm64
>> +======================================
>> +
>> +KVM/arm64 provids some hypervisor service calls to support a paravirtualized
>> +guest obtaining the vcpu is currently running or not.
>> +
>> +Two new SMCCC compatible hypercalls are defined:
>> +
>> +* PV_LOCK_FEATURES:   0xC5000040
>> +* PV_LOCK_PREEMPTED:  0xC5000041
> 
> These values are in the "Standard Hypervisor Service Calls" section of
> SMCCC - so is there a document that describes this features such that
> other OSes or hypervisors can implement it? I'm also not entirely sure
> of the process of ensuring that the IDs picked are non-conflicting.
> 
> Otherwise if this is a KVM specific interface this should probably
> belong within the "Vendor Specific Hypervisor Service Calls" section
> along with some probing that the hypervisor is actually KVM. Although I
> don't see anything KVM specific.

Thanks for pointing it out to me! Actually, I also don't see any documents
or KVM specific that describes this features. The values in the "Vendor
Specific Hypervisor Service Calls" section may be more appropriate, such as
the following

* PV_LOCK_FEATURES:   0xC6000020
* PV_LOCK_PREEMPTED:  0xC6000021

Please let me know if you have any suggestions.

> 
>> +
>> +The existence of the PV_LOCK hypercall should be probed using the SMCCC 1.1
>> +ARCH_FEATURES mechanism before calling it.
>> +
>> +PV_LOCK_FEATURES
>> +    ============= ========    ==========
>> +    Function ID:  (uint32)    0xC5000040
>> +    PV_call_id:   (uint32)    The function to query for support.
>> +    Return value: (int64)     NOT_SUPPORTED (-1) or SUCCESS (0) if the relevant
>> +                              PV-lock feature is supported by the hypervisor.
>> +    ============= ========    ==========
>> +
>> +PV_LOCK_PREEMPTED
>> +    ============= ========    ==========
>> +    Function ID:  (uint32)    0xC5000041
>> +    Return value: (int64)     NOT_SUPPORTED (-1) or SUCCESS (0) if the IPA of
>> +                              this vcpu's pv data structure is configured by
>> +                              the hypervisor.
>> +    ============= ========    ==========
> 
>>From the code it looks like there's another argument for this SMC - the
> physical address (or IPA) of a struct pvlock_vcpu_state. This structure
> also needs to be described as it is part of the ABI.

Will update.

> 
> Steve
> 
> .
> 

Thanks,

Zengruan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
