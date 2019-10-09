Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8335D06CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 07:01:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uBZTzkDCKXlu955czXTPg8Nl0uSrFGxL0OCp0nOjA4=; b=LZ9xDOfaXpHyDv
	KpYo6cK5qko2fMZ1TEq4q3EFfnz2LMnhotttoU3+3pgHrNb1ALMkhi5cw9C5xmvOx88f5qQwjnVrR
	bycbT1lgiyzseN/bORmW82fHXVuGnMMP7Gpm9hfnqpXeWCqDjVA1OhXPGNrWElaJ3ewDbKI26RS0Q
	iOhxdsBOm/PTH/o71t4eBxHBoE5muN5jbb5raG2Io3ODRccPsBPVsw8Sqj+H0xMSg5tMG+wqkoFcF
	m3OVGdtffRNmFbj3pb8L+JftFc4XTL2cjMc3I6cZj/rohtK8dlhhYx54eRfmdB0QA72xoNLo/gPwp
	pMtTp+ggObnjlXXpkvXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI46E-0008W8-UV; Wed, 09 Oct 2019 05:01:22 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI466-0008Va-4n
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 05:01:16 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x99519Hd087600;
 Wed, 9 Oct 2019 00:01:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570597269;
 bh=rZoHJJyZdcpVileY092Q9MVFDX80fwOEfH99sKiEXEc=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=fTEqI0z4BLXhAM03KbpUE6BzLUWHmfSysz1W1wLlmiI5AmM66VxRFOb3o++qye3HR
 nRnYWIwFJtHOqhKsskMU1o1sqZP+AZ3fHHV9TW5khWjJpwomEwTDxgi1DQhdLz46pn
 S3Rp/9J/k+i7toLNDWf9CZ1QDpdcqdu5XnUg63Sg=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x99519KB120516
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 9 Oct 2019 00:01:09 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 9 Oct
 2019 00:01:06 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 9 Oct 2019 00:01:06 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x99517Ke115559;
 Wed, 9 Oct 2019 00:01:07 -0500
Subject: Re: [RFC PATCH 1/2] dt-bindings: irqchip: Update bindings to drop the
 usage of gic as parent
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <maz@kernel.org>
References: <20190923042405.26064-1-lokeshvutla@ti.com>
 <20190923042405.26064-2-lokeshvutla@ti.com> <20191002135757.28901015@why>
 <72a061dc-3573-9e78-42cd-39809f1b9685@ti.com>
Message-ID: <e11f6407-261d-8d7e-7ecd-df638a850f04@ti.com>
Date: Wed, 9 Oct 2019 10:30:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <72a061dc-3573-9e78-42cd-39809f1b9685@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_220114_290752_FBE42531 
X-CRM114-Status: GOOD (  25.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 03/10/19 6:45 PM, Lokesh Vutla wrote:
> Hi Marc,
> 
> On 02/10/19 6:27 PM, Marc Zyngier wrote:
>> On Mon, 23 Sep 2019 09:54:04 +0530
>> Lokesh Vutla <lokeshvutla@ti.com> wrote:
>>
>>> Drop the firmware related dt-bindings and use the hardware specified
>>> interrupt numbers within Interrupt Router. This ensures interrupt router
>>> DT node need not assume any interrupt parent type.
>>>
>>> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
>>> ---
>>>  .../interrupt-controller/ti,sci-intr.txt      | 28 +++++++++----------
>>>  1 file changed, 13 insertions(+), 15 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
>>> index 1a8718f8855d..de5de2a4b467 100644
>>> --- a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
>>> +++ b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
>>> @@ -44,15 +44,14 @@ Required Properties:
>>>  			4: If intr supports level triggered interrupts.
>>>  - interrupt-controller:	Identifies the node as an interrupt controller
>>>  - #interrupt-cells:	Specifies the number of cells needed to encode an
>>> -			interrupt source. The value should be 2.
>>> -			First cell should contain the TISCI device ID of source
>>> -			Second cell should contain the interrupt source offset
>>> -			within the device.
>>> +			interrupt source. The value should be 1.
>>> +			First cell should contain interrupt router input number
>>> +			as specified by hardware.
>>
>> This is breaking compatibility with existing kernels. Why isn't that a
>> problem?
> 
> Yes, I am not denying that backward compatibility is broken. But I feel this is
> a good cleanup for representing INTR interrupts. With this child nodes will pass
> the INTR specific number rather the device specific offset. Actually I tried
> following as what GIC is representing.
> 
> As there are only two users upstreamed, I though it is better to clean it up
> asap. Do you prefer maintaining the existing usage with a different compatible?

Just looking for your opinion here. If I try to maintain DT backward compatible,
are you okay with the overall approach. Will clean and repost patches once
firmware is ready.

Thank and regards,
Lokesh

> 
> 
>>
>>> +- power-domains:	phandle pointing to the corresponding PM domain node
>>> +			and an ID representing the device.
>>
>> Why is this power-domain thing part of this patch? Is it related?
>>
>>>  - ti,sci:		Phandle to TI-SCI compatible System controller node.
>>> -- ti,sci-dst-id:	TISCI device ID of the destination IRQ controller.
>>> -- ti,sci-rm-range-girq:	Array of TISCI subtype ids representing the host irqs
>>> -			assigned to this interrupt router. Each subtype id
>>> -			corresponds to a range of host irqs.
>>> +- interrupt-ranges:	Ranges that convert the INTR output interrupt numbers to
>>> +			parent's interrupt number.
>>
>> This isn't a standard property, is it? If it isn't, it should be
>> documented a bit more than just that.
> 
> Nope. Ill update it. So, the reason this is added is that this ranges converts
> the output of INTR to parent interrupt number. This is to have consistent dt
> convention in the following 2 scenarios:
> - INTR -> GIC (GIC is parent of INTR)
> - INTR -> INTR (INTR is parent of INTR)
> 
> Thanks and regards,
> Lokesh
> 
>>
>>>  
>>>  For more details on TISCI IRQ resource management refer:
>>>  http://downloads.ti.com/tisci/esd/latest/2_tisci_msgs/rm/rm_irq.html
>>> @@ -62,21 +61,20 @@ Example:
>>>  The following example demonstrates both interrupt router node and the consumer
>>>  node(main gpio) on the AM654 SoC:
>>>  
>>> -main_intr: interrupt-controller0 {
>>> +main_gpio_intr: interrupt-controller0 {
>>>  	compatible = "ti,sci-intr";
>>>  	ti,intr-trigger-type = <1>;
>>>  	interrupt-controller;
>>>  	interrupt-parent = <&gic500>;
>>> -	#interrupt-cells = <2>;
>>> +	power-domains = <&k3_pds 131 TI_SCI_PD_SHARED>;
>>> +	#interrupt-cells = <1>;
>>>  	ti,sci = <&dmsc>;
>>> -	ti,sci-dst-id = <56>;
>>> -	ti,sci-rm-range-girq = <0x1>;
>>> +	interrupt-ranges = <0 360 32>;
>>>  };
>>>  
>>>  main_gpio0: gpio@600000 {
>>>  	...
>>> -	interrupt-parent = <&main_intr>;
>>> -	interrupts = <57 256>, <57 257>, <57 258>,
>>> -		     <57 259>, <57 260>, <57 261>;
>>> +	interrupt-parent = <&main_gpio_intr>;
>>> +	interrupts = <192>, <193>, <194>, <195>, <196>, <197>;
>>>  	...
>>>  };
>>
>> Thanks,
>>
>> 	M.
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
