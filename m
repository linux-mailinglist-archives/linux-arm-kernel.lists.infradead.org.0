Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE80271C4E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 17:56:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZEIZSCtcxBlozVmhk5wkVMLnPwCpCX01es0I4c/ZXY=; b=uZ5TtUDnnFvafG
	MH0zwsOeAokQ4E9aBDBRWTgD9U02KDlRAF0CCOEpsKCDmOEhWpFtJbcEWiMcC4Clhzl1G1BGp9rDq
	i60THB1IHfA6d15ds+oBaY7onRTySNGlpYOb+DwS/BUDNCd+JBMUZUONW12zqJGZNs8GMf7LwID53
	6JlNi57PhQjUjPStl5lSn5UPNGguTq+J9C1mims3LwNJzfOxy1b+RsI7aphJGYmlPhx7mjhQ54/V+
	1IpRBWia9Sj2RhK5fPsD7VxS85MLsoyNw3TvoJfRjOvuFspPwOXMcCPXgp8pGTsuPudt0+gRRIB+N
	z/xWhnE7saBg0UF1gfjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpx9e-00018U-9J; Tue, 23 Jul 2019 15:56:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpx9Q-000182-7z
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 15:56:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7467728;
 Tue, 23 Jul 2019 08:56:27 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 02A623F71A;
 Tue, 23 Jul 2019 08:56:26 -0700 (PDT)
Date: Tue, 23 Jul 2019 16:56:24 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [BOOTWRAPPER][PATCH v2] Make GICv3.1 extended ranges available
 to non-secure
Message-ID: <20190723155624.GC5004@lakrids.cambridge.arm.com>
References: <20190723150004.3893-1-marc.zyngier@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723150004.3893-1-marc.zyngier@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_085628_332310_84AF761D 
X-CRM114-Status: GOOD (  15.65  )
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

On Tue, Jul 23, 2019 at 04:00:04PM +0100, Marc Zyngier wrote:
> If we have a GICv3.1-capable system, configure the EPPI/ESPI ranges
> to be accessible from the non-secure world.
> 
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
> 
> Notes:
>     v2: Added GICR_TYPER_PPInum and GICD_TYPER_ESPI_range macros to
>         make the loops more readable
> 
>  gic-v3.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)

Thanks, applied.

Mark.

> 
> diff --git a/gic-v3.c b/gic-v3.c
> index 476f703..ae2d2bc 100644
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
> @@ -24,10 +26,12 @@
>  #define GICD_CTLR_ARE_S			(1 << 4)
>  #define GICD_CTLR_ARE_NS		(1 << 5)
>  #define GICD_TYPER_ITLineNumber		0x1f
> +#define GICD_TYPER_ESPI_range(r)	(((r) >> 27) & 0x1f)
>  
>  #define GICR_WAKER			0x14
>  
>  #define GICR_TYPER			0x8
> +#define GICR_TYPER_PPInum(r)		(((r) >> 27) & 0x1f)
>  #define GICR_IGROUP0			0x80
>  #define GICR_IGRPMOD0			0xD00
>  
> @@ -72,8 +76,10 @@ void gic_secure_init_primary(void)
>  		typer = raw_readl(gicr_ptr + GICR_TYPER);
>  
>  		gicr_ptr += 0x10000; /* Go to SGI_Base */
> -		raw_writel(~0x0, gicr_ptr + GICR_IGROUP0);
> -		raw_writel(0x0, gicr_ptr + GICR_IGRPMOD0);
> +		for (i = 0; i < (1 + GICR_TYPER_PPInum(typer)); i++) {
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
> +	for (i = 0; i < GICD_TYPER_ESPI_range(typer); i++) {
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
