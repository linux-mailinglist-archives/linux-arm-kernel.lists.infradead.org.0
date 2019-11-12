Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AEAF8FF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 13:50:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+3cKJgxzMq30rKRl1aJHEpOUngm+2OfCqo0Lkd28vE=; b=NwvMRPTgbihrKU
	KMrZJOlsAGgqpwy1Mo2jZDm+cW8Wr/2SUUsBY2SYP1IjL6+a5Y3wXjgWKnLsQNbpMxkNBmJxQtD9N
	umoNkQIWBT/py8XJlRgCsbRWl3FrIQHHp1LIqpd6qRaQnWGRSX1InlGihEU8V7D4aYGTiE4uIjOcQ
	dWx/XzY+xZqzgcys/xMuNbEbtLvhDMMCirxoHUBzu93yr1dDfhPZZ2GKiHiMSJpKXpZH0t+IeV+TY
	DrQI8CYWICI4kqG+cx/i7nMW4CNIDUHe7GxtIqTPQF1qmNr1OVLRmOqSg1C7BR397wPvxBtRwgwpx
	n87tbji469TviHowRoWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUVcO-0002Vr-Pb; Tue, 12 Nov 2019 12:50:00 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUVcG-0002V6-PF
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 12:49:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573562989;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nvYcM7f3oL6WcKps2IjEC36+XCQGeg8zp1MVCMPdVfM=;
 b=Gx7ZgN/tjUOdAU+aSHeqGprEx38fI6bqVjO8cIGr3mINCadw3IxumlJhPQseCdF52zhmNd
 TPf8UMst6RouDxdLKv0wiCrP9bdyqjua8D6SJ1RIwCWRM66AYKzEwWMHF25v4xUjqFKnyt
 XWqyMnpeQ9TjMMJ27oivYEm/KXE1kug=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-50-_AhoEWoDOA68FMcZsD6Vbw-1; Tue, 12 Nov 2019 07:49:48 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 55707107ACC5;
 Tue, 12 Nov 2019 12:49:45 +0000 (UTC)
Received: from [10.36.116.54] (ovpn-116-54.ams2.redhat.com [10.36.116.54])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 61D905DDA8;
 Tue, 12 Nov 2019 12:49:43 +0000 (UTC)
Subject: Re: [kvm-unit-tests PATCH 01/17] arm: gic: Enable GIC MMIO tests for
 GICv3 as well
To: Andre Przywara <andre.przywara@arm.com>, Andrew Jones
 <drjones@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-2-andre.przywara@arm.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <ee75ee48-c774-c2d8-2156-f9ed256733e6@redhat.com>
Date: Tue, 12 Nov 2019 13:49:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191108144240.204202-2-andre.przywara@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: _AhoEWoDOA68FMcZsD6Vbw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_044952_892269_56782669 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
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
> So far the GIC MMIO tests were only enabled for a GICv2 guest. Modern
> machines tend to have a GICv3-only GIC, so can't run those tests.
> It turns out that most GIC distributor registers we test in the unit
> tests are actually the same in GICv3, so we can just enable those tests
> for GICv3 guests as well.
> The only exception is the CPU number in the TYPER register, which is
> only valid in the GICv2 compat mode (ARE=0), which KVM does not support.
> So we protect this test against running on a GICv3 guest.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arm/gic.c            | 13 +++++++++++--
>  arm/unittests.cfg    | 26 ++++++++++++++++++++++----
>  lib/arm/asm/gic-v3.h |  2 ++
>  3 files changed, 35 insertions(+), 6 deletions(-)
> 
> diff --git a/arm/gic.c b/arm/gic.c
> index adb6aa4..04b3337 100644
> --- a/arm/gic.c
> +++ b/arm/gic.c
> @@ -6,6 +6,7 @@
>   *   + MMIO access tests
>   * GICv3
>   *   + test sending/receiving IPIs
> + *   + MMIO access tests
>   *
>   * Copyright (C) 2016, Red Hat Inc, Andrew Jones <drjones@redhat.com>
>   *
> @@ -496,7 +497,14 @@ static void gic_test_mmio(void)
>  		idreg = gic_dist_base + GICD_ICPIDR2;
>  		break;
>  	case 0x3:
> -		report_abort("GICv3 MMIO tests NYI");
> +		/*
> +		 * We only test generic registers or those affecting
> +		 * SPIs, so don't need to consider the SGI base in
> +		 * the redistributor here.
> +		 */
> +		gic_dist_base = gicv3_dist_base();
> +		idreg = gic_dist_base + GICD_PIDR2;
> +		break;
>  	default:
>  		report_abort("GIC version %d not supported", gic_version());
>  	}
> @@ -505,7 +513,8 @@ static void gic_test_mmio(void)
>  	nr_irqs = GICD_TYPER_IRQS(reg);
>  	report_info("number of implemented SPIs: %d", nr_irqs - GIC_FIRST_SPI);
>  
> -	test_typer_v2(reg);
> +	if (gic_version() == 0x2)
> +		test_typer_v2(reg);

nit: reports mention ICPIDR2 independently on the version.

	report("ICPIDR2 is read-only", test_readonly_32(idreg, false));
	report_info("value of ICPIDR2: 0x%08x", reg);

>  
>  	report_info("IIDR: 0x%08x", readl(gic_dist_base + GICD_IIDR));
>  
> diff --git a/arm/unittests.cfg b/arm/unittests.cfg
> index daeb5a0..12ac142 100644
> --- a/arm/unittests.cfg
> +++ b/arm/unittests.cfg
> @@ -86,28 +86,46 @@ smp = $((($MAX_SMP < 8)?$MAX_SMP:8))
>  extra_params = -machine gic-version=2 -append 'ipi'
>  groups = gic
>  
> -[gicv2-mmio]
> +[gicv3-ipi]
> +file = gic.flat
> +smp = $MAX_SMP
> +extra_params = -machine gic-version=3 -append 'ipi'
> +groups = gic
> +
> +[gicv2-max-mmio]
>  file = gic.flat
>  smp = $((($MAX_SMP < 8)?$MAX_SMP:8))
>  extra_params = -machine gic-version=2 -append 'mmio'
>  groups = gic
>  
> +[gicv3-max-mmio]
> +file = gic.flat
> +smp = $MAX_SMP
> +extra_params = -machine gic-version=3 -append 'mmio'
> +groups = gic
> +
>  [gicv2-mmio-up]
>  file = gic.flat
>  smp = 1
>  extra_params = -machine gic-version=2 -append 'mmio'
>  groups = gic
>  
> +[gicv3-mmio-up]
> +file = gic.flat
> +smp = 1
> +extra_params = -machine gic-version=3 -append 'mmio'
> +groups = gic
> +
>  [gicv2-mmio-3p]
>  file = gic.flat
>  smp = $((($MAX_SMP < 3)?$MAX_SMP:3))
>  extra_params = -machine gic-version=2 -append 'mmio'
>  groups = gic
>  
> -[gicv3-ipi]
> +[gicv3-mmio-3p]
>  file = gic.flat
> -smp = $MAX_SMP
> -extra_params = -machine gic-version=3 -append 'ipi'
> +smp = $((($MAX_SMP < 3)?$MAX_SMP:3))
why do we keep this smp computation?
> +extra_params = -machine gic-version=2 -append 'mmio'
gic-version=3
>  groups = gic
>  
>  [gicv2-active]
> diff --git a/lib/arm/asm/gic-v3.h b/lib/arm/asm/gic-v3.h
> index 347be2f..ed6a5ad 100644
> --- a/lib/arm/asm/gic-v3.h
> +++ b/lib/arm/asm/gic-v3.h
> @@ -23,6 +23,8 @@
>  #define GICD_CTLR_ENABLE_G1A		(1U << 1)
>  #define GICD_CTLR_ENABLE_G1		(1U << 0)
>  
> +#define GICD_PIDR2			0xffe8
> +
>  /* Re-Distributor registers, offsets from RD_base */
>  #define GICR_TYPER			0x0008
>  
>

Otherwise Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
