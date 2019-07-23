Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F9071960
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8aPaOmBe+NuVLE89U1z/IMQ1/VD1xQ7Uz5K9GhhgY4w=; b=uz9b4Myn27ufMg
	Aq4nZTRlfYakf6yKJ6zsCGUU+rxy3ik84YJSRXKynyRF3gRL9JNLkEn2y7AWLgXrFs38aVOsqARwN
	nv+CKALHfzzGCvjDI+xX5PL6a1kMedHwVN8MGk1qPRczrJywQ+kO5DFwJQhrecjnkH9/3IiLqABsj
	p6hiotCm4D5pr20tM83SFT3rHBEVIjZSC7JtzGHJ/EIZ81+iOEDM+pII7zds17x/4rQOqfQO1jNox
	HMvxscxjDQj5oz1ah3oEgwDC+SNG2cLH4jW/FHYgSvS67BYPfoe1Q5hUW7lZOSLODYXhCglW532y1
	Klyne6xbbbDhKJWHt3Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpuxi-0003fn-34; Tue, 23 Jul 2019 13:36:14 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuxT-0003fG-PO
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:36:01 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NDZjpQ018789;
 Tue, 23 Jul 2019 08:35:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563888945;
 bh=6Dck4gO4V5pnVJYCW/w9BCIIyokmJANz2CsTs7Xl2Y0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=umYZMvAKS0FeHtrhOnvVhYaa883PV5QS5KaqSE/finBhJKdSpfmREJxUSllYNZjr0
 DfdUJA6FaH8VNbuOv67vBN1K3sO/14ERt02jHbutq6VLntshkC4bh7zzOW/nKDTXJ/
 6J54n3/b/RsXw5B054GW9ld8onhV++nOJR1Zd4IE=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NDZj9C037519
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Jul 2019 08:35:45 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 08:35:45 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 08:35:45 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NDZgYw073346;
 Tue, 23 Jul 2019 08:35:43 -0500
Subject: Re: [PATCH 3/9] dt-bindings: interrupt-controller: arm, gic-v3:
 Describe ESPI range support
To: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Jason
 Cooper <jason@lakedaemon.net>, Julien Thierry
 <julien.thierry.kdev@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20190723104437.154403-1-maz@kernel.org>
 <20190723104437.154403-4-maz@kernel.org>
 <04e80def-c8e3-a403-036e-2a64db935ed4@ti.com>
 <e67ff715-9625-6aec-5e1f-28f7c9df66f6@kernel.org>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <2c331e5a-d47f-ceac-1c17-412816ff7369@ti.com>
Date: Tue, 23 Jul 2019 19:05:01 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <e67ff715-9625-6aec-5e1f-28f7c9df66f6@kernel.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_063559_909114_C10DCA6E 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 23/07/19 6:45 PM, Marc Zyngier wrote:
> On 23/07/2019 13:59, Lokesh Vutla wrote:
>>
>>
>> On 23/07/19 4:14 PM, Marc Zyngier wrote:
>>> GICv3.1 introduces support for new interrupt ranges, one of them being
>>> the Extended SPI range (ESPI). The DT binding is extended to deal with
>>> it as a new interrupt class.
>>>
>>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>>> ---
>>>  .../devicetree/bindings/interrupt-controller/arm,gic-v3.yaml | 5 +++--
>>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
>>> index c34df35a25fc..98a3ecda8e07 100644
>>> --- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
>>> +++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
>>> @@ -44,11 +44,12 @@ properties:
>>>        be at least 4.
>>>  
>>>        The 1st cell is the interrupt type; 0 for SPI interrupts, 1 for PPI
>>> -      interrupts. Other values are reserved for future use.
>>> +      interrupts, 2 for interrupts in the Extended SPI range. Other values
>>> +      are reserved for future use.
>>
>> Any reason why hardware did not consider extending SPIs from 1020:2043? This way
>> only EPPI would have been introduced. Just a thought.
> 
> First, 1020-1023 is the special INTID range. You can't have anything
> else there.
> 
> Then, making the range contiguous could imply that the range is also
> contiguous in the register space, which isn't possible (note that the
> EPPI range does it the other way around -- it is discontinuous in the
> INTID space, and yet continuous in the register space).
> 
> Finally, the decision to push the numbering out towards the LPI range
> allows the ESPI space to be grown easily up to 4k.

okay, got it.

> 
> But frankly, none of that really matters. They are just numbers.
> 
>> Either ways, just to be consistent with hardware numbering can ESPI range be 3
>> and EPPI range be 2?
> 
> Well, the way I see it is that it is more logical for the binding
> itself. We already have 0 for SPIs and 1 for PPIs, despite PPIs being
> before SPIs in the INTID space.

Agreed. Patch looks good to me. FWIW:

Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

Thanks and regards,
Lokesh

> 
> Thanks,
> 
> 	M.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
