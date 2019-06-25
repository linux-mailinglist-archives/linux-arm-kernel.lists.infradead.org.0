Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9A4527B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8kqEz9E3yNSMCSSzvVWORqRu9QqcpNCM1r6SXchWhz4=; b=Jpto/GKqxXaddI
	wP75ZoBjRdJm/twaoMWAYQpMxU24+YpQ5aato+kS4zwodgjrYvjsatz5uh5toKL02czZ3faVeSg/z
	FHvEqoaSG09iA5Z4QgGMESht1xzYkE0alb5onDLMIp4MsTW8DSfATE76pnwSUl0ONN9ZrRtpljjfU
	dABt+K+kRi5u4i8LgbkQOC7MUyfqgB8SUaYWC1um0xZIyVOtk5orUu11rWvENren0XpbzU14Q23OB
	Z/bJaZvMQ0sXouMQeB7q/i+IkFt90WohGAqUMGMHMb2rdA0SvY+dUJxqyIVDuVd+uyPTYv7XgIV00
	OeHdB1kCXITjjTOq8Tgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhX7-0002Kq-Cm; Tue, 25 Jun 2019 09:14:33 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhWr-0002KM-Nb
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 09:14:19 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,415,1557212400"; d="scan'208";a="38780807"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Jun 2019 02:14:16 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 25 Jun 2019 02:14:37 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 25 Jun 2019 02:14:37 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oQboUQZRVJ1cLGfCsaE2CbtP+tIP5CWRsoBrKFaRZT0=;
 b=m/iMZuccxjq4szPCOT4OPZPLTjt6SBjN2JAlemPxKe5pOH8mO49gl5/ZX01EcpRbP4KPNgZffGaCd6x+I6gTndI9tABGwlqWm3FfFnGFS+eTaPBVFhiZH/NHt63wK7BajnlwGUsBPQVwdzlSkiVTNTh1t0JMS6I+gGSeuUImIRM=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0075.namprd11.prod.outlook.com (10.164.155.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 09:14:13 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::6476:ace0:bf3a:322]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::6476:ace0:bf3a:322%9]) with mapi id 15.20.2008.017; Tue, 25 Jun 2019
 09:14:13 +0000
From: <Eugen.Hristev@microchip.com>
To: <peda@axentia.se>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>, <wsa@the-dreams.de>,
 <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 6/9] dt-bindings: i2c: at91: add binding for
 enable-ana-filt
Thread-Topic: [PATCH v2 6/9] dt-bindings: i2c: at91: add binding for
 enable-ana-filt
Thread-Index: AQHVKyyv+/RK0NIkBk254PAOuF5Z96asET2AgAAEBoA=
Date: Tue, 25 Jun 2019 09:14:13 +0000
Message-ID: <84628b5e-bea7-7d91-f790-f3a2650040fa@microchip.com>
References: <1561449642-26956-1-git-send-email-eugen.hristev@microchip.com>
 <1561449642-26956-7-git-send-email-eugen.hristev@microchip.com>
 <4e81d3c9-25f3-ca6e-f2d5-17fad5905bb8@axentia.se>
In-Reply-To: <4e81d3c9-25f3-ca6e-f2d5-17fad5905bb8@axentia.se>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0401CA0016.eurprd04.prod.outlook.com
 (2603:10a6:800:4a::26) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190625121017485
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f064436-3c8c-4001-82b1-08d6f94d7d8a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB0075; 
x-ms-traffictypediagnostic: DM5PR11MB0075:
x-microsoft-antispam-prvs: <DM5PR11MB0075FD35D254E0E3DAFA9E98E8E30@DM5PR11MB0075.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(366004)(39860400002)(136003)(189003)(199004)(5660300002)(305945005)(53936002)(6116002)(3846002)(86362001)(14454004)(25786009)(6436002)(2201001)(53546011)(446003)(66066001)(31696002)(6506007)(386003)(476003)(99286004)(8936002)(102836004)(6246003)(2616005)(486006)(229853002)(68736007)(6512007)(76176011)(7736002)(6486002)(66446008)(66556008)(66476007)(8676002)(64756008)(31686004)(2501003)(52116002)(478600001)(110136005)(81166006)(11346002)(26005)(66946007)(73956011)(316002)(72206003)(36756003)(186003)(256004)(2906002)(71190400001)(71200400001)(81156014)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0075;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iBXj0ulX8MxhJ1vuQAQpi93D15L7Oog5P1541b8v8sz1uzVsUDHdKqXWCXUyqmDgXRq5yfEpFWmocxt3E/LPLGgacRQm0IqgsD/e1ZsiL5LPO3KG4PkFTnvkv06kB5nPTwQFIsWOgA8jHjqossrS10RO5rZYrQn8DxtKYBFdwuv/LzRG+WzeGSQl8UWBrQWE7GDDpctULz3pasaAKnjx+Q/yd5zoRlLXP2uz97lDedOLC2LUC4iARcj8rEZt7DAsyMtJFP7o2OkYYPy5uMRAUGW966XAHLFdo6QzVmgmUJ9hq5dvGwHAIV439i8+aACcMCkJCn1+Nvmd5AXCYm2kI46msP4o6JjwTayRAp4ENTMMk2/IFrwGoG+pJRdDgXaAcDnYoO/H9cMGTC9xIqS7E2uckmCUsBn5t5svSS33d7Y=
Content-ID: <21506B8E5B03ED40A516D9564C071A00@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f064436-3c8c-4001-82b1-08d6f94d7d8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 09:14:13.5723 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_021417_800749_2C96DC0C 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 25.06.2019 11:55, Peter Rosin wrote:

> 
> On 2019-06-25 10:05, Eugen.Hristev@microchip.com wrote:
>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> Add binding specification for analogic filter inside the i2c controller
> 
> s/analogic/the analog/
> 
>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>> ---
>>   Documentation/devicetree/bindings/i2c/i2c-at91.txt | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/i2c/i2c-at91.txt b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
>> index 8268595..20d334c 100644
>> --- a/Documentation/devicetree/bindings/i2c/i2c-at91.txt
>> +++ b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
>> @@ -23,6 +23,9 @@ Optional properties:
>>   - enable-dig-filt: Enable the built-in digital filter on the i2c lines,
>>     specifically required depending on the hardware PCB/board and if the
>>     version of the controller includes it.
>> +- enable-ana-filt: Enable the built-in analogic filter on the i2c lines,
>> +  specifically required depending on the hardware PCB/board and if the
>> +  version of the controller includes it.
>>   - Child nodes conforming to i2c bus binding
>>   
>>   Examples :
>> @@ -60,6 +63,7 @@ i2c0: i2c@f8034600 {
>>   	atmel,fifo-size = <16>;
>>   	i2c-sda-hold-time-ns = <336>;
>>   	enable-dig-filt;
>> +	enable-ana-filt;
> 
> Perhaps
> 
> 	microchip,digital-filter;
> 	microchip,analog-filter;
> 
> ?

Hi Peter,

Thanks for reviewing. The name of the property does not matter much to 
me, and we have properties prefixed with vendor, and some are not.

@Alexandre Belloni: which name you think it's best ?

Eugen

> 
> Cheers,
> Peter
> 
>>   
>>   	wm8731: wm8731@1a {
>>   		compatible = "wm8731";
>>
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
