Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E50F3FA6D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 03:48:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WI0oSN/Xz2swt4QmILCTgTOL8SNVmg1GqoK77RJ93DU=; b=GLXJVAUZiI2mtc
	cA3kTShiMxDCJmbWsJNqoCbQ8WM9pVc/23weFyMg/jlnHasoNWT7GwBu39dDl+4nvKRVB+w5JkzKU
	G3cWgWLjaNjaqyrzWustd489j/nXObKmenKJhb3rwF4OKvChDzyg93IX+sQZgNRaSQ0vysV4oHPBo
	tXVtSlOf26DS97W+X6a3IwlZ8pU1Qeoxd3i6u4OypblEkD34ivfNsnRJRDV9thXR7HOEVFOM9Qznn
	5+JwvdFrR58P4q1D19pGK2OyWaMgW8BPXTPz7zp0SsEI+Ewf1BjDdKyWEaKogd5PXzwcnPbdtDSOA
	p7AvU0va1mhgnN/alaPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUii1-0000Bu-P6; Wed, 13 Nov 2019 02:48:41 +0000
Received: from mail-eopbgr40066.outbound.protection.outlook.com ([40.107.4.66]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUihg-0008Va-9v
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 02:48:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FDiwubE01vxXJDMelQSnF3xS1PETByvvvVAcyPMjlkN7rEDt9kTyG9qHQ/jsDXvMY0zwYX+kuIvko3WOJrlS5CpHFTZKgwq+xVDDRfT59cfO156BE29iDgolCubhPW4dcv0I1Srn9oOfHS5OtyWScKSGlbXgzr3yOzxaSMmWXUGqffX+2V3GiLrGev7TDGLDVeyqKcMJULXskGgZpu0fxF9DxSg3qdEx26P5NW7D/0ADCfvixuLnL51DUAOVpEMv8VLHLc8qbmCPVw2hf77/VrFa23RJ/jSf9EuLCPG4DbSjvV3hNWSdKwqa7+ACviG/JWpPhd2ATLEJZvSYgYykTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DdLQgduYFCrdeFhiuCOzJMega7KFSJ8sIPTVkWIdcAU=;
 b=Z4+ciNHFJSUjRs90IVrA79ChaB3baeE6xSbKbMhHmdVj8WnRqYaBPBe+KU/Xegbxp4nGme+LrqwGS0PFXdzjaUdpAshjJxnqsIreUMfv3xpWauNmLj+ymSu+7pCojruFBXAmx9I50iaZPUjZKJo/hGeh8ohtqEsNwFrIl9H5j7zH+Vk96zEoTjm8E3uslgVDw3Ybg00VOPgMjpMbK0j+tnhAFavAPSk460E8radgGmW47bDqe9+GDwHIkOKytJqwzD9Uef63OcDKykpmJ4KG7tA+nSAN7Y4RVJUHxy9wor/u4o0TX1x2J/pEXGTFdHZgjsPn72ULJMBIKVtk+UfWvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DdLQgduYFCrdeFhiuCOzJMega7KFSJ8sIPTVkWIdcAU=;
 b=NDcAmf37jEeuZ/bcE/SLgo/i7FBaq89XAMnAFL6ZloDK/BRyKOAsNiRmJM8vgI9c2cX9SmUt9dDB9/sg4ILOr0Do1D7c0bDCJZd1c6XGTftnDQ7zvQo7LwPAmNBN4plxQDpQ7JlvXbg7dM04RL3U01KcIVemc/Ob5+K5lnGXWnU=
Received: from VE1PR04MB6768.eurprd04.prod.outlook.com (10.255.118.26) by
 VE1PR04MB6558.eurprd04.prod.outlook.com (20.179.232.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.23; Wed, 13 Nov 2019 02:48:14 +0000
Received: from VE1PR04MB6768.eurprd04.prod.outlook.com
 ([fe80::9d62:61ea:616e:9996]) by VE1PR04MB6768.eurprd04.prod.outlook.com
 ([fe80::9d62:61ea:616e:9996%6]) with mapi id 15.20.2430.027; Wed, 13 Nov 2019
 02:48:14 +0000
From: Qiang Zhao <qiang.zhao@nxp.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Leo Li <leoyang.li@nxp.com>, 
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: RE: [PATCH v4 47/47] soc: fsl: qe: remove PPC32 dependency from
 CONFIG_QUICC_ENGINE
Thread-Topic: [PATCH v4 47/47] soc: fsl: qe: remove PPC32 dependency from
 CONFIG_QUICC_ENGINE
Thread-Index: AQHVljTGk0ssum87vUySMpkhpG3T4qeIbCyg
Date: Wed, 13 Nov 2019 02:48:14 +0000
Message-ID: <VE1PR04MB67681DD5C25A55B57A0C2F0191760@VE1PR04MB6768.eurprd04.prod.outlook.com>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-48-linux@rasmusvillemoes.dk>
In-Reply-To: <20191108130123.6839-48-linux@rasmusvillemoes.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiang.zhao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2ecea383-e625-4c64-a3fa-08d767e3ee28
x-ms-traffictypediagnostic: VE1PR04MB6558:|VE1PR04MB6558:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6558421554CC613AA388F6D791760@VE1PR04MB6558.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(39860400002)(376002)(396003)(199004)(189003)(13464003)(81156014)(71190400001)(5660300002)(76176011)(6246003)(256004)(11346002)(478600001)(446003)(486006)(14444005)(476003)(9686003)(81166006)(4326008)(305945005)(7736002)(229853002)(8936002)(14454004)(8676002)(71200400001)(74316002)(52536014)(66556008)(6116002)(3846002)(66446008)(316002)(64756008)(186003)(26005)(76116006)(66946007)(25786009)(110136005)(33656002)(66476007)(2906002)(44832011)(7696005)(86362001)(54906003)(99286004)(66066001)(102836004)(6506007)(53546011)(55016002)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6558;
 H:VE1PR04MB6768.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HL5/xKFOuP4wpWnMi494ZiMn3E+kdIpvlGuJwZDymaGE9X3rYq4IlIqoNMUIPhUWpNWepzhdoqjG0FvpSHr9uhm7zK7EK8XyysYvWJRM8QxemhaBoG9JEO955uXr1vymA6acwqBSwS/ldd7Az0nqiRS2igEIqFfEXXR4Hp/TuBwoWQFnT/zK3I+V7zsASxXUAA+QU99E6dA8E1+tovVR4SaO62tmqIlNh7TjnpLpSsB02hQCsjoIckt9Ret5+EJabOz3JahbBeNhRFZh6A+/q9w7rXuleqnYvYBmWqDdOLAdEqAowRszmzhO55gi8Nr37XZGnAZoDWC4nr3jDJQ8PpR6+PyUWw/iUTlVGOpIGujaxbhhZIGoBJPM+psp0G7jrFYzOXjHjF9yk2yn9ZI5GZm7JTzxLiK5DelQicEhT3H4qFz1LGI/1jWHLNBHujrD
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ecea383-e625-4c64-a3fa-08d767e3ee28
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 02:48:14.6083 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xf/3McJf2QUH7pKeue9p/MTRRUih3f5NRIuSs/G67qoDIyv/fD4f7WWJRDrkO+Kh0qHOksHtGpzO4qPb4W6xZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6558
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_184820_377125_1966C24D 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.66 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Scott Wood <oss@buserror.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBOb3YgOCwgMjAxOSBhdCAyMTowMSwgUmFzbXVzIFZpbGxlbW9lcyA8bGludXhAcmFz
bXVzdmlsbGVtb2VzLmRrPiB3cm90ZToNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
PiBGcm9tOiBSYXNtdXMgVmlsbGVtb2VzIDxsaW51eEByYXNtdXN2aWxsZW1vZXMuZGs+DQo+IFNl
bnQ6IDIwMTnE6jEx1MI4yNUgMjE6MDENCj4gVG86IFFpYW5nIFpoYW8gPHFpYW5nLnpoYW9Abnhw
LmNvbT47IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsNCj4gQ2hyaXN0b3BoZSBMZXJveSA8
Y2hyaXN0b3BoZS5sZXJveUBjLXMuZnI+DQo+IENjOiBsaW51eHBwYy1kZXZAbGlzdHMub3psYWJz
Lm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiBsaW51eC1rZXJu
ZWxAdmdlci5rZXJuZWwub3JnOyBTY290dCBXb29kIDxvc3NAYnVzZXJyb3IubmV0PjsgUmFzbXVz
DQo+IFZpbGxlbW9lcyA8bGludXhAcmFzbXVzdmlsbGVtb2VzLmRrPg0KPiBTdWJqZWN0OiBbUEFU
Q0ggdjQgNDcvNDddIHNvYzogZnNsOiBxZTogcmVtb3ZlIFBQQzMyIGRlcGVuZGVuY3kgZnJvbQ0K
PiBDT05GSUdfUVVJQ0NfRU5HSU5FDQo+IA0KPiBUaGVyZSBhcmUgYWxzbyBBUk0gYW5kIEFSTTY0
IGJhc2VkIFNPQ3Mgd2l0aCBhIFFVSUNDIEVuZ2luZSwgYW5kIHRoZSBjb3JlDQo+IFFFIGNvZGUg
YXMgd2VsbCBhcyBuZXQvd2FuL2ZzbF91Y2NfaGRsYyBhbmQgdHR5L3NlcmlhbC91Y2NfdWFydCBo
YXMgbm93IGJlZW4NCj4gbW9kaWZpZWQgdG8gbm90IHJlbHkgb24gcHBjaXNtcy4NCj4gDQo+IFNv
IGV4dGVuZCB0aGUgYXJjaGl0ZWN0dXJlcyB0aGF0IGNhbiBzZWxlY3QgUVVJQ0NfRU5HSU5FLCBh
bmQgYWRkIHRoZSByYXRoZXINCj4gbW9kZXN0IHJlcXVpcmVtZW50cyBvZiBPRiAmJiBIQVNfSU9N
RU0uDQo+IA0KPiBUaGUgY29yZSBjb2RlIGFzIHdlbGwgYXMgdGhlIHVjY191YXJ0IGRyaXZlciBo
YXMgYmVlbiB0ZXN0ZWQgb24gYW4gTFMxMDIxQQ0KPiAoYXJtKSwgYW5kIGl0IGhhcyBhbHNvIGJl
ZW4gdGVzdGVkIHRoYXQgdGhlIFFFIGNvZGUgc3RpbGwgd29ya3Mgb24gYW4gbXBjODMwOQ0KPiAo
cHBjKS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFJhc211cyBWaWxsZW1vZXMgPGxpbnV4QHJhc211
c3ZpbGxlbW9lcy5kaz4NCj4gLS0tDQo+ICBkcml2ZXJzL3NvYy9mc2wvcWUvS2NvbmZpZyB8IDMg
KystDQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvZnNsL3FlL0tjb25maWcgYi9kcml2ZXJzL3Nv
Yy9mc2wvcWUvS2NvbmZpZyBpbmRleA0KPiBjZmE0YjI5Mzk5OTIuLmYxOTc0ZjgxMTU3MiAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9zb2MvZnNsL3FlL0tjb25maWcNCj4gKysrIGIvZHJpdmVycy9z
b2MvZnNsL3FlL0tjb25maWcNCj4gQEAgLTUsNyArNSw4IEBADQo+IA0KPiAgY29uZmlnIFFVSUND
X0VOR0lORQ0KPiAgCWJvb2wgIlFVSUNDIEVuZ2luZSAoUUUpIGZyYW1ld29yayBzdXBwb3J0Ig0K
PiAtCWRlcGVuZHMgb24gRlNMX1NPQyAmJiBQUEMzMg0KPiArCWRlcGVuZHMgb24gT0YgJiYgSEFT
X0lPTUVNDQo+ICsJZGVwZW5kcyBvbiBQUEMzMiB8fCBBUk0gfHwgQVJNNjQgfHwgQ09NUElMRV9U
RVNUDQo+ICAJc2VsZWN0IEdFTkVSSUNfQUxMT0NBVE9SDQo+ICAJc2VsZWN0IENSQzMyDQo+ICAJ
aGVscA0KPiAtLQ0KVGVzdGVkLWJ5OiBRaWFuZyBaaGFvIDxxaWFuZy56aGFvQG54cC5jb20+DQpU
ZXN0ZWQgUUUtSERMQyBvbiBBUk02NCENCg0KQmVzdCBSZWdhcmRzDQpRaWFuZyBaaGFvDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
