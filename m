Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A4E1185DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 12:10:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V85ktFFDHPzd8OHLcg2n3K8hCG3LSK6yTFi2WPQ35j0=; b=SBdCAi9Oph4dzD
	JLltckQwzItv/QC6FLdqpf/g1Kba58rxkQvyhAs3Xtwo1rKb6+hssqYU4aeWztLf9r2NCL0eUA13I
	D295MF37uJTL/QmcYj54wYyg5+4OQvKAmmj/4heLjS6Kj4Y0xlywFccPKdaxnOukIjRNT4J75HRZp
	/+9Ag48lsasyXOsRquATFQA1QbvVVJv8gG/uBvDt3hYMan0KicQ2WmxuQRuH5Uuj1JXRHNh/1D4oH
	zZeumOo+spjRerqk8cPUnr98mzt/hncaLtXa7133kSX1VAcTqk07X4EMk1MytMMz8f3fXCX3K1YSM
	JydVzGk4Onk8WoRgR9iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iedPj-0007j5-Pd; Tue, 10 Dec 2019 11:10:47 +0000
Received: from mail-eopbgr80090.outbound.protection.outlook.com ([40.107.8.90]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedPc-0007iA-6J
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 11:10:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EpU6HBDJA6YK+F4CGFUcv4zXQCydr9cz/xO8tG48GY0cb2A0DVBC3uF03rgQC3yuD1b6PiFAroKSLovNgyeWSRhUJ5io080Nmc01+SoG87iCjpC6QUxppSmCJVXiar+OhjpoRtr1Qx3valkJwkckqqSt/R8DRC1dLrmzLcIg2XwwSoqw8Rhg9vhm9j2mZ9I/5sYNocj3W/eAcuVhKISzzYsWrEDuTgiMDDDhRrzfsGU2cKaO78meOA/zer0CmZfBIsEfvGySaqC/YWCsQXAYwKfIZFUlG+rfDqLUrY4zZyC5Mg68gitrQeWqVYyMZIduSoDVYzMFWn0fAvNX9aqLLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pLNeqOHUDq1XlI+vy0sHgteCb8urMqTBC/pwNO9Iu08=;
 b=C6WkC1WZki0Kgm/wE6hEZmsTR3jPmvOqsmUXvdRyadYhE7HN871+RqvwAwaa0qrOX0kslNtYJBYERzB2ZgxsyyUH0naLe/lUXNI4X0igTCZbubB8/i0+A7lkLdacCjLq8dXBRpywGFMJn5nO+7QR1g9nbRaF6KzbYdYcuX6c3znYz0SS95sk2Qz8w/3ETqCkDdP+SJs1XNTIgnWBJhml6rBxH7mYbS07fFRkB0j3dv1DrbNoRXjY78qzXNJd1HC5AKrrnDY8uKMaFBh0XMVBUa3PIFuLj9/1FYvVQyx2zAEznt8o+8WKFdC587Giw01QtkNElawnWjeQ7x0qO6tFlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pLNeqOHUDq1XlI+vy0sHgteCb8urMqTBC/pwNO9Iu08=;
 b=h6qKPsh1AxbFHC+E+l0b8QXK1qJGiE6X0GcElh+p8VvBg8KoQbdc8nh1u1sewG+waE4Z9yNkLxG0bXgq2YBW3KAEzMuLEjyhBvcJiA4ttWo49yr0+uGlYCQrlQDsMObwLlv7nlIhZFDqdQRpL/x7RMiARhJTiyTJFrV8IK9+gB0=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3564.eurprd02.prod.outlook.com (52.134.72.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.16; Tue, 10 Dec 2019 11:10:33 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::446e:c4f8:7e59:1c6d]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::446e:c4f8:7e59:1c6d%7]) with mapi id 15.20.2516.018; Tue, 10 Dec 2019
 11:10:33 +0000
From: Peter Rosin <peda@axentia.se>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Rob Herring
 <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm: Remove leftover axentia.txt
Thread-Topic: [PATCH] dt-bindings: arm: Remove leftover axentia.txt
Thread-Index: AQHVn7KYRtbuNJhxzU6zeDV2d4GH06ezU76AgAABswA=
Date: Tue, 10 Dec 2019 11:10:33 +0000
Message-ID: <0ea488f6-adf9-d2fe-ef55-373a70cf04fe@axentia.se>
References: <20191120145536.17884-1-robh@kernel.org>
 <20191210110419.GI1463890@piout.net>
In-Reply-To: <20191210110419.GI1463890@piout.net>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1PR0401CA0056.eurprd04.prod.outlook.com
 (2603:10a6:3:19::24) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b846e1d3-b9d8-40ff-2282-08d77d619365
x-ms-traffictypediagnostic: DB3PR0202MB3564:
x-microsoft-antispam-prvs: <DB3PR0202MB35642E60126BE69EF213B92DBC5B0@DB3PR0202MB3564.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39830400003)(136003)(366004)(396003)(376002)(189003)(199004)(4326008)(8936002)(81166006)(81156014)(71200400001)(6486002)(6512007)(26005)(110136005)(54906003)(6506007)(53546011)(86362001)(31696002)(186003)(8676002)(66556008)(66946007)(66476007)(64756008)(66446008)(316002)(2616005)(52116002)(36756003)(508600001)(2906002)(31686004)(4001150100001)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3564;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oOWfXMPwoiAPl1WnkCfgvOyTtl13YZPbQ5udTv+iB7B9+ey8qUbUv5gq16YpYEptO34YuOCNoJ4XSNzonseTACA7vB7nNBlj8NBeUHe1OjhTVWSZUTWXmDj2O5Q54jk2+GVy5DozieBzvdu3Z7ILRMjHuJq+sNVmMbxb4ZxNQptQ7si0iKKQbQPm4LEdW/U72zth66si4SX/AtPg7F9rxz/2uqjTSXX3u+q3L+Z/Emj4seK/YlJcOKt8OgSitftOxftWqY6wbb1KkQZmfLDTXHmKIkvnGdB81SMyrWLCR32Oqzwyhbl4rK9EbhWB0j6oyjrYHkp2hUxnnKnSS64lcnpummjjdtsSEBLNUL2Xl7lLfnEKfLgT92341WYVn132CCgkR8B3S/xvG55h6CnD178eRFyBH76Z2xc/QH3ei8pTCFKTsSFCtH1sY7r+c4TT
x-ms-exchange-transport-forked: True
Content-ID: <684E8A02BB06C94786E5A9AA34112459@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: b846e1d3-b9d8-40ff-2282-08d77d619365
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 11:10:33.6961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SyKkH/JlzZyDwUmtYGIFvysoQZ/F6c0BQ76aK5IRDhVuF3q2NsKMZfqn40xS0KmI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3564
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_031040_453609_3EF1D328 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.90 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-10 12:04, Alexandre Belloni wrote:
> On 20/11/2019 08:55:36-0600, Rob Herring wrote:
>> The bindings described in axentia.txt are already covered by
>> atmel-at91.yaml, so remove the file.
>>
>> Cc: Peter Rosin <peda@axentia.se>
>> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
>> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
>> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
>> Signed-off-by: Rob Herring <robh@kernel.org>
> Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Right, this one fell of out of my memory due to overload. Sorry.

Acked-by: Peter Rosin <peda@axentia.se>

Cheers,
Peter

> 
>> ---
>>  .../devicetree/bindings/arm/axentia.txt       | 28 -------------------
>>  MAINTAINERS                                   |  1 -
>>  2 files changed, 29 deletions(-)
>>  delete mode 100644 Documentation/devicetree/bindings/arm/axentia.txt
>>
>> diff --git a/Documentation/devicetree/bindings/arm/axentia.txt b/Documentation/devicetree/bindings/arm/axentia.txt
>> deleted file mode 100644
>> index de58f2463880..000000000000
>> --- a/Documentation/devicetree/bindings/arm/axentia.txt
>> +++ /dev/null
>> @@ -1,28 +0,0 @@
>> -Device tree bindings for Axentia ARM devices
>> -============================================
>> -
>> -Linea CPU module
>> -----------------
>> -
>> -Required root node properties:
>> -compatible = "axentia,linea",
>> -	     "atmel,sama5d31", "atmel,sama5d3", "atmel,sama5";
>> -and following the rules from atmel-at91.txt for a sama5d31 SoC.
>> -
>> -
>> -Nattis v2 board with Natte v2 power board
>> ------------------------------------------
>> -
>> -Required root node properties:
>> -compatible = "axentia,nattis-2", "axentia,natte-2", "axentia,linea",
>> -	     "atmel,sama5d31", "atmel,sama5d3", "atmel,sama5";
>> -and following the rules from above for the axentia,linea CPU module.
>> -
>> -
>> -TSE-850 v3 board
>> -----------------
>> -
>> -Required root node properties:
>> -compatible = "axentia,tse850v3", "axentia,linea",
>> -	     "atmel,sama5d31", "atmel,sama5d3", "atmel,sama5";
>> -and following the rules from above for the axentia,linea CPU module.
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 97b28c913813..8d711f764dfb 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -2859,7 +2859,6 @@ AXENTIA ARM DEVICES
>>  M:	Peter Rosin <peda@axentia.se>
>>  L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>>  S:	Maintained
>> -F:	Documentation/devicetree/bindings/arm/axentia.txt
>>  F:	arch/arm/boot/dts/at91-linea.dtsi
>>  F:	arch/arm/boot/dts/at91-natte.dtsi
>>  F:	arch/arm/boot/dts/at91-nattis-2-natte-2.dts
>> -- 
>> 2.20.1
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
