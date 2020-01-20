Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7497142242
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 04:57:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gYCOQgVJHPYSZZR9MHPIMJIrEf4gNtjs0/fiLMFY+Bc=; b=BVsJL+TtzP6L1U
	QHl7oG5YN6GCiP1xHzKbbEGwtK/p0Zkxk9UGyNDR0y7Azt5QI9iejADAU/DiQMziZEj80paEX1/AF
	WQo4x/oy+nr1oGJAJi7Ldel/7QFsROo2yCx6+dmHIjKzeTfdlwtBo49tlZMx/QfXS+MXA1R3AmlCG
	AP2NbDHCVqh0WWFIqbR+MuXPLKLeHRoOrmPpDyi09q/ofvVQi60mHprDJkdQd7N1jRWYaKYyDcBF+
	hms33/+mLYTGXZHj9+DH8MBhwicF+cTFTU8OwP2zK+I+AkUegIqs6uU+U8gZWhaTX5qwq07PXeiKs
	+gCXN6rXJA3jXkrqxKew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itOBQ-0001Sh-FX; Mon, 20 Jan 2020 03:57:00 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itOBG-0001SO-4s
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 03:56:51 +0000
Received: by ozlabs.org (Postfix, from userid 1003)
 id 481Hsr4GqVz9sRK; Mon, 20 Jan 2020 14:56:48 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ozlabs.org; s=201707;
 t=1579492608; bh=lAGKBdtognRp9MuKBdR+5b2SjLz9x55FpMJWqSfQ6qY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dUAKAq0v+fVttWJxioZvNG0BtMhcZUat99t698VbzX1F/zlmSKB330Etdpr8dhc76
 LgQ0zJdbhuyR1H/vR0aYkaoRDTWcKoSWaqcXj6ErDly+Tn2yz7PSXHSNyMImPMl9tP
 xyavDDW3J6vU7xLt0EzjiAP8W7GOt+xqqQHnwlIoIwKSt8mNIQuX2kFmVUUOR/AB+1
 223kTr75BFvJJpA2PeWzgxHtia7sYccOJwK6fdQs+TGCFIgaTI9QqAo127pLrxO2BS
 vw/3QB56iD9jMWi9IFVNiAA2HJNbXbWM7qMcFTfg7AwfcraXsEohfC0CAqwPxUayYv
 d19QF6AMoz1qQ==
Date: Mon, 20 Jan 2020 14:56:44 +1100
From: Paul Mackerras <paulus@ozlabs.org>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 15/45] KVM: PPC: Move kvm_vcpu_init() invocation to
 common code
Message-ID: <20200120035644.GE14307@blackberry>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-16-sean.j.christopherson@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218215530.2280-16-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_195650_348446_94B4C1C7 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Cornelia Huck <cohuck@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, David Hildenbrand <david@redhat.com>,
 linux-mips@vger.kernel.org, kvm-ppc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 Greg Kurz <groug@kaod.org>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, James Hogan <jhogan@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 01:55:00PM -0800, Sean Christopherson wrote:
> Move the kvm_cpu_{un}init() calls to common PPC code as an intermediate
> step towards removing kvm_cpu_{un}init() altogether.
> 
> No functional change intended.

Another error to fix:

> diff --git a/arch/powerpc/kvm/booke.c b/arch/powerpc/kvm/booke.c
> index 047c9f707704..dd7440e50c7a 100644
> --- a/arch/powerpc/kvm/booke.c
> +++ b/arch/powerpc/kvm/booke.c
> @@ -2114,10 +2114,9 @@ int kvmppc_core_init_vm(struct kvm *kvm)
>  	return kvm->arch.kvm_ops->init_vm(kvm);
>  }
>  
> -int kvmppc_core_vcpu_create(struct kvm *kvm, struct kvm_vcpu *vcpu,
> -			    unsigned int id)
> +int kvmppc_core_vcpu_create(struct kvm_vcpu *vcpu)
>  {
> -	return kvm->arch.kvm_ops->vcpu_create(kvm, vcpu, id);
> +	return kvm->arch.kvm_ops->vcpu_create(vcpu);

This also needs s/kvm/vcpu->kvm/.

Paul.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
