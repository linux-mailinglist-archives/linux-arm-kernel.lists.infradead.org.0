Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDD5C9F2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 15:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5S38HU+6dxjH5sTrVQP0dsZF+K2YoETkY2kVTZzjbYc=; b=txmckEKJDFcBWZ
	vZttIFicVWYZzxV/nz0nL8z1banF23BpWgUpHuG+OKaHzyoYFVyyj43709mtmVzuIbLuLptft3rAe
	HdidxyWjx7yOzlmL9vCqxouTYI3co0zFn3CtK+La5KWDvhRz3vOH/VnFOwqLbMGNC2jUlc2jguDQ3
	M5tp73ZiGSZb51ggt9o6Xxp0pUssRcdrPUDvmodhLPsacIv8vq6SVbj+9Yk4JqS7ZHcRBGKBwT7xt
	EuTY4OIma5Fk8oeozBvE795kEhV3zhgSF1wYy6761ZY9f3QejSX/KNULRJ9+VhUG4uJbR8QdBv1xW
	6lwmvmhnhZlFxuMJdW2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG0xz-0005vM-Vb; Thu, 03 Oct 2019 13:16:23 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG0xr-0005uV-Uy
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 13:16:18 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x93DGDP2032003;
 Thu, 3 Oct 2019 08:16:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570108573;
 bh=0oA9ap2ijxyrFGCN9mLCkx++wX78RYmNmFX7l7IDOjo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=pllSZPREqbDagqbJOyfDQ0QoQxNv6ViDSntKsfre3KC1skl3yE98c287c2pB5hcXt
 RHmUrmqgJXIQJ3ycND9GtvgUi+DJrJLmMP+rPM+sy9d56Fru/hQ8cL59RcMmtfllp+
 mjGyx8Yq8P59F07mUatUa3NQdaDPM9FCnAbwFNFQ=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x93DGDlX026002;
 Thu, 3 Oct 2019 08:16:13 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 3 Oct
 2019 08:16:01 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 3 Oct 2019 08:16:12 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x93DGA0V063036;
 Thu, 3 Oct 2019 08:16:11 -0500
Subject: Re: [RFC PATCH 1/2] dt-bindings: irqchip: Update bindings to drop the
 usage of gic as parent
To: Marc Zyngier <maz@kernel.org>
References: <20190923042405.26064-1-lokeshvutla@ti.com>
 <20190923042405.26064-2-lokeshvutla@ti.com> <20191002135757.28901015@why>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <72a061dc-3573-9e78-42cd-39809f1b9685@ti.com>
Date: Thu, 3 Oct 2019 18:45:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20191002135757.28901015@why>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_061616_561591_780988A5 
X-CRM114-Status: GOOD (  21.96  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi Marc,

On 02/10/19 6:27 PM, Marc Zyngier wrote:
> On Mon, 23 Sep 2019 09:54:04 +0530
> Lokesh Vutla <lokeshvutla@ti.com> wrote:
> 
>> Drop the firmware related dt-bindings and use the hardware specified
>> interrupt numbers within Interrupt Router. This ensures interrupt router
>> DT node need not assume any interrupt parent type.
>>
>> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
>> ---
>>  .../interrupt-controller/ti,sci-intr.txt      | 28 +++++++++----------
>>  1 file changed, 13 insertions(+), 15 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
>> index 1a8718f8855d..de5de2a4b467 100644
>> --- a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
>> +++ b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
>> @@ -44,15 +44,14 @@ Required Properties:
>>  			4: If intr supports level triggered interrupts.
>>  - interrupt-controller:	Identifies the node as an interrupt controller
>>  - #interrupt-cells:	Specifies the number of cells needed to encode an
>> -			interrupt source. The value should be 2.
>> -			First cell should contain the TISCI device ID of source
>> -			Second cell should contain the interrupt source offset
>> -			within the device.
>> +			interrupt source. The value should be 1.
>> +			First cell should contain interrupt router input number
>> +			as specified by hardware.
> 
> This is breaking compatibility with existing kernels. Why isn't that a
> problem?

Yes, I am not denying that backward compatibility is broken. But I feel this is
a good cleanup for representing INTR interrupts. With this child nodes will pass
the INTR specific number rather the device specific offset. Actually I tried
following as what GIC is representing.

As there are only two users upstreamed, I though it is better to clean it up
asap. Do you prefer maintaining the existing usage with a different compatible?


> 
>> +- power-domains:	phandle pointing to the corresponding PM domain node
>> +			and an ID representing the device.
> 
> Why is this power-domain thing part of this patch? Is it related?
> 
>>  - ti,sci:		Phandle to TI-SCI compatible System controller node.
>> -- ti,sci-dst-id:	TISCI device ID of the destination IRQ controller.
>> -- ti,sci-rm-range-girq:	Array of TISCI subtype ids representing the host irqs
>> -			assigned to this interrupt router. Each subtype id
>> -			corresponds to a range of host irqs.
>> +- interrupt-ranges:	Ranges that convert the INTR output interrupt numbers to
>> +			parent's interrupt number.
> 
> This isn't a standard property, is it? If it isn't, it should be
> documented a bit more than just that.

Nope. Ill update it. So, the reason this is added is that this ranges converts
the output of INTR to parent interrupt number. This is to have consistent dt
convention in the following 2 scenarios:
- INTR -> GIC (GIC is parent of INTR)
- INTR -> INTR (INTR is parent of INTR)

Thanks and regards,
Lokesh

> 
>>  
>>  For more details on TISCI IRQ resource management refer:
>>  http://downloads.ti.com/tisci/esd/latest/2_tisci_msgs/rm/rm_irq.html
>> @@ -62,21 +61,20 @@ Example:
>>  The following example demonstrates both interrupt router node and the consumer
>>  node(main gpio) on the AM654 SoC:
>>  
>> -main_intr: interrupt-controller0 {
>> +main_gpio_intr: interrupt-controller0 {
>>  	compatible = "ti,sci-intr";
>>  	ti,intr-trigger-type = <1>;
>>  	interrupt-controller;
>>  	interrupt-parent = <&gic500>;
>> -	#interrupt-cells = <2>;
>> +	power-domains = <&k3_pds 131 TI_SCI_PD_SHARED>;
>> +	#interrupt-cells = <1>;
>>  	ti,sci = <&dmsc>;
>> -	ti,sci-dst-id = <56>;
>> -	ti,sci-rm-range-girq = <0x1>;
>> +	interrupt-ranges = <0 360 32>;
>>  };
>>  
>>  main_gpio0: gpio@600000 {
>>  	...
>> -	interrupt-parent = <&main_intr>;
>> -	interrupts = <57 256>, <57 257>, <57 258>,
>> -		     <57 259>, <57 260>, <57 261>;
>> +	interrupt-parent = <&main_gpio_intr>;
>> +	interrupts = <192>, <193>, <194>, <195>, <196>, <197>;
>>  	...
>>  };
> 
> Thanks,
> 
> 	M.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
