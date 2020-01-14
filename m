Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DF313ACCC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:58:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YQkrBK3QMJi0siF6Jxlhn9u2SEZaZhUHSaeI+Vayvo=; b=ScLPryofP26c2t
	vwgMhVZ5acWYjaqd8TYQL2WLNmVkIuy3//ENAkK60LvVrz8pKqwvh+K8KtRx0ak09omkq4anxTCPC
	4qFH3xeUo28/AwwnprL5+qi0V/CFkk2AxYbCtEhjE1USGoHlbW5zt821cXj4Jo2ENYf40olRKXjbw
	WPGs3OIHbUqpcF8pBlucbNiNg4xeNMKsDCfizTJYmtpBeqJfXlV8A1UD5bO/CV3H/z6Bzdm1OtqAo
	gOVAGm48cAETckmB9S4dJXWrYY+NHBW8fSY381duscPQ0/IZaGXFOPl6wvUCskXHn84Xj0PPMG0yO
	yj+pNAKLKiKubDhv5qjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNeR-0001VR-NS; Tue, 14 Jan 2020 14:58:39 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNeF-0001Ud-QE
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:58:32 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: +4kfcO9oC7v5//xZeoPyzvDMthpLXL+UuT3qGkyYW7uU4QdKrkbSMmeF1oeArLRE6EMYroRBTb
 K2Egt52gPU5Uac04RWTmu10kIZQHb5cI9Hc193weMDLQjOFCR0CI4YWTJgV2gwRXYulE+shig9
 Wj/ZPENQgSt5Atr8ZhGiUeCGnn2fmJWRj5k5ZfElxK693fwOM/MWi1i/HntX6FqW/0GIfhczk9
 +MPwhvkkaLFb3OwZxBJubAhFWS8nq1soxX7cwKUQv4gIQz2uXZ4aUIgirczI+yrZ7k/1FlZW2J
 Coc=
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="62573383"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jan 2020 07:58:25 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Jan 2020 07:58:24 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 14 Jan 2020 07:58:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=geizsOP3SKgCwExC4ZLHrzvPMnkB2fy0rMg5+azzA071L9cA9BDpuQXxvBZoaC0DaR/WUsoMnU9DQnnP8L2mhmOon6AEsgp8gFyhUC4VE6o3hbaOWwQexGEh67y3wVGfNmKokpI6ksOtX8OUOOjdVQPHMp0xbO0Kqz0SL/LEZuVNpDA7TOGHyHoijxYXujEQ8DyAVZGFruinrb8TKapanNntwWXDWeWg0K81JL2W/+vh4w0LWcZKXj3+cg++Ct0JIT829zbUE+nUG3IDxGiuU+obcwtRRUEqsxPob+oG4dElE7/azQdRUjrDOFbeeKuq5BKes0f4igUAP2Uxp9W6CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iwPDBA/JXrHpHd10XJ1yOZszLgTAO4rKFP8Z67jaYWo=;
 b=Ua7d1gs610VIiZVkDa49EyN6cH5flWx0/MOBDKS5Aw+LumfqKNnZPlnCSoNaV9tAz9XIqA6YQWuaul4t8fxwUGwyNaZ++1Whu3lRDKkdnoLSKqVx0dAKo0TJWkKlCC/cAYhyD0xU6Hpo8V6K0w9HJmDmCWOcM+VZm4auBNl60k37TfzmfRuPR/HQw7Tikn04UTfs06GkNnJqiGUjcrvrJBVfAi625RruWoHM3xWnPQT3UxqeJPa5N1wPAmO24nY1sKySDdLla33qHQDzvBEr+NxFClf42hfRV0WbMpWyNqzg8NRIFewuQ1aTZVuSaH0F6IW+90i9voH/ttl9QyN5ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iwPDBA/JXrHpHd10XJ1yOZszLgTAO4rKFP8Z67jaYWo=;
 b=YjiMCMzPFRSfj79C2ME9cAe01pTckqiclmk8MGkaB3YEIR07R6KS1OQYwfMF5f/ThLvOzgmCvP0fRP0/VMW+HvIL6Pizpkjzl1d/TEHvyw0MFzzSsUXsQcQWvnmTyX+d9pKkZaCRQVbmqTmtUQtHztWhfDMmNCyKrUzSt2pVV+E=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3228.namprd11.prod.outlook.com (20.176.120.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Tue, 14 Jan 2020 14:58:23 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb%7]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 14:58:23 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v3 4/7] dt-bindings: atmel-usart: remove wildcard
Thread-Topic: [PATCH v3 4/7] dt-bindings: atmel-usart: remove wildcard
Thread-Index: AQHVyssxad36L/lyDU2/n1XqgFNXSA==
Date: Tue, 14 Jan 2020 14:58:23 +0000
Message-ID: <a7f9f8c6-7636-6c1d-ecd8-39e5a956b85a@microchip.com>
References: <1578997397-23165-1-git-send-email-claudiu.beznea@microchip.com>
 <1578997397-23165-5-git-send-email-claudiu.beznea@microchip.com>
 <20200114104237.GM3137@piout.net>
 <f3c4d460-cff6-2e14-428a-a732a6bffe38@microchip.com>
 <20200114111704.GN3137@piout.net>
In-Reply-To: <20200114111704.GN3137@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e4d740b6-67a8-472e-5080-08d7990233ea
x-ms-traffictypediagnostic: DM6PR11MB3228:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3228F3B9868F7DBA8D17887587340@DM6PR11MB3228.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(366004)(346002)(376002)(39860400002)(199004)(189003)(66946007)(76116006)(31686004)(66446008)(6506007)(53546011)(26005)(186003)(64756008)(66556008)(86362001)(91956017)(54906003)(66476007)(71200400001)(316002)(6512007)(4326008)(6916009)(2616005)(2906002)(6486002)(36756003)(81156014)(7416002)(966005)(31696002)(5660300002)(478600001)(8676002)(81166006)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3228;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1Pd87UK+T6wnlaiwJ/HnFQT+JfV6ynzpebDEllz7/8QtBGuipRl3UyWG1voWvRtBXxVK2VRDim8XJh4nqJfRrdt/5T4SmJMvuuW7rbFGUokiPSaGWu7lcOVnye7lemhgpAFbu/hp/vMRQ5Lrrz50M8JesS7yENrENNRRqKEa0Whl3VaOsbsoO3qAALGvUOrnT/QpgKo0veRSCWcaf1ngQOnzkOQZ6rBPlwQ7TfE6OZqgNZaS9m3Ab1tiKajV2IDNfZI9y8lpV/2VXi7ZsCUxpsIIJzUqEaetB7xzxscEPtml+CMSXhohN+kMuMZSVJszn6UicnYkE5PYQDt8aXVWOj3Ig8u8I0+fJPsRUiR6E6oFuyVolLNzub7IewBMtDLc2r9mriqdYZEtawqONebTCMy8HsXTvEp3rAUM3elcqmBOvEPu7xaeYQo7z9IN838UZVrIJQtzBWeVJp+rAQpcEno7IK8k8F/Ovz14RE4XVfAftMCHEP+uQR/Eh6AQD3k6+lKiruos+/Jihp0RKNTN9A==
Content-ID: <CD33279CEB73A84684BB56835DC9D6F8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e4d740b6-67a8-472e-5080-08d7990233ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 14:58:23.2235 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Egllc5yUKitD0Pe697cx4bgy3xmrLoP9lwUdrdQ4j3VUsh3hdMnj23vdasFWechuQqc5lUjS4ME5lrsuCHxth0I4U3Umh+puTTrfv0/rwxs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3228
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_065828_020846_F0750E1D 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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



On 14.01.2020 13:17, Alexandre Belloni wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 14/01/2020 11:10:14+0000, Claudiu.Beznea@microchip.com wrote:
>>
>>
>> On 14.01.2020 12:42, Alexandre Belloni wrote:
>>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>>
>>> On 14/01/2020 12:23:14+0200, Claudiu Beznea wrote:
>>>> Remove chip whildcard and introduce the list of compatibles instead.
>>>>
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>>>> ---
>>>>  Documentation/devicetree/bindings/mfd/atmel-usart.txt | 7 +++----
>>>>  1 file changed, 3 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/mfd/atmel-usart.txt b/Documentation/devicetree/bindings/mfd/atmel-usart.txt
>>>> index 699fd3c9ace8..778e8310606a 100644
>>>> --- a/Documentation/devicetree/bindings/mfd/atmel-usart.txt
>>>> +++ b/Documentation/devicetree/bindings/mfd/atmel-usart.txt
>>>> @@ -1,10 +1,9 @@
>>>>  * Atmel Universal Synchronous Asynchronous Receiver/Transmitter (USART)
>>>>
>>>>  Required properties for USART:
>>>> -- compatible: Should be "atmel,<chip>-usart" or "atmel,<chip>-dbgu"
>>>> -  The compatible <chip> indicated will be the first SoC to support an
>>>> -  additional mode or an USART new feature.
>>>> -  For the dbgu UART, use "atmel,<chip>-dbgu", "atmel,<chip>-usart"
>>>> +- compatible: Should be one of the following:
>>>> +     - "atmel,at91rm9200-dbgu", "atmel,at91rm9200-usart"
>>>> +     - "atmel,at91sam9260-dbgu", "atmel,at91sam9260-usart"
>>>
>>> All the uarts are not dbgus, so this need to be:
>>>
>>>  - "atmel,at91rm9200-usart"
>>>  - "atmel,at91sam9260-usart"
>>>  - "atmel,at91rm9200-dbgu", "atmel,at91rm9200-usart"
>>>  - "atmel,at91sam9260-dbgu", "atmel,at91sam9260-usart"
>>
>> Ok!
>>
>>>
>>> Also, you need to update drivers/soc/atmel/soc.c
>>
>> OK. Did you refer to CIDR, EXID registers? They are at the same offsets as
>> for the old products. So we can rely on old compatible for them. Is this OK?
>>
> 
> Then, what is the point of adding microchip,sam9x60-dbgu ?

Different meaning for CIDR register bits. Version is kept on bits 4 to 0
but not documented in public datasheet, so version displayed by
drivers/soc/atmel/soc.c should work.

Thank you,
Claudiu Beznea

> 
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
