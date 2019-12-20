Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C881127878
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 10:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YfwdL7G4NT4bY1wUUy4qhOQ5gMjTwuBJsdq1mCmHEfk=; b=d3Etnu/7Y98d2i
	DePJNSI8ZZfxpqry6jnGcm/bFaY6aKHvcO6ZvsAUi3qx4RY8IMjk+mvQHGAIvjwJDgpBaPA7bxAw6
	Tcbpq76YN5ZmBg1AGJTRQTDfCSpTWjV9WYlboRUZ8B7oGgAVD0f5zHaYBONRP9hGhrD6HsFYQ4AEQ
	opSeewlfz+7Fjm39N766EousYJR9H2DoBMc3MqXWSevjYLpuX1b7BxAUiSp3aIv6juCJarFfkvz3K
	9xD2my0UqhC90zl3rDBWG5bzA9goac0hMitMGfqRGbeB3LKEPNZ3uDnO2xBLIV4wINJ59RQPZm1lx
	is25AnF8/Grxdoch3ydA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiEwE-0008JU-2n; Fri, 20 Dec 2019 09:51:14 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiEw5-0008IS-8A
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 09:51:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576835461;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=99eauVFberJXv2fQAwZtixMy3egbUdn3Of2y1/7QSBo=;
 b=IVln0UOQ+zyEwEHp55eUIZiZy/FvqttwaBseZUpaEi7qW2GKRk21WB3vBefLls1NXRIba7
 mTZBO7WsPcULlQ8CaX2KBHZHTnf2YOwlQPFXXXyOPKD/UeoA8CHkVQQ21Cdub+kB1Vagr4
 EjLD6zOjQX+oe7DSP6lxjcGM4VP2kJo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-232-KSOnSj7mOiGqSWdMbp1wmw-1; Fri, 20 Dec 2019 04:51:00 -0500
X-MC-Unique: KSOnSj7mOiGqSWdMbp1wmw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 04477189CD00;
 Fri, 20 Dec 2019 09:50:58 +0000 (UTC)
Received: from gondolin (dhcp-192-245.str.redhat.com [10.33.192.245])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B0B7C26FC4;
 Fri, 20 Dec 2019 09:50:51 +0000 (UTC)
Date: Fri, 20 Dec 2019 10:50:49 +0100
From: Cornelia Huck <cohuck@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 32/45] KVM: Move initialization of preempt notifier
 to kvm_vcpu_init()
Message-ID: <20191220105049.3fbdbbcc.cohuck@redhat.com>
In-Reply-To: <20191218215530.2280-33-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-33-sean.j.christopherson@intel.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_015105_363315_06BD7967 
X-CRM114-Status: GOOD (  13.91  )
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

On Wed, 18 Dec 2019 13:55:17 -0800
Sean Christopherson <sean.j.christopherson@intel.com> wrote:

> Initialize the preempt notifier immediately in kvm_vcpu_init() to pave
> the way for removing kvm_arch_vcpu_setup(), i.e. to allow arch specific
> code to call vcpu_load() during kvm_arch_vcpu_create().
> 
> Back when preemption support was added, the location of the call to init
> the preempt notifier was perfectly sane.  The overall vCPU creation flow
> featured a single arch specific hook and the preempt notifer was used
> immediately after its initialization (by vcpu_load()).  E.g.:
> 
>         vcpu = kvm_arch_ops->vcpu_create(kvm, n);
>         if (IS_ERR(vcpu))
>                 return PTR_ERR(vcpu);
> 
>         preempt_notifier_init(&vcpu->preempt_notifier, &kvm_preempt_ops);
> 
>         vcpu_load(vcpu);
>         r = kvm_mmu_setup(vcpu);
>         vcpu_put(vcpu);
>         if (r < 0)
>                 goto free_vcpu;
> 
> Today, the call to preempt_notifier_init() is sandwiched between two
> arch specific calls, kvm_arch_vcpu_create() and kvm_arch_vcpu_setup(),
> which needlessly forces x86 (and possibly others?) to split its vCPU
> creation flow.  Init the preempt notifier prior to any arch specific
> call so that each arch can independently decide how best to organize
> its creation flow.
> 
> Acked-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  virt/kvm/kvm_main.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Reviewed-by: Cornelia Huck <cohuck@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
