Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B90AA1299
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 09:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btKSc2tcR9RwRL9n39PUDl9B+uXxRlDiKnbXAugzWeE=; b=oo1MrumhJcxrQm
	Gw7hvkrY0Pmk4dsfwKgy4H6irTZQyNJ89jU7ab6NORQys29Fh2bPIybwvvMQy2OkVYJDhmiz5v1fs
	EDNYEYA6jR/AUFS7xHUDnnTYve5aA2rxEANow/AgPoyMIlRiRy3vaN1PTvNi0Vupty92UyJ53DCMw
	jxOdZbOiPXOjDu6Cjq/ruMXG8MzyCBjVzVrrsQgDCiNxs7a9fsHek2r/Z1qs5TG0mZkOGXUdxerlC
	NnGcPXT3n5Lsp1MyI6D5i4N/oGwYDXsMQ+4ABUjniyt30vgcRjkvj4DUFMdlZMVJVCdcu23mIYoUJ
	kREX94gDoFs4vxjfcUbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Epc-0001iQ-I7; Thu, 29 Aug 2019 07:26:56 +0000
Received: from mail-eopbgr30062.outbound.protection.outlook.com ([40.107.3.62]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3EpC-0001hk-H0
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 07:26:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KYme26RgzldovIzV2ei+oNsLjKgJoHny4ofofTzrcoW9+3HDPiLt0ZcOZLEbZ5Kqv0KAsJEdgG+QT5ehlEZvZEQp1DdljICEs2EXMlBrTCNm0OQaxMeYBDyioCoLujNuF84r02ICZrpu5Rky5meO0aZhSzERjJ4G4Qt8OKRzXkrsxWo3f5KMG8VPwBJmIRUzjP6TVwzLyyCWTBz2oyeeBC5Hh4t0M5OtLzts4+N9v4QZDIC2qocRoVBmhL78NOqQ+qE7Y25xKAGdNFte1AsMj2Cbkcyvsse3nW99Jclyxetlb+Gw1rubD0VdnvwFKkb94B8vrCMtZ6f8tMNMBJ4Atw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V1rz3M1IFJ2a6YgIG4CGOqQKPTIK6BNnBAuL9yy2JTI=;
 b=g0LQs012/MuC2ekSt03iIR3pfUR4Gi9FAiEiAXwJ+lMwrBe7E9tH3YTTVPE4kugJZVN/bReejmF6FZ6QDr+BxnKJ5nSK+LBwvk+2EXxtZhLdt5Gns+YAoWVs5V3FpfDIcWFUlbd4zRIKWs9/NntDvBkNKjFRqqtGYWXPCRh54Ies9X4Kk5yMHoj2ZX1rjCCd9ZqjjmSgFrb0stCcpSGX0mnC8RZRKglGYt7XtSRfd7H/e9V2oNvDfJ1TV4DKsGJIQ59G/QIwNcU6kk6TgsRja4cV8lAVGqcJ93BKvgy3N6rEIziNZCjGe+wyY24jttUYECW5d6kHUmRgPPduRua6jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V1rz3M1IFJ2a6YgIG4CGOqQKPTIK6BNnBAuL9yy2JTI=;
 b=CN+zdyHggIgMXZjup0uxJ0tG+dtcl5dxj8VbiikmHytA4o4/na6+iyzdueJykxUkFWAXXgIYWsRxWD0MuAHmtalattvikVDUmoV1dbw+fOcjJ97cDia/GvoOdHsEf6WJKWqpj8hxvShISzJH30HGGbpPmeMB0GIzOmt4AiDTAtY=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5050.eurprd04.prod.outlook.com (20.176.236.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Thu, 29 Aug 2019 07:26:25 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Thu, 29 Aug 2019
 07:26:25 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH V9 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH V9 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVXZk3TFiKcreeDke9EMwXd/wkA6cQkjkAgAEhFkA=
Date: Thu, 29 Aug 2019 07:26:25 +0000
Message-ID: <DB7PR04MB4618D5EFB089C3052A25A7C2E6A20@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20190828120524.9038-1-qiangqing.zhang@nxp.com>
 <20190828134427.z4zmqucm7fcuuies@willie-the-truck>
In-Reply-To: <20190828134427.z4zmqucm7fcuuies@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 148ea867-b689-4f85-3d55-08d72c523367
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB5050; 
x-ms-traffictypediagnostic: DB7PR04MB5050:|DB7PR04MB5050:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5050F6DC6D6B938EE2F4D41CE6A20@DB7PR04MB5050.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(346002)(39860400002)(136003)(396003)(13464003)(189003)(199004)(86362001)(3846002)(33656002)(229853002)(6916009)(7736002)(305945005)(74316002)(6116002)(2906002)(81166006)(81156014)(8676002)(8936002)(186003)(4326008)(14454004)(316002)(26005)(102836004)(45080400002)(6506007)(53546011)(25786009)(52536014)(54906003)(55016002)(9686003)(6306002)(66066001)(53936002)(99286004)(966005)(6246003)(7696005)(76176011)(478600001)(71200400001)(71190400001)(14444005)(256004)(66446008)(76116006)(66946007)(66476007)(66556008)(64756008)(11346002)(5660300002)(6436002)(476003)(486006)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5050;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Y/f/nR55TlF3Rmins7e9w4EG5bcQ1Ifex3s4NcB1sj6vlT0ITG7+GaNBCOhx4sm+5PmcqUbFF+mL8cLg7LLwW2Tm23Hqm3yMLcjzXOeMJfpIu2UaTgN2SfCeNxOTegCg3wLYZp0gER0CJOqEEjPLTP+55XnPfEpNR9UqNT14Q71FtKYyUU6wzQ656P1tZwUrv2O/VNsJbNouhA+6jwXkYKrnWefSu5ggGlOTWJJ0457j643la0PJrwZD5bPqXfWA4XDhMR6Mmtq4koIJhQ0asenz0a8iKAFbXLUmkTCrXweXc1pIRuVERCvJJv1t1eqWnU7OnAJIVASZPg2+K3X6rKPItPvcuULOz2lL8YGzBmiDKiyrDXlg07U7Ae+g4gJnGHujrht5SDQBm41sto5MYP/Z5a818JksMVAZsfgdrqU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 148ea867-b689-4f85-3d55-08d72c523367
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 07:26:25.6829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ia3DNjSd/VmsZ6+bFKT95K42iuhfLk5y+HL59+OfeU7Lsa07eSZzgAM5+fHXXVQQ627mkSUFCtWfne6EhGwOrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_002630_650370_802B94CA 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFdpbGwgRGVhY29uIDx3aWxs
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnlubQ45pyIMjjml6UgMjE6NDQNCj4gVG86IEpvYWtp
bSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+IENjOiBtYXJrLnJ1dGxhbmRAYXJt
LmNvbTsgcm9iaW4ubXVycGh5QGFybS5jb207IEZyYW5rIExpDQo+IDxmcmFuay5saUBueHAuY29t
PjsgZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT47DQo+IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIFY5IDEvM10gcGVyZjog
aW14OF9kZHJfcGVyZjogYWRkIEFYSSBJRCBmaWx0ZXIgc3VwcG9ydA0KPiANCj4gT24gV2VkLCBB
dWcgMjgsIDIwMTkgYXQgMTI6MDc6NTJQTSArMDAwMCwgSm9ha2ltIFpoYW5nIHdyb3RlOg0KPiA+
IEFYSSBmaWx0ZXJpbmcgaXMgdXNlZCBieSBDU1YgbW9kZXMgMHg0MSBhbmQgMHg0MiB0byBjb3Vu
dCByZWFkcyBvcg0KPiA+IHdyaXRlcyB3aXRoIGFuIEFSSUQgb3IgQVdJRCBtYXRjaGluZyBmaWx0
ZXIgc2V0dGluZy4gR3JhbnVsYXJpdHkgaXMgYXQNCj4gPiBzdWJzeXN0ZW0gbGV2ZWwuIEltcGxl
bWVudGF0aW9uIGRvZXMgbm90IGFsbG93IGZpbHRyaW5nIGJldHdlZW4NCj4gPiBtYXN0ZXJzIHdp
dGhpbiBhIHN1YnN5c3RlbS4gRmlsdGVyIGlzIGRlZmluZWQgd2l0aCAyIGNvbmZpZ3VyYXRpb24N
Cj4gcGFyYW1ldGVycy4NCj4gPg0KPiA+IC0tQVhJX0lEIGRlZmluZXMgQXhJRCBtYXRjaGluZyB2
YWx1ZQ0KPiA+IC0tQVhJX01BU0tJTkcgZGVmaW5lcyB3aGljaCBiaXRzIG9mIEF4SUQgYXJlIG1l
YW5pbmdmdWwgZm9yIHRoZSBtYXRjaGluZw0KPiA+IAkw77yaY29ycmVzcG9uZGluZyBiaXQgaXMg
bWFza2VkDQo+ID4gCTE6IGNvcnJlc3BvbmRpbmcgYml0IGlzIG5vdCBtYXNrZWQsIGkuZS4gdXNl
ZCB0byBkbyB0aGUgbWF0Y2hpbmcNCj4gPg0KPiA+IFdoZW4gbm9uLW1hc2tlZCBiaXRzIGFyZSBt
YXRjaGluZyBjb3JyZXNwb25kaW5nIEFYSV9JRCBiaXRzIHRoZW4NCj4gPiBjb3VudGVyIGlzIGlu
Y3JlbWVudGVkLiBUaGlzIGZpbHRlciBhbGxvd3MgY291bnRpbmcgcmVhZCBvciB3cml0ZQ0KPiA+
IGFjY2VzcyBmcm9tIGEgc3Vic3lzdGVtIG9yIG11bHRpcGxlIHN1YnN5c3RlbXMuDQo+ID4NCj4g
PiBQZXJmIGNvdW50ZXIgaXMgaW5jcmVtZW50ZWQgaWYgQXhJRCAmJiBBWElfTUFTS0lORyA9PSBB
WElfSUQgJiYNCj4gPiBBWElfTUFTS0lORw0KPiA+DQo+ID4gQVhJX0lEIGFuZCBBWElfTUFTS0lO
RyBhcmUgbWFwcGVkIG9uIERQQ1IxIHJlZ2lzdGVyIGluIHBlcmZvcm1hbmNlDQo+IGNvdW50ZXIu
DQo+ID4NCj4gPiBSZWFkIGFuZCB3cml0ZSBBWEkgSUQgZmlsdGVyIHNob3VsZCB3cml0ZSBzYW1l
IHZhbHVlIHRvIERQQ1IxIGlmIHdhbnQNCj4gPiB0byBzcGVjaWZ5IGF0IHRoZSBzYW1lIHRpbWUg
YXMgdGhpcyBmaWx0ZXIgaXMgc2hhcmVkIGJldHdlZW4gY291bnRlcnMuDQo+ID4NCj4gPiBlLmcu
DQo+ID4gcGVyZiBzdGF0IC1hIC1lIGlteDhfZGRyMC9heGlkLXJlYWQsYXhpX21hc2s9MHhNTU1N
LGF4aV9pZD0weEREREQvDQo+IGNtZA0KPiA+IHBlcmYgc3RhdCAtYSAtZSBpbXg4X2RkcjAvYXhp
ZC13cml0ZSxheGlfbWFzaz0weE1NTU0sYXhpX2lkPTB4RERERC8NCj4gPiBjbWQNCj4gPg0KPiA+
IE5PVEU6IGF4aV9tYXNrIGlzIGludmVydGVkIGluIHVzZXJzcGFjZShpLmUuIHNldCBiaXRzIGFy
ZSBiaXRzIHRvDQo+ID4gbWFzayksIGFuZCBpdCB3aWxsIGJlIHJldmVydGVkIGluIGRyaXZlciBh
dXRvbWF0aWNhbGx5LiBzbyB0aGF0IHRoZQ0KPiA+IHVzZXIgY2FuIGp1c3Qgc3BlY2lmeSBheGlf
aWQgdG8gbW9uaXRvciBhIHNwZWNpZmljIGlkLCByYXRoZXIgdGhhbiBoYXZpbmcgdG8NCj4gc3Bl
Y2lmeSBheGlfbWFzay4NCj4gPiBlLmcuDQo+ID4gcGVyZiBzdGF0IC1hIC1lIGlteDhfZGRyMC9h
eGlkLXJlYWQsYXhpX2lkPTB4MTIvIGNtZCwgd2hpY2ggd2lsbA0KPiA+IG1vbml0b3IgQVJJRD0w
eDEyDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFu
Z0BueHAuY29tPg0KPiANCj4gVGhhbmtzLCBJJ3ZlIHB1c2hlZCB0aGlzIHNlcmllcyBvdXQgdG86
DQo+IA0KPiBodHRwczovL2V1cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91
cmw9aHR0cHMlM0ElMkYlMkZnaXQua2Vybg0KPiBlbC5vcmclMkZwdWIlMkZzY20lMkZsaW51eCUy
Rmtlcm5lbCUyRmdpdCUyRndpbGwlMkZsaW51eC5naXQlMkZsb2clMkYNCj4gJTNGaCUzRGZvci1u
ZXh0JTJGcGVyZiZhbXA7ZGF0YT0wMiU3QzAxJTdDcWlhbmdxaW5nLnpoYW5nJTQwbnhwLmMNCj4g
b20lN0M1NDcwMDZlMGNmNzA0Yjg3YmRhODA4ZDcyYmJkZGM3NyU3QzY4NmVhMWQzYmMyYjRjNmZh
OTJjZDk5Yw0KPiA1YzMwMTYzNSU3QzAlN0MwJTdDNjM3MDI1OTY2NzY2NjEwMDg2JmFtcDtzZGF0
YT16YWVxSCUyQkZ2b04lDQo+IDJCaUFqcmwxJTJGbkRUVEYzMExGTmNKQllndEZRWHd4M01lTSUz
RCZhbXA7cmVzZXJ2ZWQ9MA0KPiANCj4gYW5kIHBsYW4gdG8gc2VuZCBpdCBmb3IgNS40LiBJIGRp
ZCByZXdyaXRlIHRoZSBjb21taXQgbWVzc2FnZXMsIHNvIHBsZWFzZSB0YWtlIGENCj4gbG9vay4g
SSBhbHNvIGZvbGRlZCB0aGUgb3RoZXIgdHdvIHBhdGNoZXMgdG9nZXRoZXIuDQo+IA0KPiBUaGFu
a3MsDQoNClRoYW5rcyBXaWxsLiBUaGUgY29tbWl0IG1lc3NhZ2VzIHJld3JvdGUgaXMgZmluZSBm
b3IgbWUuDQoNCkkgaGF2ZSBhbm90aGVyIHF1ZXN0aW9uIHdhbnQgdG8gYXNrIHlvdSwgY291bGQg
eW91IGdpdmUgbWUgc29tZSBzdWdnZXN0aW9ucz8NCg0KIyBwZXJmIHN0YXQgLWEgLWUgaW14OF9k
ZHIwL2F4aWQtcmVhZCxheGlfbWFzaz0weGYsYXhpX2lkPTB4MTAvIGNtZA0KDQpJdCB3aWxsIGNv
dW50IGFsbCByZWFkIHRyYW5zYWN0aW9ucyBmcm9tIEFYSSBJRHMgMHgxMCAtIDB4MWYuIElmIHdl
IHN1cHBvc2UgdGhlc2UgMTYgSURzIGFyZSBmb3IgR1BVIFN1YnN5c3RlbSwgd2l0aCBhYm92ZSBj
b25maWd1cmF0aW9uIHdlIG1heSB3YW50IHRvIG1vbml0b3IgYWxsIHJlYWQNCnRyYW5zYWN0aW9u
cyBmcm9tIEdQVSBzdWJzeXN0ZW0uIEhvd2V2ZXIsIGl0IGlzIHRlZGlvdXMgZm9yIHVzZXIgdG8g
Y29uZmlndXJlLCB0aGV5IG1heSBub3Qga25vdyB0aGUgQVhJIElEcyBtYXAsIGhhZCBiZXR0ZXIg
d2UgY2FuIGNvbmZpZ3VyZSBsaWtlIGJlbG93LCB0aGUgR1BVIHN0cmluZyBpcyBtb3JlIHN0cmFp
Z2h0Zm9yd2FyZC4NCg0KIyBwZXJmIHN0YXQgLWEgLWUgaW14OF9kZHIwL2F4aWQtcmVhZCwiR1BV
Ii8gY21kDQoNCndoaWNoICJHUFUiIHN0cmluZyBpcyBzYW1lIHdpdGggImF4aV9tYXNrPTB4Zixh
eGlfaWQ9MHgxMCIuDQoNCkJlc3QgUmVnYXJkcywNCkpvYWtpbSBaaGFuZw0KPiBXaWxsDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
