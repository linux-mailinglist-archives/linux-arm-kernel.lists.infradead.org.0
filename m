Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D238AF8C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:21:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a+ISBuv8WnvyfoxUaSSnsahgkHyxo+eiJDXyS7VVtxE=; b=D5cPbO43PrFbeCzfj0Z1qaXJ7
	jVIwiauxhFqrVYu87Wxcw6w1tiPDIPmqtxU4Y7hwtt+Pd4a1EQnDazxSeW/ABXCnGbIsS4Fq8VpM0
	hXXjxugnzKH0T8LeM5vD7HjyMrwuXUyWm8qJ7KpsgS/7jJxQ0IRn5m35lpAvgnwcrtRy0UITWGrXd
	xIfkjbp8wmQ6/kxd6uxMGDdtU17JS3aQ8vlISmCmpvJqwjkRMy6kAL1cp96AJGkNbfPlFR54UfDmu
	/D7s0PUYUQpQp1ajWI8Z2MEQSYsV7Q5505txvqMLbs0u45lvVEpJa5bOKt3fysffFocuig7mgn8AO
	k1k5qAg3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7yon-0001kU-EZ; Wed, 11 Sep 2019 09:21:41 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7yoW-0001jj-5m
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 09:21:25 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id E6267DBB613FD0A61D59;
 Wed, 11 Sep 2019 17:21:21 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Wed, 11 Sep 2019
 17:21:13 +0800
Subject: Re: [PATCH 2/2] KVM: arm/arm64: Print the EC hex value with its exact
 width
To: Marc Zyngier <maz@kernel.org>
References: <1568169216-12632-1-git-send-email-yuzenghui@huawei.com>
 <1568169216-12632-3-git-send-email-yuzenghui@huawei.com>
 <86h85js083.wl-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <e013e828-5e61-8c07-510f-6cb4c59367cf@huawei.com>
Date: Wed, 11 Sep 2019 17:19:05 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <86h85js083.wl-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_022124_396747_19BAD389 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2019/9/11 16:31, Marc Zyngier wrote:
> On Wed, 11 Sep 2019 03:33:36 +0100,
> Zenghui Yu <yuzenghui@huawei.com> wrote:
>>
>> EC is the bits [31:26] of ESR_ELx on arm64 (HSR on arm). Print the
>> hex value with its exact width (8).
>>
>> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
>> ---
>>   virt/kvm/arm/trace.h | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/virt/kvm/arm/trace.h b/virt/kvm/arm/trace.h
>> index 204d210d01c2..022b0a060034 100644
>> --- a/virt/kvm/arm/trace.h
>> +++ b/virt/kvm/arm/trace.h
>> @@ -42,7 +42,7 @@ TRACE_EVENT(kvm_exit,
>>   		__entry->vcpu_pc		= vcpu_pc;
>>   	),
>>   
>> -	TP_printk("%s: HSR_EC: 0x%04x (%s), PC: 0x%08lx",
>> +	TP_printk("%s: HSR_EC: 0x%02x (%s), PC: 0x%08lx",
>>   		  __print_symbolic(__entry->ret, kvm_arm_exception_type),
>>   		  __entry->esr_ec,
>>   		  __print_symbolic(__entry->esr_ec, kvm_arm_exception_class),
> 
> Although you're right that 8 bits ought to be enough, this is a change
> to the output of the tracepoint, which userspace could (does?) parse.

Well-written userspace tools should only parse the low 8 bits (if they
do parse). But even if the high bits are parsed, they're always 0.
So I don't think this change will have a bad impact on userspace.

> I'm thus reluctant to change anything there, knowing that we don't
> lose any information, and just print two extra zeroes.

Anyway this is not a fix, feel free to ignore it if you're worried about
that there might be some issues ;)

> Am I missing anything?

No.


Thanks,
zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
