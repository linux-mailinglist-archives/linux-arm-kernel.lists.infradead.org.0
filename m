Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0358418CB22
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 11:05:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nf9KuoAjInSzVzfsIfuFfyj+yG0oHYS2N8NvoTNRfR8=; b=cn9OKAHYfshoBjBk/Pry8uND8
	MjxJ2TiKehVLmhQX/WaOke0S0n5hBCwjvXhDRfxDIxfAtPbn7RWthfM0e+kBidSRxjP5G24HaSUzx
	w3d0HgevZabCM7Fg9bZ4UeZMt+RSq+QVxA1gKJJZoJ1DQMgfqbAXfME7FtgzchQeOfqGnKbBqUR12
	JNLziPDZboHDR9QVXCZjjYrJkYMn6FzeyWZaOAQUAppE+CF959F6G9dbsZxvTtEbT1TOaH+4ij4tb
	A2g9o8DAI3rHHUkNkQL9AXw0USSVgH8+w4BrOpV6n+Z0+QmzoeAb9swA+0eSV3BRW/ItmsmQuU5On
	b/BsWW3TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFEX1-0007KN-L1; Fri, 20 Mar 2020 10:05:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFEWp-0007Js-S0
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 10:05:25 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0226120739;
 Fri, 20 Mar 2020 10:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584698723;
 bh=xLCoBe0k1tJ3NSXx1P/PDSVPbSYu5y2TzULMMiyBlTg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fG3/FshLRVkUpD6f8kWzo2ZRvJ1Hf8TYHFGIVvQTGCajdFE86lnw5LcRvB+oaiwhz
 LIpRK5YowcZKkauW9vpsoRF0N5qgJXofZdNSufOEynagyl2fv09fg4W9jMxYhRQq8k
 PDi+QMvsd3CnTUcHcBthjBlrGzlCLFculZqkoH7w=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jFEWn-00ECvU-B0; Fri, 20 Mar 2020 10:05:21 +0000
MIME-Version: 1.0
Date: Fri, 20 Mar 2020 10:05:21 +0000
From: Marc Zyngier <maz@kernel.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v5 18/23] KVM: arm64: GICv4.1: Add direct injection
 capability to SGI registers
In-Reply-To: <06705d70-0f99-e719-af52-1a5f778562d8@redhat.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-19-maz@kernel.org>
 <06705d70-0f99-e719-af52-1a5f778562d8@redhat.com>
Message-ID: <3f7094ffd77a6615d7179be94dbecc60@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: eric.auger@redhat.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, yuzenghui@huawei.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_030523_957066_4BE90223 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

On 2020-03-20 08:11, Auger Eric wrote:
> Hi Marc,
> On 3/4/20 9:33 PM, Marc Zyngier wrote:
>> Most of the GICv3 emulation code that deals with SGIs now has to be
>> aware of the v4.1 capabilities in order to benefit from it.
>> 
>> Add such support, keyed on the interrupt having the hw flag set and
>> being a SGI.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  virt/kvm/arm/vgic/vgic-mmio-v3.c | 15 +++++-
>>  virt/kvm/arm/vgic/vgic-mmio.c    | 88 
>> ++++++++++++++++++++++++++++++--
>>  2 files changed, 96 insertions(+), 7 deletions(-)
>> 

[...]

>> @@ -113,7 +125,21 @@ void vgic_mmio_write_senable(struct kvm_vcpu 
>> *vcpu,
>>  		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
>> 
>>  		raw_spin_lock_irqsave(&irq->irq_lock, flags);
>> -		if (vgic_irq_is_mapped_level(irq)) {
>> +		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
>> +			if (!irq->enabled) {
>> +				struct irq_data *data;
>> +
>> +				irq->enabled = true;
>> +				data = &irq_to_desc(irq->host_irq)->irq_data;
>> +				while (irqd_irq_disabled(data))
>> +					enable_irq(irq->host_irq);
> could you explain me why the while() is requested?

Ah, interesting question: disable_irq() (and its variants) can nest. 
This
means that if you have done two disable_irq(), you must do two 
enable_irq()
to get back to the interrupt being enabled.

The locking should ensure that this nesting doesn't happen, but I'm 
paranoid
(see the GICv4.0 doorbell handling). It also makes it easier to reason 
about
the initial state.

[...]

> Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks!

          M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
