Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E41D1AD5C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 07:50:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xd9FQOuVmgBNyt7HNhTgk1yiB0lNjH211QKPVIf4WO4=; b=e+2XYauc5XspLt
	rE7kTxkWWpg2eUVLqZ+1E8AdlUMUarmlHmU0dHen5A9wRYCexPNXMMYRfgoSITNKLWq9yUphHOVob
	PvGZpfp9tRkxIoe0VBEBP0UJrOymCAj39Y8VMHcpqF9V2IL6LNG2CI0h8SHC3jqUQeoLif+IsmXFY
	CeAoMflx7ww+UqK/qc6+oICYwsem7CMgqsITKRxMy/Rv0gOp4oo2y3m73ZgvuBOGo7VlP3QqNff1d
	Qu3zQ/M8PMHeU2F0M8ZEIs10V6cpGuMgCZ5VXBM+dmLFDEfBHkGMAHgOG/fp4YLAAn4A68RJzLd/t
	Q3koxrTSRbeZKXzQXyGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPJsw-0002LK-IF; Fri, 17 Apr 2020 05:49:54 +0000
Received: from mail-eopbgr80089.outbound.protection.outlook.com ([40.107.8.89]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPJsn-0002Kt-4Z
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 05:49:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D/r6UQYsIpTw1fi0Ws9dTj5qWJuazVM7Gv5J3x4l/l+bVFhv6WSgEfO+aOklAcQNqXoMoeHgIpIG8uWD+5g0UjnQHfxw5sCHUjEzdIe2s++3Ui4bwXAJ6KIHJ2TkTyyngTntN16wulGd8uUpGTxODC2D69LjTQ6j3XC/2Y4Xnnn5N83Y06iVP05w732e8kow8+MdRWcSVN2kCYol99TaPoCfCDm6heNA7OGcP/Rgm/Veggs/CSuhGLSYeWgtV0SpNt02XTGBwpOrikImt/tfMrQyOv7bb2e+u1fp9VmYwuyZnIDq+dVZEdKO6GRWZ9YfF77i+s+IcvU1xTN2M5Znjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=29rOfipcqqVtjBv3QdahC9hylIjlxQO7+6RnTyT6/G0=;
 b=Sq8swW/LGKpYprcu0nhTE3ShY0f751xJt5EQz1cahoKIzm8UDbXZz/sOYgNMOc+mcUP9OeeK6PjM7027eo1stLdJ94pw8g8VgJjsrr0wJMKTBFhj7Db9VnZx2zg85hleQQKqytR2YCU4tFOUtDgcU1zEmcp1uufgVYkudZ+F1visNgpPVrj/nLLgrNUdnG6kN58KRj4vxx8DPZr8Q4iYFBc7gll62dU/+sCB591xEJRJzylYu/gQS6VGutd2AppB13mMPVFeKDsvfP7HI3851SKWTYcG5sRva7d3zTfIMo2/ip/X4T3m741p2mRtriXM1Xjbr/1942wXRbzrFYjztA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=29rOfipcqqVtjBv3QdahC9hylIjlxQO7+6RnTyT6/G0=;
 b=UZa49erTp02DaAyf9TSKPgf+Erx+lGD8H4QaUDRvJdMgncGaxQNZYY5ccHsK03GVmK2bdIzSOq4vyLy0i+7BR2giLZhXlePhEXk1+E7W755Tct36xbs9nGuviuE3U+e1ak3H0Xjo2sJulzH4hQbVBkrGBwpZqCkq+0IiwKh7+gI=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6668.eurprd04.prod.outlook.com (2603:10a6:10:10b::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.20; Fri, 17 Apr
 2020 05:49:41 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%8]) with mapi id 15.20.2921.027; Fri, 17 Apr 2020
 05:49:41 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: John Garry <john.garry@huawei.com>, "irogers@google.com"
 <irogers@google.com>
Subject: RE: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
Thread-Topic: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
Thread-Index: AQHV6W3A3nevwmck+keoVVW6IJgc3agqKT2AgAAQDjCAAeWxAIAA772QgAAzaoCAAAYD8IAAflQAgDNsawCADJBnsIAARCOAgADH/+CAAH3ngIAAD3DwgArgwQCAAWzPUIAAldwAgADjz4A=
Date: Fri, 17 Apr 2020 05:49:41 +0000
Message-ID: <DB8PR04MB67952380E7240167C7E81178E6D90@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <20200222104621.2258-1-qiangqing.zhang@nxp.com>
 <DB7PR04MB4618D2E1892120EB659B8695E6EC0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <2f81eb7a-a6e4-1cc6-cd0a-ca3d749bd552@huawei.com>
 <DB7PR04MB4618C0A8DD9BAB2A529CDCECE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <a2cc0772-4f5d-aba3-1f5c-7d4eef7a3f72@huawei.com>
 <DB7PR04MB461803AD15E47AA880F0915DE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <55836919-41b5-0834-f7a7-1a2a34535677@huawei.com>
 <bd67910e-1522-39cd-5527-b9b18f3da96d@huawei.com>
 <DB8PR04MB6795996085AD2167E2358907E6C30@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <ccab39b0-c84f-e529-4067-07466b5433a1@huawei.com>
 <VI1PR04MB68000808CEE4BC23403C35A0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
 <ca2db002-975a-ffe0-2dfc-c85f4e6205bb@huawei.com>
 <VI1PR04MB6800F2A5949F0AFAF2E82CE0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
 <0b3999b8-c307-6b4a-1a1b-e90b45f50b61@huawei.com>
 <DB8PR04MB67957F63165ACC0483F6AE39E6D80@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <8341b035-2fac-52dd-45d1-2bf6f5ea4ba4@huawei.com>
In-Reply-To: <8341b035-2fac-52dd-45d1-2bf6f5ea4ba4@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 13c5aef4-c2d0-4bb9-0942-08d7e2931fd6
x-ms-traffictypediagnostic: DB8PR04MB6668:|DB8PR04MB6668:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB66682854BD28B751007AF9B8E6D90@DB8PR04MB6668.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0376ECF4DD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(396003)(366004)(39860400002)(346002)(136003)(81156014)(8676002)(55016002)(76116006)(8936002)(45080400002)(478600001)(33656002)(9686003)(53546011)(966005)(71200400001)(5660300002)(54906003)(110136005)(66946007)(52536014)(66446008)(83080400001)(4326008)(66476007)(86362001)(64756008)(66556008)(26005)(7696005)(2906002)(316002)(186003)(7416002)(6506007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n45tSn+7W3+VUYMQySmfgwzHNUoBhdXA948Vx0jafmA4Bw7uQrUY04RwT5PsJZw58M+4fUAYMki6iE/mfQBUX+3E/ND7aaVXSkdFOi5ZD7Vup7wk6DtbtMwZuKJmuTqj0z4dOf7KebLl3rv8A/D7TylzTJtOz0o08haA4MOatz3/k3d43yMp5PDs4NUxmVmu6bgitQYtsNq/YD6kl1ZczdBcUTzRhOBEw3Vy6y94ynGgtK6pjgSbBG2KMOvgNInJ4iy/BkV9es2mHVTFqNpaCg+dgFcFFbS83w7unP02ZO6ntQTwZt52JXZmeRBPpISY7WialLKJAUc+ItkaNX8kXzjrv3yCD6wO/81+R2nfLpHAD06JSPBy05daJv0t13DwIBswewjJzGUGXGRRG4qDQvKJNImwMbCUiVk0KyYfuaoiyHLzvsSzWvXwjPGpCtZKkG0kJ4uFnv8VRkCjBNYQLoFWNdEtHxRFkKzey+VSjChplnx2ldIrDPBx6QOK400aGRqgs6Y4jgI1/qQ52KETxQ==
x-ms-exchange-antispam-messagedata: F9tGsRktuA8gtHGw7josZEAK8gBspkAvds2cJfP/Wfe/E1ciBGjEcp0/v/aRGQ0Xmrkr5Y97vdONXXBsIHs7kniwfLqeJk5LgE9nGDAkaeEcU6UDGLK3olImle4tD4hnrlwlZ5+ZbQ/k3KAeFKmqfw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13c5aef4-c2d0-4bb9-0942-08d7e2931fd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2020 05:49:41.6199 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZGeobrUbBV4Z4jASXh0roiK3+TmQubmOT0tIY6vb0jM6MxauWOwhAeISeGmZ+O9GaIN50upoqXVlcycb1CNYAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6668
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_224945_270862_3A0150FD 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Zhangshaokun <zhangshaokun@hisilicon.com>, "will@kernel.org" <will@kernel.org>,
 Linuxarm <linuxarm@huawei.com>, "acme@kernel.org" <acme@kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Jiri Olsa <jolsa@redhat.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvaG4gR2FycnkgPGpvaG4u
Z2FycnlAaHVhd2VpLmNvbT4NCj4gU2VudDogMjAyMOW5tDTmnIgxN+aXpSAwOjEwDQo+IFRvOiBK
b2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPjsgaXJvZ2Vyc0Bnb29nbGUuY29t
DQo+IENjOiB3aWxsQGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOyBhY21lQGtlcm5l
bC5vcmc7DQo+IGxpbnV4LXBlcmYtdXNlcnNAdmdlci5rZXJuZWwub3JnOyBkbC1saW51eC1pbXgg
PGxpbnV4LWlteEBueHAuY29tPjsgSmlyaSBPbHNhDQo+IDxqb2xzYUByZWRoYXQuY29tPjsgWmhh
bmdzaGFva3VuIDx6aGFuZ3NoYW9rdW5AaGlzaWxpY29uLmNvbT47DQo+IExpbnV4YXJtIDxsaW51
eGFybUBodWF3ZWkuY29tPjsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMC82XSBwZXJmL2lteF9kZHI6IEFkZCBuYW1lc3BhY2UgZm9y
IGkuTVg4IEREUiBQZXJmDQo+IA0KPiArIElhbiAocGxlYXNlIGNoZWNrIHRoZSBwYXRjaCBhdCB0
aGUgYm90dG9tLCB0aGFua3MpDQo+IA0KPiBPbiAxNi8wNC8yMDIwIDA4OjE1LCBKb2FraW0gWmhh
bmcgd3JvdGU6DQo+ID4+ID8NCj4gPj4NCj4gPj4gSWYgdGhhdCBkb2Vzbid0IHdvcmssIHRoZW4g
SSdsbCB0cnkgdGhpcyBteXNlbGYuDQo+ID4gSGkgSm9obiwNCj4gPg0KPiA+IEl0IHN0aWxsIGNh
bm5vdCB3b3JrIHdpdGggdGhpcyBjb2RlIGNoYW5nZS4NCj4gPg0KPiANCj4gU28gSSBnb3QgYSBT
TU1VdjMgUE1DRyB0ZXN0IG1ldHJpYyB3b3JraW5nIGhlcmU6DQo+IA0KPiBodHRwczovL2V1cjAx
LnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZnaXRo
dWIuYw0KPiBvbSUyRmhpc2lsaWNvbiUyRmtlcm5lbC1kZXYlMkZjb21taXRzJTJGcHJpdmF0ZS10
b3BpYy1wZXJmLTUuNy1zeXMtcG11LWUNCj4gdmVudHMtdjEtZGVidWcmYW1wO2RhdGE9MDIlN0Mw
MSU3Q3FpYW5ncWluZy56aGFuZyU0MG54cC5jb20lN0NlNTcNCj4gNTZhYjVlYzU3NGE3M2Y2Yzgw
OGQ3ZTIyMGJjYzElN0M2ODZlYTFkM2JjMmI0YzZmYTkyY2Q5OWM1YzMwMTYzNSUNCj4gN0MwJTdD
MCU3QzYzNzIyNjUwMjU0MDQwMTQzOCZhbXA7c2RhdGE9ajJYSW9WR3Y5a3ZkREliWDlVU3lJbk1J
DQo+IG1hciUyRjV2QjdkYjV1RTNVMUp5MCUzRCZhbXA7cmVzZXJ2ZWQ9MA0KPiANCj4gYXMgZm9s
bG93czoNCj4gDQo+IGpvaG5AdWJ1bnR1On4vcGVyZiBsaXN0IG1ldHJpYw0KPiANCj4gTGlzdCBv
ZiBwcmUtZGVmaW5lZCBldmVudHMgKHRvIGJlIHVzZWQgaW4gLWUpOg0KPiANCj4gTWV0cmljczoN
Cj4gDQo+ICAgIHNtbXV2M19wbWNnLmZha2UNCj4gICAgICAgICBbU01NVXYzIFBNQ0cgZmFrZSBt
ZXRyaWNdDQo+IA0KPiBqb2huQHVidW50dTp+L3N1ZG8gLi9wZXJmIHN0YXQgLWEgLU0gc21tdXYz
X3BtY2cuZmFrZSBzbGVlcCAxDQo+IA0KPiAgIFBlcmZvcm1hbmNlIGNvdW50ZXIgc3RhdHMgZm9y
ICdzeXN0ZW0gd2lkZSc6DQo+IA0KPiAgICAgNTMxNTEwICAgICAgc21tdXYzX3BtY2cudHJhbnNh
Y3Rpb24gICg0OS45MCUpDQo+IDEyNDkxNDE5MyAgICAgIHNtbXV2M19wbWNnLmN5Y2xlcyAgICAg
ICAoNDkuOTAlKQ0KPiAgICAgNTMxMzMxICAgICAgc21tdXYzX3BtY2cudHJhbnNhY3Rpb24gICg1
MC4yOSUpDQo+IDEyNDg3OTg4NyAgICAgIHNtbXV2M19wbWNnLmN5Y2xlcyAgICAgICAoNTAuMjkl
KQ0KPiAgICAgNTMxMjY5ICAgICAgc21tdXYzX3BtY2cudHJhbnNhY3Rpb24gICg1MC40NSUpDQo+
IDEyNDg2NzM4OCAgICAgIHNtbXV2M19wbWNnLmN5Y2xlcyAgICAgICAoNTAuNDUlKQ0KPiAgICAg
NTMxMzcyICAgICAgc21tdXYzX3BtY2cudHJhbnNhY3Rpb24gICg1MC40NSUpDQo+IDEyNDg5Njcy
MyAgICAgIHNtbXV2M19wbWNnLmN5Y2xlcyAgICAgICAoNTAuNDUlKQ0KPiAgICAgNTMxNDMxICAg
ICAgc21tdXYzX3BtY2cudHJhbnNhY3Rpb24gICg1MC4xMiUpDQo+IDEyNDkwMTcwMCAgICAgIHNt
bXV2M19wbWNnLmN5Y2xlcyAgICAgICAoNTAuMTIlKQ0KPiAgICAgNTMxNTc0ICAgICAgc21tdXYz
X3BtY2cudHJhbnNhY3Rpb24gICg0OS43MiUpDQo+IDEyNDkyNDIzMSAgICAgIHNtbXV2M19wbWNn
LmN5Y2xlcyAgICAgICAoNDkuNzIlKQ0KPiAgICAgNTMxNTk4ICAgICAgc21tdXYzX3BtY2cudHJh
bnNhY3Rpb24gICg0OS41NiUpDQo+IDEyNDkxNjkxNCAgICAgIHNtbXV2M19wbWNnLmN5Y2xlcyAg
ICAgICAoNDkuNTYlKQ0KPiAgICAgNTMxNDQwICAgICAgc21tdXYzX3BtY2cudHJhbnNhY3Rpb24g
ICg0OS41NiUpDQo+IDEyNDkwMjQ3MyAgICAgIHNtbXV2M19wbWNnLmN5Y2xlcyAgICAgICAoNDku
NTYlKQ0KPiANCj4gICAgICAgICAxLjAwMTE2NzI0NiBzZWNvbmRzIHRpbWUgZWxhcHNlZA0KPiAN
Cj4gU28geW91IGNhbiBjb21wYXJlIHRoaXMgdG8geW91cnMuDQo+IA0KPiBJIGRpZCBoYXZlIHRv
IGZpeCB3aGF0IGxvb2tzIGxpa2UgYSBidWcgaW4gbWFpbmxpbmUgb24gdGhhdCBicmFuY2g6DQoN
ClRlc3RlZCBvbiBwcml2YXRlLXRvcGljLXBlcmYtNS43LXN5cy1wbXUtZXZlbnRzLXYxLWRlYnVn
IGJyYW5jaCwgRERSIFBlcmYgY2FuIHdvcmsgbm93LCB0aGFua3MuDQpQbGVhc2UgcmVtZW1iZXIg
dG8gdXBkYXRlIEpTT04gZmlsZXMgd2hpY2ggbm90aWZpZWQgYmVmb3JlLg0KDQpCZXN0IFJlZ2Fy
ZHMsDQpKb2FraW0gWmhhbmcNCj4gLS0tPjgtLS0tLQ0KPiANCj4gcGVyZiBwYXJzZS1ldmVudHM6
IEZpeCBjb21wYXJpc29uIG9mIGV2c2VsIGFuZCBsZWFkZXIgcG11IG5hbWUNCj4gDQo+IFNpbmNl
IHdlIG5vdyBzdHJkdXAoKSB0aGUgcG11IG5hbWUgZm9yIHRoZSBldmVudCBzZWxlY3RvciwgdXNl
IHN0cmNtcCgpDQo+IGluc3RlYWQgb2YgcG9pbnRlciBlcXVhbGl0eSBmb3IgY29tcGFyaXNvbi4N
Cj4gDQo+IEZpeGVzOiBkNDk1M2Y3ICgicGVyZiBwYXJzZS1ldmVudHM6IEZpeCAzIHVzZSBhZnRl
ciBmcmVlcyBmb3VuZCB3aXRoIGNsYW5nDQo+IEFTQU51dGlsL3BhcnNlLWV2ZW50cy5jIikNCj4g
U2lnbmVkLW9mZi1ieTogSm9obiBHYXJyeSA8am9obi5nYXJyeUBodWF3ZWkuY29tPg0KPiAtLS0N
Cj4gdG9vbHMvcGVyZi91dGlsL3BhcnNlLWV2ZW50cy5jDQo+IEBAIC0xNjI5LDcgKzE2MjksNyBA
QCBwYXJzZV9ldmVudHNfX3NldF9sZWFkZXJfZm9yX3VuY29yZV9hbGlhc2UoY2hhcg0KPiAqbmFt
ZSwgc3RydWN0IGxpc3RfaGVhZCAqbGlzdCwNCj4gCQkgKiBldmVudC4gVGhhdCBjYW4gYmUgdXNl
ZCB0byBkaXN0aW5ndWlzaCB0aGUgbGVhZGVyIGZyb20NCj4gCQkgKiBvdGhlciBtZW1iZXJzLCBl
dmVuIHRoZXkgaGF2ZSB0aGUgc2FtZSBldmVudCBuYW1lLg0KPiAJCSAqLw0KPiAJCWlmICgobGVh
ZGVyICE9IGV2c2VsKSAmJiAobGVhZGVyLT5wbXVfbmFtZSA9PSBldnNlbC0+cG11X25hbWUpKSB7
DQo+IAkJaWYgKChsZWFkZXIgIT0gZXZzZWwpICYmICFzdHJjbXAobGVhZGVyLT5wbXVfbmFtZSwN
Cj4gZXZzZWwtPnBtdV9uYW1lKSkgew0KPiAJCQlpc19sZWFkZXIgPSBmYWxzZTsNCj4gCQkJY29u
dGludWU7DQo+IAkJfQ0KPiANCj4gDQo+IC0tLTg8DQo+IA0KPiBXaXRob3V0IGl0LCBJIHdvdWxk
IGdldCBhIHNwZXcgb2YgdGhlc2U6DQo+IA0KPiBhc3NlcnRpb24gZmFpbGVkIGF0IHV0aWwvcGFy
c2UtZXZlbnRzLmM6MTYzNw0KPiANCj4gQElhbiwgZG9lcyB0aGlzIGNoYW5nZSBsb29rIHJpZ2h0
PyBJIGFtIG5vdCBpbnRpbWF0ZWx5IGZhbWlsaWFyIHdpdGggdGhhdCBjb2RlLg0KPiANCj4gVGhh
bmtzLA0KPiBKb2huDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
