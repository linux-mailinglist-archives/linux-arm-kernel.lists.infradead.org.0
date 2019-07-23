Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A118719FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 16:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMV0Z2wKPmDx9hoVitbdVdy5PT9Yu+F7cszwR5F1TrA=; b=RVI5+H6FQIJGYk
	IqZjDbpe4p4ODxk2+gta/QBGUX9aCK/HGIQ/dTZCSG/DLiMxmS6GabA7tKyudzqRny85S93/dvzKV
	HdKyt5ExVCijE3acD/XRK3tnr8MaHfLKTvVa95Mts2aI6xzBD9vjVBhVB9qSIQGTvEWALx0rkLzg6
	dO2sPHH/ArEecb153AF1QGf2jGpOrPGcnY+60IMzYfUN5UXXWYPC1Y7wHVrF2zgMzeiSyvZUKvDOU
	6u5+gvTMbnVpptMpbGcyzUeBr2kbdQVfLHqNlWKpO3MM9FlbatwkfSA6YpP87UZtZ0JPmZwE1mrYN
	FPfaAGngD1+WFnNm/2IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpvV8-000329-K9; Tue, 23 Jul 2019 14:10:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpvUj-0002vn-VJ
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 14:10:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A90E328;
 Tue, 23 Jul 2019 07:10:20 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 359473F71F;
 Tue, 23 Jul 2019 07:10:20 -0700 (PDT)
Date: Tue, 23 Jul 2019 15:10:18 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [BOOTWRAPPER][PATCH] Make GICv3.1 extended ranges available to
 non-secure
Message-ID: <20190723141017.GB5004@lakrids.cambridge.arm.com>
References: <20190723115545.1506-1-marc.zyngier@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723115545.1506-1-marc.zyngier@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_071022_133427_8320F028 
X-CRM114-Status: GOOD (  17.17  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Tue, Jul 23, 2019 at 12:55:45PM +0100, Marc Zyngier wrote:
> If we have a GICv3.1-capable system, configure the EPPI/ESPI ranges
> to be accessible from the non-secure world.
> 
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  gic-v3.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/gic-v3.c b/gic-v3.c
> index 476f703..4b733ba 100644
> --- a/gic-v3.c
> +++ b/gic-v3.c
> @@ -17,6 +17,8 @@
>  #define GICD_TYPER			0x4
>  #define GICD_IGROUP0			0x80
>  #define GICD_IGRPMOD0			0xd00
> +#define GICD_IGROUPR0E			0x1000
> +#define GICD_IGRPMODR0E			0x3400
>  
>  #define GICD_CTLR_EnableGrp0		(1 << 0)
>  #define GICD_CTLR_EnableGrp1ns		(1 << 1)
> @@ -57,6 +59,7 @@ void gic_secure_init_primary(void)
>  		 * ChildrenAsleep to be 0.
>  		 */
>  		uint32_t waker = raw_readl(gicr_ptr + GICR_WAKER);
> +		uint32_t regs;
>  		waker &= ~GICR_WAKER_ProcessorSleep;
>  		raw_writel(waker, gicr_ptr + GICR_WAKER);
>  		dsb(st);
> @@ -72,8 +75,11 @@ void gic_secure_init_primary(void)
>  		typer = raw_readl(gicr_ptr + GICR_TYPER);
>  
>  		gicr_ptr += 0x10000; /* Go to SGI_Base */
> -		raw_writel(~0x0, gicr_ptr + GICR_IGROUP0);
> -		raw_writel(0x0, gicr_ptr + GICR_IGRPMOD0);
> +		regs = 1 + ((typer >> 27) & 0x1f);

IIUC that's GICR_TYPER.PPInum, right?

> +		for (i = 0; i < regs; i++) {
> +			raw_writel(~0x0, gicr_ptr + GICR_IGROUP0 + i * 4);
> +			raw_writel(0x0, gicr_ptr + GICR_IGRPMOD0 + i * 4);
> +		}
>  
>  		/* Next redist */
>  		gicr_ptr += 0x10000;
> @@ -87,6 +93,10 @@ void gic_secure_init_primary(void)
>  		raw_writel(~0x0, gicd_base + GICD_IGROUP0 + i * 4);
>  		raw_writel(0x0, gicd_base + GICD_IGRPMOD0 + i * 4);
>  	}
> +	for (i = 0; i < ((typer >> 27) & GICD_TYPER_ITLineNumber); i++) {

IIUC this is ESPI_range_field, so using the GICD_TYPER_ITLineNumber
mnemonic is a bit misleading.

Given the verbose regfield names, _SHIFT and _MASK definitions will make
this illegible, so could we please add extactors:

#define GICR_TYPER_PPInum(r)		(((r) >> 27) & 0x1f)
#define GICD_TYPER_ESPI_range(r)	(((r) >> 27) & 0x1f)

... and use those in the for loops?

With that, this looks good to me. If you respin, I'm happy to pick this
up. :)

Thanks,
Mark.

> +		raw_writel(~0x0, gicd_base + GICD_IGROUPR0E + i * 4);
> +		raw_writel(0x0, gicd_base + GICD_IGRPMODR0E + i * 4);
> +	}
>  }
>  
>  void gic_secure_init(void)
> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
