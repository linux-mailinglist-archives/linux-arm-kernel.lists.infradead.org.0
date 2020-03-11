Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC7F1811AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:20:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etN7MvqsRrUvVEQTdORgf7BREHnZwdzmHkWej5kxqZE=; b=lIM0tz5+bAFRvF
	0zvl2hYdL6+vmOSwnei+3VfEUciaIKDhb+89GUXu7SWggwKlOJ9Uj7xP7cvzxXyyVLcG7YvE+j2o0
	Q8SqnQGRYSZNVNAPNY51yrp5c5qiiF98xfU/OLio0XS2jO+ZauwLkLK2HeBuyyU2jLxCl1SsDno6e
	Z+MmQoudkM7Eiu0YbxjIjzTGVXdJZ2wAc8ZhjmaI8r0lH4volEXnv01t0mLTdovaq/b+GjI3kZLDZ
	YKIDVMaBM/anB6md2gOqgyAYi/0FrIQ6aqQvd/3bebCcnS8fwhSO6V0UY657J7ixIHytdSciVm++C
	iRYO+SbNzycN6g2tb4fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvfI-0000R1-0n; Wed, 11 Mar 2020 07:20:28 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvf7-0000Me-Vh
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:20:20 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1D0CEFE6F693335B3302;
 Wed, 11 Mar 2020 15:20:06 +0800 (CST)
Received: from [127.0.0.1] (10.173.221.230) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0;
 Wed, 11 Mar 2020 15:19:55 +0800
Subject: Re: [RFC] KVM: arm64: support enabling dirty log graually in small
 chunks
To: Marc Zyngier <maz@kernel.org>
References: <20200309085727.1106-1-zhukeqian1@huawei.com>
 <4b85699ec1d354cc73f5302560231f86@misterjones.org>
 <64925c8b-af3d-beb5-bc9b-66ef1e47f92d@huawei.com>
 <a642a79ea9190542a9098e4c9dc5a9f2@kernel.org>
From: zhukeqian <zhukeqian1@huawei.com>
Message-ID: <9ddefc54-dd5b-0555-0aaa-00a3a23febcf@huawei.com>
Date: Wed, 11 Mar 2020 15:19:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <a642a79ea9190542a9098e4c9dc5a9f2@kernel.org>
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_002018_606792_01472B4A 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Jay
 Zhou <jianjay.zhou@huawei.com>, Paolo Bonzini <pbonzini@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/3/10 21:16, Marc Zyngier wrote:
> On 2020-03-10 08:26, zhukeqian wrote:
>> Hi Marc,
>>
>> On 2020/3/9 19:45, Marc Zyngier wrote:
>>> Kegian,
> 
> [...]
> 
>>> Is there a userspace counterpart to it?
>>>
>> As this KVM/x86 related changes have not been merged to mainline
>> kernel, some little modification is needed on mainline Qemu.
> 
> Could you please point me to these changes?
I made some changes locally listed below.

However, Qemu can choose to enable KVM_DIRTY_LOG_INITIALLY_SET or not.
Here I made no judgement on dirty_log_manual_caps because I just want
to verify the optimization of this patch.

diff --git a/accel/kvm/kvm-all.c b/accel/kvm/kvm-all.c
index 439a4efe52..1611f644a4 100644
--- a/accel/kvm/kvm-all.c
+++ b/accel/kvm/kvm-all.c
@@ -2007,14 +2007,16 @@ static int kvm_init(MachineState *ms)
     s->coalesced_pio = s->coalesced_mmio &&
                        kvm_check_extension(s, KVM_CAP_COALESCED_PIO);

-    s->manual_dirty_log_protect =
+    uint64_t dirty_log_manual_caps =
         kvm_check_extension(s, KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2);
-    if (s->manual_dirty_log_protect) {
-        ret = kvm_vm_enable_cap(s, KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2, 0, 1);
+    if (dirty_log_manual_caps) {
+        ret = kvm_vm_enable_cap(s, KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2, 0,
+                                dirty_log_manual_caps);
         if (ret) {
             warn_report("Trying to enable KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2 "
                         "but failed.  Falling back to the legacy mode. ");
-            s->manual_dirty_log_protect = false;
+        } else {
+            s->manual_dirty_log_protect = true;
         }
     }

> 
>> As I tested this patch on a 128GB RAM Linux VM with no huge pages, the
>> time of enabling dirty log will decrease obviously.
> 
> I'm not sure how realistic that is. Not having huge pages tends to lead
> to pretty bad performance in general...
Sure, this has no effect on guests which are all of huge pages.

For my understanding, once a guest has normal pages (maybe are initialized
at beginning or dissloved from huge pages), it can benefit from this patch.
> 
> Thanks,
> 
>         M.
Pretty thanks for your review.

Thanks,
Keqian


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
