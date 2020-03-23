Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE8318F997
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 17:23:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YejFRWe379c3mihbk1YOZOU6ocnr0IULnp3DhTgV94M=; b=oI2L3rz+AhJCBH
	4aS2kTtkj80/GDB/1PWW55arrwJKw1JeL5bLQPAs7M0jLzRqRv48u9BavL7lH8+tAJlDFlgy4LcRa
	pogHeOFO+2iaTmi/X98FPme/g6aj3tGvzLbtCc+2cnEs/TSauZctT9MvGLwvcGtnlLrgxmIAP8lao
	CU5E8h/1ADrQb/AlcTLG1u4+qmx9AwrcyP3eHn+bHnrEQ5g7qBZICA3CjqUaUGH/GNytQHbVjE6NP
	G8kYSp31EKgZkFpf4wfHvLmujwNM4IEJvKAAvj36qq+8cPVi8vuX6LE89+TDWDYW7UHjCvlP9OJLs
	DV6CDeGWvq9XmEIqaf/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGPrF-0006SA-Sk; Mon, 23 Mar 2020 16:23:21 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGPr7-0006Re-Pp
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 16:23:15 +0000
IronPort-SDR: Ik4plwKF1ilLl1Gub9yqjxNLNHaLNrlmBd5XkqbV/R1aHlchJ/0I33aZ1k86rGum97OTZMuNX6
 xCmWzc1QDHog==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 09:23:07 -0700
IronPort-SDR: MSUbytwPG21W6dHu5U5WS4F+QkOtlYnEVMtPHZM2yy05ToGOBSa/Iia6kA8iGdkqDv5h8AChKj
 rBEIy+2a4Nvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,297,1580803200"; d="scan'208";a="357139587"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 23 Mar 2020 09:23:05 -0700
Date: Mon, 23 Mar 2020 09:23:05 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Vitaly Kuznetsov <vkuznets@redhat.com>
Subject: Re: [PATCH v3 4/9] KVM: VMX: Configure runtime hooks using vmx_x86_ops
Message-ID: <20200323162305.GL28711@linux.intel.com>
References: <20200321202603.19355-1-sean.j.christopherson@intel.com>
 <20200321202603.19355-5-sean.j.christopherson@intel.com>
 <87ftdz9ryn.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ftdz9ryn.fsf@vitty.brq.redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_092313_904968_2AC6FF1E 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Mon, Mar 23, 2020 at 01:27:28PM +0100, Vitaly Kuznetsov wrote:
> Sean Christopherson <sean.j.christopherson@intel.com> writes:
> 
> > Configure VMX's runtime hooks by modifying vmx_x86_ops directly instead
> > of using the global kvm_x86_ops.  This sets the stage for waiting until
> > after ->hardware_setup() to set kvm_x86_ops with the vendor's
> > implementation.
> >
> > Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> > ---
> >  arch/x86/kvm/vmx/nested.c | 15 ++++++++-------
> >  arch/x86/kvm/vmx/nested.h |  3 ++-
> >  arch/x86/kvm/vmx/vmx.c    | 27 ++++++++++++++-------------
> >  3 files changed, 24 insertions(+), 21 deletions(-)
> >
> > diff --git a/arch/x86/kvm/vmx/nested.c b/arch/x86/kvm/vmx/nested.c
> > index 4ff859c99946..87fea22c3799 100644
> > --- a/arch/x86/kvm/vmx/nested.c
> > +++ b/arch/x86/kvm/vmx/nested.c
> > @@ -6241,7 +6241,8 @@ void nested_vmx_hardware_unsetup(void)
> >  	}
> >  }
> >  
> > -__init int nested_vmx_hardware_setup(int (*exit_handlers[])(struct kvm_vcpu *))
> > +__init int nested_vmx_hardware_setup(struct kvm_x86_ops *ops,
> > +				     int (*exit_handlers[])(struct kvm_vcpu *))
> >  {
> >  	int i;
> >  
> > @@ -6277,12 +6278,12 @@ __init int nested_vmx_hardware_setup(int (*exit_handlers[])(struct kvm_vcpu *))
> >  	exit_handlers[EXIT_REASON_INVVPID]	= handle_invvpid;
> >  	exit_handlers[EXIT_REASON_VMFUNC]	= handle_vmfunc;
> >  
> > -	kvm_x86_ops->check_nested_events = vmx_check_nested_events;
> > -	kvm_x86_ops->get_nested_state = vmx_get_nested_state;
> > -	kvm_x86_ops->set_nested_state = vmx_set_nested_state;
> > -	kvm_x86_ops->get_vmcs12_pages = nested_get_vmcs12_pages;
> > -	kvm_x86_ops->nested_enable_evmcs = nested_enable_evmcs;
> > -	kvm_x86_ops->nested_get_evmcs_version = nested_get_evmcs_version;
> > +	ops->check_nested_events = vmx_check_nested_events;
> > +	ops->get_nested_state = vmx_get_nested_state;
> > +	ops->set_nested_state = vmx_set_nested_state;
> > +	ops->get_vmcs12_pages = nested_get_vmcs12_pages;
> > +	ops->nested_enable_evmcs = nested_enable_evmcs;
> > +	ops->nested_get_evmcs_version = nested_get_evmcs_version;
> 
> 
> A lazy guy like me would appreciate 'ops' -> 'vmx_x86_ops' rename as it
> would make 'git grep vmx_x86_ops' output more complete.

Ah, didn't think about that, obviously.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
