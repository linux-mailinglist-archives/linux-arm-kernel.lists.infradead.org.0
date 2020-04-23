Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1366D1B596B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fODwLqK9zR3iymXbHbX1yjQbRr0XR39/Hut7nSRpybs=; b=V3x6JWSTX35cyd
	eUWSkegI0nuKIVm/Z/uDzZFbWJXcr9H5vTamCmFXP2Qb8LIBWamAoVdwKE8dny4ano59TplCSmImM
	22wAa0i5Z719wcII60NA6Wbya25Yp6DKRNrDApCZUeCC+iq6BYVqyV5XkCtr0HHVoE4dd7RY8P8w9
	z0fvSJrsz0qUZAtX0c9ZF8wZ3xE/1VN+9QtnyCeYvsuc9v4hIailzn4E2++TBIG7yTRTulC2D0bhg
	WKw/UJ0hQNRt0S17edn7ahkVuAH9jWGWvZY+/nGkvQxDMdgO8YPB0naUzAD7vrHimO9qt+XnOHd0p
	IIP8dlcSwZPECxnPc4ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZHI-0005N3-Vz; Thu, 23 Apr 2020 10:40:20 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZH9-0004tm-Tb
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:40:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587638409;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+r/PR2FbN4xLG8Nok2HJ4M/QJoOCF0Nk3Bss40sN0xs=;
 b=fXxvO3LT5E5bMJ1lS/1sLXYAIqgkDHXkc5UkqJjRX0qUciSWPapxhGwj54mmTVn/CpRB+O
 4jy9J/DLtX8z2ua/sgHBFvTLXswjXTk/RE26umit/WVVuyqpBvqEOVmcJvh4+czILVkARZ
 IsPtIUn6CMMqHUFe+Lv6dwoNkBOXhGc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-AkzxH94nMVKFKkFx37Ew_w-1; Thu, 23 Apr 2020 06:39:20 -0400
X-MC-Unique: AkzxH94nMVKFKkFx37Ew_w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 07DD5835B41;
 Thu, 23 Apr 2020 10:39:17 +0000 (UTC)
Received: from gondolin (ovpn-112-121.ams2.redhat.com [10.36.112.121])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 11C6260608;
 Thu, 23 Apr 2020 10:39:03 +0000 (UTC)
Date: Thu, 23 Apr 2020 12:39:01 +0200
From: Cornelia Huck <cohuck@redhat.com>
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Subject: Re: [PATCH v2 1/7] KVM: s390: clean up redundant 'kvm_run' parameters
Message-ID: <20200423123901.72a4c6a4.cohuck@redhat.com>
In-Reply-To: <5e1e126d-f1b0-196c-594b-4289d0afb9a8@linux.alibaba.com>
References: <20200422125810.34847-1-tianjia.zhang@linux.alibaba.com>
 <20200422125810.34847-2-tianjia.zhang@linux.alibaba.com>
 <20200422154543.2efba3dd.cohuck@redhat.com>
 <dc5e0fa3-558b-d606-bda9-ed281cf9e9ae@de.ibm.com>
 <20200422180403.03f60b0c.cohuck@redhat.com>
 <5e1e126d-f1b0-196c-594b-4289d0afb9a8@linux.alibaba.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_034012_049556_AE014AB4 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: wanpengli@tencent.com, kvm@vger.kernel.org, david@redhat.com,
 benh@kernel.crashing.org, heiko.carstens@de.ibm.com, peterx@redhat.com,
 linux-mips@vger.kernel.org, paulus@ozlabs.org, hpa@zytor.com,
 kvmarm@lists.cs.columbia.edu, linux-s390@vger.kernel.org,
 frankja@linux.ibm.com, maz@kernel.org, joro@8bytes.org, x86@kernel.org,
 Christian Borntraeger <borntraeger@de.ibm.com>, mingo@redhat.com,
 julien.thierry.kdev@gmail.com, thuth@redhat.com, gor@linux.ibm.com,
 suzuki.poulose@arm.com, kvm-ppc@vger.kernel.org, bp@alien8.de,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, jmattson@google.com,
 tsbogend@alpha.franken.de, christoffer.dall@arm.com,
 sean.j.christopherson@intel.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, mpe@ellerman.id.au, pbonzini@redhat.com,
 vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 23 Apr 2020 11:01:43 +0800
Tianjia Zhang <tianjia.zhang@linux.alibaba.com> wrote:

> On 2020/4/23 0:04, Cornelia Huck wrote:
> > On Wed, 22 Apr 2020 17:58:04 +0200
> > Christian Borntraeger <borntraeger@de.ibm.com> wrote:
> >   
> >> On 22.04.20 15:45, Cornelia Huck wrote:  
> >>> On Wed, 22 Apr 2020 20:58:04 +0800
> >>> Tianjia Zhang <tianjia.zhang@linux.alibaba.com> wrote:
> >>>      
> >>>> In the current kvm version, 'kvm_run' has been included in the 'kvm_vcpu'
> >>>> structure. Earlier than historical reasons, many kvm-related function  
> >>>
> >>> s/Earlier than/For/ ?
> >>>      
> >>>> parameters retain the 'kvm_run' and 'kvm_vcpu' parameters at the same time.
> >>>> This patch does a unified cleanup of these remaining redundant parameters.
> >>>>
> >>>> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
> >>>> ---
> >>>>   arch/s390/kvm/kvm-s390.c | 37 ++++++++++++++++++++++---------------
> >>>>   1 file changed, 22 insertions(+), 15 deletions(-)
> >>>>
> >>>> diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
> >>>> index e335a7e5ead7..d7bb2e7a07ff 100644
> >>>> --- a/arch/s390/kvm/kvm-s390.c
> >>>> +++ b/arch/s390/kvm/kvm-s390.c
> >>>> @@ -4176,8 +4176,9 @@ static int __vcpu_run(struct kvm_vcpu *vcpu)
> >>>>   	return rc;
> >>>>   }
> >>>>   
> >>>> -static void sync_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
> >>>> +static void sync_regs_fmt2(struct kvm_vcpu *vcpu)
> >>>>   {
> >>>> +	struct kvm_run *kvm_run = vcpu->run;
> >>>>   	struct runtime_instr_cb *riccb;
> >>>>   	struct gs_cb *gscb;
> >>>>   
> >>>> @@ -4235,7 +4236,7 @@ static void sync_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
> >>>>   		}
> >>>>   		if (vcpu->arch.gs_enabled) {
> >>>>   			current->thread.gs_cb = (struct gs_cb *)
> >>>> -						&vcpu->run->s.regs.gscb;
> >>>> +						&kvm_run->s.regs.gscb;  
> >>>
> >>> Not sure if these changes (vcpu->run-> => kvm_run->) are really worth
> >>> it. (It seems they amount to at least as much as the changes advertised
> >>> in the patch description.)
> >>>
> >>> Other opinions?  
> >>
> >> Agreed. It feels kind of random. Maybe just do the first line (move kvm_run from the
> >> function parameter list into the variable declaration)? Not sure if this is better.
> >>  
> > 
> > There's more in this patch that I cut... but I think just moving
> > kvm_run from the parameter list would be much less disruptive.
> >   
> 
> I think there are two kinds of code(`vcpu->run->` and `kvm_run->`), but 
> there will be more disruptive, not less.

I just fail to see the benefit; sure, kvm_run-> is convenient, but the
current code is just fine, and any rework should be balanced against
the cost (e.g. cluttering git annotate).


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
