Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC82245ABF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:42:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXEeacAhJIMEed4I3i2h02ZKyfRpjNkT/aPlO0qG9w0=; b=XTItVBcxCHJH1G
	dseeerwmPXITrXPK8OZfn6BmE9CE+oL1N48tlW4mG11sxZYIWSwUys6s662VqLEwe2/fvmK9h8Rfa
	/tgCHPlTTkeFUOhIUvW5H5SPgzUKaJ4RmjLjaD6cOGy9Ej1TWxDVhWYiPjHeJXcPH3s3GG7kaJgSb
	S5QE23nykYxKgdJoSnSFAvvxYi2RPoDV+amtG7srnE5rIqJYvQs98BsMpHXaWrRERevUgdLERpz1b
	6ZPk1DvkiDEWfIIDu8EoEbK6AHoxZdMh11aA4HbC/0YwbLnzzpBj2+5RnB9Z6npTq+J2tWIkawMTf
	dYbK3KteiEjXb5sAX2uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjf9-0000Ql-Hx; Fri, 14 Jun 2019 10:42:27 +0000
Received: from mail-eopbgr40064.outbound.protection.outlook.com ([40.107.4.64]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjd5-0007V9-9A
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 10:40:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tU6UMKygDXTyhPtQhhaWcowdl9X2b4kaHu1DeoXO+70=;
 b=NqXdVm1lh0awjs5w3Y5/S5wdpa8yh5lq3NI8E9bfRQGvmc4ERJ50TMF8L7B0z2LjT7OEjkTGAPSRVrruT8LhDNhLq23OoWqkt52sm87yk6eQ//IznX+7qIP6VbFCDmDvEQjjD5e6NfphqmSgDsZG9WKebDctRwHGXBG5wPt1HEo=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2543.eurprd04.prod.outlook.com (10.168.66.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Fri, 14 Jun 2019 10:40:14 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::3408:f7f9:7f82:c67c]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::3408:f7f9:7f82:c67c%7]) with mapi id 15.20.1987.013; Fri, 14 Jun 2019
 10:40:14 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: RE: [PATCH 1/6] ptp: add QorIQ PTP support for DPAA2
Thread-Topic: [PATCH 1/6] ptp: add QorIQ PTP support for DPAA2
Thread-Index: AQHVHztS7fz1CkTI/EyG9roH6EAQXaaU3AqAgAKPkpCAAJZvgIAC+lZw
Date: Fri, 14 Jun 2019 10:40:13 +0000
Message-ID: <VI1PR0401MB223763F5537C0E5F3A9C33DAF8EE0@VI1PR0401MB2237.eurprd04.prod.outlook.com>
References: <20190610032108.5791-1-yangbo.lu@nxp.com>
 <20190610032108.5791-2-yangbo.lu@nxp.com> <20190610130601.GD8247@lunn.ch>
 <VI1PR0401MB2237247525AB5DB5B5F275A8F8EC0@VI1PR0401MB2237.eurprd04.prod.outlook.com>
 <20190612131049.GC23615@lunn.ch>
In-Reply-To: <20190612131049.GC23615@lunn.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yangbo.lu@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f583ea9e-1f55-4931-6763-08d6f0b4af10
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2543; 
x-ms-traffictypediagnostic: VI1PR0401MB2543:
x-microsoft-antispam-prvs: <VI1PR0401MB2543C4FE3D70B048930FD9B8F8EE0@VI1PR0401MB2543.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(136003)(366004)(376002)(39860400002)(199004)(189003)(13464003)(3846002)(6116002)(5660300002)(6436002)(76176011)(52536014)(9686003)(55016002)(229853002)(256004)(6246003)(53936002)(99286004)(76116006)(102836004)(73956011)(66946007)(64756008)(53546011)(66476007)(6506007)(66556008)(7736002)(478600001)(66446008)(66066001)(7696005)(86362001)(8936002)(26005)(486006)(11346002)(71190400001)(71200400001)(446003)(476003)(54906003)(6916009)(305945005)(186003)(4326008)(25786009)(14454004)(68736007)(33656002)(2906002)(74316002)(81156014)(81166006)(8676002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2543;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tGS5RpKA5PpoXDR/4bOew20p0nEJZTzBygC3+9K6chodcj24aA031+LCv1hTGwfCxV4d8sDoWVpV4+HPpKfal8pGaoeS6y8tFq5WfK7ejm4CwuShaqzkWIUcFCwN8eBeXOvYTtLoUY/FKuBSLykQCw/Kci6YtYYM+2nEx1eXGPnj9y4E4uTOu2Nie881eXFrHYLxBUAZIvbkGDvSYkIekjG3p8Itv2dibM01OHDIHgyt+8vDpShbCjJNm90nEYDhO9pNHN97UdCYayjYhylwqsk7z7Z7IaQ2So3WGNbzRaVFtgOqXimdgPXJME22RMMJxnk72yxj41AKEHFHnFDuwT35E9J520dyshbovWILIFcQYIJwIcMe0EfQUaOiHv8IJiVcDiRXAmrkcOkHDxyrFjXiEly8rnEE0vr0ciYnu9E=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f583ea9e-1f55-4931-6763-08d6f0b4af10
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 10:40:14.0070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yangbo.lu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2543
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_034019_436209_06A21B99 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBBbmRyZXcgTHVubiA8YW5kcmV3
QGx1bm4uY2g+DQo+IFNlbnQ6IDIwMTnE6jbUwjEyyNUgMjE6MTENCj4gVG86IFkuYi4gTHUgPHlh
bmdiby5sdUBueHAuY29tPg0KPiBDYzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgRGF2aWQgUyAu
IE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47DQo+IFJpY2hhcmQgQ29jaHJhbiA8cmljaGFy
ZGNvY2hyYW5AZ21haWwuY29tPjsgUm9iIEhlcnJpbmcNCj4gPHJvYmgrZHRAa2VybmVsLm9yZz47
IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz47DQo+IGRldmljZXRyZWVAdmdlci5rZXJu
ZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOw0KPiBsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCAxLzZdIHB0cDogYWRk
IFFvcklRIFBUUCBzdXBwb3J0IGZvciBEUEFBMg0KPiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcHRwL0tjb25maWcgYi9kcml2ZXJzL3B0cC9LY29uZmlnIGluZGV4DQo+ID4gPiA+IDli
OGZlZTUuLmIxYjQ1NGYgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvcHRwL0tjb25maWcN
Cj4gPiA+ID4gKysrIGIvZHJpdmVycy9wdHAvS2NvbmZpZw0KPiA+ID4gPiBAQCAtNDQsNyArNDQs
NyBAQCBjb25maWcgUFRQXzE1ODhfQ0xPQ0tfRFRFDQo+ID4gPiA+DQo+ID4gPiA+ICBjb25maWcg
UFRQXzE1ODhfQ0xPQ0tfUU9SSVENCj4gPiA+ID4gIAl0cmlzdGF0ZSAiRnJlZXNjYWxlIFFvcklR
IDE1ODggdGltZXIgYXMgUFRQIGNsb2NrIg0KPiA+ID4gPiAtCWRlcGVuZHMgb24gR0lBTkZBUiB8
fCBGU0xfRFBBQV9FVEggfHwgRlNMX0VORVRDIHx8DQo+IEZTTF9FTkVUQ19WRg0KPiA+ID4gPiAr
CWRlcGVuZHMgb24gR0lBTkZBUiB8fCBGU0xfRFBBQV9FVEggfHwgRlNMX0RQQUEyX0VUSCB8fA0K
PiA+ID4gRlNMX0VORVRDIHx8DQo+ID4gPiA+ICtGU0xfRU5FVENfVkYNCj4gPiA+ID4gIAlkZXBl
bmRzIG9uIFBUUF8xNTg4X0NMT0NLDQo+ID4gPg0KPiA+ID4gSGkgWWFuZ2JvDQo+ID4gPg0KPiA+
ID4gQ291bGQgQ09NUElMRV9URVNUIGFsc28gYmUgYWRkZWQ/DQo+ID4NCj4gPiBbWS5iLiBMdV0g
Q09NUElMRV9URVNUIGlzIHVzdWFsbHkgZm9yIG90aGVyIEFSQ0hzIGJ1aWxkIGNvdmVyYWdlLg0K
PiA+IERvIHlvdSB3YW50IG1lIHRvIGFwcGVuZCBpdCBhZnRlciB0aGVzZSBFdGhlcm5ldCBkcml2
ZXIgZGVwZW5kZW5jaWVzPw0KPiANCj4gSGlpIFkuYi4gTHUNCj4gDQo+IE5vcm1hbGx5LCBkcml2
ZXJzIGxpa2UgdGhpcyBzaG91bGQgYmUgYWJsZSB0byBjb21waWxlIGluZGVwZW5kZW50IG9mIHRo
ZSBNQUMNCj4gZHJpdmVyLiBTbyB5b3Ugc2hvdWxkIGJlIGFibGUgdG8gYWRkIENPTVBJTEVfVEVT
VCBoZXJlLg0KDQpbWS5iLiBMdV0gVGhhbmtzIEFuZHJldy4gSSBoYWQgc2VudCBvdXQgdjIgd2l0
aCB0aGUgY2hhbmdlLg0KDQo+IA0KPiAgICAgQW5kcmV3DQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
