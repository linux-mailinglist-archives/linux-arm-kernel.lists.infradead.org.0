Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD571F1A57
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 15:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1V5b7GxVDWpCSQ2gsVL5WkJu84lNzp/LYP6zY1v/xd8=; b=rin1j7uB/G62sz
	+0UFEuwcIiLjKBuoQNJyAWxPEud+pKq8O05YDzXe0LEpclV8gEH+Nf7LAUqW+4IRmDZaAQNkK9ViL
	MHIY7Q0EJnhGjWcY/KngYEMkyrBxMdJHizWfha45ag7v6RcUhAdLWVaYvNsdgBV8nOKB2uccb3uoG
	TV95pBABAqZYICIFP/ztFl/1vci2eJvhzmgwu5UMh2hHOvhCo1+3kqGc1hKIwHuLqj8x+WnDU/vNX
	iKhUsc8Iqx1PVSE7I8tvMY+cPIW/YIEfW7AMZpc7iBVKPX2YKF58C6EM2XqXTyd42LpYA4qrryqTI
	+ZwE7yW+yy9TTlPWcOOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiI9J-0002OR-Ij; Mon, 08 Jun 2020 13:49:13 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiI9B-0002NX-FA
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 13:49:07 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jiI93-0007jq-0X; Mon, 08 Jun 2020 15:48:57 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 6DC97100F9F; Mon,  8 Jun 2020 15:48:56 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: "Herrenschmidt\, Benjamin" <benh@amazon.com>,
 "maz\@kernel.org" <maz@kernel.org>, "Saidi\, Ali" <alisaidi@amazon.com>
Subject: Re: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
In-Reply-To: <f9e9d8c37eb92e4b9576bfcb4386ff6ef00eddce.camel@amazon.com>
References: <AE04B507-C5E2-44D2-9190-41E9BE720F9D@amazon.com>
 <622fb6be108e894ee365d6b213535c8b@kernel.org>
 <f9e9d8c37eb92e4b9576bfcb4386ff6ef00eddce.camel@amazon.com>
Date: Mon, 08 Jun 2020 15:48:56 +0200
Message-ID: <87mu5dacs7.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_064905_642125_04401D27 
X-CRM114-Status: GOOD (  23.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "jason@lakedaemon.net" <jason@lakedaemon.net>, "Machulsky,
 Zorik" <zorik@amazon.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Zilberman,
 Zeev" <zeev@amazon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Woodhouse, David" <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"Herrenschmidt, Benjamin" <benh@amazon.com> writes:
> On Wed, 2020-06-03 at 16:16 +0100, Marc Zyngier wrote:
>> > My original patch should certain check activated and not disabled.
>> > With that do you still have reservations Marc?
>> 
>> I'd still prefer it if we could do something in core code, rather
>> than spreading these checks in the individual drivers. If we can't,
>> fair enough. But it feels like the core set_affinity function could
>> just do the same thing in a single place (although the started vs
>> activated is yet another piece of the puzzle I didn't consider,
>> and the ITS doesn't need the "can_reserve" thing).
>
> For the sake of fixing the problem in a timely and backportable way I
> would suggest first merging the fix, *then* fixing the core core.

The "fix" is just wrong

> 	if (cpu != its_dev->event_map.col_map[id]) {
> 		target_col = &its_dev->its->collections[cpu];
> -		its_send_movi(its_dev, target_col, id);
> +
> +		/* If the IRQ is disabled a discard was sent so don't move */
> +		if (!irqd_irq_disabled(d))

That check needs to be !irqd_is_activated() because enable_irq() does
not touch anything affinity related.

> +			its_send_movi(its_dev, target_col, id);
> +
> 		its_dev->event_map.col_map[id] = cpu;
> 		irq_data_update_effective_affinity(d, cpumask_of(cpu));

And then these associtations are disconnected from reality in any case.

Something like the completely untested patch below should work.

Thanks,

        tglx

---
 arch/x86/kernel/apic/vector.c |   21 +++------------------
 kernel/irq/manage.c           |   37 +++++++++++++++++++++++++++++++++++--
 2 files changed, 38 insertions(+), 20 deletions(-)

--- a/arch/x86/kernel/apic/vector.c
+++ b/arch/x86/kernel/apic/vector.c
@@ -446,12 +446,10 @@ static int x86_vector_activate(struct ir
 	trace_vector_activate(irqd->irq, apicd->is_managed,
 			      apicd->can_reserve, reserve);
 
-	/* Nothing to do for fixed assigned vectors */
-	if (!apicd->can_reserve && !apicd->is_managed)
-		return 0;
-
 	raw_spin_lock_irqsave(&vector_lock, flags);
-	if (reserve || irqd_is_managed_and_shutdown(irqd))
+	if (!apicd->can_reserve && !apicd->is_managed)
+		assign_irq_vector_any_locked(irqd);
+	else if (reserve || irqd_is_managed_and_shutdown(irqd))
 		vector_assign_managed_shutdown(irqd);
 	else if (apicd->is_managed)
 		ret = activate_managed(irqd);
@@ -775,21 +773,8 @@ void lapic_offline(void)
 static int apic_set_affinity(struct irq_data *irqd,
 			     const struct cpumask *dest, bool force)
 {
-	struct apic_chip_data *apicd = apic_chip_data(irqd);
 	int err;
 
-	/*
-	 * Core code can call here for inactive interrupts. For inactive
-	 * interrupts which use managed or reservation mode there is no
-	 * point in going through the vector assignment right now as the
-	 * activation will assign a vector which fits the destination
-	 * cpumask. Let the core code store the destination mask and be
-	 * done with it.
-	 */
-	if (!irqd_is_activated(irqd) &&
-	    (apicd->is_managed || apicd->can_reserve))
-		return IRQ_SET_MASK_OK;
-
 	raw_spin_lock(&vector_lock);
 	cpumask_and(vector_searchmask, dest, cpu_online_mask);
 	if (irqd_affinity_is_managed(irqd))
--- a/kernel/irq/manage.c
+++ b/kernel/irq/manage.c
@@ -195,9 +195,9 @@ void irq_set_thread_affinity(struct irq_
 			set_bit(IRQTF_AFFINITY, &action->thread_flags);
 }
 
+#ifdef CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK
 static void irq_validate_effective_affinity(struct irq_data *data)
 {
-#ifdef CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK
 	const struct cpumask *m = irq_data_get_effective_affinity_mask(data);
 	struct irq_chip *chip = irq_data_get_irq_chip(data);
 
@@ -205,9 +205,19 @@ static void irq_validate_effective_affin
 		return;
 	pr_warn_once("irq_chip %s did not update eff. affinity mask of irq %u\n",
 		     chip->name, data->irq);
-#endif
 }
 
+static inline void irq_init_effective_affinity(struct irq_data *data,
+					       const struct cpumask *mask)
+{
+	cpumask_copy(irq_data_get_effective_affinity_mask(data), mask);
+}
+#else
+static inline void irq_validate_effective_affinity(struct irq_data *data) { }
+static inline boot irq_init_effective_affinity(struct irq_data *data,
+					       const struct cpumask *mask) { }
+#endif
+
 int irq_do_set_affinity(struct irq_data *data, const struct cpumask *mask,
 			bool force)
 {
@@ -304,6 +314,26 @@ static int irq_try_set_affinity(struct i
 	return ret;
 }
 
+static bool irq_set_affinity_deactivated(struct irq_data *data,
+					 const struct cpumask *mask, bool force)
+{
+	struct irq_desc *desc = irq_data_to_desc(data);
+
+	/*
+	 * If the interrupt is not yet activated, just store the affinity
+	 * mask and do not call the chip driver at all. On activation the
+	 * driver has to make sure anyway that the interrupt is in a
+	 * useable state so startup works.
+	 */
+	if (!IS_ENABLED(CONFIG_IRQ_DOMAIN_HIERARCHY) || irqd_is_activated(data))
+		return false;
+
+	cpumask_copy(desc->irq_common_data.affinity, mask);
+	irq_init_effective_affinity(data, mask);
+	irqd_set(data, IRQD_AFFINITY_SET);
+	return true;
+}
+
 int irq_set_affinity_locked(struct irq_data *data, const struct cpumask *mask,
 			    bool force)
 {
@@ -314,6 +344,9 @@ int irq_set_affinity_locked(struct irq_d
 	if (!chip || !chip->irq_set_affinity)
 		return -EINVAL;
 
+	if (irq_set_affinity_deactivated(data, mask, force))
+		return 0;
+
 	if (irq_can_move_pcntxt(data) && !irqd_is_setaffinity_pending(data)) {
 		ret = irq_try_set_affinity(data, mask, force);
 	} else {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
