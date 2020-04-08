Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A74231A1B24
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 07:04:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9t95IalHcQid0JCEEsQLc4+6xCjcvOFzJVh2NxeCs4s=; b=OSEyyfrmQhhgSX
	Ht/PNtOtVJGk4qUh+SZxkzqH+BXE/rygn2F0qr5vr++CjFEclu0Ujnll0bW8xZMkkFdGacT70P9Bt
	lE4u+1ukIVzJiFLmBjYeddXjmQuPXPTmc8jglVpsEulu8uwHPb/NaDJbZYRlYpjMTMZpgxatgeqpM
	+kg8naHY5uutHkDXG78kXr0UJ8vTX9G2yvqdr6ZyruGrZ+C2aSBglbMFENBGMQ+rwYDP2+hblPdTv
	SwDODEi1+k1ocpjMPDfsU6bAu3Po4jied2/7b56+RuW/5vuuxIpfirQVB9ionnnYwwIpykyGy3Zn8
	f8Vv8US44roUwroMQOww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM2t6-0002Ce-Bi; Wed, 08 Apr 2020 05:04:32 +0000
Received: from mail-am6eur05on2053.outbound.protection.outlook.com
 ([40.107.22.53] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM2sz-0002Bw-UF
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 05:04:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CzLJRqdQQRlURQ8NGtPwtsuaZim9EhwpBEpIfkhvFULO5b8DJgdvRabk/vdO3MkH8YfJd/XG6FdA6DyZLlFi6vfKDfRYzlsAksTEgXOrBBL91te5pYh5zrBcG1CpB1C/Qoi1fYgwjZiRa44YTjFW+eUuYabfVlN1eEuc+mYOhOKlAmlpb5sKT1d5+/zeMjELnQixJDoNNpABHzB/fS9gi1DwHpZIXsHVfLYtGpuTwXRn+5Derl0g6TlJoPZp+KgpSP4N9/L57Hul0EkQnVzTlbvBPpX45ITOfTHS1X37xv0GCjnBsWPItKJ+J63vL0NKUuDrRGaldW1ZydRChubsfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8h97EnpJlhL4po1dv2pcp+RkOxKUN/t81NPPHpDHzLU=;
 b=Hxjodb13tNBISFLbnBT7BsfQyBAGh3WzC80iHQsxi0rT5PkAEGT+/hr1G6VjYvEpVl6uqfzS6SWPnljSper2XO4Z2TUe473+Zp2xgqMbd6f8giowJxdm/J5tmL+Xq3yckUIGEoUSPSyoGedK8N8w9Q0u0z2Sx5ZdR9ZASfOcRG03Rx9T7gP58yErDk0zRlHATd7UC6kNAsXskFFvQhBsw+6Xhnzh2BXREUbrpJN88uRMfc732acZ6xnGoQyUttmD1H7Rj/94Ozwo91/bd47yWPg2Raai8EGPPUJ8lR3ClL16ft8/erQHktiypwnD+EZr11HeT2MT9exnfc2y8cAvxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8h97EnpJlhL4po1dv2pcp+RkOxKUN/t81NPPHpDHzLU=;
 b=SENWCJd/cwT86JEvU9P3IsQZwk0rAjSQP2g8ux6kLUOUXdG7lmsiue8bkjKTRLEq+3Q+BgPi2/R/rHpTzoJ99XAtctbOtwpQTqqroU0k2SlXAUw+d1V0F2AIMx014UdmFFgMYpe7lVUHX3tshdQYBnzfy6QECKd4lwTFdeWPufU=
Received: from VI1PR04MB6800.eurprd04.prod.outlook.com (2603:10a6:803:133::16)
 by VI1PR04MB5344.eurprd04.prod.outlook.com (2603:10a6:803:4b::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Wed, 8 Apr
 2020 05:04:20 +0000
Received: from VI1PR04MB6800.eurprd04.prod.outlook.com
 ([fe80::b8a4:c96d:7fc1:1309]) by VI1PR04MB6800.eurprd04.prod.outlook.com
 ([fe80::b8a4:c96d:7fc1:1309%3]) with mapi id 15.20.2900.015; Wed, 8 Apr 2020
 05:04:20 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: John Garry <john.garry@huawei.com>
Subject: RE: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
Thread-Topic: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
Thread-Index: AQHV6W3A3nevwmck+keoVVW6IJgc3agqKT2AgAAQDjCAAeWxAIAA772QgAAzaoCAAAYD8IAAflQAgDNsawCADJBnsIAARCOAgADH/+A=
Date: Wed, 8 Apr 2020 05:04:20 +0000
Message-ID: <VI1PR04MB68000808CEE4BC23403C35A0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
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
In-Reply-To: <ccab39b0-c84f-e529-4067-07466b5433a1@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fbe2a53b-40d1-4414-9800-08d7db7a4c4c
x-ms-traffictypediagnostic: VI1PR04MB5344:|VI1PR04MB5344:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5344B31AFBF6B03D81F97C44E6C00@VI1PR04MB5344.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0367A50BB1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB6800.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(376002)(396003)(346002)(33656002)(66446008)(66556008)(71200400001)(66476007)(4326008)(6506007)(478600001)(54906003)(55016002)(2906002)(6916009)(316002)(9686003)(53546011)(64756008)(7696005)(66946007)(5660300002)(81156014)(86362001)(26005)(52536014)(8676002)(8936002)(76116006)(186003)(81166007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h9ZStZQCb0CozLb4gCAdWKku87Ia0+43MGBzqCAZlYHypUG4eYP3FqCiJ1aHwFju1EttLL6Lqm92Ta044bK7rzq1NcyNlMQ9dEk3zLpuTsPkg6kL9peey9/1hYsmJmEyuVut0rWNd61vXdS5gVhIyrmWZBrOzOrbEOZPRIBYpwOvHO0EJH+9IIO6V0SSIwKHygrtG+mR9QhiEtzlqhe8dC8QKEyyjOqDIYVvBbVNf+Y+oTPLBphDyQgeQbQzi9977ZZ7oJJNafKpDape288Um5p/YU8g3CFiBTPW8UGz93XJwwb0UjFoIuMMnmD3BbKpyOg5hOWR9OkhDhaGCreNNmQKKNCTy8Ek1wB7zcb9UrYXP4o6Xw0IJIn7tQEzk9AzX6FHCriqxaCTg2K/J0qPIuBeBB0BlMbfi6E49vXdKJxR77SRFE7komLrO5OIbbzg
x-ms-exchange-antispam-messagedata: SSoRnPNDuOAINC6qYCk9DGr5Gk/xYJkOaJx+eR4txV+WHvY4BVWgnpUj3WAbWbZ023Bxs0tcJ42bYLi5T7l4GQY/lN66I/hVd9nzAt+ygi+dSzOw+r+b+nu1fJjeIUZEZe953KCyk0WyQ8dWPHr9ZA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbe2a53b-40d1-4414-9800-08d7db7a4c4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2020 05:04:20.7819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YILERB33xsjn9ymIRJLcDY4ZvKxH27M0CgX8qgh1mZVJ+/ORDOs90VIypPu5OjJNFkw3dO7CoxvXC5QtmpAV1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5344
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_220426_090905_5989DB3F 
X-CRM114-Status: GOOD (  22.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.53 listed in list.dnswl.org]
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

SGkgSm9obiwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKb2huIEdh
cnJ5IDxqb2huLmdhcnJ5QGh1YXdlaS5jb20+DQo+IFNlbnQ6IDIwMjDlubQ05pyIN+aXpSAyMzow
MA0KPiBUbzogSm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4gQ2M6IHdp
bGxAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207IGFjbWVAa2VybmVsLm9yZzsNCj4g
bGludXgtcGVyZi11c2Vyc0B2Z2VyLmtlcm5lbC5vcmc7IGRsLWxpbnV4LWlteCA8bGludXgtaW14
QG54cC5jb20+OyBGcmFuayBMaQ0KPiA8ZnJhbmsubGlAbnhwLmNvbT47IEppcmkgT2xzYSA8am9s
c2FAcmVkaGF0LmNvbT47IFpoYW5nc2hhb2t1bg0KPiA8emhhbmdzaGFva3VuQGhpc2lsaWNvbi5j
b20+OyBMaW51eGFybSA8bGludXhhcm1AaHVhd2VpLmNvbT47DQo+IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDAvNl0gcGVyZi9pbXhf
ZGRyOiBBZGQgbmFtZXNwYWNlIGZvciBpLk1YOCBERFIgUGVyZg0KPiANCj4gSGkgSm9ha2ltLA0K
PiANCj4gPg0KPiA+IEl0IGNhbid0IHdvcmsgb24gbXkgcGxhdGZvcm06DQo+ID4NCj4gPiByb290
QGlteDhtbWV2azp+IyBjYXQNCj4gPiAvc3lzL2J1cy9ldmVudF9zb3VyY2UvZGV2aWNlcy9pbXg4
X2RkcjAvaWRlbnRpZmllcg0KPiA+IGkubXg4bW0NCj4gPg0KPiA+DQo+ID4gcm9vdEBpbXg4bW1l
dms6fiMgLi9wZXJmIGxpc3QgbWV0cmljDQo+ID4gTGlzdCBvZiBwcmUtZGVmaW5lZCBldmVudHMg
KHRvIGJlIHVzZWQgaW4gLWUpOg0KPiA+DQo+ID4gTWV0cmljczoNCj4gPg0KPiA+ICAgIGlteDht
bV9kZHIwX3JlYWQuYWxsDQo+ID4gICAgICAgICBbQnl0ZXMgb2YgYWxsIG1hc3RlcnMgcmVhZCBm
cm9tIGRkcjAuIFVuaXQ6IHVuY29yZV9pLm14OCxkZHJjDQo+ID4gXQ0KPiANCj4gSSB0aGluayBJ
IHNpbXBseSBtaXNzZWQgc29tZXRoaW5nIGluIGpldmVudHMuYyAuIENhbiB5b3UgYWRkIHRoaXMs
IHJlZ2VuZXJhdGUsDQo+IGFuZCByZXRyeToNCj4gDQo+IGRpZmYgLS1naXQgYS90b29scy9wZXJm
L3BtdS1ldmVudHMvamV2ZW50cy5jIGIvdG9vbHMvcGVyZi9wbXUtZXZlbnRzL2pldmVudHMuYw0K
PiBpbmRleCA2NzVhZWM5ODgxY2UuLjE2ZGNmMDBjNzkyYSAxMDA2NDQNCj4gLS0tIGEvdG9vbHMv
cGVyZi9wbXUtZXZlbnRzL2pldmVudHMuYw0KPiArKysgYi90b29scy9wZXJmL3BtdS1ldmVudHMv
amV2ZW50cy5jDQo+IEBAIC0yNTgsNiArMjU4LDcgQEAgc3RhdGljIHN0cnVjdCBtYXAgew0KPiAg
ICAgICAgIHsgImhpc2lfc2NjbCxsM2MiLCAiaGlzaV9zY2NsLGwzYyIgfSwNCj4gICAgICAgICAv
KiBpdCdzIG5vdCByZWFsaXN0aWMgdG8ga2VlcCBhZGRpbmcgdGhlc2UsIHdlIG5lZWQgc29tZXRo
aW5nIG1vcmUNCj4gc2NhbGFibGUgLi4uICovDQo+ICAgICAgICAgeyAic21tdXYzX3BtY2ciLCAi
c21tdXYzX3BtY2ciIH0sDQo+ICsgICAgICAgeyAiaW14OF9kZHIiLCAiaW14OF9kZHIiIH0sDQo+
ICAgICAgICAgeyAiTDNQTUMiLCAiYW1kX2wzIiB9LA0KPiAgICAgICAgIHt9DQpZZXMsIGV2ZW50
cyBjYW4gd29yayBhZnRlciBhZGRpbmcgdGhpcyBjb2RlLCBob3dldmVyLCBtZXRyaWNzIHN0aWxs
IGNhbid0IHdvcmssIGl0IHNlZW1zIHRoYXQgbWV0cmljZ3JvdXAgZmFpbHMgdG8gcGFyc2UgdGhl
IG1ldHJpYyBleHByZXNzaW9uLiBZb3UgbWF5IGNoYW5nZSBzb21ldGhpbmcgZnJvbSBtZXRyaWNn
cm91cC5jIGNhdXNpbmcgdGhpcyBpc3N1ZS4NCg0KPiA+IHJvb3RAaW14OG1tZXZrOn4jIC4vcGVy
ZiBzdGF0IC1hIC1JIDEwMDAgLU0gaW14OG1tX2RkcjBfcmVhZC5hbGwgZXZlbnQNCj4gPiBzeW50
YXggZXJyb3I6ICcnDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICBcX19fIHBhcnNlciBlcnJv
cg0KPiA+DQo+ID4gICBVc2FnZTogcGVyZiBzdGF0IFs8b3B0aW9ucz5dIFs8Y29tbWFuZD5dDQo+
ID4NCj4gPiAgICAgIC1NLCAtLW1ldHJpY3MgPG1ldHJpYy9tZXRyaWMgZ3JvdXAgbGlzdD4NCj4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICBtb25pdG9yIHNwZWNpZmllZCBtZXRyaWNzIG9y
IG1ldHJpYyBncm91cHMNCj4gPiAoc2VwYXJhdGVkIGJ5ICwpDQo+ID4NCj4gPiBIb3dldmVyLCBp
dCBjYW4gd29yayBvbiBicmFuY2g6DQo+IHByaXZhdGUtdG9waWMtcGVyZi01LjYtcG11LWV2ZW50
cy11cHN0cmVhbS12Mi4gV2hhdCBjaGFuZ2VzIGhhdmUgeW91IG1hZGUNCj4gY29tcGFyZWQgdG8g
bGFzdD8NCj4gPg0KPiA+IENvdWxkIHlvdSBoZWxwIGRvIGJlbG93IGNoYW5nZT8gU2luY2Ugc29t
ZSBTb2NzIG1heSBoYXZlIHR3byBkZHINCj4gY29udHJvbGxlcihkZHIwL2RkcjEpIHdpdGggdGhl
IHNhbWUgZXZlbnQgY29kZS4NCj4gDQo+IFRoZSBwZXJmIHRvb2wgY2FuIGhhbmRsZSB0aGF0LiBT
byBqdXN0IHJ1biBwZXJmIHdpdGggLXYgb3B0aW9uLCBhbmQgaXQgd2lsbCBzaG93DQo+IGV2ZW50
IGNvdW50IGJyZWFrZG93biBwZXIgUE1VLCBsaWtlIHRoaXM6DQo+IA0KPiByb290QHVidW50dTov
IyAuL3BlcmYgc3RhdCAtdiAtZSBzbW11djNfcG1jZy5sMV90bGIgc2xlZXAgMSBVc2luZyBDUFVJ
RA0KPiAweDAwMDAwMDAwNDgwZmQwMTAgVXNpbmcgU1lTSUQgSElQMDgNCj4gLT4gc21tdXYzX3Bt
Y2dfMjAwMTAwMDIwL2V2ZW50PTB4OGEvDQo+IC0+IHNtbXV2M19wbWNnXzIwMDE0MDAyMC9ldmVu
dD0weDhhLw0KPiAtPiBzbW11djNfcG1jZ18xMDAwMjAvZXZlbnQ9MHg4YS8NCj4gLT4gc21tdXYz
X3BtY2dfMTQwMDIwL2V2ZW50PTB4OGEvDQo+IC0+IHNtbXV2M19wbWNnXzIwMDE0ODAyMC9ldmVu
dD0weDhhLw0KPiAtPiBzbW11djNfcG1jZ18xNDgwMjAvZXZlbnQ9MHg4YS8NCj4gc21tdXYzX3Bt
Y2cubDFfdGxiOiAwIDEwMDEyMjE2OTAgMTAwMTIyMTY5MA0KPiBzbW11djNfcG1jZy5sMV90bGI6
IDAgMTAwMTIyMDA5MCAxMDAxMjIwMDkwDQo+IHNtbXV2M19wbWNnLmwxX3RsYjogMTAxIDEwMDEy
MTk2NjAgMTAwMTIxOTY2MA0KPiBzbW11djNfcG1jZy5sMV90bGI6IDAgMTAwMTIxOTAxMCAxMDAx
MjE5MDEwDQo+IHNtbXV2M19wbWNnLmwxX3RsYjogMCAxMDAxMjE4MzYwIDEwMDEyMTgzNjANCj4g
c21tdXYzX3BtY2cubDFfdGxiOiAxMzQgMTAwMTIxNzg1MCAxMDAxMjE3ODUwDQo+DQo+IEhlcmUg
c21tdXYzX3BtY2dfMjAwMTAwMDIwLCBzbW11djNfcG1jZ18yMDAxNDAwMjAsIGV0YyBhcmUgYWxs
DQo+IGluc3RhbmNlcyBvZiB0aGUgc2FtZSBQTVUsIGxpa2UgeW91ciBERFJDLg0KPiANCj4gQW5k
IGlmIHlvdSB3YW50IHRvIHJ1biBqdXN0IGZvciBhIHNpbmdsZSBQTVUsIHRyeSBsaWtlOg0KPiAN
Cj4gLi9wZXJmIHN0YXQgLWUgc21tdXYzX3BtY2dfMjAwMTQ4MDIwL3NtbXV2M19wbWNnLmwxX3Rs
Yi8NClRoYW5rIHlvdSBmb3IgeW91ciBoaW50LCBpdCBpcyByZWFsbHkgdXNlZnVsLg0KDQpUaGVu
IHBsZWFzZSBoZWxwIHVwZGF0ZSB0aGUgZGRyYy5qc29uIGFuZCBtZXRyaWMuanNvbjoNCmRkcmMu
anNvbjoNClsNCiAgIHsNCiAgICAgICAgICAgIkJyaWVmRGVzY3JpcHRpb24iOiAiZGRyIGN5Y2xl
cyBldmVudCIsDQogICAgICAgICAgICJFdmVudENvZGUiOiAiMHgwMCIsDQogICAgICAgICAgICJF
dmVudE5hbWUiOiAiaW14OF9kZHIuY3ljbGVzIiwNCiAgICAgICAgICAgIlVuaXQiOiAiaW14OF9k
ZHIiLA0KICAgICAgICAgICAiQ29tcGF0IjogImkubXg4bW0iDQogICB9LA0KICAgew0KICAgICAg
ICAgICAiQnJpZWZEZXNjcmlwdGlvbiI6ICJkZHIgcmVhZC1jeWNsZXMgZXZlbnQiLA0KICAgICAg
ICAgICAiRXZlbnRDb2RlIjogIjB4MmEiLA0KICAgICAgICAgICAiRXZlbnROYW1lIjogImlteDhf
ZGRyLnJlYWRfY3ljbGVzIiwNCiAgICAgICAgICAgIlVuaXQiOiAiaW14OF9kZHIiLA0KICAgICAg
ICAgICAiQ29tcGF0IjogImkubXg4bW0iDQogICB9LA0KICAgew0KICAgICAgICAgICAiQnJpZWZE
ZXNjcmlwdGlvbiI6ICJkZHIgd3JpdGUtY3ljbGVzIGV2ZW50IiwNCiAgICAgICAgICAgIkV2ZW50
Q29kZSI6ICIweDJiIiwNCiAgICAgICAgICAgIkV2ZW50TmFtZSI6ICJpbXg4X2Rkci53cml0ZV9j
eWNsZXMiLA0KICAgICAgICAgICAiVW5pdCI6ICJpbXg4X2RkciIsDQogICAgICAgICAgICJDb21w
YXQiOiAiaS5teDhtbSINCiAgIH0sDQogICB7DQogICAgICAgICAgICJCcmllZkRlc2NyaXB0aW9u
IjogImRkciByZWFkIGV2ZW50IiwNCiAgICAgICAgICAgIkV2ZW50Q29kZSI6ICIweDM1IiwNCiAg
ICAgICAgICAgIkV2ZW50TmFtZSI6ICJpbXg4X2Rkci5yZWFkIiwNCiAgICAgICAgICAgIlVuaXQi
OiAiaW14OF9kZHIiLA0KICAgICAgICAgICAiQ29tcGF0IjogImkubXg4bW0iDQogICB9LA0KICAg
ew0KICAgICAgICAgICAiQnJpZWZEZXNjcmlwdGlvbiI6ICJkZHIgd3JpdGUgZXZlbnQiLA0KICAg
ICAgICAgICAiRXZlbnRDb2RlIjogIjB4MzgiLA0KICAgICAgICAgICAiRXZlbnROYW1lIjogImlt
eDhfZGRyLndyaXRlIiwNCiAgICAgICAgICAgIlVuaXQiOiAiaW14OF9kZHIiLA0KICAgICAgICAg
ICAiQ29tcGF0IjogImkubXg4bW0iDQogICB9DQpdDQoNCm1ldHJpYy5qc29uOg0KWw0KICAgew0K
CSAgICAiQnJpZWZEZXNjcmlwdGlvbiI6ICJieXRlcyBhbGwgbWFzdGVycyByZWFkIGZyb20gZGRy
IGJhc2VkIG9uIHJlYWQtY3ljbGVzIGV2ZW50IiwNCgkgICAgIk1ldHJpY05hbWUiOiAiaW14OG1t
X2Rkcl9yZWFkLmFsbCIsDQoJICAgICJNZXRyaWNFeHByIjogImlteDhfZGRyLnJlYWRfY3ljbGVz
ICogNCAqIDQiLA0KCSAgICAiU2NhbGVVbml0IjogIjkuNzY1NjI1ZS00TUIiLA0KCSAgICAiVW5p
dCI6ICJpbXg4X2RkciIsDQoJICAgICJDb21wYXQiOiAiaS5teDhtbSINCiAgICB9LA0KICAgew0K
CSAgICAiQnJpZWZEZXNjcmlwdGlvbiI6ICJieXRlcyBhbGwgbWFzdGVycyB3cml0ZSB0byBkZHIg
YmFzZWQgb24gd3JpdGUtY3ljbGVzIGV2ZW50IiwNCgkgICAgIk1ldHJpY05hbWUiOiAiaW14OG1t
X2Rkcl93cml0ZS5hbGwiLA0KCSAgICAiTWV0cmljRXhwciI6ICJpbXg4X2Rkci53cml0ZV9jeWNs
ZXMgKiA0ICogNCIsDQoJICAgICJTY2FsZVVuaXQiOiAiOS43NjU2MjVlLTRNQiIsDQoJICAgICJV
bml0IjogImlteDhfZGRyIiwNCgkgICAgIkNvbXBhdCI6ICJpLm14OG1tIg0KICAgIH0NCl0NCg0K
QmVzdCBSZWdhcmRzLA0KSm9ha2ltIFpoYW5nDQo+IFt0aGFua3MgZm9yIGppcmthIGZvciB0aGF0
IGhpbnQgOikgXQ0KPiANCj4gVGhhbmtzLA0KPiBKb2huDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
