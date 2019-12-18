Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C36481245D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 12:34:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCweGayRwWZavScVF0sNR0qfmWi/3n5D/QlVJ3rJm+w=; b=BogUnBQfeackvc
	lyI0NTp/gBlUvpeFzdsO3cfXpz8eQp9Ofmf6B4lg3QCvLslUz9sHMHEmvBNfr5TMZU13a7///68dV
	Jm75aA+qhnKo39B3cwiNPcTHo/PPcheMxl2tOZn+B0lEFqenpbeQK/pyR2Q1DS5EQRI2PVAQwbBL2
	9rEPoYLIA2Y68xB2FApaoUpCj4NGEgJlecKuvfnhXMUK0P2KPGqUgmFwAYUHzcePvnRIld3IvSH0j
	l1Xg9k41JHrG+K2txddZC4DPmOTgQ9kTvtaxcOtZykoJGWplMqxGWuopS2gLeVaIjlWePNbLHuBAF
	nqW24EfE3DmONrZwRbGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihXaz-0003LC-4o; Wed, 18 Dec 2019 11:34:25 +0000
Received: from mail-eopbgr130084.outbound.protection.outlook.com
 ([40.107.13.84] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihXaq-0003Kp-AQ
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 11:34:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S0oJDE89bU5CnwlCyWG83rP7Gb6yn91/3zItJzP/krNHLtDzJdWhlQ8UI1MW/zQTPsv5npcth+dkRmRwoIvVDgi4TiKaTvTVDLSR4Db0gv4jovmLHLS+2gmaHmJ28riX6KrT4qFdEIFemj9EuUYca2UBZvw/xRmdmkgTe4lOU6EbHcw0RUuf85V3MztoyOm2GBPIcil1NznEYXVjHcsNJwNp+5p4f529x6Y5GWo3WYSR2B16waSgqKp01Hr7hIeslzJBzCdhONycnN6+f0aG3J3rsj3w4CKqxhBwlN49SvYVzdpF2T3jnH29MV9M0HemxTIh71EQd40pVJlsbcI8CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IqMSasjFf7i9PtkbrhK4WtJ/gDK0kzuGNjtwOvgG7fc=;
 b=ckgj1+gqQ3SlcV7VKBzJVC/w8z9yo5wqg0Q6PC4MpN0KjM9kRmsFb6+gab+JC9gVcW08q8rhCenTvMtYU1IVsHB9GqLEepOE1T8uWSVlwg5Xy1Ym1yJ+uMXqlK6GvDc18BFQjbzrj4whdGSW6iZ/Jky/nTpm+dzBwEiCWY1Rzl0PHrKUUU+3E5w3c9ITPV+ifl7WfyWId2LKT/oPw3bUB2KGSf2WSUpu6KqWbuSDVpa1aaIYBuq6wRRS0m8VslZ/qU76DuiQTL9EwVAUv/lvcU6lrQVr42ZxSRiG0+6ZyH8tDPEyZQnBBlajPgbRLC9gxjUPvN6yubok+cB1nS3utw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IqMSasjFf7i9PtkbrhK4WtJ/gDK0kzuGNjtwOvgG7fc=;
 b=hn/s2O7i/+gIZZ3+eJn/gnXFr9X4q7byM54Ue5uiwYBmE3/4DgF+hN7zprT/5QQ2X+jd/8vPFinZDE7rVP9HYPWxY/gai/sYb/KrLxaiiG4OL5Pm2B8i+7USbdAJqF66qT1AIyevDAPOkzH3FhEtrvJ7TB52D16tGgSwbocHlV4=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4617.eurprd04.prod.outlook.com (52.135.138.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Wed, 18 Dec 2019 11:34:12 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df%6]) with mapi id 15.20.2538.019; Wed, 18 Dec 2019
 11:34:12 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH 1/3] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
Thread-Topic: [PATCH 1/3] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
Thread-Index: AQHVtYfjpDyztB44P0OqFpHCcF/sr6e/rjDQgAARxsA=
Date: Wed, 18 Dec 2019 11:34:11 +0000
Message-ID: <DB7PR04MB4618957D7423FFBAECD1EC7EE6530@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <1576653615-27954-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576653615-27954-2-git-send-email-qiangqing.zhang@nxp.com>
 <254925e345493019c3e1e558b37e46f2@www.loen.fr>
 <DB7PR04MB4618048D025D094618C6F99FE6530@DB7PR04MB4618.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB4618048D025D094618C6F99FE6530@DB7PR04MB4618.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: feff008d-c095-4fcb-572a-08d783ae3487
x-ms-traffictypediagnostic: DB7PR04MB4617:|DB7PR04MB4617:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4617DD6FAC75F7B85F76A079E6530@DB7PR04MB4617.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:229;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(376002)(136003)(346002)(13464003)(189003)(199004)(8676002)(5660300002)(316002)(81156014)(186003)(81166006)(4001150100001)(478600001)(26005)(2940100002)(71200400001)(8936002)(33656002)(52536014)(86362001)(53546011)(6916009)(7416002)(66946007)(76116006)(54906003)(66476007)(64756008)(66446008)(66556008)(7696005)(6506007)(9686003)(2906002)(4326008)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4617;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hnD1fRa5MGGAR3To0rkatmTT9Vd91F+R23FSBJE02fMFFsh6OIQZtZlB5wn9G5vSlKN5k5BsABi/DiuTVXNaqAC3rMvG/KaIzmnbfYU/xFhmXlGDlrrJS8mSgAOXA6qSYBICuZUuxRCwjg3G84Rdq/9zp6YoVlyoAVmDyMlgmNGN4AACnkZOQH2BbYCNr54FJmbS2Dv0TT2KWduvgeaQCmO7YlQ9//L8XSEoh+1ZLEtCot0GGjdDHw7a/F3hDBi3y+qRkdml5+qxWbqeqR2AmVfz5fuCbE9HPXo5Muc046UpDsXHzlgpSDwU6ho2w14ipd2saGp9C3XOrKeEoYZFk5xokzhgWTTyUl/IbnUBsno0LcSe6YSarfhseFVP40xQBY73zxO2auNg06PpKaGCu0aLJDHaprH3B6I0+twiv+q1E91ewVCPLFSvCzvREtINsywXcqHHRWTPigtmi0L79ZOkMWqbICl7CbrC8Xdlq9F0GmoJLhie/QxztYvwPhHP
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: feff008d-c095-4fcb-572a-08d783ae3487
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 11:34:11.8821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LtiQeQ4gsvHFHX8XJULVu5cLGx7qCRL17Lq23AIXk2yCDXH1k8P2YE7qrhaMVNyBzmTWo9G3I52n1XqRkGlYqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4617
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_033416_535242_226D293B 
X-CRM114-Status: GOOD (  26.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.84 listed in list.dnswl.org]
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvYWtpbSBaaGFuZyA8cWlh
bmdxaW5nLnpoYW5nQG54cC5jb20+DQo+IFNlbnQ6IDIwMTnlubQxMuaciDE45pelIDE4OjIyDQo+
IFRvOiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPg0KPiBDYzogdGdseEBsaW51dHJvbml4
LmRlOyBqYXNvbkBsYWtlZGFlbW9uLm5ldDsgcm9iaCtkdEBrZXJuZWwub3JnOw0KPiBtYXJrLnJ1
dGxhbmRAYXJtLmNvbTsgc2hhd25ndW9Aa2VybmVsLm9yZzsgcy5oYXVlckBwZW5ndXRyb25peC5k
ZTsgUy5qLg0KPiBXYW5nIDxzaGVuZ2ppdS53YW5nQG54cC5jb20+OyBrZXJuZWxAcGVuZ3V0cm9u
aXguZGU7DQo+IGZlc3RldmFtQGdtYWlsLmNvbTsgZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhw
LmNvbT47DQo+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGRldmljZXRyZWVAdmdlci5r
ZXJuZWwub3JnOw0KPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IEFuZHkg
RHVhbiA8ZnVnYW5nLmR1YW5AbnhwLmNvbT47DQo+IEFpc2hlbmcgRG9uZyA8YWlzaGVuZy5kb25n
QG54cC5jb20+DQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggMS8zXSBkdC1iaW5kaW5ncy9pcnE6IGFk
ZCBiaW5kaW5nIGZvciBOWFAgSU5UTVVYIGludGVycnVwdA0KPiBtdWx0aXBsZXhlcg0KPiANCj4g
DQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBNYXJjIFp5bmdpZXIg
PG1hekBrZXJuZWwub3JnPg0KPiA+IFNlbnQ6IDIwMTnlubQxMuaciDE45pelIDE3OjQ1DQo+ID4g
VG86IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+ID4gQ2M6IHRnbHhA
bGludXRyb25peC5kZTsgamFzb25AbGFrZWRhZW1vbi5uZXQ7IHJvYmgrZHRAa2VybmVsLm9yZzsN
Cj4gPiBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgc2hhd25ndW9Aa2VybmVsLm9yZzsgcy5oYXVlckBw
ZW5ndXRyb25peC5kZTsNCj4gUy5qLg0KPiA+IFdhbmcgPHNoZW5naml1LndhbmdAbnhwLmNvbT47
IGtlcm5lbEBwZW5ndXRyb25peC5kZTsNCj4gPiBmZXN0ZXZhbUBnbWFpbC5jb207IGRsLWxpbnV4
LWlteCA8bGludXgtaW14QG54cC5jb20+Ow0KPiA+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5v
cmc7IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOw0KPiA+IGxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZzsgQW5keSBEdWFuIDxmdWdhbmcuZHVhbkBueHAuY29tPjsNCj4gPiBB
aXNoZW5nIERvbmcgPGFpc2hlbmcuZG9uZ0BueHAuY29tPg0KPiA+IFN1YmplY3Q6IFJlOiBbUEFU
Q0ggMS8zXSBkdC1iaW5kaW5ncy9pcnE6IGFkZCBiaW5kaW5nIGZvciBOWFAgSU5UTVVYDQo+ID4g
aW50ZXJydXB0IG11bHRpcGxleGVyDQo+ID4NCj4gPiBPbiAyMDE5LTEyLTE4IDA3OjIwLCBKb2Fr
aW0gWmhhbmcgd3JvdGU6DQo+ID4gPiBUaGlzIHBhdGNoIGFkZHMgdGhlIERUIGJpbmRpbmdzIGZv
ciB0aGUgTlhQIElOVE1VWCBpbnRlcnJ1cHQNCj4gPiA+IG11bHRpcGxleGVyIGZvdW5kIGluIHRo
ZSBpLk1YOCBmYW1pbHkgU29Dcy4NCj4gPiA+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb2FraW0g
WmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgLi4uL2lu
dGVycnVwdC1jb250cm9sbGVyL2ZzbCxpbnRtdXgudHh0ICAgICAgIHwgMzQNCj4gPiA+ICsrKysr
KysrKysrKysrKysrKysNCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKQ0K
PiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NA0KPiA+ID4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2ZzbCxpbnRtdXgudHgNCj4gPiA+IHQNCj4g
PiA+DQo+ID4gPiBkaWZmIC0tZ2l0DQo+ID4gPg0KPiA+ID4gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvZnNsLGludG11eC4NCj4gPiA+IHR4
DQo+ID4gPiB0DQo+ID4gPg0KPiA+ID4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvZnNsLGludG11eC4NCj4gPiA+IHR4DQo+ID4gPiB0DQo+
ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5iZTNj
Njg0OGYzNmMNCj4gPiA+IC0tLSAvZGV2L251bGwNCj4gPiA+ICsrKw0KPiA+ID4gYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvZnNsLGludG11
eC4NCj4gPiA+IHR4DQo+ID4gPiB0DQo+ID4gPiBAQCAtMCwwICsxLDM0IEBADQo+ID4gPiArRnJl
ZXNjYWxlIElOVE1VWCBpbnRlcnJ1cHQgbXVsdGlwbGV4ZXINCj4gPiA+ICsNCj4gPiA+ICtSZXF1
aXJlZCBwcm9wZXJ0aWVzOg0KPiA+ID4gKw0KPiA+ID4gKy0gY29tcGF0aWJsZTogU2hvdWxkIGJl
Og0KPiA+ID4gKwktICJmc2wsaW14LWludG11eCINCj4gPiA+ICstIHJlZzogUGh5c2ljYWwgYmFz
ZSBhZGRyZXNzIGFuZCBzaXplIG9mIHJlZ2lzdGVycy4NCj4gPiA+ICstIGludGVycnVwdHM6IFNo
b3VsZCBjb250YWluIHRoZSBwYXJlbnQgaW50ZXJydXB0IGxpbmVzICh1cCB0byA4KQ0KPiA+ID4g
dXNlZCB0bw0KPiA+ID4gKyAgbXVsdGlwbGV4IHRoZSBpbnB1dCBpbnRlcnJ1cHRzLg0KPiA+ID4g
Ky0gY2xvY2tzOiBTaG91bGQgY29udGFpbiBvbmUgY2xvY2sgZm9yIGVudHJ5IGluIGNsb2NrLW5h
bWVzLg0KPiA+ID4gKy0gY2xvY2stbmFtZXM6DQo+ID4gPiArICAgLSAiaXBnIjogbWFpbiBsb2dp
YyBjbG9jaw0KPiA+ID4gKy0gaW50ZXJydXB0LWNvbnRyb2xsZXI6IElkZW50aWZpZXMgdGhlIG5v
ZGUgYXMgYW4gaW50ZXJydXB0DQo+ID4gPiBjb250cm9sbGVyLg0KPiA+ID4gKy0gI2ludGVycnVw
dC1jZWxsczogU3BlY2lmaWVzIHRoZSBudW1iZXIgb2YgY2VsbHMgbmVlZGVkIHRvIGVuY29kZQ0K
PiA+ID4gYW4NCj4gPiA+ICsgIGludGVycnVwdCBzb3VyY2UuIFRoZSB2YWx1ZSBtdXN0IGJlIDEu
DQo+ID4gPiArDQo+ID4gPiArT3B0aW9uYWwgcHJvcGVydGllczoNCj4gPiA+ICsNCj4gPiA+ICst
IGZzbCxpbnRtdXhfY2hhbnM6IFRoZSBudW1iZXIgb2YgY2hhbm5lbHMgdXNlZCBmb3IgaW50ZXJy
dXB0DQo+ID4gPiBzb3VyY2UuIFRoZQ0KPiA+ID4gKyAgTWF4aW11bSB2YWx1ZSBpcyA4Lg0KPiA+
ID4gKw0KPiA+ID4gK0V4YW1wbGU6DQo+ID4gPiArDQo+ID4gPiArCWludG11eEAzNzQwMDAwMCB7
DQo+ID4gPiArCQljb21wYXRpYmxlID0gImZzbCxpbXgtaW50bXV4IjsNCj4gPiA+ICsJCXJlZyA9
IDwweDM3NDAwMDAwIDB4MTAwMD47DQo+ID4gPiArCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTYg
SVJRX1RZUEVfTEVWRUxfSElHSD47DQo+ID4gPiArCQljbG9ja3MgPSA8JmNsayBJTVg4UU1fQ000
MF9JUEdfQ0xLPjsNCj4gPiA+ICsJCWNsb2NrLW5hbWVzID0gImlwZyI7DQo+ID4gPiArCQlpbnRl
cnJ1cHQtY29udHJvbGxlcjsNCj4gPiA+ICsJCSNpbnRlcnJ1cHQtY2VsbHMgPSA8MT47DQo+ID4g
PiArCQlmc2wsaW50bXV4X2NoYW5zID0gPDE+Ow0KPiA+ID4gKwl9Ow0KPiA+ID4gKw0KPiA+DQo+
ID4gV2hhdCBJIGRvbid0IHVuZGVyc3RhbmQgaXMgaG93IHRoZSBpbnRlcnJ1cHQgZGVzY3JpcHRv
ciBjYW4gaW5kaWNhdGUNCj4gPiB3aGljaCBjaGFubmVsIGl0IGlzIG11bHRpcGxleGVkIG9uLiBU
aGUgZHJpdmVyIGRvZXNuJ3QgbWFrZXMgdGhpcw0KPiA+IGNsZWFyIGVpdGhlciwgYW5kIEkgc3Ry
b25nbHkgc3VzcGVjdCB0aGF0IGl0IHdhcyBuZXZlciB0ZXN0ZWQgd2l0aCBtb3JlIHRoYW4gYQ0K
PiBzaW5nbGUgY2hhbm5lbC4uLg0KPiANCj4gWWVzLCB0byBiZSBmcmFuaywgSSB0ZXN0ZWQgd2l0
aCBhIHNpZ25sZSBjaGFubmVsLCBJIHdpbGwgdGFrZSB0aGlzIGludG8NCj4gY29uc2lkZXJhdGlv
bi4gVGhhbmtzLg0KSGkgTWFyYywNCg0KSSB0ZXN0ZWQgY2hhbm5lbHMgZnJvbSAxIHRvIDgsIGFu
ZCBubyBpc3N1ZSBmb3VuZC4NCg0KV2UgcmVnaXN0ZXIgaXJxIGhhbmRsZXIgd2l0aCBpcnFfc2V0
X2NoYWluZWRfaGFuZGxlcl9hbmRfZGF0YSgpLCBzbyB0aGUgaW50ZXJydXB0IGRlc2NyaXB0b3Ig
Y291bGQgZmluZCB0aGUgY29udHJvbGxlcidzIHByaXZhdGUgZGF0YSwgYW5kIGNoYW5uZWwgaW5k
ZXggaXMgb25lIHBhcnQgb2YgcHJpdmF0ZSBkYXRhLg0KSSB0aGluayB0aGlzIGNhbiBleHBsYWlu
IHRoZSBpbnRlcnJ1cHQgZGVzY3JpcHRvciBob3cgdG8gaW5kaWNhdGUgd2hpY2ggY2hhbm5lbCBp
dCBpcyBtdWx0aXBsZXhlZC4NCg0KPiBCZXN0IFJlZ2FyZHMsDQo+IEpvYWtpbSBaaGFuZw0KPiA+
IFRoYW5rcywNCj4gPg0KPiA+ICAgICAgICAgIE0uDQo+ID4gLS0NCj4gPiBKYXp6IGlzIG5vdCBk
ZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5ueS4uLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
