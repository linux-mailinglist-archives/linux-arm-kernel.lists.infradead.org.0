Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2F113541F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 09:07:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u1uK6+rzumnVRp+8vZ8nAyWLAZ9KjkqiXq0EX3kRE1U=; b=PsD9RI5JitKyp5
	wEadMKGTmTBsvKppPfcsx0qixXW33Njmt1S5YchEx8OrOsTLLfLHDIpop8fcAOCHPSEijJXURbDLR
	mNBPYjPk/Ws+52QEz9hnxjzRna8rL4QytWALywQ2NWSX5yutA9QVjsquBcXlsq6mEGrgXVXvHLd5F
	/RLu97WajqO4ERw4DopzEO1YWixd6vJyZFbc2jh2Rq44m1B2STWpEuYhdlgfttuMc34QRx+ILc0sn
	RvYH+YoeVXHWTp94q2+C2iTnlrNt1F6sxr7x62WmvODBhZeregqTRuGlAVsFhFGMI0eNTNYrfYa8h
	4fXcIMLXO4z/XlirLKiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSqy-0000Za-0D; Thu, 09 Jan 2020 08:07:40 +0000
Received: from mail1.bemta24.messagelabs.com ([67.219.250.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSqn-0000XH-9C
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 08:07:31 +0000
Received: from [67.219.250.111] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-1.bemta.az-a.us-west-2.aws.symcld.net id F7/6B-12573-D3FD61E5;
 Thu, 09 Jan 2020 08:07:25 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpgk+JIrShJLcpLzFFi42LJePGQR9f6vli
 cwbZvQha7LnNYzNj7gNli/pFzrBa/z/9lttj0+BqrRfPqc8wWl3fNYbNYev0ik8WplhcsFq17
 j7A7cHlcbd/F7rFm3hpGjwWbSj0ufjzG7LFpVSebx+Yl9R7nZyxk9Pi8SS6AI4o1My8pvyKBN
 ePpjvdsBV9dKy7damNvYGxw7WLk4hASaGCSWPvxETOE84JRonH6LShnN6PE/KZLLF2MnBxsAl
 oSC//vYepi5OAQEVCUaPghBFLDLHCGWeLsxBY2kBphgTZGiQubjUFsEYFoiXV7XzBC2FYSj1e
 8ZwWxWQRUJA7s/gIW5xWwlJh+eQ4LxLJORompnz6CLeMUCJSYv3QZM4jNKCArMe3RfSYQm1lA
 XGLutFlggyQEBCSW7DnPDGGLSrx8/A8qriDR3v6YBeRQZgFNifW79CFaFSWmdD9kh9grKHFy5
 hOWCYyis5BMnYXQMQtJxywkHQsYWVYxWiQVZaZnlOQmZuboGhoY6BoaGukaGlnqGplY6iVW6S
 bqlRbrlqcWl+ga6SWWF+sVV+Ym56To5aWWbGIERnpKQePPHYzdH97qHWKU5GBSEuWdNUMsTog
 vKT+lMiOxOCO+qDQntfgQowwHh5IE75XLQDnBotT01Iq0zBxg0oFJS3DwKInwzrgLlOYtLkjM
 Lc5Mh0idYnTlmPBy7iJmjrat84DkwaMg8nvzQiB5ZO7SRcxCLHn5ealS4rxiIM0CIM0ZpXlwo
 2EJ8xKjrJQwLyMDA4MQT0FqUW5mCar8K0ZxDkYlYV71e0BTeDLzSuAueAV0HBPQcXfuiIIcV5
 KIkJJqYKqUq9SXKdU9fEJxwg5x5kk6WxtXVi/8vZjLrPORjcYpu8ZuvVmHX9wtflBpndf7ekt
 FbnYCJ6+7SswbsVbTtfxHZ6eUelayVaYuN2svNJXLv/en9pzDu6bP8htPLS7okPn1hfUqY9nW
 5FnX+M4f/F3TXnNi3dk1zZdXtRZKbPlzqkVOzCQ8zefh9uNfr65UEGkvnXf/s7A994E6iWsMV
 dvXyGzd3/NG7TPznF19y9W/V/M8vDGJf9XiCUxtBR2lV5f8X7Dt3OdHfOLREx29j10oX6Qb/k
 Mn+2zTlS1O63u9H65Q7v7GEbige4/VXJOZk01X6ofPZpv+ft4CR5MFLO7Jv96Yn5CPCFp1WtZ
 Nwk6JpTgj0VCLuag4EQCdQkTFEwQAAA==
X-Env-Sender: pengms1@lenovo.com
X-Msg-Ref: server-14.tower-335.messagelabs.com!1578557242!233457!1
X-Originating-IP: [104.232.225.12]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.44.22; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 32613 invoked from network); 9 Jan 2020 08:07:23 -0000
Received: from unknown (HELO lenovo.com) (104.232.225.12)
 by server-14.tower-335.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 9 Jan 2020 08:07:23 -0000
Received: from HKGWPEMAIL04.lenovo.com (unknown [10.128.3.72])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id D8033D59B3B91E79DA5C;
 Thu,  9 Jan 2020 03:07:19 -0500 (EST)
Received: from pekwpmail05.lenovo.com (10.96.93.83) by HKGWPEMAIL04.lenovo.com
 (10.128.3.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Thu, 9 Jan 2020
 16:07:17 +0800
Received: from pekwpmail05.lenovo.com ([fe80::c91f:415c:90bb:3ddf]) by
 pekwpmail05.lenovo.com ([fe80::c91f:415c:90bb:3ddf%7]) with mapi id
 15.01.1779.002; Thu, 9 Jan 2020 16:07:17 +0800
From: Andrew MS1 Peng <pengms1@lenovo.com>
To: Joel Stanley <joel@jms.id.au>
Subject: =?utf-8?B?562U5aSNOiBbRXh0ZXJuYWxdICBSZTogW1BBVENIIHYxIDEvMV0gQVJNOiBk?=
 =?utf-8?Q?ts:_aspeed:_update_Hr855xg2_device_tree?=
Thread-Topic: [External] Re: [PATCH v1 1/1] ARM: dts: aspeed: update Hr855xg2
 device tree
Thread-Index: AQHVu8oaCeFYpkpV/0+SFn6+QuoWV6fcvK+AgAP7prA=
Date: Thu, 9 Jan 2020 08:07:17 +0000
Message-ID: <85dc718f42f54d40ad50853c047ec3ae@lenovo.com>
References: <1577350475-127530-1-git-send-email-pengms1@lenovo.com>
 <CACPK8XeY5dPHtRfFD55dLVHT0SF1gJEVf1DixsbJKpciLP2s5Q@mail.gmail.com>
In-Reply-To: <CACPK8XeY5dPHtRfFD55dLVHT0SF1gJEVf1DixsbJKpciLP2s5Q@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.96.12.250]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_000729_376053_27125501 
X-CRM114-Status: GOOD (  29.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.219.250.1 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.250.1 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 devicetree <devicetree@vger.kernel.org>,
 Benjamin Fair <benjaminfair@google.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, Harry Sung1 <hsung1@lenovo.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Derek Lin23 <dlin23@lenovo.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSm9lbCwNCg0KUGxlYXNlIGhlbHAgdG8gY2hlY2sgYmVsb3cgbXkgY29tbWVudHMuIFRoYW5r
cy4NCg0KUmVnYXJkcywNCkFuZHJldyBQZW5nDQoNCj4gLS0tLS3pgq7ku7bljp/ku7YtLS0tLQ0K
PiDlj5Hku7bkuro6IEpvZWwgU3RhbmxleSA8am9lbEBqbXMuaWQuYXU+DQo+IOWPkemAgeaXtumX
tDogMjAyMOW5tDHmnIg25pelIDE0OjQ4DQo+IOaUtuS7tuS6ujogQW5kcmV3IE1TMSBQZW5nIDxw
ZW5nbXMxQGxlbm92by5jb20+DQo+IOaKhOmAgTogUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVs
Lm9yZz47IE1hcmsgUnV0bGFuZA0KPiA8bWFyay5ydXRsYW5kQGFybS5jb20+OyBBbmRyZXcgSmVm
ZmVyeSA8YW5kcmV3QGFqLmlkLmF1PjsgZGV2aWNldHJlZQ0KPiA8ZGV2aWNldHJlZUB2Z2VyLmtl
cm5lbC5vcmc+OyBMaW51eCBBUk0NCj4gPGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZz47IGxpbnV4LWFzcGVlZA0KPiA8bGludXgtYXNwZWVkQGxpc3RzLm96bGFicy5vcmc+OyBM
aW51eCBLZXJuZWwgTWFpbGluZyBMaXN0DQo+IDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3Jn
PjsgQmVuamFtaW4gRmFpciA8YmVuamFtaW5mYWlyQGdvb2dsZS5jb20+Ow0KPiBPcGVuQk1DIE1h
aWxsaXN0IDxvcGVuYm1jQGxpc3RzLm96bGFicy5vcmc+OyBEZXJlayBMaW4yMw0KPiA8ZGxpbjIz
QGxlbm92by5jb20+OyBZb25naHVpIFlIMjEgTGl1IDxsaXV5aDIxQGxlbm92by5jb20+DQo+IOS4
u+mimDogW0V4dGVybmFsXSBSZTogW1BBVENIIHYxIDEvMV0gQVJNOiBkdHM6IGFzcGVlZDogdXBk
YXRlIEhyODU1eGcyDQo+IGRldmljZSB0cmVlDQo+IA0KPiBPbiBUaHUsIDI2IERlYyAyMDE5IGF0
IDA4OjU0LCBBbmRyZXcgUGVuZyA8cGVuZ21zMUBsZW5vdm8uY29tPiB3cm90ZToNCj4gPg0KPiAN
Cj4gV2hlbiB5b3UgaGF2ZSBhIGxpc3Qgb2YgdGhpbmdzIGxpa2UgYmVsb3csIGl0J3Mgc29tZXRp
bWVzIGEgZ29vZCBoaW50IHRoYXQgeW91DQo+IHNob3VsZCBiZSBzZW5kaW5nIG9uZSBwYXRjaCBm
b3IgZWFjaCBidWxsZXQgcG9pbnQuIFRoaXMgbWFrZXMgaXQgZWFzaWVyIHRvDQo+IHJldmlldy4N
Cj4gDQoNClNob3VsZCBJIHNlcGFyYXRlIGJlbG93IGNoYW5nZXMgdG8gc2l4IHBhdGNoZXMgZm9y
IG5leHQgcGF0Y2ggdmVyc2lvbj8NCkZvciBleGFtcGxlOiBbUEFUQ0ggdjIgMC81XSAgW1BBVENI
IHYyIDEvNV0gLi4uZXRjDQoNCj4gPiBVcGRhdGUgaTJjIGFsaWFzZXMuDQo+ID4gQ2hhbmdlIGZs
YXNoX21lbW9yeSBtYXBwaW5nIGFkZHJlc3MgYW5kIHNpemUuDQo+ID4gQWRkIGluIGEgZ3Bpby1r
ZXlzIHNlY3Rpb24uDQo+ID4gRW5hYmxlIHZodWIsIHZ1YXJ0LCBzcGkxIGFuZCBzcGkyLg0KPiA+
IEFkZCByYWEyMjgwMDYsIGlyMzgxNjQgYW5kIHNuMTcwMTAyMiBod21vbiBzZW5zb3JzLg0KPiA+
IFJlbW92ZSBzb21lIHVudXNlIGdwaW8gZnJvbSBncGlvIHNlY3Rpb24uDQo+IA0KPiB1bnVzZWQ/
DQo+IA0KDQpJdCB3YXMgbXkgbWlzdGFrZSwgdGhlIGNvcnJlY3Qgc2VudGVuY2Ugc2hvdWxkIGJl
ICJSZW1vdmUgZ3BpbyBmcm9tIGdwaW8gc2VjdGlvbiBzaW5jZSBpdCBjb250cm9sbGVkIGJ5IHVz
ZXIgc3BhY2UuIg0KDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRyZXcgUGVuZyA8cGVuZ21z
MUBsZW5vdm8uY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IERlcmVrIExpbiA8ZGxpbjIzQGxlbm92
by5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogWW9uZ2h1aSBMaXUgPGxpdXloMjFAbGVub3ZvLmNv
bT4NCj4gDQo+IEkgZ290IHR3byBjb3BpZXMgb2YgdGhpcy4gSSB0aGluayB0aGV5IGFyZSB0aGUg
c2FtZS4NCj4gDQoNCkkgYXBvbG9naXplIHRvIHNlbmQgdHdpY2UuDQoNCj4gPiAtLS0NCj4gPiB2
MTogaW5pdGlhbCB2ZXJzaW9uDQo+ID4NCj4gPiAgYXJjaC9hcm0vYm9vdC9kdHMvYXNwZWVkLWJt
Yy1sZW5vdm8taHI4NTV4ZzIuZHRzIHwgNTU3DQo+ID4gKysrKysrKysrKysrKysrKy0tLS0tLS0N
Cj4gPiAgMSBmaWxlIGNoYW5nZWQsIDM4MiBpbnNlcnRpb25zKCspLCAxNzUgZGVsZXRpb25zKC0p
DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvYXNwZWVkLWJtYy1sZW5v
dm8taHI4NTV4ZzIuZHRzDQo+ID4gYi9hcmNoL2FybS9ib290L2R0cy9hc3BlZWQtYm1jLWxlbm92
by1ocjg1NXhnMi5kdHMNCj4gPiBpbmRleCA4MTkzZmFkLi5lMTM4NmQ0IDEwMDY0NA0KPiA+IC0t
LSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2FzcGVlZC1ibWMtbGVub3ZvLWhyODU1eGcyLmR0cw0KPiA+
ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2FzcGVlZC1ibWMtbGVub3ZvLWhyODU1eGcyLmR0cw0K
PiA+IEBAIC0xNSwxNCArMTUsMjEgQEANCj4gPiAgICAgICAgIGNvbXBhdGlibGUgPSAibGVub3Zv
LGhyODU1eGcyLWJtYyIsICJhc3BlZWQsYXN0MjUwMCI7DQo+ID4NCj4gDQo+ID4gLSAgICAgICAg
ICAgICAgIGZsYXNoX21lbW9yeTogcmVnaW9uQDk4MDAwMDAwIHsNCj4gPiArICAgICAgICAgICAg
ICAgZmxhc2hfbWVtb3J5OiByZWdpb25AOUVGRjAwMDAgew0KPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgIG5vLW1hcDsNCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHg5ODAw
MDAwMCAweDAwMTAwMDAwPjsgLyogMU0gKi8NCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBy
ZWcgPSA8MHg5RUZGMDAwMCAweDAwMDEwMDAwPjsgLyogNjRLICovDQo+IA0KPiBEbyB5b3UgcmVh
bGx5IHVzZSA2NEsgaGVyZSwgb3Igd2FzIHRoaXMgYSB3b3JrYXJvdW5kIGZvciB0aGUgbHBjLWN0
bHIgZHJpdmVyDQo+IHJlcXVpcmluZyBhIG1lbW9yeSByZWdpb24/DQo+IA0KDQpXZSByZXNlcnZl
IDY0SyBmb3IgTDJBIEluLUJhbmQgRmlybXdhcmUgVXBkYXRlIChwaG9zcGhvci1pcG1pLWZsYXNo
KS4NCg0KPiBJZiBpdCdzIGEgd29ya2Fyb3VuZCB5b3UgY2FuIG5vdyBkcm9wIHRoZSBtZW1vcnkg
cmVnaW9uIHBoYW5kbGUsIGFzIHRoZQ0KPiBkcml2ZXIgd29ya3Mgd2l0aG91dCBpdC4NCj4gDQo+
ID4gKyZzcGkyIHsNCj4gPiAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsNCj4gPiAgICAgICAgIHBp
bmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7DQo+ID4gLSAgICAgICBwaW5jdHJsLTAgPSA8JnBpbmN0
cmxfdHhkMV9kZWZhdWx0DQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgJnBpbmN0cmxfcnhk
MV9kZWZhdWx0PjsNCj4gPiArICAgICAgIHBpbmN0cmwtMCA9IDwmcGluY3RybF9zcGkyY2tfZGVm
YXVsdA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnBpbmN0cmxfc3BpMmNz
MF9kZWZhdWx0DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmcGluY3RybF9z
cGkybWlzb19kZWZhdWx0DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmcGlu
Y3RybF9zcGkybW9zaV9kZWZhdWx0PjsNCj4gPiArDQo+ID4gKyAgICAgICAgICAgICAgIHNwaWRl
dkAwIHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJva2F5
IjsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYXNw
ZWVkLHNwaWRldiI7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8
IDAgPjsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNwaS1tYXgtZnJlcXVl
bmN5ID0gPDUwMDAwMDAwPjsNCj4gPiArICAgICAgICAgICAgICAgfTsNCj4gDQo+IFRoaXMgaXMg
Zm9yIGFuIG91dCBvZiB0cmVlIGRyaXZlcj8gV2UgZGlzY291cmFnZSB0aGF0LCBhbmQgcHJlZmVy
IHlvdSBzdWJtaXQgdGhlDQo+IGRyaXZlciB1cHN0cmVhbSBmb3IgcmV2aWV3IGJlZm9yZSBhZGRp
bmcgaXQgdG8gdGhlIGRldmljZSB0cmVlLg0KPiANCj4gUGxlYXNlIGRyb3AgdGhlIHNiaWRldiBi
aXQgZnJvbSB5b3VyIG5leHQgdmVyc2lvbi4NCj4gDQoNCkkgd2lsbCByZW1vdmUgc3BpZGV2QDAg
cHJvcGVydHkgaW4gdGhlIG5leHQgdmVyc2lvbi4NCg0KPiA+ICsNCj4gPiArICAgICAgICAgICAg
ICAgZmxhc2hAMCB7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRp
YmxlID0gImplZGVjLHNwaS1ub3IiOw0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgbTI1cCxmYXN0LXJlYWQ7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBs
YWJlbCA9ICJmcGdhIjsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9
IDwgMCA+Ow0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3BpLW1heC1mcmVx
dWVuY3kgPSA8NTAwMDAwMDA+Ow0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
c3RhdHVzID0gIm9rYXkiOw0KPiA+ICsgICAgICAgICAgICAgICB9Ow0KPiA+ICB9Ow0KPiANCj4g
PiArJnZ1YXJ0IHsNCj4gPiAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsNCj4gPiArICAgICAgIGF1
dG8tZmxvdy1jb250cm9sOw0KPiA+ICsgICAgICAgZXNwaS1lbmFibGVkID0gPCZzeXNjb24gMHg3
MCAyNT47DQo+IA0KPiBJcyB0aGlzIHRoZSBzYW1lIGFzIHRoZSB1cHN0cmVhbWVkIGFzcGVlZCxz
aXJxLXBvbGFyaXR5LXNlbnNlPw0KPiANCg0KWWVzLCBpdCBpcyB1c2VkIGZvciBzaXJxLXBvbGFy
aXR5LXNlbnNlLg0KDQo+IFBsZWFzZSByZXZpZXcNCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy90
b3J2YWxkcy9jLzhkMzEwYzkxMDdhMmEzZjE5ZGM3YmI1NGRkNTBmNzBjNjVlZjUNCj4gNDA5Lg0K
PiBJIHRoaW5rIHlvdSB3aWxsIGZpbmQgeW91IGNhbiBkcm9wIHRoZSBlc3BpLWVuYWJsZWQgcHJv
cGVydHkgYXMgYXNwZWVkLWc1LmR0c2kNCj4gbm93IGNvbnRhaW5zIHRoZSBzYW1lIGluZm9ybWF0
aW9uLg0KPiANCg0KSSB3aWxsIHJlbW92ZSBlc3BpLWVuYWJsZWQgcHJvcGVydHkgaW4gdGhlIG5l
eHQgdmVyc2lvbi4NCg0KPiA+ICsgICAgICAgICAgICAgICBwY2llX3Nsb3QxMjogaTJjQDR7DQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsN
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Ow0K
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDQ+Ow0KPiA+ICsgICAg
ICAgICAgICAgICB9Ow0KPiA+ICsNCj4gPiArICAgICAgICAgICAgICAgc3dpdGNoMF9pMmM1Omky
Y0A1ew0KPiANCj4gYSBzcGFjZSBhZnRlciB0aGUgOg0KPiANCg0KSSB3aWxsIHJldmlzZSBpdC4N
Cg0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8
MT47DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDww
PjsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDw1PjsNCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVlcHJvbUA1NCB7DQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9DQo+ICJh
dG1lbCwyNGMwNCI7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcGFnZXNpemUgPQ0KPiA8MTY+Ow0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDU0PjsNCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIH07DQo+ID4gICAgICAgICAgICAgICAgIH07DQo+ID4gICAgICAg
ICB9Ow0KPiA+ICB9Ow0KPiA+IEBAIC0yMTYsMTMgKzM3Nyw0MyBAQA0KPiA+ICAgICAgICAgfTsN
Cj4gPg0KPiA+ICAgICAgICAgVlJANDUgew0KPiA+IC0gICAgICAgICAgICAgICBjb21wYXRpYmxl
ID0gInBtYnVzIjsNCj4gPiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyYWEyMjgwMDYi
Ow0KPiANCj4gUGxlYXNlIHNlbmQgdGhpcyBjaGFuZ2Ugb25jZSB5b3UndmUgaGFkIHlvdXIgcG1i
dXMgZHJpdmVyIGFjY2VwdGVkIGJ5DQo+IEd1bmV0ZXIuIEluIHRoZSBtZWFuIHRpbWUgSSBzdWdn
ZXN0IGRyb3BwaW5nIGl0IGZyb20gdjIgc28gd2UgY2FuIG1lcmdlIHRoZQ0KPiBvdGhlciBjaGFu
Z2VzLg0KPiANCg0KSSB3aWxsIHJlbW92ZSBpdCBpbiB0aGUgbmV4dCB2ZXJzaW9uLg0KDQo+ID4g
ICAgICAgICAgICAgICAgIHJlZyA9IDwweDQ1PjsNCj4gPiAgICAgICAgIH07DQo+ID4gIH07DQo+
ID4NCj4gDQo+ID4gKyAgICAgICBDUFUwX1ZDQ0lOQDYwIHsNCj4gDQo+IENvbnZlbnRpb24gaXMg
dG8gdXNlIGxvd2VyIGNhc2UgZm9yIG5vZGUgbmFtZXMuDQo+IA0KDQpJIHdpbGwgZHJvcCBDUFVY
WF9WQ0NYWCByZWxhdGl2ZSBwcm9wZXJ0eSBpbiB0aGUgbmV4dCB2ZXJzaW9uIHNpbmNlIGl0IHVz
ZSBuZXcgcG1idXMgZHJpdmVyLCBhbmQgSSB3aWxsIHJlbWVtYmVyIHRvIHVzZSBsb3dlciBjYXNl
IGZvciBub2RlIG5hbWVzLg0KDQo+ID4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicmFh
MjI4MDA2IjsNCj4gPiArICAgICAgICAgICAgICAgcmVnID0gPDB4NjA+Ow0KPiA+ICsgICAgICAg
fTsNCj4gPiArDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
