Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A8B18F4EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:46:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OL0cib9+/q73VRgIt6404cqIBOduhlQE9lak5FdmSFY=; b=DhfIdhCzDFR80r
	Dl3VK579TQb8npnH6bQchD4dyrbC3ztuNB+MZ05KXKlU9hfOAj5Mv2fRym+h5TXWhf7RPBxi7ZUUu
	m3ILh21r+uzkJ1ePI0VELT7OV/kGtIEaiQ4stN02PKqwHcuhp+iY4iC2wMK5WDtQaIjBWlR/k/ony
	ifCUTW2jqc+oF7y0abz3yBARqiGexz5CtX6MrImwwWu+ouw1Za+RDbVpnjaXka/DAAUQmKTMemP5e
	4VZgGDDEOor6jsUfqJYufftVSe/aKJB6XyfiWrxp6OfvEm9kQ5Lj8e1fnwFjXrJp6kFX8vZAR1I62
	fmOiIG39nI0L85oxvNnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGMTW-0006GJ-Np; Mon, 23 Mar 2020 12:46:38 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGMTO-0006Ep-L1
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:46:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584967589;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YdFpUchc9Jk3kYBBsZjPPjHpUFyVWFs7ezq+T4dqNO0=;
 b=Lv68lBgVBzp5smwRVMsnGYS/8ifcnVph8DguuqWt/+KYqwVdnHEOANbee7fKRCWmyMUBAc
 C1wWtm+8wGR3BR6nl2wbMdaSjNjNSEFkKqTSPjbzYbynAFWeOSw91PnNiGR1MuZmJQ6SuN
 sHBLCT2w+LprbIkyGD1s/cC7lddRoUA=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-23-zky4a2IkNHe3x_K6zqRBpg-1; Mon, 23 Mar 2020 08:46:25 -0400
X-MC-Unique: zky4a2IkNHe3x_K6zqRBpg-1
Received: by mail-wm1-f69.google.com with SMTP id i24so3524319wml.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 05:46:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=7ey+1F39M8ByNAstuPtE4DBKq3YafypzQysKAMbXteM=;
 b=PeXBJUXBeBLST4Sxgt7NPF+3idRiG6fSSeZLFvHqIUUw4bRrApa7Iadtz9ptNAUNMc
 NhfPObpxdUUsVawns2v3H0aTWjicQq5bcIoDUsPeWGyFxYz9+lnhRMZxDuEwzv260vs/
 RdRjdlTmBOK1tKgP3WgwZsjgrUNdgJKybWSHsh4elQmmGmmFXgj7/3u52zEVEmGJS7nD
 P9NTGnx20RJWVwVqwZR5x4C/eoWTMVV5zzu5HSftlxX3h9NamoW/NMzXJYhZ51cTQZc1
 A3tczKcMUxemjNkU90sMTzP7NODaMZ5pv7cYWDDzOQl+iHbn1ChSqPtBwfwnt/6vtzC7
 6wDQ==
X-Gm-Message-State: ANhLgQ2/JABFitZDacgUYbh+at6QeLQ2JayMieDNLbdFZnWVTso76Q/G
 KxXj+UCczZyZPJfT8y+pRhJQFifbHxfwe3xpWp4++jegUqMhEjyXJ2+fWfYgqHs3hVoEFnIgBdu
 gvcmdFPIct3llFGODOzMn7g705Hpc9O6kRfA=
X-Received: by 2002:a1c:6745:: with SMTP id b66mr27121449wmc.30.1584967584689; 
 Mon, 23 Mar 2020 05:46:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs9yhBZxRUgm+rnsEcxWBh8IaB2Gorhbhsei0xdDIWP+ldbP2TNlbOrXiLaqIWct/my8m4nng==
X-Received: by 2002:a1c:6745:: with SMTP id b66mr27121425wmc.30.1584967584395; 
 Mon, 23 Mar 2020 05:46:24 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
 by smtp.gmail.com with ESMTPSA id f15sm23749313wru.83.2020.03.23.05.46.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 05:46:23 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>,
 Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH v3 7/9] KVM: x86: Drop __exit from kvm_x86_ops'
 hardware_unsetup()
In-Reply-To: <20200321202603.19355-8-sean.j.christopherson@intel.com>
References: <20200321202603.19355-1-sean.j.christopherson@intel.com>
 <20200321202603.19355-8-sean.j.christopherson@intel.com>
Date: Mon, 23 Mar 2020 13:46:22 +0100
Message-ID: <87a7479r35.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_054630_771755_19436613 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, kvm-ppc@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sean Christopherson <sean.j.christopherson@intel.com> writes:

> Remove the __exit annotation from VMX hardware_unsetup(), the hook
> can be reached during kvm_init() by way of kvm_arch_hardware_unsetup()
> if failure occurs at various points during initialization.
>
> Note, there is no known functional issue with the __exit annotation, the
> above is merely justification for its removal.  The real motivation is
> to be able to annotate vmx_x86_ops and svm_x86_ops with __initdata,
> which makes objtool complain because objtool doesn't understand that the
> vendor specific __initdata is being copied by value to a non-__initdata
> instance.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/x86/include/asm/kvm_host.h | 2 +-
>  arch/x86/kvm/vmx/vmx.c          | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
> index 54f991244fae..42a2d0d3984a 100644
> --- a/arch/x86/include/asm/kvm_host.h
> +++ b/arch/x86/include/asm/kvm_host.h
> @@ -1056,7 +1056,7 @@ static inline u16 kvm_lapic_irq_dest_mode(bool dest_mode_logical)
>  struct kvm_x86_ops {
>  	int (*hardware_enable)(void);
>  	void (*hardware_disable)(void);
> -	void (*hardware_unsetup)(void);            /* __exit */
> +	void (*hardware_unsetup)(void);
>  	bool (*cpu_has_accelerated_tpr)(void);
>  	bool (*has_emulated_msr)(int index);
>  	void (*cpuid_update)(struct kvm_vcpu *vcpu);
> diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
> index 4bbe0d165a0c..fac22e316417 100644
> --- a/arch/x86/kvm/vmx/vmx.c
> +++ b/arch/x86/kvm/vmx/vmx.c
> @@ -7652,7 +7652,7 @@ static bool vmx_apic_init_signal_blocked(struct kvm_vcpu *vcpu)
>  	return to_vmx(vcpu)->nested.vmxon;
>  }
>  
> -static __exit void hardware_unsetup(void)
> +static void hardware_unsetup(void)
>  {
>  	if (nested)
>  		nested_vmx_hardware_unsetup();

Reviewed-by: Vitaly Kuznetsov <vkuznets@redhat.com>

-- 
Vitaly


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
