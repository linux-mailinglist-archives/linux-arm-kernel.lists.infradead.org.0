Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AA0E50CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 18:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTdSHAynSiiSJB+btG2TfLbGd+bQmXz/FHa5AkzbABA=; b=QA998oWxT/vUL3
	Tqsp6356spjsdnTzSErJnzIEA0TEQhiLb9C6K32cDG9BFWq+w7mLP8rxc4PBqBxWxCEDqiXf1I4Xg
	l5BEdSeO9BgwAyVotQBPf+KTXeJIUIMBL8T6swTuqXZNLA4UHUiozQkktCT+KFVmPVqk9LSPdq8Lk
	B4ZOGvim/AnB/2ld1NkziU8mKh2UIR9KSsa6mAKavBXOLmFsZWaHOqfIorCggLqZRSdi8gtesOtR0
	vNCR0Gdtie6VDv/49MlVJUpGLBzUib4P0H2jIvPFY1+s3OkWKB1/cz1Ib8cCvhSb4pupe0TFwZEwX
	u2WCzR5r5p7zFNqJ4ZDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO27X-00008Z-1m; Fri, 25 Oct 2019 16:07:23 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO27O-00007y-92
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 16:07:16 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9PG7BHh016124;
 Fri, 25 Oct 2019 11:07:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572019631;
 bh=aH0xYpBCLtSWaGeQIf9ymEqJOuiHBT1crjxasZ+vAW0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=p14Zf3HJuiJanx8qGo6uiYU3gu4W/PI+UUS6/v+vUAG1ZY/cy/kQTcZhV2qh+BG1v
 WRj8pryNOkJr1VR1GIoCh5N5dAcgocAWKWiojNEaa3xysSWcMmCQO1A51aWt8mjHCg
 LCOCHai1TbzIXtoXUxPeGGs68t2xE8ZOoYeZPvZM=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9PG7BwG053700
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 25 Oct 2019 11:07:11 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 25
 Oct 2019 11:07:00 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 25 Oct 2019 11:07:00 -0500
Received: from [192.168.2.10] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9PG78wT060585;
 Fri, 25 Oct 2019 11:07:09 -0500
Subject: Re: [RFC PATCH 1/2] dt-bindings: irqchip: Update bindings to drop the
 usage of gic as parent
To: Lokesh Vutla <lokeshvutla@ti.com>, Marc Zyngier <maz@kernel.org>
References: <20190923042405.26064-1-lokeshvutla@ti.com>
 <20190923042405.26064-2-lokeshvutla@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <65f23e59-c1e5-f44e-80e4-c4f450a2e670@ti.com>
Date: Fri, 25 Oct 2019 19:07:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190923042405.26064-2-lokeshvutla@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_090714_425099_5D89842E 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hi Lokesh,

On 9/23/19 7:24 AM, Lokesh Vutla wrote:
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
> +- power-domains:	phandle pointing to the corresponding PM domain node
> +			and an ID representing the device.
>  - ti,sci:		Phandle to TI-SCI compatible System controller node.
> -- ti,sci-dst-id:	TISCI device ID of the destination IRQ controller.
> -- ti,sci-rm-range-girq:	Array of TISCI subtype ids representing the host irqs
> -			assigned to this interrupt router. Each subtype id
> -			corresponds to a range of host irqs.
> +- interrupt-ranges:	Ranges that convert the INTR output interrupt numbers to
> +			parent's interrupt number.

I believe this change is transparent for INTA for things inside NAVSS,
like DMA, rings, etc?

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
> 

- Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
