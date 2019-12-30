Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3FA12D0E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:41:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwEu0vNQLKTvU21c0RmoLW0DtJWg+j+p6xnbGYX3Rz4=; b=ql3hF7PuzX7bJJ
	1CQZmGoZ18ZX0asWSE8Eh5ilvxtYiXgWUCKdCaUsg6Qc4CAcS8FiENDYggu+pZY4OCDwdRCgO2kDg
	Jslh7D+N82LhNfCj/kD5N6F4YbFNZ94aWbEpvzo6+BtlEpG/Lv6jBZ2PPyotr42H5rIgoPajRRrHB
	B3u7fENEZB2OaxSDsV9LOfXpVp0uQFiRTFPsl84Vd2bxZUrxPgi/xFB5ebVB/+/I0xgKWKtrOjHJP
	DwdHwCHM6TOzmtpsKMslC/AywKzywkSlv8sk6Kj0Rj5nEVdEH5cbUWJ5x8UuMqp8nwCg5yBG/1JIr
	n2Lvxx87M0uZmd1b5y9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwE5-0003dM-OS; Mon, 30 Dec 2019 14:40:57 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ilwDt-0003cb-SG; Mon, 30 Dec 2019 14:40:48 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBUEeaK9016514,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBUEeaK9016514
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 30 Dec 2019 22:40:36 +0800
Received: from RTEXMB01.realtek.com.tw (172.21.6.94) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Mon, 30 Dec 2019 22:40:36 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB01.realtek.com.tw (172.21.6.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 30 Dec 2019 22:40:36 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Mon, 30 Dec 2019 22:40:36 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH 02/14] arm64: dts: realtek: rtd129x: Introduce CRT,
 iso and misc syscon
Thread-Topic: [PATCH 02/14] arm64: dts: realtek: rtd129x: Introduce CRT, iso
 and misc syscon
Thread-Index: AQHVqT1u6buYMFwj70yRiRBo4iTeFafS650A
Date: Mon, 30 Dec 2019 14:40:35 +0000
Message-ID: <6399598d331d41e5b328fe0547430d1c@realtek.com>
References: <20191202182205.14629-1-afaerber@suse.de>
 <20191202182205.14629-3-afaerber@suse.de>
In-Reply-To: <20191202182205.14629-3-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.128.25]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064046_172949_1A940F4E 
X-CRM114-Status: GOOD (  11.90  )
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

PiBHcm91cCB0aGUgbm9uLWlzbyByZXNldCBjb250cm9sbGVyIG5vZGVzIGluIGEgQ1JUIHN5c2Nv
biBtZmQgbm9kZS4NCj4gR3JvdXAgcmVzZXQgY29udHJvbGxlciwgd2F0Y2hkb2cgYW5kIFVBUlQw
IGluIGFuIElzb2xhdGlvbiBzeXNjb24gbWZkIG5vZGUuDQo+IEdyb3VwIFVBUlQxIGFuZCBVQVJU
MiBpbnRvIGEgTWlzY2VsbGFuZW91cyBzeXNjb24gbWZkIG5vZGUuDQo+IA0KPiBDYzogSmFtZXMg
VGFpIDxqYW1lcy50YWlAcmVhbHRlay5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOk
cmJlciA8YWZhZXJiZXJAc3VzZS5kZT4NCj4gLS0tDQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jl
YWx0ZWsvcnRkMTI5eC5kdHNpIHwgMTQ3DQo+ICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
LS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA5MCBpbnNlcnRpb25zKCspLCA1NyBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5k
dHNpDQo+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQ0KPiBpbmRl
eCAwZGU5ZTY3NWJlMTYuLjM0ZGMwOTc5MGQwYiAxMDA2NDQNCj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQ0KPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JlYWx0ZWsvcnRkMTI5eC5kdHNpDQo+IEBAIC02Myw3MCArNjMsMzEgQEANCj4gIAkJCSNzaXpl
LWNlbGxzID0gPDE+Ow0KPiAgCQkJcmFuZ2VzID0gPDB4MCAweDk4MDAwMDAwIDB4MjAwMDAwPjsN
Cj4gDQo+IC0JCQlyZXNldDE6IHJlc2V0LWNvbnRyb2xsZXJAMCB7DQo+IC0JCQkJY29tcGF0aWJs
ZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7DQo+IC0JCQkJcmVnID0gPDB4MCAweDQ+Ow0KPiAtCQkJ
CSNyZXNldC1jZWxscyA9IDwxPjsNCj4gLQkJCX07DQo+IC0NCj4gLQkJCXJlc2V0MjogcmVzZXQt
Y29udHJvbGxlckA0IHsNCj4gLQkJCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsN
Cj4gLQkJCQlyZWcgPSA8MHg0IDB4ND47DQo+IC0JCQkJI3Jlc2V0LWNlbGxzID0gPDE+Ow0KPiAt
CQkJfTsNCj4gLQ0KPiAtCQkJcmVzZXQzOiByZXNldC1jb250cm9sbGVyQDggew0KPiAtCQkJCWNv
bXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOw0KPiAtCQkJCXJlZyA9IDwweDggMHg0PjsN
Cj4gLQkJCQkjcmVzZXQtY2VsbHMgPSA8MT47DQo+IC0JCQl9Ow0KPiAtDQo+IC0JCQlyZXNldDQ6
IHJlc2V0LWNvbnRyb2xsZXJANTAgew0KPiAtCQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1sb3ct
cmVzZXQiOw0KPiAtCQkJCXJlZyA9IDwweDUwIDB4ND47DQo+IC0JCQkJI3Jlc2V0LWNlbGxzID0g
PDE+Ow0KPiAtCQkJfTsNCj4gLQ0KPiAtCQkJaXNvX3Jlc2V0OiByZXNldC1jb250cm9sbGVyQDcw
ODggew0KPiAtCQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOw0KPiAtCQkJCXJl
ZyA9IDwweDcwODggMHg0PjsNCj4gLQkJCQkjcmVzZXQtY2VsbHMgPSA8MT47DQo+IC0JCQl9Ow0K
PiAtDQo+IC0JCQl3ZHQ6IHdhdGNoZG9nQDc2ODAgew0KPiAtCQkJCWNvbXBhdGlibGUgPSAicmVh
bHRlayxydGQxMjk1LXdhdGNoZG9nIjsNCj4gLQkJCQlyZWcgPSA8MHg3NjgwIDB4MTAwPjsNCj4g
LQkJCQljbG9ja3MgPSA8Jm9zYzI3TT47DQo+IC0JCQl9Ow0KPiAtDQo+IC0JCQl1YXJ0MDogc2Vy
aWFsQDc4MDAgew0KPiAtCQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7DQo+IC0J
CQkJcmVnID0gPDB4NzgwMCAweDQwMD47DQo+IC0JCQkJcmVnLXNoaWZ0ID0gPDI+Ow0KPiArCQkJ
Y3J0OiBzeXNjb25AMCB7DQo+ICsJCQkJY29tcGF0aWJsZSA9ICJzeXNjb24iLCAic2ltcGxlLW1m
ZCI7DQo+ICsJCQkJcmVnID0gPDB4MCAweDE4MDA+Ow0KPiAgCQkJCXJlZy1pby13aWR0aCA9IDw0
PjsNCj4gLQkJCQljbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+Ow0KPiAtCQkJCXJlc2V0cyA9
IDwmaXNvX3Jlc2V0IFJURDEyOTVfSVNPX1JTVE5fVVIwPjsNCj4gLQkJCQlzdGF0dXMgPSAiZGlz
YWJsZWQiOw0KPiArCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KPiArCQkJCSNzaXplLWNlbGxz
ID0gPDE+Ow0KPiArCQkJCXJhbmdlcyA9IDwweDAgMHgwIDB4MTgwMD47DQo+ICAJCQl9Ow0KPiAN
Cj4gLQkJCXVhcnQxOiBzZXJpYWxAMWIyMDAgew0KPiAtCQkJCWNvbXBhdGlibGUgPSAic25wcyxk
dy1hcGItdWFydCI7DQo+IC0JCQkJcmVnID0gPDB4MWIyMDAgMHgxMDA+Ow0KPiAtCQkJCXJlZy1z
aGlmdCA9IDwyPjsNCj4gKwkJCWlzbzogc3lzY29uQDcwMDAgew0KPiArCQkJCWNvbXBhdGlibGUg
PSAic3lzY29uIiwgInNpbXBsZS1tZmQiOw0KPiArCQkJCXJlZyA9IDwweDcwMDAgMHgxMDAwPjsN
Cj4gIAkJCQlyZWctaW8td2lkdGggPSA8ND47DQo+IC0JCQkJY2xvY2stZnJlcXVlbmN5ID0gPDQz
MjAwMDAwMD47DQo+IC0JCQkJcmVzZXRzID0gPCZyZXNldDIgUlREMTI5NV9SU1ROX1VSMT47DQo+
IC0JCQkJc3RhdHVzID0gImRpc2FibGVkIjsNCj4gKwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsN
Cj4gKwkJCQkjc2l6ZS1jZWxscyA9IDwxPjsNCj4gKwkJCQlyYW5nZXMgPSA8MHgwIDB4NzAwMCAw
eDEwMDA+Ow0KPiAgCQkJfTsNCj4gDQo+IC0JCQl1YXJ0Mjogc2VyaWFsQDFiNDAwIHsNCj4gLQkJ
CQljb21wYXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQiOw0KPiAtCQkJCXJlZyA9IDwweDFiNDAw
IDB4MTAwPjsNCj4gLQkJCQlyZWctc2hpZnQgPSA8Mj47DQo+ICsJCQltaXNjOiBzeXNjb25AMWIw
MDAgew0KPiArCQkJCWNvbXBhdGlibGUgPSAic3lzY29uIiwgInNpbXBsZS1tZmQiOw0KPiArCQkJ
CXJlZyA9IDwweDFiMDAwIDB4MTAwMD47DQo+ICAJCQkJcmVnLWlvLXdpZHRoID0gPDQ+Ow0KPiAt
CQkJCWNsb2NrLWZyZXF1ZW5jeSA9IDw0MzIwMDAwMDA+Ow0KPiAtCQkJCXJlc2V0cyA9IDwmcmVz
ZXQyIFJURDEyOTVfUlNUTl9VUjI+Ow0KPiAtCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+ICsJ
CQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47DQo+ICsJCQkJI3NpemUtY2VsbHMgPSA8MT47DQo+ICsJ
CQkJcmFuZ2VzID0gPDB4MCAweDFiMDAwIDB4MTAwMD47DQo+ICAJCQl9Ow0KPiAgCQl9Ow0KPiAN
Cj4gQEAgLTE0MiwzICsxMDMsNzUgQEANCj4gIAkJfTsNCj4gIAl9Ow0KPiAgfTsNCj4gKw0KPiAr
JmNydCB7DQo+ICsJcmVzZXQxOiByZXNldC1jb250cm9sbGVyQDAgew0KPiArCQljb21wYXRpYmxl
ID0gInNucHMsZHctbG93LXJlc2V0IjsNCj4gKwkJcmVnID0gPDB4MCAweDQ+Ow0KPiArCQkjcmVz
ZXQtY2VsbHMgPSA8MT47DQo+ICsJfTsNCj4gKw0KPiArCXJlc2V0MjogcmVzZXQtY29udHJvbGxl
ckA0IHsNCj4gKwkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7DQo+ICsJCXJlZyA9
IDwweDQgMHg0PjsNCj4gKwkJI3Jlc2V0LWNlbGxzID0gPDE+Ow0KPiArCX07DQo+ICsNCj4gKwly
ZXNldDM6IHJlc2V0LWNvbnRyb2xsZXJAOCB7DQo+ICsJCWNvbXBhdGlibGUgPSAic25wcyxkdy1s
b3ctcmVzZXQiOw0KPiArCQlyZWcgPSA8MHg4IDB4ND47DQo+ICsJCSNyZXNldC1jZWxscyA9IDwx
PjsNCj4gKwl9Ow0KPiArDQo+ICsJcmVzZXQ0OiByZXNldC1jb250cm9sbGVyQDUwIHsNCj4gKwkJ
Y29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7DQo+ICsJCXJlZyA9IDwweDUwIDB4ND47
DQo+ICsJCSNyZXNldC1jZWxscyA9IDwxPjsNCj4gKwl9Ow0KPiArfTsNCj4gKw0KPiArJmlzbyB7
DQo+ICsJaXNvX3Jlc2V0OiByZXNldC1jb250cm9sbGVyQDg4IHsNCj4gKwkJY29tcGF0aWJsZSA9
ICJzbnBzLGR3LWxvdy1yZXNldCI7DQo+ICsJCXJlZyA9IDwweDg4IDB4ND47DQo+ICsJCSNyZXNl
dC1jZWxscyA9IDwxPjsNCj4gKwl9Ow0KPiArDQo+ICsJd2R0OiB3YXRjaGRvZ0A2ODAgew0KPiAr
CQljb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTI5NS13YXRjaGRvZyI7DQo+ICsJCXJlZyA9IDww
eDY4MCAweDEwMD47DQo+ICsJCWNsb2NrcyA9IDwmb3NjMjdNPjsNCj4gKwl9Ow0KPiArDQo+ICsJ
dWFydDA6IHNlcmlhbEA4MDAgew0KPiArCQljb21wYXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQi
Ow0KPiArCQlyZWcgPSA8MHg4MDAgMHg0MDA+Ow0KPiArCQlyZWctc2hpZnQgPSA8Mj47DQo+ICsJ
CXJlZy1pby13aWR0aCA9IDw0PjsNCj4gKwkJY2xvY2stZnJlcXVlbmN5ID0gPDI3MDAwMDAwPjsN
Cj4gKwkJcmVzZXRzID0gPCZpc29fcmVzZXQgUlREMTI5NV9JU09fUlNUTl9VUjA+Ow0KPiArCQlz
dGF0dXMgPSAiZGlzYWJsZWQiOw0KPiArCX07DQo+ICt9Ow0KPiArDQo+ICsmbWlzYyB7DQo+ICsJ
dWFydDE6IHNlcmlhbEAyMDAgew0KPiArCQljb21wYXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQi
Ow0KPiArCQlyZWcgPSA8MHgyMDAgMHgxMDA+Ow0KPiArCQlyZWctc2hpZnQgPSA8Mj47DQo+ICsJ
CXJlZy1pby13aWR0aCA9IDw0PjsNCj4gKwkJY2xvY2stZnJlcXVlbmN5ID0gPDQzMjAwMDAwMD47
DQo+ICsJCXJlc2V0cyA9IDwmcmVzZXQyIFJURDEyOTVfUlNUTl9VUjE+Ow0KPiArCQlzdGF0dXMg
PSAiZGlzYWJsZWQiOw0KPiArCX07DQo+ICsNCj4gKwl1YXJ0Mjogc2VyaWFsQDQwMCB7DQo+ICsJ
CWNvbXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7DQo+ICsJCXJlZyA9IDwweDQwMCAweDEw
MD47DQo+ICsJCXJlZy1zaGlmdCA9IDwyPjsNCj4gKwkJcmVnLWlvLXdpZHRoID0gPDQ+Ow0KPiAr
CQljbG9jay1mcmVxdWVuY3kgPSA8NDMyMDAwMDAwPjsNCj4gKwkJcmVzZXRzID0gPCZyZXNldDIg
UlREMTI5NV9SU1ROX1VSMj47DQo+ICsJCXN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+ICsJfTsNCj4g
K307DQo+IC0tDQo+IDIuMTYuNA0KPiANCj4gDQoNCkFja2VkLWJ5OiBKYW1lcyBUYWkgPGphbWVz
LnRhaUByZWFsdGVrLmNvbT4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
