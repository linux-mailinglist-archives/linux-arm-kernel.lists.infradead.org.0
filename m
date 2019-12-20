Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F69127A24
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 12:41:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rv/LxT6ENTm1Kd/ycDRu16zib8CGtzHVX4xdXlm3fu0=; b=YE+yC2yKuGzDLK
	n8amFsBai6GObytP4x1D5o9LqDT/n1RMApLoD4ncsPKagA093SaB4utvWt6ga0wL8MztVNfNjQ0+O
	mgYeo1spKUhvt9c+VQpsEipGcsVAy2b4s9vxrpIOuGf2HPHwdrLY4GSZm5UazOcu7/cOuHVLS4UDi
	TnCDChCcJCYHSxjrlXt0TMmkEwmWqVIYpwh/IQZ4aDIJi7tMP596GvNA81u9eBvo4u3YAMUBjgAgX
	iC5agzzaiNf9fQVG0ozQRVAh1AZMImW3jsf57criDZzVLWA7JEEcOzXiq5xpZDyQZZIrOBNQOKNzE
	HuQSJ9WXNJ4J0CDMNU0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGfM-0005Ht-OT; Fri, 20 Dec 2019 11:41:56 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGfC-0005GJ-A0
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 11:41:47 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBKBfOh9010342;
 Fri, 20 Dec 2019 05:41:24 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576842084;
 bh=w9s9i7Ww44rCNohjRaPm+5Se46XEGbZcF1GgQsc7m0Y=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=g2ShrcW3zsqpojqXbe9w2gE0RKYmB8+5O8Je41uReBbDOIVzuoSWzMKcrN8RZ33IS
 cFc+7H6gpdoA0RevVYJhRaAtfq/ESB7qdIAgAqBHwxyIaIkGlAASHYYvdyZzES6Jrw
 BV0ibljWPVgc2xfBtkCCg9IlytbXqrnmUDxNRTyY=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBKBfOpe007487
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Dec 2019 05:41:24 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Dec 2019 05:41:23 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Dec 2019 05:41:23 -0600
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBKBfJ6t015527;
 Fri, 20 Dec 2019 05:41:20 -0600
Subject: Re: [PATCH V3 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
To: Joakim Zhang <qiangqing.zhang@nxp.com>, <maz@kernel.org>,
 <tglx@linutronix.de>, <jason@lakedaemon.net>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>
References: <1576827431-31942-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576827431-31942-2-git-send-email-qiangqing.zhang@nxp.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <0cecd3af-8bca-c0d3-1312-925624c63dbf@ti.com>
Date: Fri, 20 Dec 2019 17:10:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1576827431-31942-2-git-send-email-qiangqing.zhang@nxp.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_034146_429531_7BA7F561 
X-CRM114-Status: GOOD (  18.76  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, fugang.duan@nxp.com,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 20/12/19 1:07 PM, Joakim Zhang wrote:
> This patch adds the DT bindings for the NXP INTMUX interrupt multiplexer
> for i.MX8 family SoCs.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  .../interrupt-controller/fsl,intmux.txt       | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
> new file mode 100644
> index 000000000000..3ebe9cac5f20
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
> @@ -0,0 +1,36 @@
> +Freescale INTMUX interrupt multiplexer
> +
> +Required properties:
> +
> +- compatible: Should be:
> +   - "fsl,imx-intmux"
> +- reg: Physical base address and size of registers.
> +- interrupts: Should contain the parent interrupt lines (up to 8) used to
> +  multiplex the input interrupts.
> +- clocks: Should contain one clock for entry in clock-names.
> +- clock-names:
> +   - "ipg": main logic clock
> +- interrupt-controller: Identifies the node as an interrupt controller.
> +- #interrupt-cells: Specifies the number of cells needed to encode an
> +  interrupt source. The value must be 2.
> +   - the 1st cell: hardware interrupt number> +   - the 2nd cell: channel index, value must smaller than channels used

As per the xlate function, 1st cell is channel index and 2nd cell is hw
interrupt number no?

Thanks and regards,
Lokesh

> +
> +Optional properties:
> +
> +- fsl,intmux_chans: The number of channels used for interrupt source. The
> +  Maximum value is 8. If this property is not set in DT then driver uses
> +  1 channel by default.
> +
> +Example:
> +
> +	intmux@37400000 {
> +		compatible = "fsl,imx-intmux";
> +		reg = <0x37400000 0x1000>;
> +		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&clk IMX8QM_CM40_IPG_CLK>;
> +		clock-names = "ipg";
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +	};
> +
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
