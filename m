Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 188F4F1133
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 09:37:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MPL8sDvnJD2ms/qCc25E5dz19HDbMoWvF9e6a695qlE=; b=ewXbMIbUHObRVOqvycEBn5m88
	+RfclELeLUzasyKh2tUJJBYhxoSNn+/DvmQVyAXG6MCDmBU/scpvLHi9RALxv8cUsfbHeKgcE8PcR
	zhxvdGl4Iuy9kVx51arEZIhzj/cmjwGqBMGyK26PJP+6PsZ1TOKtxGQM5hyhKt28wkmidkyeK5PV2
	zw0OZTjzQXVDMYxjvDt2JZk85l4nrFWKJnt/TWsFVY9OZC/l0lxWxkFdA4sS6PflS4tJ+R4NGrsKE
	X04MPymt2jjAjooOzWbjalnZ4HpeutvNRUIS+wJlyNgfdOZPWA/4JcjxjEHjZ1R8ZuJUBM0TKViWJ
	cPPI26icw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSGoJ-0000kT-3s; Wed, 06 Nov 2019 08:37:03 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSGo7-0000ia-0l
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 08:36:52 +0000
X-Originating-IP: 92.137.17.54
Received: from [192.168.10.51] (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 88F3240011;
 Wed,  6 Nov 2019 08:36:37 +0000 (UTC)
Subject: Re: [PATCH 1/2] dt-bindings: arm: at91: Document Kizboxmini boards
 binding
To: Rob Herring <robh@kernel.org>
References: <20191018140304.31547-1-kamel.bouhara@bootlin.com>
 <20191018140304.31547-2-kamel.bouhara@bootlin.com>
 <20191029122935.GA8412@bogus>
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
Message-ID: <4b529b27-ccb1-d58d-fc08-1ce478b33f32@bootlin.com>
Date: Wed, 6 Nov 2019 09:36:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191029122935.GA8412@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_003651_201614_DFC21F4B 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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



On 29/10/2019 13:29, Rob Herring wrote:
> On Fri, Oct 18, 2019 at 04:03:03PM +0200, Kamel Bouhara wrote:
>> Document devicetree's bindings for the SAM9G25 Kizbox Mini boards of
>> Overkiz SAS.
>>
>> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
>> ---
>>   .../devicetree/bindings/arm/atmel-at91.yaml        | 14 ++++++++++++++
>>   1 file changed, 14 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
>> index 1e72e3e6e025..666462988179 100644
>> --- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
>> +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
>> @@ -35,6 +35,20 @@ properties:
>>                 - atmel,at91sam9x60
>>             - const: atmel,at91sam9
>>   
>> +      - description: Overkiz kizbox Mini Mother Board
>> +        items:
>> +          - const: overkiz,kizboxmini-mb
>> +          - const: atmel,at91sam9g25
>> +          - const: atmel,at91sam9x5
>> +          - const: atmel,at91sam9
>> +
>> +      - description: Overkiz kizbox Mini RailDIN
>> +        items:
>> +          - const: overkiz,kizboxmini-rd
>> +          - const: atmel,at91sam9g25
>> +          - const: atmel,at91sam9x5
>> +          - const: atmel,at91sam9
> 
> These 2 can also be combined into 1 entry.
> 
Ok done in v3.

Thanks.
>> +
>>         - items:
>>             - enum:
>>                 - atmel,at91sam9g15
>> -- 
>> 2.23.0
>>

-- 
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
