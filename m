Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707AC1FF324
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 15:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drAhtaMlhUcACtEOHKjHUEpPacx9kIJOs92M/3VQWCA=; b=oRksm6b9outmn8
	3aLh1cXtHhego5Laf2NtTNcz5D2YLwbU/THa4ZdzM0Dew4YNa1dArVJaLCX/VVoR++IyI+hg4pX/7
	3dJJYEKQj2UZ27eqPRiF+KyKjIgSt185CsUlvijIceZF7/8E+6aqVN9THP9FfKkPWkg8Ly+DNRP8q
	wq886PgbmlTgrJacRqRZ0oZqTcc9G1DCezq9tbHLpfCn6X/ugrNwlsaok6oJTCiG0aHOh+VUfTdyJ
	UKKoYTh2R0oGbOiFWI1zPCPOizWXjsYgEth9aN9XYywlol2Z67jxlSICF6aAlxsDevQdaFRzLBat6
	P3jo1sEkhwemFksIAK0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlugj-000404-1e; Thu, 18 Jun 2020 13:34:41 +0000
Received: from [148.163.139.77] (helo=mx0b-00128a01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlugZ-0003zL-3m
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 13:34:33 +0000
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05IDPbw7027845; Thu, 18 Jun 2020 09:34:16 -0400
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
 by mx0b-00128a01.pphosted.com with ESMTP id 31q64v66ca-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jun 2020 09:34:15 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jGGdy9UaHTI4hLyBApJmf1rgggn2N711WflRM4LX/BQqiG9WK96//tGx12fr/Tpr/pAr+tCg0+3D4rDEUht9WVIVHUY0gn9GJS4QRhFP8b9zPp5MGityLzDsHQ+oY91Yo9wegXzR+hA8wZ4LC774bcuShpd67ZBINzYPg7mLUvdzcYSIQBy62XpT4Zo1E5scEFMjScZhc64syoeLO8KLOwe6QRhCWhI1Ur5S+s8kXRFKuusiTyoFvRg7AKbIScFHYVnTL+h7ypVmD33UOJA/+4U7/QAeCPesGqAoCFylYrzGzf0oWSVCVhWK6a5X+S87Z+4CJUqfYVDR6XYgahN1xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3n9eDWoFXz9rGGPm0Bl5OStPv48W5Jgrjeh7hVg8QYQ=;
 b=EYfvB+crwPqcBJF0o0vPE/82jYsvaJvaLlUVsJkbCv2FDfp9sI1+gIGt6xI5y4XPd1yfMG0B7Z5Q0m5/CnFoYYIMR/NU1iYBT/R3KYBpIybuV34jVcRR87l7lDpSmHijS/Uut2cE+oj8KFQwVrp5egKWLQcfFUco7AZQKYhIhHRiwWNsKUh2qDDyn3t4AcivElC983zIV9JgEZcNTJYrTOMZqK5J4Y72mIEFs+RDssJRSLpID92e3cf1Se+yW/D1cj2x80lNakHj67vRmkwclga+yBTJJILK0n5GTdCFCOpBnLKjtvINITY9bK7mUs37o1JtMcC2r1KkE8X40svmBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3n9eDWoFXz9rGGPm0Bl5OStPv48W5Jgrjeh7hVg8QYQ=;
 b=Sp08xCLan1QXGjZ3/yf+8Mz6iL97clooayfaVDZ4u5+asfAdkq/lyFiV829nU+xkhZa7z8gYLlzdK9PV/VJyz3ApVKYbBYMT4z7Rl0Gp+j1wwk+3Dm+qvtV1WIMzfoz9txR64LeR6cHenQs2p824mVjSxOjtlLH0p1Vjxt/npu4=
Received: from DM6PR03MB4411.namprd03.prod.outlook.com (2603:10b6:5:10f::14)
 by DM6PR03MB4922.namprd03.prod.outlook.com (2603:10b6:5:1e1::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Thu, 18 Jun
 2020 13:34:14 +0000
Received: from DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::e02f:b3c0:d1e9:5eaf]) by DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::e02f:b3c0:d1e9:5eaf%3]) with mapi id 15.20.3109.021; Thu, 18 Jun 2020
 13:34:14 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "Eugen.Hristev@microchip.com" <Eugen.Hristev@microchip.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Subject: Re: [PATCH] iio: at91-sama5d2_adc: remove usage of iio_priv_to_dev()
 helper
Thread-Topic: [PATCH] iio: at91-sama5d2_adc: remove usage of iio_priv_to_dev()
 helper
Thread-Index: AQHWMoLBi2/hPBTYk0i6VuKiVW+38ajCTXUAgBqjH4CAAApaAIABfWeAgAAM8wA=
Date: Thu, 18 Jun 2020 13:34:13 +0000
Message-ID: <a77eb94a5aaffd840b351c5d5e9125f38037fb1b.camel@analog.com>
References: <20200525105341.137945-1-alexandru.ardelean@analog.com>
 <20200531153908.47ccbc37@archlinux>
 <8caaa1f8-ebbe-50ab-a655-d5c487c9a751@microchip.com>
 <8c4c05458e32f56a5d8492482f9f5403feda1894.camel@analog.com>
 <272c7ba2-5d04-f241-de11-ab0512c25659@microchip.com>
In-Reply-To: <272c7ba2-5d04-f241-de11-ab0512c25659@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: microchip.com; dkim=none (message not signed)
 header.d=none;microchip.com; dmarc=none action=none header.from=analog.com;
x-originating-ip: [188.27.128.12]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bb8180b9-813b-4568-8cc9-08d8138c4a97
x-ms-traffictypediagnostic: DM6PR03MB4922:
x-microsoft-antispam-prvs: <DM6PR03MB4922C4AF669CD05CED2C106AF99B0@DM6PR03MB4922.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d9/MzTYfFP5PbQJSZjAS64QE9HaYdS5MRQChsw7+KoFsNW0q8dRh3++shax/ADK5WdGDNKvRD83RAXygfORr0WblrvKrk/2kleztJWxpEkoaSDhVGvx27vFb8vK7yr6G3RqfTE4gI0KYTeoZ4XsyisNVcH2wS/e1MZiSZy92ImNejOPivhvBAhbTNj1RMYKI3sBdhYhc0CmUFAnGTI9DCStyJcRmG+3DLfodmmeowiGXyiYMgi8sqoQXMsf9/Mrc0+jmL0Qll3F2PJy1cTQWT7UIVxQYZX2WlnSTHcwoU8RrZEtsh7CZTGlTd+HqQQgEFv7ee+yrAYqPVobWjhOEy9YmxRFCQO3bJw4408s7KKqTUQxbELqsRnyWcQRZBATW5Lull2QCArbdYQ9fTl/Pbg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR03MB4411.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(39860400002)(346002)(136003)(396003)(2906002)(8936002)(8676002)(6512007)(36756003)(26005)(478600001)(6486002)(966005)(186003)(2616005)(6506007)(53546011)(71200400001)(86362001)(5660300002)(91956017)(76116006)(54906003)(64756008)(66446008)(83380400001)(110136005)(4326008)(66946007)(66476007)(66556008)(316002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 5BV7YuFqnr1Q8bUv0wrOF5UmP+xi1GlTJzUFvdWvycMAFnyWfdPvrJo1zFttp3krutPTQSyBjT94ZS6QJ58+l8gHqa26eO3pGFNJwbnpg4vQ4nR+MAvqZVrwm5qA79cXGUaRfoCucloeLG8PAmPmU/ZFRP2fY/WyeQKc7GbkqSUL41X36G8YABQcAcD+HCTML/PpRgFCrSchjMz7cbrLd1uC7sDLYsgazxrKUIPi+zVp8SjWT3xHfi29VE/xwPltK4IA6qWUrPz2JrOAdXbhjKo1CPLgeDDR7Fb5KvWcZUGfU889SB7pMvx3uM+Q6At3ki3063jqqdDjIqzzI29ulOZIjMSvqOF0vVxX+lX5ZFxHSpXYHd5Oj+/EZQtxzWdrla+qHP1TyDsK+Zvg4ZgGw9uZTe78H88L7z/QS/xYazzkxXgrLHYLnz68JN5dgLAj7lzqZwIrROYvb4hyO2UDYS2z7T59Y3oUCjUir2/fPBM=
x-ms-exchange-transport-forked: True
Content-ID: <A8C69B1C01301F40A3A3A3992474D11B@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb8180b9-813b-4568-8cc9-08d8138c4a97
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 13:34:13.9620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N3hrylxm3cXYiRQmvxCni+f0JZmlFrCGoUd/PUUf3wDpWJ45cqppz587AFyDNBU8LPxOvUM85Ayq4kz6UHngbS/WDCM55LywWjC6mcEcVUE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB4922
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-18_12:2020-06-18,
 2020-06-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 impostorscore=0
 suspectscore=0 mlxlogscore=999 bulkscore=0 spamscore=0 priorityscore=1501
 mlxscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006180103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_063431_410982_12E3781F 
X-CRM114-Status: GOOD (  37.76  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.139.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Ludovic.Desroches@microchip.com" <Ludovic.Desroches@microchip.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDIwLTA2LTE4IGF0IDEyOjQ3ICswMDAwLCBFdWdlbi5IcmlzdGV2QG1pY3JvY2hp
cC5jb20gd3JvdGU6DQo+IFtFeHRlcm5hbF0NCj4gDQo+IE9uIDE3LjA2LjIwMjAgMTc6MDIsIEFy
ZGVsZWFuLCBBbGV4YW5kcnUgd3JvdGU6DQo+ID4gT24gV2VkLCAyMDIwLTA2LTE3IGF0IDEzOjI1
ICswMDAwLCBFdWdlbi5IcmlzdGV2QG1pY3JvY2hpcC5jb20gd3JvdGU6DQo+ID4gPiBPbiAzMS4w
NS4yMDIwIDE3OjM5LCBKb25hdGhhbiBDYW1lcm9uIHdyb3RlOg0KPiA+ID4gDQo+ID4gPiA+IE9u
IE1vbiwgMjUgTWF5IDIwMjAgMTM6NTM6NDEgKzAzMDANCj4gPiA+ID4gQWxleGFuZHJ1IEFyZGVs
ZWFuIDxhbGV4YW5kcnUuYXJkZWxlYW5AYW5hbG9nLmNvbT4gd3JvdGU6DQo+ID4gPiA+IA0KPiA+
ID4gPiA+IFdlIG1heSB3YW50IHRvIGdldCByaWQgb2YgdGhlIGlpb19wcml2X3RvX2RldigpIGhl
bHBlci4gVGhlDQo+ID4gPiA+ID4gcmVhc29uIGlzIHRoYXQNCj4gPiA+ID4gPiB3ZSB3aWxsIGhp
ZGUgc29tZSBvZiB0aGUgbWVtYmVycyBvZiB0aGUgaWlvX2RldiBzdHJ1Y3R1cmUgKHRvDQo+ID4g
PiA+ID4gcHJldmVudA0KPiA+ID4gPiA+IGRyaXZlcnMgZnJvbSBhY2Nlc3NpbmcgdGhlbSBkaXJl
Y3RseSksIGFuZCB0aGF0IHdpbGwgYWxzbyBtZWFuDQo+ID4gPiA+ID4gaGlkaW5nIHRoZQ0KPiA+
ID4gPiA+IGltcGxlbWVudGF0aW9uIG9mIHRoZSBpaW9fcHJpdl90b19kZXYoKSBoZWxwZXIgaW5z
aWRlIHRoZSBJSU8NCj4gPiA+ID4gPiBjb3JlLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IEhpZGlu
ZyB0aGUgaW1wbGVtZW50YXRpb24gb2YgaWlvX3ByaXZfdG9fZGV2KCkgaW1wbGllcyB0aGF0IHNv
bWUNCj4gPiA+ID4gPiBmYXN0LQ0KPiA+ID4gPiA+IHBhdGhzDQo+ID4gPiA+ID4gbWF5IG5vdCBi
ZSBmYXN0IGFueW1vcmUsIHNvIGEgZ2VuZXJhbCBpZGVhIGlzIHRvIHRyeSB0byBnZXQgcmlkDQo+
ID4gPiA+ID4gb2YgdGhlDQo+ID4gPiA+ID4gaWlvX3ByaXZfdG9fZGV2KCkgYWx0b2dldGhlci4N
Cj4gPiA+ID4gPiBUaGUgaWlvX3ByaXYoKSBoZWxwZXIgd29uJ3QgYmUgYWZmZWN0ZWQgYnkgdGhl
IHJld29yaywgYXMgdGhlDQo+ID4gPiA+ID4gaWlvX2Rldg0KPiA+ID4gPiA+IHN0cnVjdCB3aWxs
IGtlZXAgYSByZWZlcmVuY2UgdG8gdGhlIHByaXZhdGUgaW5mb3JtYXRpb24uDQo+ID4gPiA+ID4g
DQo+ID4gPiA+ID4gRm9yIHRoaXMgZHJpdmVyLCBub3QgdXNpbmcgaWlvX3ByaXZfdG9fZGV2KCks
IG1lYW5zIHJld29ya2luZw0KPiA+ID4gPiA+IHNvbWUgcGF0aHMNCj4gPiA+ID4gPiB0bw0KPiA+
ID4gPiA+IHBhc3MgdGhlIGlpbyBkZXZpY2UgYW5kIHVzaW5nIGlpb19wcml2KCkgdG8gYWNjZXNz
IHRoZSBwcml2YXRlDQo+ID4gPiA+ID4gaW5mb3JtYXRpb24sDQo+ID4gPiA+ID4gYW5kIGFsc28g
a2VlcGluZyBhIHJlZmVyZW5jZSB0byB0aGUgaWlvIGRldmljZSBmb3Igc29tZSBxdWlya3kNCj4g
PiA+ID4gPiBwYXRocy4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBPbmUgW3F1aXJreV0gcGF0aCBp
cyB0aGUgYXQ5MV9hZGNfd29ya3FfaGFuZGxlcigpIHdoaWNoIHJlcXVpcmVzDQo+ID4gPiA+ID4g
dGhlIElJTw0KPiA+ID4gPiA+IGRldmljZSAmIHRoZSBzdGF0ZSBzdHJ1Y3QgdG8gcHVzaCB0byBi
dWZmZXJzLg0KPiA+ID4gPiA+IFNpbmNlIHRoaXMgcmVxdWlyZXMgdGhlIGJhY2stcmVmIHRvIHRo
ZSBJSU8gZGV2aWNlLCB0aGUNCj4gPiA+ID4gPiBhdDkxX2FkY190b3VjaF9wb3MoKSBhbHNvIHVz
ZXMgaXQuIFRoaXMgc2ltcGxpZmllcyB0aGUgcGF0Y2ggYQ0KPiA+ID4gPiA+IGJpdC4gVGhlDQo+
ID4gPiA+ID4gaW5mb3JtYXRpb24gcmVxdWlyZWQgaW4gdGhpcyBmdW5jdGlvbiBpcyBtb3N0bHkg
Zm9yIGRlYnVnZ2luZw0KPiA+ID4gPiA+IHB1cnBvc2VzLg0KPiA+ID4gPiA+IFJlcGxhY2luZyBp
dCB3aXRoIGEgcmVmZXJlbmNlIHRvIHRoZSBJSU8gZGV2aWNlIHdvdWxkIGhhdmUgYmVlbiBhDQo+
ID4gPiA+ID4gc2xpZ2h0bHkNCj4gPiA+ID4gPiBiaWdnZXIgY2hhbmdlLCB3aGljaCBtYXkgbm90
IGJlIHdvcnRoIGl0IChmb3IganVzdCB0aGUgZGVidWdnaW5nDQo+ID4gPiA+ID4gcHVycG9zZQ0K
PiA+ID4gPiA+IGFuZCBnaXZlbiB0aGF0IHdlIG5lZWQgdGhlIGJhY2stcmVmIHRvIHRoZSBJSU8g
ZGV2aWNlIGFueXdheSkuDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGF0IHdvcmtxIGlzIGluZGVlZCBx
dWlya3kuICBUaGlzIGxvb2tzIGZpbmUgdG8gbWUgaW4gZ2VuZXJhbC4NCj4gPiA+ID4gSSdsbA0K
PiA+ID4gPiB3YW50IGFuIGFwcHJvcHJpYXRlIGFjayBmcm9tIHRoZSBhdDkxIHNpZGUgb2YgdGhp
bmdzIGlmIHBvc3NpYmxlIHNvDQo+ID4gPiA+IGxldCdzIGxlYXZlIHRoaXMgb24gdGhlIGxpc3Qg
Zm9yIGEgd2hpbGUgbG9uZ2VyLg0KPiA+ID4gDQo+ID4gPiBIaSwNCj4gPiA+IA0KPiA+ID4gSSBh
bSBhdmFpbGFibGUgdG8gdGVzdCB0aGlzIHBhdGNoLA0KPiA+ID4gQ2FuIHlvdSB0ZWxsIG1lIG9u
IHdoaWNoIGJyYW5jaCB0byBhcHBseSBpdC4gT24gNS44LXJjMSBpdCBmYWlscyBmb3INCj4gPiA+
IG1lDQo+ID4gPiAob3IgbWF5YmUgaXQgbmVlZHMgcmViYXNpbmcgPykNCj4gPiA+IA0KPiA+IA0K
PiA+IEhtbSwgd2VpcmQuDQo+ID4gSSByZWJhc2VkIHRoZSBwYXRjaGVzIG9uIEpvbmF0aGFuJ3Mg
aWlvL3Rlc3RpbmcuDQo+ID4gSXQgc2VlbWVkIHRvIHdvcmsuDQo+ID4gaHR0cHM6Ly91cmxkZWZl
bnNlLmNvbS92My9fX2h0dHBzOi8vZ2l0aHViLmNvbS9jb21tb2RvL2xpbnV4L2NvbW1pdHMvaWlv
LXByaXYtdG8tZGV2X187ISFBM05pOENTMHkyWSFvRVZIc0E2Z2Y5eWRCdkFBamxoUlY1UU8xYk1U
Wk4yVV9PWGJvcjBnZWk3bVdrMTRtNjRyaWxKMldUQVh2dFdtR2Fpc1hRJCANCj4gPiANCj4gPiBB
cyBmb3Igd2hpY2ggYnJhbmNoIHRvIHRlc3QvYXBwbHkuIE5vdCBzdXJlLg0KPiA+IE1heWJlIEpv
bmF0aGFuJ3MgaWlvL3Rlc3RpbmcgYXMgYmFzZT8NCj4gPiBMb29rcyBsaWtlIGl0J3MgYmFzZWQg
b24gNS44Lg0KPiA+IA0KPiANCj4gVGVzdGVkLWJ5OiBFdWdlbiBIcmlzdGV2IDxldWdlbi5ocmlz
dGV2QG1pY3JvY2hpcC5jb20+DQo+IA0KPiBJIGhhdmUgdGVzdGVkIHRoZSBtYWpvciBmZWF0dXJl
cyBvZiB0aGUgZHJpdmVyIChpbmNsdWRpbmcgdGhlIHJlc2lzdGl2ZSANCj4gdG91Y2gpIGFuZCBp
dCBsb29rcyB0byBiZSB3b3JraW5nIGZpbmUuDQo+IA0KPiBJIGRpZCBub3QgZnVsbHkgdW5kZXJz
dGFuZCB0aGUgcXVpcmt5bmVzcyBvZiB0aGUgd29ya3EgLiBTb21ldGhpbmcgeW91IA0KPiB3YW50
IHRvIGNoYW5nZSB0byB0aGF0ID8NCg0KVW1tLCBub3QgcmVhbGx5Lg0KSSBkaWQgbm90IGZvbGxv
dyB0aGF0IGNvZGUgdG9vIGluLWRlcHRoLg0KQW5kIEkgd291bGQgbGlrZSBub3QgdG8uDQpNb3N0
bHkgdG8gYXZvaWQgc2NhbGluZyBteXNlbGYgaW4gdG9vIG1hbnkgZGlyZWN0aW9ucy4NCg0KVGhl
cmUgbWF5IGJlIGEgc2xpZ2h0bHkgYmV0dGVyIGFwcHJvYWNoIHRvIGl0LCBidXQgwq9cXyjjg4Qp
Xy/Crw0KDQo+IA0KPiA+ID4gRXVnZW4NCj4gPiA+IA0KPiA+ID4gPiBQb2tlIG1lIGlmIG5vIGFj
dGlvbiBpbiBhIGZldyB3ZWVrcy4NCj4gPiA+ID4gDQo+ID4gPiA+IFRoYW5rcywNCj4gPiA+ID4g
DQo+ID4gPiA+IEpvbmF0aGFuDQo+ID4gPiA+IA0KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFs
ZXhhbmRydSBBcmRlbGVhbiA8YWxleGFuZHJ1LmFyZGVsZWFuQGFuYWxvZy5jb20+DQo+ID4gPiA+
ID4gLS0tDQo+ID4gPiA+ID4gICAgZHJpdmVycy9paW8vYWRjL2F0OTEtc2FtYTVkMl9hZGMuYyB8
IDMwICsrKysrKysrKysrKysrKysrLS0tLS0NCj4gPiA+ID4gPiAtLS0tLS0tLQ0KPiA+ID4gPiA+
ICAgIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkNCj4g
PiA+ID4gPiANCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vYWRjL2F0OTEtc2Ft
YTVkMl9hZGMuYw0KPiA+ID4gPiA+IGIvZHJpdmVycy9paW8vYWRjL2F0OTEtDQo+ID4gPiA+ID4g
c2FtYTVkMl9hZGMuYw0KPiA+ID4gPiA+IGluZGV4IDlhYmJiZGNjNzQyMC4uN2JjZTE4NDQ0NDMw
IDEwMDY0NA0KPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvaWlvL2FkYy9hdDkxLXNhbWE1ZDJfYWRj
LmMNCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2lpby9hZGMvYXQ5MS1zYW1hNWQyX2FkYy5jDQo+
ID4gPiA+ID4gQEAgLTQwMiw2ICs0MDIsNyBAQCBzdHJ1Y3QgYXQ5MV9hZGNfc3RhdGUgew0KPiA+
ID4gPiA+ICAgICAgICAgd2FpdF9xdWV1ZV9oZWFkX3QgICAgICAgICAgICAgICB3cV9kYXRhX2F2
YWlsYWJsZTsNCj4gPiA+ID4gPiAgICAgICAgIHN0cnVjdCBhdDkxX2FkY19kbWEgICAgICAgICAg
ICAgZG1hX3N0Ow0KPiA+ID4gPiA+ICAgICAgICAgc3RydWN0IGF0OTFfYWRjX3RvdWNoICAgICAg
ICAgICB0b3VjaF9zdDsNCj4gPiA+ID4gPiArICAgICBzdHJ1Y3QgaWlvX2RldiAgICAgICAgICAg
ICAgICAgICppbmRpb19kZXY7DQo+ID4gPiA+ID4gICAgICAgICB1MTYgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGJ1ZmZlcltBVDkxX0JVRkZFUl9NQVhfSFcNCj4gPiA+ID4gPiBPUkRTXTsN
Cj4gPiA+ID4gPiAgICAgICAgIC8qDQo+ID4gPiA+ID4gICAgICAgICAgKiBsb2NrIHRvIHByZXZl
bnQgY29uY3VycmVudCAnc2luZ2xlIGNvbnZlcnNpb24nDQo+ID4gPiA+ID4gcmVxdWVzdHMgdGhy
b3VnaA0KPiA+ID4gPiA+IEBAIC02NDIsMTMgKzY0MywxMyBAQCBzdGF0aWMgdTE2IGF0OTFfYWRj
X3RvdWNoX3BvcyhzdHJ1Y3QNCj4gPiA+ID4gPiBhdDkxX2FkY19zdGF0ZQ0KPiA+ID4gPiA+ICpz
dCwgaW50IHJlZykNCj4gPiA+ID4gPiAgICAgICAgIC8qIGZpcnN0IGhhbGYgb2YgcmVnaXN0ZXIg
aXMgdGhlIHggb3IgeSwgc2Vjb25kIGhhbGYgaXMNCj4gPiA+ID4gPiB0aGUgc2NhbGUNCj4gPiA+
ID4gPiAqLw0KPiA+ID4gPiA+ICAgICAgICAgdmFsID0gYXQ5MV9hZGNfcmVhZGwoc3QsIHJlZyk7
DQo+ID4gPiA+ID4gICAgICAgICBpZiAoIXZhbCkNCj4gPiA+ID4gPiAtICAgICAgICAgICAgIGRl
dl9kYmcoJmlpb19wcml2X3RvX2RldihzdCktPmRldiwgInBvcyBpcyAwXG4iKTsNCj4gPiA+ID4g
PiArICAgICAgICAgICAgIGRldl9kYmcoJnN0LT5pbmRpb19kZXYtPmRldiwgInBvcyBpcyAwXG4i
KTsNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiAgICAgICAgIHBvcyA9IHZhbCAmIEFUOTFfU0FNQTVE
Ml9YWVpfTUFTSzsNCj4gPiA+ID4gPiAgICAgICAgIHJlc3VsdCA9IChwb3MgPDwgQVQ5MV9TQU1B
NUQyX01BWF9QT1NfQklUUykgLSBwb3M7DQo+ID4gPiA+ID4gICAgICAgICBzY2FsZSA9ICh2YWwg
Pj4gMTYpICYgQVQ5MV9TQU1BNUQyX1hZWl9NQVNLOw0KPiA+ID4gPiA+ICAgICAgICAgaWYgKHNj
YWxlID09IDApIHsNCj4gPiA+ID4gPiAtICAgICAgICAgICAgIGRldl9lcnIoJmlpb19wcml2X3Rv
X2RldihzdCktPmRldiwgInNjYWxlIGlzIDBcbiIpOw0KPiA+ID4gPiA+ICsgICAgICAgICAgICAg
ZGV2X2Vycigmc3QtPmluZGlvX2Rldi0+ZGV2LCAic2NhbGUgaXMgMFxuIik7DQo+ID4gPiA+ID4g
ICAgICAgICAgICAgICAgIHJldHVybiAwOw0KPiA+ID4gPiA+ICAgICAgICAgfQ0KPiA+ID4gPiA+
ICAgICAgICAgcmVzdWx0IC89IHNjYWxlOw0KPiA+ID4gPiA+IEBAIC0xMjA0LDkgKzEyMDUsOSBA
QCBzdGF0aWMgdW5zaWduZWQNCj4gPiA+ID4gPiBhdDkxX2FkY19zdGFydHVwX3RpbWUodW5zaWdu
ZWQNCj4gPiA+ID4gPiBzdGFydHVwX3RpbWVfbWluLA0KPiA+ID4gPiA+ICAgICAgICAgcmV0dXJu
IGk7DQo+ID4gPiA+ID4gICAgfQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IC1zdGF0aWMgdm9pZCBh
dDkxX2FkY19zZXR1cF9zYW1wX2ZyZXEoc3RydWN0IGF0OTFfYWRjX3N0YXRlICpzdCwNCj4gPiA+
ID4gPiB1bnNpZ25lZA0KPiA+ID4gPiA+IGZyZXEpDQo+ID4gPiA+ID4gK3N0YXRpYyB2b2lkIGF0
OTFfYWRjX3NldHVwX3NhbXBfZnJlcShzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LA0KPiA+ID4g
PiA+IHVuc2lnbmVkDQo+ID4gPiA+ID4gZnJlcSkNCj4gPiA+ID4gPiAgICB7DQo+ID4gPiA+ID4g
LSAgICAgc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiA9IGlpb19wcml2X3RvX2RldihzdCk7DQo+
ID4gPiA+ID4gKyAgICAgc3RydWN0IGF0OTFfYWRjX3N0YXRlICpzdCA9IGlpb19wcml2KGluZGlv
X2Rldik7DQo+ID4gPiA+ID4gICAgICAgICB1bnNpZ25lZCBmX3BlciwgcHJlc2NhbCwgc3RhcnR1
cCwgbXI7DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gICAgICAgICBmX3BlciA9IGNsa19nZXRfcmF0
ZShzdC0+cGVyX2Nsayk7DQo+ID4gPiA+ID4gQEAgLTEyNzUsOSArMTI3Niw5IEBAIHN0YXRpYyB2
b2lkDQo+ID4gPiA+ID4gYXQ5MV9hZGNfcGVuX2RldGVjdF9pbnRlcnJ1cHQoc3RydWN0DQo+ID4g
PiA+ID4gYXQ5MV9hZGNfc3RhdGUgKnN0KQ0KPiA+ID4gPiA+ICAgICAgICAgc3QtPnRvdWNoX3N0
LnRvdWNoaW5nID0gdHJ1ZTsNCj4gPiA+ID4gPiAgICB9DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4g
LXN0YXRpYyB2b2lkIGF0OTFfYWRjX25vX3Blbl9kZXRlY3RfaW50ZXJydXB0KHN0cnVjdA0KPiA+
ID4gPiA+IGF0OTFfYWRjX3N0YXRlICpzdCkNCj4gPiA+ID4gPiArc3RhdGljIHZvaWQgYXQ5MV9h
ZGNfbm9fcGVuX2RldGVjdF9pbnRlcnJ1cHQoc3RydWN0IGlpb19kZXYNCj4gPiA+ID4gPiAqaW5k
aW9fZGV2KQ0KPiA+ID4gPiA+ICAgIHsNCj4gPiA+ID4gPiAtICAgICBzdHJ1Y3QgaWlvX2RldiAq
aW5kaW9fZGV2ID0gaWlvX3ByaXZfdG9fZGV2KHN0KTsNCj4gPiA+ID4gPiArICAgICBzdHJ1Y3Qg
YXQ5MV9hZGNfc3RhdGUgKnN0ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsNCj4gPiA+ID4gPiANCj4g
PiA+ID4gPiAgICAgICAgIGF0OTFfYWRjX3dyaXRlbChzdCwgQVQ5MV9TQU1BNUQyX1RSR1IsDQo+
ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgQVQ5MV9TQU1BNUQyX1RSR1JfVFJHTU9E
X05PX1RSSUdHRVIpOw0KPiA+ID4gPiA+IEBAIC0xMjk3LDcgKzEyOTgsNyBAQCBzdGF0aWMgdm9p
ZCBhdDkxX2FkY193b3JrcV9oYW5kbGVyKHN0cnVjdA0KPiA+ID4gPiA+IHdvcmtfc3RydWN0ICp3
b3JrcSkNCj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IGF0OTFfYWRjX3RvdWNoLA0KPiA+ID4gPiA+IHdvcmtxKTsNCj4gPiA+ID4gPiAgICAg
ICAgIHN0cnVjdCBhdDkxX2FkY19zdGF0ZSAqc3QgPSBjb250YWluZXJfb2YodG91Y2hfc3QsDQo+
ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBh
dDkxX2FkY19zdGF0ZSwNCj4gPiA+ID4gPiB0b3VjaF9zdCk7DQo+ID4gPiA+ID4gLSAgICAgc3Ry
dWN0IGlpb19kZXYgKmluZGlvX2RldiA9IGlpb19wcml2X3RvX2RldihzdCk7DQo+ID4gPiA+ID4g
KyAgICAgc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiA9IHN0LT5pbmRpb19kZXY7DQo+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gICAgICAgICBpaW9fcHVzaF90b19idWZmZXJzKGluZGlvX2Rldiwgc3Qt
PmJ1ZmZlcik7DQo+ID4gPiA+ID4gICAgfQ0KPiA+ID4gPiA+IEBAIC0xMzE4LDcgKzEzMTksNyBA
QCBzdGF0aWMgaXJxcmV0dXJuX3QgYXQ5MV9hZGNfaW50ZXJydXB0KGludA0KPiA+ID4gPiA+IGly
cSwgdm9pZA0KPiA+ID4gPiA+ICpwcml2YXRlKQ0KPiA+ID4gPiA+ICAgICAgICAgICAgICAgICBh
dDkxX2FkY19wZW5fZGV0ZWN0X2ludGVycnVwdChzdCk7DQo+ID4gPiA+ID4gICAgICAgICB9IGVs
c2UgaWYgKChzdGF0dXMgJiBBVDkxX1NBTUE1RDJfSUVSX05PUEVOKSkgew0KPiA+ID4gPiA+ICAg
ICAgICAgICAgICAgICAvKiBub3BlbiBkZXRlY3RlZCBJUlEgKi8NCj4gPiA+ID4gPiAtICAgICAg
ICAgICAgIGF0OTFfYWRjX25vX3Blbl9kZXRlY3RfaW50ZXJydXB0KHN0KTsNCj4gPiA+ID4gPiAr
ICAgICAgICAgICAgIGF0OTFfYWRjX25vX3Blbl9kZXRlY3RfaW50ZXJydXB0KGluZGlvKTsNCj4g
PiA+ID4gPiAgICAgICAgIH0gZWxzZSBpZiAoKHN0YXR1cyAmIEFUOTFfU0FNQTVEMl9JU1JfUEVO
UykgJiYNCj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgKChzdGF0dXMgJiByZHlfbWFzaykg
PT0gcmR5X21hc2spKSB7DQo+ID4gPiA+ID4gICAgICAgICAgICAgICAgIC8qIHBlcmlvZGljIHRy
aWdnZXIgSVJRIC0gZHVyaW5nIHBlbiBzZW5zZSAqLw0KPiA+ID4gPiA+IEBAIC0xNDg2LDcgKzE0
ODcsNyBAQCBzdGF0aWMgaW50IGF0OTFfYWRjX3dyaXRlX3JhdyhzdHJ1Y3QNCj4gPiA+ID4gPiBp
aW9fZGV2DQo+ID4gPiA+ID4gKmluZGlvX2RldiwNCj4gPiA+ID4gPiAgICAgICAgICAgICAgICAg
ICAgIHZhbCA+IHN0LT5zb2NfaW5mby5tYXhfc2FtcGxlX3JhdGUpDQo+ID4gPiA+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4g
LSAgICAgICAgICAgICBhdDkxX2FkY19zZXR1cF9zYW1wX2ZyZXEoc3QsIHZhbCk7DQo+ID4gPiA+
ID4gKyAgICAgICAgICAgICBhdDkxX2FkY19zZXR1cF9zYW1wX2ZyZXEoaW5kaW9fZGV2LCB2YWwp
Ow0KPiA+ID4gPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gMDsNCj4gPiA+ID4gPiAgICAgICAg
IGRlZmF1bHQ6DQo+ID4gPiA+ID4gICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiA+
ID4gPiA+IEBAIC0xNjI0LDggKzE2MjUsMTAgQEAgc3RhdGljIGludA0KPiA+ID4gPiA+IGF0OTFf
YWRjX3VwZGF0ZV9zY2FuX21vZGUoc3RydWN0IGlpb19kZXYNCj4gPiA+ID4gPiAqaW5kaW9fZGV2
LA0KPiA+ID4gPiA+ICAgICAgICAgcmV0dXJuIDA7DQo+ID4gPiA+ID4gICAgfQ0KPiA+ID4gPiA+
IA0KPiA+ID4gPiA+IC1zdGF0aWMgdm9pZCBhdDkxX2FkY19od19pbml0KHN0cnVjdCBhdDkxX2Fk
Y19zdGF0ZSAqc3QpDQo+ID4gPiA+ID4gK3N0YXRpYyB2b2lkIGF0OTFfYWRjX2h3X2luaXQoc3Ry
dWN0IGlpb19kZXYgKmluZGlvX2RldikNCj4gPiA+ID4gPiAgICB7DQo+ID4gPiA+ID4gKyAgICAg
c3RydWN0IGF0OTFfYWRjX3N0YXRlICpzdCA9IGlpb19wcml2KGluZGlvX2Rldik7DQo+ID4gPiA+
ID4gKw0KPiA+ID4gPiA+ICAgICAgICAgYXQ5MV9hZGNfd3JpdGVsKHN0LCBBVDkxX1NBTUE1RDJf
Q1IsDQo+ID4gPiA+ID4gQVQ5MV9TQU1BNUQyX0NSX1NXUlNUKTsNCj4gPiA+ID4gPiAgICAgICAg
IGF0OTFfYWRjX3dyaXRlbChzdCwgQVQ5MV9TQU1BNUQyX0lEUiwgMHhmZmZmZmZmZik7DQo+ID4g
PiA+ID4gICAgICAgICAvKg0KPiA+ID4gPiA+IEBAIC0xNjM1LDcgKzE2MzgsNyBAQCBzdGF0aWMg
dm9pZCBhdDkxX2FkY19od19pbml0KHN0cnVjdA0KPiA+ID4gPiA+IGF0OTFfYWRjX3N0YXRlDQo+
ID4gPiA+ID4gKnN0KQ0KPiA+ID4gPiA+ICAgICAgICAgYXQ5MV9hZGNfd3JpdGVsKHN0LCBBVDkx
X1NBTUE1RDJfTVIsDQo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgQVQ5MV9TQU1B
NUQyX01SX1RSQU5TRkVSKDIpIHwNCj4gPiA+ID4gPiBBVDkxX1NBTUE1RDJfTVJfQU5BQ0gpOw0K
PiA+ID4gPiA+IA0KPiA+ID4gPiA+IC0gICAgIGF0OTFfYWRjX3NldHVwX3NhbXBfZnJlcShzdCwg
c3QtPnNvY19pbmZvLm1pbl9zYW1wbGVfcmF0ZSk7DQo+ID4gPiA+ID4gKyAgICAgYXQ5MV9hZGNf
c2V0dXBfc2FtcF9mcmVxKGluZGlvX2Rldiwgc3QtDQo+ID4gPiA+ID4gPnNvY19pbmZvLm1pbl9z
YW1wbGVfcmF0ZSk7DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gICAgICAgICAvKiBjb25maWd1cmUg
ZXh0ZW5kZWQgbW9kZSByZWdpc3RlciAqLw0KPiA+ID4gPiA+ICAgICAgICAgYXQ5MV9hZGNfY29u
ZmlnX2VtcihzdCk7DQo+ID4gPiA+ID4gQEAgLTE3MTgsNiArMTcyMSw3IEBAIHN0YXRpYyBpbnQg
YXQ5MV9hZGNfcHJvYmUoc3RydWN0DQo+ID4gPiA+ID4gcGxhdGZvcm1fZGV2aWNlDQo+ID4gPiA+
ID4gKnBkZXYpDQo+ID4gPiA+ID4gICAgICAgICBpbmRpb19kZXYtPm51bV9jaGFubmVscyA9IEFS
UkFZX1NJWkUoYXQ5MV9hZGNfY2hhbm5lbHMpOw0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+ICAgICAg
ICAgc3QgPSBpaW9fcHJpdihpbmRpb19kZXYpOw0KPiA+ID4gPiA+ICsgICAgIHN0LT5pbmRpb19k
ZXYgPSBpbmRpb19kZXY7DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gICAgICAgICBiaXRtYXBfc2V0
KCZzdC0+dG91Y2hfc3QuY2hhbm5lbHNfYml0bWFzaywNCj4gPiA+ID4gPiAgICAgICAgICAgICAg
ICAgICAgQVQ5MV9TQU1BNUQyX1RPVUNIX1hfQ0hBTl9JRFgsIDEpOw0KPiA+ID4gPiA+IEBAIC0x
ODI5LDcgKzE4MzMsNyBAQCBzdGF0aWMgaW50IGF0OTFfYWRjX3Byb2JlKHN0cnVjdA0KPiA+ID4g
PiA+IHBsYXRmb3JtX2RldmljZQ0KPiA+ID4gPiA+ICpwZGV2KQ0KPiA+ID4gPiA+ICAgICAgICAg
ICAgICAgICBnb3RvIHZyZWZfZGlzYWJsZTsNCj4gPiA+ID4gPiAgICAgICAgIH0NCj4gPiA+ID4g
PiANCj4gPiA+ID4gPiAtICAgICBhdDkxX2FkY19od19pbml0KHN0KTsNCj4gPiA+ID4gPiArICAg
ICBhdDkxX2FkY19od19pbml0KGluZGlvX2Rldik7DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gICAg
ICAgICByZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoc3QtPnBlcl9jbGspOw0KPiA+ID4gPiA+ICAg
ICAgICAgaWYgKHJldCkNCj4gPiA+ID4gPiBAQCAtMTk0NSw3ICsxOTQ5LDcgQEAgc3RhdGljIF9f
bWF5YmVfdW51c2VkIGludA0KPiA+ID4gPiA+IGF0OTFfYWRjX3Jlc3VtZShzdHJ1Y3QNCj4gPiA+
ID4gPiBkZXZpY2UgKmRldikNCj4gPiA+ID4gPiAgICAgICAgIGlmIChyZXQpDQo+ID4gPiA+ID4g
ICAgICAgICAgICAgICAgIGdvdG8gdnJlZl9kaXNhYmxlX3Jlc3VtZTsNCj4gPiA+ID4gPiANCj4g
PiA+ID4gPiAtICAgICBhdDkxX2FkY19od19pbml0KHN0KTsNCj4gPiA+ID4gPiArICAgICBhdDkx
X2FkY19od19pbml0KGluZGlvX2Rldik7DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gICAgICAgICAv
KiByZWNvbmZpZ3VyaW5nIHRyaWdnZXIgaGFyZHdhcmUgc3RhdGUgKi8NCj4gPiA+ID4gPiAgICAg
ICAgIGlmICghaWlvX2J1ZmZlcl9lbmFibGVkKGluZGlvX2RldikpDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
