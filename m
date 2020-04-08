Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808A61A200A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 13:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBX8GcnVfbG0RDXo7iqeFtyutoxOIoodu1cEX0s62uI=; b=nSvlapHdh0YIIC
	DIgjNwGGHBcOI23t1BJ9Qw5ufl4X7t33tyLOufwsWb5PQskV8vHn13tB8G5PdhWg+RHLdTA2iVnfP
	7cGWAIInNX4ZyM0yqKegox39QSi4GYDVGMZ2XxOMpSztCtFleHtHVIkKFvc1vMA7QsR0DgskYoK9t
	A0QVCotTjqrcik1dWIRGpLOQQR/lRu0PSju4JRwh+cpkPfRIRTSW2fhhzzrdibszO3u+PtmP/KLIj
	EMUfoZMOaSkgD44OL2uEyioZCtrwj/oY09J2p/A+fo5uZ+/SboopOI+tmtZ58/iqeQALAphf3CVEc
	m/AhzBig7mLgHgEZivWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM95N-0000T1-CY; Wed, 08 Apr 2020 11:41:37 +0000
Received: from mail-am6eur05on2068.outbound.protection.outlook.com
 ([40.107.22.68] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM95F-0000SM-Hi
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 11:41:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k0VrdwGUbCAPaeyw8wU0VWAnwspldVrS5bhI+Fo1KtCB4JaZ/YIgnihAR7LamjVIiiHfV9nJQZ6RoHE8JDz5GfaUCH8SR4hbLwbgIEH9s+GAg2sQBzw6Wl4n73ccBfJAj7dGz/zAPNFsfZx72OMuJv01BozYJzaMTOx+2RLDPPWqUziXMqBxXGkJCTKaibPA94Q3wf3maJx9jHn0T1v5s5b/l3JR66RTsGAEDjJs1b4DAF+T2AcV3CYoPkSId4JJb70S1CDBscEEKCpgEjGEbfvd3b02pajF8H5t/Mrz2GrE61H/bLIR1P3QuZkSrluvqjlFxn/7pKcbFTRpjI9xeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lU7DPM6q89CCwDevUOhbSyafi5iD1WLSyPzUPhCkrr8=;
 b=MNTXOyG9HzItOD6sJbMpkkkbCHFAj6hs9tx79Gy7VSaiZZMn+7Nbr8wfWY6jeFovxBEi2dOu8NZf3R3rw4e70bGrB6cIOmWxQm99r9SOElHvG0iEmFJP3aXAGono/7VzqnqYCv7oh/b+tNLPnpwxTMvwdaY7POeJT0nqjoCwArzOKlwxJxc25Tli0KZPx9+k1SD7jDBtS0mBSg6RFK1O/wKAzB86S+a91aScG9a0ZlrpXPLOiidybyqq1KSprWbM2lPX/kbOKblu4H+okfmpsy0BP2hLCrQhebaZr5oNeow0REMXYGssgjA0dLsUg4bvPyuvp5Kcs3QcUgEVt8G7yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lU7DPM6q89CCwDevUOhbSyafi5iD1WLSyPzUPhCkrr8=;
 b=GhQyJ85OvetkGKZnmDSBQ2UFuJmTbMHj0Lf33Mky9f/AsCcdgNa/HTfgq3AUl8KN1bgqluRVaPivM7tzMD/f3RC/R+vmApyQsz9hfPfXGiwKHp2lewqBpwXb5Tyi9IiBiepyIrDiFFtNM6mivJN8cVxwTAr82EZveRPiqLE5gtI=
Received: from VI1PR04MB6800.eurprd04.prod.outlook.com (2603:10a6:803:133::16)
 by VI1PR04MB5533.eurprd04.prod.outlook.com (2603:10a6:803:cf::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Wed, 8 Apr
 2020 11:41:24 +0000
Received: from VI1PR04MB6800.eurprd04.prod.outlook.com
 ([fe80::b8a4:c96d:7fc1:1309]) by VI1PR04MB6800.eurprd04.prod.outlook.com
 ([fe80::b8a4:c96d:7fc1:1309%3]) with mapi id 15.20.2900.015; Wed, 8 Apr 2020
 11:41:24 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: John Garry <john.garry@huawei.com>
Subject: RE: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
Thread-Topic: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
Thread-Index: AQHV6W3A3nevwmck+keoVVW6IJgc3agqKT2AgAAQDjCAAeWxAIAA772QgAAzaoCAAAYD8IAAflQAgDNsawCADJBnsIAARCOAgADH/+CAAH3ngIAAD3Dw
Date: Wed, 8 Apr 2020 11:41:24 +0000
Message-ID: <VI1PR04MB6800F2A5949F0AFAF2E82CE0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
References: <20200222104621.2258-1-qiangqing.zhang@nxp.com>
 <6dbeabcf-c15a-0bbd-cef4-b25d0133854f@huawei.com>
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
In-Reply-To: <ca2db002-975a-ffe0-2dfc-c85f4e6205bb@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 03aa98c5-e9b0-49e9-3843-08d7dbb1c437
x-ms-traffictypediagnostic: VI1PR04MB5533:|VI1PR04MB5533:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB55332827A87772F479A7C98DE6C00@VI1PR04MB5533.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0367A50BB1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB6800.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(366004)(39860400002)(7696005)(64756008)(66556008)(5660300002)(76116006)(66476007)(66446008)(52536014)(81156014)(81166007)(86362001)(8936002)(316002)(54906003)(6506007)(8676002)(186003)(55016002)(33656002)(6916009)(9686003)(2906002)(66946007)(478600001)(26005)(71200400001)(4326008)(53546011);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1/lalx0FcAmJo4Na8mlrw2vtVO6j+mEz/yp/5WejlqN0+e3d6roCHZGUvPsfKZ6OwwTcosVnyJjgC6NtDYfrx5AEb1+RtmsO1+XJ+J+s1cYtzFPiRZe8935D8zgo07Th2AIWhYjjaO0/m9E3Nz367j86I16AJCra97kNXJ1tf6Dr1FeYxUO12e/1PmTMTZzGzBbqGKtedxT5+4hRSEEYFy3OH3gkx/2QzJwno8TR3oKBsfNZJX7HYSDXDkthqXmGzIAt8k4/qTZ+ZSFNgjIzwb3itlQL4pEvok/omeAJKI3g+hRlVnK0mZDLD+G9mfN/vzHAciXHplIP/GSULGLcFoR2GOY4bUSCl00li3GMiMojs7AAv44Is+NGV3t03lI46LFekCP+8VFfmpk84fMFakYBTeYmuo5cnLtpaOkRd8Mkgwc4FD0iDWpdIB8bnyNA
x-ms-exchange-antispam-messagedata: hHfR/A0vEFWWxQlWPbzi76/XqBE66v7czEJnZvS3sP2OPcx3R+xIGn30qbf9GOlMfG+Bz5AOfrX/W9mLEBqss6wQDYl0/Vph6KU86wNAnu5u+8dr40t1lUOeLLiog1VpOAm8Rxzc61gygVPAATx7dw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03aa98c5-e9b0-49e9-3843-08d7dbb1c437
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2020 11:41:24.2189 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WyBO2EzE42QHq1r6MJa6Z8g3i5ExYhL0dveX3uySnnEU6M8NCZwsrMBeTMdLfYaSV9vKbyhwl45cbnhxw24zTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5533
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_044129_700460_B4B94A87 
X-CRM114-Status: GOOD (  24.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.68 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Zhangshaokun <zhangshaokun@hisilicon.com>, "will@kernel.org" <will@kernel.org>,
 Linuxarm <linuxarm@huawei.com>, "acme@kernel.org" <acme@kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Jiri Olsa <jolsa@redhat.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSm9obiwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKb2huIEdh
cnJ5IDxqb2huLmdhcnJ5QGh1YXdlaS5jb20+DQo+IFNlbnQ6IDIwMjDlubQ05pyIOOaXpSAxODoy
Ng0KPiBUbzogSm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4gQ2M6IHdp
bGxAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207IGFjbWVAa2VybmVsLm9yZzsNCj4g
bGludXgtcGVyZi11c2Vyc0B2Z2VyLmtlcm5lbC5vcmc7IGRsLWxpbnV4LWlteCA8bGludXgtaW14
QG54cC5jb20+OyBGcmFuayBMaQ0KPiA8ZnJhbmsubGlAbnhwLmNvbT47IEppcmkgT2xzYSA8am9s
c2FAcmVkaGF0LmNvbT47IFpoYW5nc2hhb2t1bg0KPiA8emhhbmdzaGFva3VuQGhpc2lsaWNvbi5j
b20+OyBMaW51eGFybSA8bGludXhhcm1AaHVhd2VpLmNvbT47DQo+IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDAvNl0gcGVyZi9pbXhf
ZGRyOiBBZGQgbmFtZXNwYWNlIGZvciBpLk1YOCBERFIgUGVyZg0KPiANCj4gT24gMDgvMDQvMjAy
MCAwNjowNCwgSm9ha2ltIFpoYW5nIHdyb3RlOg0KPiA+PiAgIC4gQ2FuIHlvdSBhZGQgdGhpcywg
cmVnZW5lcmF0ZSwNCj4gPj4gYW5kIHJldHJ5Og0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvdG9v
bHMvcGVyZi9wbXUtZXZlbnRzL2pldmVudHMuYw0KPiA+PiBiL3Rvb2xzL3BlcmYvcG11LWV2ZW50
cy9qZXZlbnRzLmMgaW5kZXggNjc1YWVjOTg4MWNlLi4xNmRjZjAwYzc5MmENCj4gPj4gMTAwNjQ0
DQo+ID4+IC0tLSBhL3Rvb2xzL3BlcmYvcG11LWV2ZW50cy9qZXZlbnRzLmMNCj4gPj4gKysrIGIv
dG9vbHMvcGVyZi9wbXUtZXZlbnRzL2pldmVudHMuYw0KPiA+PiBAQCAtMjU4LDYgKzI1OCw3IEBA
IHN0YXRpYyBzdHJ1Y3QgbWFwIHsNCj4gPj4gICAgICAgICAgeyAiaGlzaV9zY2NsLGwzYyIsICJo
aXNpX3NjY2wsbDNjIiB9LA0KPiA+PiAgICAgICAgICAvKiBpdCdzIG5vdCByZWFsaXN0aWMgdG8g
a2VlcCBhZGRpbmcgdGhlc2UsIHdlIG5lZWQNCj4gPj4gc29tZXRoaW5nIG1vcmUgc2NhbGFibGUg
Li4uICovDQo+ID4+ICAgICAgICAgIHsgInNtbXV2M19wbWNnIiwgInNtbXV2M19wbWNnIiB9LA0K
PiA+PiArICAgICAgIHsgImlteDhfZGRyIiwgImlteDhfZGRyIiB9LA0KPiA+PiAgICAgICAgICB7
ICJMM1BNQyIsICJhbWRfbDMiIH0sDQo+ID4+ICAgICAgICAgIHt9DQo+ID4gWWVzLCBldmVudHMg
Y2FuIHdvcmsgYWZ0ZXIgYWRkaW5nIHRoaXMgY29kZSwgaG93ZXZlciwgbWV0cmljcyBzdGlsbCBj
YW4ndCB3b3JrLA0KPiBpdCBzZWVtcyB0aGF0IG1ldHJpY2dyb3VwIGZhaWxzIHRvIHBhcnNlIHRo
ZSBtZXRyaWMgZXhwcmVzc2lvbi4gWW91IG1heSBjaGFuZ2UNCj4gc29tZXRoaW5nIGZyb20gbWV0
cmljZ3JvdXAuYyBjYXVzaW5nIHRoaXMgaXNzdWUuDQo+IA0KPiBUaGF0IGNvZGUgc2hvdWxkIGJl
IGVmZmVjdGl2ZWx5IHRoZSBzYW1lLg0KPiANCj4gV2hhdCBkb2VzIHBlcmYgbGlzdCBzaG93IGZv
ciB0aGUgbWV0cmljcyBub3c/DQpyb290QGlteDhtbWV2azp+IyAuL3BlcmYgbGlzdCBkZHJjDQoN
Ckxpc3Qgb2YgcHJlLWRlZmluZWQgZXZlbnRzICh0byBiZSB1c2VkIGluIC1lKToNCg0KDQpkZHJj
Og0KICBpbXg4X2Rkci5jeWNsZXMNCiAgICAgICBbZGRyIGN5Y2xlcyBldmVudC4gVW5pdDogaW14
OF9kZHJdDQogIGlteDhfZGRyLnJlYWQNCiAgICAgICBbZGRyIHJlYWQgZXZlbnQuIFVuaXQ6IGlt
eDhfZGRyXQ0KICBpbXg4X2Rkci5yZWFkX2N5Y2xlcw0KICAgICAgIFtkZHIgcmVhZC1jeWNsZXMg
ZXZlbnQuIFVuaXQ6IGlteDhfZGRyXQ0KICBpbXg4X2Rkci53cml0ZQ0KICAgICAgIFtkZHIgd3Jp
dGUgZXZlbnQuIFVuaXQ6IGlteDhfZGRyXQ0KICBpbXg4X2Rkci53cml0ZV9jeWNsZXMNCiAgICAg
ICBbZGRyIHdyaXRlLWN5Y2xlcyBldmVudC4gVW5pdDogaW14OF9kZHJdDQoNCnJvb3RAaW14OG1t
ZXZrOn4jIC4vcGVyZiBsaXN0IG1ldHJpYw0KDQpMaXN0IG9mIHByZS1kZWZpbmVkIGV2ZW50cyAo
dG8gYmUgdXNlZCBpbiAtZSk6DQoNCg0KTWV0cmljczoNCg0KICBpbXg4bW1fZGRyX3JlYWQuYWxs
DQogICAgICAgW2J5dGVzIGFsbCBtYXN0ZXJzIHJlYWQgZnJvbSBkZHIgYmFzZWQgb24gcmVhZC1j
eWNsZXMgZXZlbnQuIFVuaXQ6IGlteDhfZA0KZHIgXQ0KICBpbXg4bW1fZGRyX3dyaXRlLmFsbA0K
ICAgICAgIFtieXRlcyBhbGwgbWFzdGVycyB3cml0ZSB0byBkZHIgYmFzZWQgb24gcmVhZC1jeWNs
ZXMgZXZlbnQuIFVuaXQ6IGlteDhfZGQNCnIgXQ0KDQpyb290QGlteDhtbWV2azp+IyAuL3BlcmYg
c3RhdCAtYSAtSSAxMDAwIC12IC1NIGlteDhtbV9kZHJfcmVhZC5hbGwNClVzaW5nIENQVUlEIDB4
MDAwMDAwMDA0MTBmZDA0MA0KYWRkaW5nDQpldmVudCBzeW50YXggZXJyb3I6ICcnDQogICAgICAg
ICAgICAgICAgICAgICAgXF9fXyBwYXJzZXIgZXJyb3INCg0KIFVzYWdlOiBwZXJmIHN0YXQgWzxv
cHRpb25zPl0gWzxjb21tYW5kPl0NCg0KICAgIC1NLCAtLW1ldHJpY3MgPG1ldHJpYy9tZXRyaWMg
Z3JvdXAgbGlzdD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgbW9uaXRvciBzcGVjaWZpZWQg
bWV0cmljcyBvciBtZXRyaWMgZ3JvdXBzIChzZXBhcmF0ZWQgYnkgLCkNCg0KSXQgc2VlbXMgdGhh
dCBtZXRyaWNncm91cCBmYWlscyB0byBwYXJzZSB0aGUgbWV0cmljIGV4cHJlc3Npb24uIA0KbWV0
cmljLmpzb246DQpbDQogICB7DQoJICAgICJCcmllZkRlc2NyaXB0aW9uIjogImJ5dGVzIGFsbCBt
YXN0ZXJzIHJlYWQgZnJvbSBkZHIgYmFzZWQgb24gcmVhZC1jeWNsZXMgZXZlbnQiLA0KCSAgICAi
TWV0cmljTmFtZSI6ICJpbXg4bW1fZGRyX3JlYWQuYWxsIiwNCgkgICAgIk1ldHJpY0V4cHIiOiAi
aW14OF9kZHIucmVhZF9jeWNsZXMgKiA0ICogNCIsDQoJICAgICJTY2FsZVVuaXQiOiAiOS43NjU2
MjVlLTRNQiIsDQoJICAgICJVbml0IjogImlteDhfZGRyIiwNCgkgICAgIkNvbXBhdCI6ICJpLm14
OG1tIg0KICAgIH0sDQogICB7DQoJICAgICJCcmllZkRlc2NyaXB0aW9uIjogImJ5dGVzIGFsbCBt
YXN0ZXJzIHdyaXRlIHRvIGRkciBiYXNlZCBvbiB3cml0ZS1jeWNsZXMgZXZlbnQiLA0KCSAgICAi
TWV0cmljTmFtZSI6ICJpbXg4bW1fZGRyX3dyaXRlLmFsbCIsDQoJICAgICJNZXRyaWNFeHByIjog
ImlteDhfZGRyLndyaXRlX2N5Y2xlcyAqIDQgKiA0IiwNCgkgICAgIlNjYWxlVW5pdCI6ICI5Ljc2
NTYyNWUtNE1CIiwNCgkgICAgIlVuaXQiOiAiaW14OF9kZHIiLA0KCSAgICAiQ29tcGF0IjogImku
bXg4bW0iDQogICAgfQ0KXQ0KDQo+ID4NCj4gPj4+IHJvb3RAaW14OG1tZXZrOn4jIC4vcGVyZiBz
dGF0IC1hIC1JIDEwMDAgLU0gaW14OG1tX2RkcjBfcmVhZC5hbGwNCj4gPj4+IGV2ZW50DQo+IA0K
PiBDYW4geW91IHJ1biB3aXRoIC12IG9wdGlvbiBhbmQgc2hhcmUgdGhlIHJlc3VsdD8NCj4gDQo+
ID4+PiBzeW50YXggZXJyb3I6ICcnDQo+ID4+PiAgICAgICAgICAgICAgICAgICAgICAgICBcX19f
IHBhcnNlciBlcnJvcg0KPiA+Pj4NCj4gPj4+ICAgIFVzYWdlOiBwZXJmIHN0YXQgWzxvcHRpb25z
Pl0gWzxjb21tYW5kPl0NCj4gPj4+DQo+ID4+PiAgICAgICAtTSwgLS1tZXRyaWNzIDxtZXRyaWMv
bWV0cmljIGdyb3VwIGxpc3Q+DQo+ID4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbW9u
aXRvciBzcGVjaWZpZWQgbWV0cmljcyBvciBtZXRyaWMNCj4gPj4+IGdyb3VwcyAoc2VwYXJhdGVk
IGJ5ICwpDQo+ID4+Pg0KPiA+Pj4gSG93ZXZlciwgaXQgY2FuIHdvcmsgb24gYnJhbmNoOg0KPiA+
PiBwcml2YXRlLXRvcGljLXBlcmYtNS42LXBtdS1ldmVudHMtdXBzdHJlYW0tdjIuIFdoYXQgY2hh
bmdlcyBoYXZlIHlvdQ0KPiA+PiBtYWRlIGNvbXBhcmVkIHRvIGxhc3Q/DQo+ID4+PiBDb3VsZCB5
b3UgaGVscCBkbyBiZWxvdyBjaGFuZ2U/IFNpbmNlIHNvbWUgU29jcyBtYXkgaGF2ZSB0d28gZGRy
DQo+ID4+IGNvbnRyb2xsZXIoZGRyMC9kZHIxKSB3aXRoIHRoZSBzYW1lIGV2ZW50IGNvZGUuDQo+
ID4+DQo+ID4+IFRoZSBwZXJmIHRvb2wgY2FuIGhhbmRsZSB0aGF0LiBTbyBqdXN0IHJ1biBwZXJm
IHdpdGggLXYgb3B0aW9uLCBhbmQNCj4gPj4gaXQgd2lsbCBzaG93IGV2ZW50IGNvdW50IGJyZWFr
ZG93biBwZXIgUE1VLCBsaWtlIHRoaXM6DQo+ID4+DQo+ID4+IHJvb3RAdWJ1bnR1Oi8jIC4vcGVy
ZiBzdGF0IC12IC1lIHNtbXV2M19wbWNnLmwxX3RsYiBzbGVlcCAxIFVzaW5nDQo+ID4+IENQVUlE
DQo+ID4+IDB4MDAwMDAwMDA0ODBmZDAxMCBVc2luZyBTWVNJRCBISVAwOA0KPiA+PiAtPiBzbW11
djNfcG1jZ18yMDAxMDAwMjAvZXZlbnQ9MHg4YS8NCj4gPj4gLT4gc21tdXYzX3BtY2dfMjAwMTQw
MDIwL2V2ZW50PTB4OGEvDQo+ID4+IC0+IHNtbXV2M19wbWNnXzEwMDAyMC9ldmVudD0weDhhLw0K
PiA+PiAtPiBzbW11djNfcG1jZ18xNDAwMjAvZXZlbnQ9MHg4YS8NCj4gPj4gLT4gc21tdXYzX3Bt
Y2dfMjAwMTQ4MDIwL2V2ZW50PTB4OGEvDQo+ID4+IC0+IHNtbXV2M19wbWNnXzE0ODAyMC9ldmVu
dD0weDhhLw0KPiA+PiBzbW11djNfcG1jZy5sMV90bGI6IDAgMTAwMTIyMTY5MCAxMDAxMjIxNjkw
DQo+ID4+IHNtbXV2M19wbWNnLmwxX3RsYjogMCAxMDAxMjIwMDkwIDEwMDEyMjAwOTANCj4gPj4g
c21tdXYzX3BtY2cubDFfdGxiOiAxMDEgMTAwMTIxOTY2MCAxMDAxMjE5NjYwDQo+ID4+IHNtbXV2
M19wbWNnLmwxX3RsYjogMCAxMDAxMjE5MDEwIDEwMDEyMTkwMTANCj4gPj4gc21tdXYzX3BtY2cu
bDFfdGxiOiAwIDEwMDEyMTgzNjAgMTAwMTIxODM2MA0KPiA+PiBzbW11djNfcG1jZy5sMV90bGI6
IDEzNCAxMDAxMjE3ODUwIDEwMDEyMTc4NTANCj4gPj4NCj4gPj4gSGVyZSBzbW11djNfcG1jZ18y
MDAxMDAwMjAsIHNtbXV2M19wbWNnXzIwMDE0MDAyMCwgZXRjIGFyZSBhbGwNCj4gPj4gaW5zdGFu
Y2VzIG9mIHRoZSBzYW1lIFBNVSwgbGlrZSB5b3VyIEREUkMuDQo+ID4+DQo+ID4+IEFuZCBpZiB5
b3Ugd2FudCB0byBydW4ganVzdCBmb3IgYSBzaW5nbGUgUE1VLCB0cnkgbGlrZToNCj4gPj4NCj4g
Pj4gLi9wZXJmIHN0YXQgLWUgc21tdXYzX3BtY2dfMjAwMTQ4MDIwL3NtbXV2M19wbWNnLmwxX3Rs
Yi8NCj4gPiBUaGFuayB5b3UgZm9yIHlvdXIgaGludCwgaXQgaXMgcmVhbGx5IHVzZWZ1bC4NCj4g
Pg0KPiA+IFRoZW4gcGxlYXNlIGhlbHAgdXBkYXRlIHRoZSBkZHJjLmpzb24gYW5kIG1ldHJpYy5q
c29uOg0KPiANCj4gb2ssIGZpbmUNCj4gDQo+ID4gZGRyYy5qc29uOg0KPiA+IFsNCj4gPiAgICAg
ew0KPiA+ICAgICAgICAgICAgICJCcmllZkRlc2NyaXB0aW9uIjogImRkciBjeWNsZXMgZXZlbnQi
LA0KPiA+ICAgICAgICAgICAgICJFdmVudENvZGUiOiAiMHgwMCIsDQo+ID4gICAgICAgICAgICAg
IkV2ZW50TmFtZSI6ICJpbXg4X2Rkci5jeWNsZXMiLA0KPiANCj4gbm90ZTogaWYgeW91IGhhdmUg
anVzdCAiY3ljbGVzIiBoZXJlLCBpbnN0ZWFkIG9mICJpbXg4X2Rkci5jeWNsZXMiLCB0aGVuIHRo
ZSBIVw0KPiBQTVUgZXZlbnQgd2lsbCBub3Qgc2hvdyBpbiBwZXJmIGxpc3QgYW5kIHlvdSBvbmx5
IGdldCB0aGUgYWxpYXMgdW5kZXIg4oCcaW14OF9kZHLigJ0NCj4gZ3JvdXAuIFRoaXMgY2FuIGJl
IGdvb2QgaWYgeW91ciBQTVUgaGFzIHNvIG1hbnkgZXZlbnRzIGFuZCB5b3UgZG9uJ3Qgd2FudCB0
bw0KPiBzaG93IHRoZW0gYWxsLiBGb3IgaGlzaWxpY29uIFBNVSwgd2UgaGF2ZSBvdmVyIDYwMCBI
VyBQTVUgZXZlbnRzLg0KV2UgY2FuIHBlcmYgbGlzdCBsaWtlOiAuL3BlcmYgbGlzdCBkZHJjLCB0
byBzaG93IHdoYXQgd2Ugd2FudCB0byBsaXN0Lg0KDQo+IEhvd2V2ZXIsIGFzIEkgc2VlLCBhIGRv
d25zaWRlIGlzIHRoYXQgbWFueSBQTVVzIGhhdmUgImN5Y2xlcyIgZXZlbnRzLCBhbmQgaWYNCj4g
eW91IGp1c3QgdXNlICJjeWNsZXMiIGFzIHBlcmYgZXZlbnQsIHRoZW4gaXQgbWF5IGp1c3QgdXNl
IHRoZSBpbmNvcnJlY3QgUE1VIGJ5DQo+IGFjY2lkZW50LiBJIG5lZWQgdG8gY2hlY2sgdGhpcyBt
b3JlLg0KTm90IHF1aXRlIHVuZGVyc3RhbmTimLkgQW55IGltcHJvdmVtZW50IHNob3VsZCBJIG1h
ZGU/DQoNCkJlc3QgUmVnYXJkcywNCkpvYWtpbSBaaGFuZw0KPiB0aGFua3MsDQo+IEpvaG4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
