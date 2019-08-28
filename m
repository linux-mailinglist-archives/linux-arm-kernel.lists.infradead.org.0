Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C75A00B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 13:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SDSBhlDVLDapoGzbnT/Vmi40c92Rbs7BbS6u9zevTc8=; b=HqDxMLxAQ1NXHO
	NGMUAtfZQdVnjJfi5JRSOkh0pWvumqNctGKhCp+RHFbbIoLNGspAgEMuhStYWinCH+Etfs9PkzZeJ
	RO3aBS7OUTSiD67UUMPuiOHJm0i2rOSnnnmmNIJVYJ7OnAsUg6UE/W+xlsrdNWhj9CsuW4q7C3F+E
	yH7qolOYFLMfea7U/HUkVS6AGW3UAoyzEJteQPnXIgi0c0PmrrZhMv8q/C0sVJAbqGDwEFdajgIqg
	usIcj2hcyn+XGtmp6Z+2Cvs4f6pEJYAwui76DPoK3jCa8vRMF9UjMabI0wJ9yFQRIJk1l4zk7jyUy
	RsiAEgSRiQe4ef6V8AyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2w6K-00024u-BJ; Wed, 28 Aug 2019 11:26:56 +0000
Received: from mail-eopbgr10068.outbound.protection.outlook.com ([40.107.1.68]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2w67-00024M-91
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 11:26:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bFVuGzY0UG6GuAZnuxFXyxJaxGUbTu3dXVWP5RnPeLQDj7It4wM32XqFn8jWOX4lk2LFdhImLzo/nyKXWGxP+hH1+2Yo3Pt69wH0/gUHM3lFIlw0gxJkrp4Wr1ivOILrfBLER6dTt+Qt5urJld0O2+YaDzAHW1N1M/zhUlTIk6iiraR11hfyU2RenLa+6+thUUV++9JqxGHPCTdm0esbwhP/pvJ2CoMU5pxMhQGdYQ1GYNAy2n7jQ9qk5CdoHImpFVNupcTxwuR/ljpf0H36BSshC/J6ctV9IXYRwUrKcw6B7q5dcJjc1z/QHvn9eetwskNG/+8CzfzrLY191mJB2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sTgS0Oo7eKH+5aot68ePHD6BWe2gmrdGPFYdRcOJchY=;
 b=eNr60YiWPU+/56po48KJfLt0ues/SXCjRyzYp10zYkyHla6Yq4y01YwX9DvmupPeNhs1RyxSCp/0yV+1KW3qhncr393tdw2VMD1+o5/PSfcZDWRUSlcVafk1493XPFXEP2j7vNnWNnQ7KnXz6qGqZ6IfA6/WgQnd0CjBkKKU/gna9gxJ8k9MYZI5h1QpCmaGulIgdJCKLbJc5rKyW/bY/+7iS9IPvfkP5rIoqiV88aVJI42n8wdLzik6555Ws2uLMZQv2rj/h462SdyvG9UN/8NIuUL0FAJqotQKo49jwfhDlbq+EvvcUPAm8OWX1ZjEbEsWCL1CsNT2pGy3XedCCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sTgS0Oo7eKH+5aot68ePHD6BWe2gmrdGPFYdRcOJchY=;
 b=gStmIQQWIP0hCG25bjaKJ37R5L2MTLRg/VQ9tLQL/cBJDLzXoDUqPrvAOQq1dFTNU1kf6gCZE3K1avZq5c7w31e+Qkozp0xw061RXrELAxOqCt2FJ30y3V7+wNq0yQwx4ty6utUxjLSbeNBIEN33gntJwIjt0uNgeup9vJ0ZfKw=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5195.eurprd04.prod.outlook.com (20.176.236.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Wed, 28 Aug 2019 11:26:38 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Wed, 28 Aug 2019
 11:26:38 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH V8 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH V8 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVXU13WOxpPaartE2ouG051TY+n6cQUcCAgAAOMbA=
Date: Wed, 28 Aug 2019 11:26:38 +0000
Message-ID: <DB7PR04MB4618977E824643FDB203B84CE6A30@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20190828030305.7190-1-qiangqing.zhang@nxp.com>
 <20190828095135.gsyqwor7tea2radn@willie-the-truck>
In-Reply-To: <20190828095135.gsyqwor7tea2radn@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e89abf57-f83c-4dc3-984d-08d72baa97be
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB5195; 
x-ms-traffictypediagnostic: DB7PR04MB5195:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5195AF44D5F902CD174057C9E6A30@DB7PR04MB5195.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(376002)(136003)(396003)(39860400002)(199004)(189003)(13464003)(54534003)(14454004)(25786009)(478600001)(9686003)(6436002)(55016002)(8936002)(229853002)(316002)(7696005)(54906003)(66066001)(99286004)(486006)(53546011)(102836004)(6506007)(76176011)(26005)(53936002)(4326008)(6246003)(446003)(11346002)(476003)(186003)(66476007)(76116006)(66556008)(64756008)(8676002)(66446008)(256004)(86362001)(14444005)(2906002)(66946007)(71190400001)(71200400001)(33656002)(6116002)(3846002)(52536014)(6916009)(81166006)(81156014)(74316002)(305945005)(5660300002)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5195;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: blPqnVJAhYAcOI3tQZbRMN4cOd4t5+XC2xL3QZ/dPHJ1/XZBCscgl1zg/me0+FYRplMipqWScax90CQuKXI7fo/hApJ+/PmT5F+4U4uP3EgfCJJZnYUHbuu5TvhETx2ITJoqPYvnW6Eomq2EnQTNbzbqnDKufwWRPKJHB5WgjSFQD93ckaAXg95PexfGxoTB4J9KxKrBsh49XttzbrqconzuP0mo3LE9uFla3ilPhyzR3yJJ9gJV4FjIZMTtw151ANf02iHmgVsuk0iKfTG/3QEYcpglHiFNEP8gQmltVVVgJR+K7VS0OnSpKjd0IgjNu3tOA9FHmMSAusBXOeTtUn5PEpSG9EqHSwNsqtxfP6I2hHO8gUq/ZWYeJvMzBxUXdqrECWZ4zd8I8VPg6bt752q+81bDSiSJYLyAFVSWBKk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e89abf57-f83c-4dc3-984d-08d72baa97be
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 11:26:38.4670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XvJUsxE0694jSOo5dGx0XAmLfZ78Yo+BRQERkIyPKzycflyz5R3pTBTqlYh61B6Sw3+x60ijFgBwwndkjfp77w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_042643_573244_AB654FEA 
X-CRM114-Status: GOOD (  29.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFdpbGwgRGVhY29uIDx3aWxs
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnlubQ45pyIMjjml6UgMTc6NTINCj4gVG86IEpvYWtp
bSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+IENjOiBtYXJrLnJ1dGxhbmRAYXJt
LmNvbTsgcm9iaW4ubXVycGh5QGFybS5jb207IEZyYW5rIExpDQo+IDxmcmFuay5saUBueHAuY29t
PjsgZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT47DQo+IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIFY4IDEvM10gcGVyZjog
aW14OF9kZHJfcGVyZjogYWRkIEFYSSBJRCBmaWx0ZXIgc3VwcG9ydA0KPiANCj4gT24gV2VkLCBB
dWcgMjgsIDIwMTkgYXQgMDM6MDU6MzZBTSArMDAwMCwgSm9ha2ltIFpoYW5nIHdyb3RlOg0KPiA+
IEFYSSBmaWx0ZXJpbmcgaXMgdXNlZCBieSBDU1YgbW9kZXMgMHg0MSBhbmQgMHg0MiB0byBjb3Vu
dCByZWFkcyBvcg0KPiA+IHdyaXRlcyB3aXRoIGFuIEFSSUQgb3IgQVdJRCBtYXRjaGluZyBmaWx0
ZXIgc2V0dGluZy4gR3JhbnVsYXJpdHkgaXMgYXQNCj4gPiBzdWJzeXN0ZW0gbGV2ZWwuIEltcGxl
bWVudGF0aW9uIGRvZXMgbm90IGFsbG93IGZpbHRyaW5nIGJldHdlZW4NCj4gPiBtYXN0ZXJzIHdp
dGhpbiBhIHN1YnN5c3RlbS4gRmlsdGVyIGlzIGRlZmluZWQgd2l0aCAyIGNvbmZpZ3VyYXRpb24N
Cj4gcGFyYW1ldGVycy4NCj4gPg0KPiA+IC0tQVhJX0lEIGRlZmluZXMgQXhJRCBtYXRjaGluZyB2
YWx1ZQ0KPiA+IC0tQVhJX01BU0tJTkcgZGVmaW5lcyB3aGljaCBiaXRzIG9mIEF4SUQgYXJlIG1l
YW5pbmdmdWwgZm9yIHRoZSBtYXRjaGluZw0KPiA+IAkw77yaY29ycmVzcG9uZGluZyBiaXQgaXMg
bWFza2VkDQo+ID4gCTE6IGNvcnJlc3BvbmRpbmcgYml0IGlzIG5vdCBtYXNrZWQsIGkuZS4gdXNl
ZCB0byBkbyB0aGUgbWF0Y2hpbmcNCj4gPg0KPiA+IFdoZW4gbm9uLW1hc2tlZCBiaXRzIGFyZSBt
YXRjaGluZyBjb3JyZXNwb25kaW5nIEFYSV9JRCBiaXRzIHRoZW4NCj4gPiBjb3VudGVyIGlzIGlu
Y3JlbWVudGVkLiBUaGlzIGZpbHRlciBhbGxvd3MgY291bnRpbmcgcmVhZCBvciB3cml0ZQ0KPiA+
IGFjY2VzcyBmcm9tIGEgc3Vic3lzdGVtIG9yIG11bHRpcGxlIHN1YnN5c3RlbXMuDQo+ID4NCj4g
PiBQZXJmIGNvdW50ZXIgaXMgaW5jcmVtZW50ZWQgaWYgQXhJRCAmJiBBWElfTUFTS0lORyA9PSBB
WElfSUQgJiYNCj4gPiBBWElfTUFTS0lORw0KPiA+DQo+ID4gQVhJX0lEIGFuZCBBWElfTUFTS0lO
RyBhcmUgbWFwcGVkIG9uIERQQ1IxIHJlZ2lzdGVyIGluIHBlcmZvcm1hbmNlDQo+IGNvdW50ZXIu
DQo+ID4NCj4gPiBSZWFkIGFuZCB3cml0ZSBBWEkgSUQgZmlsdGVyIHNob3VsZCB3cml0ZSBzYW1l
IHZhbHVlIHRvIERQQ1IxIGlmIHdhbnQNCj4gPiB0byBzcGVjaWZ5IGF0IHRoZSBzYW1lIHRpbWUg
YXMgdGhpcyBmaWx0ZXIgaXMgc2hhcmVkIGJldHdlZW4gY291bnRlcnMuDQo+ID4NCj4gPiBlLmcu
DQo+ID4gcGVyZiBzdGF0IC1hIC1lIGlteDhfZGRyMC9heGlkLXJlYWQsYXhpX21hc2s9MHhNTU1N
LGF4aV9pZD0weEREREQvDQo+IGNtZA0KPiA+IHBlcmYgc3RhdCAtYSAtZSBpbXg4X2RkcjAvYXhp
ZC13cml0ZSxheGlfbWFzaz0weE1NTU0sYXhpX2lkPTB4RERERC8NCj4gPiBjbWQNCj4gPg0KPiA+
IE5PVEU6IGF4aV9tYXNrIGlzIGludmVydGVkIGluIHVzZXJzcGFjZShpLmUuIHNldCBiaXRzIGFy
ZSBiaXRzIHRvDQo+ID4gbWFzayksIGFuZCBpdCB3aWxsIGJlIHJldmVydGVkIGluIGRyaXZlciBh
dXRvbWF0aWNhbGx5LiBzbyB0aGF0IHRoZQ0KPiA+IHVzZXIgY2FuIGp1c3Qgc3BlY2lmeSBheGlf
aWQgdG8gbW9uaXRvciBhIHNwZWNpZmljIGlkLCByYXRoZXIgdGhhbiBoYXZpbmcgdG8NCj4gc3Bl
Y2lmeSBheGlfbWFzay4NCj4gPiBlLmcuDQo+ID4gcGVyZiBzdGF0IC1hIC1lIGlteDhfZGRyMC9h
eGlkLXJlYWQsYXhpX2lkPTB4MTIvIGNtZCwgd2hpY2ggd2lsbA0KPiA+IG1vbml0b3IgQVJJRD0w
eDEyDQo+ID4NCj4gPiBDaGFuZ2VMb2c6DQo+ID4gVjEgLT4gVjI6DQo+ID4gCSogYWRkIGVycm9y
IGxvZyBpZiB1c2VyIHNwZWNpZmllcyByZWFkL3dyaXRlIEFYSSBJRCBmaWx0ZXIgYXQNCj4gPiAJ
dGhlIHNhbWUgdGltZS4NCj4gPiAJKiBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoKSBpbnN0ZWFk
IG9mIG9mX21hdGNoX2RldmljZSgpLCBhbmQNCj4gPiAJcmVtb3ZlIHRoZSBjaGVjayBvZiByZXR1
cm4gdmFsdWUuDQo+ID4gVjIgLT4gVjM6DQo+ID4gCSogbW92ZSB0aGUgQVhJIElEIGNoZWNrIHRv
IGV2ZW50X2FkZCgpLg0KPiA+IAkqIGFkZCBzdXBwb3J0IGZvciBzYW1lIHZhbHVlIG9mIGF4aV9p
ZC4NCj4gPiBWMyAtPiBWNDoNCj4gPiAJKiBtb3ZlIHRoZSBBWEkgSUQgY2hlY2sgdG8gZXZlbnRf
aW5pdCgpLg0KPiA+IFY0IC0+IFY1Og0KPiA+IAkqIHJlamVjdCBldmVudCBncm91cCBpZiBBWEkg
SUQgbm90IGNvbnNpc3RlbnQgaW4gZXZlbnRfaW5pdCgpLg0KPiA+IFY1IC0+IFY2Og0KPiA+IAkq
IGNoYW5nZSB0aGUgZXZlbnQgbmFtZTogYXhpLWlkLXJlYWQtPmF4aWQtcmVhZDsNCj4gPiAJYXhp
LWlkLXdyaXRlLT5heGlkLXdyaXRlDQo+ID4gCSogYWRkIGFub3RoZXIgaGVscGVyOiBkZHJfcGVy
Zl9maWx0ZXJzX2NvbXBhdGlibGUoKQ0KPiA+IAkqIGRyb3AgdGhlIGRldl9kYmcoKQ0KPiA+IFY2
IC0+IFY3Og0KPiA+IAkqIHJldmVydCBBWElfTUFTS0lORyBhdCBkcml2ZXIuDQo+ID4gVjcgLT4g
Vjg6DQo+ID4gCSogc2VwYXJhdGUgYXhpX2lkIHRvIGF4aV9tYXNrIGFuZCBheGlfaWQgdGhlc2Ug
dHdvIGZpbGVkcy4NCj4gDQo+IE5pdDogcGxlYXNlIGRvbid0IGluY2x1ZGUgdGhlIENoYW5nZUxv
ZyBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgKHdlIGRvbid0IHdhbnQNCj4gdG8gaW5jbHVkZSB0aGlz
IGluIHRoZSBsaW51eCBoaXN0b3J5KS4gSW5zdGVhZCBzdGljayBpdCBhZnRlciB0aGUgY3V0Lg0K
DQpbSm9ha2ltXSBHb3QgaXQuIFRoYW5rcy4NCg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvYWtpbSBa
aGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvcGVy
Zi9mc2xfaW14OF9kZHJfcGVyZi5jIHwgNzINCj4gPiArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNzAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BlcmYvZnNsX2lteDhfZGRyX3Bl
cmYuYw0KPiA+IGIvZHJpdmVycy9wZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMNCj4gPiBpbmRleCAw
ZTMzMTBkYmIxNDUuLmU5YmY5NTZmNDM0ZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3BlcmYv
ZnNsX2lteDhfZGRyX3BlcmYuYw0KPiA+ICsrKyBiL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJf
cGVyZi5jDQo+ID4gQEAgLTM1LDYgKzM1LDggQEANCj4gPiAgI2RlZmluZSBFVkVOVF9DWUNMRVNf
Q09VTlRFUgkwDQo+ID4gICNkZWZpbmUgTlVNX0NPVU5URVJTCQk0DQo+ID4NCj4gPiArI2RlZmlu
ZSBBWElfTUFTS0lOR19SRVZFUlQJMHhmZmZmMDAwMAkvKiBBWElfTUFTS0lORyhNU0INCj4gMTZi
aXRzKSArIEFYSV9JRChMU0IgMTZiaXRzKSAqLw0KPiA+ICsNCj4gPiAgI2RlZmluZSB0b19kZHJf
cG11KHApCQljb250YWluZXJfb2YocCwgc3RydWN0IGRkcl9wbXUsIHBtdSkNCj4gPg0KPiA+ICAj
ZGVmaW5lIEREUl9QRVJGX0RFVl9OQU1FCSJpbXg4X2RkciINCj4gPiBAQCAtNDIsOSArNDQsMjIg
QEANCj4gPg0KPiA+ICBzdGF0aWMgREVGSU5FX0lEQShkZHJfaWRhKTsNCj4gPg0KPiA+ICsvKiBE
RFIgUGVyZiBoYXJkd2FyZSBmZWF0dXJlICovDQo+ID4gKyNkZWZpbmUgRERSX0NBUF9BWElfSURf
RklMVEVSICAgICAgICAgIDB4MSAgICAgLyogc3VwcG9ydCBBWEkgSUQNCj4gZmlsdGVyICovDQo+
ID4gKw0KPiA+ICtzdHJ1Y3QgZnNsX2Rkcl9kZXZ0eXBlX2RhdGEgew0KPiA+ICsJdW5zaWduZWQg
aW50IHF1aXJrczsgICAgLyogcXVpcmtzIG5lZWRlZCBmb3IgZGlmZmVyZW50IEREUiBQZXJmIGNv
cmUgKi8NCj4gPiArfTsNCj4gPiArDQo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZnNsX2Rkcl9k
ZXZ0eXBlX2RhdGEgaW14OF9kZXZ0eXBlX2RhdGE7DQo+ID4gKw0KPiA+ICtzdGF0aWMgY29uc3Qg
c3RydWN0IGZzbF9kZHJfZGV2dHlwZV9kYXRhIGlteDhtX2RldnR5cGVfZGF0YSA9IHsNCj4gPiAr
CS5xdWlya3MgPSBERFJfQ0FQX0FYSV9JRF9GSUxURVIsDQo+ID4gK307DQo+ID4gKw0KPiA+ICBz
dGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBpbXhfZGRyX3BtdV9kdF9pZHNbXSA9IHsN
Cj4gPiAtCXsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDgtZGRyLXBtdSIsfSwNCj4gPiAtCXsgLmNv
bXBhdGlibGUgPSAiZnNsLGlteDhtLWRkci1wbXUiLH0sDQo+ID4gKwl7IC5jb21wYXRpYmxlID0g
ImZzbCxpbXg4LWRkci1wbXUiLCAuZGF0YSA9ICZpbXg4X2RldnR5cGVfZGF0YX0sDQo+ID4gKwl7
IC5jb21wYXRpYmxlID0gImZzbCxpbXg4bS1kZHItcG11IiwgLmRhdGEgPSAmaW14OG1fZGV2dHlw
ZV9kYXRhfSwNCj4gPiAgCXsgLyogc2VudGluZWwgKi8gfQ0KPiA+ICB9Ow0KPiA+ICBNT0RVTEVf
REVWSUNFX1RBQkxFKG9mLCBpbXhfZGRyX3BtdV9kdF9pZHMpOyBAQCAtNTgsNiArNzMsNyBAQA0K
PiBzdHJ1Y3QNCj4gPiBkZHJfcG11IHsNCj4gPiAgCXN0cnVjdCBwZXJmX2V2ZW50ICpldmVudHNb
TlVNX0NPVU5URVJTXTsNCj4gPiAgCWludCBhY3RpdmVfZXZlbnRzOw0KPiA+ICAJZW51bSBjcHVo
cF9zdGF0ZSBjcHVocF9zdGF0ZTsNCj4gPiArCWNvbnN0IHN0cnVjdCBmc2xfZGRyX2RldnR5cGVf
ZGF0YSAqZGV2dHlwZV9kYXRhOw0KPiA+ICAJaW50IGlycTsNCj4gPiAgCWludCBpZDsNCj4gPiAg
fTsNCj4gPiBAQCAtMTI5LDYgKzE0NSw4IEBAIHN0YXRpYyBzdHJ1Y3QgYXR0cmlidXRlICpkZHJf
cGVyZl9ldmVudHNfYXR0cnNbXSA9IHsNCj4gPiAgCUlNWDhfRERSX1BNVV9FVkVOVF9BVFRSKHJl
ZnJlc2gsIDB4MzcpLA0KPiA+ICAJSU1YOF9ERFJfUE1VX0VWRU5UX0FUVFIod3JpdGUsIDB4Mzgp
LA0KPiA+ICAJSU1YOF9ERFJfUE1VX0VWRU5UX0FUVFIocmF3LWhhemFyZCwgMHgzOSksDQo+ID4g
KwlJTVg4X0REUl9QTVVfRVZFTlRfQVRUUihheGlkLXJlYWQsIDB4NDEpLA0KPiA+ICsJSU1YOF9E
RFJfUE1VX0VWRU5UX0FUVFIoYXhpZC13cml0ZSwgMHg0MiksDQo+ID4gIAlOVUxMLA0KPiA+ICB9
Ow0KPiA+DQo+ID4gQEAgLTEzOCw5ICsxNTYsMTMgQEAgc3RhdGljIHN0cnVjdCBhdHRyaWJ1dGVf
Z3JvdXANCj4gPiBkZHJfcGVyZl9ldmVudHNfYXR0cl9ncm91cCA9IHsgIH07DQo+ID4NCj4gPiAg
UE1VX0ZPUk1BVF9BVFRSKGV2ZW50LCAiY29uZmlnOjAtNyIpOw0KPiA+ICtQTVVfRk9STUFUX0FU
VFIoYXhpX2lkLCAiY29uZmlnMTowLTE1Iik7DQo+IFBNVV9GT1JNQVRfQVRUUihheGlfbWFzaywN
Cj4gPiArImNvbmZpZzE6MTYtMzEiKTsNCj4gPg0KPiA+ICBzdGF0aWMgc3RydWN0IGF0dHJpYnV0
ZSAqZGRyX3BlcmZfZm9ybWF0X2F0dHJzW10gPSB7DQo+ID4gIAkmZm9ybWF0X2F0dHJfZXZlbnQu
YXR0ciwNCj4gPiArCSZmb3JtYXRfYXR0cl9heGlfaWQuYXR0ciwNCj4gPiArCSZmb3JtYXRfYXR0
cl9heGlfbWFzay5hdHRyLA0KPiA+ICAJTlVMTCwNCj4gPiAgfTsNCj4gPg0KPiA+IEBAIC0xOTAs
NiArMjEyLDI2IEBAIHN0YXRpYyB1MzIgZGRyX3BlcmZfcmVhZF9jb3VudGVyKHN0cnVjdCBkZHJf
cG11DQo+ICpwbXUsIGludCBjb3VudGVyKQ0KPiA+ICAJcmV0dXJuIHJlYWRsX3JlbGF4ZWQocG11
LT5iYXNlICsgQ09VTlRFUl9SRUFEICsgY291bnRlciAqIDQpOyAgfQ0KPiA+DQo+ID4gK3N0YXRp
YyBib29sIGRkcl9wZXJmX2lzX2ZpbHRlcmVkKHN0cnVjdCBwZXJmX2V2ZW50ICpldmVudCkgew0K
PiA+ICsJcmV0dXJuIGV2ZW50LT5hdHRyLmNvbmZpZyA9PSAweDQxIHx8IGV2ZW50LT5hdHRyLmNv
bmZpZyA9PSAweDQyOyB9DQo+ID4gKw0KPiA+ICtzdGF0aWMgdTMyIGRkcl9wZXJmX2ZpbHRlcl92
YWwoc3RydWN0IHBlcmZfZXZlbnQgKmV2ZW50KSB7DQo+ID4gKwlyZXR1cm4gZXZlbnQtPmF0dHIu
Y29uZmlnMTsNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIGJvb2wgZGRyX3BlcmZfZmlsdGVy
c19jb21wYXRpYmxlKHN0cnVjdCBwZXJmX2V2ZW50ICphLA0KPiA+ICsJCQkJCXN0cnVjdCBwZXJm
X2V2ZW50ICpiKQ0KPiA+ICt7DQo+ID4gKwlpZiAoIWRkcl9wZXJmX2lzX2ZpbHRlcmVkKGEpKQ0K
PiA+ICsJCXJldHVybiB0cnVlOw0KPiA+ICsJaWYgKCFkZHJfcGVyZl9pc19maWx0ZXJlZChiKSkN
Cj4gPiArCQlyZXR1cm4gdHJ1ZTsNCj4gPiArCXJldHVybiBkZHJfcGVyZl9maWx0ZXJfdmFsKGEp
ID09IGRkcl9wZXJmX2ZpbHRlcl92YWwoYik7IH0NCj4gPiArDQo+ID4gIHN0YXRpYyBpbnQgZGRy
X3BlcmZfZXZlbnRfaW5pdChzdHJ1Y3QgcGVyZl9ldmVudCAqZXZlbnQpICB7DQo+ID4gIAlzdHJ1
Y3QgZGRyX3BtdSAqcG11ID0gdG9fZGRyX3BtdShldmVudC0+cG11KTsgQEAgLTIxNiw2ICsyNTgs
MTUNCj4gQEANCj4gPiBzdGF0aWMgaW50IGRkcl9wZXJmX2V2ZW50X2luaXQoc3RydWN0IHBlcmZf
ZXZlbnQgKmV2ZW50KQ0KPiA+ICAJCQkhaXNfc29mdHdhcmVfZXZlbnQoZXZlbnQtPmdyb3VwX2xl
YWRlcikpDQo+ID4gIAkJcmV0dXJuIC1FSU5WQUw7DQo+ID4NCj4gPiArCWlmIChwbXUtPmRldnR5
cGVfZGF0YS0+cXVpcmtzICYgRERSX0NBUF9BWElfSURfRklMVEVSKSB7DQo+ID4gKwkJaWYgKCFk
ZHJfcGVyZl9maWx0ZXJzX2NvbXBhdGlibGUoZXZlbnQsIGV2ZW50LT5ncm91cF9sZWFkZXIpKQ0K
PiA+ICsJCQlyZXR1cm4gLUVJTlZBTDsNCj4gPiArCQlmb3JfZWFjaF9zaWJsaW5nX2V2ZW50KHNp
YmxpbmcsIGV2ZW50LT5ncm91cF9sZWFkZXIpIHsNCj4gPiArCQkJaWYgKCFkZHJfcGVyZl9maWx0
ZXJzX2NvbXBhdGlibGUoZXZlbnQsIHNpYmxpbmcpKQ0KPiA+ICsJCQkJcmV0dXJuIC1FSU5WQUw7
DQo+ID4gKwkJfQ0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAgCWZvcl9lYWNoX3NpYmxpbmdfZXZlbnQo
c2libGluZywgZXZlbnQtPmdyb3VwX2xlYWRlcikgew0KPiA+ICAJCWlmIChzaWJsaW5nLT5wbXUg
IT0gZXZlbnQtPnBtdSAmJg0KPiA+ICAJCQkJIWlzX3NvZnR3YXJlX2V2ZW50KHNpYmxpbmcpKQ0K
PiA+IEBAIC0yODgsNiArMzM5LDIxIEBAIHN0YXRpYyBpbnQgZGRyX3BlcmZfZXZlbnRfYWRkKHN0
cnVjdCBwZXJmX2V2ZW50DQo+ICpldmVudCwgaW50IGZsYWdzKQ0KPiA+ICAJc3RydWN0IGh3X3Bl
cmZfZXZlbnQgKmh3YyA9ICZldmVudC0+aHc7DQo+ID4gIAlpbnQgY291bnRlcjsNCj4gPiAgCWlu
dCBjZmcgPSBldmVudC0+YXR0ci5jb25maWc7DQo+ID4gKwlpbnQgY2ZnMSA9IGV2ZW50LT5hdHRy
LmNvbmZpZzE7DQo+ID4gKw0KPiA+ICsJaWYgKHBtdS0+ZGV2dHlwZV9kYXRhLT5xdWlya3MgJiBE
RFJfQ0FQX0FYSV9JRF9GSUxURVIpIHsNCj4gPiArCQlpbnQgaTsNCj4gPiArDQo+ID4gKwkJZm9y
IChpID0gMTsgaSA8IE5VTV9DT1VOVEVSUzsgaSsrKSB7DQo+ID4gKwkJCWlmIChwbXUtPmV2ZW50
c1tpXSAmJg0KPiA+ICsJCQkgICAgIWRkcl9wZXJmX2ZpbHRlcnNfY29tcGF0aWJsZShldmVudCwg
cG11LT5ldmVudHNbaV0pKQ0KPiA+ICsJCQkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gKwkJfQ0KPiA+
ICsNCj4gPiArCQkvKiByZXZlcnQgYXhpIGlkIG1hc2tpbmcoYXhpX21hc2spIHZhbHVlICovDQo+
ID4gKwkJY2ZnMSBePSBBWElfTUFTS0lOR19SRVZFUlQ7DQo+ID4gKwkJd3JpdGVsKGNmZzEsIHBt
dS0+YmFzZSArIENPVU5URVJfRFBDUjEpOw0KPiANCj4gSSB3YXMgYWJvdXQgdG8gcXVldWUgdGhp
cyB1cCwgYnV0IHRoZW4gSSB3b25kZXJlZCBhYm91dCB0aGUgZm9sbG93aW5nDQo+IHNpdHVhdGlv
bjoNCj4gDQo+IAktIEkgYWRkIGEgZmlsdGVyZWQgZXZlbnQgdG8gYSBncm91cCAoc2F5IDB4NDEp
IHdpdGggYSBmaWx0ZXIgb2YgMA0KPiAJICAod2hpY2ggdGhlIGRyaXZlciBpbnZlcnRzIHRvIDB4
ZmZmZikNCj4gDQo+IAktIEkgdGhlbiBhZGQgYSBub24tZmlsdGVyZWQgZXZlbnQgKHNheSAweDQw
KSBidXQgY29uZmlnMSBpcyBzZXQNCj4gCSAgdG8gMHhmZmZmMDAwMA0KPiANCj4gV29uJ3QgdGhl
IGxvZ2ljIGFib3ZlIHJlc3VsdCBpbiB1cyBjb3JydXB0aW5nIERQQ1IxIGFuZCBjbG9iYmVyaW5n
IHRoZSBmaWx0ZXIgZm9yDQo+IHRoZSBmaXJzdCBldmVudD8gV2hhdCBhbSBJIG1pc3Npbmc/DQo+
IA0KPiBJIHRoaW5rIHlvdSBzaG91bGQgb25seSBwcm9ncmFtIERQQ1IxIGZvciBmaWx0ZXJlZCBl
dmVudHMuDQoNCltKb2FraW1dIFllcywgeW91IGFyZSByaWdodCEgSSB3aWxsIGRvIGJlbG93IGNo
YW5nZS4NCg0KICAgICAgICAgICAgICAgaWYgKGRkcl9wZXJmX2lzX2ZpbHRlcmVkKGV2ZW50KSkg
ew0KICAgICAgICAgICAgICAgICAgICAgICAvKiByZXZlcnQgYXhpIGlkIG1hc2tpbmcoYXhpX21h
c2spIHZhbHVlICovDQogICAgICAgICAgICAgICAgICAgICAgIGNmZzEgXj0gQVhJX01BU0tJTkdf
UkVWRVJUOw0KICAgICAgICAgICAgICAgICAgICAgICB3cml0ZWwoY2ZnMSwgcG11LT5iYXNlICsg
Q09VTlRFUl9EUENSMSk7DQogICAgICAgICAgICAgICB9DQoNCkJlc3QgUmVnYXJkcywNCkpvYWtp
bSBaaGFuZw0KPiBXaWxsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
