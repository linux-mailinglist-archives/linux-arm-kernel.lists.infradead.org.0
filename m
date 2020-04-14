Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E89211A7FAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIIIPS0rzUHZaL01zhABpRxr2V69mTjYkMrR6kC2hc0=; b=dYSulnY251w3vL
	+o/TTu6AKr/RxA/91OAtQTzelqkjMPMaPK5vOsihfqaquisn4bX15gynGpHlm3loyBSJKQTNnXQxW
	H6LSTuFoY7t+l8ci6g7W4l3s8SloecAcLHRa8M1sMsnop5CPGFJ7XhxeTv4oxcOr8UB1D7eicPKBX
	gwkPfp1BRF44ddEdM6PU5/5GHRJ7UefazWAYtWsYqWQ8cZEc56eYSvajm0UaJgAZPxJ25fKija7h7
	78ZOQjX+ax0SD1eYlaFOe38BYUeJL37lLIrPObtiEKKtMWtsYbJ70Eswq3MQTsW6cITO6c9O8w4E/
	0E6qUw98Zypd3VNW8veQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMWP-0006Zg-5V; Tue, 14 Apr 2020 14:26:41 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMWH-0006Sw-2J
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 14:26:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586874389;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nQ2s1P43pMD0iJunnsFh4bxmcRIUFZr+i4fF45MPy9Q=;
 b=bo9AEOBzu3YS2RtMb5If0uxvTKK+t9VgFF2IERidpIl3dyoGmcYqGH4nfqViLMYPAYH39P
 aUWNUN8Fdx1BRbPXa87lOkJ78bhAB06uQafGpQjxb6+O9zDxPsQfHyv5H2VG6Bhjw/oJ5u
 AhVoYoqSt7xTYr2PurTIbQYOQAnkOOw=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-219-IfhiTLKIP66Lfm6ma5_b1g-1; Tue, 14 Apr 2020 10:26:05 -0400
X-MC-Unique: IfhiTLKIP66Lfm6ma5_b1g-1
Received: by mail-wm1-f69.google.com with SMTP id q5so2440314wmc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 07:26:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=uSEGx3gNn1oGf/i6GkkhJSWUv9DBqbvzJo4hv43gN+I=;
 b=LwysYr9wkr+XJHOgTIRDx6xBFrlT0O+EMYqz+teOVQjw1Pcj/lhoiRfDATgKRo4Grh
 rSjV+CfKjQIg5qBrCIjX/iwJNjxzkItfH2r90RFAmlzOa2SKbwr/rhLFN1QhwPlZo104
 rnAlO5dtMMq77+GHfMARpqIM4bfwWrYdP9FYuah+PjFaI7MF9KfVn2Qf6wvbGxkhI8+1
 uk3aXpLFLGqNrsLtyXplyG0FicqxZ4lKRuKoCa3OVUXLUua5/dRVGG/vk8a/JytELNBj
 MOWYSop6mh/wmwvQ2vvZNl+poJqlXVfdN4+/H1ThrPJmqg/6f+L+QY0PX09RoNOmboL5
 cBHw==
X-Gm-Message-State: AGi0PubUT+2YVDwA7ka5h+du0379MXnBxRNjuyQJAhY/qKMqzDnw6Vp3
 imEqQTkNr4/pTwI/wNgUVgp9vWGuI4FvhCZUm4utkr9qt+R9nUnuE+18l2jQEoS1htAXd2pGdmg
 1nhgNmJ8OXRg5rOenszHiPdfBQxhyu0TikV4=
X-Received: by 2002:a1c:4409:: with SMTP id r9mr102733wma.165.1586874363881;
 Tue, 14 Apr 2020 07:26:03 -0700 (PDT)
X-Google-Smtp-Source: APiQypJqgbBq9xhT1LszvRzgjgWUmQyELrXGBlfZ5uFizKdfdTJlTiXTCHR6m1nvQHHbl9Aa0nzYPg==
X-Received: by 2002:a1c:4409:: with SMTP id r9mr102702wma.165.1586874363651;
 Tue, 14 Apr 2020 07:26:03 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
 by smtp.gmail.com with ESMTPSA id v10sm7145993wrq.45.2020.04.14.07.26.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 07:26:03 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Subject: Re: [PATCH] KVM: Optimize kvm_arch_vcpu_ioctl_run function
In-Reply-To: <20200413034523.110548-1-tianjia.zhang@linux.alibaba.com>
References: <20200413034523.110548-1-tianjia.zhang@linux.alibaba.com>
Date: Tue, 14 Apr 2020 16:26:01 +0200
Message-ID: <875ze2ywhy.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_072633_197240_008E11DC 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: wanpengli@tencent.com, kvm@vger.kernel.org, tianjia.zhang@linux.alibaba.com,
 suzuki.poulose@arm.com, maz@kernel.org, joro@8bytes.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, sean.j.christopherson@intel.com,
 mingo@redhat.com, bp@alien8.de, james.morse@arm.com, hpa@zytor.com,
 pbonzini@redhat.com, tglx@linutronix.de, julien.thierry.kdev@gmail.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 jmattson@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tianjia Zhang <tianjia.zhang@linux.alibaba.com> writes:

> kvm_arch_vcpu_ioctl_run() is only called in the file kvm_main.c,
> where vcpu->run is the kvm_run parameter, so it has been replaced.
>
> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
> ---
>  arch/x86/kvm/x86.c | 8 ++++----
>  virt/kvm/arm/arm.c | 2 +-
>  2 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
> index 3bf2ecafd027..70e3f4abbd4d 100644
> --- a/arch/x86/kvm/x86.c
> +++ b/arch/x86/kvm/x86.c
> @@ -8726,18 +8726,18 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>  		r = -EAGAIN;
>  		if (signal_pending(current)) {
>  			r = -EINTR;
> -			vcpu->run->exit_reason = KVM_EXIT_INTR;
> +			kvm_run->exit_reason = KVM_EXIT_INTR;

I have a more generic question: why do we need to pass 'kvm_run' to
kvm_arch_vcpu_ioctl_run() if it can be extracted from 'struct kvm_vcpu'?
The only call site looks like

virt/kvm/kvm_main.c:            r = kvm_arch_vcpu_ioctl_run(vcpu, vcpu->run);

>  			++vcpu->stat.signal_exits;
>  		}
>  		goto out;
>  	}
>  
> -	if (vcpu->run->kvm_valid_regs & ~KVM_SYNC_X86_VALID_FIELDS) {
> +	if (kvm_run->kvm_valid_regs & ~KVM_SYNC_X86_VALID_FIELDS) {
>  		r = -EINVAL;
>  		goto out;
>  	}
>  
> -	if (vcpu->run->kvm_dirty_regs) {
> +	if (kvm_run->kvm_dirty_regs) {
>  		r = sync_regs(vcpu);
>  		if (r != 0)
>  			goto out;
> @@ -8767,7 +8767,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>  
>  out:
>  	kvm_put_guest_fpu(vcpu);
> -	if (vcpu->run->kvm_valid_regs)
> +	if (kvm_run->kvm_valid_regs)
>  		store_regs(vcpu);
>  	post_kvm_run_save(vcpu);
>  	kvm_sigset_deactivate(vcpu);
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index 48d0ec44ad77..ab9d7966a4c8 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -659,7 +659,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  		return ret;
>  
>  	if (run->exit_reason == KVM_EXIT_MMIO) {
> -		ret = kvm_handle_mmio_return(vcpu, vcpu->run);
> +		ret = kvm_handle_mmio_return(vcpu, run);
>  		if (ret)
>  			return ret;
>  	}

-- 
Vitaly


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
