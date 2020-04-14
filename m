Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9918B1A7311
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 07:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4M85eCMWDysyLycbBspc8vL8deKxNoWPsbmljJEet0=; b=uAMdv0Magj0Lud
	Vt694f8/qmMYrAOXjAX2EnT87+0a7V/cxp+C6x/Vo7koWQ/ZzTFNN+rzCLgcGXZGJk1eK5j1ULvb5
	mnA4NKT5ne0pwqhO1w9QvDDB2YQ8QcgfPBmtw3z/y0bavEy/eGEhCVEYxOGi3GfREOVNpf0tpL39A
	ALdtx6aEU2X0P6SzOHwnrdacOZe1+Vo4xq4L8F4NcisdG9cyaMma6LAKZpUxM+ANLJUl8BcW5fe3i
	LHDP5ecQ0U1lVFg/uDlAL95iKmsoiYDi0BoDN5MloDmDuRPUYgprKsbQAxf81y6rqcT0cgESQSr0i
	xi1n2GwmGUvQRCuaQREQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOEJB-0007yR-F3; Tue, 14 Apr 2020 05:40:29 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOEJ2-0007xr-KZ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 05:40:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586842817;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SzGXdrr02xEETNvxPooAet3btKkqhAyq5AZ2occpcYA=;
 b=dPwVCbfHEPkRek26QP1ASTakpf5nbznnA5LYqjyeNlkVQbHSpXk4A9nZaBey2s8vzQmmDf
 6g/8DBgWHdfSXhYuWyj1OvZJ4Sdcsc2L17z0yZrXfv0nByHSBUoX3Q9Pgkua4BVZmmBHnV
 e159WCiso7bRdLiSTPkcuXSMuWikapw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-333-yw5T7HaGOEe6nG4ifQYWoA-1; Tue, 14 Apr 2020 01:40:10 -0400
X-MC-Unique: yw5T7HaGOEe6nG4ifQYWoA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5FED98017F5;
 Tue, 14 Apr 2020 05:40:08 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-77.bne.redhat.com [10.64.54.77])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 53B5B18A8E;
 Tue, 14 Apr 2020 05:39:59 +0000 (UTC)
Subject: Re: [PATCH RFCv1 0/7] Support Async Page Fault
To: Marc Zyngier <maz@kernel.org>
References: <20200410085820.758686-1-gshan@redhat.com>
 <d2882e806ad2f9793437160093c8d3fa@kernel.org>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <6a1d7e8b-da10-409f-16d0-354004566a1a@redhat.com>
Date: Tue, 14 Apr 2020 15:39:56 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <d2882e806ad2f9793437160093c8d3fa@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_224020_751796_E56E871B 
X-CRM114-Status: GOOD (  25.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: mark.rutland@arm.com, drjones@redhat.com, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, eric.auger@redhat.com, james.morse@arm.com,
 shan.gavin@gmail.com, sudeep.holla@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 4/10/20 10:52 PM, Marc Zyngier wrote:
> Hi Gavin,
> 
> On 2020-04-10 09:58, Gavin Shan wrote:
>> There are two stages of page faults and the stage one page fault is
>> handled by guest itself. The guest is trapped to host when the page
>> fault is caused by stage 2 page table, for example missing. The guest
>> is suspended until the requested page is populated. To populate the
>> requested page can be costly and might be related to IO activities
>> if the page was swapped out previously. In this case, the guest has
>> to suspend for a few of milliseconds at least, regardless of the
>> overall system load.
>>
>> The series adds support to asychornous page fault to improve above
>> situation. If it's costly to populate the requested page, a signal
>> (PAGE_NOT_PRESENT) is sent to guest so that the faulting process can
>> be rescheduled if it can be. Otherwise, it is put into power-saving
>> mode. Another signal (PAGE_READY) is sent to guest once the requested
>> page is populated so that the faulting process can be waken up either
>> from either waiting state or power-saving state.
>>
>> In order to fulfil the control flow and convey signals between host
>> and guest. A IMPDEF system register (SYS_ASYNC_PF_EL1) is introduced.
>> The register accepts control block's physical address, plus requested
>> features. Also, the signal is sent using data abort with the specific
>> IMPDEF Data Fault Status Code (DFSC). The specific signal is stored
>> in the control block by host, to be consumed by guest.
>>
>> Todo
>> ====
>> * CONFIG_KVM_ASYNC_PF_SYNC is disabled for now because the exception
>>    injection can't work in nested mode. It might be something to be
>>    improved in future.
>> * KVM_ASYNC_PF_SEND_ALWAYS is disabled even with CONFIG_PREEMPTION
>>    because it's simply not working reliably.
>> * Tracepoints, which should something to be done in short term.
>> * kvm-unit-test cases.
>> * More testing and debugging are needed. Sometimes, the guest can be
>>    stuck and the root cause needs to be figured out.
> 
> Let me add another few things:
> 
> - KVM/arm is (supposed to be) an architectural hypervisor. It means
>    that one of the design goal is to have as few differences as possible
>    from the actual hardware. I'm not keen on deviating from it (next
>    thing you know, you'll add all the PV horror from Xen, HV, VMware...).
> 
> - The idea of butchering the arm64 mm subsystem to handle a new exotic
>    style of exceptions is not something I am looking forward to. We
>    might as well PV the whole MMU, Xen style, and be done with it. I'll
>    let the arm64 maintainers comment on this though.
> 

Thanks for your comments. The feature won't be enabled on guest side until
CONFIG_KVM_GUEST is enabled. More details can be found from PATCH[7/7]. So
it would be one specific features supported by KVM. I'm not familiar with
xen and would like to learn how MMU is para-virtualized there. Do you have
documents recommended to start with? Otherwise, I will try google later.

> - We don't add IMPDEF sysregs, period. That's reserved for the HW. If
>    you want to trap, there's the HVC instruction to that effect.
> 

Yes, HVC can be used for trapping as PV stolen time did. However, I guess
it's guarded by specification? For example, the para-virtualized time calls
are specified by DEN0057A, as highlighted in include/linux/arm-smccc.h.

/* Paravirtualised time calls (defined by ARM DEN0057A) */
#define ARM_SMCCC_HV_PV_TIME_FEATURES                           \
         ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,                 \
                            ARM_SMCCC_SMC_64,                    \
                            ARM_SMCCC_OWNER_STANDARD_HYP,        \
                            0x20)

#define ARM_SMCCC_HV_PV_TIME_ST                                 \
         ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,                 \
                            ARM_SMCCC_SMC_64,                    \
                            ARM_SMCCC_OWNER_STANDARD_HYP,        \
                            0x21)

I really don't understand how IMPDEF sysreg is used by hardware vendors.
Do we have an existing functionality, which depends on IMPDEF sysreg?
I was thinking the IMPDEF sysreg can be used by software either, but
it seems I'm wrong.

> - If this is such a great improvement, where are the performance
>    numbers?
> 

Yep, Ineed. I'm still looking for appropriate workload currently and hopefully,
I can share performance data in RFCv2 :)

> - The fact that it apparently cannot work with nesting nor with
>    preemption tends to indicate that it isn't future proof.
> 

I didn't make myself clear about the nesting. The data abort exception is injected
by tweaking ELR_EL1/SPSR_EL1 if the guest is runing in 64-bits and EL1 mode. These
registers are loaded when the guest gets chance to run. However, it's impossible to
inject two (nested) data abort exception at once. It's something different from nested
VM.

There was a hot discusson about the preemption support. It's something in the TODO list
and needs to be sorted out in future.

https://lore.kernel.org/patchwork/patch/1206121/


> Thanks,
> 
> 	M.
> 

Thanks,
Gavin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
