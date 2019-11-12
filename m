Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E2EF95DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 17:43:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Szlkp6TBuCL5rfU+ebAM5+47VPRA//1QGaBIQ8S6Wd0=; b=FA/sGsEtcaCPDu
	ml2EFR31X8QyabBL5pBzgbWt9IewHxWqYdie4FU4tlra1HLRSGoo15lo7sEtKAVQa+HoHzBJs69mA
	vzCa6jzd+rMqS6wAMQbDZM/gx4GAQFY1ROcVpk5iHy9ifPOJ0mOZCymoQVp92u22FN7cNUW4phcOw
	WDRw+Ye67BfVotP+xBBgM+RPpRE2HGeem+yFQWIt/1QRm2lu1iYFvBR/mbhsD3d6ZQW/FggrqZWAJ
	yfcG3aXek1hxfzEhwQgZLfgsUhEjZbtvE/E6/KJ0Zl9R9LwdL+CFqbicPdyKfKzqeKn1nRzXEys1A
	+VU37KopgJegrmS2cOYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZFs-0001TA-3t; Tue, 12 Nov 2019 16:43:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZFk-0001SY-2S
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 16:42:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 259E730E;
 Tue, 12 Nov 2019 08:42:50 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 362573F534;
 Tue, 12 Nov 2019 08:42:49 -0800 (PST)
Subject: Re: [kvm-unit-tests PATCH 09/17] arm: gic: Add test for flipping
 GICD_CTLR.DS
To: Andre Przywara <andre.przywara@arm.com>, Andrew Jones
 <drjones@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-10-andre.przywara@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <2e14ccd4-89f4-aa90-cc58-bebf0e2eeede@arm.com>
Date: Tue, 12 Nov 2019 16:42:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191108144240.204202-10-andre.przywara@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_084252_200054_BC8D4F61 
X-CRM114-Status: GOOD (  27.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 11/8/19 2:42 PM, Andre Przywara wrote:
> The DS (Disable Security) bit in the GICv3 GICD_CTLR register controls
> access to Group 0 interrupts from the non-secure side.
> The KVM VGIC emulation provides a "GIC with a single security state",
> so both groups should be accessible.
> Provide a test to check this bit can be set to one. The current KVM
> emulation should treat this is as RAO/WI (which we also check here). It
> would be architecturally compliant though to have this bit at 0 as well,
> so we refrain from treating different behaviour as a FAIL.

Are we not testing KVM? Why are we not treating a behaviour different than what
KVM should emulate as a fail?

> However we use this as a gateway for further Group 0 IRQ tests.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arm/gic.c            | 62 ++++++++++++++++++++++++++++++++++++++++++++
>  lib/arm/asm/gic-v3.h |  1 +
>  2 files changed, 63 insertions(+)
>
> diff --git a/arm/gic.c b/arm/gic.c
> index 304b7b9..c882a24 100644
> --- a/arm/gic.c
> +++ b/arm/gic.c
> @@ -531,6 +531,8 @@ static void gic_test_mmio(void)
>  	reg = readl(gic_dist_base + GICD_TYPER);
>  	nr_irqs = GICD_TYPER_IRQS(reg);
>  	report_info("number of implemented SPIs: %d", nr_irqs - GIC_FIRST_SPI);
> +	report_info("GIC %s security extension",
> +		reg & (1U << 10) ? "has" : "does not have");
>  
>  	if (gic_version() == 0x2)
>  		test_typer_v2(reg);
> @@ -638,6 +640,60 @@ static void spi_test_smp(void)
>  	report("SPI delievered on all cores", cores == nr_cpus);
>  }
>  
> +/*
> + * Check the security state configuration of the GIC.
> + * Test whether we can switch to a single security state, to test both
> + * group 0 and group 1 interrupts.
> + * Architecturally a GIC can be configured in different ways, so we don't
> + * insist on the current way KVM emulates the GIC.
> + */
> +static bool gicv3_check_security(void *gicd_base)

You don't need gicd_base as a parameter, you know this is called only on a gicv3.

> +{
> +	u32 ctlr = readl(gicd_base + GICD_CTLR);
> +
> +	if (ctlr & GICD_CTLR_DS) {
> +		writel(ctlr & ~GICD_CTLR_DS, gicd_base + GICD_CTLR);
> +		ctlr = readl(gicd_base + GICD_CTLR);
> +		if (!(ctlr & GICD_CTLR_DS))
> +			report_info("GIC allowing two security states");
> +		else
> +			report_info("GIC is one security state only");
> +	} else {
> +		report_info("GIC resets to two security states");
> +	}
> +
> +	writel(ctlr | GICD_CTLR_DS, gicd_base + GICD_CTLR);
> +	ctlr = readl(gicd_base + GICD_CTLR);
> +	report("switching to single security state", ctlr & GICD_CTLR_DS);
> +
> +	/* Group0 delivery only works in single security state. */
> +	return ctlr & GICD_CTLR_DS;
> +}
> +
> +/*
> + * The GIC architecture describes two interrupt groups, group 0 and group 1.
> + * On bare-metal systems, running in non-secure world on a GIC with the
> + * security extensions, there is only one group available: group 1.
> + * However in the kernel KVM emulates a GIC with only one security state,
> + * so both groups are available to guests.
> + * Check whether this works as expected (as Linux will not use this feature).
> + * We can only verify this state on a GICv3, so we check it there and silently
> + * assume it's valid for GICv2.
> + */
> +static void test_irq_group(void *gicd_base)
> +{
> +	bool is_gicv3 = (gic_version() == 3);
> +
> +	report_prefix_push("GROUP");
> +	gic_enable_defaults();

Why is this here if you're only testing GICD_CTLR.DS emulation? Rebase artifact?

> +
> +	if (is_gicv3) {

You can remove the variable is_gicv3 and use gic_version() directly (as you do in
spi_send). Or you can call test_irq_group from spi_send when gic_version is 3 and
drop the check entirely.

> +		/* GICv3 features a bit to read and set the security state. */
> +		if (!gicv3_check_security(gicd_base))
> +			return;
> +	}
> +}
> +
>  static void spi_send(void)
>  {
>  	irqs_enable();
> @@ -647,6 +703,12 @@ static void spi_send(void)
>  	if (nr_cpus > 1)
>  		spi_test_smp();
>  
> +	if (gic_version() == 3)
> +		test_irq_group(gicv3_dist_base());
> +
> +	if (gic_version() == 2)
> +		test_irq_group(gicv2_dist_base());

test_irq_group run an actual test for gicv3 only, I think you can remove the call
when gic_version is 2.

Thanks,
Alex
> +
>  	check_spurious();
>  	exit(report_summary());
>  }
> diff --git a/lib/arm/asm/gic-v3.h b/lib/arm/asm/gic-v3.h
> index 8cfaed1..2eaf944 100644
> --- a/lib/arm/asm/gic-v3.h
> +++ b/lib/arm/asm/gic-v3.h
> @@ -19,6 +19,7 @@
>   * group1 enable bits with respect to that view.
>   */
>  #define GICD_CTLR_RWP			(1U << 31)
> +#define GICD_CTLR_DS			(1U << 6)
>  #define GICD_CTLR_ARE_NS		(1U << 4)
>  #define GICD_CTLR_ENABLE_G1A		(1U << 1)
>  #define GICD_CTLR_ENABLE_G1		(1U << 0)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
