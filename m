Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C770BEF301
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 02:49:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUY0YE45yvBsN3nfwfiKRuvBKZgnT1+bYRa+yURazhc=; b=a1FMbsGpYr9s27
	JUVLgaWHK1vp7EccXN3ia9HY87Lk7XZErrIIrXfkxzsVbARzKJk6UByHdquyaZhdR9np+gk0Bg4fg
	hVQyNICWedmjc0YKg9QH5J94wMjyQyh2Je2iJ/98Lrk6PVW29cbGSe+BgOD8w76/26M8LIHayRCgD
	tFOWkMm4mvoqV7k+YGKNNge3B+yyg0iKSdswiCRtUsY2crY6osJ6sFIl0t5QI1aQSepn2VBWCe57i
	TONXqNe3dZfM1h+uuygeaAQRpj9jN0fjUBGpX+KB8CvHHiz4+NVUVZEBVRsNK1T5VwSev7iKydZH7
	geRTtN5ut6tkeA+xyhgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRnxx-0005Or-2I; Tue, 05 Nov 2019 01:49:05 +0000
Received: from mail-eopbgr00050.outbound.protection.outlook.com ([40.107.0.50]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRnxm-0005O4-LN
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 01:48:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F2wA34GFsV0CyVxKh76GNdALfXqjZH9uFIGewB/RJtsSFqLa2/+voaByvkHz/37uw0rsiP1BCLTDn53WCKjvO6HmJ5LfoFeWUZ18hhsC+VGuIiNNazOXn4uYSDi0QFhxKrwkG9fYqncgNLDbDlwXmRgzKMunB35Hmvit1Z0ajC6mNyzrtdKZ2OmDNlJOOtptgy0PmxkSXycgdh/O4QpbFFdA/lIhtx2E7z0M4pCOhb2jVMwXDqagUyl75wco7m5Qf3nxoW6oWgaieHg6K4xFRDtmxoHQudxj/gSfvmuhHlVlD5l29JjTIZNq8Jy8rNy4R7PJzTxWdX1nN5TZAdvvyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kv16FMT6YiwMb9HDdBMdfTbt1NLTFH502nY2tWQdtL0=;
 b=V8DaJ239PeuaCtnCQDpK5mqyrzGQpRYGEk77SbPEV9n8RC1zLK3JoIn9Xz2ic7CQqax9hCCsrApNHIVJRAZUQPT9XoqhRybGZjVluhGiX4jVQdOVlbmYksn6X+syOhuKlSPJDd+MQa8JfoKKNq1UNW8FhmOiVdvK0JKn7lKM6BTNZEKxYnKw7C1VnLO1CMxCPE05q4geNY5nJ04jiQgRR0UeqxXAPpk0xbSXoTzESuxtZxPitgZXZcE7CxkmIBKxC8xFVbXwfAedqBZcfOO1R3ls0LzBk0DtTXjYBfxvQPA7p+SKkxceuyTLXhMI4wpFSo770jcuN3zg6f+jgCJzbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kv16FMT6YiwMb9HDdBMdfTbt1NLTFH502nY2tWQdtL0=;
 b=IOCWwPyorb40sr+zlkxhj+Q5Ssk3kmxJEZ6slYSsf2O14LXm2ArQdNKTiyCvn0R0jhS38y/z3ZES2Ew0eSJGnBL3EYiFEbzMOKB/s1A+JUJdxegMZlyCUxdoYst8mg93E6/NxqCdluLS6axfoQ4BtuFWjct5fGBBFHjMx38YTq8=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4764.eurprd04.prod.outlook.com (20.176.233.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 01:48:45 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::1c96:c591:7d51:64e6]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::1c96:c591:7d51:64e6%4]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 01:48:44 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH 2/2] perf/imx_ddr: Dump AXI ID filter info to userspace
Thread-Topic: [PATCH 2/2] perf/imx_ddr: Dump AXI ID filter info to userspace
Thread-Index: AQHVkt7JSVyxcOrde0KxiVvue8qin6d7OxEAgACMn8A=
Date: Tue, 5 Nov 2019 01:48:44 +0000
Message-ID: <DB7PR04MB4618316403D1F32CF1739CCFE67E0@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20191104070616.29834-1-qiangqing.zhang@nxp.com>
 <20191104070616.29834-2-qiangqing.zhang@nxp.com>
 <20191104165338.GE24909@willie-the-truck>
In-Reply-To: <20191104165338.GE24909@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fc4751b0-fa25-4054-71c9-08d761924b1b
x-ms-traffictypediagnostic: DB7PR04MB4764:|DB7PR04MB4764:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4764DF70C95F83AD0C065538E67E0@DB7PR04MB4764.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(346002)(366004)(39860400002)(189003)(199004)(13464003)(76176011)(9686003)(53546011)(7736002)(8676002)(305945005)(2906002)(478600001)(316002)(14444005)(7696005)(33656002)(6246003)(71190400001)(71200400001)(4326008)(186003)(6506007)(55016002)(26005)(6436002)(256004)(3846002)(6116002)(229853002)(102836004)(66946007)(76116006)(64756008)(66476007)(66556008)(81166006)(476003)(81156014)(74316002)(66446008)(54906003)(25786009)(5660300002)(52536014)(86362001)(14454004)(99286004)(66066001)(11346002)(446003)(6916009)(486006)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4764;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OAJIa/zLFbKKPZs6osw25pnjdhJbS46w86xonoXPcMgPzkMnVmrRIhiF5+7GFXgp/IsZKPxfZshW+ifjwEKrLEI0lLRfBrXQaS0YangbkyqAy4f91JMmLdaim8SRNv9P/o/uKSqHkBcK0nt0qY4A5qiN17tzHbQw+z6G26TzYDPkmmycy4pI70yL2j9IjUG895OJES+Ayn2lL52gnRJllUQOQ4YXlkia9KhIlSgnM1PRd5Dk4HL4Gm5Ztb0nXeTrXzfZT4Uy9vaPOJgXuZ13viHI2IHZWHaOQI1B3kv9Oo2JX1nFNDbMn1Qh6WSBDGvlXHbh+vn4/U4MQ2rNXokXBHys4dmPwqVmMA5DsikZuWIWji+Uy2lTlt4r0JNHO1/IKrpy3UuJESymMWaAisQ8Njjqg5xgNookMA6qbODgHNHYZ5TlFA07mLvk0S7r3ekp
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc4751b0-fa25-4054-71c9-08d761924b1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 01:48:44.7664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RqYX+bHrBIRPNr85n6PdvFdGoDBuADrkwusxYUS7pixx4gJLSNgeXoRu5zQT9fhL786olReYKdh6R9QF9s9rTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4764
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_174854_702395_F3E3DEF4 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFdpbGwgRGVhY29uIDx3aWxs
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnE6jEx1MI1yNUgMDo1NA0KPiBUbzogSm9ha2ltIFpo
YW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4gQ2M6IG1hcmsucnV0bGFuZEBhcm0uY29t
OyByb2Jpbi5tdXJwaHlAYXJtLmNvbTsgZGwtbGludXgtaW14DQo+IDxsaW51eC1pbXhAbnhwLmNv
bT47IEZyYW5rIExpIDxmcmFuay5saUBueHAuY29tPjsNCj4gbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMi8yXSBwZXJmL2lteF9kZHI6
IER1bXAgQVhJIElEIGZpbHRlciBpbmZvIHRvIHVzZXJzcGFjZQ0KPiANCj4gT24gTW9uLCBOb3Yg
MDQsIDIwMTkgYXQgMDc6MDk6MjRBTSArMDAwMCwgSm9ha2ltIFpoYW5nIHdyb3RlOg0KPiA+IGNh
cHMvZmlsdGVyIGluZGljYXRlcyB3aGV0aGVyIEhXIHN1cHBvcnRzIEFYSSBJRCBmaWx0ZXIgb3Ig
bm90Lg0KPiA+IGNhcHMvZW5oYW5jZWRfZmlsdGVyIGluZGljYXRlcyB3aGV0aGVyIEhXIHN1cHBv
cnRzIGVuaGFuY2VkIEFYSSBJRA0KPiA+IGZpbHRlciBvciBub3QuDQo+ID4NCj4gPiBVc2VycyBj
YW4gY2hlY2sgZmlsdGVyIGZlYXR1cmVzIGZyb20gdXNlcnNwYWNlIHdpdGggdGhlc2UgYXR0cmli
dXRpb25zLg0KPiA+DQo+ID4gU3VnZ2VzdGVkLWJ5OiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwu
b3JnPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54
cC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jIHwg
NTkNCj4gPiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ICAxIGZpbGUgY2hh
bmdlZCwgNTkgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGVy
Zi9mc2xfaW14OF9kZHJfcGVyZi5jDQo+ID4gYi9kcml2ZXJzL3BlcmYvZnNsX2lteDhfZGRyX3Bl
cmYuYw0KPiA+IGluZGV4IDNiYmY4MDYyMDlhNi4uNmRiNDg0MjUxOTUwIDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jDQo+ID4gKysrIGIvZHJpdmVycy9w
ZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMNCj4gPiBAQCAtODQsNiArODQsNjQgQEAgc3RydWN0IGRk
cl9wbXUgew0KPiA+ICAJaW50IGlkOw0KPiA+ICB9Ow0KPiA+DQo+ID4gK2VudW0gZGRyX3BlcmZf
ZmlsdGVyX2NhcGFiaWxpdGllcyB7DQo+ID4gKwlQRVJGX0NBUF9BWElfSURfRklMVEVSID0gMCwN
Cj4gPiArCVBFUkZfQ0FQX0FYSV9JRF9GSUxURVJfRU5IQU5DRUQsDQo+ID4gKwlQRVJGX0NBUF9B
WElfSURfRkVBVF9NQVgsDQo+ID4gK307DQo+ID4gKw0KPiA+ICtzdGF0aWMgaW50IGRkcl9wZXJm
X2ZpbHRlcl9mZWF0X2NhcHNbUEVSRl9DQVBfQVhJX0lEX0ZFQVRfTUFYXSA9IHsNCj4gPiArCVtQ
RVJGX0NBUF9BWElfSURfRklMVEVSXSA9IEREUl9DQVBfQVhJX0lEX0ZJTFRFUiwNCj4gPiArCVtQ
RVJGX0NBUF9BWElfSURfRklMVEVSX0VOSEFOQ0VEXSA9DQo+IEREUl9DQVBfQVhJX0lEX0ZJTFRF
Ul9FTkhBTkNFRCwNCj4gPiArfTsNCj4gPiArDQo+ID4gK3N0YXRpYyB1MzIgZGRyX3BlcmZfZmls
dGVyX2NhcF9nZXQoc3RydWN0IGRkcl9wbXUgKnBtdSwgaW50IGNhcCkgew0KPiA+ICsJc3dpdGNo
IChjYXApIHsNCj4gPiArCWNhc2UgUEVSRl9DQVBfQVhJX0lEX0ZJTFRFUjoNCj4gPiArCQlyZXR1
cm4gISEocG11LT5kZXZ0eXBlX2RhdGEtPnF1aXJrcyk7DQo+ID4gKwljYXNlIFBFUkZfQ0FQX0FY
SV9JRF9GSUxURVJfRU5IQU5DRUQ6DQo+ID4gKwkJcmV0dXJuIChwbXUtPmRldnR5cGVfZGF0YS0+
cXVpcmtzID09DQo+ID4gKwkJCWRkcl9wZXJmX2ZpbHRlcl9mZWF0X2NhcHNbY2FwXSk7DQo+ID4g
Kwl9DQo+IA0KPiBJIHRoaW5rIHRoaXMgaXMgYSBiaXQgZXJyb3ItcHJvbmUgaWYgeW91IGFkZCBh
ZGRpdGlvbmFsIGNhcHMgaW4gZnV0dXJlLCBzaW5jZSB5b3UnbGwNCj4gbmVlZCB0byByZW1lbWJl
ciB0byBnbyBiYWNrIGFuZCB1cGRhdGUgdGhpcyBjYXNlLiBJIHJld3JvdGUgaXQgYXMgZm9sbG93
cyB0bw0KPiB0cnkgdG8gcHJldmVudCB0aGlzOg0KPiANCj4gDQo+IC1zdGF0aWMgaW50IGRkcl9w
ZXJmX2ZpbHRlcl9mZWF0X2NhcHNbUEVSRl9DQVBfQVhJX0lEX0ZFQVRfTUFYXSA9IHsNCj4gLQlb
UEVSRl9DQVBfQVhJX0lEX0ZJTFRFUl0gPSBERFJfQ0FQX0FYSV9JRF9GSUxURVIsDQo+IC0JW1BF
UkZfQ0FQX0FYSV9JRF9GSUxURVJfRU5IQU5DRURdID0NCj4gRERSX0NBUF9BWElfSURfRklMVEVS
X0VOSEFOQ0VELA0KPiAtfTsNCj4gLQ0KPiAgc3RhdGljIHUzMiBkZHJfcGVyZl9maWx0ZXJfY2Fw
X2dldChzdHJ1Y3QgZGRyX3BtdSAqcG11LCBpbnQgY2FwKSAgew0KPiArCXUzMiBxdWlya3MgPSBw
bXUtPmRldnR5cGVfZGF0YS0+cXVpcmtzOw0KPiArDQo+ICAJc3dpdGNoIChjYXApIHsNCj4gIAlj
YXNlIFBFUkZfQ0FQX0FYSV9JRF9GSUxURVI6DQo+IC0JCXJldHVybiAhIShwbXUtPmRldnR5cGVf
ZGF0YS0+cXVpcmtzKTsNCj4gKwkJcmV0dXJuIHF1aXJrcyAmIEREUl9DQVBfQVhJX0lEX0ZJTFRF
UjsNCg0KSGkgV2lsbCwNCg0KVGhlIHJlYXNvbiByZXR1cm4gISEocG11LT5kZXZ0eXBlX2RhdGEt
PnF1aXJrcykgaXMgZm9yIGJhY2t3YXJkIGNvbXBhdGliaWxpdHksIEkgd2lsbCBleHRlbmQgdGhl
IGRyaXZlciBmb3IgYW5vdGhlciB0eXBlIG9mIGZpbHRlciwgbGlrZSBiZWxvdzoNCgkjZGVmaW5l
IEREUl9DQVBfQVhJX0lEX0NIQU5ORUxfUE9SVCAweDQNCg0KaS5NWDhtc2NhbGUgc2VyaWFscyBE
RFIgUE1VIGFsbCBjb3VudGVycyBzaGFyZSBvbmUgZmlsdGVyLCBzbyB3ZSBjYW5ub3QgZW50ZXIg
ZGlmZmVyZW50IElEcyBhdCB0aGUgc2FtZSB0aW1lLiBCdXQgaW4gaS5NWDggc2VyaWFscywgZWFj
aCBjb3VudGVyIGhhcyB0aGVpciBvd24gZmlsdGVyLCBzbyBpdCBzdXBwb3J0cyBkaWZmZXJlbnQg
SURzLg0KSWYgcmV0dXJuIHF1aXJrcyAmIEREUl9DQVBfQVhJX0lEX0ZJTFRFUiwgaXQgd2lsbCBz
aG93IHRoZXJlIGlzIG5vIGZpbHRlci4NCg0KVGhhbmtzIGZvciB5b3VyIGltcHJvdmVtZW50LCB0
aGlzIGlzIG5vIHByb2JsZW0sIGtlZXAgaXQuIEkgY2FuIG1vZGlmeSBpdCB3aGVuIGVuYWJsZSB0
aGlzIHR5cGUgb2YgZmlsdGVyLCBqdXN0IGV4cGxhaW5pbmcuDQoNCj4gIAljYXNlIFBFUkZfQ0FQ
X0FYSV9JRF9GSUxURVJfRU5IQU5DRUQ6DQo+IC0JCXJldHVybiAocG11LT5kZXZ0eXBlX2RhdGEt
PnF1aXJrcyA9PQ0KPiAtCQkJZGRyX3BlcmZfZmlsdGVyX2ZlYXRfY2Fwc1tjYXBdKTsNCj4gKwkJ
cXVpcmtzICY9IEREUl9DQVBfQVhJX0lEX0ZJTFRFUl9FTkhBTkNFRDsNCj4gKwkJcmV0dXJuIHF1
aXJrcyA9PSBERFJfQ0FQX0FYSV9JRF9GSUxURVJfRU5IQU5DRUQ7DQo+ICsJZGVmYXVsdDoNCj4g
KwkJV0FSTigxLCAidW5rbm93biBmaWx0ZXIgY2FwICVkXG4iLCBjYXApOw0KPiAgCX0NCj4gDQo+
IC0JV0FSTigxLCAidW5rbm93biBmaWx0ZXIgY2FwICVkXG4iLCBjYXApOw0KPiAtDQo+ICAJcmV0
dXJuIDA7DQo+ICB9DQo+IA0KPiANCj4gd2hpY2ggYWxzbyBtZWFucyB3ZSBjYW4gZHJvcCBkZHJf
cGVyZl9maWx0ZXJfZmVhdF9jYXBzW10gYWx0b2dldGhlci4NCj4gDQo+ID4gKyNkZWZpbmUgUEVS
Rl9FWFRfQVRUUl9FTlRSWShfbmFtZSwgX2Z1bmMsIF92YXIpCQkJCVwNCj4gPiArCSgmKChzdHJ1
Y3QgZGV2X2V4dF9hdHRyaWJ1dGVbXSkgewkJCQlcDQo+ID4gKwkJeyBfX0FUVFIoX25hbWUsIDA0
NDQsIF9mdW5jLCBOVUxMKSwgKHZvaWQgKilfdmFyIH0JXA0KPiA+ICsJfSlbMF0uYXR0ci5hdHRy
KQ0KPiANCj4gSW4gYW5vdGhlciB0aHJlYWQsIHdlIHJlY2VudGx5IHJlYWxpc2VkIHRoYXQgdGhl
IGFycmF5IHN5bnRheCBpcyBub3QgbmVlZGVkDQo+IGhlcmUsIHNvIEkndmUgdXBkYXRlZCB0aGlz
IHRvIGJlOg0KPiANCj4gDQo+ICAjZGVmaW5lIFBFUkZfRVhUX0FUVFJfRU5UUlkoX25hbWUsIF9m
dW5jLCBfdmFyKQkJCQlcDQo+IC0JKCYoKHN0cnVjdCBkZXZfZXh0X2F0dHJpYnV0ZVtdKSB7CQkJ
CVwNCj4gLQkJeyBfX0FUVFIoX25hbWUsIDA0NDQsIF9mdW5jLCBOVUxMKSwgKHZvaWQgKilfdmFy
IH0JXA0KPiAtCX0pWzBdLmF0dHIuYXR0cikNCj4gKwkoJigoc3RydWN0IGRldl9leHRfYXR0cmli
dXRlKSB7CQkJCQlcDQo+ICsJCV9fQVRUUihfbmFtZSwgMDQ0NCwgX2Z1bmMsIE5VTEwpLCAodm9p
ZCAqKV92YXIJCVwNCj4gKwl9KS5hdHRyLmF0dHIpDQo+IA0KPiANCj4gSSd2ZSBtYWRlIHRob3Nl
IHR3byBjaGFuZ2VzLCBzbyBJJ2xsIHF1ZXVlIHRoaXMgdXAgZm9yIDUuNS4gVGhhbmtzLg0KDQpX
aWxsLCBuZWVkIG1lIHNlbmQgYSBwYXRjaCB0byByZW1vdmUgdGhpcyBhcnJheSBzeW50YXggdW5k
ZXIgdGhlIGRpcmVjdG9yeSBkcml2ZXJzL3BlcmYvLi4uIHRvZ2V0aGVyPw0KDQpCZXN0IFJlZ2Fy
ZHMsDQpKb2FraW0gWmhhbmcNCj4gV2lsbA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
