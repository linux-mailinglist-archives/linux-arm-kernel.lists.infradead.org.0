Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8780A1AC208
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 15:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chrTt6P2jwhVkS/b4n8/T85cgSsOlEPCHjeGfLEuYdo=; b=Z4/LneXT0ANvsO
	oC4idPK0p9mCJS+t0GZNZEBv8arUJrwHjaLmVhwgHUPbTNa/XhsQtOwQSsNCpWMDe5EzPto0s/Szu
	MOneOPXWXnC4vFLFuC5DR+uieqWR0E6NNTllt4tIsVxi7FOEGDYTuxYyaG3P9yTPwQtpp2ROGszkE
	qGeIqYIV135znHrLikbdj43oFVMGoa/7Ln0N35TApUtvlvq71JKnApgjUPAffw0fgav9SMNg5o4S1
	4P3d7MCo2wD7DWi+WWZGrFfXptPgxOxCQOOuXLtsh8ZufyIlojbU+lMT02efAzq3O4cGtuW2f47PA
	L4kqi3KMSzI1jroSm6Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP4Ap-0007Bc-4V; Thu, 16 Apr 2020 13:03:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP4AZ-00079G-J1
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 13:03:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 055791FB;
 Thu, 16 Apr 2020 06:03:01 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6536E3F68F;
 Thu, 16 Apr 2020 06:02:59 -0700 (PDT)
Subject: Re: [PATCH] KVM: handle the right RAS SEA(Synchronous External Abort)
 type
To: gengdongjiu <gengdongjiu@huawei.com>
References: <20200411121740.37615-1-gengdongjiu@huawei.com>
 <0fa259ab-0e2f-a8b3-783d-24a725b4cc5d@arm.com>
 <65414dc5-1cd7-003d-7c6a-5da62c6a4a1d@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <29b99cab-cdcc-fc7c-378f-9796af0242c5@arm.com>
Date: Thu, 16 Apr 2020 14:02:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <65414dc5-1cd7-003d-7c6a-5da62c6a4a1d@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_060303_754927_F05AE44C 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Hi Geng,

On 16/04/2020 13:07, gengdongjiu wrote:
> On 2020/4/14 20:18, James Morse wrote:
>> On 11/04/2020 13:17, Dongjiu Geng wrote:
>>> When the RAS Extension is implemented, b0b011000, 0b011100,
>>> 0b011101, 0b011110, and 0b011111, are not used and reserved
>>> to the DFSC[5:0] of ESR_ELx, but the code still checks these
>>> unused bits, so remove them.
>>
>> They aren't unused: CPUs without the RAS extensions may still generate these.
>>
>> kvm_handle_guest_abort() wants to know if this is an external abort.
>> KVM doesn't really care if the CPU has the RAS extensions or not, its the arch code's job
>> to sort all that out.
> 
> No, handle_guest_sea() ---> ghes_notify_sea  ---> apei driver

You missed the arch code's apei_claim_sea(). This is where kvm washes its hands of the
exception, its up to the arch code to deal with, in the same way it deals with errors for
user-space.


> If it is an  external abort, it will call apei driver to handle it, but it should be only SEA will call the apei driver.
> other type of external abort should not call apei driver.
> I am not see arch code sort all that out.

The other kind is _asynchronous_ external abort, which doesn't get handled in here.

Do you mean 'Synchronous external abort on translation table walk, nth level'?
KVM shouldn't care, this is still up to the arch code to deal with.

Do you mean 'Synchronous parity or ECC error on memory access, not on translation table
walk'? (and all its translation table walk friends...)

These really are still external abort!
See shared/functions/aborts/IsExternalAbort() in the psuedo code. (J12-7735 of DDI0487F.a)

This means they are trapped by SCR_EL3.EA. On a firmware-first system if we see one of
these, its because firmware re-injected it. The arch code needs to get APEI to check for
CPER records when it sees one. (KVM ... doesn't care)

(I agree not having 'external' in the name is counter-intuitive. I think this is because
the component that triggers them is 'in' the CPU, (e.g. the L1 cache). This is how you can
know it was a parity or ECC error, instead of 'something outside' (i.e. external). An OS
that is deeply tied to the CPU micro-architecture could use the difference to read imp-def
sysregs for one, and poke around in imp-def mmio for the external case. Linux isn't tied
to the micro-architecture, so ignores this 'internal/external' hint.)


>>> If the handling of guest ras data error fails, it should
>>> inject data instead of SError to let the guest recover as
>>> much as possible.
> 
> In some hardware platform, it supports RAS, but the RAS error address will be not recorded,

In what circumstances does this happen?

Wouldn't these errors all be uncontained? (in which case the host should panic()).
e.g. A write went to the wrong address, we don't know where it went...

...

Is this because your platform describes memory-errors that happen inside the CPU as
processor errors, instead of memory-errors?

Linux's APEI code ignores them, because it doesn't know what they are. This means you are
missing the whole memory_failure(), page-unmapping, user-space signalling ... and guest
error injection ... part of the RAS handling.


> so it is better to inject a data abort instead of SError for thtat platform.

Not at all. The SError here is KVM's response to having nothing else it can do.

Having the host handle the error is the best way of solving the problem.

> because guest will try to do recovery for the Synchronous data abort, such as kill the error
> application. But for SError, guest will be panic.

I'd rather we fix this by having the host handle the error.

Botching in a synchronous exception here would mean Qemu can't properly emulate a machine
that has SCR_EL3.EA set ... which you need to provide firmware-first for the guest.

[...]

> Yes, some platform supports RAS but will not record the error address, so the host has failed
> to handle the error.

I don't think its reasonable to expect KVM to do anything useful in this case.
We should fix the host error handling.

In what circumstances does this happen?


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
