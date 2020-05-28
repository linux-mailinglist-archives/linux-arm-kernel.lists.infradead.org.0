Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 435C71E6E71
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 00:14:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APjHkgSngeKCSyy81CuELQU3xPYEgdUb4osURXLXwvk=; b=sfPihyhYorQc2R
	F8lxLO3jMFgQ4cmmFkMlN1KEPZblSwDFJ3GY5tkawk3km3g3cBag/csJ2dBjbIMwqQXm7/JMT/kyL
	gw0LF1jijJFJrqJXzJbylzn2KDgNDeZcnCdCGBMxUxroBatoIChzpwBzZDsv8ZKPsVZDNSWOa+pcx
	EGyuvCtM6PWXdXlD3hJ4SL3fFeJHYI4S6hpGNTZqSPovgajbEsAfM1nE/38W53PaKtASToCnZcBn9
	j5puxj194ypwZDSHc44RrvgdOoLGdJBOohXN8x9ZRGeiChIjAU6LgHRB42O1lTUkq0yzokbGSXHB1
	movX9faQHH1kIJSoe2VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeQn6-0007BZ-JJ; Thu, 28 May 2020 22:14:20 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeQmx-0007Au-Oc
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 22:14:13 +0000
Received: by mail-io1-f66.google.com with SMTP id k18so254014ion.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 15:14:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eZt6S4Voc1GVGbmZ9OSkpYu147Jwa8sfxjXcTtEMq88=;
 b=P8bJUjDUtsB2T0Rm3HXdPcJZ0cXDNcb+km3jQ27N4ViUTet29vc4nwSAU0MDuROJcY
 II97TPqs7smOkdskuR7KISSoSKomlS1Ih9rM+2ybafKOguEIXUNPKg0AZkVN9L+rp2n4
 kZZnlOyZxYkk8NoD6ChlgFXEE57KVFf3+8ZOGETclv3ImdtHrxlDZ7rBBNgIXOdHTdMG
 Fp+m8v27dISvhonF0poNMEPMS4oF6QPVTR4ZGU9duBTHgkt7h/EhiGIyk3aephM7TfMt
 zaTQSgPUdOg+FV9F5rGUmoXlAoM3dv52Lebw67AKrxyE2uc+3CEY6n9UH3I21lHQgCY8
 qjuQ==
X-Gm-Message-State: AOAM532rE5ZX6MzEbWGn2nGErvkqWIp6tLN8dx3fqrIUcyGzkrH0g66N
 TQ4ax3fBRr7qVm9zt4AKKqbDWDg=
X-Google-Smtp-Source: ABdhPJy3G7A8UkjiY37GNsMp60BJHw4S4Y4hMohQN9/R5R0vFSwjndJxazHP9bVDM7DganPPCmGqRg==
X-Received: by 2002:a5d:8ad8:: with SMTP id e24mr4044872iot.41.1590704050154; 
 Thu, 28 May 2020 15:14:10 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id s71sm3905985ilc.32.2020.05.28.15.14.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 15:14:09 -0700 (PDT)
Received: (nullmailer pid 776909 invoked by uid 1000);
 Thu, 28 May 2020 22:14:06 -0000
Date: Thu, 28 May 2020 16:14:06 -0600
From: Rob Herring <robh@kernel.org>
To: Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH 04/12] dt-bindings: irqchip: ti, sci-intr: Update bindings
 to drop the usage of gic as parent
Message-ID: <20200528221406.GA769073@bogus>
References: <20200520124454.10532-1-lokeshvutla@ti.com>
 <20200520124454.10532-5-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520124454.10532-5-lokeshvutla@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_151411_800203_33BD47F1 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Nishanth Menon <nm@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Marc Zyngier <maz@kernel.org>, Sekhar Nori <nsekhar@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 06:14:46PM +0530, Lokesh Vutla wrote:
> Drop the firmware related dt-bindings and use the hardware specified
> interrupt numbers within Interrupt Router. This ensures interrupt router
> DT node need not assume any interrupt parent type.

I didn't like this binding to begin with, but now you're breaking 
compatibility.

> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>  .../interrupt-controller/ti,sci-intr.txt      | 31 ++++++++++---------
>  1 file changed, 16 insertions(+), 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
> index 1a8718f8855d..8b56b2de1c73 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
> +++ b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
> @@ -44,15 +44,17 @@ Required Properties:
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
>  - ti,sci:		Phandle to TI-SCI compatible System controller node.
> -- ti,sci-dst-id:	TISCI device ID of the destination IRQ controller.
> -- ti,sci-rm-range-girq:	Array of TISCI subtype ids representing the host irqs
> -			assigned to this interrupt router. Each subtype id
> -			corresponds to a range of host irqs.
> +- ti,sci-dev-id:	TISCI device id of interrupt controller.
> +- ti,interrupt-ranges:	Set of triplets containing ranges that convert
> +			the INTR output interrupt numbers to parent's
> +			interrupt number. Each triplet has following entries:
> +			- First entry specifies the base for intr output irq
> +			- Second entry specifies the base for parent irqs
> +			- Third entry specifies the limit

Humm, sounds like what interrupt-map does.

>  
>  For more details on TISCI IRQ resource management refer:
>  http://downloads.ti.com/tisci/esd/latest/2_tisci_msgs/rm/rm_irq.html
> @@ -62,21 +64,20 @@ Example:
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
> +	#interrupt-cells = <1>;
>  	ti,sci = <&dmsc>;
> -	ti,sci-dst-id = <56>;
> -	ti,sci-rm-range-girq = <0x1>;
> +	ti,sci-dev-id = <131>;
> +	ti,interrupt-ranges = <0 360 32>;
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
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
