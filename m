Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A850C8915
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 14:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBgCgJ6fU10e3HeRXRH2y+foA9qDX12T95scQwIGcTo=; b=vCIKN7JLyxV+Jy
	pCPH3jKyLYgXN2mh58SnrJHhFdaRVGpnOhgm+Z74qvrciQ4tGmFUhDTnVNf2uH1Nb0N2FDFFtF6N7
	IiepzUjTs49IjD66fTkZxi3sDOYCNRBLzaDg8Yt/9aIf3KFHPMNdBrdS5FuAEq9zIFcFg5S/QNoeq
	7BQQdH/IOhdc1sVGz3vtqXKTyn9J59KPJHQ95D7xVDa/Dr3X39YHhCSht0lkNAOGnLpPERs8xI3E+
	rRP0tL4WVjYOgP+GGxVCNMJ1+9HSs8ZiJc1zZoCGOf7jFCSChnUK6bFJqjJ65S3OIs+VvkugdvE9G
	/3ZhLveLyRzLYd07TnoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFeCm-0003Cz-7C; Wed, 02 Oct 2019 12:58:08 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFeCf-0003C2-3k
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 12:58:02 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iFeCc-0007ji-Uf; Wed, 02 Oct 2019 14:57:59 +0200
Date: Wed, 2 Oct 2019 13:57:57 +0100
From: Marc Zyngier <maz@kernel.org>
To: Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [RFC PATCH 1/2] dt-bindings: irqchip: Update bindings to drop
 the usage of gic as parent
Message-ID: <20191002135757.28901015@why>
In-Reply-To: <20190923042405.26064-2-lokeshvutla@ti.com>
References: <20190923042405.26064-1-lokeshvutla@ti.com>
 <20190923042405.26064-2-lokeshvutla@ti.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: lokeshvutla@ti.com, linux-arm-kernel@lists.infradead.org,
 nm@ti.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_055801_300752_38280617 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Nishanth Menon <nm@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 23 Sep 2019 09:54:04 +0530
Lokesh Vutla <lokeshvutla@ti.com> wrote:

> Drop the firmware related dt-bindings and use the hardware specified
> interrupt numbers within Interrupt Router. This ensures interrupt router
> DT node need not assume any interrupt parent type.
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>  .../interrupt-controller/ti,sci-intr.txt      | 28 +++++++++----------
>  1 file changed, 13 insertions(+), 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
> index 1a8718f8855d..de5de2a4b467 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
> +++ b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
> @@ -44,15 +44,14 @@ Required Properties:
>  			4: If intr supports level triggered interrupts.
>  - interrupt-controller:	Identifies the node as an interrupt controller
>  - #interrupt-cells:	Specifies the number of cells needed to encode an
> -			interrupt source. The value should be 2.
> -			First cell should contain the TISCI device ID of source
> -			Second cell should contain the interrupt source offset
> -			within the device.
> +			interrupt source. The value should be 1.
> +			First cell should contain interrupt router input number
> +			as specified by hardware.

This is breaking compatibility with existing kernels. Why isn't that a
problem?

> +- power-domains:	phandle pointing to the corresponding PM domain node
> +			and an ID representing the device.

Why is this power-domain thing part of this patch? Is it related?

>  - ti,sci:		Phandle to TI-SCI compatible System controller node.
> -- ti,sci-dst-id:	TISCI device ID of the destination IRQ controller.
> -- ti,sci-rm-range-girq:	Array of TISCI subtype ids representing the host irqs
> -			assigned to this interrupt router. Each subtype id
> -			corresponds to a range of host irqs.
> +- interrupt-ranges:	Ranges that convert the INTR output interrupt numbers to
> +			parent's interrupt number.

This isn't a standard property, is it? If it isn't, it should be
documented a bit more than just that.

>  
>  For more details on TISCI IRQ resource management refer:
>  http://downloads.ti.com/tisci/esd/latest/2_tisci_msgs/rm/rm_irq.html
> @@ -62,21 +61,20 @@ Example:
>  The following example demonstrates both interrupt router node and the consumer
>  node(main gpio) on the AM654 SoC:
>  
> -main_intr: interrupt-controller0 {
> +main_gpio_intr: interrupt-controller0 {
>  	compatible = "ti,sci-intr";
>  	ti,intr-trigger-type = <1>;
>  	interrupt-controller;
>  	interrupt-parent = <&gic500>;
> -	#interrupt-cells = <2>;
> +	power-domains = <&k3_pds 131 TI_SCI_PD_SHARED>;
> +	#interrupt-cells = <1>;
>  	ti,sci = <&dmsc>;
> -	ti,sci-dst-id = <56>;
> -	ti,sci-rm-range-girq = <0x1>;
> +	interrupt-ranges = <0 360 32>;
>  };
>  
>  main_gpio0: gpio@600000 {
>  	...
> -	interrupt-parent = <&main_intr>;
> -	interrupts = <57 256>, <57 257>, <57 258>,
> -		     <57 259>, <57 260>, <57 261>;
> +	interrupt-parent = <&main_gpio_intr>;
> +	interrupts = <192>, <193>, <194>, <195>, <196>, <197>;
>  	...
>  };

Thanks,

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
