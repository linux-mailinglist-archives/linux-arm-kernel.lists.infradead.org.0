Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8219218F41F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:11:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzGqJEH5vM7tkl6iKucF6qR/qnF+AnDs9Y290O1qjZU=; b=bhxe1s3cvDiX60
	2SgAebCK/64MqIdIpLQPPr0At11rQRIwz+rqTf9kqJvcWeTWg8ptESMNuszXELLH262kgtnZ3qKJ5
	RELKI3GQK9mni5SUTdUGS8aLHOSQKYhfLfPly/l8n3QtrYJl3VcttNf52h40H64IqCnyFzJfmm/Ay
	R9Rz5aE5o5klr01r3PGxpD5WJdCTPFTno/pIVQ2yufFJremU5J1Xvb1r6Esg2oVzLOnPk479lOFz5
	DZ44lE+eEhoOCYsmT8i6DT1j8XEC79bLm+UsJ7QezYSZ0k5RlocZOpCZMoFPyQOAX+yE6qCAsO5dG
	+4rq/L2UvcZj1/12FGnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGLv1-0004Tc-Fg; Mon, 23 Mar 2020 12:10:59 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGLur-0004SX-05
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:10:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584965446;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KTi6Fbpftif/VSaqN/XQLRD1K5JgrsXFftrydIRiWZs=;
 b=dEmIS5WjQBJtpFM1CvUbPWjHJXTaKn7nU//8GG/AAmonADRMmnsHDcx6qWoKuMOUJuE2BS
 SFViJZRldHkSc+tX0XPj49etA27DKSqL4UQGwEDkhQk5ZrWZPHm4t5UjuHr1sxz2WsLzsv
 ULykLwDhRD5kQ15kqwaEEBJtgpEeFYY=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-144-usOoLx0TPZKiK98fs08ACQ-1; Mon, 23 Mar 2020 08:10:44 -0400
X-MC-Unique: usOoLx0TPZKiK98fs08ACQ-1
Received: by mail-wm1-f69.google.com with SMTP id w9so875118wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 05:10:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=rHQRdviv+oNnM+wOvy7j9QWQo0zwjiFN+uLtW4Mvpq0=;
 b=qSU1ws0tM4081kRAHGCh29GsYDG6NGT0Pa744p1gvZA/AWzSF1+D8qcjjDGnKnzJCu
 jiPGdsLa0SErrbvfd80RyVTJiJ1/DTWcvGlP762SN1A2qE/M9vQU0ouJ+zxMDvO8UJlf
 tY5+QzCOeS+5mdHOcJ1qaE2YcJf8uPDQKioiC74kxAXnUFSRDHyVpvlAQBPcieFCVq53
 EXOh9yPghq8sDNgri9Mxln9Wv0ordYxEX7MjIW5/G6MsdhbsINu91fKg7GUQwLwXuCYb
 6xqoac8ytFtIiImhn18GWhf/ed+4fNlO9LY8wucv5ScHg0LbttfA+xRhr0zcBO3uyIQ/
 UmMQ==
X-Gm-Message-State: ANhLgQ0QrKtHA+GUSbyMAnjsCr8Xh8ZopRNo8+HuPfdiixEkaT2Y6jS7
 Uehvz1lPJh37oH8BKEjY1AdBsWKWWlygdv7od+xctcxz6c8CSpBUxmdv84A0fTrnhWE6Zxj8iH4
 p49LUxjCfcIDLodtwk8Z2lLSpDj3IxUnl380=
X-Received: by 2002:adf:f7ce:: with SMTP id a14mr30662467wrq.180.1584965443485; 
 Mon, 23 Mar 2020 05:10:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsLu0mWmhCib7a9L9Z4UgbCUMlvtjWeM7CpEh6ia2EdDdwqHhRYkq8ynpPTFBq7OzYIQ6wpBQ==
X-Received: by 2002:adf:f7ce:: with SMTP id a14mr30662429wrq.180.1584965443217; 
 Mon, 23 Mar 2020 05:10:43 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
 by smtp.gmail.com with ESMTPSA id m7sm957131wro.41.2020.03.23.05.10.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 05:10:42 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>,
 Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH v3 2/9] KVM: x86: Move init-only kvm_x86_ops to separate
 struct
In-Reply-To: <20200321202603.19355-3-sean.j.christopherson@intel.com>
References: <20200321202603.19355-1-sean.j.christopherson@intel.com>
 <20200321202603.19355-3-sean.j.christopherson@intel.com>
Date: Mon, 23 Mar 2020 13:10:40 +0100
Message-ID: <87lfnr9sqn.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_051049_123879_50B6123F 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
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

> Move the kvm_x86_ops functions that are used only within the scope of
> kvm_init() into a separate struct, kvm_x86_init_ops.  In addition to
> identifying the init-only functions without restorting to code comments,
> this also sets the stage for waiting until after ->hardware_setup() to
> set kvm_x86_ops.  Setting kvm_x86_ops after ->hardware_setup() is
> desirable as many of the hooks are not usable until ->hardware_setup()
> completes.
>
> No functional change intended.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/x86/include/asm/kvm_host.h | 13 +++++++++----
>  arch/x86/kvm/svm.c              | 15 ++++++++++-----
>  arch/x86/kvm/vmx/vmx.c          | 16 +++++++++++-----
>  arch/x86/kvm/x86.c              | 10 ++++++----
>  4 files changed, 36 insertions(+), 18 deletions(-)
>
> diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
> index 9a183e9d4cb1..f4c5b49299ff 100644
> --- a/arch/x86/include/asm/kvm_host.h
> +++ b/arch/x86/include/asm/kvm_host.h
> @@ -1054,12 +1054,8 @@ static inline u16 kvm_lapic_irq_dest_mode(bool dest_mode_logical)
>  }
>  
>  struct kvm_x86_ops {
> -	int (*cpu_has_kvm_support)(void);          /* __init */
> -	int (*disabled_by_bios)(void);             /* __init */
>  	int (*hardware_enable)(void);
>  	void (*hardware_disable)(void);
> -	int (*check_processor_compatibility)(void);/* __init */
> -	int (*hardware_setup)(void);               /* __init */
>  	void (*hardware_unsetup)(void);            /* __exit */
>  	bool (*cpu_has_accelerated_tpr)(void);
>  	bool (*has_emulated_msr)(int index);
> @@ -1260,6 +1256,15 @@ struct kvm_x86_ops {
>  	int (*enable_direct_tlbflush)(struct kvm_vcpu *vcpu);
>  };
>  
> +struct kvm_x86_init_ops {
> +	int (*cpu_has_kvm_support)(void);
> +	int (*disabled_by_bios)(void);
> +	int (*check_processor_compatibility)(void);
> +	int (*hardware_setup)(void);
> +
> +	struct kvm_x86_ops *runtime_ops;
> +};
> +
>  struct kvm_arch_async_pf {
>  	u32 token;
>  	gfn_t gfn;
> diff --git a/arch/x86/kvm/svm.c b/arch/x86/kvm/svm.c
> index 2125c6ae5951..33e67c3389c2 100644
> --- a/arch/x86/kvm/svm.c
> +++ b/arch/x86/kvm/svm.c
> @@ -7351,11 +7351,7 @@ static void svm_pre_update_apicv_exec_ctrl(struct kvm *kvm, bool activate)
>  }
>  
>  static struct kvm_x86_ops svm_x86_ops __ro_after_init = {
> -	.cpu_has_kvm_support = has_svm,
> -	.disabled_by_bios = is_disabled,
> -	.hardware_setup = svm_hardware_setup,
>  	.hardware_unsetup = svm_hardware_teardown,
> -	.check_processor_compatibility = svm_check_processor_compat,
>  	.hardware_enable = svm_hardware_enable,
>  	.hardware_disable = svm_hardware_disable,
>  	.cpu_has_accelerated_tpr = svm_cpu_has_accelerated_tpr,
> @@ -7480,9 +7476,18 @@ static struct kvm_x86_ops svm_x86_ops __ro_after_init = {
>  	.check_nested_events = svm_check_nested_events,
>  };
>  
> +static struct kvm_x86_init_ops svm_init_ops __initdata = {
> +	.cpu_has_kvm_support = has_svm,
> +	.disabled_by_bios = is_disabled,
> +	.hardware_setup = svm_hardware_setup,
> +	.check_processor_compatibility = svm_check_processor_compat,
> +
> +	.runtime_ops = &svm_x86_ops,
> +};

Unrelated to your patch but I think we can make the naming of some of
these functions more consistend on SVM/VMX, in particular I'd suggest 

has_svm() -> cpu_has_svm_support()
is_disabled -> svm_disabled_by_bios()
...
(see below for VMX)

> +
>  static int __init svm_init(void)
>  {
> -	return kvm_init(&svm_x86_ops, sizeof(struct vcpu_svm),
> +	return kvm_init(&svm_init_ops, sizeof(struct vcpu_svm),
>  			__alignof__(struct vcpu_svm), THIS_MODULE);
>  }
>  
> diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
> index 07299a957d4a..ffcdcc86f5b7 100644
> --- a/arch/x86/kvm/vmx/vmx.c
> +++ b/arch/x86/kvm/vmx/vmx.c
> @@ -7842,11 +7842,8 @@ static bool vmx_check_apicv_inhibit_reasons(ulong bit)
>  }
>  
>  static struct kvm_x86_ops vmx_x86_ops __ro_after_init = {
> -	.cpu_has_kvm_support = cpu_has_kvm_support,
> -	.disabled_by_bios = vmx_disabled_by_bios,
> -	.hardware_setup = hardware_setup,
>  	.hardware_unsetup = hardware_unsetup,
> -	.check_processor_compatibility = vmx_check_processor_compat,
> +
>  	.hardware_enable = hardware_enable,
>  	.hardware_disable = hardware_disable,
>  	.cpu_has_accelerated_tpr = report_flexpriority,
> @@ -7981,6 +7978,15 @@ static struct kvm_x86_ops vmx_x86_ops __ro_after_init = {
>  	.apic_init_signal_blocked = vmx_apic_init_signal_blocked,
>  };
>  
> +static struct kvm_x86_init_ops vmx_init_ops __initdata = {
> +	.cpu_has_kvm_support = cpu_has_kvm_support,
> +	.disabled_by_bios = vmx_disabled_by_bios,
> +	.check_processor_compatibility = vmx_check_processor_compat,
> +	.hardware_setup = hardware_setup,

cpu_has_kvm_support() -> cpu_has_vmx_support()
hardware_setup() -> vmx_hardware_setup()

> +
> +	.runtime_ops = &vmx_x86_ops,
> +};
> +
>  static void vmx_cleanup_l1d_flush(void)
>  {
>  	if (vmx_l1d_flush_pages) {
> @@ -8065,7 +8071,7 @@ static int __init vmx_init(void)
>  	}
>  #endif
>  
> -	r = kvm_init(&vmx_x86_ops, sizeof(struct vcpu_vmx),
> +	r = kvm_init(&vmx_init_ops, sizeof(struct vcpu_vmx),
>  		     __alignof__(struct vcpu_vmx), THIS_MODULE);
>  	if (r)
>  		return r;
> diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
> index 0f08e1b4e762..20f989d1bba8 100644
> --- a/arch/x86/kvm/x86.c
> +++ b/arch/x86/kvm/x86.c
> @@ -7298,8 +7298,8 @@ static struct notifier_block pvclock_gtod_notifier = {
>  
>  int kvm_arch_init(void *opaque)
>  {
> +	struct kvm_x86_init_ops *ops = opaque;
>  	int r;
> -	struct kvm_x86_ops *ops = opaque;
>  
>  	if (kvm_x86_ops) {
>  		printk(KERN_ERR "kvm: already loaded the other module\n");
> @@ -7354,7 +7354,7 @@ int kvm_arch_init(void *opaque)
>  	if (r)
>  		goto out_free_percpu;
>  
> -	kvm_x86_ops = ops;
> +	kvm_x86_ops = ops->runtime_ops;
>  
>  	kvm_mmu_set_mask_ptes(PT_USER_MASK, PT_ACCESSED_MASK,
>  			PT_DIRTY_MASK, PT64_NX_MASK, 0,
> @@ -9623,6 +9623,7 @@ void kvm_arch_hardware_disable(void)
>  
>  int kvm_arch_hardware_setup(void *opaque)
>  {
> +	struct kvm_x86_init_ops *ops = opaque;
>  	int r;
>  
>  	rdmsrl_safe(MSR_EFER, &host_efer);
> @@ -9630,7 +9631,7 @@ int kvm_arch_hardware_setup(void *opaque)
>  	if (boot_cpu_has(X86_FEATURE_XSAVES))
>  		rdmsrl(MSR_IA32_XSS, host_xss);
>  
> -	r = kvm_x86_ops->hardware_setup();
> +	r = ops->hardware_setup();
>  	if (r != 0)
>  		return r;
>  
> @@ -9665,13 +9666,14 @@ void kvm_arch_hardware_unsetup(void)
>  int kvm_arch_check_processor_compat(void *opaque)
>  {
>  	struct cpuinfo_x86 *c = &cpu_data(smp_processor_id());
> +	struct kvm_x86_init_ops *ops = opaque;
>  
>  	WARN_ON(!irqs_disabled());
>  
>  	if (kvm_host_cr4_reserved_bits(c) != cr4_reserved_bits)
>  		return -EIO;
>  
> -	return kvm_x86_ops->check_processor_compatibility();
> +	return ops->check_processor_compatibility();
>  }
>  
>  bool kvm_vcpu_is_reset_bsp(struct kvm_vcpu *vcpu)

The patch itself looks good,

Reviewed-by: Vitaly Kuznetsov <vkuznets@redhat.com>

-- 
Vitaly


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
