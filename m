Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD4314EC4C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 13:08:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x36rT51BZN1QX9rGR8y3SimOf0pO9yk+20X6h5hRflY=; b=GLHv0cj+Ow0fDC
	oSCRcMuZgtutLEamQs9KZnuonaPOvDLd4QcwSkE5pJ3iGt4Whv3f4VmJTqQ5NK1ZIzZBp1qT4P6Zn
	kHt3RMuhqrDBC5VbQJnriEZ8Mh3EoxWTO0g6Kd/o20sdMxfC69uJ/OQ3CovBuc2+v32cIsAmger71
	BdHsaklVEfu+ISNzFzJ2aCCnhV9DP1q+gP/8bSP+Tk48IWPniGbPmRogpimW2eFaonZae7aULORC5
	/rPRTawgNKiMteDmgvXP56EQw1T1TIdB83noS6VThCYYj2NzDcAhewmMM8nyvkiHvdW9wFYO7HuNh
	/KLx14eZ8DLY7V1hHREg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixV6J-00014S-9E; Fri, 31 Jan 2020 12:08:43 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixV68-000140-Mv
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 12:08:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580472510;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=O8Za+S+RT8N2UwLMl2kq7dZ6BHikmL9Pgno023mZKr8=;
 b=dLrpOCao8Ad6VfdE8Otqi7oyHOqzC07Xf1ypnmlTiVhmslj0/M1ZeoDTWM6KyJl+WATqqh
 KF2CBVlZMf+zr+hsyc7+KnsbCAWx8PgG/rRDO4+IJT1lf6LGPjGYJ/3K212nHqeR0dtrQD
 zLA6bg8C+WlYFunLtqfN2cS713GFa/c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-136-Ih36PAVQOHGA5sgccpxLOw-1; Fri, 31 Jan 2020 07:06:36 -0500
X-MC-Unique: Ih36PAVQOHGA5sgccpxLOw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 738599275B;
 Fri, 31 Jan 2020 12:06:33 +0000 (UTC)
Received: from gondolin (dhcp-192-195.str.redhat.com [10.33.192.195])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 46DCC5C3FA;
 Fri, 31 Jan 2020 12:06:18 +0000 (UTC)
Date: Fri, 31 Jan 2020 13:06:15 +0100
From: Cornelia Huck <cohuck@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH 1/5] KVM: Pass kvm_init()'s opaque param to additional
 arch funcs
Message-ID: <20200131130615.3b21b28d.cohuck@redhat.com>
In-Reply-To: <20200130001023.24339-2-sean.j.christopherson@intel.com>
References: <20200130001023.24339-1-sean.j.christopherson@intel.com>
 <20200130001023.24339-2-sean.j.christopherson@intel.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_040832_966751_A51D611A 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Jan 2020 16:10:19 -0800
Sean Christopherson <sean.j.christopherson@intel.com> wrote:

> Pass @opaque to kvm_arch_hardware_setup() and
> kvm_arch_check_processor_compat() to allow architecture specific code to
> reference @opaque without having to stash it away in a temporary global
> variable.  This will enable x86 to separate its vendor specific callback
> ops, which are passed via @opaque, into "init" and "runtime" ops without
> having to stash away the "init" ops.
> 
> No functional change intended.
> 
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/mips/kvm/mips.c       |  4 ++--
>  arch/powerpc/kvm/powerpc.c |  4 ++--
>  arch/s390/kvm/kvm-s390.c   |  4 ++--
>  arch/x86/kvm/x86.c         |  4 ++--
>  include/linux/kvm_host.h   |  4 ++--
>  virt/kvm/arm/arm.c         |  4 ++--
>  virt/kvm/kvm_main.c        | 18 ++++++++++++++----
>  7 files changed, 26 insertions(+), 16 deletions(-)

> diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
> index eb3709d55139..5ad252defa54 100644
> --- a/virt/kvm/kvm_main.c
> +++ b/virt/kvm/kvm_main.c
> @@ -4345,14 +4345,22 @@ struct kvm_vcpu * __percpu *kvm_get_running_vcpus(void)
>          return &kvm_running_vcpu;
>  }
>  
> -static void check_processor_compat(void *rtn)
> +struct kvm_cpu_compat_check {
> +	void *opaque;
> +	int *ret;
> +};
> +
> +static void check_processor_compat(void *data)
>  {
> -	*(int *)rtn = kvm_arch_check_processor_compat();
> +	struct kvm_cpu_compat_check *c = data;
> +
> +	*c->ret = kvm_arch_check_processor_compat(c->opaque);
>  }

This function also looks better now :)

Reviewed-by: Cornelia Huck <cohuck@redhat.com>
Tested-by: Cornelia Huck <cohuck@redhat.com> #s390


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
