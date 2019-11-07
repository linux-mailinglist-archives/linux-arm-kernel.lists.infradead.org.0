Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D921AF3578
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 18:11:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/UCTITTralYZdwMSkopE4P2HY/ttydK7kGX8EI43so=; b=cdRKKO1vZty4oR
	gpJgafh+vD1pRKNv8b3ovKk067YBSFAOlKlPO+4QbDjzEHhWGbmHklMS6fgGh8c9DtiuwGMgDDRNf
	crhk3rVDJn8W2zmGBQJF9R2q2Vk+Sf+ByE0x/7gGPhH2qnSSwUVJuAOW8rYO4JqHvDoXTQ+37PHN8
	wYyDicMMd8Hpb3HZxifNckP5qtXYHHUW+Uu/IukzAwEQ6Rwar/Ctb/tcbcsARwCh6JuHgS6dAqR+O
	xZ7ZYZeNn/vkot6hzUqrkh3D1Nia93yqushJYTENjRyx+CJm1AZ8ImSEpQGoPoNmOey7/pcX30idd
	uCe3424BKlHmq1C7DqWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSlJE-0008QY-JO; Thu, 07 Nov 2019 17:11:00 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSlJ4-0008PQ-TA
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 17:10:54 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 7LPfQ8s+y6CiSb1MeGpX6zr2dVunbM6NZTPTGO4MHEFm9pjxC/FjXx4fFIuPROlz27v83SJUuF
 mSEzg4LkBsHPpJmRH44riahcYhDNJUUgCD5IXmEUxw5c89n/9DS8DPqKTlKzfsGGRZTHEEj8Ib
 siEZ5HrNZ7izY1Cp0Y5kVQdNOl8+K/680dPremrt3ogFcJRSHmXh7iM0Rf0oZzk1SkxxH68A2r
 ZWY8zumYNBVfg1ItNqeHbUjvTO+qNonlWfJeJTLFk1Xb8BhyWPwRwgC/FjsITwLu3AkgRRQekl
 rIQ=
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="56114027"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Nov 2019 10:10:47 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Nov 2019 10:10:47 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 7 Nov 2019 10:10:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hPpvP6eqbB7K/SIQdfR/5QZQ+mx9wYciKksrld24kME+MdXQtNsT6XzBw1/99BIheFTrFzUknSmmo/kEMiRT4FIiHsR4yudmadd4o4szHnIpbFwuIx7hsmtBe3F2AnkEsCNs+8zdVWd+vQTsuFzfJTj3Qx7HD/dDR9DkWv6wMqp7uc2mJhGoJIgu+LLJR7abfQAmQ5U7B6RIG3eXFBH2VhmP6wIUXKOKjyaHKT2FytvPXT9EHqzzgnF2Ut7iIr3NpYDU2buXmeNf2tYd3iopuVHczZYZ8l19634Lg1W9hS2KA3nkjF4U/QGax0h86M4lX18UNwEb082m3wiIxsZBhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vzwwiym6EcOoE2l3k/C9/6GCO7dvRLS0eWZ0eBGHSSU=;
 b=IIsD0Su2J4T/I1H2JWzGtjInB2sv/u3cK7cOYGo9VFvEK55XCqn+rCDKSkbUeYTc0r7XeF1OIqXSKpM37ls929w2MHUaoF24iUU7ega/J1cG2Cqveqm2PKOGah05ktiiaBiuf9BjtrfsKVM+z5cMzsH2syi5C28PVK5Tt/fT1//QQ6hgy6BZXD4/Pn82ISFHCcnSWemd1sc5/L80YefnoZW663p/UyfTLD7uEE+tX3rUOJCniBug9dG5wmxyxHIReIy0I/bQDHkJvPRJCwsVeikjakzO29J98dY27uTephwBwuEAp8p7NdEuXed5Z10zDTzmQn6qk9VI4yrZMOPBqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vzwwiym6EcOoE2l3k/C9/6GCO7dvRLS0eWZ0eBGHSSU=;
 b=QWWE/pW9/KirVpNRRJAFwGj4vFQ2KL2TYvORNIVHzc+tlGxt/jqJEguQgTpVbG6sp5o0WNWD34MI/3eXaLdFEdOMgMgbBBspsECc2CwWpzgpHBkMpoJcBOs8WOaas+EFraEsC0EltwSlIrxBvzXcJE0ixJyhnriGM+EwIIIlhcQ=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1306.namprd11.prod.outlook.com (10.168.103.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Thu, 7 Nov 2019 17:10:45 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8%4]) with mapi id 15.20.2408.028; Thu, 7 Nov 2019
 17:10:45 +0000
From: <Eugen.Hristev@microchip.com>
To: <linux@roeck-us.net>
Subject: Re: [PATCH v2 2/2] watchdog: sama5d4_wdt: addition of sam9x60
 compatible watchdog
Thread-Topic: [PATCH v2 2/2] watchdog: sama5d4_wdt: addition of sam9x60
 compatible watchdog
Thread-Index: AQHVh+/l2gK286N5pUWI+AtpzaiEg6dxqaQAgA4aiYCAAEA9AIAACEMA
Date: Thu, 7 Nov 2019 17:10:45 +0000
Message-ID: <cfa73eee-8ba9-89f2-b218-886ab226a6da@microchip.com>
References: <1571648890-15140-1-git-send-email-eugen.hristev@microchip.com>
 <1571648890-15140-2-git-send-email-eugen.hristev@microchip.com>
 <20191029132831.GA5643@roeck-us.net>
 <28c6b394-ae88-f913-312e-6b38be1dc5a8@microchip.com>
 <20191107164104.GA7693@roeck-us.net>
In-Reply-To: <20191107164104.GA7693@roeck-us.net>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0237.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:b::33) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191107191038895
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 223a3514-c42e-42b4-8f8f-08d763a56d38
x-ms-traffictypediagnostic: DM5PR11MB1306:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB130659DF0C6AD2315F2B5104E8780@DM5PR11MB1306.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(39860400002)(136003)(396003)(346002)(199004)(189003)(5660300002)(66556008)(66946007)(66476007)(31686004)(11346002)(2906002)(316002)(6116002)(7736002)(305945005)(66446008)(8676002)(64756008)(76176011)(53546011)(102836004)(386003)(71190400001)(81156014)(26005)(81166006)(52116002)(6916009)(8936002)(186003)(71200400001)(6506007)(14444005)(256004)(486006)(99286004)(476003)(86362001)(478600001)(3846002)(31696002)(6512007)(6246003)(25786009)(229853002)(2616005)(36756003)(6436002)(6486002)(54906003)(66066001)(4326008)(14454004)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1306;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R9SVM2IXEXPrda77rwNc4uRkfTUTck2RVrOGSAvl14WEbz97DlXDGjeoL1zIbzFMqsJPsnqatnehbgxj8lFU/g+vzjg5U4JynNAZjmTX4mnKSxRgJABa3KLhrhv/KLCKR0qbnsHWGm9GsIoc4dVy+nkK3nGK8CmikjCMctedIy35ZqntIyOwTGcCXhAJts/uUmCZM4OCMz05S2qSFRUVnXTquAjQKj7ktbFBA2yxfhpdK2IeBH4N2kdeafpQ7aGeGsaGaX3E9zKw/9499M1VeVflplMOR8cOHBEpOzy0xrG7sOVfWRrJCifi+rtx24BN/jZth7XyHABxBxNiWIyNgDMjcga0rZnAC/hjp6PaLcO4a+DePD8YO6jq6meCMymvshCvYiT6YDqpogVPUJ0nMfl6XntHK0PNDZi5OgFPBHzpvI9obi1lYbm6eT2oCbh1
Content-ID: <31C4D98CF18EF24EBC6FA472E0E9A6FD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 223a3514-c42e-42b4-8f8f-08d763a56d38
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 17:10:45.1840 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nrCFMQ/jwbWZ2S6J+yjIVgqPOWiQNDH356VSlJSVqHog9TH4M0PIEsMa/NYHjsvodRdb6U8KsUASRGN25505kta90/4oXemfauPVyYzjAbU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1306
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_091050_977137_49477AB9 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07.11.2019 18:41, Guenter Roeck wrote:

> On Thu, Nov 07, 2019 at 12:51:15PM +0000, Eugen.Hristev@microchip.com wrote:
>>
>>>>    
>>>> -	if ((wdt->mr & AT91_WDT_WDFIEN) && irq) {
>>>> +	irq = irq_of_parse_and_map(dev->of_node, 0);
>>>> +	if (!irq) {
>>>> +		dev_warn(dev, "failed to get IRQ from DT\n");
>>>> +		wdt->need_irq = 0;
>>>
>>> Does it make sense to ignore that ?
>>
>> Hi Guenter,
>>
>> Can you detail what exactly is ignored ?
>>
> The missing interrupt.

Hi,

The interrupt is not mandatory for the work of the watchdog. So, if it's 
not available, we must act accordingly: just configure watchdog to reset 
the CPU.
If we have an IRQ, we can then act in the 'software-style' watchdog: 
trigger an IRQ first and try to allow the system to a safe reboot.
So , it's not ignoring, it's acting accordingly (later on, do not enable 
anything irq-related )


> 
>>>> +static struct sama5d4_wdt_data sama5d4_config;
>>>> +
>>>> +static struct sama5d4_wdt_data sam9x60_config = {
>>>> +	.sam9x60_support = 1,
>>>> +};
>>>
>>> Unless there is reason to believe that there will be other
>>> configuration data, please just assign the flag value directly
>>> to .data and add a variable to struct sama5d4_wdt to access it.
>>> Please make that variable a bool.
>>
>> There will be more configuration data for future products, but not at
>> this moment. Do the change or keep it this way ?
>>
> If not as part of this series, it is better to just assign
> the flag directly. If there are changes coming at a later time
> which indeed need a structure (with more than one object in it),
> that structure can be added at that time.

Ok, I will change it in next version.

Thanks,
Eugen
> 
> Guenter
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
