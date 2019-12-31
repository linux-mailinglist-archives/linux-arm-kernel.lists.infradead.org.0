Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9286312D772
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 10:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=faWpwa3ExwUPQAcZ9UkqFwxSW+rAF/LpTapshxn0SZw=; b=HEcHG5ujW6Sw8q
	Q+7OoNSNrECctkVLCPyErE6wXRr5cOkNX0V1nrekgq+vHqTxKzeIB6SHGlbHvrRxHQtW8ZyCJjOt8
	u94SSXCHrXdynfIRbq1OVXH+olei7VC2jSSd4snUIO5KXOGJE002gNmOlcNpCUNaXKQKWTJkECmXU
	qr2yf41nYp1fYSkPUYUzEySGwyEifYh/onsDy7I37tcxfCuuD3hPrph/NL7nyXEgVh7zbBzfiygxd
	3nYUQOsWAMFx3Ze+wRyHHyI3yq3DCsErSjFQIX9+HhYxqa1XaglkDkiPKZ5yrsG+xlzKzU/c5drpn
	cWiy5NxaeEbj7G6udLtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imDpi-0006wM-Ne; Tue, 31 Dec 2019 09:28:58 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1imDpW-0006vP-Rz; Tue, 31 Dec 2019 09:28:48 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBV9ScZ5030135,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBV9ScZ5030135
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 31 Dec 2019 17:28:38 +0800
Received: from RTEXMB05.realtek.com.tw (172.21.6.98) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Tue, 31 Dec 2019 17:28:37 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB05.realtek.com.tw (172.21.6.98) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 31 Dec 2019 17:28:37 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Tue, 31 Dec 2019 17:28:37 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH 08/14] ARM: dts: rtd1195: Add UART resets
Thread-Topic: [PATCH 08/14] ARM: dts: rtd1195: Add UART resets
Thread-Index: AQHVqT3zvNviF7MlYU6F83GAtd4KuKfUJsEA
Date: Tue, 31 Dec 2019 09:28:37 +0000
Message-ID: <3ac5be654e104e349287981fffd84a0f@realtek.com>
References: <20191202182205.14629-1-afaerber@suse.de>
 <20191202182205.14629-9-afaerber@suse.de>
In-Reply-To: <20191202182205.14629-9-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_012847_041977_E449B9E7 
X-CRM114-Status: GOOD (  12.70  )
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

PiBBc3NvY2lhdGUgdGhlIFVBUlQgbm9kZXMgd2l0aCB0aGUgY29ycmVzcG9uZGluZyByZXNldCBj
b250cm9sbGVyIGJpdHMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFm
YWVyYmVyQHN1c2UuZGU+DQo+IC0tLQ0KPiAgdjE6IEZyb20gUlREMTE5NSB2NCBzZXJpZXMNCj4g
DQo+ICBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kgfCAzICsrKw0KPiAgMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3J0ZDExOTUuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaQ0KPiBpbmRl
eCA4ODY4NDVlNTIyMDUuLjA5YWNiOTkwODNjMSAxMDA2NDQNCj4gLS0tIGEvYXJjaC9hcm0vYm9v
dC9kdHMvcnRkMTE5NS5kdHNpDQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRz
aQ0KPiBAQCAtOCw2ICs4LDcgQEANCj4gIC9tZW1yZXNlcnZlLyAweDE3ZmZmMDAwIDB4MDAwMDEw
MDA7DQo+IA0KPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2Fy
bS1naWMuaD4NCj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNldC9yZWFsdGVrLHJ0ZDExOTUu
aD4NCj4gDQo+ICAvIHsNCj4gIAljb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTE5NSI7DQo+IEBA
IC0xNzksNiArMTgwLDcgQEANCj4gIAkJcmVnID0gPDB4ODAwIDB4NDAwPjsNCj4gIAkJcmVnLXNo
aWZ0ID0gPDI+Ow0KPiAgCQlyZWctaW8td2lkdGggPSA8ND47DQo+ICsJCXJlc2V0cyA9IDwmaXNv
X3Jlc2V0IFJURDExOTVfSVNPX1JTVE5fVVIwPjsNCj4gIAkJY2xvY2stZnJlcXVlbmN5ID0gPDI3
MDAwMDAwPjsNCj4gIAkJc3RhdHVzID0gImRpc2FibGVkIjsNCj4gIAl9Ow0KPiBAQCAtMTkwLDYg
KzE5Miw3IEBADQo+ICAJCXJlZyA9IDwweDIwMCAweDEwMD47DQo+ICAJCXJlZy1zaGlmdCA9IDwy
PjsNCj4gIAkJcmVnLWlvLXdpZHRoID0gPDQ+Ow0KPiArCQlyZXNldHMgPSA8JnJlc2V0MiBSVEQx
MTk1X1JTVE5fVVIxPjsNCj4gIAkJY2xvY2stZnJlcXVlbmN5ID0gPDI3MDAwMDAwPjsNCj4gIAkJ
c3RhdHVzID0gImRpc2FibGVkIjsNCj4gIAl9Ow0KPiAtLQ0KPiAyLjE2LjQNCj4gDQo+IA0KQWNr
ZWQtYnk6IEphbWVzIFRhaSA8amFtZXMudGFpQHJlYWx0ZWsuY29tPg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
