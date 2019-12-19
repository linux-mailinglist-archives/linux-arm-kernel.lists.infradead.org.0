Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B100126DFA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 20:29:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XhytrHSjBNqkBlYXAXxexUnxCs/zk32EM5rhbeBnC4=; b=JcNv/8/cT7vG4A
	FQqh3beczB1Gh2+0BTPUSMq0oOUcA96qcc9uQSlGdjHNM7Afrr7MlS55/f6RpPVlYs8SSwEqOltqt
	3JLTN1FATlN7RPesZWbEP75CXlQfCx8577HonXeCNA8makhT3LbLDSr0k/izOTGpMupfrggMgyVNV
	900d6WCI2I18fMLC3zQ5RjMuGaZqG8AG0oKHtZ/oIgUve+edD9KHm0CXqln6kthVJ+A7sqVH2kHDp
	LsaipGgxBRZRtB7XbqcNNgQDBnFMvPtnuw32YdTpFS4nR6g2MHBbzF7CoMHvp4mYVS6Kw1m4EXZ1t
	/T0P9vkLMfY6/mXQkE9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii1UM-0004K9-Q2; Thu, 19 Dec 2019 19:29:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii1UE-0004K1-RP
 for linux-arm-kernel@bombadil.infradead.org; Thu, 19 Dec 2019 19:29:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vAIxDhFZG4KNnWbcoM1z/eNh1hoZhidyKE5sG/UkD5w=; b=JqnujWVerCByZe4JXIDeE3r6vM
 9GL4PeDMQssx/qcARH8HQoV9flYLkfm2LPiITNaHGTNu5ffMzvBzt+CKz07TSHqObA0OW+BV4CaK9
 stRStbgtzkDIqRmR2e7kVZvbyz2AIqg5Gh0P6RR7gozxcxGweIbA7lsP1NKGyXUCNVILPRmDb10kh
 Iak1GpTAxeFb9CuFBnKtE03eoYIDMrgBIMf8R/QdKr/Om8CydDf69omEPOLI3CuezxXgOkxMdY/kk
 KMX9N7ctqfiUvw2uaE0msrl6b9APE4EIuma5H98PZnAhkcgja3Pj6Im9P2Sbpwn06PVVnHPl5KB/l
 8RuxVNfQ==;
Received: from us-smtp-1.mimecast.com ([205.139.110.61])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii1Ue-0004Yb-Q5
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 19:29:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576783732;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vAIxDhFZG4KNnWbcoM1z/eNh1hoZhidyKE5sG/UkD5w=;
 b=UQqnXXdBDGKP3+9Ry1tMnVfKZXec6Tx2/MONmteD49i1iQKr1iXIWWJGSk+D2HmKpH/j3Y
 /4Z+FJmofeXsafu03CYqTxr8zRIfdQGIGqYQC6jV1aR2WnB+qx4A+DXGXzxyXy+qUmu+Er
 Tfr9Nk9LjwdxeRhr3F/JK59vfeNkt7o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-22-7KuzwdpAO0uhdJbA8J3gpA-1; Thu, 19 Dec 2019 14:28:48 -0500
X-MC-Unique: 7KuzwdpAO0uhdJbA8J3gpA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B2CA18FF698;
 Thu, 19 Dec 2019 19:28:45 +0000 (UTC)
Received: from gondolin (ovpn-117-134.ams2.redhat.com [10.36.117.134])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 01C375DA70;
 Thu, 19 Dec 2019 19:28:37 +0000 (UTC)
Date: Thu, 19 Dec 2019 20:28:35 +0100
From: Cornelia Huck <cohuck@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 24/45] KVM: Add kvm_arch_vcpu_precreate() to handle
 pre-allocation issues
Message-ID: <20191219202835.06fc6f2f.cohuck@redhat.com>
In-Reply-To: <20191218215530.2280-25-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-25-sean.j.christopherson@intel.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_192952_955541_9F5B6F8A 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
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
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Greg Kurz <groug@kaod.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 James Hogan <jhogan@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019 13:55:09 -0800
Sean Christopherson <sean.j.christopherson@intel.com> wrote:

> Add a pre-allocation arch hook to handle checks that are currently done
> by arch specific code prior to allocating the vCPU object.  This paves
> the way for moving the allocation to common KVM code.
> 
> Acked-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/mips/kvm/mips.c       |  5 +++++
>  arch/powerpc/kvm/powerpc.c |  5 +++++
>  arch/s390/kvm/kvm-s390.c   | 12 ++++++++----
>  arch/x86/kvm/x86.c         | 14 +++++++++-----
>  include/linux/kvm_host.h   |  1 +
>  virt/kvm/arm/arm.c         | 21 +++++++++++----------
>  virt/kvm/kvm_main.c        |  4 ++++
>  7 files changed, 43 insertions(+), 19 deletions(-)
> 

(...)

> diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
> index d9e6bf3d54f0..57c6838dff37 100644
> --- a/arch/s390/kvm/kvm-s390.c
> +++ b/arch/s390/kvm/kvm-s390.c
> @@ -3035,15 +3035,19 @@ int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
>  	return rc;
>  }
>  
> +int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id)
> +{
> +	if (!kvm_is_ucontrol(kvm) && !sca_can_add_vcpu(kvm, id))
> +		return -EINVAL;
> +	return 0;
> +}
> +
>  struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
>  				      unsigned int id)
>  {
>  	struct kvm_vcpu *vcpu;
>  	struct sie_page *sie_page;
> -	int rc = -EINVAL;
> -
> -	if (!kvm_is_ucontrol(kvm) && !sca_can_add_vcpu(kvm, id))
> -		goto out;
> +	int rc;

You might want to make this

int rc = -ENOMEM;

instead.

>  
>  	rc = -ENOMEM;
>  

(...)

Regardless,

Reviewed-by: Cornelia Huck <cohuck@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
