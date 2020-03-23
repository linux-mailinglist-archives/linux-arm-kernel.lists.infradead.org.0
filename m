Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3420218F9BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 17:31:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3OXGLoyFscEXPtDRf0FdTi9rFSxqtbfrZDB+0URV4o=; b=BAaQL4U/nK98CH
	SqAWK9VxAN/iEZO0F7wDK4RSW5JN7g/M3BodN+WgXn4ChZ9RueA4CTm2EjWHgBGDbdz3VldrUVJTe
	TYY7ZvgdOII1+8fGHAFyKvo+iDog8METKh5SIl1B4MabKhxGcKPr7+U0opzwjL/lu9EW9EXmAIJvW
	n+Z/7ynzKy+vmB+hrRIy8kV+I6Xx0e+ZdBKW61hTQkZJs9jt+fWTcpgKPrdXg+H5nLMy4X1PHWF0F
	EU0D+5WVLT2ESgx/EyXU8ZtISWRdZe29KhxlEseg0r3bFNyaXIv9fIp/hmj58+U0Vr1Y63TFSiGk+
	1yq0ZAZhBdLNU+3CVFmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGPzR-0002BH-CX; Mon, 23 Mar 2020 16:31:49 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGPzI-0002AF-Im
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 16:31:42 +0000
IronPort-SDR: G9p34znk9fhvKkDQOYTArAEjtYHfPP5POfKY/21Rwog7i2464SWNSuiz9FTnQDkdZcJ5qtOtWi
 CFprOm/aATRg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 09:31:37 -0700
IronPort-SDR: szHRtSFDap8tPDDbCZjY8IsJB86JbCOaVx3NCNFM02k1aZo2cLfAgzLVZG93EZD2pGO8Xl0/T8
 x/vNCF1+MuCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,297,1580803200"; d="scan'208";a="357141639"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 23 Mar 2020 09:31:37 -0700
Date: Mon, 23 Mar 2020 09:31:36 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Vitaly Kuznetsov <vkuznets@redhat.com>
Subject: Re: [PATCH v3 2/9] KVM: x86: Move init-only kvm_x86_ops to separate
 struct
Message-ID: <20200323163136.GO28711@linux.intel.com>
References: <20200321202603.19355-1-sean.j.christopherson@intel.com>
 <20200321202603.19355-3-sean.j.christopherson@intel.com>
 <87lfnr9sqn.fsf@vitty.brq.redhat.com>
 <20200323152909.GE28711@linux.intel.com>
 <87o8sn82ef.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8sn82ef.fsf@vitty.brq.redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_093140_633109_A1922983 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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

On Mon, Mar 23, 2020 at 05:24:56PM +0100, Vitaly Kuznetsov wrote:
> Sean Christopherson <sean.j.christopherson@intel.com> writes:
> 
> > On Mon, Mar 23, 2020 at 01:10:40PM +0100, Vitaly Kuznetsov wrote:
> >> Sean Christopherson <sean.j.christopherson@intel.com> writes:
> >> 
> >> > +
> >> > +	.runtime_ops = &svm_x86_ops,
> >> > +};
> >> 
> >> Unrelated to your patch but I think we can make the naming of some of
> >> these functions more consistend on SVM/VMX, in particular I'd suggest 
> >> 
> >> has_svm() -> cpu_has_svm_support()
> >> is_disabled -> svm_disabled_by_bios()
> >> ...
> >> (see below for VMX)
> >> 
> >> > +
> >> >  static int __init svm_init(void)
> >> >  {
> >> > -	return kvm_init(&svm_x86_ops, sizeof(struct vcpu_svm),
> >> > +	return kvm_init(&svm_init_ops, sizeof(struct vcpu_svm),
> >> >  			__alignof__(struct vcpu_svm), THIS_MODULE);
> >> >  }
> >> >  
> >> > diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
> >> > index 07299a957d4a..ffcdcc86f5b7 100644
> >> > --- a/arch/x86/kvm/vmx/vmx.c
> >> > +++ b/arch/x86/kvm/vmx/vmx.c
> >> > @@ -7842,11 +7842,8 @@ static bool vmx_check_apicv_inhibit_reasons(ulong bit)
> >> >  }
> >> >  
> >> >  static struct kvm_x86_ops vmx_x86_ops __ro_after_init = {
> >> > -	.cpu_has_kvm_support = cpu_has_kvm_support,
> >> > -	.disabled_by_bios = vmx_disabled_by_bios,
> >> > -	.hardware_setup = hardware_setup,
> >> >  	.hardware_unsetup = hardware_unsetup,
> >> > -	.check_processor_compatibility = vmx_check_processor_compat,
> >> > +
> >> >  	.hardware_enable = hardware_enable,
> >> >  	.hardware_disable = hardware_disable,
> >> >  	.cpu_has_accelerated_tpr = report_flexpriority,
> >> > @@ -7981,6 +7978,15 @@ static struct kvm_x86_ops vmx_x86_ops __ro_after_init = {
> >> >  	.apic_init_signal_blocked = vmx_apic_init_signal_blocked,
> >> >  };
> >> >  
> >> > +static struct kvm_x86_init_ops vmx_init_ops __initdata = {
> >> > +	.cpu_has_kvm_support = cpu_has_kvm_support,
> >> > +	.disabled_by_bios = vmx_disabled_by_bios,
> >> > +	.check_processor_compatibility = vmx_check_processor_compat,
> >> > +	.hardware_setup = hardware_setup,
> >> 
> >> cpu_has_kvm_support() -> cpu_has_vmx_support()
> >> hardware_setup() -> vmx_hardware_setup()
> >
> > Preaching to the choir on this one.  The VMX functions without prefixes in
> > in particular annoy me to no end, e.g. hardware_setup().  Though the worst
> > is probably ".vcpu_create = vmx_create_vcpu", if I had a nickel for every
> > time I've tried to find vmx_vcpu_create()...
> >
> > What if we added a macro to auto-generate the common/required hooks?  E.g.:
> >
> >   static struct kvm_x86_ops vmx_x86_ops __ro_after_init = {
> > 	MANDATORY_KVM_X86_OPS(vmx),
> >
> > 	.pmu_ops = &intel_pmu_ops,
> >
> > 	...
> >   };
> >
> > That'd enforce consistent naming, and would provide a bit of documentation
> > as to which hooks are optional, e.g. many of the nested hooks, and which
> > must be defined for KVM to function.
> 
> Sounds cool! (not sure that with only two implementations people won't
> call it 'over-engineered' but cool). My personal wish would just be that
> function names in function implementations are not auto-generated so
> e.g. a simple 'git grep vmx_hardware_setup' works but the way how we
> fill vmx_x86_ops in can be macroed I guess.

Ya, I was thinking of just the macro.  Even that has downsides though, e.g.
chasing kvm_x86_ops.hardware_setup() to find VMX's hardware_setup() becomes
a bit kludgy.  On the other hand, _if_ you know how the fill macro works,
getting to the implementation should be easier.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
