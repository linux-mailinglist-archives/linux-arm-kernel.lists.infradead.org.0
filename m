Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2BDF1124
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 09:35:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VVAZYne0IeuF76fQd6lsTNMXJJUW2eMOLEeLgMCphl0=; b=lWD09e0TJc4mpb1Tnw0ljq9b9
	e0Aj0pdIeUuBfUx7465gOOL/uBFXqz7qKUuYimvbpc9N1OWlFiGoOdwFyVIeSCtH64dzFhAjLIEKe
	ICxTAYupdf8zNT8bEWJv+sFfkemma7T3RKQW51BFxNN1w7B6uuD6uulyNoWzVFZCbrpj145n/Q0A+
	x7qG9iSC4Ur07ZpPE5thcoDT8p3gKDGvzxVEh+00do2RWzHaXTycrjIm9nRAkaBu1LPoVnQUss7iE
	VjGvtIGn1ODfk5WIJdVbXvMykn6/nXwTaWslQr2FQqCgqmF5iAC+REJnZFdcby49EeklglxUxMzOw
	xs6xlt4eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSGme-0000Jp-HW; Wed, 06 Nov 2019 08:35:20 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSGmT-0008D7-60
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 08:35:11 +0000
X-Originating-IP: 92.137.17.54
Received: from [192.168.10.51] (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 471911C0006
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 Nov 2019 08:35:02 +0000 (UTC)
Subject: Re: [PATCH 1/2] dt-bindings: arm: at91: Document SmartKiz board
 binding
To: linux-arm-kernel@lists.infradead.org
References: <20191018140658.31703-1-kamel.bouhara@bootlin.com>
 <20191018140658.31703-2-kamel.bouhara@bootlin.com>
 <20191029123858.GA24145@bogus>
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
Message-ID: <a025d5ea-e78a-a600-021a-ebaec3b8d461@bootlin.com>
Date: Wed, 6 Nov 2019 09:34:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191029123858.GA24145@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_003509_368554_56D94EE3 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 29/10/2019 13:38, Rob Herring wrote:
> On Fri, Oct 18, 2019 at 04:06:57PM +0200, Kamel Bouhara wrote:
>> Document devicetree's bindings for the SAM9G25 SmartKiz board of
>> Overkiz SAS.
>>
>> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
>> ---
>>   Documentation/devicetree/bindings/arm/atmel-at91.yaml | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
>> index 666462988179..f8053268cfa5 100644
>> --- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
>> +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
>> @@ -49,8 +49,16 @@ properties:
>>             - const: atmel,at91sam9x5
>>             - const: atmel,at91sam9
>>   
>> +      - description: Overkiz SmartKiz Board
>> +        items:
>> +          - const: overkiz,smartkiz
>> +          - const: atmel,at91sam9g25
>> +          - const: atmel,at91sam9x5
>> +          - const: atmel,at91sam9
>> +
>>         - items:
>>             - enum:
>> +              - atmel,at91sam9g25
>>                 - atmel,at91sam9g15
>>                 - atmel,at91sam9g25
> 
> Duplicated... You did check this with 'make dt_binding_check', right?
> 
>>                 - atmel,at91sam9g35

Fixed in v3.

Thanks.
>> -- 
>> 2.23.0
>>
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
