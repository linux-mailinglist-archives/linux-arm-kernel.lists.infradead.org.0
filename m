Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C382D1E7A42
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 12:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WC5rQSCSXAl/5l499uZccLTtUEDWEu2zEUHk/C0D/UA=; b=SKFLWFj6TbH0V+
	kFRQYnVjWW8H9rsd6JdzxSnSqRvREc/pKmoe/IiAv6y17Jgl7TtJTawy4FhUwEUL8AA+AULYq+Ehe
	AfBF2AGjhpv3G3midKpruSfHMV7xoRXNH44XIOniH/j/C4EHLDuAGkEp5tmvfUD2ccq7h4A0hgl2S
	vQqOI5e2hhAJLw0lK4bie0nTeSnAbXWBDcLMzsVrCAqQo+bCqt8qHAkvh+WnwuVYPpWpwAgyRy8So
	RL0iZcqY+qSTVScVzmJLQy0MUCHqT69tYf9ez8Q9SVtjkGFG6DMkpymuj3ndROK0ww93B8dJCy1rG
	Dl8qCXHrLRR4Hc6ir5iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jec2v-00080V-13; Fri, 29 May 2020 10:15:25 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jec2W-00070v-7q
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 10:15:04 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04TAEhWW022992;
 Fri, 29 May 2020 05:14:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590747283;
 bh=eV3Ea3rbl4XaNDus1+DK9jQ6sPK5lI/ChCqGDCfcrVw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=PpfT8mi2irg7RIfZrXPZ0Nf8E+K2sBsN2PP7OSrfK3sOcq3AdWqgVsurUCCVsNMVT
 YJNxZWYjCXGp2bnlewx99CseS7FVMBTBlJRvRmnDII9kfQ+V8taEP8XlDVPJv91m1u
 KzOpXPW7gHerbyQG/gqmiasAGmXUluk6YaTKYjE8=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04TAEhpO118133;
 Fri, 29 May 2020 05:14:43 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 May 2020 05:14:42 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 May 2020 05:14:42 -0500
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04TAEcpP095213;
 Fri, 29 May 2020 05:14:39 -0500
Subject: Re: [PATCH 04/12] dt-bindings: irqchip: ti, sci-intr: Update bindings
 to drop the usage of gic as parent
To: Rob Herring <robh@kernel.org>
References: <20200520124454.10532-1-lokeshvutla@ti.com>
 <20200520124454.10532-5-lokeshvutla@ti.com> <20200528221406.GA769073@bogus>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <f803f646-2a55-4f15-9682-1dc616d7c714@ti.com>
Date: Fri, 29 May 2020 15:44:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200528221406.GA769073@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_031502_661465_93737492 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Rob,

On 29/05/20 3:44 am, Rob Herring wrote:
> On Wed, May 20, 2020 at 06:14:46PM +0530, Lokesh Vutla wrote:
>> Drop the firmware related dt-bindings and use the hardware specified
>> interrupt numbers within Interrupt Router. This ensures interrupt router
>> DT node need not assume any interrupt parent type.
> 
> I didn't like this binding to begin with, but now you're breaking 
> compatibility.

Yes, I do agree that this change is breaking backward compatibility. But IMHO,
this does cleanup of firmware specific properties from DT. Since this is not
deployed out yet in the wild market, I took the leverage of breaking backward
compatibility. Before accepting these changes from firmware team, I did
discuss[0] with Marc on this topic.

> 
>> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
>> ---
>>  .../interrupt-controller/ti,sci-intr.txt      | 31 ++++++++++---------
>>  1 file changed, 16 insertions(+), 15 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
>> index 1a8718f8855d..8b56b2de1c73 100644
>> --- a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
>> +++ b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
>> @@ -44,15 +44,17 @@ Required Properties:
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
>>  - ti,sci:		Phandle to TI-SCI compatible System controller node.
>> -- ti,sci-dst-id:	TISCI device ID of the destination IRQ controller.
>> -- ti,sci-rm-range-girq:	Array of TISCI subtype ids representing the host irqs
>> -			assigned to this interrupt router. Each subtype id
>> -			corresponds to a range of host irqs.
>> +- ti,sci-dev-id:	TISCI device id of interrupt controller.
>> +- ti,interrupt-ranges:	Set of triplets containing ranges that convert
>> +			the INTR output interrupt numbers to parent's
>> +			interrupt number. Each triplet has following entries:
>> +			- First entry specifies the base for intr output irq
>> +			- Second entry specifies the base for parent irqs
>> +			- Third entry specifies the limit
> 
> Humm, sounds like what interrupt-map does.

 Okay, Ill look at it.

[0]
https://lore.kernel.org/linux-arm-kernel/2331f04eacee3b06cc152fc609225233@www.loen.fr/

Thanks and regards,
Lokesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
