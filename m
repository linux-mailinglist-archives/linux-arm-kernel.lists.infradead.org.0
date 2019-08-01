Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DBF7D9C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 13:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XbSi22ArvKXZtjuEywFFYXXjnW3Z7JYxJ9JhskNxadE=; b=fVw09SsGYirsHe
	jn+yFMO1j7UIs6ZT1fltfKYiruPFfvffXCrcDpsk77F92lzIeNyrfFyTyJ8Qi9BgRSG+RO62djcQ/
	bhOl1NS06dTd8CkAFs8EEBL0RgwP8PWJHC9Q+ib5oQctcnY8rUzIZpTtRdAzCSbEAp7SIZCDJp5qt
	zxOiAEC9d1G0S1YRiQWVMfv1RPgkyTmBQPlSDGJyAbjbENUK60wRfeoTkmb1rzWaS9yqYTAeYL4O1
	5nYSr53ApyHFwcSH5PajYJeTrf/wEWDuhCMqDZBYHrqfT9c1ItqwNN2NVYOWx2u2fOzr9qJRSNt5T
	du1YWzw5MMtKnFh4rh+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht8oe-0006Jo-Kt; Thu, 01 Aug 2019 11:00:13 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht8oQ-0006Gz-IN
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 11:00:00 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 46F8867A8D5;
 Thu,  1 Aug 2019 12:59:55 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 1 Aug 2019
 12:59:54 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Thu, 1 Aug 2019 12:59:54 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH] serial: imx: Avoid probe failure in case of missing
 gpiolib
Thread-Topic: [PATCH] serial: imx: Avoid probe failure in case of missing
 gpiolib
Thread-Index: AQHVSEGkENWr6+HjfEGe5le+et6Jcabl2bqAgAALMwCAAAeIgIAAEf6A
Date: Thu, 1 Aug 2019 10:59:54 +0000
Message-ID: <0174be55-5e40-8cc7-82c7-54f9de46f711@kontron.de>
References: <20190801081524.22577-1-frieder.schrempf@kontron.de>
 <20190801084827.m42ci3amo37hmesi@pengutronix.de>
 <0674d68b-99fa-3408-1dd1-22dc84144b43@kontron.de>
 <20190801095529.dm3pvgts6cy6mbiq@pengutronix.de>
In-Reply-To: <20190801095529.dm3pvgts6cy6mbiq@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <0628AA5336195744A936E2B9B571403C@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 46F8867A8D5.A1B07
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: festevam@gmail.com, gregkh@linuxfoundation.org,
 jslaby@suse.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 s.hauer@pengutronix.de, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_035958_937959_1E380461 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Jiri Slaby <jslaby@suse.com>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDEuMDguMTkgMTE6NTUsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOg0KPiBPbiBUaHUsIEF1
ZyAwMSwgMjAxOSBhdCAwOToyODozM0FNICswMDAwLCBTY2hyZW1wZiBGcmllZGVyIHdyb3RlOg0K
Pj4gSGkgVXdlLA0KPj4NCj4+IE9uIDAxLjA4LjE5IDEwOjQ4LCBVd2UgS2xlaW5lLUvDtm5pZyB3
cm90ZToNCj4+PiBPbiBUaHUsIEF1ZyAwMSwgMjAxOSBhdCAwODoxODowNUFNICswMDAwLCBTY2hy
ZW1wZiBGcmllZGVyIHdyb3RlOg0KPj4+PiBGcm9tOiBGcmllZGVyIFNjaHJlbXBmIDxmcmllZGVy
LnNjaHJlbXBmQGtvbnRyb24uZGU+DQo+Pj4+DQo+Pj4+IElmIENPTkZJR19HUElPTElCIGlzIG5v
dCBlbmFibGVkLCBtY3RybF9ncGlvX2luaXQoKSB3aWxsIHJldHVybg0KPj4+PiAtRU5PU1lTIGFu
ZCBjYXVzZSB0aGUgcHJvYmluZyBvZiB0aGUgaW14IFVBUlQgdG8gZmFpbC4gQXMgdGhlDQo+Pj4+
IEdQSU9zIGFyZSBvcHRpb25hbCwgd2Ugc2hvdWxkIGNvbnRpbnVlIHByb2JpbmcgaW4gdGhpcyBj
YXNlLg0KPj4+DQo+Pj4gSXMgdGhpcyByZWFsbHkgc3RpbGwgdGhlIGNhc2U/IE9uIHdoaWNoIHZl
cnNpb24gZGlkIHlvdSBoaXQgdGhpcw0KPj4+IHByb2JsZW0/DQo+Pg0KPj4gWWVzLCBJIHRoaW5r
IGl0IGlzLiBJIHVzZWQgdjUuMi41LCB0aGF0IGFscmVhZHkgaGFzIGQ5OTQ4MjY3M2Y5NS4NCj4+
DQo+Pj4NCj4+PiBJIHdvdWxkIGV4cGVjdCB0aGF0IGlzIGdvbmUgd2l0aA0KPj4+IGQ5OTQ4MjY3
M2Y5NTA4MTdiMzBjYWYzZmNkZmIzMTE3OWIwNTBjZTEgaWYgbm90IGVhcmxpZXIuDQo+Pg0KPj4g
SSB0aGluayB0aGlzIGlzIGEgZGlmZmVyZW50IHByb2JsZW0uIElmIENPTkZJR19HUElPTElCIGlz
IGRpc2FibGVkLA0KPj4gbWN0cmxfZ3Bpb19pbml0KCkgcmV0dXJucyAtRU5PU1lTIHVuY29uZGl0
aW9uYWxseSBoZXJlOiBbMV0uIFRoZQ0KPj4gZXhpc3RpbmcgcGF0Y2ggKGQ5OTQ4MjY3M2Y5NSkg
c2VlbXMgdG8gaGFuZGxlIHRoZSBjYXNlIHdoZW4NCj4+IENPTkZJR19HUElPTElCIGlzIGVuYWJs
ZWQsIGJ1dCBubyBvciBub3QgYWxsIEdQSU9zIGFyZSBnaXZlbiBpbiB0aGUgZHRiLg0KPiANCj4g
QWgsIEkgc2VlLg0KPiANCj4gSSBkb24ndCB0aGluayB3ZSBzaG91bGQgaGFuZGxlIHRoaXMgb24g
YSBwZXItZHJpdmVyIGJhc2lzLiBTbyBteQ0KPiBzdWdnZXN0aW9uIGlzIHRvIGRyb3AgdGhlIGR1
bW15IGltcGxlbWVudGF0aW9uIGZvciBtY3RybF9ncGlvIGlmIEdQSU9MSUINCj4gaXMgZGlzYWJs
ZWQuIFRoZW4gdGhlIGJlaGF2aW91ciBzaG91bGQgYmUgY29uc2lzdGFudCB3aXRoIHRoZSBncGlv
IHN0dWZmDQo+IHJldHVybmluZyBOVUxMIGluIHRoaXMgY2FzZS4gKE9yIGFsdGVybmF0aXZlbHkg
YWRhcHQgdGhlIGR1bW15DQo+IGltcGxlbWVudGF0aW9uIHRvIHNob3J0Y3V0IGFuZCBiZWhhdmUg
aWRlbnRpY2FsbHkuKQ0KDQpJIGdldCB5b3VyIHBvaW50LCBidXQgaXQgc2VlbXMgYSBiaXQgc3Ry
YW5nZSB0byBnbyBkb3duIGFsbCB0aGUgd2F5IGZyb20gDQp0aGUgZHJpdmVyIHRvIG1jdHJsX2dw
aW9faW5pdF9ub2F1dG8oKSBhbmQgaW50byB0aGUgbG9vcCBqdXN0IHRvIHJldHVybiANCmFuIGVt
cHR5IHN0cnVjdCBtY3RybF9ncGlvcyB0byB0aGUgZHJpdmVyIHRoYXQgd2lsbCBiZSBsb29wZWQg
b3ZlciBhZ2FpbiANCm9uIGVhY2ggY2FsbCBvZiBtY3RybF9ncGlvXyooKS4NCg0KU28gSSB3b3Vs
ZCByYXRoZXIgZ28gd2l0aCBhIHZhcmlhdGlvbiBvZiB5b3VyIHNlY29uZCBwcm9wb3NhbCBhbmQg
a2VlcCANCnRoZSBkdW1teSBpbXBsZW1lbnRhdGlvbiwgYnV0IGxldCBpdCByZXR1cm4gTlVMTCBp
bnN0ZWFkIG9mIGFuIGVycm9yIA0KcG9pbnRlciwgYXMgYWxsIHRoZSBtY3RybF9ncGlvXyooKSBm
dW5jdGlvbnMgYWxyZWFkeSBzZWVtIHRvIGhhdmUgYSANCmNoZWNrIGZvciBncGlvcyA9PSBOVUxM
Lg0KDQpXaGF0IGRvIHlvdSB0aGluaz8NCg0KPiANCj4gKEhhdmluZyBzYWlkIHRoYXQgSSBkb24n
dCBsaWtlIGdwaW9saWIncyBiZWhhdmlvdXIgb2YgcmV0dXJuaW5nIE5VTEwgZm9yDQo+IHRoZSBv
cHRpb25hbCBjYWxscyBpZiBpdCdzIGRpc2FibGVkLCBidXQgaGF2aW5nIG1jdHJsX2dwaW8gYmVo
YXZlDQo+IGRpZmZlcmVudGx5IGlzIHdvcnNlLikNCj4gDQo+PiBUaGUgc2gtc2NpLmMgZHJpdmVy
IGhhcyBhIHNpbWlsYXIgY2hlY2sgdG8gc2tpcCB0aGlzIGNhc2U6IFsyXS4NCj4gDQo+IFRoaXMg
c2hvdWxkIHRoYW4gYmUgZHJvcHBlZCwgdG9vLg0KPiANCj4gQmVzdCByZWdhcmRzDQo+IFV3ZQ0K
PiANCj4+IFsxXQ0KPj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5l
bC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZHJpdmVycy90dHkvc2VyaWFsL3NlcmlhbF9t
Y3RybF9ncGlvLmgjbjEyMQ0KPj4gWzJdDQo+PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJzL3R0eS9z
ZXJpYWwvc2gtc2NpLmMjbjMyOTANCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
