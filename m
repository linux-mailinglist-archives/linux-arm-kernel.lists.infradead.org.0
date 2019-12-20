Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A4912803F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 17:01:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4HIr7FNlH2H45xaVQG9m+1nAY3ZRFEhgBQ3jMiN3VU=; b=T7Y9RNhcM7yAuS
	E5Y5sNPmis03KINNQ+mX688CF63wDaGs4d8Yn5KfHM5r73SeD2aHF+pubKSFyLGV/8aodbF9NmWZf
	dWnE0SF64qhruL7bORZNXmizXEtLiw+QPgytgczkbEzB9u5eOwtkLcsIQmudfiv2TD2u1zp4QcqWa
	CFXIrS7KrXmoL13+xxTYoWLDCyOnrd62g0zd29IA7dlk2HlY2lD02LEpxl4Of/D/hV3TXfGfdBVYQ
	xUgXq2931/JuxwlSWfqXllG9z3lBcInlT4H2rYiqsoYXfyJeRf7Dw29kDelBNFpQanDi/i94Nq3Ye
	qBT4Q3Rjl0e7zUhIX2jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiKiQ-0003Ro-Bn; Fri, 20 Dec 2019 16:01:22 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKi6-0003Pg-QN
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 16:01:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576857660;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=l025u6fxXKxK3eWge8nzvLZFfpRbb+ibWiXZ7ykWyCA=;
 b=dvHv6Hv30kGEzmfXFQxK5eCA4XHWZk0p5lo/hx0CIXNdjKXZQb8uTb7EKIDZ2WSrP3MzWn
 p/Jx+uvqNWdFdiQOHIIpOxF1mZHflqKl1cZaGuTdbS40SRUxDENTBAajVZKkjp6f+ZDj/o
 J5H+9jOPxpu5aTqsiuB6BgV4PSdfC2A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-416-uTYIN32MOW6V0xu7MdKMDA-1; Fri, 20 Dec 2019 11:00:58 -0500
X-MC-Unique: uTYIN32MOW6V0xu7MdKMDA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 019A6800D48;
 Fri, 20 Dec 2019 16:00:54 +0000 (UTC)
Received: from gondolin (dhcp-192-245.str.redhat.com [10.33.192.245])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5F3DF6046B;
 Fri, 20 Dec 2019 16:00:47 +0000 (UTC)
Date: Fri, 20 Dec 2019 17:00:45 +0100
From: Cornelia Huck <cohuck@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 30/45] KVM: Move vcpu alloc and init invocation to
 common code
Message-ID: <20191220170045.725fb05c.cohuck@redhat.com>
In-Reply-To: <20191220155330.GA21021@linux.intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-31-sean.j.christopherson@intel.com>
 <20191220103325.34fc2bf0.cohuck@redhat.com>
 <20191220155330.GA21021@linux.intel.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_080102_926618_93300ECC 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, 20 Dec 2019 07:53:30 -0800
Sean Christopherson <sean.j.christopherson@intel.com> wrote:

> On Fri, Dec 20, 2019 at 10:33:25AM +0100, Cornelia Huck wrote:
> > On Wed, 18 Dec 2019 13:55:15 -0800
> > Sean Christopherson <sean.j.christopherson@intel.com> wrote:  
> > > +int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
> > >  {
> > > -	struct kvm_vcpu *vcpu;
> > >  	struct sie_page *sie_page;
> > >  	int rc;
> > >  
> > > -	rc = -ENOMEM;
> > > -
> > > -	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
> > > -	if (!vcpu)
> > > -		goto out;
> > > -
> > > -	rc = kvm_vcpu_init(vcpu, kvm, id);
> > > -	if (rc)
> > > -		goto out_free_cpu;
> > > -
> > > -	rc = -ENOMEM;
> > > -
> > >  	BUILD_BUG_ON(sizeof(struct sie_page) != 4096);
> > >  	sie_page = (struct sie_page *) get_zeroed_page(GFP_KERNEL);
> > >  	if (!sie_page)
> > > -		goto out_uninit_vcpu;
> > > +		return -ENOMEM;
> > >  
> > >  	vcpu->arch.sie_block = &sie_page->sie_block;
> > >  	vcpu->arch.sie_block->itdba = (unsigned long) &sie_page->itdb;
> > > @@ -3087,15 +3070,11 @@ struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
> > >  		 vcpu->arch.sie_block);
> > >  	trace_kvm_s390_create_vcpu(id, vcpu, vcpu->arch.sie_block);
> > >  
> > > -	return vcpu;
> > > +	return 0;
> > > +
> > >  out_free_sie_block:
> > >  	free_page((unsigned long)(vcpu->arch.sie_block));
> > > -out_uninit_vcpu:
> > > -	kvm_vcpu_uninit(vcpu);
> > > -out_free_cpu:
> > > -	kmem_cache_free(kvm_vcpu_cache, vcpu);
> > > -out:
> > > -	return ERR_PTR(rc);
> > > +	return rc;  
> > 
> > This is getting a bit hard to follow across the patches, but I think rc
> > is now only set for ucontrol guests. So this looks correct right now,
> > but feels a bit brittle... should we maybe init rc to 0 and always
> > return rc instead?  
> 
> Yes, but only for a few patches until kvm_s390_vcpu_setup() is introduced,
> at which point @rc is unconditionally set at the end.

Indeed; so feel free to leave this as-is.

Reviewed-by: Cornelia Huck <cohuck@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
