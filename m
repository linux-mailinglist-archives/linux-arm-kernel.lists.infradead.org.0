Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BE01757E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CG3EIyX0D4vGGBVduFTUfCkEPb48DKoGlaRiDCu4LQ8=; b=nzmHBSgo7px0HD
	rsB8Q3Lq5iqlmRBGpswx40RKGKE03zvTWuhEHffrQxsxvmGkQimJT+TblBhnev3DWLKzoQW0aRkeS
	YmUDaNQDZr9pUO+NAyG/Q5HNcJPJqLQu9YcUVCE1fB07BVfD+yCiduui0e6/hxve+H60z/eciEfBa
	1Xf/BFZ9VKxa3O89wpeqZqHzKR0kT0K16Zs3ZOtpjWkUz7aIAAI4XJjholecYVwi40NGwnEXmTkrr
	nAzUtd3hPFPCzkyTvyXo32s8rDxe7ecRexr4j/wTDbL8c/NzahAa93wOXUz/krwsSWjS6BMrGR2fR
	GBH5/bZd/NFY5n4/W15A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hvy-00064t-EX; Mon, 02 Mar 2020 10:04:22 +0000
Received: from mail-eopbgr70049.outbound.protection.outlook.com ([40.107.7.49]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hvo-00064H-T9
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:04:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Etr2yE2U+p3HCp9SrScULzN2o/fDFISjZKsGSglNkm0tFbydX6kx+KN1Z6G32GFI2p/EHRKxwl9iQCPscSRpxbt44Ba/DqQUa7ATdjqDH7vezdF+I1JDHZcMWkQ4tM6C0+DGYvL3ShmiwU24TK/TJl2r6mQJeyXfh/uAJOIrKl5JWWmB8ZlxVvREUkuPA+P2DBv9SNvARCcR0tRGHHOv5xee/UHBTY+Rv4XItbp3LJ1l+32vNh7ufvoGZban3HiayN3galYhgNDLU79fEQM2qqkSupu8Il04EKw0cYJw/nb9X/N5qzEug4EhJWHR9R3APJ5t+TsWQ5ikIxWg3hK8HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BndcZ5ndVA77PUoAW8KQPRvHRPeoqlqOtp3AbwjyvUc=;
 b=hYpLahas/P/1fl8MbSZrCylkE1Sf4GwBiRAAwg0OYtnwDi9fJ3HP9I2fhulkHDD3x2fBxY1+EVDbU2tTqvX6Ns+aYWeKOEBhNLwtjKLOZ1zoxEGSbk37Kb0/OFSVfu0ggZOsDAoJC9wBc1yh1Gxm8N1mf5inRxWTxmFTzEVZWBoLr1V0afVwxVjPlNlif/zjLsSwQWiMZ6njpiegC1hENXcSd5DHU0BRchCN9rxisKoNg5QyryeYCbmRnfLMRj5DjaaSAbI5WitEv1IICFpxf8DcTyIZb+O5igXFHonM2k58I0ODwBsdU+A4V4hXFsT5vyG/VxBju+u62uC/mM6ang==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BndcZ5ndVA77PUoAW8KQPRvHRPeoqlqOtp3AbwjyvUc=;
 b=XrwpUHGn2nE3GzszyWV+35niezq6r/6/EZckh2tXZ23pOC4C2YDpCjsfwp5VwFfe9UHeKWV51pbEoEStOT4SBQKn/EEp1MufDbPYezHrhoWNonJWRSh5/7SraGqW9VYr/NW56zggMkkcJFL1y06UmGYK1OG/jiGDosdBCJNabxk=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5314.eurprd04.prod.outlook.com (20.177.41.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Mon, 2 Mar 2020 10:04:09 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 10:04:09 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: RE: [PATCH V3 3/4] mailbox: imx: add SCU MU support
Thread-Topic: [PATCH V3 3/4] mailbox: imx: add SCU MU support
Thread-Index: AQHV7F/FQeCktcYzWEGhE/ZmwIB13qg1FmkAgAADNZA=
Date: Mon, 2 Mar 2020 10:04:09 +0000
Message-ID: <AM0PR04MB44811C028B134E467DCC1B9C88E70@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582692043-683-1-git-send-email-peng.fan@nxp.com>
 <1582692043-683-4-git-send-email-peng.fan@nxp.com>
 <df1a4174-1632-717c-0d24-8812c1cdc1d2@pengutronix.de>
In-Reply-To: <df1a4174-1632-717c-0d24-8812c1cdc1d2@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 43171f31-f700-4760-c3ba-08d7be910d1d
x-ms-traffictypediagnostic: AM0PR04MB5314:|AM0PR04MB5314:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB53145C815FF1B2DFD3A3F6B988E70@AM0PR04MB5314.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(346002)(376002)(136003)(199004)(189003)(5660300002)(2906002)(44832011)(966005)(316002)(71200400001)(86362001)(478600001)(52536014)(110136005)(54906003)(9686003)(26005)(66446008)(15650500001)(66946007)(76116006)(4326008)(186003)(8676002)(8936002)(33656002)(81166006)(7696005)(55016002)(53546011)(45080400002)(6506007)(66476007)(66556008)(81156014)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5314;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vb7LxtqI+S48eM7Aeb8iSz4vuJb4qhKF4b3x51rlgzXvYK1IHQNaS3igcb3YZMXL9IYdkyjSmQ8lGRY3fV+uD/lZM0EqhAcZhuAGdDDYRl7E9CTLwAWvyzAR5zbw5AYsp6Gm9TChaBN+WmMEiJIk/qSQr5OKmXnlL3WOE2vSM1QltWyPnCghgqB8lU6HWwJzv0Pj/sWdmzXDZdTgFUfmQnEl2v5uwrM4k0L9nWyCLfKg6cjVTRbE070JjP0Lee1VF0gqGaxLr8lfQUmi4DvRtDGiGisXGeUM6+RwBwX4bPgN9EQNhcL8yqn5DclSA8HtF13zamNYcAauuD6N7h9YAtDBbtIopIQpki8YHm1ZSRszqaH+L6m6TBXEWyp/gbti1FksTFgWOxf6nPcR6Bd2iY/V3qXQiRFCM5q3wwWDB3hmLVq8xYgSaigOmyKY0jASf7ykm1n6Q1m3lt0uN0MSXIZcs7SBtMHP6qeftzG2+GwmjyajdO9QxK3S5N++Pz+G7UVsCkalenQoAVlP2/n68w==
x-ms-exchange-antispam-messagedata: d5TVBfsNi7Dt4cKEDggpLiupvq8pvvrcP3SBG/iTwiHnSYPEAFMTYmxyhZFuPOKmdHPEOnaGAt5ZqRcuhT6q9lqKiodUw++KtaPey5wVnEjuonu0q2uSb6M9Ow7rsKvMMf3IWferCyIlkdagr7obGw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43171f31-f700-4760-c3ba-08d7be910d1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 10:04:09.4754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w+P29btVgQpHgwjURSOcgvPE3WCQ6yz5KID8DK5y5w6+FyEFC9BXwXRt9BO4dJNNdwxLTlHsyiYFCMAMhovQIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5314
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_020413_116399_A82573CC 
X-CRM114-Status: GOOD (  31.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT2xla3NpaiwNCg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIFYzIDMvNF0gbWFpbGJveDogaW14
OiBhZGQgU0NVIE1VIHN1cHBvcnQNCj4gDQo+IEhpLA0KPiANCj4gT24gMjYuMDIuMjAgMDU6NDAs
IHBlbmcuZmFuQG54cC5jb20gd3JvdGU6DQo+ID4gRnJvbTogUGVuZyBGYW4gPHBlbmcuZmFuQG54
cC5jb20+DQo+ID4NCj4gPiBpLk1YOC84WCBTQ1UgTVUgaXMgZGVkaWNhdGVkIGZvciBjb21tdW5p
Y2F0aW9uIGJldHdlZW4gU0NVIGFuZA0KPiA+IENvcnRleC1BIGNvcmVzIGZyb20gaGFyZHdhcmUg
ZGVzaWduLCBhbmQgY291bGQgbm90IGJlIHJldXNlZCBmb3Igb3RoZXINCj4gcHVycG9zZS4NCj4g
Pg0KPiA+IFBlciBpLk1YOC84WCBSZWZlcmVuY2UgbWFubnVhbCwgQ2hhcHRlciAiMTIuOS4yLjMu
MiBNZXNzYWdpbmcNCj4gRXhhbXBsZXMiLA0KPiA+ICAgUGFzc2luZyBzaG9ydCBtZXNzYWdlczog
VHJhbnNtaXQgcmVnaXN0ZXIocykgY2FuIGJlIHVzZWQgdG8gcGFzcw0KPiA+ICAgc2hvcnQgbWVz
c2FnZXMgZnJvbSBvbmUgdG8gZm91ciB3b3JkcyBpbiBsZW5ndGguIEZvciBleGFtcGxlLCB3aGVu
DQo+ID4gICBhIGZvdXItd29yZCBtZXNzYWdlIGlzIGRlc2lyZWQsIG9ubHkgb25lIG9mIHRoZSBy
ZWdpc3RlcnMgbmVlZHMgdG8NCj4gPiAgIGhhdmUgaXRzIGNvcnJlc3BvbmRpbmcgaW50ZXJydXB0
IGVuYWJsZSBiaXQgc2V0IGF0IHRoZSByZWNlaXZlciBzaWRlOw0KPiA+ICAgdGhlIG1lc3NhZ2Xi
gJlzIGZpcnN0IHRocmVlIHdvcmRzIGFyZSB3cml0dGVuIHRvIHRoZSByZWdpc3RlcnMgd2hvc2UN
Cj4gPiAgIGludGVycnVwdCBpcyBtYXNrZWQsIGFuZCB0aGUgZm91cnRoIHdvcmQgaXMgd3JpdHRl
biB0byB0aGUgb3RoZXINCj4gPiAgIHJlZ2lzdGVyICh3aGljaCB0cmlnZ2VycyBhbiBpbnRlcnJ1
cHQgYXQgdGhlIHJlY2VpdmVyIHNpZGUpLg0KPiA+DQo+ID4gaS5NWDgvOFggU0NVIGZpcm13YXJl
IElQQyBpcyBhbiBpbXBsZW1lbnRhdGlvbiBvZiBwYXNzaW5nIHNob3J0DQo+ID4gbWVzc2FnZXMu
IEJ1dCBjdXJyZW50IGlteC1tYWlsYm94IGRyaXZlciBvbmx5IHN1cHBvcnQgb25lIHdvcmQNCj4g
PiBtZXNzYWdlLCBpLk1YOC84WCBsaW51eCBzaWRlIGZpcm13YXJlIGhhcyB0byByZXF1ZXN0IGZv
dXIgVFggYW5kIGZvdXINCj4gPiBSWCB0byBzdXBwb3J0IElQQyB0byBTQ1UgZmlybXdhcmUuIFRo
aXMgaXMgbG93IGVmZmljZW50IGFuZCBtb3JlDQo+ID4gaW50ZXJydXB0cyB0cmlnZ2VyZWQgY29t
cGFyZWQgd2l0aCBvbmUgVFggYW5kIG9uZSBSWC4NCj4gPg0KPiA+IFRvIG1ha2UgU0NVIE1VIHdv
cmssDQo+ID4gICAgLSBwYXJzZSB0aGUgc2l6ZSBvZiBtc2cuDQo+ID4gICAgLSBPbmx5IGVuYWJs
ZSBUUjAvUlIwIGludGVycnVwdCBmb3IgdHJhbnNtaXQvcmVjZWl2ZSBtZXNzYWdlLg0KPiA+ICAg
IC0gRm9yIFRYL1JYLCBvbmx5IHN1cHBvcnQgb25lIFRYIGNoYW5uZWwgYW5kIG9uZSBSWCBjaGFu
bmVsDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBQZW5nIEZhbiA8cGVuZy5mYW5AbnhwLmNvbT4N
Cj4gPiAtLS0NCj4gPg0KPiA+IFYzOg0KPiA+ICAgQWRkZWQgc2N1IHR5cGUgdHgvcnggYW5kIFND
VSBNVSB0eXBlDQo+ID4NCj4gPiAgIGRyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jIHwgNjUN
Cj4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQ0KPiA+ICAgMSBm
aWxlIGNoYW5nZWQsIDY0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21haWxib3gvaW14LW1haWxib3guYw0KPiA+IGIvZHJpdmVycy9t
YWlsYm94L2lteC1tYWlsYm94LmMgaW5kZXggOTAxYTM0MzFmZGI1Li40MTY2NGE2NGM1ZmQNCj4g
PiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL21haWxib3gvaW14LW1haWxib3guYw0KPiA+ICsr
KyBiL2RyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jDQo+ID4gQEAgLTQsNiArNCw3IEBADQo+
ID4gICAgKi8NCj4gPg0KPiA+ICAgI2luY2x1ZGUgPGxpbnV4L2Nsay5oPg0KPiA+ICsjaW5jbHVk
ZSA8bGludXgvZmlybXdhcmUvaW14L2lwYy5oPg0KPiA+ICAgI2luY2x1ZGUgPGxpbnV4L2ludGVy
cnVwdC5oPg0KPiA+ICAgI2luY2x1ZGUgPGxpbnV4L2lvLmg+DQo+ID4gICAjaW5jbHVkZSA8bGlu
dXgva2VybmVsLmg+DQo+ID4gQEAgLTM4LDExICszOSwxNyBAQCBlbnVtIGlteF9tdV9jaGFuX3R5
cGUgew0KPiA+DQo+ID4gICBlbnVtIGlteF9tdV90eXBlIHsNCj4gPiAgIAlJTVhfTVVfVFlQRV9H
RU5FUklDLA0KPiA+ICsJSU1YX01VX1RZUEVfU0NVLA0KPiA+ICAgfTsNCj4gPg0KPiA+ICAgc3Ry
dWN0IGlteF9tdV9wcml2Ow0KPiA+ICAgc3RydWN0IGlteF9tdV9jb25fcHJpdjsNCj4gPg0KPiA+
ICtzdHJ1Y3QgaW14X3NjX3JwY19tc2dfbWF4IHsNCj4gPiArCXN0cnVjdCBpbXhfc2NfcnBjX21z
ZyBoZHI7DQo+ID4gKwl1MzIgZGF0YVs3XTsNCj4gPiArfSBfX3BhY2tlZCBfX2FsaWduZWQoNCk7
Ow0KPiA+ICsNCj4gPiAgIHN0cnVjdCBpbXhfbXVfZGNmZyB7DQo+ID4gICAJZW51bSBpbXhfbXVf
dHlwZSB0eXBlOw0KPiA+ICAgCWludCAoKnR4KShzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYsIHN0
cnVjdCBpbXhfbXVfY29uX3ByaXYgKmNwLA0KPiA+IHZvaWQgKmRhdGEpOyBAQCAtMTQxLDYgKzE0
OCw0OCBAQCBzdGF0aWMgaW50IGlteF9tdV9nZW5lcmljX3J4KHN0cnVjdA0KPiBpbXhfbXVfcHJp
diAqcHJpdiwNCj4gPiAgIAlyZXR1cm4gMDsNCj4gPiAgIH0NCj4gPg0KPiA+ICtzdGF0aWMgaW50
IGlteF9tdV9zY3VfdHgoc3RydWN0IGlteF9tdV9wcml2ICpwcml2LA0KPiA+ICsJCQkgc3RydWN0
IGlteF9tdV9jb25fcHJpdiAqY3AsDQo+ID4gKwkJCSB2b2lkICpkYXRhKQ0KPiA+ICt7DQo+ID4g
KwlzdHJ1Y3QgaW14X3NjX3JwY19tc2dfbWF4ICptc2cgPSBkYXRhOw0KPiA+ICsJdTMyICphcmcg
PSBkYXRhOw0KPiA+ICsJaW50IGk7DQo+ID4gKw0KPiA+ICsJc3dpdGNoIChjcC0+dHlwZSkgew0K
PiA+ICsJY2FzZSBJTVhfTVVfVFlQRV9UWDoNCj4gDQo+IHBsZWFzZSBhZGQgc2FuaXR5IGNoZWNr
IGlmIG1zZy0+aGRyLnNpemUgY2FuIGJlIGhhbmRsZWQgYnkgdGhpcyBkcml2ZXIgdmVyc2lvbi4N
Cg0KWWVzLCBJIGZvcmdvdCB0byBhZGQgdGhhdC4gU2hvdWxkIGFzIGJlbG93Og0KDQppZiAobXNn
LT5oZHIuc2l6ZSA+IHNpemVvZihzdHJ1Y3QgaW14X3NjX3JwY19tc2dfbWF4KSkNCglyZXR1cm4g
LUVJTlZBTDsNCg0KPiANCj4gPiArCQlmb3IgKGkgPSAwOyBpIDwgbXNnLT5oZHIuc2l6ZTsgaSsr
KSB7DQo+ID4gKwkJCWlteF9tdV93cml0ZShwcml2LCAqYXJnKyssDQo+ID4gKwkJCQkgICAgIHBy
aXYtPmRjZmctPnhUUltpICUgNF0pOw0KPiA+ICsJCX0NCj4gPiArCQlpbXhfbXVfeGNyX3Jtdyhw
cml2LCBJTVhfTVVfeENSX1RJRW4oY3AtPmlkeCksIDApOw0KPiA+ICsJCWJyZWFrOw0KPiA+ICsJ
ZGVmYXVsdDoNCj4gPiArCQlkZXZfd2Fybl9yYXRlbGltaXRlZChwcml2LT5kZXYsICJTZW5kIGRh
dGEgb24gd3JvbmcgY2hhbm5lbA0KPiB0eXBlOiAlZFxuIiwgY3AtPnR5cGUpOw0KPiA+ICsJCXJl
dHVybiAtRUlOVkFMOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCXJldHVybiAwOw0KPiA+ICt9DQo+
ID4gKw0KPiA+ICtzdGF0aWMgaW50IGlteF9tdV9zY3Vfcngoc3RydWN0IGlteF9tdV9wcml2ICpw
cml2LA0KPiA+ICsJCQkgc3RydWN0IGlteF9tdV9jb25fcHJpdiAqY3ApDQo+ID4gK3sNCj4gPiAr
CXN0cnVjdCBpbXhfc2NfcnBjX21zZ19tYXggbXNnOw0KPiA+ICsJdTMyICpkYXRhID0gKHUzMiAq
KSZtc2c7DQo+ID4gKwlpbnQgaTsNCj4gPiArDQo+ID4gKwlpbXhfbXVfeGNyX3Jtdyhwcml2LCAw
LCBJTVhfTVVfeENSX1JJRW4oMCkpOw0KPiA+ICsJKmRhdGErKyA9IGlteF9tdV9yZWFkKHByaXYs
IHByaXYtPmRjZmctPnhSUlswXSk7DQo+IA0KPiBwbGVhc2UgYWRkIHNhbml0eSBjaGVjay4gdGhl
IG1lc3NhZ2Ugc2l6ZSBzaG91bGQgbm90IGJlIGhpZ2hlciB0aGVuDQo+IHNpemVvZihtc2cpDQoN
Clllcy4NCg0KPiANCj4gPiArCWZvciAoaSA9IDE7IGkgPCBtc2cuaGRyLnNpemU7IGkrKykNCj4g
PiArCQkqZGF0YSsrID0gaW14X211X3JlYWQocHJpdiwgcHJpdi0+ZGNmZy0+eFJSW2kgJSA0XSk7
DQo+ID4gKw0KPiA+ICsJaW14X211X3hjcl9ybXcocHJpdiwgSU1YX01VX3hDUl9SSUVuKDApLCAw
KTsNCj4gDQo+IFBsZWFzZSBkbyBub3QgZm9yZ2V0IHRvIGhhbmRsZSBwcm9wZXJseSBuZXcgbXNn
IHNpemUgaW4geW91ciByeF9jYWxsYmFjay4gSW4NCj4gcHJldmlvdXMgaW1wbGVtZW50YXRpb24g
dGhlIG1lc3NhZ2Ugc2l6ZSB3YXMgNGJ5dGUuDQoNCk15IHBhdGNoIGNvdWxkIGhhbmRsZSBzaXpl
IGxhcmdlciB0aGFuIDQgd29yZHMuIFRoZSBwcmV2aW91cyBpbXBsZW1lbnRhdGlvbg0KdG8gbGlt
aXQgNCB3b3JkcyBpcyBub3QgZ29vZC4NCg0KPiANCj4gPiArCW1ib3hfY2hhbl9yZWNlaXZlZF9k
YXRhKGNwLT5jaGFuLCAodm9pZCAqKSZtc2cpOw0KPiA+ICsNCj4gPiArCXJldHVybiAwOw0KPiA+
ICt9DQo+ID4gKw0KPiA+ICAgc3RhdGljIHZvaWQgaW14X211X3R4ZGJfdGFza2xldCh1bnNpZ25l
ZCBsb25nIGRhdGEpDQo+ID4gICB7DQo+ID4gICAJc3RydWN0IGlteF9tdV9jb25fcHJpdiAqY3Ag
PSAoc3RydWN0IGlteF9tdV9jb25fcHJpdiAqKWRhdGE7IEBADQo+ID4gLTI3NCw2ICszMjMsNyBA
QCBzdGF0aWMgc3RydWN0IG1ib3hfY2hhbiAqIGlteF9tdV94bGF0ZShzdHJ1Y3QNCj4gbWJveF9j
b250cm9sbGVyICptYm94LA0KPiA+ICAgCQkJCSAgICAgICBjb25zdCBzdHJ1Y3Qgb2ZfcGhhbmRs
ZV9hcmdzICpzcCkNCj4gPiAgIHsNCj4gPiAgIAl1MzIgdHlwZSwgaWR4LCBjaGFuOw0KPiA+ICsJ
c3RydWN0IGlteF9tdV9wcml2ICpwcml2ID0gdG9faW14X211X3ByaXYobWJveCk7DQo+ID4NCj4g
PiAgIAlpZiAoc3AtPmFyZ3NfY291bnQgIT0gMikgew0KPiA+ICAgCQlkZXZfZXJyKG1ib3gtPmRl
diwgIkludmFsaWQgYXJndW1lbnQgY291bnQgJWRcbiIsDQo+IHNwLT5hcmdzX2NvdW50KTsNCj4g
PiBAQCAtMjg0LDcgKzMzNCw5IEBAIHN0YXRpYyBzdHJ1Y3QgbWJveF9jaGFuICogaW14X211X3hs
YXRlKHN0cnVjdA0KPiBtYm94X2NvbnRyb2xsZXIgKm1ib3gsDQo+ID4gICAJaWR4ID0gc3AtPmFy
Z3NbMV07IC8qIGluZGV4ICovDQo+ID4gICAJY2hhbiA9IHR5cGUgKiA0ICsgaWR4Ow0KPiA+DQo+
ID4gLQlpZiAoY2hhbiA+PSBtYm94LT5udW1fY2hhbnMpIHsNCj4gPiArCWlmIChjaGFuID49IG1i
b3gtPm51bV9jaGFucyB8fA0KPiA+ICsJICAgIChwcml2LT5kY2ZnLT50eXBlID09IElNWF9NVV9U
WVBFX1NDVSAmJg0KPiA+ICsJICAgICB0eXBlIDwgSU1YX01VX1RZUEVfVFhEQiAmJiBpZHggPiAw
KSkgew0KPiANCj4gV2UgbmVlZCB0aGlzIGNoZWNrIHNpbmNlIG1ib3gtPm51bV9jaGFucyBkbyBu
b3QgcmVmbGVjdHMgbmV3IHJlYWxpdHkuIE5vdw0KPiB3ZSBoYXZlIG9ubHkgMiBjaGFubmVscy4g
T25lIFJYIGFuZCBvbmUgVFguIE5vIGlkZWEgaWYgd2UgbmVlZCBkb29yYmVsbA0KPiBjaGFubmVs
cyBmb3IgU0NVLiBJZiBkb29yYmVsbHMgYXJlIG5vdCBzdXBwb3J0ZWQsIGl0IGlzIGJldHRlciB0
byBhZGQgYSBzZXBhcmF0ZQ0KPiBpbXhfbXVfeGxhdGUgZm9yIFNDVQ0KDQpUWERCIGN1cnJlbnRs
eSBub3Qgc3VwcG9ydGVkLCBidXQgSSBhbSBub3Qgc3VyZSB3aGV0aGVyIGl0IHdpbGwgYmUgc3Vw
cG9ydGVkDQppbiBmdXR1cmUuIEkgY291bGQgYWRkIGEgc2VwYXJhdGUgeGxhdGUgYXMgeW91IHN1
Z2dlc3RlZCwgc2luY2UgVFhEQiBub3Qgc3VwcG9ydA0Kbm93Lg0KDQo+IA0KPiBhbmQgYWRkIFND
VSBzcGVjaWZpYyBjaGFubmVsIGluaXQgaW4gcHJvYmUgaW4gYWRkaXRpb24gdG86DQo+ICAgICAg
ICAgIGZvciAoaSA9IDA7IGkgPCBJTVhfTVVfQ0hBTlM7IGkrKykgew0KPiANCj4gICAgICAgICAg
ICAgICAgICBzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICpjcCA9ICZwcml2LT5jb25fcHJpdltpXTsN
Cj4gDQo+IA0KPiANCj4gICAgICAgICAgICAgICAgICBjcC0+aWR4ID0gaSAlIDQ7DQo+IA0KPiAg
ICAgICAgICAgICAgICAgIGNwLT50eXBlID0gaSA+PiAyOw0KPiANCj4gICAgICAgICAgICAgICAg
ICBjcC0+Y2hhbiA9ICZwcml2LT5tYm94X2NoYW5zW2ldOw0KPiANCj4gICAgICAgICAgICAgICAg
ICBwcml2LT5tYm94X2NoYW5zW2ldLmNvbl9wcml2ID0gY3A7DQo+IA0KPiAgICAgICAgICAgICAg
ICAgIHNucHJpbnRmKGNwLT5pcnFfZGVzYywgc2l6ZW9mKGNwLT5pcnFfZGVzYyksDQo+IA0KPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICJpbXhfbXVfY2hhblslaS0laV0iLCBjcC0+dHlwZSwg
Y3AtPmlkeCk7DQo+IA0KPiAgICAgICAgICB9DQo+IA0KPiBUaGVyZSBpcyBubyBuZWVkIHRvIGlu
aXQgdW5zdXBwb3J0ZWQgY2hhbm5lbHMuIFBsZWFzZSBwYWNrIGl0IGluIHNlcGFyYXRlDQo+IGZ1
bmN0aW9uDQoNCm9rLiBJIGp1c3Qgd2FudCB0byByZXVzZSBjdXJyZW50IGNvZGUgYXMgbW9yZSBh
cyBwb3NzaWJsZSBhbmQgYXZvaWQNCmFkZGluZyB0b28gbXVjaCBuZXcgY29kZS4NCg0KVGhhbmtz
LA0KUGVuZy4NCg0KPiANCj4gPiAgIAkJZGV2X2VycihtYm94LT5kZXYsICJOb3Qgc3VwcG9ydGVk
IGNoYW5uZWwgbnVtYmVyOiAlZC4NCj4gKHR5cGU6ICVkLCBpZHg6ICVkKVxuIiwgY2hhbiwgdHlw
ZSwgaWR4KTsNCj4gPiAgIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+ID4gICAJfQ0KPiA+
IEBAIC00MDEsOSArNDUzLDIwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW14X211X2RjZmcNCj4g
aW14X211X2NmZ19pbXg3dWxwID0gew0KPiA+ICAgCS54Q1IJPSAweDY0LA0KPiA+ICAgfTsNCj4g
Pg0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGlteF9tdV9kY2ZnIGlteF9tdV9jZmdfaW14OF9z
Y3UgPSB7DQo+ID4gKwkudHlwZQk9IElNWF9NVV9UWVBFX1NDVSwNCj4gPiArCS50eAk9IGlteF9t
dV9zY3VfdHgsDQo+ID4gKwkucngJPSBpbXhfbXVfc2N1X3J4LA0KPiA+ICsJLnhUUgk9IHsweDAs
IDB4NCwgMHg4LCAweGN9LA0KPiA+ICsJLnhSUgk9IHsweDEwLCAweDE0LCAweDE4LCAweDFjfSwN
Cj4gPiArCS54U1IJPSAweDIwLA0KPiA+ICsJLnhDUgk9IDB4MjQsDQo+ID4gK307DQo+ID4gKw0K
PiA+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgaW14X211X2R0X2lkc1tdID0g
ew0KPiA+ICAgCXsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDd1bHAtbXUiLCAuZGF0YSA9ICZpbXhf
bXVfY2ZnX2lteDd1bHAgfSwNCj4gPiAgIAl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg2c3gtbXUi
LCAuZGF0YSA9ICZpbXhfbXVfY2ZnX2lteDZzeCB9LA0KPiA+ICsJeyAuY29tcGF0aWJsZSA9ICJm
c2wsaW14OC1tdS1zY3UiLCAuZGF0YSA9ICZpbXhfbXVfY2ZnX2lteDhfc2N1IH0sDQo+ID4gICAJ
eyB9LA0KPiA+ICAgfTsNCj4gPiAgIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGlteF9tdV9kdF9p
ZHMpOw0KPiA+DQo+IA0KPiBLaW5kIHJlZ2FyZHMsDQo+IE9sZWtzaWogUmVtcGVsDQo+IA0KPiAt
LQ0KPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfA0KPiB8DQo+
IEluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8DQo+IGh0dHBzOi8v
ZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwJTNBJTJGJTJG
d3d3LnANCj4gZW5ndXRyb25peC5kZSUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdDcGVuZy5mYW4lNDBu
eHAuY29tJTdDNDc1NThhDQo+IGM2YzZiZDRiYTM4YzI3MDhkN2JlOGViOTQ2JTdDNjg2ZWExZDNi
YzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUlDQo+IDdDMCU3QzAlN0M2MzcxODczOTI1MTI1MjA0NzYm
YW1wO3NkYXRhPU4wV2JCUkVBRmVnalgwcCUyRlN2Mw0KPiBjdUxwYjhGdm5DZVBVJTJCejZWa2hD
JTJGVTRjJTNEJmFtcDtyZXNlcnZlZD0wICB8DQo+IFBlaW5lciBTdHIuIDYtOCwgMzExMzcgSGls
ZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMA0KPiB8DQo+IEFtdHNn
ZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDoNCj4gKzQ5LTUxMjEt
MjA2OTE3LTU1NTUgfA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
