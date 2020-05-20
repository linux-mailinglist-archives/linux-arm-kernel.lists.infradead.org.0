Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9AA1DAF6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 11:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5PsbNApzuYF1S0ZrhdnVDzz2+yhV+rrOIMgewcyYD0=; b=pjaqcxdjVd5ICb
	YJNvWZalKFXl8yT0TA7zlJKEYF1PAYKCtZdzSuD3/v3g9FGFNtfXEMXwFer/YbG5nEgPN65Rvg2KB
	ICKbC7gPCLLovViPhTqgWH1rj4rV5V/FvjWfMmIvuAvqp5vsxBSzSBFmlD7RHZ+uL9dgNjikjMeoF
	xqaY0JGfvjabhDmdVzblhnxlsyrPLUU1cNE/qA34J+KLcJgzqqoNoW6dN58ATCXaX0O+XU9VZv4Q2
	1u8T5C4mDHgAr1GBQ9LYRqvG7joy44G66n4Jl39bWZOTPbLwhhEJ3x2dc6U/wEtq+SJD4AOBDiJ15
	l509Ib/+XPzeBVZt2AGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbLPf-00083z-Np; Wed, 20 May 2020 09:53:23 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLOm-0007Ty-Jp
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 09:52:31 +0000
Received: by mail-lf1-x143.google.com with SMTP id w15so1887615lfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 02:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=di+O7XWs9ew3gUtMoYcWmBuPK/6Y39LUbfM4jyNZioU=;
 b=Bkiib2E1jLuFPY15fCRf+7JQdoxbF3iKCIjM6xO2ybauEwrN+kkNn3yF6U0CxGSCBN
 hjF3olr4S0Lahwhh3OEJ9LTMUPWjcsO2ANYLpoZutsEZKIXBsHqHfSR74lDjzEAlpt+j
 FD6vVnnxfGdmNmiD4tr4ZsR5Z1G0q0YmJ5iC9xyF9CQz68orEZAOv3EKOf44ooCxVf1q
 ff4vlvq4tePlbWv75MV1Fvi+YWNf06pYGlcHrBxB25WQiTwPMVuax1CPQ26nIne47ueo
 Jc+jYiybNSMf3Cu2xYWJUtsCeeZcCuztK8FbRU61j1Fdjb2bp8FRnRAK7katn0LhYeNH
 SrAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=di+O7XWs9ew3gUtMoYcWmBuPK/6Y39LUbfM4jyNZioU=;
 b=KFgWDMu98itUt3eLQD+cH9FGCt0t4OKqChE+LpEP1BdpOTj1ayv97mPZAjwCYwDlf0
 bbAf/kvmZQzE36fErA1MfQPTf6eeHnRJ/PQgVuHueZ6xSQdIO2bTl8xRBSd9WMHgxgje
 GWRCZ/bR5YZij7pNtYS08TVQy+RJXhK9rAS1+/I8gH8SRbsjIs2Qcjz4uGN8+GHY1dFZ
 fUjko6mkXma9mTzyrQRyB2gJQGUz4xkGilLYt6K7UVxprOdZswwrG3XFaMGwsAVWnxor
 KodYY4ceH1AL3ao7eSHuye0xCVNJLcImviDJPwogkqFYPkBg2peB6t80yvq/5qUVtWqz
 JzMw==
X-Gm-Message-State: AOAM5319q261O+QKTawnYDnhoYHRosOA2CXIXdyXLxCtdMR2ROqdKdz8
 REFGWL58DjLRiCqyrutBopYFC3Q51EDdwJAMZ6KLNQ==
X-Google-Smtp-Source: ABdhPJw8gIkRM0QVsro6/yY54EJWPqe2jja5SjnIIYgyrem445Og3OnBcxkeEHEefxqJu3koBMNevXAtNiXobO+bSLs=
X-Received: by 2002:ac2:4567:: with SMTP id k7mr2093376lfm.122.1589968345369; 
 Wed, 20 May 2020 02:52:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200519161755.209565-1-maz@kernel.org>
 <20200519161755.209565-7-maz@kernel.org>
In-Reply-To: <20200519161755.209565-7-maz@kernel.org>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Wed, 20 May 2020 15:22:13 +0530
Message-ID: <CAFA6WYNfZKpQMTX8qP0eFHwyzJK4HK8z59G3OVLN8h0Uuc7P7w@mail.gmail.com>
Subject: Re: [PATCH 06/11] irqchip/gic-v3: Configure SGIs as standard
 interrupts
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_025228_700633_86589F44 
X-CRM114-Status: GOOD (  25.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-team@android.com, Russell King <linux@arm.linux.org.uk>,
 Jason Cooper <jason@lakedaemon.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Tue, 19 May 2020 at 21:48, Marc Zyngier <maz@kernel.org> wrote:
>
> Change the way we deal with GICv3 SGIs by turning them into proper
> IRQs, and calling into the arch code to register the interrupt range
> instead of a callback.
>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  drivers/irqchip/irq-gic-v3.c | 91 +++++++++++++++++++++---------------
>  1 file changed, 53 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index 23d7c87da407..d57289057b75 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -36,6 +36,9 @@
>  #define FLAGS_WORKAROUND_GICR_WAKER_MSM8996    (1ULL << 0)
>  #define FLAGS_WORKAROUND_CAVIUM_ERRATUM_38539  (1ULL << 1)
>
> +#define GIC_IRQ_TYPE_PARTITION (GIC_IRQ_TYPE_LPI + 1)
> +#define GIC_IRQ_TYPE_SGI       (GIC_IRQ_TYPE_LPI + 2)
> +
>  struct redist_region {
>         void __iomem            *redist_base;
>         phys_addr_t             phys_base;
> @@ -657,38 +660,14 @@ static asmlinkage void __exception_irq_entry gic_handle_irq(struct pt_regs *regs
>         if ((irqnr >= 1020 && irqnr <= 1023))
>                 return;
>
> -       /* Treat anything but SGIs in a uniform way */
> -       if (likely(irqnr > 15)) {
> -               int err;
> -
> -               if (static_branch_likely(&supports_deactivate_key))
> -                       gic_write_eoir(irqnr);
> -               else
> -                       isb();
> -
> -               err = handle_domain_irq(gic_data.domain, irqnr, regs);
> -               if (err) {
> -                       WARN_ONCE(true, "Unexpected interrupt received!\n");
> -                       gic_deactivate_unhandled(irqnr);
> -               }
> -               return;
> -       }
> -       if (irqnr < 16) {
> +       if (static_branch_likely(&supports_deactivate_key))
>                 gic_write_eoir(irqnr);
> -               if (static_branch_likely(&supports_deactivate_key))
> -                       gic_write_dir(irqnr);
> -#ifdef CONFIG_SMP
> -               /*
> -                * Unlike GICv2, we don't need an smp_rmb() here.
> -                * The control dependency from gic_read_iar to
> -                * the ISB in gic_write_eoir is enough to ensure
> -                * that any shared data read by handle_IPI will
> -                * be read after the ACK.
> -                */
> -               handle_IPI(irqnr, regs);
> -#else
> -               WARN_ONCE(true, "Unexpected SGI received!\n");
> -#endif
> +       else
> +               isb();
> +
> +       if (handle_domain_irq(gic_data.domain, irqnr, regs)) {
> +               WARN_ONCE(true, "Unexpected interrupt received!\n");
> +               gic_deactivate_unhandled(irqnr);
>         }
>  }
>
> @@ -1136,11 +1115,11 @@ static void gic_send_sgi(u64 cluster_id, u16 tlist, unsigned int irq)
>         gic_write_sgi1r(val);
>  }
>
> -static void gic_raise_softirq(const struct cpumask *mask, unsigned int irq)
> +static void gic_ipi_send_mask(struct irq_data *d, const struct cpumask *mask)
>  {
>         int cpu;
>
> -       if (WARN_ON(irq >= 16))
> +       if (WARN_ON(d->hwirq >= 16))
>                 return;
>
>         /*
> @@ -1154,7 +1133,7 @@ static void gic_raise_softirq(const struct cpumask *mask, unsigned int irq)
>                 u16 tlist;
>
>                 tlist = gic_compute_target_list(&cpu, mask, cluster_id);
> -               gic_send_sgi(cluster_id, tlist, irq);
> +               gic_send_sgi(cluster_id, tlist, d->hwirq);
>         }
>
>         /* Force the above writes to ICC_SGI1R_EL1 to be executed */
> @@ -1163,10 +1142,36 @@ static void gic_raise_softirq(const struct cpumask *mask, unsigned int irq)
>
>  static void gic_smp_init(void)
>  {
> -       set_smp_cross_call(gic_raise_softirq);
> +       struct irq_fwspec sgi_fwspec = {
> +               .fwnode         = gic_data.fwnode,
> +       };
> +       int base_sgi;
> +
>         cpuhp_setup_state_nocalls(CPUHP_AP_IRQ_GIC_STARTING,
>                                   "irqchip/arm/gicv3:starting",
>                                   gic_starting_cpu, NULL);
> +
> +       if (is_of_node(gic_data.fwnode)) {
> +               /* DT */
> +               sgi_fwspec.param_count = 3;
> +               sgi_fwspec.param[0] = GIC_IRQ_TYPE_SGI;
> +               sgi_fwspec.param[1] = 0;
> +               sgi_fwspec.param[2] = IRQ_TYPE_EDGE_RISING;
> +       } else {
> +               /* ACPI */
> +               sgi_fwspec.param_count = 2;
> +               sgi_fwspec.param[0] = 0;
> +               sgi_fwspec.param[1] = IRQ_TYPE_EDGE_RISING;
> +       }
> +
> +       /* Register all 8 non-secure SGIs */
> +       base_sgi = __irq_domain_alloc_irqs(gic_data.domain, -1, 8,
> +                                          NUMA_NO_NODE, &sgi_fwspec,
> +                                          false, NULL);
> +       if (WARN_ON(base_sgi <= 0))
> +               return;
> +
> +       set_smp_ipi_range(base_sgi, 8);
>  }
>
>  static int gic_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
> @@ -1215,6 +1220,7 @@ static int gic_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
>  }
>  #else
>  #define gic_set_affinity       NULL
> +#define gic_ipi_send_mask      NULL
>  #define gic_smp_init()         do { } while(0)
>  #endif
>
> @@ -1257,6 +1263,7 @@ static struct irq_chip gic_chip = {
>         .irq_set_irqchip_state  = gic_irq_set_irqchip_state,
>         .irq_nmi_setup          = gic_irq_nmi_setup,
>         .irq_nmi_teardown       = gic_irq_nmi_teardown,
> +       .ipi_send_mask          = gic_ipi_send_mask,
>         .flags                  = IRQCHIP_SET_TYPE_MASKED |
>                                   IRQCHIP_SKIP_SET_WAKE |
>                                   IRQCHIP_MASK_ON_SUSPEND,

It looks like you missed to update "struct irq_chip gic_eoimode1_chip"
with similar change as follows:

diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index 2a09634..ceef63b 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -1291,6 +1291,7 @@ static struct irq_chip gic_eoimode1_chip = {
        .irq_set_vcpu_affinity  = gic_irq_set_vcpu_affinity,
        .irq_nmi_setup          = gic_irq_nmi_setup,
        .irq_nmi_teardown       = gic_irq_nmi_teardown,
+       .ipi_send_mask          = gic_ipi_send_mask,
        .flags                  = IRQCHIP_SET_TYPE_MASKED |
                                  IRQCHIP_SKIP_SET_WAKE |
                                  IRQCHIP_MASK_ON_SUSPEND,

After incorporating this change, your patch-set works fine on my
Developerbox machine.

-Sumit

> @@ -1289,6 +1296,13 @@ static int gic_irq_domain_map(struct irq_domain *d, unsigned int irq,
>
>         switch (__get_intid_range(hw)) {
>         case SGI_RANGE:
> +               irq_set_percpu_devid(irq);
> +               irq_domain_set_info(d, irq, hw, chip, d->host_data,
> +                                   handle_percpu_devid_fasteoi_ipi,
> +                                   NULL, NULL);
> +               irq_set_status_flags(irq, IRQ_NOAUTOEN);
> +               break;
> +
>         case PPI_RANGE:
>         case EPPI_RANGE:
>                 irq_set_percpu_devid(irq);
> @@ -1319,8 +1333,6 @@ static int gic_irq_domain_map(struct irq_domain *d, unsigned int irq,
>         return 0;
>  }
>
> -#define GIC_IRQ_TYPE_PARTITION (GIC_IRQ_TYPE_LPI + 1)
> -
>  static int gic_irq_domain_translate(struct irq_domain *d,
>                                     struct irq_fwspec *fwspec,
>                                     unsigned long *hwirq,
> @@ -1353,6 +1365,9 @@ static int gic_irq_domain_translate(struct irq_domain *d,
>                         else
>                                 *hwirq += 16;
>                         break;
> +               case GIC_IRQ_TYPE_SGI:
> +                       *hwirq = fwspec->param[1];
> +                       break;
>                 default:
>                         return -EINVAL;
>                 }
> @@ -1657,9 +1672,9 @@ static int __init gic_init_bases(void __iomem *dist_base,
>
>         gic_update_rdist_properties();
>
> -       gic_smp_init();
>         gic_dist_init();
>         gic_cpu_init();
> +       gic_smp_init();
>         gic_cpu_pm_init();
>
>         if (gic_dist_supports_lpis()) {
> --
> 2.26.2
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
