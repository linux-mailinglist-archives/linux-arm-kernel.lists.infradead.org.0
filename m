Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 313D31276AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 08:45:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cijwCu0vhK3zO4YdxL9TuJwYq+ilvJ3Ri0fIffXmyng=; b=bjzJUMoZW9B7Bd
	2++Ghfsox0noBKGC/ga2D7LEc3/HFTwX6E9aBb+2aVYUfx221YAG8SOdPYK/3wz2mYiyYyNEb5xAI
	iuym/JxAguemYUODhGOapBRjvIXZLJShHDd4gAC8L3SfvUChnrtoGJMjTNMkN44bZu0FvWm8zd6Kj
	JfMy65jRu0URwiUEnmrEdSSyvIPfi21VrdGnOffpO2pT+SrotgJWB4NDMG2gIhPSWuCV98e1kzNXv
	ntbuxd2Yxw5GhMOfw5v59hY5E3Xvp3yEiBGcNaFqls+kvfZ9qBiDOa1Vg946EGAq3HlqftcVMK2k3
	vXT4EJIzgBb3uAD2+Gmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiCyH-0004uZ-3C; Fri, 20 Dec 2019 07:45:13 +0000
Received: from mail-eopbgr130057.outbound.protection.outlook.com
 ([40.107.13.57] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiCxy-0004tc-BJ
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 07:44:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W7S1w5P1cVmIDhKmRQTx4NiCA1Ior3UZHdoV+EWiX4lS6VgUF3NplOVT/E/dYiHyip4k+Pu3ZRsoHGZJ7vJkdTBZ29moh9QGH1h8+Gt2Sh0hQtKZXQ8K6oJSklvIB5MLCA2udKbmndveAqt12j7sxF/in/ZtWTNImelvu4H+qGyWp1ocoPGjxDILM9AgK8FyMd9XMoG54o+qwaJ51oSFsS8vvSQHfgfSo2Ow5aU+mIWpP5rmBb4LW2fzrvnuFgNqGHmMEGxfO0hckVjBbIY2mdt/A+ge8IoQpT+s4fEttsp1+cQel8sOTbo+NC0YaxMa0NK9qVEHCHf0CM8wjIuWlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M1rZrW7YdXIPl960aKX4BqzCNhHxgTrb686+13OLQr0=;
 b=jsgObq+3gGMhRg5M8tGpZyVBVTGljp6n9g0krRwXCB8vQCj1TdBs2GkNpJ06aHL5gjXCdyj+Zy+ncdv3noXurmOeqeGNdeggO7uQ7n6iPMjRypjfhQtxVfcqqcGSjK8YLgB6iSsM5Eut/XuGByJQ3+UyXLS+hEAXrUssOfjcJ4ggmr+lqr9oREJRUlYRgtUnXzKONlo3JiGo7hXQLn//Wxvh5ZNGHsEuPFVlV/ZBVuiTL/PMXEzK/S8mf/E3fUh+CvUt8OJ9J36NVN1pgVjWw74s3nn+sRqbKCa+B6rryCUTZJamsQXmYwrpZRSrjBRhi57E2BfZlLo/wT4ZdlkeXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M1rZrW7YdXIPl960aKX4BqzCNhHxgTrb686+13OLQr0=;
 b=iJoCSDQ62o1i/Eqv1Jmsjrnm3eY7+PoxoRqM79cvBuyQuh7QSzSD3iUZGWttgz0v7BGmxjX+F9c4GmwGEDuXD+Ddqjb1zSNAq9RVpVNyYkB0SFQQvQfryo0YFdwNRk778cmPkDEgdnVJ/LFqkQCiwksi7C7yKooSYVqXABPhbvQ=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5081.eurprd04.prod.outlook.com (20.176.236.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.20; Fri, 20 Dec 2019 07:44:48 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df%6]) with mapi id 15.20.2559.016; Fri, 20 Dec 2019
 07:44:48 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Joakim Zhang <qiangqing.zhang@nxp.com>, "maz@kernel.org" <maz@kernel.org>, 
 "tglx@linutronix.de" <tglx@linutronix.de>, "jason@lakedaemon.net"
 <jason@lakedaemon.net>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH V3 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
Thread-Topic: [PATCH V3 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
Thread-Index: AQHVtwjHFdUOM6ZScEmuNnpSa/osE6fCpASQ
Date: Fri, 20 Dec 2019 07:44:48 +0000
Message-ID: <DB7PR04MB4618D835938530D6051A02C1E62D0@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <1576827431-31942-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576827431-31942-2-git-send-email-qiangqing.zhang@nxp.com>
In-Reply-To: <1576827431-31942-2-git-send-email-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5f1b6a8e-0216-4844-8b18-08d785207d73
x-ms-traffictypediagnostic: DB7PR04MB5081:|DB7PR04MB5081:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5081E8460197B47B62807DCBE62D0@DB7PR04MB5081.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 025796F161
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(346002)(376002)(396003)(39860400002)(189003)(199004)(13464003)(52536014)(478600001)(110136005)(2906002)(33656002)(54906003)(81166006)(76116006)(316002)(8676002)(81156014)(7696005)(26005)(66946007)(66446008)(7416002)(64756008)(66556008)(66476007)(55016002)(9686003)(8936002)(71200400001)(53546011)(186003)(86362001)(5660300002)(6506007)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5081;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SuiRB7azBDkSl+xcwmAn3E7Ud9p2jeEvLOfVGegWG8qxXBMSQHieNm3l4kwC1W9irtl+aayf7DX++OTZnJLtAIb6SfpXxNDM49iUlvw6f6EDPLWkEb4+T4zngnLa43k5xx/V/PRqmdzlKx3qOUP9ED80RBfMLvYgYfI+uhcNRftrMA6mz+g0C1CI1JFR/ZtwnMHPAlq0CPrSfvibtcpQVOIFObWpsgU6B+5lqExx7GI5ZasKpmPMFOKiZgfHikps5aeOiYkewKrQ0VHFJggv8pSnWVS482OkUCPck1Jbww6xt4NbqvKfg/Y2zsE3e6ipjfhtVRwBhJKYcIYv7cWD9E4mWrgPgs748ikBE5s0tUgNHCS2ThHgdlEHWkhm8JvE9bK4olLDbZ809YfyGqOonHVRqU5Pg+21aRtQOjELTRJa+9aoOgd7lZiQb4c34xbLaZc6vkR1CdxVV0J3xiMgq3bFSEIt6Btl5rMAEHbT9JiEMmefITUQ8dIprg8DVbTH
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f1b6a8e-0216-4844-8b18-08d785207d73
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2019 07:44:48.5387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HI8Kkz3YwuZFxuHV2MG61gX6jnB4bot+fON2lfAGd4YsM2KnDrmAA5KF/GHe/xg9KPdVyC3Dn+bFtDfeNOypdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_234454_589522_F858E727 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.57 listed in list.dnswl.org]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Andy Duan <fugang.duan@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvYWtpbSBaaGFuZyA8cWlh
bmdxaW5nLnpoYW5nQG54cC5jb20+DQo+IFNlbnQ6IDIwMTnE6jEy1MIyMMjVIDE1OjM3DQo+IFRv
OiBtYXpAa2VybmVsLm9yZzsgdGdseEBsaW51dHJvbml4LmRlOyBqYXNvbkBsYWtlZGFlbW9uLm5l
dDsNCj4gcm9iaCtkdEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgc2hhd25ndW9A
a2VybmVsLm9yZzsNCj4gcy5oYXVlckBwZW5ndXRyb25peC5kZQ0KPiBDYzoga2VybmVsQHBlbmd1
dHJvbml4LmRlOyBkbC1saW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPjsNCj4gbGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZzsgQW5keSBEdWFuIDxmdWdhbmcuZHVhbkBueHAuY29tPjsNCj4g
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBKb2FraW0gWmhhbmcNCj4gPHFp
YW5ncWluZy56aGFuZ0BueHAuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggVjMgMS8yXSBkdC1iaW5k
aW5ncy9pcnE6IGFkZCBiaW5kaW5nIGZvciBOWFAgSU5UTVVYIGludGVycnVwdA0KPiBtdWx0aXBs
ZXhlcg0KPiANCj4gVGhpcyBwYXRjaCBhZGRzIHRoZSBEVCBiaW5kaW5ncyBmb3IgdGhlIE5YUCBJ
TlRNVVggaW50ZXJydXB0IG11bHRpcGxleGVyIGZvcg0KPiBpLk1YOCBmYW1pbHkgU29Dcy4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+
DQo+IC0tLQ0KPiAgLi4uL2ludGVycnVwdC1jb250cm9sbGVyL2ZzbCxpbnRtdXgudHh0ICAgICAg
IHwgMzYgKysrKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlv
bnMoKykNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NA0KPiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvZnNsLGludG11eC50eHQNCj4gDQo+IGRpZmYg
LS1naXQNCj4gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNv
bnRyb2xsZXIvZnNsLGludG11eC50eHQNCj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvZnNsLGludG11eC50eHQNCj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQNCj4gaW5kZXggMDAwMDAwMDAwMDAwLi4zZWJlOWNhYzVmMjANCj4gLS0tIC9kZXYv
bnVsbA0KPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0
LWNvbnRyb2xsZXIvZnNsLGludG11eC4NCj4gKysrIHR4dA0KPiBAQCAtMCwwICsxLDM2IEBADQo+
ICtGcmVlc2NhbGUgSU5UTVVYIGludGVycnVwdCBtdWx0aXBsZXhlcg0KPiArDQo+ICtSZXF1aXJl
ZCBwcm9wZXJ0aWVzOg0KPiArDQo+ICstIGNvbXBhdGlibGU6IFNob3VsZCBiZToNCj4gKyAgIC0g
ImZzbCxpbXgtaW50bXV4Ig0KPiArLSByZWc6IFBoeXNpY2FsIGJhc2UgYWRkcmVzcyBhbmQgc2l6
ZSBvZiByZWdpc3RlcnMuDQo+ICstIGludGVycnVwdHM6IFNob3VsZCBjb250YWluIHRoZSBwYXJl
bnQgaW50ZXJydXB0IGxpbmVzICh1cCB0byA4KSB1c2VkDQo+ICt0bw0KPiArICBtdWx0aXBsZXgg
dGhlIGlucHV0IGludGVycnVwdHMuDQo+ICstIGNsb2NrczogU2hvdWxkIGNvbnRhaW4gb25lIGNs
b2NrIGZvciBlbnRyeSBpbiBjbG9jay1uYW1lcy4NCj4gKy0gY2xvY2stbmFtZXM6DQo+ICsgICAt
ICJpcGciOiBtYWluIGxvZ2ljIGNsb2NrDQo+ICstIGludGVycnVwdC1jb250cm9sbGVyOiBJZGVu
dGlmaWVzIHRoZSBub2RlIGFzIGFuIGludGVycnVwdCBjb250cm9sbGVyLg0KPiArLSAjaW50ZXJy
dXB0LWNlbGxzOiBTcGVjaWZpZXMgdGhlIG51bWJlciBvZiBjZWxscyBuZWVkZWQgdG8gZW5jb2Rl
IGFuDQo+ICsgIGludGVycnVwdCBzb3VyY2UuIFRoZSB2YWx1ZSBtdXN0IGJlIDIuDQo+ICsgICAt
IHRoZSAxc3QgY2VsbDogaGFyZHdhcmUgaW50ZXJydXB0IG51bWJlcg0KPiArICAgLSB0aGUgMm5k
IGNlbGw6IGNoYW5uZWwgaW5kZXgsIHZhbHVlIG11c3Qgc21hbGxlciB0aGFuIGNoYW5uZWxzIHVz
ZWQNCj4gKw0KPiArT3B0aW9uYWwgcHJvcGVydGllczoNCj4gKw0KPiArLSBmc2wsaW50bXV4X2No
YW5zOiBUaGUgbnVtYmVyIG9mIGNoYW5uZWxzIHVzZWQgZm9yIGludGVycnVwdCBzb3VyY2UuDQo+
ICtUaGUNCj4gKyAgTWF4aW11bSB2YWx1ZSBpcyA4LiBJZiB0aGlzIHByb3BlcnR5IGlzIG5vdCBz
ZXQgaW4gRFQgdGhlbiBkcml2ZXINCj4gK3VzZXMNCj4gKyAgMSBjaGFubmVsIGJ5IGRlZmF1bHQu
DQo+ICsNCj4gK0V4YW1wbGU6DQo+ICsNCj4gKwlpbnRtdXhAMzc0MDAwMDAgew0KPiArCQljb21w
YXRpYmxlID0gImZzbCxpbXgtaW50bXV4IjsNCj4gKwkJcmVnID0gPDB4Mzc0MDAwMDAgMHgxMDAw
PjsNCj4gKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDE2IElSUV9UWVBFX0xFVkVMX0hJR0g+Ow0K
PiArCQljbG9ja3MgPSA8JmNsayBJTVg4UU1fQ000MF9JUEdfQ0xLPjsNCj4gKwkJY2xvY2stbmFt
ZXMgPSAiaXBnIjsNCj4gKwkJaW50ZXJydXB0LWNvbnRyb2xsZXI7DQo+ICsJCSNpbnRlcnJ1cHQt
Y2VsbHMgPSA8MT47DQpIaSBNYXJjLA0KDQpJIGFtIHNvIHNvcnJ5LCB0aGlzIHNob3VsZCBiZSAj
aW50ZXJydXB0LWNlbGxzID0gPDI+LCB3aWxsIGNvcnJlY3QgaXQgaW4gbmV4dCB2ZXJzaW9uLg0K
DQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0gWmhhbmcNCj4gKwl9Ow0KPiArDQo+IC0tDQo+IDIuMTcu
MQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
