Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F10C51E3B10
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P516auDYNRAxD1mi0R3Y1SyuswR/J5QInIHqL6rvqXg=; b=DO/Mss1oaElUr6oi/24FWo+t8
	r5t/Odu02yDOIMF9lFF3SGGFeTb1B6U+ALANJr2bsxcDx161XwV0tu202rzGEA6UJx/t1oJRBbDK1
	J8GD10oUSUuv1e9dASGkmwJM08iUsvhy4lMcvbA0zCkR4aADy/VypbZxkZZuz1q/oHEU0bd9g8ehi
	r+x+zkjxYDg4lYJ1/Dmc8lshoqDqn+OkyakKrPQNUDEq8UOHWQbIba7qvPklX9sy7LU7ZvxuKNB0F
	/9YxgfhJFlh0wscddWWFbr7cw1MERzlSgIJvON6v6UCSun5scEwblD9y/bJyf16ddJNsP0/PF4Sxl
	SsPRHDWzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdquV-00014e-2m; Wed, 27 May 2020 07:55:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdquH-00013o-Fa
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 07:55:22 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1272C206DF;
 Wed, 27 May 2020 07:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590566121;
 bh=jzOmuKHr7MlkKhB0uHGzKnveUIYCQtnDxs2JjhAI0Qw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IQfUN1SSOnwGbA+wQOaXCUtXhUe/1PYgxn+dBcov9P1qwLHE1jEo++wGH2RrhqjNF
 kWQpzqI991EMT2EFP/jykooRM94vdRXLiSCFAUmRwPm1btiDP9GdDvo90nhr7gPubd
 LG1u151RsnIxhDv4CAeA++tUcpAG6m+m9it6yv88=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jdquF-00FdO9-Bn; Wed, 27 May 2020 08:55:19 +0100
MIME-Version: 1.0
Date: Wed, 27 May 2020 08:55:19 +0100
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH] KVM: arm64: Allow in-atomic injection of SPIs
In-Reply-To: <47d6d521-f05e-86fe-4a94-ce21754100ae@huawei.com>
References: <20200526161136.451312-1-maz@kernel.org>
 <47d6d521-f05e-86fe-4a94-ce21754100ae@huawei.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <1d3658f4b92a690ba05367f2a22a7331@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, eric.auger@redhat.com,
 kernel-team@android.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_005521_564459_749A1761 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 2020-05-27 08:41, Zenghui Yu wrote:
> On 2020/5/27 0:11, Marc Zyngier wrote:
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
>>   arch/arm64/kvm/vgic/vgic-irqfd.c | 20 ++++++++++++++++----
>>   arch/arm64/kvm/vgic/vgic-its.c   |  3 +--
>>   2 files changed, 17 insertions(+), 6 deletions(-)
>> 
>> diff --git a/arch/arm64/kvm/vgic/vgic-irqfd.c 
>> b/arch/arm64/kvm/vgic/vgic-irqfd.c
>> index d8cdfea5cc96..11a9f81115ab 100644
>> --- a/arch/arm64/kvm/vgic/vgic-irqfd.c
>> +++ b/arch/arm64/kvm/vgic/vgic-irqfd.c
>> @@ -107,15 +107,27 @@ int kvm_arch_set_irq_inatomic(struct 
>> kvm_kernel_irq_routing_entry *e,
>>   			      struct kvm *kvm, int irq_source_id, int level,
>>   			      bool line_status)
> 
> ... and you may also need to update the comment on top of it to
> reflect this change.
> 
> /**
>  * kvm_arch_set_irq_inatomic: fast-path for irqfd injection
>  *
>  * Currently only direct MSI injection is supported.
>  */

As far as I can tell, it is still valid (at least from the guest's
perspective). You could in practice use that to deal with level
interrupts, but we only inject the rising edge on this path, never
the falling edge. So effectively, this is limited to edge interrupts,
which is mostly MSIs.

Unless you are thinking of something else which I would have missed?

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
