Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA14718F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0Er8+OKBRKCdzZqa6WHqqtUSXC4fJsCO3x/JlCIUjo=; b=A54zjWudOQkh1C
	MCfaIj0QUSJSe2qAr+8bbypMdcid4tJBw5yqpSRDgp2CVZBU1+vOBakcoJZZ/Vixl07k7Jm2A33DS
	cSeiiTL/AQz+Vldkvs1bi91yAQSFuAYOALV6HBqBrGvO2/Ww76hz/kUA7eTYnSKPNNAeyFUM1i9I8
	cVjou04JQS169MRgJ58MbidDnWMbihsxqGUEKXxkj/IB7fauiQv0GrCbnIVn8RUyHtryPum9c8QtL
	Gza9/Ha2hFNvUDl9J7EQGrMsO5mJkW6wa3/YOTpCJ1oRdB2NGLH25cgiPTKtIal02D1bL6Pu44I4v
	v+RXO584r9tp+QgUg38g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpudT-0002ec-L3; Tue, 23 Jul 2019 13:15:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpudI-0002V6-I8
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:15:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD4D728;
 Tue, 23 Jul 2019 06:15:07 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 BECF93F71F; Tue, 23 Jul 2019 06:15:06 -0700 (PDT)
Subject: Re: [PATCH 3/9] dt-bindings: interrupt-controller: arm, gic-v3:
 Describe ESPI range support
To: Lokesh Vutla <lokeshvutla@ti.com>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
References: <20190723104437.154403-1-maz@kernel.org>
 <20190723104437.154403-4-maz@kernel.org>
 <04e80def-c8e3-a403-036e-2a64db935ed4@ti.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <e67ff715-9625-6aec-5e1f-28f7c9df66f6@kernel.org>
Date: Tue, 23 Jul 2019 14:15:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <04e80def-c8e3-a403-036e-2a64db935ed4@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_061508_652794_575D3514 
X-CRM114-Status: GOOD (  17.13  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/07/2019 13:59, Lokesh Vutla wrote:
> 
> 
> On 23/07/19 4:14 PM, Marc Zyngier wrote:
>> GICv3.1 introduces support for new interrupt ranges, one of them being
>> the Extended SPI range (ESPI). The DT binding is extended to deal with
>> it as a new interrupt class.
>>
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  .../devicetree/bindings/interrupt-controller/arm,gic-v3.yaml | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
>> index c34df35a25fc..98a3ecda8e07 100644
>> --- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
>> +++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
>> @@ -44,11 +44,12 @@ properties:
>>        be at least 4.
>>  
>>        The 1st cell is the interrupt type; 0 for SPI interrupts, 1 for PPI
>> -      interrupts. Other values are reserved for future use.
>> +      interrupts, 2 for interrupts in the Extended SPI range. Other values
>> +      are reserved for future use.
> 
> Any reason why hardware did not consider extending SPIs from 1020:2043? This way
> only EPPI would have been introduced. Just a thought.

First, 1020-1023 is the special INTID range. You can't have anything
else there.

Then, making the range contiguous could imply that the range is also
contiguous in the register space, which isn't possible (note that the
EPPI range does it the other way around -- it is discontinuous in the
INTID space, and yet continuous in the register space).

Finally, the decision to push the numbering out towards the LPI range
allows the ESPI space to be grown easily up to 4k.

But frankly, none of that really matters. They are just numbers.

> Either ways, just to be consistent with hardware numbering can ESPI range be 3
> and EPPI range be 2?

Well, the way I see it is that it is more logical for the binding
itself. We already have 0 for SPIs and 1 for PPIs, despite PPIs being
before SPIs in the INTID space.

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
