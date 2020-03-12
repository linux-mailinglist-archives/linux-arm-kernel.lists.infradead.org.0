Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6921826C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 02:45:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7HytDn0KoyxqKBArnnHmJbAUdSd6BFm5HWQt26s0Rbg=; b=pJWN3JgMJIrThV
	dY5ngwOlLTbYg/I5lkdxyw7FodZait0NLJKEZdf7YN3WU0Zil9UfEICxHYGfNdSJZr1/k2jA1zKba
	O5uWZMfUOrUMsgVYj5PGRLPXiszG29xA8Hw51Y5tMLLUegZhiRTY+PscHqIhxRvhxmy4s+uzCwH3w
	rXepWbh7mIlhmPynuyMUDCpW0rATnJOHS8I/FwB1/8pvqFB73H9YBuRKR0JgJ9Ze5yLAzS6h86caO
	sOFZ9sU9jGe6pTajBIJbjdsBPNmVc46w72yyYetHGD+epHy8eVKsjppdO0mOTHkVOEVXLtgH6njW2
	2ihF1yfXlgujia7Zpi4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCCv2-0006LR-J4; Thu, 12 Mar 2020 01:45:52 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCCut-0006KG-RP
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 01:45:45 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 9DD712E01B64EC9C1957;
 Thu, 12 Mar 2020 09:45:36 +0800 (CST)
Received: from [127.0.0.1] (10.173.221.230) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0;
 Thu, 12 Mar 2020 09:45:26 +0800
Subject: Re: [RFC] KVM: arm64: support enabling dirty log graually in small
 chunks
To: "Zhoujian (jay)" <jianjay.zhou@huawei.com>, Marc Zyngier <maz@kernel.org>
References: <20200309085727.1106-1-zhukeqian1@huawei.com>
 <4b85699ec1d354cc73f5302560231f86@misterjones.org>
 <64925c8b-af3d-beb5-bc9b-66ef1e47f92d@huawei.com>
 <a642a79ea9190542a9098e4c9dc5a9f2@kernel.org>
 <9ddefc54-dd5b-0555-0aaa-00a3a23febcf@huawei.com>
 <B2D15215269B544CADD246097EACE7474BB64495@DGGEMM528-MBX.china.huawei.com>
From: zhukeqian <zhukeqian1@huawei.com>
Message-ID: <3238d495-8c13-4fbb-8e3d-c34e560ec9af@huawei.com>
Date: Thu, 12 Mar 2020 09:45:25 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <B2D15215269B544CADD246097EACE7474BB64495@DGGEMM528-MBX.china.huawei.com>
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_184544_062581_E13238CA 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: "Huangweidong \(C\)" <weidong.huang@huawei.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 "wangxin \(U\)" <wangxinxin.wang@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jay,

On 2020/3/11 15:34, Zhoujian (jay) wrote:
> 
> 
>> -----Original Message-----
>> From: zhukeqian
>> Sent: Wednesday, March 11, 2020 3:20 PM
>> To: Marc Zyngier <maz@kernel.org>
>> Cc: kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org;
>> linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; Zhoujian (jay)
>> <jianjay.zhou@huawei.com>; Sean Christopherson
>> <sean.j.christopherson@intel.com>; Paolo Bonzini <pbonzini@redhat.com>;
>> James Morse <james.morse@arm.com>; Julien Thierry
>> <julien.thierry.kdev@gmail.com>; Suzuki K Poulose <suzuki.poulose@arm.com>
>> Subject: Re: [RFC] KVM: arm64: support enabling dirty log graually in small chunks
>>
>> Hi Marc,
>>
>> On 2020/3/10 21:16, Marc Zyngier wrote:
>>> On 2020-03-10 08:26, zhukeqian wrote:
>>>> Hi Marc,
>>>>
>>>> On 2020/3/9 19:45, Marc Zyngier wrote:
>>>>> Kegian,
>>>
>>> [...]
>>>
>>>>> Is there a userspace counterpart to it?
>>>>>
>>>> As this KVM/x86 related changes have not been merged to mainline
>>>> kernel, some little modification is needed on mainline Qemu.
>>>
>>> Could you please point me to these changes?
>> I made some changes locally listed below.
>>
>> However, Qemu can choose to enable KVM_DIRTY_LOG_INITIALLY_SET or not.
>> Here I made no judgement on dirty_log_manual_caps because I just want to
>> verify the optimization of this patch.
>>
>> diff --git a/accel/kvm/kvm-all.c b/accel/kvm/kvm-all.c index
>> 439a4efe52..1611f644a4 100644
>> --- a/accel/kvm/kvm-all.c
>> +++ b/accel/kvm/kvm-all.c
>> @@ -2007,14 +2007,16 @@ static int kvm_init(MachineState *ms)
>>      s->coalesced_pio = s->coalesced_mmio &&
>>                         kvm_check_extension(s,
>> KVM_CAP_COALESCED_PIO);
>>
>> -    s->manual_dirty_log_protect =
>> +    uint64_t dirty_log_manual_caps =
>>          kvm_check_extension(s,
>> KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2);
>> -    if (s->manual_dirty_log_protect) {
>> -        ret = kvm_vm_enable_cap(s,
>> KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2, 0, 1);
>> +    if (dirty_log_manual_caps) {
>> +        ret = kvm_vm_enable_cap(s,
>> KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2, 0,
>> +                                dirty_log_manual_caps);
>>          if (ret) {
>>              warn_report("Trying to enable
>> KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2 "
>>                          "but failed.  Falling back to the legacy mode. ");
>> -            s->manual_dirty_log_protect = false;
>> +        } else {
>> +            s->manual_dirty_log_protect = true;
>>          }
>>      }
> 
> FYI: I had submitted a patch to the Qemu community some days ago:
> https://patchwork.kernel.org/patch/11419191/
This is very helpful, thanks.
> 
>>>
>>>> As I tested this patch on a 128GB RAM Linux VM with no huge pages,
>>>> the time of enabling dirty log will decrease obviously.
>>>
>>> I'm not sure how realistic that is. Not having huge pages tends to
>>> lead to pretty bad performance in general...
>> Sure, this has no effect on guests which are all of huge pages.
>>
>> For my understanding, once a guest has normal pages (maybe are initialized at
>> beginning or dissloved from huge pages), it can benefit from this patch.
> 
> Yes, I agree.
> 
I will send PATCH v1 soon.
> 
> 
> Regards,
> Jay Zhou
> 
> .
>
Thanks,
Keqian


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
