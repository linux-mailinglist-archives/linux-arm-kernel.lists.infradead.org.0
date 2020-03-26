Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A9819375B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 05:41:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eSmtrosOXdJokXM2MSQZMGp27fCTwzKZR0enU+nzn3k=; b=Xvl91nJl8BOMpJ
	eqs7nR37qlmPoBI1s4KFigAiD8A9MoieHP1mowBQqhsuqpmdUFOe9ANdtEYWk+Y06E2zCONdLXHBg
	wMsFs9g2JDOngPjkBxD9LqfixD45HLvS86tbT/x4fXInTzZnjqoBaRTEaj9na9dL0Nt6axS1BD/JL
	V4fH/1AWKLi7fFUhT25lmijsukdoD1s1hi4BpGa86YLsG87+X4+qbX3PudS2u4Q6U9gpl9QPgxOQq
	SZ311Qr7BBrRn3qCVJa/7oxHnmzdq0GvhMFmRhOYSP4KEDlIgOVSgF3RgEskRnIc8XHhWnLWkLK8Q
	aXMckproXN52+swYGSIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHKKW-0000ss-JE; Thu, 26 Mar 2020 04:41:20 +0000
Received: from mail-eopbgr70079.outbound.protection.outlook.com ([40.107.7.79]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHKKO-0000sF-8d
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 04:41:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YX5fpDQCTWCLmKngIaonup39qJSB1jgVlMJQe7k4fCbfPZk87sBfpEuqLkoxtKnO4B7FwRX68aU6vqM/qaRTDhSjWgySKOam5e91n8qKqCkk15jkpa/RHZuOdI022StcJUCYFc/iWYFQ/s15HAXV5nr+mNakbMB7eS78l086afKcskR2f8YZn9X645ha9E4TW7zUe2enuTrlYtg/HunY/65s5bYh1631grP/tqMEE1DE848WWx1eT3AjFBoIPVSQq+M7YbepZcG5Q00SxklgvX1x6qzFZBMo8WvGhRMaVhEKiiC5gv1q1Cdp1flvWladGLKwWxfMCACx4hfJG7iZ1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=duyaxEWUuBQMCf7V0ViV7/HZ4pMFoVS5hnylXAaFuu8=;
 b=RhQoO/cM8ktPjuLeFxJiXudsyRgOaK4ht40MT9ug3uYSg8d6uT5yMZM9JUKPJkOUzoEvw/7MwLhempUh4jEQO5nIu5pQS1G9BXRaWjEPcSXtD55yN/GsKcCtN0sKOXwZtuf+8mVmNgOcVTYRZlbbd0WB+9tJ+UeaQ7EeMN5JO8IxMqVFY71XO+MH/ZsC239QAVBtgWAIg+TT9TtkIQ/tuWX3yrdGckdjCSxLAvYU+u04ikKMO/oAikxsafwmQv2MXOwCmta35mJy+It6ARK32BUOUr0Q9r2mTJ0OCfEKE+K+opglCS5x/HY2io5SafA1jbAZTK8x4HR4jyyKfxmUug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=duyaxEWUuBQMCf7V0ViV7/HZ4pMFoVS5hnylXAaFuu8=;
 b=ep5pykqDVCkDRRr+IFRKDqL5qSPd1FxNu8BePShSuf3roqAN8g4Jb6FVS7p0JDDIe81NRs3ExN3chTsMFrGWAxOsjeMatvqpfPThgbhcC05B16FyE5fgZMJlscr4FjrQxH0VhEcYBF88b2pI4myi1LDWeXHmITrdkFoFyJClLz0=
Received: from VI1PR04MB5040.eurprd04.prod.outlook.com (20.177.52.24) by
 VI1PR04MB6926.eurprd04.prod.outlook.com (52.133.245.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.19; Thu, 26 Mar 2020 04:41:07 +0000
Received: from VI1PR04MB5040.eurprd04.prod.outlook.com
 ([fe80::154e:421d:dd21:3fc3]) by VI1PR04MB5040.eurprd04.prod.outlook.com
 ([fe80::154e:421d:dd21:3fc3%5]) with mapi id 15.20.2835.023; Thu, 26 Mar 2020
 04:41:07 +0000
From: BOUGH CHEN <haibo.chen@nxp.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "Rafael J . Wysocki" <rafael@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 0/2] amba/platform: Initialize dma_parms at the bus level
Thread-Topic: [PATCH 0/2] amba/platform: Initialize dma_parms at the bus level
Thread-Index: AQHWAplYl7UuTU7KbUCxzHoPeZdbk6haSTvA
Date: Thu, 26 Mar 2020 04:41:07 +0000
Message-ID: <VI1PR04MB504097B40CE0B804FA60D67A90CF0@VI1PR04MB5040.eurprd04.prod.outlook.com>
References: <20200325113407.26996-1-ulf.hansson@linaro.org>
In-Reply-To: <20200325113407.26996-1-ulf.hansson@linaro.org>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=haibo.chen@nxp.com; 
x-originating-ip: [223.106.11.120]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a12ba95b-b9e4-43ab-4fcc-08d7d13fe66b
x-ms-traffictypediagnostic: VI1PR04MB6926:
x-microsoft-antispam-prvs: <VI1PR04MB6926505AA638966CCD55190190CF0@VI1PR04MB6926.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0354B4BED2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(39850400004)(396003)(366004)(26005)(478600001)(316002)(7696005)(186003)(81156014)(81166006)(8936002)(8676002)(2906002)(64756008)(66556008)(7416002)(66476007)(76116006)(66446008)(66946007)(33656002)(55016002)(71200400001)(4326008)(5660300002)(9686003)(86362001)(52536014)(54906003)(110136005)(6506007)(53546011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6926;
 H:VI1PR04MB5040.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qoySdFAHHRD+gA0gSqn9OisgHbeQVnOmrEAz5amFbq9BRP5xxYmAbkNAZdFWseukHJzS8mXvWu/3DLRKowW1SeBphSMXd8Ii3Jzb027wXGmeWyXx7r4aLsGQAzpS0ppWbZ9aTMKO8MrwCM6PB7zK641sbB2i5JEZQVrnyyZzy93XHpWgK4nwNGcM7gCB//mIf99OvThrvBdzQeeVPGCYMXhS2j0Xi0HJbMtdtdtw00eb+NVU7L9r392ItG4ngtpupGFk9nHdTkfpTbpEFjWQVCcP5KJYGJ0Y4VLG9xQAJ25R+QzPneuJ3FyP2eWae3DgMLJ4WGUeiQNxq6ehQw7LGpSuCuYEwV6Ru9CaGZ/D8bnm/CrziLKibe1QzPELQalh8KPurCe7jdyPd6MOR403MhL4qCLnynwBzWaxTIrgg+lucNF4FppMwjoV+WjYT6Z6
x-ms-exchange-antispam-messagedata: ZtTndVysOtTQDU/OfI8EUtVTonxXE8n8pnIRUlIWhqeh3ZNCjLBOXuFVKG0d9whtQtKiMtUGzcoiEEblZFeSKLpGzNajrdugDwX7R/JxyeF2kaaGtGuf4mXm0dmSbZw6EDgNUyZGleIVffVtXeoN2A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a12ba95b-b9e4-43ab-4fcc-08d7d13fe66b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2020 04:41:07.3662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c4OkTy6KnQo1Fj0R931MQegH+4WLgTAGL31jVbMSRxc9x/OjqEz6CUXw/0tmw707/1EMyWEb+lyzisuIN4w+ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6926
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_214112_396563_F16E29EC 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.79 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Vinod Koul <vkoul@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>, Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBVbGYgSGFuc3NvbiA8dWxmLmhh
bnNzb25AbGluYXJvLm9yZz4NCj4gU2VudDogMjAyMMTqM9TCMjXI1SAxOTozNA0KPiBUbzogR3Jl
ZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz47IFJhZmFlbCBKIC4g
V3lzb2NraQ0KPiA8cmFmYWVsQGtlcm5lbC5vcmc+OyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwu
b3JnDQo+IENjOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPjsgQ2hyaXN0b3BoIEhlbGx3
aWcgPGhjaEBsc3QuZGU+Ow0KPiBSdXNzZWxsIEtpbmcgPGxpbnV4QGFybWxpbnV4Lm9yZy51az47
IExpbnVzIFdhbGxlaWoNCj4gPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz47IFZpbm9kIEtvdWwg
PHZrb3VsQGtlcm5lbC5vcmc+OyBCT1VHSCBDSEVODQo+IDxoYWliby5jaGVuQG54cC5jb20+OyBM
dWRvdmljIEJhcnJlIDxsdWRvdmljLmJhcnJlQHN0LmNvbT47DQo+IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZzsgZG1hZW5naW5lQHZnZXIua2VybmVsLm9yZzsgVWxmDQo+IEhh
bnNzb24gPHVsZi5oYW5zc29uQGxpbmFyby5vcmc+DQo+IFN1YmplY3Q6IFtQQVRDSCAwLzJdIGFt
YmEvcGxhdGZvcm06IEluaXRpYWxpemUgZG1hX3Bhcm1zIGF0IHRoZSBidXMgbGV2ZWwNCj4gDQo+
IEl0J3MgY3VycmVudGx5IHRoZSBhbWJhL3BsYXRmb3JtIGRyaXZlcidzIHJlc3BvbnNpYmlsaXR5
IHRvIGluaXRpYWxpemUgdGhlIHBvaW50ZXIsDQo+IGRtYV9wYXJtcywgZm9yIGl0cyBjb3JyZXNw
b25kaW5nIHN0cnVjdCBkZXZpY2UuIFRoZSBiZW5lZml0IHdpdGggdGhpcw0KPiBhcHByb2FjaCBh
bGxvd3MgdXMgdG8gYXZvaWQgdGhlIGluaXRpYWxpemF0aW9uIGFuZCB0byBub3Qgd2FzdGUgbWVt
b3J5IGZvcg0KPiB0aGUgc3RydWN0IGRldmljZV9kbWFfcGFyYW1ldGVycywgYXMgdGhpcyBjYW4g
YmUgZGVjaWRlZCBvbiBhIGNhc2UgYnkgY2FzZQ0KPiBiYXNpcy4NCj4gDQo+IEhvd2V2ZXIsIGl0
IGhhcyB0dXJuZWQgb3V0IHRoYXQgdGhpcyBhcHByb2FjaCBpcyBub3QgdmVyeSBwcmFjdGljYWwu
IE5vdCBvbmx5DQo+IGRvZXMgaXQgbGVhZCB0byBvcGVuIGNvZGluZywgYnV0IGFsc28gdG8gcmVh
bCBlcnJvcnMuIEluIHByaW5jaXBsZSBjYWxsZXJzIG9mDQo+IGRtYV9zZXRfbWF4X3NlZ19zaXpl
KCkgZG9lc24ndCBjaGVjayB0aGUgZXJyb3IgY29kZSwgYnV0IGp1c3QgYXNzdW1lcyBpdA0KPiBz
dWNjZWVkcy4NCj4gDQo+IEZvciB0aGVzZSByZWFzb25zLCB0aGlzIHNlcmllcyBpbml0aWFsaXpl
cyB0aGUgZG1hX3Bhcm1zIGZyb20gdGhlDQo+IGFtYmEvcGxhdGZvcm0gYnVzIGF0IHRoZSBkZXZp
Y2UgcmVnaXN0cmF0aW9uIHBvaW50LiBUaGlzIGFsc28gZm9sbG93cyB0aGUNCj4gd2F5IHRoZSBQ
Q0kgZGV2aWNlcyBhcmUgYmVpbmcgbWFuYWdlZCwgc2VlIHBjaV9kZXZpY2VfYWRkKCkuDQo+IA0K
PiBJZiBpdCB0dXJucyBvdXQgdGhhdCB0aGlzIGlzIGFuIGFjY2VwdGFibGUgc29sdXRpb24sIHdl
IHByb2JhYmx5IGFsc28gd2FudCB0aGUNCj4gY2hhbmdlcyBmb3Igc3RhYmxlLCBidXQgSSBhbSBu
b3Qgc3VyZSBpZiBpdCBhcHBsaWVzIHdpdGhvdXQgY29uZmxpY3RzLg0KPiANCj4gVGhlIHNlcmll
cyBpcyBiYXNlZCBvbiB2NS42LXJjNy4NCj4gDQoNCkhpIFVsZiwNCg0KU2luY2UgaS5NWFFNIFNN
TVUgcmVsYXRlZCBjb2RlIHN0aWxsIG5vdCB1cHN0cmVhbSB5ZXQsIHNvIEkgYXBwbHkgeW91ciBw
YXRjaGVzIG9uIG91ciBpbnRlcm5hbCBMaW51eCBicmFuY2ggYmFzZWQgb24gdjUuNC4yNCwgYW5k
IGZpbmQgaXQgZG8gbm90IHdvcmsgb24gbXkgc2lkZS4gTWF5YmUgZm9yIHBsYXRmb3JtIGNvcmUg
ZHJpdmVycywgdGhlcmUgaXMgYSBnYXAgYmV0d2VlbiB2NS40LjI0IGFuZCB2NS42LXJjNyB3aGlj
aCBoYXMgdGhlIGltcGFjdC4NCkkgd2lsbCB0cnkgdG8gcHV0IG91ciBTTU1VIHJlbGF0ZWQgY29k
ZSBpbnRvIHY1LjYtcmM3LCB0aGVuIGRvIHRoZSB0ZXN0IGFnYWluLg0KDQoNCkJlc3QgUmVnYXJk
cw0KSGFpYm8gQ2hlbg0KDQo+IEtpbmQgcmVnYXJkcw0KPiBVbGYgSGFuc3Nvbg0KPiANCj4gVWxm
IEhhbnNzb24gKDIpOg0KPiAgIGRyaXZlciBjb3JlOiBwbGF0Zm9ybTogSW5pdGlhbGl6ZSBkbWFf
cGFybXMgZm9yIHBsYXRmb3JtIGRldmljZXMNCj4gICBhbWJhOiBJbml0aWFsaXplIGRtYV9wYXJt
cyBmb3IgYW1iYSBkZXZpY2VzDQo+IA0KPiAgZHJpdmVycy9hbWJhL2J1cy5jICAgICAgICAgICAg
ICB8IDIgKysNCj4gIGRyaXZlcnMvYmFzZS9wbGF0Zm9ybS5jICAgICAgICAgfCAxICsNCj4gIGlu
Y2x1ZGUvbGludXgvYW1iYS9idXMuaCAgICAgICAgfCAxICsNCj4gIGluY2x1ZGUvbGludXgvcGxh
dGZvcm1fZGV2aWNlLmggfCAxICsNCj4gIDQgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
DQo+IA0KPiAtLQ0KPiAyLjIwLjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
