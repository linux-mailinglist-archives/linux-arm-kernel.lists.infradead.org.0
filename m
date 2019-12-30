Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B461D12D148
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:55:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVNrcarprjoWtsONZq4bdYG4KF8Xvyrd2Pf6RLcUrA4=; b=OKFviMyGWMj3Ma
	N5y+w6Zsj4sThtgMui6YanLtRXvtc5y4UdMVKtRmeZ1hqyjmSkcKBXsEnxc5tv1x6Lirlf32c7OUN
	Wmdvoz9SlUOXFQET0/jrkfmYF29oGOHUSMGu9w6/+8G3ofOCuCCF9XidNNq/+/zo+urHpznehSBoa
	r7yaoyFx6Hr6TCHF0/nohKYDLMOhXen0irOFNd7e9NUKrEdRJFkiXXRdlkHUfOSc9WVMVyLP27LAU
	DJc3HAAYAWT55Kzbw3iDYELcQNDGPcIx+d9CIvcCXb0r2sGngiGzoOIEfxluWUvKyWFMRHwbto/mu
	r6mVR6nGZbUeX/XQp6uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwRs-00004w-Gl; Mon, 30 Dec 2019 14:55:12 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ilwJW-000823-7i; Mon, 30 Dec 2019 14:46:38 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBUEkPZa017449,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS12.realtek.com.tw[172.21.6.16])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBUEkPZa017449
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 30 Dec 2019 22:46:25 +0800
Received: from RTEXMB05.realtek.com.tw (172.21.6.98) by
 RTITCAS12.realtek.com.tw (172.21.6.16) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Mon, 30 Dec 2019 22:46:25 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB05.realtek.com.tw (172.21.6.98) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 30 Dec 2019 22:46:24 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Mon, 30 Dec 2019 22:46:24 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH 11/14] arm64: dts: realtek: rtd129x: Add SB2 and SCPU
 Wrapper syscon nodes
Thread-Topic: [PATCH 11/14] arm64: dts: realtek: rtd129x: Add SB2 and SCPU
 Wrapper syscon nodes
Thread-Index: AQHVqT1w/NIPva7Bm0OfJC+0gDSooKfS7TVw
Date: Mon, 30 Dec 2019 14:46:24 +0000
Message-ID: <f9537d076f9945d78d70b2ce5919c9c4@realtek.com>
References: <20191202182205.14629-1-afaerber@suse.de>
 <20191202182205.14629-12-afaerber@suse.de>
In-Reply-To: <20191202182205.14629-12-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.128.25]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064634_434937_50A2E297 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBBZGQgc3lzY29uIG1mZCBub2RlcyBmb3IgU0IyIGFuZCBTQ1BVIFdyYXBwZXIgdG8gUlREMTI5
eCBEVC4NCj4gDQo+IENjOiBKYW1lcyBUYWkgPGphbWVzLnRhaUByZWFsdGVrLmNvbT4NCj4gU2ln
bmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPg0KPiAtLS0NCj4g
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kgfCAxOCArKysrKysrKysr
KysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQ0KPiBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kNCj4gaW5kZXggMzRkYzA5Nzkw
ZDBiLi4zOWFlZmU2NmE3OTQgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVh
bHRlay9ydGQxMjl4LmR0c2kNCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0
ZDEyOXguZHRzaQ0KPiBAQCAtODEsNiArODEsMTUgQEANCj4gIAkJCQlyYW5nZXMgPSA8MHgwIDB4
NzAwMCAweDEwMDA+Ow0KPiAgCQkJfTsNCj4gDQo+ICsJCQlzYjI6IHN5c2NvbkAxYTAwMCB7DQo+
ICsJCQkJY29tcGF0aWJsZSA9ICJzeXNjb24iLCAic2ltcGxlLW1mZCI7DQo+ICsJCQkJcmVnID0g
PDB4MWEwMDAgMHgxMDAwPjsNCj4gKwkJCQlyZWctaW8td2lkdGggPSA8ND47DQo+ICsJCQkJI2Fk
ZHJlc3MtY2VsbHMgPSA8MT47DQo+ICsJCQkJI3NpemUtY2VsbHMgPSA8MT47DQo+ICsJCQkJcmFu
Z2VzID0gPDB4MCAweDFhMDAwIDB4MTAwMD47DQo+ICsJCQl9Ow0KPiArDQo+ICAJCQltaXNjOiBz
eXNjb25AMWIwMDAgew0KPiAgCQkJCWNvbXBhdGlibGUgPSAic3lzY29uIiwgInNpbXBsZS1tZmQi
Ow0KPiAgCQkJCXJlZyA9IDwweDFiMDAwIDB4MTAwMD47DQo+IEBAIC04OSw2ICs5OCwxNSBAQA0K
PiAgCQkJCSNzaXplLWNlbGxzID0gPDE+Ow0KPiAgCQkJCXJhbmdlcyA9IDwweDAgMHgxYjAwMCAw
eDEwMDA+Ow0KPiAgCQkJfTsNCj4gKw0KPiArCQkJc2NwdV93cmFwcGVyOiBzeXNjb25AMWQwMDAg
ew0KPiArCQkJCWNvbXBhdGlibGUgPSAic3lzY29uIiwgInNpbXBsZS1tZmQiOw0KPiArCQkJCXJl
ZyA9IDwweDFkMDAwIDB4MjAwMD47DQo+ICsJCQkJcmVnLWlvLXdpZHRoID0gPDQ+Ow0KPiArCQkJ
CSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KPiArCQkJCSNzaXplLWNlbGxzID0gPDE+Ow0KPiArCQkJ
CXJhbmdlcyA9IDwweDAgMHgxZDAwMCAweDIwMDA+Ow0KPiArCQkJfTsNCj4gIAkJfTsNCj4gDQo+
ICAJCWdpYzogaW50ZXJydXB0LWNvbnRyb2xsZXJAZmYwMTEwMDAgew0KPiAtLQ0KPiAyLjE2LjQN
Cj4gDQo+IA0KDQpBY2tlZC1ieTogSmFtZXMgVGFpIDxqYW1lcy50YWlAcmVhbHRlay5jb20+DQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
