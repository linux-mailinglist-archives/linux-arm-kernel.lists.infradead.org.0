Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A16BE2AC0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 09:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vxmQ/ZnElsF8JoWv566wBWw0PlZk/3J3LbSCFHgJ5rw=; b=oiQ2BGj6LnZRw+
	pvut0K826PntHSCxx2WTPgb8Im0Ghq+wTedh88bno0/wkh4xbxDQfm4FnduTsigrzCcww7RVmy+Ub
	rRmWukuUYQt4uiS6hNeEu8TN22+PW5RwMmkVmQ4/f6G9kjDLYJr2Oe6W2uC9sh/NcxAxwTgKZu1C0
	E0ZB9AviA5gpxglNwMjkngjtEw8eYP9hnY0n92c6NE5MbcZQOu19vpUjfPPx6PvT5qCr4JXWKmAta
	dSN102+Q0vngUO+H52i721ZPlnX8GwoC0GrthLpUlAFoWLQbYLq9UlVgRCvb0+R+6x49BZXaWnHg4
	G+945MCf6yWm3LqRlg1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNXCZ-00077L-EB; Thu, 24 Oct 2019 07:06:31 +0000
Received: from 5.mo7.mail-out.ovh.net ([178.32.120.239])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNXCP-000705-5g
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 07:06:22 +0000
Received: from player737.ha.ovh.net (unknown [10.108.57.188])
 by mo7.mail-out.ovh.net (Postfix) with ESMTP id 5BB5D138CDF
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:06:17 +0200 (CEST)
Received: from kaod.org (lns-bzn-46-82-253-208-248.adsl.proxad.net
 [82.253.208.248]) (Authenticated sender: groug@kaod.org)
 by player737.ha.ovh.net (Postfix) with ESMTPSA id DFAA11E5A0F5;
 Thu, 24 Oct 2019 07:05:28 +0000 (UTC)
Date: Thu, 24 Oct 2019 09:05:27 +0200
From: Greg Kurz <groug@kaod.org>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH 02/45] KVM: PPC: Book3S PR: Free shared page if mmu
 initialization fails
Message-ID: <20191024090527.6b73a3bc@bahia.lan>
In-Reply-To: <20191022015925.31916-3-sean.j.christopherson@intel.com>
References: <20191022015925.31916-1-sean.j.christopherson@intel.com>
 <20191022015925.31916-3-sean.j.christopherson@intel.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 5577708138938931537
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrledtgdduudegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_000621_355462_917E164D 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.32.120.239 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 Radim =?UTF-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 James Hogan <jhogan@kernel.org>, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, David Hildenbrand <david@redhat.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 18:58:42 -0700
Sean Christopherson <sean.j.christopherson@intel.com> wrote:

> Explicitly free the shared page if kvmppc_mmu_init() fails during
> kvmppc_core_vcpu_create(), as the page is freed only in
> kvmppc_core_vcpu_free(), which is not reached via kvm_vcpu_uninit().
> 
> Fixes: 96bc451a15329 ("KVM: PPC: Introduce shared page")
> Cc: stable@vger.kernel.org
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---

Reviewed-by: Greg Kurz <groug@kaod.org>

>  arch/powerpc/kvm/book3s_pr.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/powerpc/kvm/book3s_pr.c b/arch/powerpc/kvm/book3s_pr.c
> index cc65af8fe6f7..3f6ad3f58628 100644
> --- a/arch/powerpc/kvm/book3s_pr.c
> +++ b/arch/powerpc/kvm/book3s_pr.c
> @@ -1769,10 +1769,12 @@ static struct kvm_vcpu *kvmppc_core_vcpu_create_pr(struct kvm *kvm,
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


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
