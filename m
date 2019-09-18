Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3FFB5E7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 10:01:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxU+83d8+jnmS+u3iBNU9jSw52NzdaMzZ3LjzRjjrPA=; b=T1rtCnOTGbk86a
	8WGBkvX1PZ00t70QCg/GKpvJju7GB/eK/1npT6uR0u9s+rLwUVlP1nT5sIZayyRRAW1I7HofFSeWy
	H5cYFLki06hp14ifbHsUKTHlrpgoAGYbRR9rvRqoZxz7TQNqfdrz+rwHyia4vIvHvYuoepuL9biiP
	gavHeDqN0UAef2Z+Nj1VtdXwXf4EwomTdg+qLOI+VBnHzFo5FQDLrIWiHQhgwS27drF8du0ioACPB
	inXg4MjpiPW8J4j2ReGDHM6ncidC+5lki5O4zolN5zNDvu53ITA7XbGEp41fPOZq0pu2AoBNCys7J
	DivU1vxBEQ4E3C0TCuCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAUuH-0007Ce-AO; Wed, 18 Sep 2019 08:01:45 +0000
Received: from mail-eopbgr140139.outbound.protection.outlook.com
 ([40.107.14.139] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUth-0007Bj-Hq; Wed, 18 Sep 2019 08:01:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YKbQSp/as4wJVkbjOtUmRPMcjyNGcBCThg7z0VoHXO39AoomJxvks7H7ecEMkGPPtsqrJFSY8hmGjajDFt8gst4yN/r7fpg590Cn+1myCIjSP43jp3Kk8wKTVyzKcNxC2kziLcjvpVk2sSi+VFlMCVV4neL15uqgq6+uahqdNxdDaaBtgWjXBUrEpHTGwizi+PkI7kjXnsSopttf1QA2zQp3V5y4+6dHEZga5hUc/VtQHH8h+PlETb3tPc4Xb88vjfCp6w650KUuPB6NWzT/tN6+n9ULnyJf4gh2T+IMspVoQkj/T+8Mtxk0KlP4dG6n9A5nd+hNz1rd68BgzNzzOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gIPqhibGyuBus8ma8GNrpHWlnMHu71nXkHnfclk/LU0=;
 b=PE7MM/Ub2Cgd1x3jiD4qZFPD+CoKAFuM2zRUiqh+rQ1qCLwazilenpah3fuCXKCuYfG5iiIdAVcB52tVzhywUIYlaOoPk9FRu251/ES5N/3ZwxrSOPcCNtHv5PK3TSK22BGA3Cg7ImwgoH64+62nrY8tdYe+ciUcOoCEnBIIIdI0U6LIA10saxK/NCVVvGVJ7sS0rUGhjzjpxoH1wALq5ahJ56IWr2hyESs166ApIXYRJ79mWmOEpXcX41avWI+URlqfBxwOa/DevYLxlWIuW0sw/oNju0JnmGAdv586N40QV+gxHgUns1QdHWjqx2w/pbVGJD0XYOJrTRymIK0Oug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gIPqhibGyuBus8ma8GNrpHWlnMHu71nXkHnfclk/LU0=;
 b=Nnc4MUMSc9lEwynEqdbvNLFPVrRLUyKNplbdRkHxnnyfqy24obX3Yf6rLB9FuQ9US9QtqmQ26PfsprobR5cqdADv2fCCwWFpeGETyFS58EoFaGWVEtG1+C3i0q3a0MmjOXYwwuix/RnodEgxrVDVNFa7V81kujKS5T1Di6JKY8I=
Received: from AM6PR0202MB3432.eurprd02.prod.outlook.com (52.133.11.29) by
 AM6PR0202MB3575.eurprd02.prod.outlook.com (52.133.8.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 18 Sep 2019 08:01:05 +0000
Received: from AM6PR0202MB3432.eurprd02.prod.outlook.com
 ([fe80::898b:1fb:e144:8876]) by AM6PR0202MB3432.eurprd02.prod.outlook.com
 ([fe80::898b:1fb:e144:8876%4]) with mapi id 15.20.2263.023; Wed, 18 Sep 2019
 08:01:05 +0000
From: Peter Rosin <peda@axentia.se>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>, Rob
 Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH] of: restore old handling of cells_name=NULL in
 of_*_phandle_with_args()
Thread-Topic: [PATCH] of: restore old handling of cells_name=NULL in
 of_*_phandle_with_args()
Thread-Index: AQHVbevC+ZIpgPupDkuTJ6ztCAQKrqcxEkGA
Date: Wed, 18 Sep 2019 08:01:05 +0000
Message-ID: <b00ca30f-2c06-7722-96b2-123d15751cb6@axentia.se>
References: <20190918063837.8196-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20190918063837.8196-1-u.kleine-koenig@pengutronix.de>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1PR07CA0036.eurprd07.prod.outlook.com
 (2603:10a6:7:66::22) To AM6PR0202MB3432.eurprd02.prod.outlook.com
 (2603:10a6:209:26::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: deff9c6b-c622-46c1-2aa2-08d73c0e5afa
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:AM6PR0202MB3575; 
x-ms-traffictypediagnostic: AM6PR0202MB3575:
x-microsoft-antispam-prvs: <AM6PR0202MB357521F0A49F070BE2BBC32CBC8E0@AM6PR0202MB3575.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 01644DCF4A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(396003)(366004)(136003)(42606007)(39830400003)(189003)(199004)(4326008)(6486002)(11346002)(7736002)(7416002)(66476007)(66556008)(86362001)(110136005)(54906003)(5660300002)(66446008)(64756008)(25786009)(31696002)(6116002)(66946007)(486006)(6436002)(102836004)(229853002)(6246003)(2616005)(476003)(2906002)(6512007)(8676002)(66574012)(3846002)(6506007)(305945005)(26005)(446003)(386003)(53546011)(14454004)(66066001)(14444005)(508600001)(65806001)(81156014)(65956001)(31686004)(186003)(58126008)(52116002)(36756003)(8936002)(99286004)(316002)(76176011)(81166006)(71200400001)(71190400001)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR0202MB3575;
 H:AM6PR0202MB3432.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sccoNYFUsVnmjWp7syvNbIURItaDwxRW85mYxD4Nibr+4LKK6Rg479eUKZvp3CXsuGsIlqzNsIce64flLJlc36y9fSCifRnPJ4HWt4fkohv82FAPNYmky+/aeJXV/L7+LVgZLZt/WndF2rY9A9zxpSaN+6mPXms223bVp2kt1noaL/nPJuPnFQdU5hYTy8EinDjv+0XMkQa4tEnYuuCnBCVyZWjl4hQKrbSfBXmO3S2j7344pL/WmtgSC9S1Uj5YPm2prWxh87AoG8amLt8pJime5uufIfH89XhF7LIyvwvnJHr0MNypV4PjY4eIbwDThzmMs1rkmdYwXWwY2oX+g4PpbTc0c429/vDIV+rqpX/XhFnSnHbw8o8BYYHEB+2yyaiBXcMlRqIMlFYtxn9J9MyOIxGjJJYdof3EYGBVcWY=
x-ms-exchange-transport-forked: True
Content-ID: <055A992434FBB842A51F0855A2EC0A54@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: deff9c6b-c622-46c1-2aa2-08d73c0e5afa
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2019 08:01:05.2156 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YGf5CEs9CLkD9kLvl3sCJ6s9b9Coh6+p3Ev6Is5sHN5Ro0z1R1v0bHA6rvXUqtyM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0202MB3575
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_010109_799416_BB7EB525 
X-CRM114-Status: GOOD (  24.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.139 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <uwe@kleine-koenig.org>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0xOCAwODozOCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6DQo+IEZyb206IFV3
ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+DQo+IA0KPiBCZWZvcmUgY29t
bWl0IGU0MmVlNjEwMTdmNSAoIm9mOiBMZXQgb2ZfZm9yX2VhY2hfcGhhbmRsZSBmYWxsYmFjayB0
bw0KPiBub24tbmVnYXRpdmUgY2VsbF9jb3VudCIpIHRoZSBpdGVyYXRvciBmdW5jdGlvbnMgY2Fs
bGluZw0KPiBvZl9mb3JfZWFjaF9waGFuZGxlIGFzc3VtZWQgYSBjZWxsIGNvdW50IG9mIDAgaWYg
Y2VsbHNfbmFtZSB3YXMgTlVMTC4NCj4gVGhpcyBjb3JuZXIgY2FzZSB3YXMgbWlzc2VkIHdoZW4g
aW1wbGVtZW50aW5nIHRoZSBmYWxsYmFjayBsb2dpYyBpbg0KPiBlNDJlZTYxMDE3ZjUgYW5kIHJl
c3VsdGVkIGluIGFuIGVuZGxlc3MgbG9vcC4NCj4gDQo+IFJlc3RvcmUgdGhlIG9sZCBiZWhhdmlv
dXIgb2Ygb2ZfY291bnRfcGhhbmRsZV93aXRoX2FyZ3MoKSBhbmQNCj4gb2ZfcGFyc2VfcGhhbmRs
ZV93aXRoX2FyZ3MoKSBhbmQgYWRkIGEgY2hlY2sgdG8NCj4gb2ZfcGhhbmRsZV9pdGVyYXRvcl9p
bml0KCkgdG8gcHJldmVudCBhIHNpbWlsYXIgZmFpbHVyZSBhcyBhIHNhZmV0eQ0KPiBwcmVjYXV0
aW9uLiBvZl9wYXJzZV9waGFuZGxlX3dpdGhfYXJnc19tYXAoKSBkb2Vzbid0IG5lZWQgYSBzaW1p
bGFyIGZpeA0KPiBhcyBjZWxsc19uYW1lIGlzbid0IE5VTEwgdGhlcmUuDQo+IA0KPiBBZmZlY3Rl
ZCBkcml2ZXJzIGFyZToNCj4gIC0gZHJpdmVycy9iYXNlL3Bvd2VyL2RvbWFpbi5jDQo+ICAtIGRy
aXZlcnMvYmFzZS9wb3dlci9kb21haW4uYw0KPiAgLSBkcml2ZXJzL2Nsay90aS9jbGstZHJhNy1h
dGwuYw0KPiAgLSBkcml2ZXJzL2h3bW9uL2libXBvd2VybnYuYw0KPiAgLSBkcml2ZXJzL2kyYy9t
dXhlcy9pMmMtZGVtdXgtcGluY3RybC5jDQo+ICAtIGRyaXZlcnMvaW9tbXUvbXRrX2lvbW11LmMN
Cj4gIC0gZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL2ZtYW4vbWFjLmMNCj4gIC0gZHJp
dmVycy9vcHAvb2YuYw0KPiAgLSBkcml2ZXJzL3BlcmYvYXJtX2RzdV9wbXUuYw0KPiAgLSBkcml2
ZXJzL3JlZ3VsYXRvci9vZl9yZWd1bGF0b3IuYw0KPiAgLSBkcml2ZXJzL3JlbW90ZXByb2MvaW14
X3Jwcm9jLmMNCj4gIC0gZHJpdmVycy9zb2Mvcm9ja2NoaXAvcG1fZG9tYWlucy5jDQo+ICAtIHNv
dW5kL3NvYy9mc2wvaW14LWF1ZG1peC5jDQo+ICAtIHNvdW5kL3NvYy9mc2wvaW14LWF1ZG1peC5j
DQo+ICAtIHNvdW5kL3NvYy9tZXNvbi9heGctY2FyZC5jDQo+ICAtIHNvdW5kL3NvYy9zYW1zdW5n
L3RtMl93bTUxMTAuYw0KPiAgLSBzb3VuZC9zb2Mvc2Ftc3VuZy90bTJfd201MTEwLmMNCj4gDQo+
IFRoYW5rcyB0byBHZWVydCBVeXR0ZXJob2V2ZW4gZm9yIHJlcG9ydGluZyB0aGUgaXNzdWUsIFBl
dGVyIFJvc2luIGZvcg0KPiBoZWxwaW5nIHBpbnBvaW50IHRoZSBhY3R1YWwgcHJvYmxlbSBhbmQg
dGhlIHRlc3RlcnMgZm9yIGNvbmZpcm1pbmcgdGhpcw0KPiBmaXguDQo+IA0KPiBGaXhlczogZTQy
ZWU2MTAxN2Y1ICgib2Y6IExldCBvZl9mb3JfZWFjaF9waGFuZGxlIGZhbGxiYWNrIHRvIG5vbi1u
ZWdhdGl2ZSBjZWxsX2NvdW50IikNCj4gVGVzdGVkLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6
eXByb3dza2lAc2Ftc3VuZy5jb20+DQo+IFRlc3RlZC1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxn
ZWVydCtyZW5lc2FzQGdsaWRlci5iZT4NCj4gU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7Zu
aWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4NCj4gLS0tDQo+IEhlbGxvLA0KPiAN
Cj4gY29tcGFyZWQgdG8gdGhlIHVudGVzdGVkIHBhdGNoIEkgc2VudCB5ZXN0ZXJkYXkgSSBhbHNv
IGZpeGVkDQo+IG9mX3BhcnNlX3BoYW5kbGVfd2l0aF9hcmdzIHdoaWNoIGhhcyB0aHJlZSB1c2Vy
cyB0aGF0IHBhc3MNCj4gY2VsbHNfbmFtZT1OVUxMLiAoaS5lLiBkcml2ZXJzL2Nsay90aS9jbGst
ZHJhNy1hdGwuYywNCj4gc291bmQvc29jL2ZzbC9pbXgtYXVkbWl4LmMsIHNvdW5kL3NvYy9zYW1z
dW5nL3RtMl93bTUxMTAuYykgSSBkaWRuJ3QNCj4gbG9vayBjbG9zZWx5LCBidXQgbWF5YmUgdGhl
c2UgY291bGQgYmUgY29udmVydGVkIHRvIHVzZSBvZl9wYXJzZV9waGFuZGxlDQo+IGFzIHRoZXJl
IGFyZSBubyBhcmd1bWVudHMgdG8gYmUgcHJvY2Vzc2VkIHdpdGggbm8gY2VsbHNfbmFtZT8hDQo+
IA0KPiBCZXN0IHJlZ2FyZHMNCj4gVXdlDQo+IA0KPiAgZHJpdmVycy9vZi9iYXNlLmMgfCAzMCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvb2Yv
YmFzZS5jIGIvZHJpdmVycy9vZi9iYXNlLmMNCj4gaW5kZXggMmYyNWQyZGZlY2ZhLi4yNWVlMDdj
MGEzY2QgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvb2YvYmFzZS5jDQo+ICsrKyBiL2RyaXZlcnMv
b2YvYmFzZS5jDQo+IEBAIC0xMjg2LDYgKzEyODYsMTMgQEAgaW50IG9mX3BoYW5kbGVfaXRlcmF0
b3JfaW5pdChzdHJ1Y3Qgb2ZfcGhhbmRsZV9pdGVyYXRvciAqaXQsDQo+ICANCj4gIAltZW1zZXQo
aXQsIDAsIHNpemVvZigqaXQpKTsNCj4gIA0KPiArCS8qDQo+ICsJICogb25lIG9mIGNlbGxfY291
bnQgb3IgY2VsbHNfbmFtZSBtdXN0IGJlIHByb3ZpZGVkIHRvIGRldGVybWluZSB0aGUNCj4gKwkg
KiBhcmd1bWVudCBsZW5ndGguDQo+ICsJICovDQo+ICsJaWYgKGNlbGxfY291bnQgPCAwICYmICFj
ZWxsc19uYW1lKQ0KPiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gKw0KPiAgCWxpc3QgPSBvZl9nZXRf
cHJvcGVydHkobnAsIGxpc3RfbmFtZSwgJnNpemUpOw0KPiAgCWlmICghbGlzdCkNCj4gIAkJcmV0
dXJuIC1FTk9FTlQ7DQo+IEBAIC0xNTEyLDEwICsxNTE5LDE3IEBAIGludCBvZl9wYXJzZV9waGFu
ZGxlX3dpdGhfYXJncyhjb25zdCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLCBjb25zdCBjaGFyICps
aXN0X25hDQo+ICAJCQkJY29uc3QgY2hhciAqY2VsbHNfbmFtZSwgaW50IGluZGV4LA0KPiAgCQkJ
CXN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgKm91dF9hcmdzKQ0KPiAgew0KPiArCWludCBjZWxsX2Nv
dW50ID0gLTE7DQo+ICsNCj4gIAlpZiAoaW5kZXggPCAwKQ0KPiAgCQlyZXR1cm4gLUVJTlZBTDsN
Cj4gLQlyZXR1cm4gX19vZl9wYXJzZV9waGFuZGxlX3dpdGhfYXJncyhucCwgbGlzdF9uYW1lLCBj
ZWxsc19uYW1lLCAtMSwNCj4gLQkJCQkJICAgIGluZGV4LCBvdXRfYXJncyk7DQo+ICsNCj4gKwkv
KiBJZiBjZWxsc19uYW1lIGlmIE5VTEwgd2UgYXNzdW1lIGEgY2VsbCBjb3VudCBvZiAwICovDQo+
ICsJaWYgKCFjZWxsc19uYW1lKQ0KPiArCQljZWxsX2NvdW50ID0gMDsNCj4gKw0KPiArCXJldHVy
biBfX29mX3BhcnNlX3BoYW5kbGVfd2l0aF9hcmdzKG5wLCBsaXN0X25hbWUsIGNlbGxzX25hbWUs
DQo+ICsJCQkJCSAgICBjZWxsX2NvdW50LCBpbmRleCwgb3V0X2FyZ3MpOw0KPiAgfQ0KPiAgRVhQ
T1JUX1NZTUJPTChvZl9wYXJzZV9waGFuZGxlX3dpdGhfYXJncyk7DQo+ICANCj4gQEAgLTE3NjUs
NiArMTc3OSwxOCBAQCBpbnQgb2ZfY291bnRfcGhhbmRsZV93aXRoX2FyZ3MoY29uc3Qgc3RydWN0
IGRldmljZV9ub2RlICpucCwgY29uc3QgY2hhciAqbGlzdF9uYQ0KPiAgCXN0cnVjdCBvZl9waGFu
ZGxlX2l0ZXJhdG9yIGl0Ow0KPiAgCWludCByYywgY3VyX2luZGV4ID0gMDsNCj4gIA0KPiArCS8q
IElmIGNlbGxzX25hbWUgaXMgTlVMTCB3ZSBhc3N1bWUgYSBjZWxsIGNvdW50IG9mIDAgKi8NCj4g
KwlpZiAoY2VsbHNfbmFtZSA9PSBOVUxMKSB7DQoNCkEgY291cGxlIG9mIG5pdHMuDQoNCkkgZG9u
J3Qga25vdyBpZiB0aGVyZSBhcmUgb3RoZXIgY29uc2lkZXJhdGlvbnMsIGJ1dCBpbiB0aGUgcHJl
dmlvdXMgdHdvDQpodW5rcyB5b3UgdXNlICFjZWxsc19uYW1lIGluc3RlYWQgb2YgY29tcGFyaW5n
IGV4cGxpY2l0bHkgd2l0aCBOVUxMLg0KUGVyc29uYWxseSwgSSBmaW5kIHRoZSBzaG9ydGVyIGZv
cm0gbW9yZSByZWFkYWJsZSwgYW5kIGluIHRoZSBuYW1lIG9mDQpjb25zaXN0ZW5jeSBibGEgYmxh
Li4uDQoNCkFsc28sIHRoZSBjb21tZW50IGV4cGxhaW5pbmcgdGhpcyBOVUxMLWNoZWNrIGRpZG4n
dCByZWFsbHkgbWFrZSBzZW5zZQ0KdG8gbWUgdW50aWwgSSByZWFsaXplZCB0aGF0IGtub3dpbmcg
dGhlIGNlbGwgY291bnQgdG8gYmUgemVybyBtYWtlcw0KY291bnRpbmcgdHJpdmlhbC4gU29tZXRo
aW5nIGFsb25nIHRob3NlIGxpbmVzIHNob3VsZCBwZXJoYXBzIGJlIGluIHRoZQ0KY29tbWVudD8N
Cg0KQnV0IGFzIEkgc2FpZCwgdGhlc2UgYXJlIG5pdHMuIEZlZWwgZnJlZSB0byBpZ25vcmUuDQoN
CkNoZWVycywNClBldGVyDQoNCj4gKwkJY29uc3QgX19iZTMyICpsaXN0Ow0KPiArCQlpbnQgc2l6
ZTsNCj4gKw0KPiArCQlsaXN0ID0gb2ZfZ2V0X3Byb3BlcnR5KG5wLCBsaXN0X25hbWUsICZzaXpl
KTsNCj4gKwkJaWYgKCFsaXN0KQ0KPiArCQkJcmV0dXJuIC1FTk9FTlQ7DQo+ICsNCj4gKwkJcmV0
dXJuIHNpemUgLyBzaXplb2YoKmxpc3QpOw0KPiArCX0NCj4gKw0KPiAgCXJjID0gb2ZfcGhhbmRs
ZV9pdGVyYXRvcl9pbml0KCZpdCwgbnAsIGxpc3RfbmFtZSwgY2VsbHNfbmFtZSwgLTEpOw0KPiAg
CWlmIChyYykNCj4gIAkJcmV0dXJuIHJjOw0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
