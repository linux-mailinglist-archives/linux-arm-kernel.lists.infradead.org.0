Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBC61278C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 11:05:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CkdncVJwuePAtYqkm2lR+tzanvSgz/EVritQKDjFPQE=; b=WmIw0qtG0Nn+Dm
	8SXYWqXHcR5E6eLsMUdwXSOOix66v/dU5ED1r3uPDeKFiBe5vrliwSJQeXjDTicCgK4b5PCyGmWh2
	ZOe13bzmXXcba18e+0yFvgroPAid+v8zcNTQDWqm6MW70V/dKPtUsYBL0x4KPJqGtH4GRMB2h3tDj
	9IQWL0GYafXreujVq55Ze77vvxKUO7AbTPFjFukHmqc6unyCRWzDWDFOe6iy1RoY6uILLSGbZgapw
	sY9vO8GTvq+Hr1yzLZsF/tRAsN/AIAhVRmBGqaC/KXYLPJhXwtV3f9rgy/OQ52+KmwIVbq7Jb4ttx
	ZvTkGTTg5ju3ZGuj36YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiF9n-0005YD-TC; Fri, 20 Dec 2019 10:05:15 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiF9a-000550-On
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 10:05:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576836301;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QvzvT9KTfyHDuiqD0CTUkv7t6l7JQ96ZSNVZ4d8CIR8=;
 b=gkxxXlBHu5J2706ptdUZCM6/v6B8NR4eWjEZUeaj9uY7E+y8X8SBAHqwvuzqpq7c7Mivr5
 pu54kRFRSEegkqqj+wvrluBCwxCZdhcCWz3Ocsa+1G4CA7AXN/rqMgFxM85QwcqaE16dRx
 1RMAj58heVB8bj0trJl6LU2fOLwetSc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-6-Z1PL8IVtM1GYv6o7quyz3w-1; Fri, 20 Dec 2019 05:04:56 -0500
X-MC-Unique: Z1PL8IVtM1GYv6o7quyz3w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1D83A911F0;
 Fri, 20 Dec 2019 10:04:54 +0000 (UTC)
Received: from gondolin (dhcp-192-245.str.redhat.com [10.33.192.245])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EB85060C18;
 Fri, 20 Dec 2019 10:04:47 +0000 (UTC)
Date: Fri, 20 Dec 2019 11:04:45 +0100
From: Cornelia Huck <cohuck@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 35/45] KVM: s390: Manually invoke vcpu setup during
 kvm_arch_vcpu_create()
Message-ID: <20191220110445.3a42041a.cohuck@redhat.com>
In-Reply-To: <20191218215530.2280-36-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-36-sean.j.christopherson@intel.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_020502_888312_38E045DF 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
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

On Wed, 18 Dec 2019 13:55:20 -0800
Sean Christopherson <sean.j.christopherson@intel.com> wrote:

> Rename kvm_arch_vcpu_setup() to kvm_s390_vcpu_setup() and manually call
> the new function during kvm_arch_vcpu_create().  Define an empty
> kvm_arch_vcpu_setup() as it's still required for compilation.  This
> is effectively a nop as kvm_arch_vcpu_create() and kvm_arch_vcpu_setup()
> are called back-to-back by common KVM code.  Obsoleting
> kvm_arch_vcpu_setup() paves the way for its removal.
> 
> Note, gmap_remove() is now called if setup fails, as s390 was previously
> freeing it via kvm_arch_vcpu_destroy(), which is called by common KVM
> code if kvm_arch_vcpu_setup() fails.

Yes, this looks like the only thing that needs to be undone
(sca_add_vcpu() is done later in the process.)

Maybe mention that gmap_remove() is for ucontrol only? I was confused
for a moment :)


> 
> No functional change intended.
> 
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/s390/kvm/kvm-s390.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Reviewed-by: Cornelia Huck <cohuck@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
