Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AA1124469
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:23:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TcpCLEw+aHkVCN4tDwrfOPJtirLa6aHzJgk8Fgn3ZDQ=; b=sF6BnPZqRBqDEV
	Vc9T8NrlT4Srd4K4+/8GPzXtlWo6j2lb9M7FfQDtOpHZeveTrU7a7S1ZXu4Og52thyqOkaxmSraMi
	suxpQee7LFB4eD5vMjOgwlq+PD7fXjMxN/1sYespagYfr2VqgFxHI//yarsXTpkQF+lAnqdaGtJdT
	szOTGqAg/+ZocEXIS7k44DbA4TprPDKRQ23p/8atVHaZxaoUHy5ahUGyogfgWNhwXsWK8b6Dil4yI
	tEVP4H8qjq73+4j1ehPUI4z73O+t2LvML5R3dT5ZP5S1YOFfAYwu5rL7FE+u1/0X84oqv5DbaWVJw
	ieCzh6vJ12dxZ/4QtvEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWUD-0001h5-Eu; Wed, 18 Dec 2019 10:23:21 +0000
Received: from mail-eopbgr20043.outbound.protection.outlook.com ([40.107.2.43]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWSf-0000eV-90
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:21:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lO1FhUeOr/oCQHi8dbw6ucmSsQfn2oUxekeZyBgFN4gyPokNimjQqNMZn8VDg8nz/TsbYHzp90jUGAL7itlG+dhEplz8KhmdAMWaMHhqJsf8s5iMSmLMvd9DkPhU0kwpRebm+yO0tc6Iw0ohAp/aA8MoRHncu6FOpwQMOce/lmmbQtNaiUWNRDJ5KP4tD71uthQnXXmWz3PkN/5dR3pxlBMiZ2FwGG2owkHl9ldhAxXrf05qlRWh7bRcrZBDLJkNoZRHRPidXmgIDOC9qNseZg/Qn655lC4d9lYLnbftMcytM8jVp/PPDqERuzlY7TTyjq0dyyIfeh00fYU8SJjavw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=POg/dwa+fUxV1y0b/PDHjNve0Ia1TXOhcpfZdw/KS+U=;
 b=X+8UKo5UE/jyR+4k0pTwGDoaj/hScAp6YyMuy2H/IkR+WsUtDYRgUuLdLL4+HSReCBHhWhdtJVLmVkWP/2ktmtWZT6PncYbfMxM1EARDpzzlaK42wSqmMmzmKh5D1ERfA+RODmHKgy3HNNUn2UKxvWVXArsUBQyJkgH4Ht/KoqQ2PDotOB5mXgVwJr8gErY2NmUmRjLDvAceKBKfnCSTqKHWHMqbJxz8JtqwtoY24sQkwWmc1IDFwDn+upBbYQ0ZaDoO6xUQYfa47iHiAlYy5IKhhIxFzCt6cRhjhhJimXwRSjVRbwwuhj79KRpfT83rayn+5kAk8TiBLkE4CHjpwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=POg/dwa+fUxV1y0b/PDHjNve0Ia1TXOhcpfZdw/KS+U=;
 b=agZSq8HONl2ppRbqKzVEEW1aGGcon1KAqljWEwruNs7wmO4kT7fhF9EUxSlWzftpOkSW1m+LYXEji97Rbrws3EupNNqrqYfDJYOQrF9zkOV3YYxBMTC7+5h1KB9uJJ6x3Lbv3VmJrf63LV5T8MBPahfjaG/BOkxBsgZpy8VyJrY=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5275.eurprd04.prod.outlook.com (20.176.237.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Wed, 18 Dec 2019 10:21:42 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df%6]) with mapi id 15.20.2538.019; Wed, 18 Dec 2019
 10:21:41 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH 1/3] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
Thread-Topic: [PATCH 1/3] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
Thread-Index: AQHVtYfjpDyztB44P0OqFpHCcF/sr6e/rjDQ
Date: Wed, 18 Dec 2019 10:21:41 +0000
Message-ID: <DB7PR04MB4618048D025D094618C6F99FE6530@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <1576653615-27954-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576653615-27954-2-git-send-email-qiangqing.zhang@nxp.com>
 <254925e345493019c3e1e558b37e46f2@www.loen.fr>
In-Reply-To: <254925e345493019c3e1e558b37e46f2@www.loen.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ea1d83fb-3f44-4d64-6d88-08d783a4136a
x-ms-traffictypediagnostic: DB7PR04MB5275:|DB7PR04MB5275:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5275D760D7636679BDA5F3DEE6530@DB7PR04MB5275.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1186;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(346002)(136003)(39860400002)(13464003)(189003)(199004)(478600001)(5660300002)(54906003)(7696005)(55016002)(2906002)(6916009)(7416002)(4001150100001)(8936002)(9686003)(26005)(81166006)(81156014)(8676002)(86362001)(71200400001)(66476007)(186003)(316002)(53546011)(76116006)(52536014)(33656002)(66556008)(66946007)(6506007)(4326008)(64756008)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5275;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gv4DALtAs2xf5zWR3kYmhYdEmJS5M/NKvrxAxXBTZPzRTAUeAcN6qZR7AgmT/QFXWrTMDpITjFWNspFSkK1rIIr1YBGHlLSgot0+doefaqVAkzRfedEcBy/RjK5zdsSXrnyNGL5dxwyxVX1VBpRji/Mm7ADyuNfA2zTsNLEdfWEcrsbXLpCy+HQzroO7S67/GMvDs25tu4AW8ZrtsqHp8PyNlJYxGWSyEquSyYbSs9IMNFkrO8FFnaRr0nf9Y1uhftaJT5uVO/X0uwQmSry182zQYsU43ZpAtrfvxw04WoTCHz4+1iOnNdDvdN5EsQm3Ll131y4hBo1lEONVGZlkD2VUzztiQ9axhFtmtd41JYqjt6cQGaopvte8bSDm/pdbY+YzuLHaceSznemCmVOZaSDBV2KzowbEDYAFgB4GUEUsz0lDv60EY2zKEfTPHIYLzG2CKLSRGA/6z5A//sHNaah+CcXzgTWY7oGj4vyx+yQh1pPQInfxSc29YcdraVpk
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea1d83fb-3f44-4d64-6d88-08d783a4136a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 10:21:41.9092 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bydukm1oVClcfXUmGKiYwmp5ZsMrnl9nGxJxwPTJVKndsNOjg0UKmCRNdR+MhqvFbj5GwLeOux8lfRoA02upSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5275
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_022145_331932_7DEE20AF 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Andy Duan <fugang.duan@nxp.com>, "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Aisheng Dong <aisheng.dong@nxp.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1hcmMgWnluZ2llciA8bWF6
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnlubQxMuaciDE45pelIDE3OjQ1DQo+IFRvOiBKb2Fr
aW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPg0KPiBDYzogdGdseEBsaW51dHJvbml4
LmRlOyBqYXNvbkBsYWtlZGFlbW9uLm5ldDsgcm9iaCtkdEBrZXJuZWwub3JnOw0KPiBtYXJrLnJ1
dGxhbmRAYXJtLmNvbTsgc2hhd25ndW9Aa2VybmVsLm9yZzsgcy5oYXVlckBwZW5ndXRyb25peC5k
ZTsgUy5qLg0KPiBXYW5nIDxzaGVuZ2ppdS53YW5nQG54cC5jb20+OyBrZXJuZWxAcGVuZ3V0cm9u
aXguZGU7DQo+IGZlc3RldmFtQGdtYWlsLmNvbTsgZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhw
LmNvbT47DQo+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGRldmljZXRyZWVAdmdlci5r
ZXJuZWwub3JnOw0KPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IEFuZHkg
RHVhbiA8ZnVnYW5nLmR1YW5AbnhwLmNvbT47DQo+IEFpc2hlbmcgRG9uZyA8YWlzaGVuZy5kb25n
QG54cC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMS8zXSBkdC1iaW5kaW5ncy9pcnE6IGFk
ZCBiaW5kaW5nIGZvciBOWFAgSU5UTVVYIGludGVycnVwdA0KPiBtdWx0aXBsZXhlcg0KPiANCj4g
T24gMjAxOS0xMi0xOCAwNzoyMCwgSm9ha2ltIFpoYW5nIHdyb3RlOg0KPiA+IFRoaXMgcGF0Y2gg
YWRkcyB0aGUgRFQgYmluZGluZ3MgZm9yIHRoZSBOWFAgSU5UTVVYIGludGVycnVwdA0KPiA+IG11
bHRpcGxleGVyIGZvdW5kIGluIHRoZSBpLk1YOCBmYW1pbHkgU29Dcy4NCj4gPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+ID4gLS0t
DQo+ID4gIC4uLi9pbnRlcnJ1cHQtY29udHJvbGxlci9mc2wsaW50bXV4LnR4dCAgICAgICB8IDM0
DQo+ID4gKysrKysrKysrKysrKysrKysrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzQgaW5zZXJ0
aW9ucygrKQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gPiBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvZnNsLGludG11eC50eHQNCj4gPg0K
PiA+IGRpZmYgLS1naXQNCj4gPg0KPiA+IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2ludGVycnVwdC1jb250cm9sbGVyL2ZzbCxpbnRtdXgudHgNCj4gPiB0DQo+ID4NCj4gPiBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9m
c2wsaW50bXV4LnR4DQo+ID4gdA0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXgg
MDAwMDAwMDAwMDAwLi5iZTNjNjg0OGYzNmMNCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4gKysrDQo+
ID4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xs
ZXIvZnNsLGludG11eC50eA0KPiA+IHQNCj4gPiBAQCAtMCwwICsxLDM0IEBADQo+ID4gK0ZyZWVz
Y2FsZSBJTlRNVVggaW50ZXJydXB0IG11bHRpcGxleGVyDQo+ID4gKw0KPiA+ICtSZXF1aXJlZCBw
cm9wZXJ0aWVzOg0KPiA+ICsNCj4gPiArLSBjb21wYXRpYmxlOiBTaG91bGQgYmU6DQo+ID4gKwkt
ICJmc2wsaW14LWludG11eCINCj4gPiArLSByZWc6IFBoeXNpY2FsIGJhc2UgYWRkcmVzcyBhbmQg
c2l6ZSBvZiByZWdpc3RlcnMuDQo+ID4gKy0gaW50ZXJydXB0czogU2hvdWxkIGNvbnRhaW4gdGhl
IHBhcmVudCBpbnRlcnJ1cHQgbGluZXMgKHVwIHRvIDgpDQo+ID4gdXNlZCB0bw0KPiA+ICsgIG11
bHRpcGxleCB0aGUgaW5wdXQgaW50ZXJydXB0cy4NCj4gPiArLSBjbG9ja3M6IFNob3VsZCBjb250
YWluIG9uZSBjbG9jayBmb3IgZW50cnkgaW4gY2xvY2stbmFtZXMuDQo+ID4gKy0gY2xvY2stbmFt
ZXM6DQo+ID4gKyAgIC0gImlwZyI6IG1haW4gbG9naWMgY2xvY2sNCj4gPiArLSBpbnRlcnJ1cHQt
Y29udHJvbGxlcjogSWRlbnRpZmllcyB0aGUgbm9kZSBhcyBhbiBpbnRlcnJ1cHQNCj4gPiBjb250
cm9sbGVyLg0KPiA+ICstICNpbnRlcnJ1cHQtY2VsbHM6IFNwZWNpZmllcyB0aGUgbnVtYmVyIG9m
IGNlbGxzIG5lZWRlZCB0byBlbmNvZGUNCj4gPiBhbg0KPiA+ICsgIGludGVycnVwdCBzb3VyY2Uu
IFRoZSB2YWx1ZSBtdXN0IGJlIDEuDQo+ID4gKw0KPiA+ICtPcHRpb25hbCBwcm9wZXJ0aWVzOg0K
PiA+ICsNCj4gPiArLSBmc2wsaW50bXV4X2NoYW5zOiBUaGUgbnVtYmVyIG9mIGNoYW5uZWxzIHVz
ZWQgZm9yIGludGVycnVwdA0KPiA+IHNvdXJjZS4gVGhlDQo+ID4gKyAgTWF4aW11bSB2YWx1ZSBp
cyA4Lg0KPiA+ICsNCj4gPiArRXhhbXBsZToNCj4gPiArDQo+ID4gKwlpbnRtdXhAMzc0MDAwMDAg
ew0KPiA+ICsJCWNvbXBhdGlibGUgPSAiZnNsLGlteC1pbnRtdXgiOw0KPiA+ICsJCXJlZyA9IDww
eDM3NDAwMDAwIDB4MTAwMD47DQo+ID4gKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDE2IElSUV9U
WVBFX0xFVkVMX0hJR0g+Ow0KPiA+ICsJCWNsb2NrcyA9IDwmY2xrIElNWDhRTV9DTTQwX0lQR19D
TEs+Ow0KPiA+ICsJCWNsb2NrLW5hbWVzID0gImlwZyI7DQo+ID4gKwkJaW50ZXJydXB0LWNvbnRy
b2xsZXI7DQo+ID4gKwkJI2ludGVycnVwdC1jZWxscyA9IDwxPjsNCj4gPiArCQlmc2wsaW50bXV4
X2NoYW5zID0gPDE+Ow0KPiA+ICsJfTsNCj4gPiArDQo+IA0KPiBXaGF0IEkgZG9uJ3QgdW5kZXJz
dGFuZCBpcyBob3cgdGhlIGludGVycnVwdCBkZXNjcmlwdG9yIGNhbiBpbmRpY2F0ZSB3aGljaA0K
PiBjaGFubmVsIGl0IGlzIG11bHRpcGxleGVkIG9uLiBUaGUgZHJpdmVyIGRvZXNuJ3QgbWFrZXMg
dGhpcyBjbGVhciBlaXRoZXIsIGFuZCBJDQo+IHN0cm9uZ2x5IHN1c3BlY3QgdGhhdCBpdCB3YXMg
bmV2ZXIgdGVzdGVkIHdpdGggbW9yZSB0aGFuIGEgc2luZ2xlIGNoYW5uZWwuLi4NCg0KWWVzLCB0
byBiZSBmcmFuaywgSSB0ZXN0ZWQgd2l0aCBhIHNpZ25sZSBjaGFubmVsLCBJIHdpbGwgdGFrZSB0
aGlzIGludG8gY29uc2lkZXJhdGlvbi4gVGhhbmtzLg0KDQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0g
WmhhbmcNCj4gVGhhbmtzLA0KPiANCj4gICAgICAgICAgTS4NCj4gLS0NCj4gSmF6eiBpcyBub3Qg
ZGVhZC4gSXQganVzdCBzbWVsbHMgZnVubnkuLi4NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
