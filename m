Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5C3114EC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 11:11:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2i8d2/0gHJ+XMe3+xY4CVTLlqcCDfl94yEGnjCA8zk=; b=sd6zV5m/mEVS6Y
	A2ouBYaktpxOMtolAjmMeUgWXWEbiFKMiJqumkeSbggj1bjTm4mjCe6ASbPGN66cAWCUInb2f0YPw
	IKLHZUgl3gqAA4dsv9oQsVy2kAzF0liD24KAn2ECUlEwCEOLThL+YjglohQJH+gSiXwo2bsx2QEg2
	ZcMo3CY8dvMtJNOMHDCWhUrTtkwEhV6ni0j96w5NUhamrYk+jNVPKBIv8lAXIU9KR+0uKI3Zguffs
	sJ2JI6KagvRCW66eK7dWeHI1JS8TyCep0Uer53WBfJJ6Y+EnVmjgwEvd8VMLHC2ca76/QJkyH9Uqv
	mjP8oFkmXukBYctwbiqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idAZo-0006r1-Ew; Fri, 06 Dec 2019 10:11:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idAZe-0006qK-7L
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 10:10:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E175DDA7;
 Fri,  6 Dec 2019 02:10:56 -0800 (PST)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EA3713F718;
 Fri,  6 Dec 2019 02:10:54 -0800 (PST)
Subject: Re: [PATCH] KVM: arm: get rid of unused arg in cpu_init_hyp_mode()
To: linmiaohe <linmiaohe@huawei.com>, "maz@kernel.org" <maz@kernel.org>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "julien.thierry.kdev@gmail.com" <julien.thierry.kdev@gmail.com>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 "christoffer.dall@arm.com" <christoffer.dall@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "eric.auger@redhat.com" <eric.auger@redhat.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "will@kernel.org" <will@kernel.org>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>
References: <8efe4ab7f8c44c48a70378247c511edc@huawei.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <11f06523-54ce-7025-a6ba-58c29769da60@arm.com>
Date: Fri, 6 Dec 2019 10:10:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <8efe4ab7f8c44c48a70378247c511edc@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_021058_309554_C9644987 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/11/2019 07:20, linmiaohe wrote:
>> From: Miaohe Lin <linmiaohe@huawei.com>
>>
>> As arg dummy is not really needed, there's no need to pass NULL when calling cpu_init_hyp_mode(). So clean it up.

It looks like the requirement for this dummy arg was removed in
67f691976662 ("arm64: kvm: allows kvm cpu hotplug"). FWIW:

Reviewed-by: Steven Price <steven.price@arm.com>

>> Signed-off-by: Miaohe Lin <linmiaohe@huawei.com>
>> ---
>> virt/kvm/arm/arm.c | 4 ++--
>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c index 86c6aa1cb58e..a5470f1b1a19 100644
>> --- a/virt/kvm/arm/arm.c
>> +++ b/virt/kvm/arm/arm.c
>> @@ -1315,7 +1315,7 @@ long kvm_arch_vm_ioctl(struct file *filp,
>> 	}
>> }
>>
>> -static void cpu_init_hyp_mode(void *dummy)
>> +static void cpu_init_hyp_mode(void)
>> {
>> 	phys_addr_t pgd_ptr;
>> 	unsigned long hyp_stack_ptr;
>> @@ -1349,7 +1349,7 @@ static void cpu_hyp_reinit(void)
>> 	if (is_kernel_in_hyp_mode())
>> 		kvm_timer_init_vhe();
>> 	else
>> -		cpu_init_hyp_mode(NULL);
>> +		cpu_init_hyp_mode();
>>
>> 	kvm_arm_init_debug();
>>
> friendly ping ...
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
