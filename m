Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84F4142211
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 04:34:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QW4maC1i0s3G7bCDwSMGpJ4xX3JyssT6HaWyEobNO0w=; b=SxumK6Qrr7qtRd
	p3XeIGRBqjE0qmfQy/3VwJ5Iv9McC2wqIJriBSyfnoOLneBKsWgfzj7ZRitiZ0hZpyjha0raIqwJT
	3EPmOK2HIowbtXoUYGeIfjNmW4EzhOAlf4Rc7483W+t7vVMUSMc7yixoBGQpOOfj7ry0EJkp10mDS
	xwkhRX279pt91f/8D1UJrVMHF5lSJi3yeGmyioN1I0MOzhGE6RNJqLeq1yxf67XIu5i2Cy/YBiH/h
	p2NQQE3qifnlpfP2A0gHu7KHuTddgpCeSgeMwiDT0pLDzh2ug0CsWPKCAM73v9H94acqCbKnLV8td
	RjctE+BQWHo2SYyC+vMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itNpw-0008B6-K8; Mon, 20 Jan 2020 03:34:48 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itNpR-00083g-Ap
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 03:34:18 +0000
Received: by ozlabs.org (Postfix, from userid 1003)
 id 481HMj2M00z9sRQ; Mon, 20 Jan 2020 14:34:09 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ozlabs.org; s=201707;
 t=1579491249; bh=6J0yPKo/kn+WbG/Jx05ZU6+6m/AlQNEvaTssDj+re3g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J+bOs+MonJV9E7pI5lPc45XM0RCY2NjfQhio5m6/DttgJzWYQ3HNgH1xNUIV476t1
 ts+G5ufVu2nlLxna51nc4RLV4i+BMxNIj8OtXWtlekVH++JUnEo50tNL+EcDdMfnkK
 0tKNeAH0zTIwzwjt/ddygd75H6MloM9kMawF09dx8px7N8Z19MLfg0DZDiMcl7Jxj9
 O7BDLwTM/8mWG+Mi5fGu3SEx+TpDcDN2c+ViWcUIssgNg+IQQZy1GA8JrmdTUkDUam
 B5LzqGm2UwjQc0vxq2SUD2N7ikcbM2cnwWO5UhkiGCsdd5z9MQlNdr+cIMYXi//Jw1
 JWsmSqN7nCbMg==
Date: Mon, 20 Jan 2020 14:00:41 +1100
From: Paul Mackerras <paulus@ozlabs.org>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 02/45] KVM: PPC: Book3S PR: Free shared page if mmu
 initialization fails
Message-ID: <20200120030041.GB14307@blackberry>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-3-sean.j.christopherson@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218215530.2280-3-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_193417_529329_DD80D903 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
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

On Wed, Dec 18, 2019 at 01:54:47PM -0800, Sean Christopherson wrote:
> Explicitly free the shared page if kvmppc_mmu_init() fails during
> kvmppc_core_vcpu_create(), as the page is freed only in
> kvmppc_core_vcpu_free(), which is not reached via kvm_vcpu_uninit().
> 
> Fixes: 96bc451a15329 ("KVM: PPC: Introduce shared page")
> Cc: stable@vger.kernel.org
> Reviewed-by: Greg Kurz <groug@kaod.org>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/powerpc/kvm/book3s_pr.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/powerpc/kvm/book3s_pr.c b/arch/powerpc/kvm/book3s_pr.c
> index ce4fcf76e53e..26ca62b6d773 100644
> --- a/arch/powerpc/kvm/book3s_pr.c
> +++ b/arch/powerpc/kvm/book3s_pr.c
> @@ -1806,10 +1806,12 @@ static struct kvm_vcpu *kvmppc_core_vcpu_create_pr(struct kvm *kvm,
>  
>  	err = kvmppc_mmu_init(vcpu);
>  	if (err < 0)
> -		goto uninit_vcpu;
> +		goto free_shared_page;
>  
>  	return vcpu;
>  
> +free_shared_page:
> +	free_page((unsigned long)vcpu->arch.shared);
>  uninit_vcpu:
>  	kvm_vcpu_uninit(vcpu);
>  free_shadow_vcpu:
> -- 
> 2.24.1

Looks correct.

Acked-by: Paul Mackerras <paulus@ozlabs.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
