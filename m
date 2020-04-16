Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E1C1AC0C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 14:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vfKf2GsPyUQYOs7JYNMnS7fbCA33Lu5kF8cPKvv+7w=; b=XFlRrSnONso5Rf
	Yg8RdDAxSyuxO+BPTUIdL7Q01lW7wJ3m+MKdBxVAUGfLeT33C23Nhp+BYBRO9D8kwnw1uVCyFSab3
	s4OD0KrgJ6kRiviBS7cIGrEgfd4yt30IPUJ57syV463JUcpfQz9jbXPxh+0Wxw3TbZIFR0KReA5CO
	dCkVM85dlNv5VSwsOXfVxhMth+nBdYx+bZt8Vxa9O1bNE0eeII2DCH7I/Y6EYGOanKtD3/aeZDeG5
	2ab1bMCXqt5Pj/RNtZwns5/XHWzZrgiqgwf3GHrMWi25r5jXQt3zU2dngH8RN7d8vneeHfbR+VJq+
	jgkIBQPPfYyNHB0SMD3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3Jq-00084s-I8; Thu, 16 Apr 2020 12:08:34 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP3Jh-00083T-BM
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 12:08:27 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 0B70046E24AE8485149C;
 Thu, 16 Apr 2020 20:08:06 +0800 (CST)
Received: from [127.0.0.1] (10.142.68.147) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Thu, 16 Apr 2020
 20:07:55 +0800
Subject: Re: [PATCH] KVM: handle the right RAS SEA(Synchronous External Abort)
 type
To: James Morse <james.morse@arm.com>
References: <20200411121740.37615-1-gengdongjiu@huawei.com>
 <0fa259ab-0e2f-a8b3-783d-24a725b4cc5d@arm.com>
From: gengdongjiu <gengdongjiu@huawei.com>
Message-ID: <65414dc5-1cd7-003d-7c6a-5da62c6a4a1d@huawei.com>
Date: Thu, 16 Apr 2020 20:07:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <0fa259ab-0e2f-a8b3-783d-24a725b4cc5d@arm.com>
Content-Language: en-US
X-Originating-IP: [10.142.68.147]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_050825_723061_B6419F4D 
X-CRM114-Status: GOOD (  27.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: suzuki.poulose@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, zhengxiang9@huawei.com, tanxiaofei@huawei.com,
 julien.thierry.kdev@gmail.com, catalin.marinas@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James

On 2020/4/14 20:18, James Morse wrote:
> Hi Geng,
> 
> On 11/04/2020 13:17, Dongjiu Geng wrote:
>> When the RAS Extension is implemented, b0b011000, 0b011100,
>> 0b011101, 0b011110, and 0b011111, are not used and reserved
>> to the DFSC[5:0] of ESR_ELx, but the code still checks these
>> unused bits, so remove them.
> 
> They aren't unused: CPUs without the RAS extensions may still generate these.
> 
> kvm_handle_guest_abort() wants to know if this is an external abort.
> KVM doesn't really care if the CPU has the RAS extensions or not, its the arch code's job
> to sort all that out.

No, handle_guest_sea() ---> ghes_notify_sea  ---> apei driver

If it is an  external abort, it will call apei driver to handle it, but it should be only SEA will call the apei driver.
other type of external abort should not call apei driver.
I am not see arch code sort all that out.

        /* Synchronous External Abort? */
        if (kvm_vcpu_dabt_isextabt(vcpu)) {
                /*
                 * For RAS the host kernel may handle this abort.
                 * There is no need to pass the error into the guest.
                 */
                if (!handle_guest_sea(fault_ipa, kvm_vcpu_get_hsr(vcpu)))
                        return 1;
         }

> 
> 
>> If the handling of guest ras data error fails, it should
>> inject data instead of SError to let the guest recover as
>> much as possible.

In some hardware platform, it supports RAS, but the RAS error address will be not recorded, so it is better to inject a data abort instead of SError for thtat platform.
because guest will try to do recovery for the Synchronous data abort, such as kill the error application. But for SError, guest will be panic.

> 
> (I don't quite follow your point here).
> 
> If KVM injected a synchronous external abort due to a RAS error here, then you wouldn't be
> able to support firmware-first RAS with Qemu. I don't think this is what you want.
> 
> 
> The handling is (and should be) decoupled.
> 
> KVM guests aren't special. Whatever happens for a normal user-space process is what should
> happen here. KVM is just doing the plumbing:
> 
> When the hypervisor takes an external abort due to the guest, it should plumb the error
> into the arch code to be handled. This is what would happen for a normal EL0 process.
> This is what do_sea() and kvm_handle_guest_sea() do with apei_claim_sea().
> 
> If the RAS code says it handled this error, then we can continue. For user-space, we
> return to user-space. For a guest, we return to the guest. (for user-space this piece is
> not quite complete in mainline, see:
> https://lore.kernel.org/linux-acpi/20200228174817.74278-4-james.morse@arm.com/ )
> 
> This first part happens even if the errors are notified by IRQs, or found in a polled buffer.
> 
> The RAS code may have 'handled' the memory by unmapping it, and marking the corresponding
> page as HWPOISONed. If user-space tries to access this, it will be give an
> SIGBUS:MCEERR_AR. If a guest tries to do this, the same things happens. (The signal goes
> to Qemu).
> (See do_page_fault()s use of the MCEERR si_code's, and kvm_send_hwpoison_signal)
> 
> This second part is the same regardless of how the kernel discovered the RAS error in the
> first place.
> 
> 
> If the RAS code says it did not handle this error, it means it wasn't a RAS error, or your
> platform doesn't support RAS. For an external-abort there is very little the hypervisor
> can do in this situation. It does what KVM has always done: inject an asynchronous
> external abort.
> This should only happen if the host has failed to handle the error. KVM's use of
> asynchronous abort is the simplest one size fits all.
> 
> Are you seeing this happen? If so, what are the circumstances. Did the host handle the
> error? (if not: why not!)

Yes, some platform supports RAS but will not record the error address, so the host has failed to handle the error.

> 
> 
> Thanks,
> 
> James
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
