Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A74617CAA9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 03:10:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JntgWi3PLGtrFA9+AWzp7IKaeK7ua251E09FQD4EWPg=; b=bw8NK+f9M34DVx
	3LGnQr9lQgnb+JbS6wPCsrMjpnqqLxIoE6Vfro0kIGPEAwbT4Lb46Au5u0SButh+VdefeeMqGipHX
	/Dg2mfXuMO0Pu72AYhlUUeK6DDVSiXDrq/L2g3Ao+jeezpwl9hqj6rGSpdbyYu+Lgzem4NrOo8zuq
	RNM4SZ8lF/ZoasJLbgchSToqgXla33b1bPspyI86Auee19wvnvdKsCmhUfh49kBXnGGGLx+GMQy22
	2cXmjsoH7TxuYM4TTk2KdtR6h8tqOVSeCPcVpz/p3awV500XXV4BLr451L2pXC0QZ3QTOE2RltIRe
	bb4XXpFwiU3k+q+IEkRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAOuS-0005uG-Oo; Sat, 07 Mar 2020 02:09:48 +0000
Received: from mail-eopbgr50073.outbound.protection.outlook.com ([40.107.5.73]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAOuK-0005tM-4j
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 02:09:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UV1ZOdozDjml3HHLwcFKqV92KVucYunWkI3LAEwpjj+D2YuB3uFFFgYaoKXqCBxzFINnyXtEk+I91dVGCLzFAetKmeXzZuopTVJanaKRAutL/vzHBr8zKXX6eqq/g6w9793VmW69EtFRoqt3jIaYbhgWLStet+dLTXztByzfQilnfcOSQlfvOuBC5G0chDwkmXXJmLrqoNWWiK15r4z5p72m1avfK2VHaryGMub05VnrEkf41UZToEOb05CA0czmf5urPqW+8s3urQIGWVyZv8B5gyEGnrvkaMcE3+KOlabA87QT10lfeFv2I4kr1+EWZnTd4Z9xW8BeLSNxspXInA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vh8e5ReA7lxS3NA+fdZxDQL+LxaRTRiVPwRn5z2tWLE=;
 b=QPfatNdknzTBY7AU3Ko+zhMqmZcVTjadHC4ASlihebPqK74SCKJGodIuEMLlLZf8MwEEdK8cSC5F2638mAZXYLknUqRy+2WI6s/xLBT0/SsHIS9IUkxM79ZUyoShpwHpCqtP8Lm+4n3lZN83kwC9u6pTpAaX2ypARRVqW7zn0nFiB2hSUijpGNKzskDJGfQeNwsKzNpCvXAwpBZNpjGx2JGyy5/elTZCmhBCvUH/mb/t3MRt8/hAaqxE+x467y0iOH991mvCwbSR/J56LaWbRFqVp4iTSNYxdLG5es9qw95jMQY9SmEZtwpQmRDohkYAYn0CPJhAZUckeQNwrnPzew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vh8e5ReA7lxS3NA+fdZxDQL+LxaRTRiVPwRn5z2tWLE=;
 b=hafatfYx9cKrmaFLqPH9B4lL29aKfmKDmZvo3/Cijqq4tGN2xjnTAsWncx1a2JdsJ3xmn7dxW4jtdzKxll0pOfdiUTjGYiQ0FJbDcFc2Q3glbGz2FXQN/rAFknEpIBMwMcaiQmB4TTdMW6bwQvxo6uC7n2s37GQwzJDjF9U/hgM=
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com (20.177.55.205) by
 VI1PR04MB4766.eurprd04.prod.outlook.com (20.177.49.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Sat, 7 Mar 2020 02:09:33 +0000
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::10f0:dc6d:c9f9:edfc]) by VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::10f0:dc6d:c9f9:edfc%5]) with mapi id 15.20.2793.013; Sat, 7 Mar 2020
 02:09:33 +0000
From: Peng Ma <peng.ma@nxp.com>
To: Michael Walle <michael@walle.cc>, "dmaengine@vger.kernel.org"
 <dmaengine@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [EXT] [PATCH 2/2] arm64: dts: ls1028a: add "fsl,vf610-edma"
 compatible
Thread-Topic: [EXT] [PATCH 2/2] arm64: dts: ls1028a: add "fsl,vf610-edma"
 compatible
Thread-Index: AQHV8/lsXqSm1fChNEm1yZWBD/JxAKg8YRCg
Date: Sat, 7 Mar 2020 02:09:32 +0000
Message-ID: <VI1PR04MB44312A940BC5BFC7F13A5706EDE00@VI1PR04MB4431.eurprd04.prod.outlook.com>
References: <20200306205403.29881-1-michael@walle.cc>
 <20200306205403.29881-2-michael@walle.cc>
In-Reply-To: <20200306205403.29881-2-michael@walle.cc>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.ma@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8c7a3f05-1c63-4008-e1cf-08d7c23c93ee
x-ms-traffictypediagnostic: VI1PR04MB4766:|VI1PR04MB4766:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4766DAFCE1EDDEEC6026EAA1EDE00@VI1PR04MB4766.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 03355EE97E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(366004)(136003)(396003)(189003)(199004)(2906002)(110136005)(6506007)(54906003)(86362001)(316002)(64756008)(66476007)(66446008)(66556008)(44832011)(4326008)(26005)(71200400001)(52536014)(33656002)(5660300002)(76116006)(55016002)(9686003)(7696005)(8936002)(186003)(8676002)(81156014)(81166006)(66946007)(478600001)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4766;
 H:VI1PR04MB4431.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Lk62mPr1XEUB/PrNDPmJbzSgEYBVYMW2AFCBi1KV9vHU5VClqtciiT2IWCibC29Fb0ih0Qep9ny6xeScZm7prNmX0s1c5yJ3T0rE2Ps/sg58cfp+OQeOq52Fv9aEzznj+nDgzQjzKsWJNRaFZGwyJ/9bC2qXKAx0XKZEqkDieNZ7D7Csqu5wzDunbv3wt/67/09PtmmOQ90p7Je1YzsLNQ4ONWY0DpWShuRsbcfp3SpH9K0+KUFoVxL2c3hlLHAKqWKBw/FBhHF0NNzgQIwC/NXy1H95ubLz2HHjpjBlEQBpyaxlKA+fnHkswZCcYH98uAqli7TeuNdIEOZn31qLNMuy2VoSgCXPiKRPqCLMKoWNsTpg9ynR6l4VMZ4QUPWavmy2lN8WnID+y1z9GQEk9Cz6XFL9B4VXmVNxh/Jzh0ytSRisffCGUbhnLnbj0NUDZgPStrpnc9lIRzEkAry7ELaJ1WTs+IjqPoBiiSFo5a2V0Ur0hAeD07EYKqaUFQSJ
x-ms-exchange-antispam-messagedata: dSza8f4qs8M50n8TyjOVuqgF7+F2pjtVhQgsnCq0a6vJKCxlDuICOkM/FOxpfz+c818leNhu+oFaTF5Ahs8WLNAMy6msjPbIzy/vnelBgSuA1IzvQ/BBnnAB42fRkbEj9/7WtNEHqtYpmJVIzBfLnQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c7a3f05-1c63-4008-e1cf-08d7c23c93ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2020 02:09:33.1107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FNtWcSR8AHB9N1ftdQIUtxlpVf5e44xxbkM4dDiWMLJhT5TDMWgrZl0idAUUZ29z
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4766
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_180940_186320_D562A6F6 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.73 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IE1pY2hhZWwgV2FsbGUgPG1p
Y2hhZWxAd2FsbGUuY2M+DQo+U2VudDogMjAyMMTqM9TCN8jVIDQ6NTQNCj5UbzogZG1hZW5naW5l
QHZnZXIua2VybmVsLm9yZzsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7DQo+bGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
DQo+Q2M6IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+OyBSb2IgSGVycmluZyA8cm9iaCtk
dEBrZXJuZWwub3JnPjsgTWFyaw0KPlJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPjsgU2hh
d24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPjsgTGVvIExpDQo+PGxlb3lhbmcubGlAbnhwLmNv
bT47IFBlbmcgTWEgPHBlbmcubWFAbnhwLmNvbT47IE1pY2hhZWwgV2FsbGUNCj48bWljaGFlbEB3
YWxsZS5jYz4NCj5TdWJqZWN0OiBbRVhUXSBbUEFUQ0ggMi8yXSBhcm02NDogZHRzOiBsczEwMjhh
OiBhZGQgImZzbCx2ZjYxMC1lZG1hIg0KPmNvbXBhdGlibGUNCj4NCj5DYXV0aW9uOiBFWFQgRW1h
aWwNCj4NCj5UaGUgYm9vdGxvYWRlciBkb2VzIHRoZSBJT01NVSBmaXh1cCBhbmQgZHluYW1pY2Fs
bHkgYWRkcyB0aGUgImlvbW11cyINCj5wcm9wZXJ0eSB0byBkZXZpY2VzIGFjY29yZGluZyB0byBp
dHMgY29tcGF0aWJsZSBzdHJpbmcuIEluIGNhc2Ugb2YgdGhlIGVETUENCj5jb250cm9sbGVyIHRo
aXMgcHJvcGVydHkgaXMgbWlzc2luZy4gQWRkIGl0LiBBZnRlciB0aGF0IHRoZSBJT01NVSB3aWxs
IHdvcmsgd2l0aA0KPnRoZSBlRE1BIGNvcmUuDQo+DQo+U2lnbmVkLW9mZi1ieTogTWljaGFlbCBX
YWxsZSA8bWljaGFlbEB3YWxsZS5jYz4NCj4tLS0NCj4gYXJjaC9hcm02NC9ib290L2R0cy9mcmVl
c2NhbGUvZnNsLWxzMTAyOGEuZHRzaSB8IDIgKy0NCj4gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+DQo+ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kNCj5iL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kNCj5pbmRleCBiMTUyZmE5MGNmNWMuLmFhNDY3YmZmMjIw
OSAxMDA2NDQNCj4tLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4
YS5kdHNpDQo+KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEu
ZHRzaQ0KPkBAIC00NDcsNyArNDQ3LDcgQEANCj4NCj4gICAgICAgICAgICAgICAgZWRtYTA6IGRt
YS1jb250cm9sbGVyQDIyYzAwMDAgew0KPiAgICAgICAgICAgICAgICAgICAgICAgICNkbWEtY2Vs
bHMgPSA8Mj47DQo+LSAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJmc2wsbHMx
MDI4YS1lZG1hIjsNCj4rICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImZzbCxs
czEwMjhhLWVkbWEiLA0KPisgImZzbCx2ZjYxMC1lZG1hIjsNCkhpIE1pY2hhZWwsDQoNCllvdSBz
aG91bGQgY2hhbmdlIGl0IG9uIGJvb3Rsb2FkZXIgaW5zdGVhZCBvZiBrZXJuZWwsIFNvbWUgUmVn
IG9mIExTMTAyOGEgaXMgZGlmZmVyZW50DQpmcm9tIG90aGVycywgU28gd2UgdXNlZCBjb21wYXRp
YmxlICJmc2wsbHMxMDI4YS1lZG0iIHRvIGRpc3Rpbmd1aXNoICIgZnNsLHZmNjEwLWVkbWEiLg0K
DQpUaGFua3MsDQpQZW5nDQo+ICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweDIy
YzAwMDAgMHgwIDB4MTAwMDA+LA0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwweDAg
MHgyMmQwMDAwIDB4MCAweDEwMDAwPiwNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
MHgwIDB4MjJlMDAwMCAweDAgMHgxMDAwMD47DQo+LS0NCj4yLjIwLjENCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
