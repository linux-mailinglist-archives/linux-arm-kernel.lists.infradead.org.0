Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E67BC1F1E42
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 19:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MPH2Lq7J1yAKBMRBu0Jh4UoKxYyXJJRwzn22bO+ClW0=; b=aHeaglD4WfowBUpjwkT4X9pSU
	joChxQsN0CrW7wEPyHP8pKlP6QZuZ/3Vro31sJAqlRojST5HmTeesmawkHnjnpocBJZgPVaCS311l
	Sc2UPBnv0pcwjn4/musV8mUohxaOkQ8WN5wOa5XhEUsKwB1ehF1/7GkYVCxaMInYjFeEYxGN6Ip8w
	kyFYzrhGwWp8/Lpmp9zjGdXw/oS/Bh1UHbNpFWZCt/hoxykfTll2X+lCcyhKWBoH4w7gi6zy/Iudr
	/deXOs+YtbOVa+We7S9CIQ844Z8gWMfgSM3Zg37onSDGFMQy2TrHnOs8vpCGte/z1jBVwht2p4Zrn
	gjqwVCaIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiLQZ-0000aI-8c; Mon, 08 Jun 2020 17:19:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiLQR-0000Zn-M6
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 17:19:09 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F9DB206C3;
 Mon,  8 Jun 2020 17:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591636747;
 bh=eN+Clm/cvykfn8Xvcj8t9z6v+LWSyFOpU01cRVXweQg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=siCGluGb7baF8rUg5uT2B8cjcn9mEflYF4YucD+8g9aqI5NtviAuyvsYxSA1flASp
 kyNu+G/yQRdqy5+2ovlmgJeg/zKHSqrUowrRe5ofRYHtVY+fiB+NJcrJosIg2GGbjn
 fqFzHOiKUPoPBSrHC6EWxHCbfpF68oK++mPhopMw=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jiLQP-001B5a-O4; Mon, 08 Jun 2020 18:19:05 +0100
MIME-Version: 1.0
Date: Mon, 08 Jun 2020 18:19:05 +0100
From: Marc Zyngier <maz@kernel.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH] KVM: arm64: Allow in-atomic injection of SPIs
In-Reply-To: <0a3875f0-9918-51f3-08eb-29a72eeb1306@redhat.com>
References: <20200526161136.451312-1-maz@kernel.org>
 <0a3875f0-9918-51f3-08eb-29a72eeb1306@redhat.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <e3a8ea9947616f895021310127fe1477@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: eric.auger@redhat.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_101907_768499_8DE9036F 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kernel-team@android.com, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

On 2020-06-08 17:58, Auger Eric wrote:
> Hi Marc,
> 
> On 5/26/20 6:11 PM, Marc Zyngier wrote:
>> On a system that uses SPIs to implement MSIs (as it would be
>> the case on a GICv2 system exposing a GICv2m to its guests),
>> we deny the possibility of injecting SPIs on the in-atomic
>> fast-path.
>> 
>> This results in a very large amount of context-switches
>> (roughly equivalent to twice the interrupt rate) on the host,
>> and suboptimal performance for the guest (as measured with
>> a test workload involving a virtio interface backed by vhost-net).
>> Given that GICv2 systems are usually on the low-end of the spectrum
>> performance wise, they could do without the aggravation.
>> 
>> We solved this for GICv3+ITS by having a translation cache. But
>> SPIs do not need any extra infrastructure, and can be immediately
>> injected in the virtual distributor as the locking is already
>> heavy enough that we don't need to worry about anything.
>> 
>> This halves the number of context switches for the same workload.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  arch/arm64/kvm/vgic/vgic-irqfd.c | 20 ++++++++++++++++----
>>  arch/arm64/kvm/vgic/vgic-its.c   |  3 +--
>>  2 files changed, 17 insertions(+), 6 deletions(-)
>> 
>> diff --git a/arch/arm64/kvm/vgic/vgic-irqfd.c 
>> b/arch/arm64/kvm/vgic/vgic-irqfd.c
>> index d8cdfea5cc96..11a9f81115ab 100644
>> --- a/arch/arm64/kvm/vgic/vgic-irqfd.c
>> +++ b/arch/arm64/kvm/vgic/vgic-irqfd.c
> There is still a comment above saying
>  * Currently only direct MSI injection is supported.

I believe this comment to be correct. There is no path other
than MSI injection that leads us here. Case in point, we only
ever inject a rising edge through this API, never a falling one.

>> @@ -107,15 +107,27 @@ int kvm_arch_set_irq_inatomic(struct 
>> kvm_kernel_irq_routing_entry *e,
>>  			      struct kvm *kvm, int irq_source_id, int level,
>>  			      bool line_status)
>>  {
>> -	if (e->type == KVM_IRQ_ROUTING_MSI && vgic_has_its(kvm) && level) {
>> +	if (!level)
>> +		return -EWOULDBLOCK;
>> +
>> +	switch (e->type) {
>> +	case KVM_IRQ_ROUTING_MSI: {
>>  		struct kvm_msi msi;
>> 
>> +		if (!vgic_has_its(kvm))
>> +			return -EINVAL;
> Shouldn't we return -EWOULDBLOCK by default?
> QEMU does not use that path with GICv2m but in kvm_set_routing_entry() 
> I
> don't see any check related to the ITS.

Fair enough. I really don't anticipate anyone to be using
KVM_IRQ_ROUTING_MSI with anything but the ITS, but who knows,
people are crazy! ;-)

>> +
>>  		kvm_populate_msi(e, &msi);
>> -		if (!vgic_its_inject_cached_translation(kvm, &msi))
>> -			return 0;
>> +		return vgic_its_inject_cached_translation(kvm, &msi);
> 
>>  	}
>> 
>> -	return -EWOULDBLOCK;
>> +	case KVM_IRQ_ROUTING_IRQCHIP:
>> +		/* Injecting SPIs is always possible in atomic context */
>> +		return vgic_irqfd_set_irq(e, kvm, irq_source_id, 1, line_status);
> what about the 	mutex_lock(&kvm->lock) called from within
> vgic_irqfd_set_irq/kvm_vgic_inject_irq/vgic_lazy_init

Holy crap. The lazy GIC init strikes again :-(.
How about this on top of the existing patch:

diff --git a/arch/arm64/kvm/vgic/vgic-irqfd.c 
b/arch/arm64/kvm/vgic/vgic-irqfd.c
index 11a9f81115ab..6e5ca04d5589 100644
--- a/arch/arm64/kvm/vgic/vgic-irqfd.c
+++ b/arch/arm64/kvm/vgic/vgic-irqfd.c
@@ -115,19 +115,23 @@ int kvm_arch_set_irq_inatomic(struct 
kvm_kernel_irq_routing_entry *e,
  		struct kvm_msi msi;

  		if (!vgic_has_its(kvm))
-			return -EINVAL;
+			break;

  		kvm_populate_msi(e, &msi);
  		return vgic_its_inject_cached_translation(kvm, &msi);
  	}

  	case KVM_IRQ_ROUTING_IRQCHIP:
-		/* Injecting SPIs is always possible in atomic context */
+		/*
+		 * Injecting SPIs is always possible in atomic context
+		 * as long as the damn vgic is initialized.
+		 */
+		if (unlikely(!vgic_initialized(kvm)))
+			break;
  		return vgic_irqfd_set_irq(e, kvm, irq_source_id, 1, line_status);
-
-	default:
-		return -EWOULDBLOCK;
  	}
+
+	return -EWOULDBLOCK;
  }

  int kvm_vgic_setup_default_irq_routing(struct kvm *kvm)


Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
