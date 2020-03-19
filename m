Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F46A18B300
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 13:10:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ciFdfluoBRQkY+TKRw7qfUbFZq1j81KS02NyxlF3Ges=; b=Jav808lyoLOfWkCloWFW3E281
	EEEV/lq+T/zAHQ0RgdVcaxQ3m5KK0QqABiWw9S0vZS550HcFkBdr1URAnKtgUykGjsbx7kAS/A4vX
	UWJOOeoJ4S1fkx+Ca7dSXdaH1czZ9ctgQqovBaQHc+JHHOj9xx5demSYVjK5sjsBy54CLEcmLdYzL
	QjzisKW8IJXfvKiV+Xg9MFIHmQXouK1xWSrbPyit975D/jaoB67bMrPo8/o69whhf2iLWuLqXlDkI
	fmcNnTEWMCe0hMrGeErDuk3aguwPST8nfvpfCi1SZ6k6U38ndv962Jtc7XymkrlsSP/nGzTvrj54s
	mhwuT3Ksw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEu0F-0006QN-C3; Thu, 19 Mar 2020 12:10:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEu06-0006Q4-04
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 12:10:15 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C90F20663;
 Thu, 19 Mar 2020 12:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584619813;
 bh=6rNervqAIpsCbSWbaL/JCxlPQb2xA9V11QRKwIxvVgM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VkE/6xNgNrrioz0QRL3zM5ILQU3OSG57GIjlZZrKDGhV/HVFLdz56qJBc3Y579LxN
 YJiAgzgnKU+1JFICbzzROJb4RBh3sc7b3ZVObwQXYIrmOddLbmPeJRQFc+j3Qnyv5i
 +f6MY4lnf0La6fi+k75jfCDTuaKdSxcKPM8M8/OY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jEu03-00DvjA-9X; Thu, 19 Mar 2020 12:10:11 +0000
MIME-Version: 1.0
Date: Thu, 19 Mar 2020 12:10:11 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v5 20/23] KVM: arm64: GICv4.1: Plumb SGI implementation
 selection in the distributor
In-Reply-To: <72832f51-bbde-8502-3e03-189ac20a0143@huawei.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-21-maz@kernel.org>
 <72832f51-bbde-8502-3e03-189ac20a0143@huawei.com>
Message-ID: <4a06fae9c93e10351276d173747d17f4@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_051014_080592_53DCC0AC 
X-CRM114-Status: GOOD (  28.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 2020-03-18 06:34, Zenghui Yu wrote:
> Hi Marc,
> 
> On 2020/3/5 4:33, Marc Zyngier wrote:
>> The GICv4.1 architecture gives the hypervisor the option to let
>> the guest choose whether it wants the good old SGIs with an
>> active state, or the new, HW-based ones that do not have one.
>> 
>> For this, plumb the configuration of SGIs into the GICv3 MMIO
>> handling, present the GICD_TYPER2.nASSGIcap to the guest,
>> and handle the GICD_CTLR.nASSGIreq setting.
>> 
>> In order to be able to deal with the restore of a guest, also
>> apply the GICD_CTLR.nASSGIreq setting at first run so that we
>> can move the restored SGIs to the HW if that's what the guest
>> had selected in a previous life.
> 
> I'm okay with the restore path.  But it seems that we still fail to
> save the pending state of vSGI - software pending_latch of HW-based
> vSGIs will not be updated (and always be false) because we directly
> inject them through ITS, so vgic_v3_uaccess_read_pending() can't
> tell the correct pending state to user-space (the correct one should
> be latched in HW).
> 
> It would be good if we can sync the hardware state into pending_latch
> at an appropriate time (just before save), but not sure if we can...

The problem is to find the "appropriate time". It would require to 
define
a point in the save sequence where we transition the state from HW to
SW. I'm not keen on adding more state than we already have.

But what we can do is to just ask the HW to give us the right state
on userspace access, at all times. How about this:

diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c 
b/virt/kvm/arm/vgic/vgic-mmio-v3.c
index 48fd9fc229a2..281fe7216c59 100644
--- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
+++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
@@ -305,8 +305,18 @@ static unsigned long 
vgic_v3_uaccess_read_pending(struct kvm_vcpu *vcpu,
  	 */
  	for (i = 0; i < len * 8; i++) {
  		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
+		bool state = irq->pending_latch;

-		if (irq->pending_latch)
+		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
+			int err;
+
+			err = irq_get_irqchip_state(irq->host_irq,
+						    IRQCHIP_STATE_PENDING,
+						    &state);
+			WARN_ON(err);
+		}
+
+		if (state)
  			value |= (1U << i);

  		vgic_put_irq(vcpu->kvm, irq);

I can add this to "KVM: arm64: GICv4.1: Add direct injection capability 
to SGI registers".

> 
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>   virt/kvm/arm/vgic/vgic-mmio-v3.c | 48 
>> ++++++++++++++++++++++++++++++--
>>   virt/kvm/arm/vgic/vgic-v3.c      |  2 ++
>>   2 files changed, 48 insertions(+), 2 deletions(-)
>> 
>> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c 
>> b/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> index de89da76a379..442f3b8c2559 100644
>> --- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> +++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> @@ -3,6 +3,7 @@
>>    * VGICv3 MMIO handling functions
>>    */
>>   +#include <linux/bitfield.h>
>>   #include <linux/irqchip/arm-gic-v3.h>
>>   #include <linux/kvm.h>
>>   #include <linux/kvm_host.h>
>> @@ -70,6 +71,8 @@ static unsigned long vgic_mmio_read_v3_misc(struct 
>> kvm_vcpu *vcpu,
>>   		if (vgic->enabled)
>>   			value |= GICD_CTLR_ENABLE_SS_G1;
>>   		value |= GICD_CTLR_ARE_NS | GICD_CTLR_DS;
>> +		if (kvm_vgic_global_state.has_gicv4_1 && vgic->nassgireq)
> 
> Looking at how we handle the GICD_CTLR.nASSGIreq setting, I think
> "nassgireq==true" already indicates "has_gicv4_1==true".  So this
> can be simplified.

Indeed. I've now dropped the has_gicv4.1 check.

> But I wonder that should we use nassgireq to *only* keep track what
> the guest had written into the GICD_CTLR.nASSGIreq.  If not, we may
> lose the guest-request bit after migration among hosts with different
> has_gicv4_1 settings.

I'm unsure of what you're suggesting here. If userspace tries to set
GICD_CTLR.nASSGIreq on a non-4.1 host, this bit will not latch.
Userspace can check that at restore time. Or we could fail the
userspace write, which is a bit odd (the bit is otherwise RES0).

Could you clarify your proposal?

> The remaining patches all look good to me :-). I will wait for you to
> confirm these two concerns.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
