Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1AA1BF6F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 13:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Nhk9rnCD075fFmFCM6Pj8v1HWhbVsIEzfyx0igHfGxM=; b=OSO17VwZMlXHNdcdA92m5CDJP
	zpUuLAX8HDzvCF0Rd8QEx7/xSfNe3YFsRd7kyykP343KZgbpomP7AvUd64lRZuyW+slBnN6NkYAZ6
	NfNxG50g/9b67yQu3JkucCugBbhcRLeiSJRrj64286NzU1AyyUHu2P38rjWt3h+vs0Gu+xGt8txVZ
	gG6aW/yNiqHHAsWav3cJF8TCzB+2NGDZFA2BDWobS/XpzWmbv4QKYA6uYuqQhReSxry+OyZSsC/w8
	dISldrazirVpXIMPYfcO1xALOaowrzEM0nb7Qp45TagtUK2sM2pvZAV00mG14RKavegOiVr/qh3ht
	lV15T5PeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU7XW-000859-Ay; Thu, 30 Apr 2020 11:39:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU7XK-00084d-6E
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 11:39:27 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE2192076D;
 Thu, 30 Apr 2020 11:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588246765;
 bh=2rv/Th+U2tvUwoYnI9XJB61R1uEh9ov5BSgYIC5BZ7Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=k29nbFT/ev2JNmZkIbIni5U6RVaAGwptOaa/IDd9bcTSXbPY2vVCM9jpToRNnIHv8
 r9meXIEYdgsv59NHVeo/qW74RI3hVsR0P2ropIAUdsdmYpEX/OHdGqS8CG5u8nwsY0
 iflC7ZZNThZCxtLxZoJiH6z06rlyNZrLdZGiEIPg=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jU7XI-0080nh-3G; Thu, 30 Apr 2020 12:39:24 +0100
MIME-Version: 1.0
Date: Thu, 30 Apr 2020 12:39:24 +0100
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH] KVM: arm64: vgic-v4: Initialize GICv4.1 even in the
 absence of a virtual ITS
In-Reply-To: <5b23b938-f71f-5523-6d7e-027bcca98dd4@huawei.com>
References: <20200425094426.162962-1-maz@kernel.org>
 <5b23b938-f71f-5523-6d7e-027bcca98dd4@huawei.com>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <cd9743fabceee2a821808046081930cd@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, eric.auger@redhat.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_043926_267407_95DD1FAB 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 2020-04-30 12:24, Zenghui Yu wrote:
> Hi Marc,
> 
> On 2020/4/25 17:44, Marc Zyngier wrote:
>> KVM now expects to be able to use HW-accelerated delivery of vSGIs
>> as soon as the guest has enabled thm. Unfortunately, we only
> them
>> initialize the GICv4 context if we have a virtual ITS exposed to
>> the guest.
>> 
>> Fix it by always initializing the GICv4.1 context if it is
>> available on the host.
>> 
>> Fixes: 2291ff2f2a56 ("KVM: arm64: GICv4.1: Plumb SGI implementation 
>> selection in the distributor")
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>   virt/kvm/arm/vgic/vgic-init.c    | 9 ++++++++-
>>   virt/kvm/arm/vgic/vgic-mmio-v3.c | 3 ++-
>>   2 files changed, 10 insertions(+), 2 deletions(-)
>> 
>> diff --git a/virt/kvm/arm/vgic/vgic-init.c 
>> b/virt/kvm/arm/vgic/vgic-init.c
>> index a963b9d766b73..8e6f350c3bcd1 100644
>> --- a/virt/kvm/arm/vgic/vgic-init.c
>> +++ b/virt/kvm/arm/vgic/vgic-init.c
>> @@ -294,8 +294,15 @@ int vgic_init(struct kvm *kvm)
>>   		}
>>   	}
>>   -	if (vgic_has_its(kvm)) {
>> +	if (vgic_has_its(kvm))
>>   		vgic_lpi_translation_cache_init(kvm);
>> +
>> +	/*
>> +	 * If we have GICv4.1 enabled, unconditionnaly request enable the
>> +	 * v4 support so that we get HW-accelerated vSGIs. Otherwise, only
>> +	 * enable it if we present a virtual ITS to the guest.
>> +	 */
>> +	if (vgic_supports_direct_msis(kvm)) {
>>   		ret = vgic_v4_init(kvm);
>>   		if (ret)
>>   			goto out;
>> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c 
>> b/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> index e72dcc4542475..26b11dcd45524 100644
>> --- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> +++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> @@ -50,7 +50,8 @@ bool vgic_has_its(struct kvm *kvm)
>>     bool vgic_supports_direct_msis(struct kvm *kvm)
>>   {
>> -	return kvm_vgic_global_state.has_gicv4 && vgic_has_its(kvm);
>> +	return (kvm_vgic_global_state.has_gicv4_1 ||
>> +		(kvm_vgic_global_state.has_gicv4 && vgic_has_its(kvm)));
>>   }
> 
> Not related to this patch, but I think that the function name can be
> improved a bit after this change. It now indicates whether the vGIC
> supports direct MSIs injection *or* direct SGIs injection, not just
> MSIs. And if vgic_has_its() is false, we don't even support MSIs.

Yes, I noticed that too. But in the spirit of keeping the change minimal
and avoid later conflicts with potential fixes, I decided against 
changing
it right now.

> The fix itself looks correct to me,
> 
> Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
