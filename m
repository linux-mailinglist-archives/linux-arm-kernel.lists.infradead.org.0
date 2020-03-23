Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D81F18F9A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 17:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cHh+8IJM1+ZYImnM3ebb6ECX/kpcca3dmRImgn38R0=; b=BrD7AEfTq7JCHL
	3RQJHdqujyNy7Var4zqPIJQ5funu0ZcFmgbSufVddjf9zD2M+zoAhUvvuP44NWbuthQe8/aoKRGVX
	LVkM5w8OGDv8aLPRV/Ra+GdJ9jHc7Ex50dKmg+NQmFMqXA3lKIvL1EPPbiTO+GqGFWzrKpr+TZzU1
	D7GIN2VSjdAXRE1k23JbTzlionwPp3sr/qEBp6Bp/NYL+tPWnu+8plo+giio0dgqaBDCYbE30gVFG
	fqR5bcDHYyoRUNA3Pxz1akhLKDKWmapEAxMxP+bjcpcdSjkFYXoSmO4mMdmq6j/iJwjhMM/8tKXTb
	MvWk0LEskEc0oHSIuEdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGPt9-0008JT-D8; Mon, 23 Mar 2020 16:25:19 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGPsu-0007ez-7z
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 16:25:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584980703;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1KcTBJzO6vWLTAizjBFxPBY9nEeHoxSdUmsZCL+8CkQ=;
 b=GcF9qP062I8K4Xi3e94Z56vUeNSlc5bZWi23TzP66M2pi0NJXoQcglV7jZMTW0694H0/It
 FRieHsXHSIBsLfsQiOaw1LAQE8XYB7w/y+JLmW3SdG1BrgCUWaAdbS6XnH50QG0RZiBmA/
 niwkREzvxVOkPzY2B03fEFoRxjx6F1Y=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-375-_tvh9aIJNDmlSXmHoN-wzw-1; Mon, 23 Mar 2020 12:24:59 -0400
X-MC-Unique: _tvh9aIJNDmlSXmHoN-wzw-1
Received: by mail-wm1-f69.google.com with SMTP id h203so43180wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 09:24:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=X1Ry1yiWvSlF/GO2rvf8iBUf/GEmj9nn1/CSsWhpLSU=;
 b=B1RA7Ii0h9zxe/YO6xNBKRVBEshGFfqC+HtavuQLeqGLeIwKjvNd+b/cxGRbRpFbWc
 YEUKUClQ5UZvfbiOi4UeMOnym+TS55++Sv23UcoU6zeK4/ukss5pLxdSg/m+J6e6MSTZ
 xNX4zSTVxUunZ1v3gr8I/P8SxFcKLM2/8ewrwiGG+1DhLVonoBfNUOhyJoaxafCKYGxv
 tj9LaFO6XeJZXN6o0W+B8PG8CW34F18W1Y6/Op4yaJsySPV9jYEdUijVuf82SemP2O43
 sDxrLXRkwgUgXg6szMCDWpr4I/1saSnCCenkWs/yrFZ856aBz2nfLEFU4nU7w0UATXIZ
 xcUg==
X-Gm-Message-State: ANhLgQ2a2hNaji0rGrU/FffFY6yPBLXtM4WBCgFx+dG3l8siyePxJ++B
 i62reb+LCyMrlCAgNypVlIcO7QKEG4XMrEfsn3MQebMwqRg/uEu+u17cythze895ZKm4lvUHhJI
 Jim2yFKmat36Z0OcVFrhB77eGIFL7Ws++Usw=
X-Received: by 2002:a05:600c:3cb:: with SMTP id z11mr75048wmd.94.1584980698691; 
 Mon, 23 Mar 2020 09:24:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsn477+cxrvpcfJzZ9WXWmF0SKMmbIayFwHATIum/A7SWzS2LgH2WXH6U684IfdISlyncs+7g==
X-Received: by 2002:a05:600c:3cb:: with SMTP id z11mr75027wmd.94.1584980698414; 
 Mon, 23 Mar 2020 09:24:58 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
 by smtp.gmail.com with ESMTPSA id p10sm19419160wrm.6.2020.03.23.09.24.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 09:24:57 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v3 2/9] KVM: x86: Move init-only kvm_x86_ops to separate
 struct
In-Reply-To: <20200323152909.GE28711@linux.intel.com>
References: <20200321202603.19355-1-sean.j.christopherson@intel.com>
 <20200321202603.19355-3-sean.j.christopherson@intel.com>
 <87lfnr9sqn.fsf@vitty.brq.redhat.com>
 <20200323152909.GE28711@linux.intel.com>
Date: Mon, 23 Mar 2020 17:24:56 +0100
Message-ID: <87o8sn82ef.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_092504_388708_B6028362 
X-CRM114-Status: GOOD (  14.11  )
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sean Christopherson <sean.j.christopherson@intel.com> writes:

> On Mon, Mar 23, 2020 at 01:10:40PM +0100, Vitaly Kuznetsov wrote:
>> Sean Christopherson <sean.j.christopherson@intel.com> writes:
>> 
>> > +
>> > +	.runtime_ops = &svm_x86_ops,
>> > +};
>> 
>> Unrelated to your patch but I think we can make the naming of some of
>> these functions more consistend on SVM/VMX, in particular I'd suggest 
>> 
>> has_svm() -> cpu_has_svm_support()
>> is_disabled -> svm_disabled_by_bios()
>> ...
>> (see below for VMX)
>> 
>> > +
>> >  static int __init svm_init(void)
>> >  {
>> > -	return kvm_init(&svm_x86_ops, sizeof(struct vcpu_svm),
>> > +	return kvm_init(&svm_init_ops, sizeof(struct vcpu_svm),
>> >  			__alignof__(struct vcpu_svm), THIS_MODULE);
>> >  }
>> >  
>> > diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
>> > index 07299a957d4a..ffcdcc86f5b7 100644
>> > --- a/arch/x86/kvm/vmx/vmx.c
>> > +++ b/arch/x86/kvm/vmx/vmx.c
>> > @@ -7842,11 +7842,8 @@ static bool vmx_check_apicv_inhibit_reasons(ulong bit)
>> >  }
>> >  
>> >  static struct kvm_x86_ops vmx_x86_ops __ro_after_init = {
>> > -	.cpu_has_kvm_support = cpu_has_kvm_support,
>> > -	.disabled_by_bios = vmx_disabled_by_bios,
>> > -	.hardware_setup = hardware_setup,
>> >  	.hardware_unsetup = hardware_unsetup,
>> > -	.check_processor_compatibility = vmx_check_processor_compat,
>> > +
>> >  	.hardware_enable = hardware_enable,
>> >  	.hardware_disable = hardware_disable,
>> >  	.cpu_has_accelerated_tpr = report_flexpriority,
>> > @@ -7981,6 +7978,15 @@ static struct kvm_x86_ops vmx_x86_ops __ro_after_init = {
>> >  	.apic_init_signal_blocked = vmx_apic_init_signal_blocked,
>> >  };
>> >  
>> > +static struct kvm_x86_init_ops vmx_init_ops __initdata = {
>> > +	.cpu_has_kvm_support = cpu_has_kvm_support,
>> > +	.disabled_by_bios = vmx_disabled_by_bios,
>> > +	.check_processor_compatibility = vmx_check_processor_compat,
>> > +	.hardware_setup = hardware_setup,
>> 
>> cpu_has_kvm_support() -> cpu_has_vmx_support()
>> hardware_setup() -> vmx_hardware_setup()
>
> Preaching to the choir on this one.  The VMX functions without prefixes in
> in particular annoy me to no end, e.g. hardware_setup().  Though the worst
> is probably ".vcpu_create = vmx_create_vcpu", if I had a nickel for every
> time I've tried to find vmx_vcpu_create()...
>
> What if we added a macro to auto-generate the common/required hooks?  E.g.:
>
>   static struct kvm_x86_ops vmx_x86_ops __ro_after_init = {
> 	MANDATORY_KVM_X86_OPS(vmx),
>
> 	.pmu_ops = &intel_pmu_ops,
>
> 	...
>   };
>
> That'd enforce consistent naming, and would provide a bit of documentation
> as to which hooks are optional, e.g. many of the nested hooks, and which
> must be defined for KVM to function.

Sounds cool! (not sure that with only two implementations people won't
call it 'over-engineered' but cool). My personal wish would just be that
function names in function implementations are not auto-generated so
e.g. a simple 'git grep vmx_hardware_setup' works but the way how we
fill vmx_x86_ops in can be macroed I guess.

-- 
Vitaly


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
