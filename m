Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE137A9C8B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QXEaDaS5trS4AdHXdkC/FLlKUC17+oJDPG+wEFcVJkw=; b=SVNWlPrbBxOgDQ
	z2KxTic5BJo4+i7FEUPf319R7IrcPT/gnNwqns0I4TgBX9mzFKYN2SzAvgDZRFq/7v5+4m9YPmOQd
	Ccmx4YpMYHHoktTGNZhqFnKICmGBCQGE9IWkLEKjmQQXCISAzy0f/NgUVQzw+ar3/wvt0InQfuG1T
	ZNQPGJYWtXBqqmYcmu5pnx/QoT7HAlJcu7taFqwI441hDngzb7y11SQ/2NBpZLlgZ2pyXM7ukAW3p
	ICk/7lYZMp7mL+htoHXiAIlTA3U+rV8uAE609hWFU6DRDxKZj3G37WTABEyY74mz5SUNaMBh4RPW5
	1duHzGrwre3iuDQAjhfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mkb-0002LD-4f; Thu, 05 Sep 2019 08:04:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5mkN-0002KQ-8Z
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:04:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 94B5928;
 Thu,  5 Sep 2019 01:04:00 -0700 (PDT)
Received: from big-swifty.misterjones.org (unknown [10.1.27.38])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5AA793F67D;
 Thu,  5 Sep 2019 01:03:58 -0700 (PDT)
Date: Thu, 05 Sep 2019 09:03:50 +0100
Message-ID: <86r24vrwyh.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
In-Reply-To: <20190904180736.29009-1-xypron.glpk@gmx.de>
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 EasyPG/1.0.0 Emacs/26
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_010403_344650_BD7DBEDC 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 =?UTF-8?B?IkRhbmllbCBQIC4gQmVycmFuZ8OpIg==?= <berrange@redhat.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Stefan Hajnoczi <stefanha@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[Please use my kernel.org address. My arm.com address will disappear shortly]

On Wed, 04 Sep 2019 19:07:36 +0100,
Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
> 
> If an application tries to access memory that is not mapped, an error
> ENOSYS, "load/store instruction decoding not implemented" may occur.
> QEMU will hang with a register dump.
> 
> Instead create a data abort that can be handled gracefully by the
> application running in the virtual environment.
> 
> Now the virtual machine can react to the event in the most appropriate
> way - by recovering, by writing an informative log, or by rebooting.
> 
> Signed-off-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
> ---
>  virt/kvm/arm/mmio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/virt/kvm/arm/mmio.c b/virt/kvm/arm/mmio.c
> index a8a6a0c883f1..0cbed7d6a0f4 100644
> --- a/virt/kvm/arm/mmio.c
> +++ b/virt/kvm/arm/mmio.c
> @@ -161,8 +161,8 @@ int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
>  		if (ret)
>  			return ret;
>  	} else {
> -		kvm_err("load/store instruction decoding not implemented\n");
> -		return -ENOSYS;
> +		kvm_inject_dabt(vcpu, kvm_vcpu_get_hfar(vcpu));
> +		return 1;

How can you tell that the access would fault? You have no idea at that
stage (the kernel doesn't know about the MMIO ranges that userspace
handles). All you know is that you're faced with a memory access that
you cannot emulate in the kernel. Injecting a data abort at that stage
is not something that the architecture allows.

If you want to address this, consider forwarding the access to
userspace. You'll only need an instruction decoder (supporting T1, T2,
A32 and A64) and a S1 page table walker (one per page table format,
all three of them) to emulate the access (having taken care of
stopping all the other vcpus to make sure there is no concurrent
modification of the page tables). You'll then be able to return the
result of the access back to the kernel.

Of course, the best thing would be to actually fix the guest so that
it doesn't use non-emulatable MMIO accesses. In general, that the sign
of a bug in low-level accessors.

	M.

-- 
Jazz is not dead, it just smells funny.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
