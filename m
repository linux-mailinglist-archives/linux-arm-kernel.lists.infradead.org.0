Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 250A819F8A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 17:14:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J2TcWQC5Ap6m3U14nkUyDI5MHso7gsvZjclr2rFpgp4=; b=O88Rbpnj3FywIKzznWKkSvDY7
	C4jfzX2bHgqUErehbiXUuCivx69o59btdrXx9klUayDH2RDCoA82T+bZat+iONWpSogzxQ2uXnZlA
	88ol9OW1lGJzBVP6M8bb3Q+uP/e+q+guz0t5/xrzc2IJBNFK6SwRnP/epIkb0ClvF7teSF/8qHZV+
	RVPHDpMsVYR5rmOIZheKplCCdJyuaTxhicPBl4tWQDFoHMAaKFfy852sMblz+JUuQkzbUyOQdWe8g
	BQXY04fM5dKl+NkMowHAtHN7zAU7YJ86gjV3FHIJVLWDAroqJNWcqx/kdpfhUijKGiyQnUe0eLoeC
	v9Ir7WqUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLTSX-0003gt-2F; Mon, 06 Apr 2020 15:14:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLTSR-0003gW-8Q
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 15:14:40 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD36322206;
 Mon,  6 Apr 2020 15:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586186077;
 bh=HLTjh6deKNcgUl2LBBzz4egKGS8y0szuWCPXV1N1ims=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QR7kZD8xTGeRVGb70bx4v5zgrIKTwEE4rX8OONXSp38sWYVsxnY+TOT+O5HFft9r/
 fngLf+D07utVU9AdAQ3aJmxgS2bdQU+A2h13rDxPJ2+cbCsfQFML8c8bTMlBFXNyOx
 XiDwgmgxnugQK4310p2UlYtvjAsXi02e1W26Sokg=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jLTSN-00187d-Tp; Mon, 06 Apr 2020 16:14:36 +0100
MIME-Version: 1.0
Date: Mon, 06 Apr 2020 16:14:35 +0100
From: Marc Zyngier <maz@kernel.org>
To: Julien Grall <julien@xen.org>
Subject: Re: I{S,C}ACTIVER implemention question
In-Reply-To: <c90bdfa0-00cf-170b-4319-e270e8aaef7e@xen.org>
References: <c90bdfa0-00cf-170b-4319-e270e8aaef7e@xen.org>
Message-ID: <2a201532b992fca74b4f193f53fc71f9@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: julien@xen.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 sstabellini@kernel.org, George.Dunlap@eu.citrix.com, Bertrand.Marquis@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_081439_338314_354E630E 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefano Stabellini <sstabellini@kernel.org>, suzuki.poulose@arm.com,
 George.Dunlap@eu.citrix.com, Bertrand Marquis <Bertrand.Marquis@arm.com>,
 james.morse@arm.com, julien.thierry.kdev@gmail.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Julien,

Thanks for the heads up.

On 2020-04-06 14:16, Julien Grall wrote:
> Hi,
> 
> Xen community is currently reviewing a new implementation for reading
> I{S,C}ACTIVER registers (see [1]).
> 
> The implementation is based on vgic_mmio_read_active() in KVM, i.e the
> active state of the interrupts is based on the vGIC state stored in
> memory.
> 
> While reviewing the patch on xen-devel, I noticed a potential deadlock
> at least with Xen implementation. I know that Xen vGIC and KVM vGIC
> are quite different, so I looked at the implementation to see how this
> is dealt.
> 
> With my limited knowledge of KVM, I wasn't able to rule it out. I am
> curious to know if I missed anything.
> 
> vCPU A may read the active state of an interrupt routed to vCPU B.
> When vCPU A is reading the state, it will read the state stored in
> memory.
> 
> The only way the memory state can get synced with the HW state is when
> vCPU B exit guest context.
> 
> AFAICT, vCPU B will not exit when deactivating HW mapped interrupts
> and virtual edge interrupts. So vCPU B may run for an abritrary long
> time before been exiting and syncing the memory state with the HW
> state.

So while I agree that this is definitely not ideal, I don't think we 
end-up
with a deadlock (or rather a livelock) either. That's because we are 
guaranteed
to exit eventually if only because the kernel's own timer interrupt (or 
any
other host interrupt routed to the same physical CPU) will fire and get 
us
out of there. On its own, this is enough to allow the polling vcpu to 
make
forward progress.

Now, it is obvious that we should improve on the current situation. I 
just
hacked together a patch that provides the same guarantees as the one we
already have on the write side (kick all vcpus out of the guest, 
snapshot
the state, kick everyone back in). I boot-tested it, so it is obviously 
perfect
and won't eat your data at all! ;-)

Thanks,

         M.

+
+/*
+ * If we are fiddling with an IRQ's active state, we have to make sure 
the IRQ
+ * is not queued on some running VCPU's LRs, because then the change to 
the
+ * active state can be overwritten when the VCPU's state is synced 
coming back
+ * from the guest.
+ *
+ * For shared interrupts as well as GICv3 private interrupts, we have 
to
+ * stop all the VCPUs because interrupts can be migrated while we don't 
hold
+ * the IRQ locks and we don't want to be chasing moving targets.
+ *
+ * For GICv2 private interrupts we don't have to do anything because
+ * userspace accesses to the VGIC state already require all VCPUs to be
+ * stopped, and only the VCPU itself can modify its private interrupts
+ * active state, which guarantees that the VCPU is not running.
+ */
+static void vgic_access_active_prepare(struct kvm_vcpu *vcpu, u32 
intid)
+{
+	if (vcpu->kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3 ||
+	    intid > VGIC_NR_PRIVATE_IRQS)
+		kvm_arm_halt_guest(vcpu->kvm);
+}
+
+/* See vgic_access_active_prepare */
+static void vgic_access_active_finish(struct kvm_vcpu *vcpu, u32 intid)
+{
+	if (vcpu->kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3 ||
+	    intid > VGIC_NR_PRIVATE_IRQS)
+		kvm_arm_resume_guest(vcpu->kvm);
+}
+
+static unsigned long __vgic_mmio_read_active(struct kvm_vcpu *vcpu,
+					     gpa_t addr, unsigned int len)
  {
  	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
  	u32 value = 0;
@@ -359,6 +390,10 @@ unsigned long vgic_mmio_read_active(struct kvm_vcpu 
*vcpu,
  	for (i = 0; i < len * 8; i++) {
  		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);

+		/*
+		 * Even for HW interrupts, don't evaluate the HW state as
+		 * all the guest is interested in is the virtual state.
+		 */
  		if (irq->active)
  			value |= (1U << i);

@@ -368,6 +403,29 @@ unsigned long vgic_mmio_read_active(struct kvm_vcpu 
*vcpu,
  	return value;
  }

+unsigned long vgic_mmio_read_active(struct kvm_vcpu *vcpu,
+				    gpa_t addr, unsigned int len)
+{
+	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
+	u32 val;
+
+	mutex_lock(&vcpu->kvm->lock);
+	vgic_access_active_prepare(vcpu, intid);
+
+	val = __vgic_mmio_read_active(vcpu, addr, len);
+
+	vgic_access_active_finish(vcpu, intid);
+	mutex_unlock(&vcpu->kvm->lock);
+
+	return val;
+}
+
+unsigned long vgic_uaccess_read_active(struct kvm_vcpu *vcpu,
+				    gpa_t addr, unsigned int len)
+{
+	return __vgic_mmio_read_active(vcpu, addr, len);
+}
+
  /* Must be called with irq->irq_lock held */
  static void vgic_hw_irq_change_active(struct kvm_vcpu *vcpu, struct 
vgic_irq *irq,
  				      bool active, bool is_uaccess)
@@ -426,36 +484,6 @@ static void vgic_mmio_change_active(struct kvm_vcpu 
*vcpu, struct vgic_irq *irq,
  		raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
  }

-/*
- * If we are fiddling with an IRQ's active state, we have to make sure 
the IRQ
- * is not queued on some running VCPU's LRs, because then the change to 
the
- * active state can be overwritten when the VCPU's state is synced 
coming back
- * from the guest.
- *
- * For shared interrupts, we have to stop all the VCPUs because 
interrupts can
- * be migrated while we don't hold the IRQ locks and we don't want to 
be
- * chasing moving targets.
- *
- * For private interrupts we don't have to do anything because 
userspace
- * accesses to the VGIC state already require all VCPUs to be stopped, 
and
- * only the VCPU itself can modify its private interrupts active state, 
which
- * guarantees that the VCPU is not running.
- */
-static void vgic_change_active_prepare(struct kvm_vcpu *vcpu, u32 
intid)
-{
-	if (vcpu->kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3 ||
-	    intid > VGIC_NR_PRIVATE_IRQS)
-		kvm_arm_halt_guest(vcpu->kvm);
-}
-
-/* See vgic_change_active_prepare */
-static void vgic_change_active_finish(struct kvm_vcpu *vcpu, u32 intid)
-{
-	if (vcpu->kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3 ||
-	    intid > VGIC_NR_PRIVATE_IRQS)
-		kvm_arm_resume_guest(vcpu->kvm);
-}
-
  static void __vgic_mmio_write_cactive(struct kvm_vcpu *vcpu,
  				      gpa_t addr, unsigned int len,
  				      unsigned long val)
@@ -477,11 +505,11 @@ void vgic_mmio_write_cactive(struct kvm_vcpu 
*vcpu,
  	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);

  	mutex_lock(&vcpu->kvm->lock);
-	vgic_change_active_prepare(vcpu, intid);
+	vgic_access_active_prepare(vcpu, intid);

  	__vgic_mmio_write_cactive(vcpu, addr, len, val);

-	vgic_change_active_finish(vcpu, intid);
+	vgic_access_active_finish(vcpu, intid);
  	mutex_unlock(&vcpu->kvm->lock);
  }

@@ -514,11 +542,11 @@ void vgic_mmio_write_sactive(struct kvm_vcpu 
*vcpu,
  	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);

  	mutex_lock(&vcpu->kvm->lock);
-	vgic_change_active_prepare(vcpu, intid);
+	vgic_access_active_prepare(vcpu, intid);

  	__vgic_mmio_write_sactive(vcpu, addr, len, val);

-	vgic_change_active_finish(vcpu, intid);
+	vgic_access_active_finish(vcpu, intid);
  	mutex_unlock(&vcpu->kvm->lock);
  }


-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
