Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BF7194954
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 21:40:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFr2Vzn3DzU1p5Jvo1JmOfMtPETpBoSsQlUVugTMjLw=; b=e6iI4xG2nWEOYQ
	y8Wrdvq1V2CQdb9cwqgOGnRAZjnICNtwg2H9z8JCRt2jgejh81fyttna1nmD8zm/eN0varg2cKnG4
	DhRcO7C9oWkrLAUUE/Ptiv6MAXIFi9l84D5sO8+OCTUUGxaB580hE00plCPToQqORsSQOyUULjgES
	bYwcS2sy2dUwtV+LktTMjJli/TW3ZMW1gUwEmqvAKXzkuYIj6y3W5W8qd4Vt5IhNNare/xBZuVZjz
	1Na7Jcy/4SiLp9FGY9WDg/8nCo1OtYcb5Tw6FNY8A/8kF4j48mzN0GtZw2mUkjxbN+eB0vPBXyIuo
	jDWxdrnUcgTRuDZa8l0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHZIV-0005ZT-NO; Thu, 26 Mar 2020 20:40:15 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHZIA-0005Su-UL
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 20:40:00 +0000
IronPort-SDR: voqBAUzRVHClGf/7JaT/IARd9OTkCA5ueZV7Y7yQlZ/zlaHjRqPOFzJ8nmkwKjvZ9FwvCI8XtM
 XNy0QaesOCfRRqojATO3o8ZDcRP8pJykOGFzjL+OoqBiv+BW9uygymW6opQ4tAVefGrPKl8ooZ
 KJ9Q5JIcnrTNKRJPLhMYtwi4o1JhQORmInHkvdgUmgpZEifQ1oOWzR0Yn00FqfdiaiS9BqwlGF
 AB5+Q37D4h3F92EnJLWHaa4urYfDefk/vRvF7Ejv8uuTAUB4oDPdJ1DKN56ppNwOrvWbp310FM
 yIc=
X-IronPort-AV: E=Sophos;i="5.72,309,1580799600"; d="scan'208";a="73652540"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Mar 2020 13:39:43 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Mar 2020 13:39:43 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 26 Mar 2020 13:39:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YQhuyHZI4HGkLrBMXD2POQLW9mhR0F7VeDowdPtBIRXCWqhNvVrNEXMrXcC8OqQsjJNRL4eiJo3GN6fxBJ7H5yqibBaEaklmCDxZg8/3xRLGDvAsUB9faiHdC3wi/3U+kwazyZKMZHyzkdmmjTDvZ6EZ6nZrY67daOkWWL12QDdDIQ4LAPHdjttKYFcQdqc9Vm+YQpc2JdqblUueVBgelX2Xp8G4dAGtad00G4Y8luTEYiqkLZQ1f96BoyTgUSjx5QKmSNPSLQcMeZzktO6Im7TYXIa7n0ctYRaY0Vqp2KNLoUO2CQ6wMSxAlqrxxMzl2EtO7WBX96k8aBxjrU82Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=obJ/1kXCvjrIOnX6vrDCy7iYXCe/tRg+Ve5RSrYp1nc=;
 b=oIDjod+jR+P/h5RHtOQFN7BZyTDQA5BnDZRx5yYuhKFTa/zk3g3/LK/EZ8lgCZDDV6NrOypj2pZquUhtrLoZI+ZpD94otXcGNj2Km3oxvO0xxQH2g7aZiTP4igjlyDdJdLQrqWb0b8hnLI4u02gmmaeG+Cymyq03LAdqtgfadUu5zUUMLdzeD38KpuUzMqcd4jxArBBqcl4Lh345dNEpgS64Ry2GxkSW9L7WTD+oqtCDzL9Obk26XuaQSE/vl5UY8FmaadniIRIX8y3TdyBYZbi5+4VKgDbIh3NcpBavm6ZU1Z4RZ7od43lsdhDctoFC6qEUw7ek5AUsk76XCWgKHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=obJ/1kXCvjrIOnX6vrDCy7iYXCe/tRg+Ve5RSrYp1nc=;
 b=Pn4/rTg3vrAEmLXS4XlUe59q24PrF7uIlk0BTvw2MJ43LnAmiPUyzmY48J8VP3RBB7hWwdZ0/ldAWwtYTZ4Y7dAVHytOYEURzaGh4IVupAlBldJrogbvRKfaf/ZAwj2wKOQzltXFN10/XLEClynxirlS/hLevf66FLC5esO71Ss=
Received: from DM6PR11MB2777.namprd11.prod.outlook.com (2603:10b6:5:bf::31) by
 DM6PR11MB4297.namprd11.prod.outlook.com (2603:10b6:5:14e::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.15; Thu, 26 Mar 2020 20:39:42 +0000
Received: from DM6PR11MB2777.namprd11.prod.outlook.com
 ([fe80::3903:ed89:1141:fca6]) by DM6PR11MB2777.namprd11.prod.outlook.com
 ([fe80::3903:ed89:1141:fca6%5]) with mapi id 15.20.2856.019; Thu, 26 Mar 2020
 20:39:41 +0000
From: <Ludovic.Desroches@microchip.com>
To: <alan@softiron.com>, <linux@armlinux.org.uk>, <linus.walleij@linaro.org>
Subject: Re: pinctrl states vs pinmux vs gpio (i2c bus recovery)
Thread-Topic: pinctrl states vs pinmux vs gpio (i2c bus recovery)
Thread-Index: AQHVrFth3luRvvMnSEKAQXD6fsgUbKew9CSAgAZJTgCAeITugIAqKqIAgAB79QCAABGPgIAAo1UAgACXSQCAAE+JAA==
Date: Thu, 26 Mar 2020 20:39:41 +0000
Message-ID: <4ad49369-ec70-4452-2149-85b877a1c371@microchip.com>
References: <20191206173343.GX25745@shell.armlinux.org.uk>
 <CACRpkdZv2rzA8AbFZKq0XVBaXNJR8c5tsb+1KTZ7fNuWjm5cbQ@mail.gmail.com>
 <20191213002010.GO25745@shell.armlinux.org.uk>
 <1ca5d81d-5aa9-8f8d-8731-4d34de9c6bfa@softiron.com>
 <4f9bb480-ba8d-b70e-961b-d6032232d250@softiron.com>
 <edb09f97-7748-f7d0-cad6-e79db7950b0d@microchip.com>
 <c193dd83-4cdc-9f3f-560e-828cf6e8a8db@softiron.com>
 <538ed844-4be1-4bda-a198-8b5706ee818b@microchip.com>
 <ae952fa3-4b20-5571-875c-408408d7ecb1@softiron.com>
In-Reply-To: <ae952fa3-4b20-5571-875c-408408d7ecb1@softiron.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ludovic.Desroches@microchip.com; 
x-originating-ip: [92.150.97.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c43a48a9-411c-4bc4-304e-08d7d1c5cf93
x-ms-traffictypediagnostic: DM6PR11MB4297:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4297296C858BE60195336B3FEFCF0@DM6PR11MB4297.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0354B4BED2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(136003)(39840400004)(346002)(366004)(6512007)(26005)(31686004)(8936002)(6486002)(8676002)(2906002)(186003)(966005)(81156014)(6506007)(81166006)(53546011)(36756003)(478600001)(54906003)(66446008)(316002)(71200400001)(110136005)(66476007)(66556008)(64756008)(86362001)(31696002)(5660300002)(4326008)(2616005)(66946007)(91956017)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4297;
 H:DM6PR11MB2777.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q+cIxNDg//MdQT01FKgjl2+C04Aet9ls2kHgohcyCa7HQJJzN5v3cXK9Dts3sMM1pamCaDSM07cMxR63bshy/sn8vMA5b9v0fg/YzI2vdohU/DMQrjRqXrv5NcRbAyISSyosGw0UdBQwgLvUzBxdgePLQhI5J40+gRdrif/Q0edJ8s9xjrxTzpvSrX0E0yeEqX2/fZJomvXYbSbfh9e9XwP3bvtbf42TS7kzpMu6q0BlKg0av7cug5+MGQYsRNGqh88uRd4OgDAB5PoUqiNKUoDqOH/2vzIoBKwcIA/nehGhBrJRh4DafXw+WRg8UUY8Xip/nithnNRFe6qJBlt8k6G49bv1tathvEU3eTw19tMVHn+7sn4N1IXsFW5k8fj3xM9LjK5iVe3G8PqwyEjCcVyLScX8dSrxlNC37eQqOr3LwScKazzDkmJH7NHOUh/gp5N0eKcoSHRhn7pCtH5QhUtfeKryCgxZiDHhpG1clXVAhcdvMu/TRGeib+XafZ1hxOa/Zvx4aqDtT6YcFDxtNQ==
x-ms-exchange-antispam-messagedata: Y95McLe1f4HiuQ49/3EEX9RYzDLGty+Qth01mkxLRyWOmsjCouw1P9lUSBmSEYseAg+mjK9MwjiDvVVkMDOR4OxyguUjPFDv75m+Yx3p2YcKU6RewwwoxFIkQPiX04wybZtRNegXmotv2wOwbavwDw==
Content-ID: <195DE8A47361324CA128885C30AE8E05@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c43a48a9-411c-4bc4-304e-08d7d1c5cf93
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2020 20:39:41.5398 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 76TEn7/z/ewiD+fm0/VhWIHrLZEFShVXubJCHw8OsqIIRLwB+RY9TGXubsKK8Is9dAnhEny5HvuDvkp6v3Y7FOs5RDezXXVb/BgMzSbZTMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4297
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_133955_041812_DD484B8F 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: kamel.bouhara@bootlin.com, linux-gpio@vger.kernel.org,
 Codrin.Ciubotariu@microchip.com, linux-arm-kernel@lists.infradead.org,
 wsa@the-dreams.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8yNi8yMDIwIDQ6NTUgUE0sIEFsYW4gT3R0IHdyb3RlOg0KPiBFWFRFUk5BTCBFTUFJTDog
RG8gbm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW5sZXNzIHlvdSBrbm93IA0K
PiB0aGUgY29udGVudCBpcyBzYWZlDQo+IA0KPiBPbiAzLzI2LzIwIDI6NTMgQU0sIEx1ZG92aWMu
RGVzcm9jaGVzQG1pY3JvY2hpcC5jb20gd3JvdGU6DQo+PiBPbiAzLzI1LzIwMjAgMTA6MDkgUE0s
IEFsYW4gT3R0IHdyb3RlOg0KPj4+IEVYVEVSTkFMIEVNQUlMOiBEbyBub3QgY2xpY2sgbGlua3Mg
b3Igb3BlbiBhdHRhY2htZW50cyB1bmxlc3MgeW91IGtub3cNCj4+PiB0aGUgY29udGVudCBpcyBz
YWZlDQo+Pj4NCj4+PiBPbiAzLzI1LzIwIDQ6MDYgUE0sIEx1ZG92aWMuRGVzcm9jaGVzQG1pY3Jv
Y2hpcC5jb20gd3JvdGU6DQo+Pj4+IE9uIDMvMjUvMjAyMCAxOjQyIFBNLCBBbGFuIE90dCB3cm90
ZToNCj4+Pj4+IEVYVEVSTkFMIEVNQUlMOiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRh
Y2htZW50cyB1bmxlc3MgeW91IGtub3cNCj4+Pj4+IHRoZSBjb250ZW50IGlzIHNhZmUNCj4+Pj4+
DQo+Pj4+PiBPbiAyLzI3LzIwIDExOjQ3IEFNLCBBbGFuIE90dCB3cm90ZToNCj4+Pj4+PiBPbiAx
Mi8xMi8xOSA3OjIwIFBNLCBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4gd3JvdGU6DQo+
Pj4+Pj4+IE9uIE1vbiwgRGVjIDA5LCAyMDE5IGF0IDAxOjIwOjE1QU0gKzAxMDAsIExpbnVzIFdh
bGxlaWogd3JvdGU6DQo+Pj4+Pj4+PiBIaSBSdXNzZWxsLA0KPj4+Pj4+Pj4NCj4+Pj4+Pj4+IHZl
cnkgbmljZSBkZXNjcmlwdGlvbiBvZiB0aGlzIGR1YWwtbW9kZSBwcm9ibGVtLg0KPj4+Pj4+Pj4N
Cj4+Pj4+Pj4+IEkgd2lzaCBJIGhhZCBhIHNpbXBsZSBhbmQgZWxlZ2FudCB3YXkgd2UgY291bGQg
bWFrZSBpdA0KPj4+Pj4+Pj4gdW5hbWJpZ3VvdXMgYW5kIHNpbXBsZSB0byB1c2UgLi4uIGJ1dCBp
dCBiZWF0cyBtZSByaWdodA0KPj4+Pj4+Pj4gbm93Lg0KPj4+Pj4+Pj4NCj4+Pj4+Pj4+IE9uIEZy
aSwgRGVjIDYsIDIwMTkgYXQgNjozMyBQTSBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4N
Cj4+Pj4+Pj4+IDxsaW51eEBhcm1saW51eC5vcmcudWs+IHdyb3RlOg0KPj4+Pj4+Pj4NCj4+Pj4+
Pj4+PiBPbmUgbWF5IGV4cGVjdDoNCj4+Pj4+Pj4+Pg0KPj4+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHBpbmN0cmxfc2VsZWN0X3N0YXRlKGkyY19pbXgtPnBpbmN0cmwsDQo+Pj4+Pj4+Pj4g
aTJjX2lteC0+cGluY3RybF9waW5zX2RlZmF1bHQpOw0KPj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4gdG8g
Y2hhbmdlIHRoZW0gYmFjayB0byB0aGUgZGVmYXVsdCBzdGF0ZSwgYnV0IHRoYXQgd291bGQgYmUN
Cj4+Pj4+Pj4+PiBpbmNvcnJlY3QuDQo+Pj4+Pj4+Pj4gVGhlIGZpcnN0IHRoaW5nIHRoYXQgcGlu
Y3RybF9zZWxlY3Rfc3RhdGUoKSBkb2VzIGlzIGNoZWNrIHdoZXRoZXINCj4+Pj4+Pj4+Pg0KPj4+
Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIHAtPnN0YXRlID09IHN0YXRlDQo+Pj4+Pj4+Pj4N
Cj4+Pj4+Pj4+PiB3aGljaCBpdCB3aWxsIGRvLCBhcyB0aGUgcGluY3RybCBsYXllciBoYXNuJ3Qg
YmVlbiBpbmZvcm1lZCBvZiB0aGUNCj4+Pj4+Pj4+PiBjaGFuZ2UgdGhhdCBoYXMgaGFwcGVuZWQg
YmVoaW5kIGl0cyBiYWNrIGF0IHRoZSBwaW5tdXggbGV2ZWwuDQo+Pj4+Pj4+PiBTb21lIHBpbiBj
b250cm9sbGVycyBoYXZlIHRoZSAuc3RyaWN0IHByb3BlcnR5IHNldA0KPj4+Pj4+Pj4gaW4gdGhl
aXIgc3RydWN0IHBpbm11eF9vcHM6DQo+Pj4+Pj4+Pg0KPj4+Pj4+Pj4gKiBAc3RyaWN0OiBkbyBu
b3QgYWxsb3cgc2ltdWx0YW5lb3VzIHVzZSBvZiB0aGUgc2FtZSBwaW4gZm9yIA0KPj4+Pj4+Pj4g
R1BJTyBhbmQNCj4+Pj4+Pj4+IGFub3RoZXINCj4+Pj4+Pj4+ICrCoMKgwqDCoMKgIGZ1bmN0aW9u
LiBDaGVjayBib3RoIGdwaW9fb3duZXIgYW5kIG11eF9vd25lciBzdHJpY3RseSANCj4+Pj4+Pj4+
IGJlZm9yZQ0KPj4+Pj4+Pj4gYXBwcm92aW5nDQo+Pj4+Pj4+PiAqwqDCoMKgwqDCoCB0aGUgcGlu
IHJlcXVlc3QuDQo+Pj4+Pj4+Pg0KPj4+Pj4+Pj4gVGhlIG5vbi1zdHJpY3QgcGluIGNvbnRyb2xs
ZXJzIGFyZSB0aG9zZSB0aGF0IGFjdHVhbGx5IGFsbG93IEdQSU8NCj4+Pj4+Pj4+IGFuZCBkZXZp
Y2UgZnVuY3Rpb25zIHRvIGJlIHVzZWQgb24gdGhlIHNhbWUgcGh5c2ljYWwgbGluZSBhdCB0aGUN
Cj4+Pj4+Pj4+IHNhbWUgdGltZS4gSW4gdGhpcyBjYXNlIHRoZXJlIGlzIG5vdCBzcGVjaWFsIEdQ
SU8gbW9kZSBmb3IgdGhlDQo+Pj4+Pj4+PiBsaW5lIGluIHNvbWUgbXV4aW5nIHJlZ2lzdGVycywg
dGhleSBhcmUganVzdCBwaHlzaWNhbGx5IGNvbm5lY3RlZA0KPj4+Pj4+Pj4gc29tZWhvdy4NCj4+
Pj4+Pj4+DQo+Pj4+Pj4+PiBPbmUgdXNlY2FzZSBpcyBzb3J0IG9mIGxpa2UgaG93IHRjcGR1bXAg
d29yayBmb3INCj4+Pj4+Pj4+IGV0aGVybmV0IGludGVyZmFjZXM6IGEgR1BJTyByZWdpc3RlciBj
YW4gInNub29wIiBvbiBhIHBpbiB3aGlsZQ0KPj4+Pj4+Pj4gaW4gdXNlZCBieSBhbm90aGVyIGRl
dmljZS4NCj4+Pj4+Pj4+DQo+Pj4+Pj4+PiBCdXQgaXQgd291bGQgbm90YWJseSBhbHNvIGFsbG93
IHlvdSB0byBkcml2ZSB0aGUgbGluZSBhbmQgaW50ZXJmZXJlDQo+Pj4+Pj4+PiB3aXRoIHRoZSBk
ZXZpY2UuIFdoaWNoIGlzIGV4YWN0bHkgd2hhdCB0aGlzIEkyQyByZWNvdmVyeSBtZWNoYW5pc20N
Cj4+Pj4+Pj4+IGRvZXMsIGp1c3QgdGhhdCBpdHMgcGluIGNvbnRyb2xsZXIgaXMgYWN0dWFsbHkg
c3RyaWN0LCB3aWxsIG5vdCANCj4+Pj4+Pj4+IGFsbG93DQo+Pj4+Pj4+PiB0aGUgc2FtZSBsaW5l
IHRvIGJlIHVzZWQgZm9yIEdQSU8gYW5kIHNvbWUgb3RoZXIgZnVuY3Rpb24gYXQgdGhlDQo+Pj4+
Pj4+PiBzYW1lIHRpbWUsIHNvIEkgc3VwcG9zZSBpLk1YIHNob3VsZCBwcm9iYWJseSBleHBsb3Jl
IHRoZQ0KPj4+Pj4+Pj4gc3RyaWN0IG1vZGUuDQo+Pj4+Pj4+Pg0KPj4+Pj4+Pj4gRW5hYmxpbmcg
dGhhdCB3aWxsIHNhZGx5IG1ha2UgdGhlIHByb2JsZW0gTU9SRSBjb21wbGV4DQo+Pj4+Pj4+PiBm
b3IgdGhpcyBJMkMgcmVjb3ZlcnksIHJlcXVpcmluZyBhIGN5Y2xlIG9mDQo+Pj4+Pj4+PiBncGlv
ZF9wdXQoKS9ncGlvZF9nZXQoKSB0byBnZXQgaXQgcmVsZWFzZWQgZnJvbSBHUElPIG1vZGUsIGku
ZS4NCj4+Pj4+Pj4+IHdlIHdvdWxkIG5lZWQgdG8ganVzdCBnZXQgdGhlIEdQSU8gd2hlbiB0aGlz
IGlzIHN0cmljdGx5IG5lZWRlZC4NCj4+Pj4+Pj4+IFVzaW5nIGRldm1fZ3Bpb2RfZ2V0KCkgYW5k
IGtlZXBpbmcgYSByZWZlcmVuY2UgZGVzY3JpcHRvcg0KPj4+Pj4+Pj4gYXJvdW5kIHdvdWxkIG5v
dCB3b3JrIGFsbCBvZiBhIHN1ZGRlbi4NCj4+Pj4+Pj4+DQo+Pj4+Pj4+PiBJIGFtIHRoaW5raW5n
IHdoZXRoZXIgd2UgY2FuIGhhbmRsZSB0aGUgbm9uLXN0cmljdCBjb250cm9sbGVycw0KPj4+Pj4+
Pj4gaW4gYSBtb3JlIGVsZWdhbnQgd2F5LCBvciBhZGQgc29tZSBBUEkgdG8gZXhwbGljaXRseSBo
YW5kIG92ZXINCj4+Pj4+Pj4+IGJldHdlZW4gZGV2aWNlIGZ1bmN0aW9uIGFuZCBHUElPIGZ1bmN0
aW9uLiBCdXQgSSBjYW4ndCByZWFsbHkNCj4+Pj4+Pj4+IHNlZSBzb21lIG9idmlvdXMgc29sdXRp
b24uDQo+Pj4+Pj4+IFdoYXQgSSdtIGN1cnJlbnRseSB0cnlpbmcgaXMgKGVycm9yIGhhbmRsaW5n
IHJlbW92ZWQgZm9yIGJyZXZpdHkpOg0KPj4+Pj4+Pg0KPj4+Pj4+PiDCoMKgwqDCoMKgIHN0cnVj
dCBpMmNfYnVzX3JlY292ZXJ5X2luZm8gKmJyaSA9ICZpMmMtPnJlY292ZXJ5Ow0KPj4+Pj4+Pg0K
Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpMmMtPnBpbmN0cmwgPSBkZXZtX3BpbmN0cmxf
Z2V0KGRldik7DQo+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIGkyYy0+cGluY3RybF9kZWZh
dWx0ID0gcGluY3RybF9sb29rdXBfc3RhdGUoaTJjLT5waW5jdHJsLA0KPj4+Pj4+Pg0KPj4+Pj4+
PiBQSU5DVFJMX1NUQVRFX0RFRkFVTFQpOw0KPj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCBp
MmMtPnBpbmN0cmxfcmVjb3ZlcnkgPSANCj4+Pj4+Pj4gcGluY3RybF9sb29rdXBfc3RhdGUoaTJj
LT5waW5jdHJsLA0KPj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgInJlY292ZXJ5Iik7DQo+Pj4+Pj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGJyaS0+c2RhX2dwaW9kID0gZGV2bV9ncGlvZF9nZXQoZGV2LCAic2RhIiwNCj4+
Pj4+Pj4gR1BJT0RfT1VUX0hJR0hfT1BFTl9EUkFJTik7DQo+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGJyaS0+c2NsX2dwaW9kID0gZGV2bV9ncGlvZF9nZXQoZGV2LCAic2NsIiwNCj4+Pj4+
Pj4gR1BJT0RfT1VUX0hJR0hfT1BFTl9EUkFJTik7DQo+Pj4+Pj4+DQo+Pj4+Pj4+IMKgwqDCoMKg
wqAgcGluY3RybF9zZWxlY3Rfc3RhdGUoaTJjLT5waW5jdHJsLCBpMmMtPnBpbmN0cmxfcmVjb3Zl
cnkpOw0KPj4+Pj4+PiDCoMKgwqDCoMKgIHJldHVybiBwaW5jdHJsX3NlbGVjdF9zdGF0ZShpMmMt
PnBpbmN0cmwsIA0KPj4+Pj4+PiBpMmMtPnBpbmN0cmxfZGVmYXVsdCk7DQo+Pj4+Pj4+DQo+Pj4+
Pj4+IHdoaWNoIHNlZW1zIGdvb2QgZW5vdWdoIHRvIGdldCB0aGUgcGlucyBiYWNrIGludG8gaTJj
IG1vZGUgYWZ0ZXIgdGhlDQo+Pj4+Pj4+IGdwaW9zIGFyZSBvYnRhaW5lZC7CoCBUaGVuIHdlIHN3
aXRjaCB0aGUgcGluY3RybCBzdGF0ZSBiZXR3ZWVuDQo+Pj4+Pj4+IHBpbmN0cmxfcmVjb3Zlcnkg
YW5kIHBpbmN0cmxfZGVmYXVsdCBhcyB3ZSBoYXZlIG5lZWQgdG8uDQo+Pj4+Pj4+DQo+Pj4+Pj4+
IFRoZSBwcm9ibGVtIGlzLCB0aGUgZ2VuZXJpYyBpMmMgYnVzIHJlY292ZXJ5IGNvZGUgd2FudHMg
dGhlIGdwaW9kDQo+Pj4+Pj4+IGRlc2NyaXB0b3JzIHRvIGJlIHNldHVwIGFuZCBpbnBsYWNlIGJ5
IHRoZSB0aW1lIGkyY19pbml0X3JlY292ZXJ5KCkNCj4+Pj4+Pj4gaXMgY2FsbGVkICh3aGljaCBp
cyBjYWxsZWQgd2hlbiB0aGUgYWRhcHRlciBpcyByZWdpc3RlcmVkKSBzbw0KPj4+Pj4+PiBob2xk
aW5nIG9mZiB1bnRpbCB3ZSBuZWVkIHRvIGRvIHJlY292ZXJ5IGRvZXNuJ3Qgd29yay4NCj4+Pj4+
Pj4NCj4+Pj4+Pj4gVGhpcyBzZWVtcyB0byB3b3JrIGZvciB0aGlzIFNvQyBJJ20gY3VycmVudGx5
IHdvcmtpbmcgd2l0aCwgYnV0IEkNCj4+Pj4+Pj4gdGhpbmsgdGhlcmUncyBtb3JlIG9uIHRoZSBo
b3Jpem9uIC0gSSdtIGhhdmluZyB0aGUgc2FtZSBwcm9ibGVtcw0KPj4+Pj4+PiBvbiBhbm90aGVy
IFNvQyB3aGljaCBhbHNvIG5lZWRzIGJ1cyByZWNvdmVyeSBpbXBsZW1lbnRlZCwgYW5kIGFzDQo+
Pj4+Pj4+IHRoZSBwcm9ibGVtIGRldmljZSBpcyBiZWhpbmQgYW4gSTJDIGJ1cyBtdXgsIHdoZW4g
aXQgbG9ja3MgdGhlIEkyQw0KPj4+Pj4+PiBidXMsIGl0IGtpbGxzIGFsbCBJMkMgYnVzZXMgcm9v
dGVkIGF0IHRoYXQgcGFydGljdWxhciBTb0MgSTJDDQo+Pj4+Pj4+IGNvbnRyb2xsZXIuwqAgSG93
ZXZlciwgdGhlcmUncyBhIHByb2JsZW0gLSB0aGUgcGluY3RybHMgZm9yIHRoYXQgU29DDQo+Pj4+
Pj4+IGFyZSBzZXQgYnkgUk9NIGZpcm13YXJlIGF0IGJvb3QgdGltZSBieSByZWFkaW5nIGEgdGFi
bGUgZnJvbSB0aGUNCj4+Pj4+Pj4gYm9vdCBtZWRpYS7CoCAqVW5wcmludGFibGVzIGFib3V0IGZp
cm13YXJlIGJlaW5nIHRvbyB3YXkgDQo+Pj4+Pj4+IGxpbWl0aW5nKi4gOnANCj4+Pj4+Pj4NCj4+
Pj4+IMKgwqAgPg0KPj4+Pj4+IEhpIGFsbCwgd2hhdCdzIHRoZSBjdXJyZW50IHN0YXRlIG9mIHRo
aXM/IEkgY2FuIGNvbmZpcm0gdGhhdCB0aGlzIGlzDQo+Pj4+Pj4gYnJva2VuIHdpdGggdGhlIGF0
OTEgaTJjIGNvbnRyb2xsZXIncyByZWNvdmVyeSBtb2RlWzFdLCB3aGljaCBpcw0KPj4+Pj4+IGlt
cGxlbWVudGVkIGV4YWN0bHkgdGhlIHNhbWUgYXMgb3RoZXIgaTJjIG1hc3RlciByZWNvdmVyeSBt
b2Rlcywgc28gSQ0KPj4+Pj4+IHN1c3BlY3QgdGhlbSB0byBiZSBicm9rZW4gYXMgd2VsbC4NCj4+
Pj4+Pg0KPj4+Pj4+IEknbSB1c2luZyA1LjUuNiB3aXRoIHRoaXMgcGF0Y2ggYXBwbGllZCAod2hp
Y2ggYWRkcyB0aGUgcmVjb3ZlcnkpOg0KPj4+Pj4+IMKgwqDCoMKgwqDCoCBodHRwczovL3BhdGNo
d29yay5rZXJuZWwub3JnL2NvdmVyLzExMzMzODgzLw0KPj4+Pj4+DQo+Pj4+Pj4gSXQgd29ya2Vk
IGZpbmUgd2l0aCA1LjIsIGJ1dCBoYXMgbm93IGJyb2tlbiwgdGhlIHdheSBSdXNzZWxsIA0KPj4+
Pj4+IGRlc2NyaWJlcywNCj4+Pj4+PiBpbiA1LjUuNiBhbmQgYWxzbyBvbiB0aGUgbGF0ZXN0IDUu
Ni1yYzMuIFJ1c3NlbGwncyBzdWdnZXN0ZWQgDQo+Pj4+Pj4gd29ya2Fyb3VuZA0KPj4+Pj4+IG9m
IHNldHRpbmcgdGhlIHBpbmN0cmwgdG8gcmVjb3ZlcnkgKGdwaW8pIGFuZCB0aGVuIGJhY2sgdG8g
ZGVmYXVsdCANCj4+Pj4+PiBkb2VzDQo+Pj4+Pj4gbWFrZSBpdCB3b3JrLg0KPj4+Pj4+DQo+Pj4+
Pj4gQWxhbi4NCj4+Pj4+Pg0KPj4+Pj4+IFsxXSBjdXJyZW50bHkgdGhlIHBhdGNoIGZvciBpMmMg
cmVjb3ZlcnkgZm9yIGF0OTEgaXMgYWNjZXB0ZWQgdG8NCj4+Pj4+PiBXb2xmcmFtDQo+Pj4+Pj4g
U2FuZydzIGZvci1uZXh0IHRyZWUuDQo+Pj4+Pj4NCj4+Pj4+DQo+Pj4+PiBJcyB0aGVyZSBhbnkg
d29yZCBvbiB0aGlzPw0KPj4+Pj4NCj4+Pj4NCj4+Pj4gSW50ZXJuYWxseSB3ZSBoYXZlIG1hbmFn
ZWQgaXQgaW4gdGhlIHNhbWUgd2F5IGFzIHRoZSBvbmUgc3VnZ2VzdGVkIGJ5DQo+Pj4+IFJ1c3Nl
bGwuDQo+Pj4+DQo+Pj4+IFdlIHdvbmRlcmVkIGlmIHdlIHNob3VsZCBtYWlubGluZSBpdCBvciBu
b3QgYXMgaXQncyByZWFsbHkgdHJpY2t5IHRvDQo+Pj4+IHByb2NlZWQgbGlrZSB0aGlzLg0KPj4+
DQo+Pj4gQ2VydGFpbmx5IGl0IG5lZWRzIHRvIHdvcmsgaW4gbWFpbmxpbmUgdGhvdWdoLCByaWdo
dD8gTm90IGp1c3QgaW4gdGhlDQo+Pj4gbGludXg0c2FtIHZlbmRvciBrZXJuZWw/DQo+Pg0KPj4g
SXQgaGFzIGJlZW4gZml4ZWQgdHdvIGRheXMgYWdvLiBXZSdsbCBzZW5kIGl0IGFuZCBzZWUgaWYg
aXQgd2lsbCBiZQ0KPj4gYWNjZXB0ZWQuDQo+Pg0KPj4gQnkgdGhlIHdheSwgd2l0aCB3aGljaCBT
b0MgaGF2ZSB5b3UgZW5jb3VudGVyZWQgdGhpcyBpc3N1ZT8gSXQgaXMgb2YNCj4+IGludGVyZXNl
dCBhcyB3ZSBoYXZlIHR3byBkaWZmZXJlbnQgcGluIGNvbnRyb2xsZXJzLg0KPiANCj4gU0FNQTVE
MzMNCj4gDQoNCk9rLCB0aGFua3MuDQoNCj4+DQo+Pj4NCj4+Pj4NCj4+Pj4gSW4gdGhlIGZ1dHVy
ZSwgd2UgbWF5IGRlY2xhcmUgb3VyIHBpbmN0cmwgYXMgc3RyaWN0IHdoaWNoIHNob3VsZCBjYXVz
ZQ0KPj4+PiBhbm90aGVyIGJyZWFrYWdlLi4uIEl0J3Mgbm90IGRvbmUgeWV0IGJlY2F1c2Ugd2hl
biBJIHRyaWVkIHRvIGRvIGl0LA0KPj4+PiBtYXliZSBpdCBoYXMgY2hhbmdlZCBub3csIEkgd2Fz
IG5vdCBhYmxlIHRvIGFwcGx5IHRoZSBwaW4gY29uZmlndXJhdGlvbg0KPj4+PiB0byB0aGUgcGlu
IG11eGVkIGFzIGEgZ3Bpby4NCj4+Pj4NCj4+Pg0KPj4+IFRoZSBsYXJnZXIgcXVlc3Rpb24gSSB0
aGluayBpcywgaXMgdGhpcyBhIGJyZWFrYWdlIGluIGdwaW8/IGkyYy1hdDkxIGlzDQo+Pj4gbm90
IHRoZSBvbmx5IGkyYyBkcml2ZXIgd2hpY2ggdXNlcyBncGlvLWJhc2VkIGJ1cyByZWNvdmVyeSwg
YW5kIG1hbnkgb2YNCj4+PiB0aGVtIHVzZSBuZWFybHkgdGhlIGV4YWN0IHNhbWUgY29kZSBhcyBp
MmMtYXQ5MS4gQXJlIHRoZXkgYWxsIGJyb2tlbg0KPj4+IHdpdGggdGhpcyBrZXJuZWwgdXBkYXRl
IHRvbz8NCj4+Pg0KPj4NCj4+IEkgZG9uJ3Qga25vdyB3aGF0IGNoYW5nZWQgaW4gZ3BpbyBvciBw
aW5jdHJsLiBUaGlua2luZyBtb3JlIGFib3V0IGl0DQo+PiBJJ2FtIHN1cnByaXNlZCBpdCBoYWQg
d29ya2VkLiBJbiBteSBtaW5kLCBncGlvZF9nZXQgaGFzIGFsd2F5cyBlbmRlZA0KPj4gd2l0aCBh
IGNhbGwgdG8gdGhlIGdwaW9fcmVxdWVzdF9lbmFibGUgb3BlcmF0aW9uIHNvIGNoYW5naW5nIHRo
ZSBtdXggdG8NCj4+IGEgZ3BpbyBmdW5jdGlvbi4NCj4gDQo+IEkgZGVmaW5pdGVseSBkaWQgYW4g
QS9CIHRlc3Qgd2l0aCA1LjIgYW5kIDUuNSBiZWZvcmUgd3JpdGluZyB0aGUgZW1haWwsDQo+IGFu
ZCBJIGFsc28gZGVmaW5pdGVseSB0cmFjZWQgaXQgZG93biB0byBkZXZtX2dwaW9kX2dldCgpIChp
ZTogbGVhdmUgYWxsDQo+IHRoZSByZXN0IGFuZCB0YWtlIHRob3NlIHR3byBsaW5lcyBvdXQgaW4g
NS41LCBhbmQgdGhhdCBtYWRlIGl0IG5vdCBmYWlsKS4NCj4gDQoNCklmIEkgaGF2ZSB3ZWxsIHVu
ZGVyc3Rvb2QsIGluIDUuNSB5b3Uga2VwdCBkZXZtX2dwaW9kX2dldCgpIGNhbGxzIA0Kd2l0aG91
dCB0aGUgcmVjb3Zlcnkgc3R1ZmYgYW5kIGl0IHdvcmtzLiBJc24ndCBpdD8NCg0KPiBBZ2Fpbiwg
b3RoZXIgaTJjIGNvbnRyb2xsZXJzIGFyZSBidWlsdCB0aGUgZXhhY3Qgc2FtZSB3YXksIHdpdGgg
YQ0KPiBoYW5kZnVsIG9mIHRoZW0gdXNpbmcgdGhlIHNhbWUgY29waWVkL3Bhc3RlZCBjb2RlLiBJ
IHN1c3BlY3QgdGhleSBhcmUNCj4gYnJva2VuIHRvbyAod2hlbiBncGlvIGJ1cyByZWNvdmVyeSBp
cyBlbmFibGVkKS4gSWYgdGhleSdyZSBub3QsIHRoZW4NCj4gZG9lcyBpdCBtZWFuIGRldm1fZ3Bp
b2RfZ2V0KCkgd29ya3MgZGlmZmVyZW50bHkgb24gZGlmZmVyZW50IENQVXM/DQo+IA0KDQpkZXZt
X2dwaW9kX2dldCgpIGNhbGxzIGdwaW9fcmVxdWVzdCBvciBncGlvX3JlcXVlc3RfZW5hYmxlIG9w
cyB3aGljaCBhcmUgDQppbXBsZW1lbnRlZCBpbiB0aGUgcGluIGNvbnRyb2xsZXIgc28gdGhlIGJl
aGF2aW9yIGNhbiBiZSBkaWZmZXJlbnQuDQoNClJlZ2FyZHMNCg0KTHVkb3ZpYw0KDQo+Pg0KPj4g
VGhlIHBpbmN0cmwtYXQ5MSBkZWZpbmVzIHRoZSBncGlvX3JlcXVlc3RfZW5hYmxlIG9wIHdoaWxl
IHRoZQ0KPj4gcGluY3RybC1hdDkxLXBpbzQgbm90IHlldC4gVGhhdCdzIHdoeSBJIGFza2VkIGZv
ciB0aGUgU29DIHlvdSB1c2UuDQo+Pg0KPiANCj4gT2suDQo+IA0KPiBBbGFuLg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
