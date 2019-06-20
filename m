Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF994C5D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 05:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjDGjs2MdMkQkxV65ZfVDW3bJKp7uyZVr20qXeaNY6Q=; b=qG/iInQPW4gqUK
	e0fxQeYt75zKof7/tSKbk6gJUcjPUAnra6FCEnq2zH9o75enLc2ypnI3+oNY3yZPNmB+TvSpTmc7B
	W/0B2cG8ATBJx9nidenMLZ0ejBX1qR4E0QMoi7RNCJsARxtKT4m+3rtUsimUIeWctqDmMT9pt/5WX
	XUkXTFby4I3xQHb/jQonkSXX/AClBVCJ6lDEzvskGt7DSSh4r/qg+GbR4Ia2AuPvpNtFmH5YtJQ7g
	T8fdfSoEgsKc0Elm7ZeBWTmfNhAJCyynEsqY7dvtCu2ZK/hYczl9t57MpV8nyD3nUZyQjW8SQpHhx
	QcPB6lJcJgFUS3W2DE8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdnra-0003h5-Do; Thu, 20 Jun 2019 03:35:50 +0000
Received: from mail-eopbgr60072.outbound.protection.outlook.com ([40.107.6.72]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdnrL-0003f3-Vs
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 03:35:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2YzZru4QvpoigO6TF25kJ90AoSBgPwTnuDzbjfcpnng=;
 b=WwJl7Gk5A5dR0d1lKv0ch8e8XlIC98bhXGCD7TAKMwO2tLbRyQ5+USr97EA9QzFaB9vmx3g6qrnecQWpmrTUrYRksyjgYZIOmpl9gjfkLbfBCAEUdb1hVphkBJBJioxiijBC64JFlCXTxQlPDhfizk80WCFzGLDVNWHfVw2l11A=
Received: from DB7PR04MB5195.eurprd04.prod.outlook.com (20.176.236.27) by
 DB7PR04MB5483.eurprd04.prod.outlook.com (20.178.105.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Thu, 20 Jun 2019 03:35:28 +0000
Received: from DB7PR04MB5195.eurprd04.prod.outlook.com
 ([fe80::d99:5c8e:94a9:5ca0]) by DB7PR04MB5195.eurprd04.prod.outlook.com
 ([fe80::d99:5c8e:94a9:5ca0%6]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 03:35:28 +0000
From: Wen He <wen.he_1@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [EXT] Re: [v1 1/4] dt-bindings: display: Add DT bindings for
 LS1028A HDP-TX PHY.
Thread-Topic: [EXT] Re: [v1 1/4] dt-bindings: display: Add DT bindings for
 LS1028A HDP-TX PHY.
Thread-Index: AQHVBYm/GjgqdY4+pUuRDaU4fFYL0aaaPGKAgAUSaRCAA/a2AIAA0Sdg
Date: Thu, 20 Jun 2019 03:35:28 +0000
Message-ID: <DB7PR04MB51951DC431B5810DCDD9C776E2E40@DB7PR04MB5195.eurprd04.prod.outlook.com>
References: <20190508103703.40885-1-wen.he_1@nxp.com>
 <20190613200813.GA895@bogus>
 <DB7PR04MB5195E49670279C9A28C28A5EE2EB0@DB7PR04MB5195.eurprd04.prod.outlook.com>
 <CAL_JsqJnBw+OqEX46CC1E2=9CDmeT8hQtvMpufsnU8z3+1RoBQ@mail.gmail.com>
In-Reply-To: <CAL_JsqJnBw+OqEX46CC1E2=9CDmeT8hQtvMpufsnU8z3+1RoBQ@mail.gmail.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=wen.he_1@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7713c125-1f13-4e67-1d3d-08d6f5305721
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB5483; 
x-ms-traffictypediagnostic: DB7PR04MB5483:
x-microsoft-antispam-prvs: <DB7PR04MB548308902D6F3DB35DB7AE06E2E40@DB7PR04MB5483.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(346002)(396003)(366004)(136003)(13464003)(189003)(199004)(71190400001)(7736002)(6116002)(102836004)(3846002)(52536014)(478600001)(256004)(25786009)(5660300002)(74316002)(6916009)(71200400001)(229853002)(305945005)(66476007)(66446008)(186003)(68736007)(64756008)(476003)(446003)(2906002)(11346002)(53936002)(76116006)(66556008)(486006)(8936002)(26005)(4326008)(86362001)(81156014)(14454004)(33656002)(81166006)(73956011)(6246003)(316002)(6506007)(53546011)(66066001)(55016002)(8676002)(6436002)(66946007)(7696005)(54906003)(9686003)(99286004)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5483;
 H:DB7PR04MB5195.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZdDzq0uGer4m1ubnQiSWO58/OOIcz+o6WDbkD4bYsFek1EZxa/F4Q55pUwNGjpKGuMG9J28M4hkeKy9thwFoNIY2fdOEBFFXzL8glBQYu0tX5XH3uflzLer0oC+NbV5rhokmsadXoY2d/BWQFeESvhUEuESiY/Ev0aU8CFfGJW3GdyE/WDx2jtALz/k7HsfNZ4duug3n/IWTrPJGTeFuMYIlqDpJ4oKn5xCHTajZKXIT7uWHtSobavqtYKjelEK1Ik/pealDnGP6ie8UxeXMYjIeKTj5WZSNpNsNuZi8aNtx4xHxy50y2G5ZFqex9pow7uJqWoK/KlYwkFDCIs+Xy13fglBwnrpuG7kOGTvaIag+GVFaCIvIqCWILv3bzJTUO5orhvknZD99Flfl068FsHYWzM92B3jM9KgrU4eEEVM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7713c125-1f13-4e67-1d3d-08d6f5305721
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 03:35:28.6910 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wen.he_1@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5483
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_203536_122280_289EAC3A 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUm9iIEhlcnJpbmcgPHJv
YmhAa2VybmVsLm9yZz4NCj4gU2VudDogMjAxOeW5tDbmnIgxOeaXpSAyMjowNw0KPiBUbzogV2Vu
IEhlIDx3ZW4uaGVfMUBueHAuY29tPg0KPiBDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9y
ZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiBkZXZpY2V0cmVlQHZn
ZXIua2VybmVsLm9yZzsgc2hhd25ndW9Aa2VybmVsLm9yZzsgTGVvIExpDQo+IDxsZW95YW5nLmxp
QG54cC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbRVhUXSBSZTogW3YxIDEvNF0gZHQtYmluZGluZ3M6
IGRpc3BsYXk6IEFkZCBEVCBiaW5kaW5ncyBmb3INCj4gTFMxMDI4QSBIRFAtVFggUEhZLg0KPiAN
Cj4gQ2F1dGlvbjogRVhUIEVtYWlsDQo+IA0KPiBPbiBTdW4sIEp1biAxNiwgMjAxOSBhdCA3OjQ1
IFBNIFdlbiBIZSA8d2VuLmhlXzFAbnhwLmNvbT4gd3JvdGU6DQo+ID4NCj4gPg0KPiA+DQo+ID4g
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogUm9iIEhlcnJpbmcgPHJv
YmhAa2VybmVsLm9yZz4NCj4gPiA+IFNlbnQ6IDIwMTnlubQ25pyIMTTml6UgNDowOA0KPiA+ID4g
VG86IFdlbiBIZSA8d2VuLmhlXzFAbnhwLmNvbT4NCj4gPiA+IENjOiBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnOw0KPiA+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Ow0KPiA+ID4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IHNoYXduZ3VvQGtlcm5lbC5vcmc7
IExlbyBMaQ0KPiA+ID4gPGxlb3lhbmcubGlAbnhwLmNvbT4NCj4gPiA+IFN1YmplY3Q6IFtFWFRd
IFJlOiBbdjEgMS80XSBkdC1iaW5kaW5nczogZGlzcGxheTogQWRkIERUIGJpbmRpbmdzDQo+ID4g
PiBmb3IgTFMxMDI4QSBIRFAtVFggUEhZLg0KPiA+ID4NCj4gPiA+IENhdXRpb246IEVYVCBFbWFp
bA0KPiA+ID4NCj4gPiA+IE9uIFdlZCwgTWF5IDA4LCAyMDE5IGF0IDEwOjM1OjI1QU0gKzAwMDAs
IFdlbiBIZSB3cm90ZToNCj4gPiA+ID4gQWRkIERUIGJpbmRpbmdzIGRvY3VtZW50bWF0aW9uIGZv
ciB0aGUgSERQLVRYIFBIWSBjb250cm9sbGVyLiBUaGUNCj4gPiA+ID4gZGVzY3JpYmVzIHdoaWNo
IGNvdWxkIGJlIGZvdW5kIG9uIE5YUCBMYXllcnNjYXBlIGxzMTAyOGEgcGxhdGZvcm0uDQo+ID4g
Pg0KPiA+ID4gRHJvcCB0aGUgaGFyZCBzdG9wICguKSBmcm9tIHRoZSBzdWJqZWN0Lg0KPiA+ID4N
Cj4gPiA+ID4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogV2VuIEhlIDx3ZW4uaGVfMUBueHAuY29t
Pg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkv
ZnNsLGhkcC50eHQgICB8IDU2DQo+ICsrKysrKysrKysrKysrKysrKysNCj4gPiA+ID4gIDEgZmls
ZSBjaGFuZ2VkLCA1NiBpbnNlcnRpb25zKCspDQo+ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQN
Cj4gPiA+ID4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvZnNsLGhk
cC50eHQNCj4gPiA+ID4NCj4gPiA+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9kaXNwbGF5L2ZzbCxoZHAudHh0DQo+ID4gPiA+IGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvZnNsLGhkcC50eHQNCj4gPiA+ID4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQNCj4gPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4zNmI1Njg3YTEyNjEN
Cj4gPiA+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ID4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvZGlzcGxheS9mc2wsaGRwLnR4dA0KPiA+ID4gPiBAQCAtMCwwICsxLDU2
IEBADQo+ID4gPiA+ICtOWFAgTGF5ZXJzY3BhZSBsczEwMjhhIEhEUC1UWCBQSFkgQ29udHJvbGxl
cg0KPiA+ID4gPiArPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0N
Cj4gPiA+ID4gKw0KPiA+ID4gPiArVGhlIGZvbGxvd2luZyBiaW5kaW5ncyBkZXNjcmliZSB0aGUg
Q2FkZW5jZSBIRFAgVFggUEhZIG9uIGxzMTAyOGENCj4gPiA+ID4gK3RoYXQgb2ZmZXIgbXVsdGkt
cHJvdG9jb2wgc3VwcG9ydCBvZiBzdGFuZGFycyBzdWNoIGFzIGVEUCBhbmQNCj4gPiA+ID4gK0Rp
c3BsYXlwb3J0LCBzdXBwb3J0cyBmb3IgMjUtNjAwTUh6IHBpeGVsIGNsb2NrIGFuZCB1cCB0byA0
azJrIGF0DQo+ID4gPiA+ICs2ME1Ieg0KPiA+ID4gcmVzb2x1dGlvbi4NCj4gPiA+ID4gK1RoZSBI
RFAgdHJhbnNtaXR0ZXIgaXMgYSBDYWRlbmNlIEhEUCBUWCBjb250cm9sbGVyIElQIHdpdGggYQ0K
PiA+ID4gPiArY29tcGFuaW9uIFBIWSBJUC4NCj4gPiA+DQo+ID4gPiBJJ20gY29uZnVzZWQuIFRo
aXMgYmluZGluZyBjb3ZlcnMgYm90aCBibG9ja3Mgb3IgaXMganVzdCBvbmUgb2YgdGhlbT8NCj4g
PiA+DQo+ID4NCj4gPiBIaSBSb2IsDQo+ID4NCj4gPiBUaGlzIGJpbmRpbmcgY292ZXJzIGJvdGgg
YmxvY2tzKEhEUCBUWCBQSFkgYW5kIEhEUCBUWCBDb250cm9sbGVyKSwNCj4gPiBCZWNhdXNlIHRo
ZXkgYXJlIGJlbG9uZyB0byB0aGUgb25lIElQLg0KPiANCj4gSW4gdGhhdCBjYXNlLCB5b3Ugc2hv
dWxkIGFsc28gaGF2ZSBhbiBvdXRwdXQgcG9ydCB0byBhIERQIGNvbm5lY3RvciBub2RlIChvcg0K
PiBEUCBwYW5lbCkuDQoNCkhpIFJvYiwNCg0KSSByZW1lbWJlciB0aGVyZSBhcmUgaW5jbHVkZWQg
dGhlIERQIGNvbm5lY3RvciBub2RlIGRlc2NyaXB0aW9uIGFzIHNlZSBiZWxvdy4NCg0KLS0tDQpS
ZXF1aXJlZCBzdWItbm9kZXM6DQotIHBvcnQNCg0KSXQgdGhlcmUgc2hvdWxkIGJlIHJpZ2h0Pw0K
DQpCZXN0IFJlZ2FyZHMsDQpXZW4NCg0KPiANCj4gUm9iDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
