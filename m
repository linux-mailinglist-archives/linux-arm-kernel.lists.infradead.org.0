Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBFDF8FF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 13:50:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/z3StzBqyguErmJ7DLNAhKBBlqHZiRLF/+M2Vd0Ql1E=; b=jXrs1zZMuWcXSR
	fwlsZ3Xy8qJM8f5EzrA1ZCE9xlDdppNSgauKjnFsowHBITbSfLFKPwOsywg9TdRIPemfR9oZOtz2p
	enklZhE8cuVl9pmbzfqnjpcgszLHlI8MhSSA894g74UY3dTN5JMP7EfFVooqMaBEM2qdcbFw1wS5W
	GkdEbKLVoYBHYPPMZFYZGlee5ZsLotBvvDmhL3CrN3OdiXYW0Pk6OaxnGKReKaxEMsAWmcz93yqSZ
	s6H568AN0CblqT4JAhJSc1MtBG+9V9KyUNN/hGve6wMAKTaS6aYQbg8tFcGPcL3bzT+7MxaavRar9
	0ubwts/lhW2rPV6pdR3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUVcp-00041q-2l; Tue, 12 Nov 2019 12:50:27 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUVcM-0002XB-LL
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 12:50:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573562996;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=g9s0JIN2xt+eywacAxoWziOVtnj6SE0YzxR2eAkIxak=;
 b=HwNjv8wkyHAUN6apxz5bJYk78NPTG4nKTgrtdI5uQo2E6leo5PTxeqPW6ds0eH+x1RJSi3
 ylaG4/a699iVP5f0j/krUiLWSskNWpy7I5v9ZqW+8kY7df2rsb5wqjwJNY7KzHaFvFEnvh
 DJeJL7GXmjXLQhIyPX2XMAT2sitjWe8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-318-qfzcBp8jPdia9I30u2CuOg-1; Tue, 12 Nov 2019 07:49:55 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 696978017E0;
 Tue, 12 Nov 2019 12:49:54 +0000 (UTC)
Received: from [10.36.116.54] (ovpn-116-54.ams2.redhat.com [10.36.116.54])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B2A4A10001BD;
 Tue, 12 Nov 2019 12:49:52 +0000 (UTC)
Subject: Re: [kvm-unit-tests PATCH 02/17] arm: gic: Generalise function names
To: Andre Przywara <andre.przywara@arm.com>, Andrew Jones
 <drjones@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-3-andre.przywara@arm.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <b2657cf3-202a-3fc5-3268-1f2fcc1b68f2@redhat.com>
Date: Tue, 12 Nov 2019 13:49:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191108144240.204202-3-andre.przywara@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: qfzcBp8jPdia9I30u2CuOg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_044958_807314_AB39B4D5 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi Andre,

On 11/8/19 3:42 PM, Andre Przywara wrote:
> In preparation for adding functions to test SPI interrupts, generalise
> some existing functions dealing with IPIs so far, since most of them
> are actually generic for all kind of interrupts.
> This also reformats the irq_handler() function, to later expand it
> more easily.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arm/gic.c | 40 +++++++++++++++++++++-------------------
>  1 file changed, 21 insertions(+), 19 deletions(-)
> 
> diff --git a/arm/gic.c b/arm/gic.c
> index 04b3337..a114009 100644
> --- a/arm/gic.c
> +++ b/arm/gic.c
> @@ -135,28 +135,30 @@ static void check_ipi_sender(u32 irqstat)
>  	}
>  }
>  
> -static void check_irqnr(u32 irqnr)
> +static void check_irqnr(u32 irqnr, int expected)
>  {
> -	if (irqnr != IPI_IRQ)
> +	if (irqnr != expected)
>  		bad_irq[smp_processor_id()] = irqnr;
>  }
>  
> -static void ipi_handler(struct pt_regs *regs __unused)
> +static void irq_handler(struct pt_regs *regs __unused)
>  {
>  	u32 irqstat = gic_read_iar();
>  	u32 irqnr = gic_iar_irqnr(irqstat);
>  
> -	if (irqnr != GICC_INT_SPURIOUS) {
> -		gic_write_eoir(irqstat);
> -		smp_rmb(); /* pairs with wmb in stats_reset */
> -		++acked[smp_processor_id()];
> -		check_ipi_sender(irqstat);
> -		check_irqnr(irqnr);
> -		smp_wmb(); /* pairs with rmb in check_acked */
> -	} else {
> +	if (irqnr == GICC_INT_SPURIOUS) {
>  		++spurious[smp_processor_id()];
>  		smp_wmb();
> +		return;
>  	}
> +
> +	gic_write_eoir(irqstat);
> +
> +	smp_rmb(); /* pairs with wmb in stats_reset */
> +	++acked[smp_processor_id()];
> +	check_ipi_sender(irqstat);
> +	check_irqnr(irqnr, IPI_IRQ);
> +	smp_wmb(); /* pairs with rmb in check_acked */
>  }
>  
>  static void gicv2_ipi_send_self(void)
> @@ -216,20 +218,20 @@ static void ipi_test_smp(void)
>  	report_prefix_pop();
>  }
>  
> -static void ipi_enable(void)
> +static void irqs_enable(void)
>  {
>  	gic_enable_defaults();
>  #ifdef __arm__
> -	install_exception_handler(EXCPTN_IRQ, ipi_handler);
> +	install_exception_handler(EXCPTN_IRQ, irq_handler);
>  #else
> -	install_irq_handler(EL1H_IRQ, ipi_handler);
> +	install_irq_handler(EL1H_IRQ, irq_handler);
>  #endif
>  	local_irq_enable();
>  }
>  
>  static void ipi_send(void)
>  {
> -	ipi_enable();
> +	irqs_enable();
>  	wait_on_ready();
>  	ipi_test_self();
>  	ipi_test_smp();
> @@ -237,9 +239,9 @@ static void ipi_send(void)
>  	exit(report_summary());
>  }
>  
> -static void ipi_recv(void)
> +static void irq_recv(void)
>  {
> -	ipi_enable();
> +	irqs_enable();
>  	cpumask_set_cpu(smp_processor_id(), &ready);
>  	while (1)
>  		wfi();
> @@ -250,7 +252,7 @@ static void ipi_test(void *data __unused)
>  	if (smp_processor_id() == IPI_SENDER)
>  		ipi_send();
>  	else
> -		ipi_recv();
> +		irq_recv();
>  }
>  
>  static struct gic gicv2 = {
> @@ -285,7 +287,7 @@ static void ipi_clear_active_handler(struct pt_regs *regs __unused)
>  
>  		smp_rmb(); /* pairs with wmb in stats_reset */
>  		++acked[smp_processor_id()];
> -		check_irqnr(irqnr);
> +		check_irqnr(irqnr, IPI_IRQ);
>  		smp_wmb(); /* pairs with rmb in check_acked */
>  	} else {
>  		++spurious[smp_processor_id()];
> 
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
