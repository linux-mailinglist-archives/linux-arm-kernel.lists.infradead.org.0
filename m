Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E7F1A7A86
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:18:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9ywMFTqaEvk067szzP20dM2v2GXmjhbbSATVxAtHHM=; b=GW9JaF3w/Hs+69
	D3O2YE7bHl1+0iKBpLYQL28qwym2EhED0/0TwMD27DcI5tZhpquWF7Go+ab3AzvrYZZQGBDwgx+rL
	skszPxp7rQezoqitzTpFf4Uh9LI/7Wyfl/tzvRPtN52BEQrH9juN/sacUTd138eyBjWInZxeGdNwP
	s2fTxRKzZmDafmZmOP5IKExVjwyiS5pWvDpN8U899bqCUdRZWzwVeHhMZVA6dau3c7gYH+yoKtYnZ
	fVWgUZVdGhLkP8sylg8pGgtJpO7shQAlhsrZZxQ8bCfx9V2cmC3SSsNGESy5g/Jh9CSP8gwYoxfeP
	a6EjJjHSlJWCyzfjTqXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOKWF-0007C7-A4; Tue, 14 Apr 2020 12:18:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOKW4-0007BP-F4
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:18:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B2731FB;
 Tue, 14 Apr 2020 05:18:11 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 646C23F6C4;
 Tue, 14 Apr 2020 05:18:09 -0700 (PDT)
Subject: Re: [PATCH] KVM: handle the right RAS SEA(Synchronous External Abort)
 type
To: Dongjiu Geng <gengdongjiu@huawei.com>
References: <20200411121740.37615-1-gengdongjiu@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <0fa259ab-0e2f-a8b3-783d-24a725b4cc5d@arm.com>
Date: Tue, 14 Apr 2020 13:18:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200411121740.37615-1-gengdongjiu@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_051812_549973_E7E1BE31 
X-CRM114-Status: GOOD (  17.70  )
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

On 11/04/2020 13:17, Dongjiu Geng wrote:
> When the RAS Extension is implemented, b0b011000, 0b011100,
> 0b011101, 0b011110, and 0b011111, are not used and reserved
> to the DFSC[5:0] of ESR_ELx, but the code still checks these
> unused bits, so remove them.

They aren't unused: CPUs without the RAS extensions may still generate these.

kvm_handle_guest_abort() wants to know if this is an external abort.
KVM doesn't really care if the CPU has the RAS extensions or not, its the arch code's job
to sort all that out.


> If the handling of guest ras data error fails, it should
> inject data instead of SError to let the guest recover as
> much as possible.

(I don't quite follow your point here).

If KVM injected a synchronous external abort due to a RAS error here, then you wouldn't be
able to support firmware-first RAS with Qemu. I don't think this is what you want.


The handling is (and should be) decoupled.

KVM guests aren't special. Whatever happens for a normal user-space process is what should
happen here. KVM is just doing the plumbing:

When the hypervisor takes an external abort due to the guest, it should plumb the error
into the arch code to be handled. This is what would happen for a normal EL0 process.
This is what do_sea() and kvm_handle_guest_sea() do with apei_claim_sea().

If the RAS code says it handled this error, then we can continue. For user-space, we
return to user-space. For a guest, we return to the guest. (for user-space this piece is
not quite complete in mainline, see:
https://lore.kernel.org/linux-acpi/20200228174817.74278-4-james.morse@arm.com/ )

This first part happens even if the errors are notified by IRQs, or found in a polled buffer.

The RAS code may have 'handled' the memory by unmapping it, and marking the corresponding
page as HWPOISONed. If user-space tries to access this, it will be give an
SIGBUS:MCEERR_AR. If a guest tries to do this, the same things happens. (The signal goes
to Qemu).
(See do_page_fault()s use of the MCEERR si_code's, and kvm_send_hwpoison_signal)

This second part is the same regardless of how the kernel discovered the RAS error in the
first place.


If the RAS code says it did not handle this error, it means it wasn't a RAS error, or your
platform doesn't support RAS. For an external-abort there is very little the hypervisor
can do in this situation. It does what KVM has always done: inject an asynchronous
external abort.
This should only happen if the host has failed to handle the error. KVM's use of
asynchronous abort is the simplest one size fits all.

Are you seeing this happen? If so, what are the circumstances. Did the host handle the
error? (if not: why not!)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
