Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10228C3E73
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Io9nF6nIV8bcgnB3MM1YV9UP7o9VZh7Pcz6sGUDKso=; b=uliCWvci60CVtE
	k/HPRp+/PPRGjbdDnQfpx7X1VGLj9iUgL3LK0/LZZbiXCw+yAfUnj83pVR1FfEXgz3zZH9ckEOgFe
	GcFMp9FopYBRvUCaTCGPNosqvZn4XVRMg/SnF1Ba48gRAyhGOuegc/LNDZmjfmX3zUykDyeLQqF9e
	T0CRi0GyeYbJ+/uVYrdE8rgsK4v43J3MjGDCaCO1gt9kIPqUP8xvSDittdEiru0Vck5QXUB3dQt2j
	yJ+GaLioyhk8g5gugZfuf5z7m67f7dUqTfLt69Mwub5V/NqKZTBSLhOdGKYHIc6SLQkcGdgi2LoOc
	RqRGk9UqgiCDwh9sJRkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLos-0000qf-7x; Tue, 01 Oct 2019 17:20:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLoN-0000f6-Rf
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:19:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 970E0337;
 Tue,  1 Oct 2019 10:19:40 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0AD233F706;
 Tue,  1 Oct 2019 10:19:32 -0700 (PDT)
Subject: Re: [RFC PATCH 1/2] kvm/arm: add capability to forward hypercall to
 user space
To: Heyi Guo <guoheyi@huawei.com>
References: <1569338454-26202-1-git-send-email-guoheyi@huawei.com>
 <1569338454-26202-2-git-send-email-guoheyi@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <e097fb69-1e68-4082-d310-e7666e30b5d6@arm.com>
Date: Tue, 1 Oct 2019 18:19:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1569338454-26202-2-git-send-email-guoheyi@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_101943_982945_35DD6683 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, qemu-arm@nongnu.org,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 wanghaibin.wang@huawei.com, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heyi,

On 24/09/2019 16:20, Heyi Guo wrote:
> As more SMC/HVC usages emerge on arm64 platforms, like SDEI, it makes
> sense for kvm to have the capability of forwarding such calls to user
> space for further emulation.

(what do you mean by further? Doesn't user-space have to do all of it?)


> We reuse the existing term "hypercall" for SMC/HVC, as well as the
> hypercall structure in kvm_run to exchange arguments and return
> values. The definition on arm64 is as below:
> 
> exit_reason: KVM_EXIT_HYPERCALL
> 
> Input:
>   nr: the immediate value of SMC/HVC calls; not really used today.

>   args[6]: x0..x5 (This is not fully conform with SMCCC which requires
>            x6 as argument as well, but use space can use GET_ONE_REG
>            ioctl for such rare case).

If this structure isn't right for us, we could define a different one for arm/arm64.
(we did this for kvm_vcpu_events)


> Return:
>   args[0..3]: x0..x3 as defined in SMCCC. We need to extract
>               args[0..3] and write them to x0..x3 when hypercall exit
>               returns.

Are we saying that KVM_EXIT_HYPERCALL expects to be used with SMC-CC?
(if so, we should state that).

I'm not certain we should tie this to SMC-CC.

If we don't tie it to SMC-CC this selection of in/out registers looks odd, there is
nothing about HVC/SMC that uses these registers, its just the SMC convention.


> Flag hypercall_forward is added to turn on/off hypercall forwarding
> and the default is false. Another flag hypercall_excl_psci is to
> exclude PSCI from forwarding for backward compatible, and it only
> makes sense to check its value when hypercall_forward is enabled.

Calling out PSCI like this is something we shouldn't do. There will be, (are!) other
SMC-CC calls that the kernel provides emulation for, we can't easily add to this list.

I think the best way to avoid this, is to say the hypercall mechanism forwards 'unhandled
SMC/HVC' to user-space. Which things the kernel chooses to handle can change.

We need a way for user-space to know which SMC/HVC calls the kernel will handle, and will
not forward. A suggestion is to add a co-processor that lists these by #imm and r0/x0
value. User-space can then query any call to find out if it would be exported if the guest
made that call. Something like kvm_arm_get_fw_reg().

I agree it should be possible to export the PSCI range to user-space, so that user-space
can provide a newer/better version than the kernel emulates, or prevent secondary cores
coming online. (we should check how gracefully the kernel handles that... it doesn't
happen on real systems)
This could be done with something like kvm_vm_ioctl_enable_cap(), one option is to use the
args to toggle the on/off value, but it may be simpler to expose a
KVM_CAP_ARM_PSCI_TO_USER that can be enabled.


Please update Documentation/virt/kvm/api.txt as part of the patches that make user-visible
changes.

For 32bit, are we going to export SMC/HVC calls that failed their condition-code checks?

The hypercall structure should probably indicate whether the SMC/HVC call came from
aarch32 or aarch64, as the behaviour may be different.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
