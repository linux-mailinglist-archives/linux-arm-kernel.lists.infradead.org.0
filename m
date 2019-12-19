Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C87126E15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 20:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5b3EGu+TvhDEuqt89/uvlJgHmkmCBuwGiKgM3m3iV4=; b=C0blXhRcnZAO26
	a2l/9S8nkbQSON0Ppp5aPbNPgVPIZ/PjwGW0nXtVXyhutn1lkdp91lGux9vrTeLsb6sgx5zUOJUbP
	13AdkAOIk1S61JNlTERxyL7ha3Gy6LQJsLqTXOvtUyyrsztYDnUAUXdX03Zklj1vJmlrl5aKM6rsa
	SJqQgRwMCcmcBNPY7PMX4w3QqvTYxe8Yt73wfLHMgQkrHx/WNMuhQldXxDhkyseX2oXWhXh/RWJa7
	VF/oau4w1HGluMIx2EAAF7wfI/vi11lRwFNGBx7kfWDl+qXqWRBmWZiFaiPwQo8KtKHFl45+HnKS9
	nuLAjDXU9m3VybOZhTEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii1eG-0008JN-10; Thu, 19 Dec 2019 19:39:48 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii1e8-0008II-GW
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 19:39:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576784377;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=prVadGfe425gEg8krjR8jjvWKpR2WFGHzNs5x3wZo7U=;
 b=bfRb5z/yHofqSYv+yTul2/zihQ0v44dVMuAb8dNCgJUS0dC6mq8j0kjgbAHuzEy7SPwrWa
 XPwbBkSrnM6AENy5zgJp2flSFDxJBAn4hTLdyl8XSIXY046makft5Y3uUanQ6dBNq4s7lu
 WSEhR+82jRU7MAephLbEdtg4phXrKF8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-423-jCat3nvKPdKu8c4bFYo-KA-1; Thu, 19 Dec 2019 14:39:32 -0500
X-MC-Unique: jCat3nvKPdKu8c4bFYo-KA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 944D8108594D;
 Thu, 19 Dec 2019 19:39:29 +0000 (UTC)
Received: from gondolin (ovpn-117-134.ams2.redhat.com [10.36.117.134])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 74E355D9E2;
 Thu, 19 Dec 2019 19:39:20 +0000 (UTC)
Date: Thu, 19 Dec 2019 20:39:17 +0100
From: Cornelia Huck <cohuck@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 25/45] KVM: s390: Move guts of kvm_arch_vcpu_init()
 into kvm_arch_vcpu_create()
Message-ID: <20191219203917.79916aad.cohuck@redhat.com>
In-Reply-To: <20191218215530.2280-26-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-26-sean.j.christopherson@intel.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_113940_629163_C1E326D0 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, 18 Dec 2019 13:55:10 -0800
Sean Christopherson <sean.j.christopherson@intel.com> wrote:

> Move all of kvm_arch_vcpu_init(), which is invoked at the very end of
> kvm_vcpu_init(), into kvm_arch_vcpu_create() in preparation of moving
> the call to kvm_vcpu_init().  Moving kvm_vcpu_init() is itself a
> preparatory step for moving allocation and initialization to common KVM
> code.
> 
> No functional change inteded.
> 
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/s390/kvm/kvm-s390.c | 62 ++++++++++++++++++++++------------------
>  1 file changed, 34 insertions(+), 28 deletions(-)

Reviewed-by: Cornelia Huck <cohuck@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
