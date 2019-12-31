Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A2712D769
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 10:27:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJDNF0TfXMyfuq1vKJN1k0ZUH/4BlPxpR65IsT6Ss+M=; b=uld1ifvH7+avl/
	k4lStogcGb/Ycl1UV+aHiAbAvaLebTDtU3Ludk9Sq1aTe/GeNS9ydgPbUv/tUq1DVxIn6OotpZF9I
	9b28HqDgKH4BVGjSZTYRaJmV7viXXTyA4qn1hOyYI1PNDthfw69G5LUhdmZ79e/wWzDJM9bSQX7Qv
	GOXaVAlhRqeZX1WMk78ft4hd7xGqCavw2RuITvImpTvtDBrk/gYZGMNd5MZPbzUxpFUlGW6L2Y05J
	R+EqPmiUkN6ofUl3muTc+U5/qH6Hn2zQIalQUMBmfqCgOh3s8UOo72gk+n0QGVApmfrj3qN7lr2OO
	gwnhyEHBB6P7wKiHJ0vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imDof-0006FS-SK; Tue, 31 Dec 2019 09:27:53 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1imDoU-0006Es-IY; Tue, 31 Dec 2019 09:27:44 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBV9RTs5029675,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBV9RTs5029675
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 31 Dec 2019 17:27:30 +0800
Received: from RTEXMB02.realtek.com.tw (172.21.6.95) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Tue, 31 Dec 2019 17:27:29 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB02.realtek.com.tw (172.21.6.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 31 Dec 2019 17:27:29 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Tue, 31 Dec 2019 17:27:29 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH 07/14] ARM: dts: rtd1195: Add reset nodes
Thread-Topic: [PATCH 07/14] ARM: dts: rtd1195: Add reset nodes
Thread-Index: AQHVqT3zGGAWvF//wkGLVSeos/JNSKfUJmug
Date: Tue, 31 Dec 2019 09:27:29 +0000
Message-ID: <242bc41594564f3f9ef286ac9467efc4@realtek.com>
References: <20191202182205.14629-1-afaerber@suse.de>
 <20191202182205.14629-8-afaerber@suse.de>
In-Reply-To: <20191202182205.14629-8-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_012742_737752_2AAF17CC 
X-CRM114-Status: GOOD (  12.22  )
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

PiBBZGQgcmVzZXQgY29udHJvbGxlciBub2RlcyBmb3IgUmVhbHRlayBSVEQxMTk1IFNvQy4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4NCj4g
LS0tDQo+ICB2MTogRnJvbSBSVEQxMTk1IHY0IHNlcmllcyAoSmFtZXMgd2FudHMgdG8gY2hhbmdl
IHRoZSBjb21wYXRpYmxlIHN0cmluZykNCj4gDQo+ICBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1
LmR0c2kgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQs
IDI2IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9y
dGQxMTk1LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kNCj4gaW5kZXggYWMz
NzM2NmZmN2M0Li44ODY4NDVlNTIyMDUgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L3J0ZDExOTUuZHRzaQ0KPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kNCj4g
QEAgLTE0MSw3ICsxNDEsMzMgQEANCj4gIAl9Ow0KPiAgfTsNCj4gDQo+ICsmY3J0IHsNCj4gKwly
ZXNldDE6IHJlc2V0LWNvbnRyb2xsZXJAMCB7DQo+ICsJCWNvbXBhdGlibGUgPSAic25wcyxkdy1s
b3ctcmVzZXQiOw0KPiArCQlyZWcgPSA8MHgwIDB4ND47DQo+ICsJCSNyZXNldC1jZWxscyA9IDwx
PjsNCj4gKwl9Ow0KPiArDQo+ICsJcmVzZXQyOiByZXNldC1jb250cm9sbGVyQDQgew0KPiArCQlj
b21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsNCj4gKwkJcmVnID0gPDB4NCAweDQ+Ow0K
PiArCQkjcmVzZXQtY2VsbHMgPSA8MT47DQo+ICsJfTsNCj4gKw0KPiArCXJlc2V0MzogcmVzZXQt
Y29udHJvbGxlckA4IHsNCj4gKwkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7DQo+
ICsJCXJlZyA9IDwweDggMHg0PjsNCj4gKwkJI3Jlc2V0LWNlbGxzID0gPDE+Ow0KPiArCX07DQo+
ICt9Ow0KPiArDQo+ICAmaXNvIHsNCj4gKwlpc29fcmVzZXQ6IHJlc2V0LWNvbnRyb2xsZXJAODgg
ew0KPiArCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsNCj4gKwkJcmVnID0gPDB4
ODggMHg0PjsNCj4gKwkJI3Jlc2V0LWNlbGxzID0gPDE+Ow0KPiArCX07DQo+ICsNCj4gIAl3ZHQ6
IHdhdGNoZG9nQDY4MCB7DQo+ICAJCWNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxMjk1LXdhdGNo
ZG9nIjsNCj4gIAkJcmVnID0gPDB4NjgwIDB4MTAwPjsNCj4gLS0NCj4gMi4xNi40DQo+IA0KQWNr
ZWQtYnk6IEphbWVzIFRhaSA8amFtZXMudGFpQHJlYWx0ZWsuY29tPg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
