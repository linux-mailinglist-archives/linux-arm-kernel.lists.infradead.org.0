Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46810127B10
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 13:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDJXabEIKT8AbdrGTatOj59l/9QVeML0xc/6171v+pM=; b=tzYeQkZlR2RM6h
	2TxTqY/PxLELMAvVhSbZb2wKCfnrHPOM4jSyQAPCRKfUAZ9zBMumC0+Q5zLctEP9kBftsHEg+kQqN
	XewSoF0ADQLzNFMLOZMeravivCYViXA1cZuAcCdbZSxuGacV8Oje4Nsz5Ni6DNW19+tL6+V95w3wI
	uiius88iUhlPX8fIKr0UbYhEC/dZXNNhemjNeuLMu3EhA6AuF6zTTkSUNPbPjNnM+MRHa+2bnCvRC
	uF4bzhSkqpc989AuFrjDSlRA2l/l2HUA3z09Y3aX4u2IbI6IF/hkr7cXiBULqV4Q8drCu/wh6XLnc
	amOOdA72ngdWAUkawqjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiHRl-0001b3-Gf; Fri, 20 Dec 2019 12:31:57 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiHRc-0001aV-Hu
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 12:31:50 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBKCVQhb094857;
 Fri, 20 Dec 2019 06:31:26 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576845086;
 bh=lmntjsYZD2zvLWbmw/UGvX0UwtRYBUAg3GKS2/RioC0=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=EdqfovjoXUhrUmZVLvo8IG25HziLhocUDtW2NRqPV9bkHbuBhEdHxyBBXNbPNRPtA
 SMQVWE0yJrWuCdVCV8Gu3oO2MyJGbP1IipzHxhobmi9Jtr0aevopl2Qz0aJjaeDs/x
 BtzegG4jogMKo3v20oXUXYzq+5QXzD5DmdJCPnb8=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBKCVP4F030517;
 Fri, 20 Dec 2019 06:31:25 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Dec 2019 06:31:25 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Dec 2019 06:31:25 -0600
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBKCVLPG099921;
 Fri, 20 Dec 2019 06:31:22 -0600
Subject: Re: [PATCH V3 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Joakim Zhang <qiangqing.zhang@nxp.com>, <maz@kernel.org>,
 <tglx@linutronix.de>, <jason@lakedaemon.net>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>
References: <1576827431-31942-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576827431-31942-2-git-send-email-qiangqing.zhang@nxp.com>
 <0cecd3af-8bca-c0d3-1312-925624c63dbf@ti.com>
Message-ID: <dab8f6ba-2b5e-7b98-55c9-ace98f14842e@ti.com>
Date: Fri, 20 Dec 2019 18:00:28 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <0cecd3af-8bca-c0d3-1312-925624c63dbf@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_043148_717424_45D1DBB1 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
Cc: kernel@pengutronix.de, fugang.duan@nxp.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 20/12/19 5:10 PM, Lokesh Vutla wrote:
> 
> 
> On 20/12/19 1:07 PM, Joakim Zhang wrote:
>> This patch adds the DT bindings for the NXP INTMUX interrupt multiplexer
>> for i.MX8 family SoCs.
>>
>> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
>> ---
>>  .../interrupt-controller/fsl,intmux.txt       | 36 +++++++++++++++++++
>>  1 file changed, 36 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
>>
>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
>> new file mode 100644
>> index 000000000000..3ebe9cac5f20
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
>> @@ -0,0 +1,36 @@
>> +Freescale INTMUX interrupt multiplexer
>> +
>> +Required properties:
>> +
>> +- compatible: Should be:
>> +   - "fsl,imx-intmux"
>> +- reg: Physical base address and size of registers.
>> +- interrupts: Should contain the parent interrupt lines (up to 8) used to
>> +  multiplex the input interrupts.
>> +- clocks: Should contain one clock for entry in clock-names.
>> +- clock-names:
>> +   - "ipg": main logic clock
>> +- interrupt-controller: Identifies the node as an interrupt controller.
>> +- #interrupt-cells: Specifies the number of cells needed to encode an
>> +  interrupt source. The value must be 2.
>> +   - the 1st cell: hardware interrupt number> +   - the 2nd cell: channel index, value must smaller than channels used
> 
> As per the xlate function, 1st cell is channel index and 2nd cell is hw
> interrupt number no?

Sorry my bad, I read it wrong. Ignore this comment.

Thanks and regards,
Lokesh

> 
> Thanks and regards,
> Lokesh
> 
>> +
>> +Optional properties:
>> +
>> +- fsl,intmux_chans: The number of channels used for interrupt source. The
>> +  Maximum value is 8. If this property is not set in DT then driver uses
>> +  1 channel by default.
>> +
>> +Example:
>> +
>> +	intmux@37400000 {
>> +		compatible = "fsl,imx-intmux";
>> +		reg = <0x37400000 0x1000>;
>> +		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
>> +		clocks = <&clk IMX8QM_CM40_IPG_CLK>;
>> +		clock-names = "ipg";
>> +		interrupt-controller;
>> +		#interrupt-cells = <1>;
>> +	};
>> +
>>
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
