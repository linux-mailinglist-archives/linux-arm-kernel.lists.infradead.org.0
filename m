Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236591A0D09
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 13:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZnyKS1EhnlnJqmN97kZJBCAtMDu9gi0SdivVQqMU14=; b=TXzeIpyeK2igVb
	GZM6/6W+xZ0dELlrTlW3ABjPZaws2q7eTg56RB9GRjsITZit8AhrrQ5zqf3IoP1cGw1EasX854AxW
	R5vWmHASl8iTP2g4NjL5HP7KsiIMJDDYlj4ipEh922X4MDCs62DSYfCUrwy2Rr2uvZ6hEYcYqHNg8
	pPQlc3a2S7U6vXGBoc2ITrIUG8Xmc7CYFHkh8/7/77yUaeqmtb0zxuWD5ThqdwLKZw2VUA2zZznz0
	/QGNlS4vGdr81jyRdlIMgeAY9D4kCoFikEzHweraJQXwFnSDtfjfxaCCaoVC1DndeHb70YX7fyq1G
	VcRxKiyJbEnxevxJjprg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLmga-0007u8-1N; Tue, 07 Apr 2020 11:46:32 +0000
Received: from mail-vi1eur05on2080.outbound.protection.outlook.com
 ([40.107.21.80] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLmgS-0007se-7s
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 11:46:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ARxuh8lW+eqB+h7CFCCx2QVSU8A2uBZUfcafjrjnUQqABAGU2JIOq1QPPX/8OIvS4P6rzkgIx12FlYgiNELb2p8QzOkWyQlfkmfV83vNoqfPWAUYWH5rVyyVKtTf1QlRfz6jo4/gZjut06VFmVaOhfZTUnN6U7qmQ/K3TrxhjHJLT0IsMDCmiuhc33+kqh2aUqpBMoGcgdxyWQwyGfF75F52mDwin7yoEvYDYnjsvkFEFXscQctS+fYd+ptw2tWUYM+ez4SF4+8h8W/q2CSZb7uanGTkjMePeEpPK5irAAoyOyAN2dU6lzUa6PCft29hAGQUK0Jf8I5nZUo2SOn3jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jVNGQFqKa0GiuhQMZOKdesdMHwNUaaMpleAByIlvz38=;
 b=aVO3mkLQu6snmkuDKlIXU/z7uwYNJQPzA45FXKA2bBpROj3KNo/BeivYNi9AwCqFLy4L3FoYXM3cdBrpqmqa5V7NBsn0fc+oH2W4nFZvhwz544a9h1YEFXpVUMXlQ9oPPHPRa/TL6oqZg7wQNfqXYmYyFfHDY8n2xjGqrxcyCIAdqNTtyNdc3Fa1vlPeB/ul7e8FRsg1VLdV2vWrFwUq9UjHnKn47AWdtRqsXbneuAsWOBY9f/YT0JTAZ0hnahloGOUs0BDmV0zpcpPammHxYcMudJfvLXq/6vweBE/r4XZIkOkSxa0LVjrRgEy/xcIRt0al6XWRj6QkBn1ckdlgcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jVNGQFqKa0GiuhQMZOKdesdMHwNUaaMpleAByIlvz38=;
 b=N4Uqa3XHJvFVMIc5LXQkPAVIw/gynG7byaIQwwAC5FrdXJfHg3c+4VbYFu1K7S/ouaNAwKe/XiQKqyNZF9sS8wCGiJfy24C2fmQ/RR2RfUcp+QG5t9915L1GVBzBokKXODPSlCJsgjAS0e7KfW6QG+yBx4Qv0jmKafgoUUzlWYM=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6908.eurprd04.prod.outlook.com (2603:10a6:10:116::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Tue, 7 Apr
 2020 11:46:18 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::f123:f3be:d7d0:3061]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::f123:f3be:d7d0:3061%2]) with mapi id 15.20.2878.018; Tue, 7 Apr 2020
 11:46:18 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: John Garry <john.garry@huawei.com>
Subject: RE: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
Thread-Topic: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
Thread-Index: AQHV6W3A3nevwmck+keoVVW6IJgc3agqKT2AgAAQDjCAAeWxAIAA772QgAAzaoCAAAYD8IAAflQAgDNsawCADJBnsA==
Date: Tue, 7 Apr 2020 11:46:18 +0000
Message-ID: <DB8PR04MB6795996085AD2167E2358907E6C30@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <20200222104621.2258-1-qiangqing.zhang@nxp.com>
 <6dbeabcf-c15a-0bbd-cef4-b25d0133854f@huawei.com>
 <DB7PR04MB4618D2E1892120EB659B8695E6EC0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <2f81eb7a-a6e4-1cc6-cd0a-ca3d749bd552@huawei.com>
 <DB7PR04MB4618C0A8DD9BAB2A529CDCECE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <a2cc0772-4f5d-aba3-1f5c-7d4eef7a3f72@huawei.com>
 <DB7PR04MB461803AD15E47AA880F0915DE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <55836919-41b5-0834-f7a7-1a2a34535677@huawei.com>
 <bd67910e-1522-39cd-5527-b9b18f3da96d@huawei.com>
In-Reply-To: <bd67910e-1522-39cd-5527-b9b18f3da96d@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0d14f454-cdb7-410a-39d7-08d7dae9493a
x-ms-traffictypediagnostic: DB8PR04MB6908:|DB8PR04MB6908:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB6908015CE6E4D38071B60FE7E6C30@DB8PR04MB6908.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 036614DD9C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(39860400002)(376002)(396003)(2906002)(81166006)(316002)(86362001)(5660300002)(52536014)(186003)(33656002)(478600001)(9686003)(26005)(81156014)(8676002)(66946007)(64756008)(6506007)(76116006)(6916009)(54906003)(55016002)(66556008)(8936002)(66476007)(53546011)(7696005)(71200400001)(66446008)(4326008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Tzrr8HzmVhndWq/0jheqs45Zfv5a3ZiDHzVWlAdCyZ4G8pxpwgd3oSNur9Ad/3azzOImEYc6WHglxqBy9BO4SkOIrnnCCJgl/B6Efyuebe0uiXzXHyhV7Zy+6LSQek17q6AVB++TLaT7F2l1TA95/5Icz8f25e95cs1y3X7GUD2DAshUzZmGzL1owwnhtBuGvfObjgEqDWKmE8bauD4Bp3BCm4pchYfsbzz2qcyHx7sfFseFOuVffmgBi704hKCd9bENMkFe/c74v3PzK13b+O3DqO0ab4wYnF3f/OaeHD18x3W7mdbbL3KR6VKpl8vPv/gLHVwvm1ieKX4yg6ACA0OVfoAAQGo9KxOEaa8zv1pzwWHu3StYrtwDTNIt73QnCQu7rTTaHjyaUkUa72foC0Gv3ctpokfQbWgRL+PnZY/gBwpwot2ARzFDSWs5zErV
x-ms-exchange-antispam-messagedata: vQ6u4EZ45DQS5urXBQiWQh4Pk6UKuQ8QXyrgO2TfbcUbYRUks6xz4yjKOlECKpXGfamaexhhPUk56laWGcsWU2U9CzILZ8l2/rKa3aGqz34ylsIptMh/Vr8QuyiPYXCltLnx7eE1udUKQ0jmCTBBLg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d14f454-cdb7-410a-39d7-08d7dae9493a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2020 11:46:18.5349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HtjpMYI0F+NvxRc2oP3DzWxmAHefzQBizSmzHH2eK6GidUdQ6nc/1acUSoQO2Ao+VOeNnsF4hlxhpuGXh7hdPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6908
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_044624_384541_AFB1EED2 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.80 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Zhangshaokun <zhangshaokun@hisilicon.com>, Jiri Olsa <jolsa@redhat.com>,
 Frank Li <frank.li@nxp.com>, Linuxarm <linuxarm@huawei.com>,
 "acme@kernel.org" <acme@kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvaG4gR2FycnkgPGpvaG4u
Z2FycnlAaHVhd2VpLmNvbT4NCj4gU2VudDogMjAyMOW5tDPmnIgzMOaXpSAxOTowNA0KPiBUbzog
Sm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4gQ2M6IHdpbGxAa2VybmVs
Lm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207IGFjbWVAa2VybmVsLm9yZzsNCj4gbGludXgtcGVy
Zi11c2Vyc0B2Z2VyLmtlcm5lbC5vcmc7IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+
OyBGcmFuayBMaQ0KPiA8ZnJhbmsubGlAbnhwLmNvbT47IEppcmkgT2xzYSA8am9sc2FAcmVkaGF0
LmNvbT47IFpoYW5nc2hhb2t1bg0KPiA8emhhbmdzaGFva3VuQGhpc2lsaWNvbi5jb20+OyBMaW51
eGFybSA8bGludXhhcm1AaHVhd2VpLmNvbT47DQo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDAvNl0gcGVyZi9pbXhfZGRyOiBBZGQg
bmFtZXNwYWNlIGZvciBpLk1YOCBERFIgUGVyZg0KPiANCj4gT24gMjYvMDIvMjAyMCAxNzo0Niwg
Sm9obiBHYXJyeSB3cm90ZToNCj4gSGkgSm9ha2ltLA0KSGkgSm9obiwNCg0KSXQgY2FuJ3Qgd29y
ayBvbiBteSBwbGF0Zm9ybToNCg0Kcm9vdEBpbXg4bW1ldms6fiMgY2F0IC9zeXMvYnVzL2V2ZW50
X3NvdXJjZS9kZXZpY2VzL2lteDhfZGRyMC9pZGVudGlmaWVyDQppLm14OG1tDQoNCg0Kcm9vdEBp
bXg4bW1ldms6fiMgLi9wZXJmIGxpc3QgbWV0cmljDQpMaXN0IG9mIHByZS1kZWZpbmVkIGV2ZW50
cyAodG8gYmUgdXNlZCBpbiAtZSk6DQoNCk1ldHJpY3M6DQoNCiAgaW14OG1tX2RkcjBfcmVhZC5h
bGwNCiAgICAgICBbQnl0ZXMgb2YgYWxsIG1hc3RlcnMgcmVhZCBmcm9tIGRkcjAuIFVuaXQ6IHVu
Y29yZV9pLm14OCxkZHJjIF0NCg0KDQpyb290QGlteDhtbWV2azp+IyAuL3BlcmYgc3RhdCAtYSAt
SSAxMDAwIC1NIGlteDhtbV9kZHIwX3JlYWQuYWxsDQpldmVudCBzeW50YXggZXJyb3I6ICcnDQog
ICAgICAgICAgICAgICAgICAgICAgXF9fXyBwYXJzZXIgZXJyb3INCg0KIFVzYWdlOiBwZXJmIHN0
YXQgWzxvcHRpb25zPl0gWzxjb21tYW5kPl0NCg0KICAgIC1NLCAtLW1ldHJpY3MgPG1ldHJpYy9t
ZXRyaWMgZ3JvdXAgbGlzdD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgbW9uaXRvciBzcGVj
aWZpZWQgbWV0cmljcyBvciBtZXRyaWMgZ3JvdXBzIChzZXBhcmF0ZWQgYnkgLCkNCg0KSG93ZXZl
ciwgaXQgY2FuIHdvcmsgb24gYnJhbmNoOiBwcml2YXRlLXRvcGljLXBlcmYtNS42LXBtdS1ldmVu
dHMtdXBzdHJlYW0tdjIuIFdoYXQgY2hhbmdlcyBoYXZlIHlvdSBtYWRlIGNvbXBhcmVkIHRvIGxh
c3Q/DQoNCkNvdWxkIHlvdSBoZWxwIGRvIGJlbG93IGNoYW5nZT8gU2luY2Ugc29tZSBTb2NzIG1h
eSBoYXZlIHR3byBkZHIgY29udHJvbGxlcihkZHIwL2RkcjEpIHdpdGggdGhlIHNhbWUgZXZlbnQg
Y29kZS4NCkRlbGV0ZSBmaWxlOiB0b29scy9wZXJmL3BtdS1ldmVudHMvYXJjaC9hcm02NC9mcmVl
c2NhbGUvaW14OG1tL3N5cy9kZHJjLmpzb24NClJlcGxhY2UgZmlsZTogdG9vbHMvcGVyZi9wbXUt
ZXZlbnRzL2FyY2gvYXJtNjQvZnJlZXNjYWxlL2lteDhtbS9zeXMvbWV0cmljcy5qc29uLCBwdXQg
YWxsIGV2ZW50cyBpbnRvIG1ldHJpYy4NClsNCiAgIHsNCgkiUHVibGljRGVzY3JpcHRpb24iOiAi
ZGRyMCBjeWNsZXMgZXZlbnQiLA0KCSJNZXRyaWNOYW1lIjogImlteDhtbV9kZHIwLmN5Y2xlcyIs
DQoJIk1ldHJpY0V4cHIiOiAiaW14OF9kZHIwXFwvY3ljbGVzXFwvIiwNCgkiVW5pdCI6ICJpbXg4
X2RkciIsDQoJIkNvbXBhdCI6ICJpLm14OG1tIg0KICAgfSwNCiAgIHsNCgkiUHVibGljRGVzY3Jp
cHRpb24iOiAiZGRyMCByZWFkLWN5Y2xlcyBldmVudCIsDQoJIk1ldHJpY05hbWUiOiAiaW14OG1t
X2RkcjAucmVhZF9jeWNsZXMiLA0KCSJNZXRyaWNFeHByIjogImlteDhfZGRyMFxcL3JlYWRcXC1j
eWNsZXNcXC8iLA0KCSJVbml0IjogImlteDhfZGRyIiwNCgkiQ29tcGF0IjogImkubXg4bW0iDQog
ICB9LA0KICAgew0KCSJQdWJsaWNEZXNjcmlwdGlvbiI6ICJkZHIwIHdyaXRlLWN5Y2xlcyBldmVu
dCIsDQoJIk1ldHJpY05hbWUiOiAiaW14OG1tX2RkcjAud3JpdGVfY3ljbGVzIiwNCgkiTWV0cmlj
RXhwciI6ICJpbXg4X2RkcjBcXC93cml0ZVxcLWN5Y2xlc1xcLyIsDQoJIlVuaXQiOiAiaW14OF9k
ZHIiLA0KCSJDb21wYXQiOiAiaS5teDhtbSINCiAgIH0sDQogICB7DQoJIlB1YmxpY0Rlc2NyaXB0
aW9uIjogImRkcjAgcmVhZCBldmVudCIsDQoJIk1ldHJpY05hbWUiOiAiaW14OG1tX2RkcjAucmVh
ZCIsDQoJIk1ldHJpY0V4cHIiOiAiaW14OF9kZHIwXFwvcmVhZFxcLyIsDQoJIlVuaXQiOiAiaW14
OF9kZHIiLA0KCSJDb21wYXQiOiAiaS5teDhtbSINCiAgIH0sDQogICB7DQoJIlB1YmxpY0Rlc2Ny
aXB0aW9uIjogImRkcjAgd3JpdGUgZXZlbnQiLA0KCSJNZXRyaWNOYW1lIjogImlteDhtbV9kZHIw
LndyaXRlIiwNCgkiTWV0cmljRXhwciI6ICJpbXg4X2RkcjBcXC93cml0ZVxcLyIsDQoJIlVuaXQi
OiAiaW14OF9kZHIiLA0KCSJDb21wYXQiOiAiaS5teDhtbSINCiAgIH0sDQogICB7DQoJIlB1Ymxp
Y0Rlc2NyaXB0aW9uIjogImJ5dGVzIGFsbCBtYXN0ZXJzIHJlYWQgZnJvbSBkZHIwIGJhc2VkIG9u
IHJlYWQtY3ljbGVzIGV2ZW50LiIsDQoJIk1ldHJpY05hbWUiOiAiaW14OG1tX2RkcjBfcmVhZC5h
bGwiLA0KCSJNZXRyaWNFeHByIjogIiggaW14OF9kZHIwXFwvcmVhZFxcLWN5Y2xlc1xcLyApICog
NCAqIDQiLA0KCSJTY2FsZVVuaXQiOiAiOS43NjU2MjVlLTRNQiIsDQoJIlVuaXQiOiAiaW14OF9k
ZHIiLA0KCSJDb21wYXQiOiAiaS5teDhtbSINCiAgICB9LA0KICAgew0KCSJQdWJsaWNEZXNjcmlw
dGlvbiI6ICJieXRlcyBhbGwgbWFzdGVycyB3cml0ZSB0byBkZHIwIGJhc2VkIG9uIHJlYWQtY3lj
bGVzIGV2ZW50LiIsDQoJIk1ldHJpY05hbWUiOiAiaW14OG1tX2RkcjBfd3JpdGUuYWxsIiwNCgki
TWV0cmljRXhwciI6ICIoIGlteDhfZGRyMFxcL3dyaXRlXFwtY3ljbGVzXFwvICkgKiA0ICogNCIs
DQoJIlNjYWxlVW5pdCI6ICI5Ljc2NTYyNWUtNE1CIiwNCgkiVW5pdCI6ICJpbXg4X2RkciIsDQoJ
IkNvbXBhdCI6ICJpLm14OG1tIg0KICAgIH0NCl0NCg0KVGhhbmtzLg0KDQpCZXN0IFJlZ2FyZHMs
DQpKb2FraW0gWmhhbmcNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
