Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7789613A809
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 12:11:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ER8YEbfYegfXqw//cvnaO8aV2XcxOQTRAYUj77wX6ts=; b=Ye0S/rUguP4pbD
	jO8bgyxGVijL9GMGyE17wkmNHWvx0WzXzGPw4bIR7/+3l/REg+jaTwrR/Qza4DzsIR1cAz2vgJScg
	UJyODFjMbCMxAfGfnD9kZET0iw1M1f3NeU0v3W1HGp1ZBr2vMzaVGS7LLWTWsPYvjSTBgJuu0UybI
	Vbu4k0XD2mM8994MKOiWVcjuUA3IkdOHaDcxdgk+XDapWUH2ANbYQ3CvX1cuVk+qZGppcazxGQz+r
	3dJxXjxYCAi8CV8As90IttdNoFRYIB777+efZaNUD4s6FfxyDB5wa61I3mT0PnmS7xJmfC7aYRDSk
	kZiDAhQzLjO+fWhn5wlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irK61-0000cR-Ht; Tue, 14 Jan 2020 11:10:53 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irK5p-0000SG-R5
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 11:10:46 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: UvjBIf+DfnY1S0cSL5Svga2gj+VGC9x7Laqp3CxJ9VwS1DURoZFpO9xQYTrxUamMg/bcLPYIss
 rr1t/A+OoqcGsxTpSoC3H1wqE1gOg/VKO7d4Ekqx8gK/KmdpWulV5YQDMvD0wMCgUJlhuOlMLn
 KatDO6UFfP0uNQfQQdOnrCwh4nZ8EELndVUDDW5/BhXOytEkt+EiuqF2FBQ1UIqYEQjiWirn6h
 4xm/eZXgHcT3gXBzD50r4VrJJWK1ircc0cMeNXDxrAtSbgET1LAy2Jku+LNhsY9zl48rgs1AlR
 5NM=
X-IronPort-AV: E=Sophos;i="5.69,432,1571727600"; d="scan'208";a="60725974"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jan 2020 04:10:17 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Jan 2020 04:10:16 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 14 Jan 2020 04:10:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h0cj49H7p/Lt9pxpiNDJsXD7D3v0fQDh7REiz3GGtZ+v3NJytLGfdLOWBzVAlP2wpLoZaa8C182ZSfk9siRehC6Cpic24UZLaHBMhMUUQuzMmSkj23tRXwmKKGjfAnwmeIUcUNff3DlZ6O7OVtNeHv+6kDHgJ1GUTC9CpxqcPY6+e/ISlB0ZBII+NLJ1cxBWqbQW2LWFvsLg+gX/E/57fUzxdh026v2cpGJQ/Z2yNE5Vz0ctIRhhoZCfiopJ1XH0uCFInvhRKWVDkqt8KEsWdB/k87z4wgtp5ZbtbIljx5RGlQXUm1sEMH+lZk00iLNzNW5qzIuYkb/Cx9Ul8RUFHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pLzNbfQihk1dznnXQaesD9TJLtjYVE/FWtHivYp0/RQ=;
 b=LjwXofR/r/gB9PI/B8RLLk/2sVFNKKedQj1+kA9SG+FrieD5CjSLtl4EfAHMcmr8Iaidut5mpcKOmNWE5McaZE3AIHA4C1jPh9GaRdMIOBGGHG6Mp1TpB/6h8fpnpF6RS/41mb6eevO0aVnh0Zz5wWz2Pmm1VRkAKzADiAPXaT1YPjm35+CEYTPNafaPn7TsoclPsMVxxZkJ2cHlU7IxTKD/pXKJKI59xfp01MQDBfFnbzewGbkVGja1m9xPZo5rlCbR7KwDdSlHx+lQ+u2Czrsj6661cMqL5HHEmWwBAKm7R5tDqcFtl/2btlpHY8d2z4Ethc8zmI+i5Q6lf26DOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pLzNbfQihk1dznnXQaesD9TJLtjYVE/FWtHivYp0/RQ=;
 b=kyZr80i1CNDX0pFqAqgDgVpgdwyutfYkDC+HCbasuzlxk3OuvAiurJgyGiPZoUC4u7rr0gAVzbHgYU6kVuYU9XnbNmpeDvTTvyXsOsXDEwrrXu6QBoqertHpfmmu075HPqsUfpczCgpvPwVi84qkT9VpU1bo8LjG8EipkA8+E40=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3403.namprd11.prod.outlook.com (20.176.119.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.13; Tue, 14 Jan 2020 11:10:15 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb%7]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 11:10:15 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v3 4/7] dt-bindings: atmel-usart: remove wildcard
Thread-Topic: [PATCH v3 4/7] dt-bindings: atmel-usart: remove wildcard
Thread-Index: AQHVyssxad36L/lyDU2/n1XqgFNXSA==
Date: Tue, 14 Jan 2020 11:10:14 +0000
Message-ID: <f3c4d460-cff6-2e14-428a-a732a6bffe38@microchip.com>
References: <1578997397-23165-1-git-send-email-claudiu.beznea@microchip.com>
 <1578997397-23165-5-git-send-email-claudiu.beznea@microchip.com>
 <20200114104237.GM3137@piout.net>
In-Reply-To: <20200114104237.GM3137@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7707f527-dfd7-426f-7c15-08d798e254f7
x-ms-traffictypediagnostic: DM6PR11MB3403:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3403FAAF17B4E3B080A813A787340@DM6PR11MB3403.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(39860400002)(136003)(346002)(366004)(199004)(189003)(8936002)(316002)(54906003)(6486002)(76116006)(6506007)(71200400001)(53546011)(966005)(81156014)(6512007)(6916009)(2616005)(81166006)(66946007)(66476007)(31686004)(66446008)(7416002)(8676002)(86362001)(478600001)(4326008)(64756008)(5660300002)(36756003)(186003)(91956017)(66556008)(2906002)(26005)(31696002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3403;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QRtof8i5WtSixCYcvsPiZ/KhzRAWZ4iiao4TB/9vA62fPfmSViKZVB5sKj1OmfzJq3shgrDg9cXxo6/0q7TM2wL9iL/q6i+Wc1dcogj3+Gbhq+6vvVO9MObBha6qHv8W6hTebOeiXLqfqXgre27HCtBblxGK2KNY2HSKVTS6/Kx0wTCjJo9q5NNhIVP4wQ2HwOh4Lr1jZpQG+tCQbkXCYy3odG19VA6t3T90i/AtjKS+9Nr05P0qE/0hJTkxFLLcxB6rMj1zzdskFSa732DVcywjyhmlJomBXjHz5SoTdtiOgnSJNEEi/UIXMePsLXCNOU75iE3xwRC2paEXIpi4kGYr3ec9ltbZHxeW5Tm5iV/WBH0RCHx8H9gedwb3QH2YOsXyDc7rOMPUW6l7xP6T/tMIR5FCBcaVgTk0ut5XPAZYRVxRKg23Z5yUHdOMU7GPDTk4Db706iCNb6eLg8PGBCtuNlP7n40K+akD+DtoVdk=
Content-ID: <B3E5FBED8BFF834FA0DF10EA00CB34FA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7707f527-dfd7-426f-7c15-08d798e254f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 11:10:14.9701 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z2aB7LzulXLO/srePqPWhP5Jkw3Ykow5Ij4ZKBq/rNoOJHva47az2ONcTXHnCYlbZLcc79PO39ndwJvxZS7ZphBqFD16pFZwUC95FCuNrOI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3403
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_031041_934712_9B0D09C8 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, devicetree@vger.kernel.org,
 richard.genoud@gmail.com, radu_nicolae.pirea@upb.ro,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-spi@vger.kernel.org, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 14.01.2020 12:42, Alexandre Belloni wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 14/01/2020 12:23:14+0200, Claudiu Beznea wrote:
>> Remove chip whildcard and introduce the list of compatibles instead.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>> ---
>>  Documentation/devicetree/bindings/mfd/atmel-usart.txt | 7 +++----
>>  1 file changed, 3 insertions(+), 4 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/atmel-usart.txt b/Documentation/devicetree/bindings/mfd/atmel-usart.txt
>> index 699fd3c9ace8..778e8310606a 100644
>> --- a/Documentation/devicetree/bindings/mfd/atmel-usart.txt
>> +++ b/Documentation/devicetree/bindings/mfd/atmel-usart.txt
>> @@ -1,10 +1,9 @@
>>  * Atmel Universal Synchronous Asynchronous Receiver/Transmitter (USART)
>>
>>  Required properties for USART:
>> -- compatible: Should be "atmel,<chip>-usart" or "atmel,<chip>-dbgu"
>> -  The compatible <chip> indicated will be the first SoC to support an
>> -  additional mode or an USART new feature.
>> -  For the dbgu UART, use "atmel,<chip>-dbgu", "atmel,<chip>-usart"
>> +- compatible: Should be one of the following:
>> +     - "atmel,at91rm9200-dbgu", "atmel,at91rm9200-usart"
>> +     - "atmel,at91sam9260-dbgu", "atmel,at91sam9260-usart"
> 
> All the uarts are not dbgus, so this need to be:
> 
>  - "atmel,at91rm9200-usart"
>  - "atmel,at91sam9260-usart"
>  - "atmel,at91rm9200-dbgu", "atmel,at91rm9200-usart"
>  - "atmel,at91sam9260-dbgu", "atmel,at91sam9260-usart"

Ok!

> 
> Also, you need to update drivers/soc/atmel/soc.c

OK. Did you refer to CIDR, EXID registers? They are at the same offsets as
for the old products. So we can rely on old compatible for them. Is this OK?

Thank you,
Claudiu Beznea

> 
>>  - reg: Should contain registers location and length
>>  - interrupts: Should contain interrupt
>>  - clock-names: tuple listing input clock names.
>> --
>> 2.7.4
>>
> 
> --
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
