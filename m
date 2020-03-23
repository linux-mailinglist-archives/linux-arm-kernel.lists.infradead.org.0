Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A5F18F488
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:27:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=09Db/goxOpabjjVCvfWkTKR022KFNGrLwU2SZc0z8MM=; b=es6E3sXpJZJywK
	5PPuETbInmLf2hK9/kTp72Db0iP7Y4AHsuWiZW38fdGSAPhtU8ohF0L/rPva3+7ESGA4oYziaL/ja
	XZ+pZC2gBV7E2SL/Eb8aFL7/BZbKKL1WtaBCWCKZWMKCP3iI0K6F4I9q7DtvZV2nxCgKexji+Yekv
	kyujGZxCFBuZsUqtrASPjHERDYiHI5AwWOc4xpw+bHuDypP3ylcg32bs227OCX9CnS6+3wP/Cdg9C
	E0X1tAB9JfJ/gxnI/C3Siz/4DENBksRe8DvYZHeRb5NtizWb6dlmRZv3vDEkCeryEzxFQ3oUg79PZ
	IL8Hq7mNbfZ5X1xkKAkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGMBK-0004g8-Ms; Mon, 23 Mar 2020 12:27:50 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGMBB-0004fb-Mf
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:27:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584966460;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XHqDwnBcQX6Iwh2x6EyPK1O15FlriFbwTmhL0tjClQc=;
 b=GA6poxVpJdT8wPGnaFwpvCar1Ua0eZ/mkKr8KRFpohXtBpOeO3/LGHD/daQq5CG7eZ1LvL
 XC64J5AZMmeqjerZ+lT8z8SVILiVsjZcfhWBYceyDjuSKLStcQOJClpZwT98SKsubwZA/w
 +mmRjHXgMgTUa6o3nJAD/jFbqQoAQeY=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-132-MRrs0pUFOU-LEHx3_eqslw-1; Mon, 23 Mar 2020 08:27:32 -0400
X-MC-Unique: MRrs0pUFOU-LEHx3_eqslw-1
Received: by mail-wm1-f70.google.com with SMTP id s14so1309128wmj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 05:27:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=VAG2Qatyfr9ITMHT/x+i3AqePq75ernJyjHorg/4AHo=;
 b=S7AhBGOkG1mkWxxJmA4jq0Kq9+9r4wOAbu38WvKtV4ralagAYm4G6K/TglXUqb7Ul+
 QUMm/0J2odIixEr4n+nAiUtkqRCJDZNXL3cuQdSCY9CdHhQetGbq9rcoI8TG2h/IVdDt
 KTsODRiIJijPslY11ueFNrnOFTAlYGykpBCBrPzH8YQF+OUNwfULAqYCgv1j1sYEzUiS
 biAc8Lnd3Lz58IYtNpIGqSCaj/5EbEO1UQJIGuJ6dTnwLOXh1c88C9hBs9vorQoRNc40
 LzKBPlrrIk8I4QJxlgz+cWuITRTDgFFl5xHiIP0nN0jRn4PObYJjp9CxgTLutMl5KJKF
 kyVA==
X-Gm-Message-State: ANhLgQ2waS/Z4OEib2oqjNZ5MtZD9bGwaZjVvF1MCdh+4AxJTahn3ctu
 LAK1auDFq/h3oIS3Iwc0G6IMtqn4KdGe2mypc/KoZphDDmynCgDI+9nwB7PtXUZBZH9ws9JS0Yb
 XwsEwl1IM5LoKs2rf8A7p00sVJv3xegFe44k=
X-Received: by 2002:a05:600c:10ce:: with SMTP id
 l14mr12350642wmd.161.1584966451333; 
 Mon, 23 Mar 2020 05:27:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtaue9eiNEXDxuxd28wMxP3Ylw+xs1AMMjsgqF/l/irHmVdBHDVD/xrHC24aOu9ZbqdIgz1FQ==
X-Received: by 2002:a05:600c:10ce:: with SMTP id
 l14mr12350596wmd.161.1584966451052; 
 Mon, 23 Mar 2020 05:27:31 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
 by smtp.gmail.com with ESMTPSA id s15sm22694648wrt.16.2020.03.23.05.27.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 05:27:30 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>,
 Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH v3 4/9] KVM: VMX: Configure runtime hooks using vmx_x86_ops
In-Reply-To: <20200321202603.19355-5-sean.j.christopherson@intel.com>
References: <20200321202603.19355-1-sean.j.christopherson@intel.com>
 <20200321202603.19355-5-sean.j.christopherson@intel.com>
Date: Mon, 23 Mar 2020 13:27:28 +0100
Message-ID: <87ftdz9ryn.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_052741_820783_6DAB288E 
X-CRM114-Status: GOOD (  13.41  )
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

> Configure VMX's runtime hooks by modifying vmx_x86_ops directly instead
> of using the global kvm_x86_ops.  This sets the stage for waiting until
> after ->hardware_setup() to set kvm_x86_ops with the vendor's
> implementation.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/x86/kvm/vmx/nested.c | 15 ++++++++-------
>  arch/x86/kvm/vmx/nested.h |  3 ++-
>  arch/x86/kvm/vmx/vmx.c    | 27 ++++++++++++++-------------
>  3 files changed, 24 insertions(+), 21 deletions(-)
>
> diff --git a/arch/x86/kvm/vmx/nested.c b/arch/x86/kvm/vmx/nested.c
> index 4ff859c99946..87fea22c3799 100644
> --- a/arch/x86/kvm/vmx/nested.c
> +++ b/arch/x86/kvm/vmx/nested.c
> @@ -6241,7 +6241,8 @@ void nested_vmx_hardware_unsetup(void)
>  	}
>  }
>  
> -__init int nested_vmx_hardware_setup(int (*exit_handlers[])(struct kvm_vcpu *))
> +__init int nested_vmx_hardware_setup(struct kvm_x86_ops *ops,
> +				     int (*exit_handlers[])(struct kvm_vcpu *))
>  {
>  	int i;
>  
> @@ -6277,12 +6278,12 @@ __init int nested_vmx_hardware_setup(int (*exit_handlers[])(struct kvm_vcpu *))
>  	exit_handlers[EXIT_REASON_INVVPID]	= handle_invvpid;
>  	exit_handlers[EXIT_REASON_VMFUNC]	= handle_vmfunc;
>  
> -	kvm_x86_ops->check_nested_events = vmx_check_nested_events;
> -	kvm_x86_ops->get_nested_state = vmx_get_nested_state;
> -	kvm_x86_ops->set_nested_state = vmx_set_nested_state;
> -	kvm_x86_ops->get_vmcs12_pages = nested_get_vmcs12_pages;
> -	kvm_x86_ops->nested_enable_evmcs = nested_enable_evmcs;
> -	kvm_x86_ops->nested_get_evmcs_version = nested_get_evmcs_version;
> +	ops->check_nested_events = vmx_check_nested_events;
> +	ops->get_nested_state = vmx_get_nested_state;
> +	ops->set_nested_state = vmx_set_nested_state;
> +	ops->get_vmcs12_pages = nested_get_vmcs12_pages;
> +	ops->nested_enable_evmcs = nested_enable_evmcs;
> +	ops->nested_get_evmcs_version = nested_get_evmcs_version;


A lazy guy like me would appreciate 'ops' -> 'vmx_x86_ops' rename as it
would make 'git grep vmx_x86_ops' output more complete.

>  
>  	return 0;
>  }
> diff --git a/arch/x86/kvm/vmx/nested.h b/arch/x86/kvm/vmx/nested.h
> index f70968b76d33..ac56aefa49e3 100644
> --- a/arch/x86/kvm/vmx/nested.h
> +++ b/arch/x86/kvm/vmx/nested.h
> @@ -19,7 +19,8 @@ enum nvmx_vmentry_status {
>  void vmx_leave_nested(struct kvm_vcpu *vcpu);
>  void nested_vmx_setup_ctls_msrs(struct nested_vmx_msrs *msrs, u32 ept_caps);
>  void nested_vmx_hardware_unsetup(void);
> -__init int nested_vmx_hardware_setup(int (*exit_handlers[])(struct kvm_vcpu *));
> +__init int nested_vmx_hardware_setup(struct kvm_x86_ops *ops,
> +				     int (*exit_handlers[])(struct kvm_vcpu *));
>  void nested_vmx_set_vmcs_shadowing_bitmap(void);
>  void nested_vmx_free_vcpu(struct kvm_vcpu *vcpu);
>  enum nvmx_vmentry_status nested_vmx_enter_non_root_mode(struct kvm_vcpu *vcpu,
> diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
> index 82dab775d520..cfa9093bdc06 100644
> --- a/arch/x86/kvm/vmx/vmx.c
> +++ b/arch/x86/kvm/vmx/vmx.c
> @@ -7860,16 +7860,16 @@ static __init int hardware_setup(void)
>  	 * using the APIC_ACCESS_ADDR VMCS field.
>  	 */
>  	if (!flexpriority_enabled)
> -		kvm_x86_ops->set_apic_access_page_addr = NULL;
> +		vmx_x86_ops.set_apic_access_page_addr = NULL;
>  
>  	if (!cpu_has_vmx_tpr_shadow())
> -		kvm_x86_ops->update_cr8_intercept = NULL;
> +		vmx_x86_ops.update_cr8_intercept = NULL;
>  
>  #if IS_ENABLED(CONFIG_HYPERV)
>  	if (ms_hyperv.nested_features & HV_X64_NESTED_GUEST_MAPPING_FLUSH
>  	    && enable_ept) {
> -		kvm_x86_ops->tlb_remote_flush = hv_remote_flush_tlb;
> -		kvm_x86_ops->tlb_remote_flush_with_range =
> +		vmx_x86_ops.tlb_remote_flush = hv_remote_flush_tlb;
> +		vmx_x86_ops.tlb_remote_flush_with_range =
>  				hv_remote_flush_tlb_with_range;
>  	}
>  #endif
> @@ -7884,7 +7884,7 @@ static __init int hardware_setup(void)
>  
>  	if (!cpu_has_vmx_apicv()) {
>  		enable_apicv = 0;
> -		kvm_x86_ops->sync_pir_to_irr = NULL;
> +		vmx_x86_ops.sync_pir_to_irr = NULL;
>  	}
>  
>  	if (cpu_has_vmx_tsc_scaling()) {
> @@ -7916,10 +7916,10 @@ static __init int hardware_setup(void)
>  		enable_pml = 0;
>  
>  	if (!enable_pml) {
> -		kvm_x86_ops->slot_enable_log_dirty = NULL;
> -		kvm_x86_ops->slot_disable_log_dirty = NULL;
> -		kvm_x86_ops->flush_log_dirty = NULL;
> -		kvm_x86_ops->enable_log_dirty_pt_masked = NULL;
> +		vmx_x86_ops.slot_enable_log_dirty = NULL;
> +		vmx_x86_ops.slot_disable_log_dirty = NULL;
> +		vmx_x86_ops.flush_log_dirty = NULL;
> +		vmx_x86_ops.enable_log_dirty_pt_masked = NULL;
>  	}
>  
>  	if (!cpu_has_vmx_preemption_timer())
> @@ -7947,9 +7947,9 @@ static __init int hardware_setup(void)
>  	}
>  
>  	if (!enable_preemption_timer) {
> -		kvm_x86_ops->set_hv_timer = NULL;
> -		kvm_x86_ops->cancel_hv_timer = NULL;
> -		kvm_x86_ops->request_immediate_exit = __kvm_request_immediate_exit;
> +		vmx_x86_ops.set_hv_timer = NULL;
> +		vmx_x86_ops.cancel_hv_timer = NULL;
> +		vmx_x86_ops.request_immediate_exit = __kvm_request_immediate_exit;
>  	}
>  
>  	kvm_set_posted_intr_wakeup_handler(wakeup_handler);
> @@ -7965,7 +7965,8 @@ static __init int hardware_setup(void)
>  		nested_vmx_setup_ctls_msrs(&vmcs_config.nested,
>  					   vmx_capability.ept);
>  
> -		r = nested_vmx_hardware_setup(kvm_vmx_exit_handlers);
> +		r = nested_vmx_hardware_setup(&vmx_x86_ops,
> +					      kvm_vmx_exit_handlers);
>  		if (r)
>  			return r;
>  	}

Reviewed-by: Vitaly Kuznetsov <vkuznets@redhat.com>

-- 
Vitaly


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
