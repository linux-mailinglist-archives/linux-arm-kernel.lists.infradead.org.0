Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5D713B7B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 03:28:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3AGhYEX8/ps6RQV6+GODrzVNC5+S9qhKodjKhssmH7I=; b=p9f3zOBEXRf660
	1B3v/9ioLS8VeDPOmoqUpK5f5P0+s0JClEPa2dfxfxyJG6icS9GyW3cU2gaoIbehXf0IKZKsKMSm7
	SqlwZkKh/OobUwbhZ724LumKHDRDjxofFmwpsDsBC2mBm2i9108jEL6MvssqQs/CiQR24Jxn+yFxr
	/lCjIoyQruySVQYkQVxYQ/+91c6RSvF5OzDgyNS4kza8f4s1HQqEtYfyhoPClPw0wUsKowpyCbh/q
	96+pdAIE9i3Q4tOeN1qsKJjD+09DhsRG/44HrgDgzM8Fyxo8kqpcBMa3XNGkGwCMaIz2CRqLX4596
	jMbhdOU37qdpdJNHgT4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irYPq-0004Sa-D4; Wed, 15 Jan 2020 02:28:18 +0000
Received: from mail-db8eur05on2061.outbound.protection.outlook.com
 ([40.107.20.61] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irYPe-0004Qt-4p
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 02:28:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QUuTdiM66NL8jY827OH7jpEoszI4cmsGVe6KlyGbsCeQ3s1MT7/r/V8Fcaoi1ZJkt3kPDwifIXtTniUrFRSlV6490cQoE0PMSPrGuUhQk6jcnEJSZ9AB14ytbcSb1GR2Z0oP5IsxpmIhq3IDfAUxtWS9ImDTlpgmBntKqjQicY9YlOjKx+tqZLdlBb+EFgxMjJAjF93A3T80ZAcpQw3sUZYRG69SBoER1c0sFOampSVtElm7dgTR38AeF6IkkeQZbrNjMEX3GIZSwq5OR/GzKdVLK5+FwcKReyf3YQ7u4zOOOcK7ot5mWbDO3Wp04p7hBty2KYcH7mHPhmguD3A4dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lEwBJ7jKPIBgZD+6omL/EENOldJh/YOXOYwIYbH6h4M=;
 b=i7FAEvAyKAdpr3sXCvtNetim9hkDwRtXItqH9JdTbXqhMPPFQr1Na+zyRuMbQCpzo+hwEhwaf7qCPVjkv5QAFxAHPT2CKsNWvf81trc1CeIqsJY+as5uOqBeK0LN5iC+Mf1i5pcZ6Q443Ojiv0eXIzch4Tx7G1/WRz4sbRw6VibRwg/gIT8REB2/8sMEhMJUZ6brYeCLgQUKyhh37elPuLVAJtFQd9hvNKWWHbuFoOELhgNQJT+mwbC+AeTjYn06qvL3/bF7RvuqXKbKX18BvvOIumZRQHiZ/uz05+8v4QlSP/oAFW/zuoIGYMH0mMvRJsKFwh9Z+wYtLAoDEpVrqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lEwBJ7jKPIBgZD+6omL/EENOldJh/YOXOYwIYbH6h4M=;
 b=W5kREdKrpKpsXmN9AChaB9YjZbj6Ij4CeULxBAzbCPFXOHztIZJ2ezXEF21Eql4o+XZNCx6ZEUUE17ZUQfkKrjSjH4wO+aVeBqNALFQfPjoU6StO5Wn+bL2mq8kRLk+t85uxZ0LvR8JzNBWxTJ4cmb5afPrGJZja1H6rbm/+eLU=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4603.eurprd04.prod.outlook.com (52.135.138.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.13; Wed, 15 Jan 2020 02:27:49 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca%7]) with mapi id 15.20.2644.015; Wed, 15 Jan 2020
 02:27:49 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH V4 RESEND 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
Thread-Topic: [PATCH V4 RESEND 1/2] dt-bindings/irq: add binding for NXP
 INTMUX interrupt multiplexer
Thread-Index: AQHVyeDroUXufH5Iq0+ZDldne7GnO6fpFh8AgABbg+CAAF+x4IAAZBUAgADNU8A=
Date: Wed, 15 Jan 2020 02:27:49 +0000
Message-ID: <DB7PR04MB461847A1442FD2991B26115FE6370@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <1578899321-1365-1-git-send-email-qiangqing.zhang@nxp.com>
 <1578899321-1365-2-git-send-email-qiangqing.zhang@nxp.com>
 <20200113210344.GA4615@bogus>
 <DB7PR04MB461863B36162325EF1BB6251E6340@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <DB7PR04MB4618E5E7ACE8698BBE24E989E6340@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <CAL_Jsq++ZtPCV58eg-O5t2+L82MCsX8Tp262nsO4mNykVZmxYw@mail.gmail.com>
In-Reply-To: <CAL_Jsq++ZtPCV58eg-O5t2+L82MCsX8Tp262nsO4mNykVZmxYw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 20bb1363-9f0e-403b-d0e0-08d79962841f
x-ms-traffictypediagnostic: DB7PR04MB4603:|DB7PR04MB4603:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB46033E9EB774090863EA25ADE6370@DB7PR04MB4603.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(136003)(39860400002)(396003)(189003)(199004)(7416002)(54906003)(7696005)(53546011)(316002)(6506007)(26005)(52536014)(478600001)(6916009)(2906002)(86362001)(45080400002)(64756008)(76116006)(66556008)(8936002)(8676002)(66476007)(66446008)(4326008)(66946007)(33656002)(5660300002)(81166006)(81156014)(55016002)(186003)(71200400001)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4603;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: moXn/J2vTF8LTICLwfjQ4M24nMO4UayIacdd7lxJB5n0ucQdbH7s27QWDxRXshpUYkD7J+9/RPwitc4PyisLICAM0A+qMNf5jeF8hTWyG669k4VquLKnhA873SgJYQWCtz1+G2wUHBdTsPMmOENBOZceSvRgxUdLpZXMfnHcq6oI/fU8uQgJjdZGbNCEjkmR/v39ay/5WYQ5J+WsDFvSaMZ2H3jW/a7ty+MjW/k1VVS848HOj3U3Ihd6uInPmCTBkqzB+gqQE9yxD2K+yyKHZx5SDqDh9S0F7VCEn+qf1xxAXt9kb4BlZsLpdEEDn/tqtP34NPvJLXAntUPgXL4Lj5ecQysqzG2R3oMVa+/vN/BnH8z9Ieto6qSwsgJdOtnydrs1rOdXZj3owSDVOJtwG/7N07xT40+DS6zZoIWPnARAD+9p6HYhXJNXRF9/Poz1
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20bb1363-9f0e-403b-d0e0-08d79962841f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 02:27:49.7117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: edhm9RQAAtCKhbsmxjRbpM7gvsQYD73MSxqnOTJVrzzNpKVRDq2GG68CjDDn25Uk3m04s36pSL5YqGsiU8Yj4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4603
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_182806_332770_70AAD7D5 
X-CRM114-Status: GOOD (  24.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 "festevam@gmail.com" <festevam@gmail.com>, Andy Duan <fugang.duan@nxp.com>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "maz@kernel.org" <maz@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFJvYiBIZXJyaW5nIDxyb2Jo
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMjDlubQx5pyIMTTml6UgMjI6MTINCj4gVG86IEpvYWtp
bSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+IENjOiBtYXpAa2VybmVsLm9yZzsg
amFzb25AbGFrZWRhZW1vbi5uZXQ7IHRnbHhAbGludXRyb25peC5kZTsNCj4gbWFyay5ydXRsYW5k
QGFybS5jb207IHNoYXduZ3VvQGtlcm5lbC5vcmc7IHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU7DQo+
IGtlcm5lbEBwZW5ndXRyb25peC5kZTsgZmVzdGV2YW1AZ21haWwuY29tOyBsaW51eC1rZXJuZWxA
dmdlci5rZXJuZWwub3JnOw0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBkbC1saW51eC1pbXgNCj4gPGxpbnV4LWlteEBu
eHAuY29tPjsgQW5keSBEdWFuIDxmdWdhbmcuZHVhbkBueHAuY29tPg0KPiBTdWJqZWN0OiBSZTog
W1BBVENIIFY0IFJFU0VORCAxLzJdIGR0LWJpbmRpbmdzL2lycTogYWRkIGJpbmRpbmcgZm9yIE5Y
UA0KPiBJTlRNVVggaW50ZXJydXB0IG11bHRpcGxleGVyDQo+IA0KPiBPbiBUdWUsIEphbiAxNCwg
MjAyMCBhdCAyOjIyIEFNIEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+
IHdyb3RlOg0KPiA+DQo+ID4NCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4g
PiBGcm9tOiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPg0KPiA+ID4gU2Vu
dDogMjAyMOW5tDHmnIgxNOaXpSAxMDo0NA0KPiA+ID4gVG86IFJvYiBIZXJyaW5nIDxyb2JoQGtl
cm5lbC5vcmc+DQo+ID4gPiBDYzogbWF6QGtlcm5lbC5vcmc7IGphc29uQGxha2VkYWVtb24ubmV0
OyB0Z2x4QGxpbnV0cm9uaXguZGU7DQo+ID4gPiBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgc2hhd25n
dW9Aa2VybmVsLm9yZzsgcy5oYXVlckBwZW5ndXRyb25peC5kZTsNCj4gPiA+IGtlcm5lbEBwZW5n
dXRyb25peC5kZTsgZmVzdGV2YW1AZ21haWwuY29tOw0KPiA+ID4gbGludXgta2VybmVsQHZnZXIu
a2VybmVsLm9yZzsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7DQo+ID4gPiBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGRsLWxpbnV4LWlteA0KPiA+ID4gPGxpbnV4LWlt
eEBueHAuY29tPjsgQW5keSBEdWFuIDxmdWdhbmcuZHVhbkBueHAuY29tPg0KPiA+ID4gU3ViamVj
dDogUkU6IFtQQVRDSCBWNCBSRVNFTkQgMS8yXSBkdC1iaW5kaW5ncy9pcnE6IGFkZCBiaW5kaW5n
IGZvcg0KPiA+ID4gTlhQIElOVE1VWCBpbnRlcnJ1cHQgbXVsdGlwbGV4ZXINCj4gPiA+DQo+ID4g
Pg0KPiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gPiBGcm9tOiBSb2Ig
SGVycmluZyA8cm9iaEBrZXJuZWwub3JnPg0KPiA+ID4gPiBTZW50OiAyMDIw5bm0MeaciDE05pel
IDU6MDQNCj4gPiA+ID4gVG86IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+
DQo+ID4gPiA+IENjOiBtYXpAa2VybmVsLm9yZzsgamFzb25AbGFrZWRhZW1vbi5uZXQ7IHRnbHhA
bGludXRyb25peC5kZTsNCj4gPiA+ID4gbWFyay5ydXRsYW5kQGFybS5jb207IHNoYXduZ3VvQGtl
cm5lbC5vcmc7DQo+IHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU7DQo+ID4gPiA+IGtlcm5lbEBwZW5n
dXRyb25peC5kZTsgZmVzdGV2YW1AZ21haWwuY29tOw0KPiA+ID4gPiBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsNCj4gPiA+ID4gbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBkbC1saW51eC1pbXgNCj4gPiA+ID4gPGxp
bnV4LWlteEBueHAuY29tPjsgQW5keSBEdWFuIDxmdWdhbmcuZHVhbkBueHAuY29tPg0KPiA+ID4g
PiBTdWJqZWN0OiBSZTogW1BBVENIIFY0IFJFU0VORCAxLzJdIGR0LWJpbmRpbmdzL2lycTogYWRk
IGJpbmRpbmcNCj4gPiA+ID4gZm9yIE5YUCBJTlRNVVggaW50ZXJydXB0IG11bHRpcGxleGVyDQo+
ID4gPiA+DQo+ID4gPiA+IE9uIE1vbiwgSmFuIDEzLCAyMDIwIGF0IDAzOjA4OjQwUE0gKzA4MDAs
IEpvYWtpbSBaaGFuZyB3cm90ZToNCj4gPiA+ID4gPiBUaGlzIHBhdGNoIGFkZHMgdGhlIERUIGJp
bmRpbmdzIGZvciB0aGUgTlhQIElOVE1VWCBpbnRlcnJ1cHQNCj4gPiA+ID4gPiBtdWx0aXBsZXhl
ciBmb3IgaS5NWDggZmFtaWx5IFNvQ3MuDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPg0KPiA+ID4gPiA+IC0t
LQ0KPiA+ID4gPiA+ICAuLi4vaW50ZXJydXB0LWNvbnRyb2xsZXIvZnNsLGludG11eC55YW1sICAg
ICAgfCA3Nw0KPiA+ID4gKysrKysrKysrKysrKysrKysrKw0KPiA+ID4gPiA+ICAxIGZpbGUgY2hh
bmdlZCwgNzcgaW5zZXJ0aW9ucygrKSAgY3JlYXRlIG1vZGUgMTAwNjQ0DQo+ID4gPiA+ID4gRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2ZzbCxp
bnRtdQ0KPiA+ID4gPiA+IHgueWENCj4gPiA+ID4gPiBtbA0KPiA+ID4gPg0KPiA+ID4gPiBQbGVh
c2UgcnVuICdtYWtlIGR0X2JpbmRpbmdfY2hlY2snIGFuZCBmaXggdGhlIGVycm9yczoNCj4gPiA+
ID4NCj4gPiA+ID4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1j
b250cm9sbGVyL2ZzbCxpbnRtdXgueWFtbDoNCj4gPiA+ID4gd2hpbGUgc2Nhbm5pbmcgZm9yIHRo
ZSBuZXh0IHRva2VuIGZvdW5kIGNoYXJhY3RlciB0aGF0IGNhbm5vdCBzdGFydCBhbnkNCj4gdG9r
ZW4NCj4gPiA+ID4gICBpbiAiPHVuaWNvZGUgc3RyaW5nPiIsIGxpbmUgNjAsIGNvbHVtbiAxDQo+
ID4gPiBHb3QgaXQuIFdpbGwga2VlcCBpbiBtaW5kLiBUaGFua3MuDQo+ID4gPg0KPiA+ID4gPiA+
DQo+ID4gPiA+ID4gZGlmZiAtLWdpdA0KPiA+ID4gPiA+IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2ZzbCxpbnRtdXguDQo+ID4gPiA+ID4g
eWENCj4gPiA+ID4gPiBtbA0KPiA+ID4gPiA+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2ZzbCxpbnRtdXguDQo+ID4gPiA+ID4geWENCj4g
PiA+ID4gPiBtbA0KPiA+ID4gPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gPiA+ID4gaW5k
ZXggMDAwMDAwMDAwMDAwLi40ZGJhNTMyZmUwYmQNCj4gPiA+ID4gPiAtLS0gL2Rldi9udWxsDQo+
ID4gPiA+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVw
dC1jb250cm9sbGVyL2ZzbA0KPiA+ID4gPiA+ICsrKyAsaW50DQo+ID4gPiA+ID4gKysrIG11DQo+
ID4gPiA+ID4gKysrIHgueWFtbA0KPiA+ID4gPiA+IEBAIC0wLDAgKzEsNzcgQEANCj4gPiA+ID4g
PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTItQ2xhdXNlKSAl
WUFNTCAxLjINCj4gPiA+ID4gPiArLS0tDQo+ID4gPiA+ID4gKyRpZDoNCj4gPiA+ID4gPiAraHR0
cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHAlM0El
MkYlDQo+ID4gPiA+ID4gKzJGZGUNCj4gPiA+ID4gPiArdmkNCj4gPiA+ID4gPg0KPiA+ID4gPg0K
PiA+ID4NCj4gK2NldHJlZS5vcmclMkZzY2hlbWFzJTJGaW50ZXJydXB0LWNvbnRyb2xsZXIlMkZm
c2wlMkNpbnRtdXgueWFtbCUyMyYNCj4gPiA+ICthDQo+ID4gPiA+IG0NCj4gPiA+ID4gPg0KPiA+
ID4gPg0KPiA+ID4NCj4gK3A7ZGF0YT0wMiU3QzAxJTdDcWlhbmdxaW5nLnpoYW5nJTQwbnhwLmNv
bSU3Q2RjMjQ0M2RjMTExMTQ5ODA1YzcNCj4gPiA+ID4gMjA4ZDcNCj4gPiA+ID4gPg0KPiA+ID4g
Pg0KPiA+ID4NCj4gKzk4NmMxNTdmJTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUl
N0MwJTdDMCU3QzYzNzE0NTQ2DQo+ID4gPiA+IDIyOTE5MzQNCj4gPiA+ID4gPg0KPiA+ID4gPg0K
PiA+ID4NCj4gKzQ5MiZhbXA7c2RhdGE9QW80aXVqMkQ0OEtBZUMlMkZ2UXZKcVVVeEdKRWpTWTBI
eUw1WmxUMlhyU3JnJTNEJg0KPiA+ID4gPiBhbXA7cmUNCj4gPiA+ID4gPiArc2VydmVkPTANCj4g
PiA+ID4gPiArJHNjaGVtYToNCj4gPiA+ID4gPiAraHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJv
dGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHAlM0ElMkYlDQo+ID4gPiA+ID4gKzJGZGUNCj4g
PiA+ID4gPiArdmkNCj4gPiA+ID4gPg0KPiA+ID4gPg0KPiA+ID4NCj4gK2NldHJlZS5vcmclMkZt
ZXRhLXNjaGVtYXMlMkZjb3JlLnlhbWwlMjMmYW1wO2RhdGE9MDIlN0MwMSU3Q3FpYQ0KPiA+ID4g
PiBuZ3FpbmcNCj4gPiA+ID4gPg0KPiA+ID4gPg0KPiA+ID4NCj4gKy56aGFuZyU0MG54cC5jb20l
N0NkYzI0NDNkYzExMTE0OTgwNWM3MjA4ZDc5ODZjMTU3ZiU3QzY4NmVhMWQzYg0KPiA+ID4gPiBj
MmI0YzYNCj4gPiA+ID4gPg0KPiA+ID4gPg0KPiA+ID4NCj4gK2ZhOTJjZDk5YzVjMzAxNjM1JTdD
MCU3QzAlN0M2MzcxNDU0NjIyOTE5MzQ0OTImYW1wO3NkYXRhPVlvSGINCj4gPiA+ID4gVE81QzhO
bHENCj4gPiA+ID4gPiArWVlvV1ROdWZhSXhudmR0UFVaYUt6dndLNDlJOVpkYyUzRCZhbXA7cmVz
ZXJ2ZWQ9MA0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArdGl0bGU6IEZyZWVzY2FsZSBJTlRNVVgg
aW50ZXJydXB0IG11bHRpcGxleGVyDQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICttYWludGFpbmVy
czoNCj4gPiA+ID4gPiArICAtIE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+DQo+ID4gPiA+
ID4gKw0KPiA+ID4gPiA+ICtwcm9wZXJ0aWVzOg0KPiA+ID4gPiA+ICsgIGNvbXBhdGlibGU6DQo+
ID4gPiA+ID4gKyAgICBpdGVtczoNCj4gPiA+ID4gPiArICAgICAgY29uc3Q6IGZzbCxpbXgtaW50
bXV4DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICsgIHJlZzoNCj4gPiA+ID4gPiArICAgIG1heEl0
ZW1zOiAxDQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICsgIGludGVycnVwdHM6DQo+ID4gPiA+ID4g
KyAgICBtaW5JdGVtczogMQ0KPiA+ID4gPiA+ICsgICAgbWF4SXRlbXM6IDgNCj4gPiA+ID4gPiAr
ICAgIGRlc2NyaXB0aW9uOiB8DQo+ID4gPiA+ID4gKyAgICAgIFNob3VsZCBjb250YWluIHRoZSBw
YXJlbnQgaW50ZXJydXB0IGxpbmVzICh1cCB0byA4KSB1c2VkIHRvDQo+IG11bHRpcGxleA0KPiA+
ID4gPiA+ICsgICAgICB0aGUgaW5wdXQgaW50ZXJydXB0cy4NCj4gPiA+ID4gPiArDQo+ID4gPiA+
ID4gKyAgaW50ZXJydXB0LWNvbnRyb2xsZXI6IHRydWUNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4g
KyAgJyNpbnRlcnJ1cHQtY2VsbHMnOg0KPiA+ID4gPiA+ICsgICAgY29uc3Q6IDINCj4gPiA+ID4g
PiArDQo+ID4gPiA+ID4gKyAgY2xvY2tzOg0KPiA+ID4gPiA+ICsgICAgbWF4SXRlbXM6IDENCj4g
PiA+ID4gPiArICAgIGRlc2NyaXB0aW9uOiBpcGcgY2xvY2suDQo+ID4gPiA+ID4gKw0KPiA+ID4g
PiA+ICsgIGNsb2NrLW5hbWVzOg0KPiA+ID4gPiA+ICsgICAgaXRlbXM6DQo+ID4gPiA+ID4gKyAg
ICAgIGNvbnN0OiBpcGcNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gKyAgZnNsLGludG11eF9jaGFu
czoNCj4gPiA+ID4NCj4gPiA+ID4gRG9uJ3QgdXNlICdfJyBpbiBwcm9wZXJ0eSBuYW1lcy4NCj4g
PiA+IEdvdCBpdC4NCj4gPiA+DQo+ID4gPiA+IElzIHRoaXMgYW55IGRpZmZlcmVudCBmcm9tIHRo
ZSBsZW5ndGggb2YgJ2ludGVycnVwdHMnIHdoaWNoIHlvdSBjYW4gY291bnQ/DQo+ID4gPiBBIGJp
dCBkaWZmZXJlbnQuIFN1Y2ggYXMsIHRoZSBsZW5ndGggb2YgJ2ludGVycnVwdHMnIGlzIDgsIGJ1
dCB3ZQ0KPiA+ID4gY2FuIHNldCBmc2wsaW50bXV4X2NoYW5zIHZhbHVlIGlzIDQuIFRoYXQgbWVh
bnMgdGhlcmUgYXJlIDgNCj4gPiA+IGNoYW5uZWxzLCBidXQgYWN0dWFsbHkgd2Ugb25seSB1c2Ug
NCBjaGFubmVscy4NCj4gPiA+IElmIHlvdSB0aGluayB0aGlzIG1ha2Ugbm8gc2Vuc2UsIGR1ZSB0
byB3ZSBjYW4gYXNzaWduIDQgaXRlbXMgZm9yDQo+ID4gPiAnaW50ZXJydXB0cycgdG8gZ2V0IHRo
ZSBzYW1lIHJlc3VsdC4gU28gd2UgY2FuIGNvdW50IHRoZSBsZW5ndGggb2YNCj4gPiA+ICdpbnRl
cnJ1cHRzJyB0byBnZXQgdGhlIGNoYW5uZWxzIGNvbmZpZ3VyZWQsIHRoZW4gdGhpcyBwcm9wZXJ0
eSBpcyBubyBuZWVkLg0KPiA+ID4gV2hpY2ggb25lIGRvIHlvdSB0aGluayBpcyBiZXR0ZXI/DQo+
ID4gPiAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSAxNiBJUlFfVFlQRV9MRVZF
TF9ISUdIPiwNCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxHSUNfU1BJIDE3IElS
UV9UWVBFX0xFVkVMX0hJR0g+LA0KPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgPEdJ
Q19TUEkgMTggSVJRX1RZUEVfTEVWRUxfSElHSD4sDQo+ID4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICA8R0lDX1NQSSAxOSBJUlFfVFlQRV9MRVZFTF9ISUdIPiwNCj4gPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDxHSUNfU1BJIDIwIElSUV9UWVBFX0xFVkVMX0hJR0g+LA0KPiA+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgPEdJQ19TUEkgMjEgSVJRX1RZUEVfTEVWRUxf
SElHSD4sDQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8R0lDX1NQSSAyMiBJUlFf
VFlQRV9MRVZFTF9ISUdIPiwNCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxHSUNf
U1BJIDIzIElSUV9UWVBFX0xFVkVMX0hJR0g+Ow0KPiA+ID4gICAgICAgICAgICAgICBmc2wsaW50
bXV4X2NoYW5zID0gPDQ+Ow0KPiA+DQo+ID4gT25lIG1vcmUgYWRkLCB0aGUgbnVtYmVyIG9mIGNo
YW5uZWxzIGlzIGZpeGVkIHRvIDguIEl0IHdpbGwgbWFrZSBtb3JlDQo+ID4gY2xlYXIgdG8gdXNl
cnMgdGhhdCBpdCBzdXBwb3J0cyA4IGNoYW5uZWxzIHdpdGggOCBpdGVtcyBmb3IgJ2ludGVycnVw
dHMnLCBhbmQNCj4gdXNlcnMgY2FuIGRlY2lkZSBob3cgbWFueSBjaGFubmVscyB0aGV5IHVzZSB3
aXRoICdmc2wsaW50bXV4X2NoYW5zJyBwcm9wZXJ0eS4NCj4gDQo+IEhvdyBkb2VzIG9uZSBkZWNp
ZGUgaG93IG1hbnk/IFdoeSB3b3VsZCB5b3Ugbm90IHVzZSBhcyBtYW55IGNoYW5uZWxzIGFzDQo+
IHBvc3NpYmxlIChvdGhlciB0aGFuIG11eGluZyBpbnRlcnJ1cHRzIG9yIG5vdCBkb2Vzbid0IHJl
YWxseSBtYWtlIGEgYml0DQo+IGRpZmZlcmVuY2UgaW4gc2VydmljaW5nIG92ZXJoZWFkKT8NCj4g
DQo+IElmIHlvdSB3YW50ZWQgdG8gY29uZmlndXJlIGhvdyBtYW55IHBhcmVudCBpbnRlcnJ1cHRz
LCB3b3VsZG4ndCB5b3UgYWxzbyB3YW50DQo+IHRvIGNvbmZpZ3VyZSB0aGUgcm91dGluZyBvZiBj
aGlsZCBpbnRlcnJ1cHRzIHRvIHNwZWNpZmljIHBhcmVudCBpbnRlcnJ1cHRzPw0KPiANCj4gU28g
SSB3b3VsZCBkcm9wIHRoaXMgcHJvcGVydHkuIFlvdSBjYW4gZGVmaW5lIGJvdGggaG93IG1hbnkg
cGFyZW50cyBhbmQgdGhlDQo+IHJvdXRpbmcgd2l0aCBpbnRlcnJ1cHQtbWFwIHByb3BlcnR5LCB0
aG91Z2ggSSB3b3VsZCBub3QgZG8gdGhhdCB1bnRpbCB5b3UgaGF2ZQ0KPiBhIHJlYWwgbmVlZC4N
Cg0KVGhhbmtzIFJvYi4gQWdyZWUuIEkgd2lsbCB1cGRhdGUgYm90aCBiaW5kaW5ncyBhbmQgZHJp
dmVyLg0KDQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0gWmhhbmcNCj4gUm9iDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
