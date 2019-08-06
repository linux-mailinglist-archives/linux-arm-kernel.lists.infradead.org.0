Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560DF82D57
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 10:02:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtE1z83ULljOEgGFdyl/Wj6r6oKcyGUbxqkLHLMRU7o=; b=ioMaxqSnKBfogD
	M8TeAKY7heRFnYqjpWhKAjezVImx7vxoFsaz9EDao8Nen6wOz5NTDE4i95hDJXjPm4hNzpCoKS0D/
	aDcuozDGLlv3NKbnPOlz7Fcy7UukiR60tP33enMQoctY/gtyNOwPlfzFWZmeIWtlglBsuTcbDD2QK
	8TJNuf/zgdZ/3lW2mKKYW/wEH3FnDEJ0/kG9Ej+0wLtOl6Px/6vQ6+HFEOvpk/6WIEP+1AFqTeNd3
	HonkgKHQPBbdRlNlQWNpUh4rsV8ujAtghDNojtEHwfsbt53uxYl8H09LspqQpW2BPVcu5s7CEuo3s
	P57RrXIChoSSXaRBExCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huuQX-0000x2-CR; Tue, 06 Aug 2019 08:02:37 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huuQC-0000vg-JN
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 08:02:18 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id BCCFC626313;
 Tue,  6 Aug 2019 10:02:04 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 6 Aug 2019
 10:02:04 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Tue, 6 Aug 2019 10:02:04 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v3 2/4] serial: mctrl_gpio: Add a NULL check to
 mctrl_gpio_to_gpiod()
Thread-Topic: [PATCH v3 2/4] serial: mctrl_gpio: Add a NULL check to
 mctrl_gpio_to_gpiod()
Thread-Index: AQHVSRmhj6XM1Buz9UqFmvYk2hHNCKbno2OAgASBqgCAAX0UAIAABJuA
Date: Tue, 6 Aug 2019 08:02:04 +0000
Message-ID: <3672939d-183d-f844-c44c-c70a77931c72@kontron.de>
References: <20190802100349.8659-1-frieder.schrempf@kontron.de>
 <20190802100349.8659-2-frieder.schrempf@kontron.de>
 <20190802121231.wk6yg5mkyivs3rni@pengutronix.de>
 <f866213b-fd3b-8602-6c11-56cb65a1ea05@kontron.de>
 <20190806074534.5w773nltywxyiljz@pengutronix.de>
In-Reply-To: <20190806074534.5w773nltywxyiljz@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <44F6FF28ECA0604BAC78178DAA15EB46@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: BCCFC626313.A0B69
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: festevam@gmail.com, geert+renesas@glider.be,
 gregkh@linuxfoundation.org, jslaby@suse.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 s.hauer@pengutronix.de, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_010217_086304_95B97927 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
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
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Jiri Slaby <jslaby@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYuMDguMTkgMDk6NDUsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOg0KPiBIZWxsbyBGcmll
ZGVyLA0KPiANCj4gT24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMDk6MDE6MzlBTSArMDAwMCwgU2No
cmVtcGYgRnJpZWRlciB3cm90ZToNCj4+IE9uIDAyLjA4LjE5IDE0OjEyLCBVd2UgS2xlaW5lLUvD
tm5pZyB3cm90ZToNCj4+PiBPbiBGcmksIEF1ZyAwMiwgMjAxOSBhdCAxMDowNDoxMEFNICswMDAw
LCBTY2hyZW1wZiBGcmllZGVyIHdyb3RlOg0KPj4+PiBGcm9tOiBGcmllZGVyIFNjaHJlbXBmIDxm
cmllZGVyLnNjaHJlbXBmQGtvbnRyb24uZGU+DQo+Pj4+DQo+Pj4+IEFzIGl0IGlzIGFsbG93ZWQg
dG8gdXNlIHRoZSBtY3RybF9ncGlvXyogZnVuY3Rpb25zIGJlZm9yZQ0KPj4+PiBpbml0aWFsaXph
dGlvbiAoYXMgdGhlIDgyNTAgZHJpdmVyIGRvZXMgYWNjb3JkaW5nIHRvIDQzNGJlMGFlN2FhNyks
DQo+Pj4NCj4+PiBBY3R1YWxseSBJIHdhcyBzdXJwcmlzZWQgc29tZSB0aW1lIGFnbyB0aGF0IDgy
NTAgdXNlZCBzZXJpYWxfbWN0cmwNCj4+PiB3aXRob3V0IGZpcnN0IGluaXRpYWxpemluZyBpdCBh
bmQgZXhwZWN0aW5nIGl0IHRvIHdvcmsuIEkgZGlkbid0IGxvb2sgaW4NCj4+PiBkZXRhaWwsIGJ1
dCBJIHdvdWxkbid0IGdvIHNvIGZhciB0byBjYWxsIHRoaXMgImFsbG93ZWQiLiBUaGUgY29tbWl0
DQo+Pj4gaXRzZWxmIGNhbGxzIGl0ICJ3b3JrYXJvdW5kIiB3aGljaCBzZWVtcyBhIGJldHRlciBt
YXRjaC4NCj4+DQo+PiBPaywgYnV0IGlmIHRoaXMgaXMgY29uc2lkZXJlZCB0byBiZSBhIHdvcmth
cm91bmQgYW5kIGFzIHRoZSA4MjUwIGRyaXZlcg0KPj4gZG9lcyBub3QgdXNlIG1jdHJsX2dwaW9f
dG9fZ3Bpb2QoKSwgd2Ugc2hvdWxkIG1heWJlIGp1c3QgZHJvcCB0aGlzIHBhdGNoDQo+PiBpbnN0
ZWFkIG9mIGVuY291cmFnaW5nIG90aGVycyB0byB1c2UgbWN0cmxfZ3BpbyBiZWZvcmUgaW5pdGlh
bGl6YXRpb24uDQo+Pg0KPj4gSSdtIHJlYWxseSBub3Qgc3VyZSB3aGF0J3MgYmVzdCwgc28gZGVw
ZW5kaW5nIG9uIHdoYXQgeW91IHdpbGwgcHJvcG9zZSwNCj4+IEknbGwgc2VuZCBhIG5ldyB2ZXJz
aW9uIG9mIHRoaXMgcGF0Y2ggd2l0aCBhZGp1c3RlZCBjb21taXQgbWVzc2FnZSBvciBub3QuDQo+
IA0KPiBJIHdvdWxkbid0IGVuY291cmFnZSB1c2FnZSBvZiBtY3RybC1ncGlvIGJlZm9yZSBpdCdz
IGluaXRpYWxpemVkLiBTbyBJDQo+IHN1Z2dlc3QgdG8gZHJvcCB0aGlzIHBhdGNoLg0KDQpPaywg
dGhhbmtzLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
