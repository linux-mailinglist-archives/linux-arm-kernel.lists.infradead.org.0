Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEE2F911C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:54:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRHbWZzYKSONMkh5P1YoFcPkfZPBqX07xT2nv2OYyDA=; b=LIJdMt99HcJfc3
	7IBgdZbBS3Xv7XpNih69E+GjLrwn4vIwcTnYLm3KVPGFXZPUyo8TR1NJwd3QKjL6880Ua1RkfsGQD
	Z3+ktBaNefP2rumLpLkBQU0MNOcTqxGjtTZlNhiyyLxXKI2YjxTzdUQU1eUrMUWgLTa+RU47AaA2p
	Yu0uIOvda1CfSKNCuLj1r/buSzBjNp+u6McuA1IhJJ7aOb+Kk5VMx4aoLLePe4i3YN6Mosnmddqd7
	f3+NmAZ9ouzmz8t84V+ptrUQfpAmmQ0eEzmms+v6E8L4HF0dChnpoPmnmNuqOIz4YPYdrHhaajUsM
	67XfdSPiKYx9ZPntiruA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUWcw-0000EC-97; Tue, 12 Nov 2019 13:54:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUWcj-0008QZ-QN
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:54:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 504C21FB;
 Tue, 12 Nov 2019 05:54:24 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5FE4D3F6C4;
 Tue, 12 Nov 2019 05:54:23 -0800 (PST)
Subject: Re: [kvm-unit-tests PATCH 06/17] arm: gic: Add simple shared IRQ test
To: Andre Przywara <andre.przywara@arm.com>, Andrew Jones
 <drjones@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-7-andre.przywara@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <de22edec-e562-426d-4d87-dd188d6d75de@arm.com>
Date: Tue, 12 Nov 2019 13:54:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191108144240.204202-7-andre.przywara@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_055425_954145_A3075DB0 
X-CRM114-Status: GOOD (  20.97  )
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
> So far we were testing the GIC's MMIO interface and IPI delivery.
> Add a simple test to trigger a shared IRQ (SPI), using the ISPENDR
> register in the (emulated) GIC distributor.
> This tests configuration of an IRQ (target CPU) and whether it can be
> properly enabled or disabled.
>
> This is a bit more sophisticated than actually needed at this time,
> but paves the way for extending this to FIQs in the future.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arm/gic.c         | 79 +++++++++++++++++++++++++++++++++++++++++++++++
>  arm/unittests.cfg | 12 +++++++
>  2 files changed, 91 insertions(+)
>
> diff --git a/arm/gic.c b/arm/gic.c
> index c909668..3be76cb 100644
> --- a/arm/gic.c
> +++ b/arm/gic.c
> @@ -546,6 +546,81 @@ static void gic_test_mmio(void)
>  		test_targets(nr_irqs);
>  }
>  
> +static void gic_spi_trigger(int irq)
> +{
> +	gic_set_irq_bit(irq, GICD_ISPENDR);
> +}
> +
> +static void spi_configure_irq(int irq, int cpu)

The function name is slightly misleading - it might be interpreted as configure
irq to target cpu. How about spi_enable_irq?

> +{
> +	gic_set_irq_target(irq, cpu);
> +	gic_set_irq_priority(irq, 0xa0);

It might be worth adding a comment here stating why you have chosen this priority
over priority 0.

> +	gic_enable_irq(irq);
> +}
> +
> +#define IRQ_STAT_NONE		0
> +#define IRQ_STAT_IRQ		1
> +#define IRQ_STAT_TYPE_MASK	0x3
> +#define IRQ_STAT_NO_CLEAR	4
> +
> +/*
> + * Wait for an SPI to fire (or not) on a certain CPU.
> + * Clears the pending bit if requested afterwards.
> + */
> +static void trigger_and_check_spi(const char *test_name,
> +				  unsigned int irq_stat,
> +				  int cpu)
> +{
> +	cpumask_t cpumask;
> +
> +	stats_reset();
> +	gic_spi_trigger(SPI_IRQ);
> +	cpumask_clear(&cpumask);
> +	switch (irq_stat & IRQ_STAT_TYPE_MASK) {
> +	case IRQ_STAT_NONE:
> +		break;
> +	case IRQ_STAT_IRQ:
> +		cpumask_set_cpu(cpu, &cpumask);
> +		break;
> +	}
> +
> +	check_acked(test_name, &cpumask);
> +
> +	/* Clean up pending bit in case this IRQ wasn't taken. */
> +	if (!(irq_stat & IRQ_STAT_NO_CLEAR))
> +		gic_set_irq_bit(SPI_IRQ, GICD_ICPENDR);

There's only one call site which sets this flag. How about you remove the flag
define and the above two lines of code and replace them with one line of code at
the call site? And if you do that, you can turn the flags into proper enums.

> +}
> +
> +static void spi_test_single(void)
> +{
> +	cpumask_t cpumask;
> +	int cpu = smp_processor_id();
> +
> +	spi_configure_irq(SPI_IRQ, cpu);
> +
> +	trigger_and_check_spi("SPI triggered by CPU write", IRQ_STAT_IRQ, cpu);
> +
> +	gic_disable_irq(SPI_IRQ);
> +	trigger_and_check_spi("disabled SPI does not fire",
> +			      IRQ_STAT_NONE | IRQ_STAT_NO_CLEAR, cpu);
> +
> +	stats_reset();
> +	cpumask_clear(&cpumask);
> +	cpumask_set_cpu(cpu, &cpumask);
> +	gic_enable_irq(SPI_IRQ);
> +	check_acked("now enabled SPI fires", &cpumask);
> +}
> +
> +static void spi_send(void)
> +{
> +	irqs_enable();
> +
> +	spi_test_single();

I suggest your rename this to spi_test_self, to match ipi_test_self.

> +
> +	check_spurious();
> +	exit(report_summary());
> +}
> +
>  int main(int argc, char **argv)
>  {
>  	if (!gic_init()) {
> @@ -577,6 +652,10 @@ int main(int argc, char **argv)
>  		report_prefix_push(argv[1]);
>  		gic_test_mmio();
>  		report_prefix_pop();
> +	} else if (strcmp(argv[1], "irq") == 0) {
> +		report_prefix_push(argv[1]);
> +		spi_send();
> +		report_prefix_pop();
>  	} else {
>  		report_abort("Unknown subtest '%s'", argv[1]);
>  	}
> diff --git a/arm/unittests.cfg b/arm/unittests.cfg
> index 12ac142..7a78275 100644
> --- a/arm/unittests.cfg
> +++ b/arm/unittests.cfg
> @@ -92,6 +92,18 @@ smp = $MAX_SMP
>  extra_params = -machine gic-version=3 -append 'ipi'
>  groups = gic
>  
> +[gicv2-spi]
> +file = gic.flat
> +smp = $((($MAX_SMP < 8)?$MAX_SMP:8))
> +extra_params = -machine gic-version=2 -append 'irq'

I think 'spi' as a command line parameter makes more sense for the gic{v2,v3}-spi
tests.

Thanks,
Alex
> +groups = gic
> +
> +[gicv3-spi]
> +file = gic.flat
> +smp = $MAX_SMP
> +extra_params = -machine gic-version=3 -append 'irq'
> +groups = gic
> +
>  [gicv2-max-mmio]
>  file = gic.flat
>  smp = $((($MAX_SMP < 8)?$MAX_SMP:8))

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
