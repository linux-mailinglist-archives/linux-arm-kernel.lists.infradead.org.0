Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C5612D0E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:39:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1dzvb/SmAX3Dr+RBDvOs/Y67lzXn62hWBP2PIvqixJM=; b=PpggwCMoQNcjFV
	PGmC8HZbmSU+7T5jnUDPB0RzxhNRIdmPJbEQQaFs9tsGtd2e/53dibtihZq513fpWWWBVGxuIPLxB
	FKLlnH9YITfjywud+Hzhk8bFOwOzZ58OD2ijeFS1/ROliGRilT6r8ZsH+JIssi7bfOmb9b1X8LsM9
	XZq83HzRhwjN0hBvGw7VaokUKNcafrpK+zrvBOqQ9niOqU6jFBIB73ml5JPI6BLzMC8ijkAd3fhSU
	Vvj0zEu+OoGR6qGNZXI1tjFPvyWWxmBXpw+c+2oUHPQI5y+pcagROofpD11J2afpsUX+JUlaajH/9
	1uf+pr5sQ7jyOM925Qgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwCv-00029W-PS; Mon, 30 Dec 2019 14:39:45 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ilwCf-00028Z-Q6; Mon, 30 Dec 2019 14:39:34 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBUEdGNb016238,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS11.realtek.com.tw[172.21.6.12])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBUEdGNb016238
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 30 Dec 2019 22:39:16 +0800
Received: from RTEXDAG02.realtek.com.tw (172.21.6.101) by
 RTITCAS11.realtek.com.tw (172.21.6.12) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Mon, 30 Dec 2019 22:39:15 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXDAG02.realtek.com.tw (172.21.6.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 30 Dec 2019 22:39:15 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Mon, 30 Dec 2019 22:39:15 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH 03/14] arm64: dts: realtek: rtd139x: Introduce CRT,
 iso and misc syscon
Thread-Topic: [PATCH 03/14] arm64: dts: realtek: rtd139x: Introduce CRT, iso
 and misc syscon
Thread-Index: AQHVqT1ukhvuuHKN7k25t3sPVqizRKfS6xcw
Date: Mon, 30 Dec 2019 14:39:15 +0000
Message-ID: <f1cdc0d47a434e318d7eee11c0e6c364@realtek.com>
References: <20191202182205.14629-1-afaerber@suse.de>
 <20191202182205.14629-4-afaerber@suse.de>
In-Reply-To: <20191202182205.14629-4-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.128.25]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_063933_077246_95F23A13 
X-CRM114-Status: GOOD (  11.67  )
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

PiBHcm91cCB0aGUgbm9uLWlzbyByZXNldCBjb250cm9sbGVyIG5vZGVzIGludG8gYSBDUlQgc3lz
Y29uIG1mZCBub2RlLg0KPiBHcm91cCByZXNldCBjb250cm9sbGVyLCB3YXRjaGRvZyBhbmQgVUFS
VDAgaW50byBhbiBJc29sYXRpb24gbWZkIG5vZGUuDQo+IEdyb3VwIFVBUlQxIGFuZCBVQVJUMiBp
bnRvIGEgTWlzY2VsbGFuZW91cyBzeXNjb24gbWZkIG5vZGUuDQo+IA0KPiBDYzogSmFtZXMgVGFp
IDxqYW1lcy50YWlAcmVhbHRlay5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJl
ciA8YWZhZXJiZXJAc3VzZS5kZT4NCj4gLS0tDQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0
ZWsvcnRkMTM5eC5kdHNpIHwgMTQ3DQo+ICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA5MCBpbnNlcnRpb25zKCspLCA1NyBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5eC5kdHNp
DQo+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzOXguZHRzaQ0KPiBpbmRleCBj
MTFhNTA1ZTQzZTIuLjNhNTcxZjNiN2UzOCAxMDA2NDQNCj4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yZWFsdGVrL3J0ZDEzOXguZHRzaQ0KPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jl
YWx0ZWsvcnRkMTM5eC5kdHNpDQo+IEBAIC02MSw3MCArNjEsMzEgQEANCj4gIAkJCSNzaXplLWNl
bGxzID0gPDE+Ow0KPiAgCQkJcmFuZ2VzID0gPDB4MCAweDk4MDAwMDAwIDB4MjAwMDAwPjsNCj4g
DQo+IC0JCQlyZXNldDE6IHJlc2V0LWNvbnRyb2xsZXJAMCB7DQo+IC0JCQkJY29tcGF0aWJsZSA9
ICJzbnBzLGR3LWxvdy1yZXNldCI7DQo+IC0JCQkJcmVnID0gPDB4MCAweDQ+Ow0KPiAtCQkJCSNy
ZXNldC1jZWxscyA9IDwxPjsNCj4gLQkJCX07DQo+IC0NCj4gLQkJCXJlc2V0MjogcmVzZXQtY29u
dHJvbGxlckA0IHsNCj4gLQkJCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsNCj4g
LQkJCQlyZWcgPSA8MHg0IDB4ND47DQo+IC0JCQkJI3Jlc2V0LWNlbGxzID0gPDE+Ow0KPiAtCQkJ
fTsNCj4gLQ0KPiAtCQkJcmVzZXQzOiByZXNldC1jb250cm9sbGVyQDggew0KPiAtCQkJCWNvbXBh
dGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOw0KPiAtCQkJCXJlZyA9IDwweDggMHg0PjsNCj4g
LQkJCQkjcmVzZXQtY2VsbHMgPSA8MT47DQo+IC0JCQl9Ow0KPiAtDQo+IC0JCQlyZXNldDQ6IHJl
c2V0LWNvbnRyb2xsZXJANTAgew0KPiAtCQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVz
ZXQiOw0KPiAtCQkJCXJlZyA9IDwweDUwIDB4ND47DQo+IC0JCQkJI3Jlc2V0LWNlbGxzID0gPDE+
Ow0KPiAtCQkJfTsNCj4gLQ0KPiAtCQkJaXNvX3Jlc2V0OiByZXNldC1jb250cm9sbGVyQDcwODgg
ew0KPiAtCQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOw0KPiAtCQkJCXJlZyA9
IDwweDcwODggMHg0PjsNCj4gLQkJCQkjcmVzZXQtY2VsbHMgPSA8MT47DQo+IC0JCQl9Ow0KPiAt
DQo+IC0JCQl3ZHQ6IHdhdGNoZG9nQDc2ODAgew0KPiAtCQkJCWNvbXBhdGlibGUgPSAicmVhbHRl
ayxydGQxMjk1LXdhdGNoZG9nIjsNCj4gLQkJCQlyZWcgPSA8MHg3NjgwIDB4MTAwPjsNCj4gLQkJ
CQljbG9ja3MgPSA8Jm9zYzI3TT47DQo+IC0JCQl9Ow0KPiAtDQo+IC0JCQl1YXJ0MDogc2VyaWFs
QDc4MDAgew0KPiAtCQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7DQo+IC0JCQkJ
cmVnID0gPDB4NzgwMCAweDQwMD47DQo+IC0JCQkJcmVnLXNoaWZ0ID0gPDI+Ow0KPiArCQkJY3J0
OiBzeXNjb25AMCB7DQo+ICsJCQkJY29tcGF0aWJsZSA9ICJzeXNjb24iLCAic2ltcGxlLW1mZCI7
DQo+ICsJCQkJcmVnID0gPDB4MCAweDEwMDA+Ow0KPiAgCQkJCXJlZy1pby13aWR0aCA9IDw0PjsN
Cj4gLQkJCQljbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+Ow0KPiAtCQkJCXJlc2V0cyA9IDwm
aXNvX3Jlc2V0IFJURDEyOTVfSVNPX1JTVE5fVVIwPjsNCj4gLQkJCQlzdGF0dXMgPSAiZGlzYWJs
ZWQiOw0KPiArCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KPiArCQkJCSNzaXplLWNlbGxzID0g
PDE+Ow0KPiArCQkJCXJhbmdlcyA9IDwweDAgMHgwIDB4MTAwMD47DQo+ICAJCQl9Ow0KPiANCj4g
LQkJCXVhcnQxOiBzZXJpYWxAMWIyMDAgew0KPiAtCQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1h
cGItdWFydCI7DQo+IC0JCQkJcmVnID0gPDB4MWIyMDAgMHgxMDA+Ow0KPiAtCQkJCXJlZy1zaGlm
dCA9IDwyPjsNCj4gKwkJCWlzbzogc3lzY29uQDcwMDAgew0KPiArCQkJCWNvbXBhdGlibGUgPSAi
c3lzY29uIiwgInNpbXBsZS1tZmQiOw0KPiArCQkJCXJlZyA9IDwweDcwMDAgMHgxMDAwPjsNCj4g
IAkJCQlyZWctaW8td2lkdGggPSA8ND47DQo+IC0JCQkJY2xvY2stZnJlcXVlbmN5ID0gPDQzMjAw
MDAwMD47DQo+IC0JCQkJcmVzZXRzID0gPCZyZXNldDIgUlREMTI5NV9SU1ROX1VSMT47DQo+IC0J
CQkJc3RhdHVzID0gImRpc2FibGVkIjsNCj4gKwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsNCj4g
KwkJCQkjc2l6ZS1jZWxscyA9IDwxPjsNCj4gKwkJCQlyYW5nZXMgPSA8MHgwIDB4NzAwMCAweDEw
MDA+Ow0KPiAgCQkJfTsNCj4gDQo+IC0JCQl1YXJ0Mjogc2VyaWFsQDFiNDAwIHsNCj4gLQkJCQlj
b21wYXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQiOw0KPiAtCQkJCXJlZyA9IDwweDFiNDAwIDB4
MTAwPjsNCj4gLQkJCQlyZWctc2hpZnQgPSA8Mj47DQo+ICsJCQltaXNjOiBzeXNjb25AMWIwMDAg
ew0KPiArCQkJCWNvbXBhdGlibGUgPSAic3lzY29uIiwgInNpbXBsZS1tZmQiOw0KPiArCQkJCXJl
ZyA9IDwweDFiMDAwIDB4MTAwMD47DQo+ICAJCQkJcmVnLWlvLXdpZHRoID0gPDQ+Ow0KPiAtCQkJ
CWNsb2NrLWZyZXF1ZW5jeSA9IDw0MzIwMDAwMDA+Ow0KPiAtCQkJCXJlc2V0cyA9IDwmcmVzZXQy
IFJURDEyOTVfUlNUTl9VUjI+Ow0KPiAtCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+ICsJCQkJ
I2FkZHJlc3MtY2VsbHMgPSA8MT47DQo+ICsJCQkJI3NpemUtY2VsbHMgPSA8MT47DQo+ICsJCQkJ
cmFuZ2VzID0gPDB4MCAweDFiMDAwIDB4MTAwMD47DQo+ICAJCQl9Ow0KPiAgCQl9Ow0KPiANCj4g
QEAgLTE0MCwzICsxMDEsNzUgQEANCj4gIAkJfTsNCj4gIAl9Ow0KPiAgfTsNCj4gKw0KPiArJmNy
dCB7DQo+ICsJcmVzZXQxOiByZXNldC1jb250cm9sbGVyQDAgew0KPiArCQljb21wYXRpYmxlID0g
InNucHMsZHctbG93LXJlc2V0IjsNCj4gKwkJcmVnID0gPDB4MCAweDQ+Ow0KPiArCQkjcmVzZXQt
Y2VsbHMgPSA8MT47DQo+ICsJfTsNCj4gKw0KPiArCXJlc2V0MjogcmVzZXQtY29udHJvbGxlckA0
IHsNCj4gKwkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7DQo+ICsJCXJlZyA9IDww
eDQgMHg0PjsNCj4gKwkJI3Jlc2V0LWNlbGxzID0gPDE+Ow0KPiArCX07DQo+ICsNCj4gKwlyZXNl
dDM6IHJlc2V0LWNvbnRyb2xsZXJAOCB7DQo+ICsJCWNvbXBhdGlibGUgPSAic25wcyxkdy1sb3ct
cmVzZXQiOw0KPiArCQlyZWcgPSA8MHg4IDB4ND47DQo+ICsJCSNyZXNldC1jZWxscyA9IDwxPjsN
Cj4gKwl9Ow0KPiArDQo+ICsJcmVzZXQ0OiByZXNldC1jb250cm9sbGVyQDUwIHsNCj4gKwkJY29t
cGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7DQo+ICsJCXJlZyA9IDwweDUwIDB4ND47DQo+
ICsJCSNyZXNldC1jZWxscyA9IDwxPjsNCj4gKwl9Ow0KPiArfTsNCj4gKw0KPiArJmlzbyB7DQo+
ICsJaXNvX3Jlc2V0OiByZXNldC1jb250cm9sbGVyQDg4IHsNCj4gKwkJY29tcGF0aWJsZSA9ICJz
bnBzLGR3LWxvdy1yZXNldCI7DQo+ICsJCXJlZyA9IDwweDg4IDB4ND47DQo+ICsJCSNyZXNldC1j
ZWxscyA9IDwxPjsNCj4gKwl9Ow0KPiArDQo+ICsJd2R0OiB3YXRjaGRvZ0A2ODAgew0KPiArCQlj
b21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTI5NS13YXRjaGRvZyI7DQo+ICsJCXJlZyA9IDwweDY4
MCAweDEwMD47DQo+ICsJCWNsb2NrcyA9IDwmb3NjMjdNPjsNCj4gKwl9Ow0KPiArDQo+ICsJdWFy
dDA6IHNlcmlhbEA4MDAgew0KPiArCQljb21wYXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQiOw0K
PiArCQlyZWcgPSA8MHg4MDAgMHg0MDA+Ow0KPiArCQlyZWctc2hpZnQgPSA8Mj47DQo+ICsJCXJl
Zy1pby13aWR0aCA9IDw0PjsNCj4gKwkJY2xvY2stZnJlcXVlbmN5ID0gPDI3MDAwMDAwPjsNCj4g
KwkJcmVzZXRzID0gPCZpc29fcmVzZXQgUlREMTI5NV9JU09fUlNUTl9VUjA+Ow0KPiArCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOw0KPiArCX07DQo+ICt9Ow0KPiArDQo+ICsmbWlzYyB7DQo+ICsJdWFy
dDE6IHNlcmlhbEAyMDAgew0KPiArCQljb21wYXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQiOw0K
PiArCQlyZWcgPSA8MHgyMDAgMHgxMDA+Ow0KPiArCQlyZWctc2hpZnQgPSA8Mj47DQo+ICsJCXJl
Zy1pby13aWR0aCA9IDw0PjsNCj4gKwkJY2xvY2stZnJlcXVlbmN5ID0gPDQzMjAwMDAwMD47DQo+
ICsJCXJlc2V0cyA9IDwmcmVzZXQyIFJURDEyOTVfUlNUTl9VUjE+Ow0KPiArCQlzdGF0dXMgPSAi
ZGlzYWJsZWQiOw0KPiArCX07DQo+ICsNCj4gKwl1YXJ0Mjogc2VyaWFsQDQwMCB7DQo+ICsJCWNv
bXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7DQo+ICsJCXJlZyA9IDwweDQwMCAweDEwMD47
DQo+ICsJCXJlZy1zaGlmdCA9IDwyPjsNCj4gKwkJcmVnLWlvLXdpZHRoID0gPDQ+Ow0KPiArCQlj
bG9jay1mcmVxdWVuY3kgPSA8NDMyMDAwMDAwPjsNCj4gKwkJcmVzZXRzID0gPCZyZXNldDIgUlRE
MTI5NV9SU1ROX1VSMj47DQo+ICsJCXN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+ICsJfTsNCj4gK307
DQo+IC0tDQo+IDIuMTYuNA0KPiANCj4gDQoNCkFja2VkLWJ5OiBKYW1lcyBUYWkgPGphbWVzLnRh
aUByZWFsdGVrLmNvbT4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
