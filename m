Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F7EAB842
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 14:35:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ibs8dRX2HvJUcwS+Rg/U3E6hyhF12vTCNWjU4vLmTE=; b=sVJJn2yte+BOo1
	33g7j0c1jGiNecUlH7VZDCjDOysOkDpAbnWszCdqtwDIF9OQdTAgHBnqUohckVmABUvqCABS0FSJf
	3wkPdH28retheeMOGWaeS2cQtjCGL6i5vnJRSbX7yYqmpbiqA6PjyAAnBstEXvHXZfbTloOma9paN
	8bPtkWdoWNdauVOTwrV8aWF1uoQS3xK/BtX0CE7ReOBBIR83uKufgcpfsu+vqxwyNJgpwNYqnFy8e
	mYlSoL8UbwWv4ixsf0Ou16j8lxEIeY2jo284lhbmmFEjnj0WNbWaxtZeQGu8LLZTw+yPLSXwodh9g
	NtChJGaWs6A86Qy5MBBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6DS6-0002VK-L2; Fri, 06 Sep 2019 12:34:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6DS0-0002Uf-Bu
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 12:34:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 57B971570;
 Fri,  6 Sep 2019 05:34:51 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 52B373F718; Fri,  6 Sep 2019 05:34:50 -0700 (PDT)
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
To: Alexander Graf <graf@amazon.com>,
 Christoffer Dall <christoffer.dall@arm.com>
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <86r24vrwyh.wl-maz@kernel.org>
 <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
 <86mufjrup7.wl-maz@kernel.org>
 <CAFEAcA9qkqkOTqSVrhTpt-NkZSNXomSBNiWo_D6Kr=QKYRRf=w@mail.gmail.com>
 <20190905092223.GC4320@e113682-lin.lund.arm.com>
 <4b6662bd-56e4-3c10-3b65-7c90828a22f9@kernel.org>
 <20190906080033.GF4320@e113682-lin.lund.arm.com>
 <a58c5f76-641a-8381-2cf3-e52d139c4236@amazon.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <0a99ce2b-7700-2a2f-eb3a-4922631cbe02@kernel.org>
Date: Fri, 6 Sep 2019 13:34:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a58c5f76-641a-8381-2cf3-e52d139c4236@amazon.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_053452_453262_56D4FC8C 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: =?UTF-8?Q?Daniel_P=2e_Berrang=c3=a9?= <berrange@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Hajnoczi <stefanha@redhat.com>, kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/09/2019 13:08, Alexander Graf wrote:
> 
> 
> On 06.09.19 10:00, Christoffer Dall wrote:
>> On Thu, Sep 05, 2019 at 02:09:18PM +0100, Marc Zyngier wrote:

[...]

>>>> @@ -673,6 +694,8 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
>>>>   		ret = kvm_handle_mmio_return(vcpu, vcpu->run);
>>>>   		if (ret)
>>>>   			return ret;
>>>> +	} else if (run->exit_reason == KVM_EXIT_ARM_NISV) {
>>>> +		kvm_inject_undefined(vcpu);
>>>
>>> Just to make sure I understand: Is the expectation here that userspace
>>> could clear the exit reason if it managed to handle the exit? And
>>> otherwise we'd inject an UNDEF on reentry?
>>>
>>
>> Yes, but I think we should change that to an external abort.  I'll test
>> something and send a proper patch with more clear documentation.
> 
> Why not leave the injection to user space in any case? API wise there is 
> no need to be backwards compatible, as we require the CAP to be enabled, 
> right?
> 
> IMHO it should be 100% a policy decision in user space whether to 
> emulate and what type of exception to inject, if anything.

The exception has to be something that the trapped instruction can
actually generate. An UNDEF is definitely wrong, as the guest would have
otherwise UNDEF'd at EL1, and KVM would have never seen it. You cannot
deviate from the rule of architecture, and userspace feels like the
wrong place to enforce it.

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
