Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C777E99B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:06:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sesZqxe+j14WgAehkofbuGA2kA/YRx2EXrJdCbe+g5o=; b=r+tkvHO7TLP1zTHznHmTOtZEX
	AijTrHdgfGNHAUU76PZB+goxDpYRD0DFiXFWNbfNfbzU3BvDAESmfQAR2RBKSD0g2VxXOS5paY8Oq
	JZc0Ab/3mHYFngphADfVOQBquQLh+UglKVrr+d0zROpac/tppKoHNsYhRSoJZEyO85lennWoihaDF
	MGN79nnxRXKzZAUaoh9zHZrr++5SXMNT68VVTTTNVxZESXty1ZuH1YX3TtAQ03eu9liaQoJPtKqho
	2Bf39cr1NIMrXGypcudtH6ipSDxD2VbfKDo442/kurVjLTCyQLeGLdA9/vZrsf2OVrMDA6Yt/leDz
	IZExBOvbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPkrU-0007Lw-V2; Wed, 30 Oct 2019 10:05:56 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPkrI-0007HL-G3
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:05:46 +0000
X-Originating-IP: 91.217.168.176
Received: from [172.20.50.240] (unknown [91.217.168.176])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 3DAAE60004;
 Wed, 30 Oct 2019 10:05:38 +0000 (UTC)
Subject: Re: [PATCH 1/2] dt-bindings: arm: at91: Document Kizbox2 boards
 binding
To: Rob Herring <robh@kernel.org>
References: <20191017085405.12599-1-kamel.bouhara@bootlin.com>
 <20191017085405.12599-2-kamel.bouhara@bootlin.com>
 <20191029014949.GA22009@bogus>
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
Message-ID: <3c3b1763-5185-34b6-8f68-bbc153eb916f@bootlin.com>
Date: Wed, 30 Oct 2019 11:05:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191029014949.GA22009@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_030544_669593_52EEA81F 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/10/2019 02:49, Rob Herring wrote:
> On Thu, Oct 17, 2019 at 10:54:04AM +0200, Kamel Bouhara wrote:
>> Document devicetree's bindings for the SAMA5D31 Kizbox2 boards of
>> Overkiz SAS.
>>
>> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
>> ---
>>   .../devicetree/bindings/arm/atmel-at91.yaml   | 35 +++++++++++++++++++
>>   1 file changed, 35 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
>> index c0869cb860f3..7636bf7c2382 100644
>> --- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
>> +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
>> @@ -80,6 +80,41 @@ properties:
>>             - const: atmel,sama5d3
>>             - const: atmel,sama5
>>   
>> +      - description: Overkiz kizbox2 board without antenna
>> +        items:
>> +          - const: overkiz,kizbox2-0
>> +          - const: atmel,sama5d31
>> +          - const: atmel,sama5d3
>> +          - const: atmel,sama5
>> +
>> +      - description: Overkiz kizbox2 board with one head
>> +        items:
>> +          - const: overkiz,kizbox2-1
>> +          - const: atmel,sama5d31
>> +          - const: atmel,sama5d3
>> +          - const: atmel,sama5
>> +
>> +      - description: Overkiz kizbox2 board with two heads
>> +        items:
>> +          - const: overkiz,kizbox2-2
>> +          - const: atmel,sama5d31
>> +          - const: atmel,sama5d3
>> +          - const: atmel,sama5
>> +
>> +      - description: Overkiz kizbox2 board with three heads
>> +        items:
>> +          - const: overkiz,kizbox2-3
>> +          - const: atmel,sama5d31
>> +          - const: atmel,sama5d3
>> +          - const: atmel,sama5
>> +
>> +      - description: Overkiz kizbox2 board Rev2 with two heads
>> +        items:
>> +          - const: overkiz,kizbox2-rev2
>> +          - const: atmel,sama5d31
>> +          - const: atmel,sama5d3
>> +          - const: atmel,sama5
> 
> These can all be made a single items list with the 1st entry being an
> enum of all the boards. The board description can be a comment.
> 
> Rob
> 
Yes agree, actually it's already done in v2, by the way thanks for the 
review.

-- 
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
