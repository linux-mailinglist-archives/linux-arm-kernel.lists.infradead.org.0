Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E59561B4975
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 18:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSvxMXvPSTeY6+YTIxPruC3za0fxMrP8kmJMog9yaFc=; b=HcSy5RgzsaKXnC
	SNSs4uO1XLr4BVzMjYjv89fxN6zWv0MlVDP/Q0gjTNoRkA0LUnHDbHRJzA92Lfno8HfWMHrRJ69jK
	vowbtEcdt9/f65zDZRoDMERVppUgGuYvmkdYOq2AM+7KjvFfQE+PWy9To8vdBMi+2z5TB/H7K6gmh
	XifQ0VUynGpZpCTIfjUcLxWw/fKmrsITJF4epAz7hfznn40F5Ww4/WwdymJYGPhLbLIBf336DLE9u
	u5cFMl+Zv9VvhzRq3snYp8F4M/axz42MiCWMQp52M5/+JGr0OxeHtCm//hEhS462OdexPT3M6BDZo
	85NKUvfljem8ttfB0dUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRHrZ-0001R7-41; Wed, 22 Apr 2020 16:04:37 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRHrQ-0001PF-1f
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 16:04:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587571465;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=amvTuf5wEMJvqdESpaeyMURJivlfDh/jRY31BzCdBPU=;
 b=EtHWvqtxOTLXR8bJT99Zq8deSk6Z7h1+texHGF9Tb0JYbiRViqz4/PtUcrz4OtqR6cLqRB
 gD9v7wYqYQRoxmlh1r8O+jXW6wykkIh6fMLLwFOrwOTDbuhGdOTxEH++cLRr87DzltkNTt
 zzOSMH/WkiUMkDx9AAGkGbvQCsCIoOc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-177-5-QqutxDOl-cVj9GG-2gZA-1; Wed, 22 Apr 2020 12:04:23 -0400
X-MC-Unique: 5-QqutxDOl-cVj9GG-2gZA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6898E107ACC9;
 Wed, 22 Apr 2020 16:04:19 +0000 (UTC)
Received: from gondolin (ovpn-112-195.ams2.redhat.com [10.36.112.195])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DE51B19C70;
 Wed, 22 Apr 2020 16:04:05 +0000 (UTC)
Date: Wed, 22 Apr 2020 18:04:03 +0200
From: Cornelia Huck <cohuck@redhat.com>
To: Christian Borntraeger <borntraeger@de.ibm.com>
Subject: Re: [PATCH v2 1/7] KVM: s390: clean up redundant 'kvm_run' parameters
Message-ID: <20200422180403.03f60b0c.cohuck@redhat.com>
In-Reply-To: <dc5e0fa3-558b-d606-bda9-ed281cf9e9ae@de.ibm.com>
References: <20200422125810.34847-1-tianjia.zhang@linux.alibaba.com>
 <20200422125810.34847-2-tianjia.zhang@linux.alibaba.com>
 <20200422154543.2efba3dd.cohuck@redhat.com>
 <dc5e0fa3-558b-d606-bda9-ed281cf9e9ae@de.ibm.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_090428_165126_EAB5B809 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: wanpengli@tencent.com, kvm@vger.kernel.org, david@redhat.com,
 benh@kernel.crashing.org, heiko.carstens@de.ibm.com, peterx@redhat.com,
 linux-mips@vger.kernel.org, paulus@ozlabs.org, hpa@zytor.com,
 kvmarm@lists.cs.columbia.edu, linux-s390@vger.kernel.org,
 frankja@linux.ibm.com, maz@kernel.org, joro@8bytes.org, x86@kernel.org,
 mingo@redhat.com, julien.thierry.kdev@gmail.com, thuth@redhat.com,
 gor@linux.ibm.com, suzuki.poulose@arm.com, kvm-ppc@vger.kernel.org,
 bp@alien8.de, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 jmattson@google.com, tsbogend@alpha.franken.de,
 Tianjia Zhang <tianjia.zhang@linux.alibaba.com>, christoffer.dall@arm.com,
 sean.j.christopherson@intel.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, mpe@ellerman.id.au, pbonzini@redhat.com,
 vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 22 Apr 2020 17:58:04 +0200
Christian Borntraeger <borntraeger@de.ibm.com> wrote:

> On 22.04.20 15:45, Cornelia Huck wrote:
> > On Wed, 22 Apr 2020 20:58:04 +0800
> > Tianjia Zhang <tianjia.zhang@linux.alibaba.com> wrote:
> >   
> >> In the current kvm version, 'kvm_run' has been included in the 'kvm_vcpu'
> >> structure. Earlier than historical reasons, many kvm-related function  
> > 
> > s/Earlier than/For/ ?
> >   
> >> parameters retain the 'kvm_run' and 'kvm_vcpu' parameters at the same time.
> >> This patch does a unified cleanup of these remaining redundant parameters.
> >>
> >> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
> >> ---
> >>  arch/s390/kvm/kvm-s390.c | 37 ++++++++++++++++++++++---------------
> >>  1 file changed, 22 insertions(+), 15 deletions(-)
> >>
> >> diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
> >> index e335a7e5ead7..d7bb2e7a07ff 100644
> >> --- a/arch/s390/kvm/kvm-s390.c
> >> +++ b/arch/s390/kvm/kvm-s390.c
> >> @@ -4176,8 +4176,9 @@ static int __vcpu_run(struct kvm_vcpu *vcpu)
> >>  	return rc;
> >>  }
> >>  
> >> -static void sync_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
> >> +static void sync_regs_fmt2(struct kvm_vcpu *vcpu)
> >>  {
> >> +	struct kvm_run *kvm_run = vcpu->run;
> >>  	struct runtime_instr_cb *riccb;
> >>  	struct gs_cb *gscb;
> >>  
> >> @@ -4235,7 +4236,7 @@ static void sync_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
> >>  		}
> >>  		if (vcpu->arch.gs_enabled) {
> >>  			current->thread.gs_cb = (struct gs_cb *)
> >> -						&vcpu->run->s.regs.gscb;
> >> +						&kvm_run->s.regs.gscb;  
> > 
> > Not sure if these changes (vcpu->run-> => kvm_run->) are really worth
> > it. (It seems they amount to at least as much as the changes advertised
> > in the patch description.)
> > 
> > Other opinions?  
> 
> Agreed. It feels kind of random. Maybe just do the first line (move kvm_run from the
> function parameter list into the variable declaration)? Not sure if this is better.
> 

There's more in this patch that I cut... but I think just moving
kvm_run from the parameter list would be much less disruptive.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
