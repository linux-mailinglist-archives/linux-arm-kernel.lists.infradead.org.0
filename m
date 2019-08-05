Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB862814AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+8rkf5XJSFWyyLxso1EQH21I8o/hOayOlGNXFvnCaU=; b=FLroQ9PHYdTJZe
	Ja7KBmLJPN99PGRKR+jpTrBXZzNw4nayOnhEh9PcHckxFIe9Ctr5Rc351TY488M+U9G/ybkBCEakx
	xwPWuz/A0mlspWZl4oirSpA5c9YUtpiy5JvmGm3uzbbJI1EAR1hBc+JWh8xXCOj6ZcV6s6lShs1SW
	5l4ZVZV5a0eo9nZdwcVoAf8pntXH3H9YEgpOBCXI6mor9KEP/EGAC5oWSNAEAbAqysgAKZAHNBSBj
	tc2E0hbbpD1zIYaC9avQi9P+gcV2iGt6O9ayL/5twBguBNIfDEXi9P6ywu3YbiPE52Gqb7DyP9RRu
	Arp8HXy7r78VZPW9qT5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYsU-00006p-Vn; Mon, 05 Aug 2019 09:02:03 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYsD-0008WF-Gy
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:01:48 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id CCC1167A8D1;
 Mon,  5 Aug 2019 11:01:39 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 5 Aug 2019
 11:01:39 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Mon, 5 Aug 2019 11:01:39 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v3 2/4] serial: mctrl_gpio: Add a NULL check to
 mctrl_gpio_to_gpiod()
Thread-Topic: [PATCH v3 2/4] serial: mctrl_gpio: Add a NULL check to
 mctrl_gpio_to_gpiod()
Thread-Index: AQHVSRmhj6XM1Buz9UqFmvYk2hHNCKbno2OAgASBqgA=
Date: Mon, 5 Aug 2019 09:01:39 +0000
Message-ID: <f866213b-fd3b-8602-6c11-56cb65a1ea05@kontron.de>
References: <20190802100349.8659-1-frieder.schrempf@kontron.de>
 <20190802100349.8659-2-frieder.schrempf@kontron.de>
 <20190802121231.wk6yg5mkyivs3rni@pengutronix.de>
In-Reply-To: <20190802121231.wk6yg5mkyivs3rni@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <AF108CA9207A10409A058A7C2410B1EC@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: CCC1167A8D1.A25F7
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
X-CRM114-CacheID: sfid-20190805_020145_888769_0D3BCBC4 
X-CRM114-Status: GOOD (  13.83  )
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

T24gMDIuMDguMTkgMTQ6MTIsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOg0KPiBPbiBGcmksIEF1
ZyAwMiwgMjAxOSBhdCAxMDowNDoxMEFNICswMDAwLCBTY2hyZW1wZiBGcmllZGVyIHdyb3RlOg0K
Pj4gRnJvbTogRnJpZWRlciBTY2hyZW1wZiA8ZnJpZWRlci5zY2hyZW1wZkBrb250cm9uLmRlPg0K
Pj4NCj4+IEFzIGl0IGlzIGFsbG93ZWQgdG8gdXNlIHRoZSBtY3RybF9ncGlvXyogZnVuY3Rpb25z
IGJlZm9yZQ0KPj4gaW5pdGlhbGl6YXRpb24gKGFzIHRoZSA4MjUwIGRyaXZlciBkb2VzIGFjY29y
ZGluZyB0byA0MzRiZTBhZTdhYTcpLA0KPiANCj4gQWN0dWFsbHkgSSB3YXMgc3VycHJpc2VkIHNv
bWUgdGltZSBhZ28gdGhhdCA4MjUwIHVzZWQgc2VyaWFsX21jdHJsDQo+IHdpdGhvdXQgZmlyc3Qg
aW5pdGlhbGl6aW5nIGl0IGFuZCBleHBlY3RpbmcgaXQgdG8gd29yay4gSSBkaWRuJ3QgbG9vayBp
bg0KPiBkZXRhaWwsIGJ1dCBJIHdvdWxkbid0IGdvIHNvIGZhciB0byBjYWxsIHRoaXMgImFsbG93
ZWQiLiBUaGUgY29tbWl0DQo+IGl0c2VsZiBjYWxscyBpdCAid29ya2Fyb3VuZCIgd2hpY2ggc2Vl
bXMgYSBiZXR0ZXIgbWF0Y2guDQoNCk9rLCBidXQgaWYgdGhpcyBpcyBjb25zaWRlcmVkIHRvIGJl
IGEgd29ya2Fyb3VuZCBhbmQgYXMgdGhlIDgyNTAgZHJpdmVyIA0KZG9lcyBub3QgdXNlIG1jdHJs
X2dwaW9fdG9fZ3Bpb2QoKSwgd2Ugc2hvdWxkIG1heWJlIGp1c3QgZHJvcCB0aGlzIHBhdGNoIA0K
aW5zdGVhZCBvZiBlbmNvdXJhZ2luZyBvdGhlcnMgdG8gdXNlIG1jdHJsX2dwaW8gYmVmb3JlIGlu
aXRpYWxpemF0aW9uLg0KDQpJJ20gcmVhbGx5IG5vdCBzdXJlIHdoYXQncyBiZXN0LCBzbyBkZXBl
bmRpbmcgb24gd2hhdCB5b3Ugd2lsbCBwcm9wb3NlLCANCkknbGwgc2VuZCBhIG5ldyB2ZXJzaW9u
IG9mIHRoaXMgcGF0Y2ggd2l0aCBhZGp1c3RlZCBjb21taXQgbWVzc2FnZSBvciBub3QuDQoNCkJ5
IHRoZSB3YXksIFV3ZSBhbmQgRmFiaW86IFRoYW5rcyBmb3IgeW91ciByZXZpZXdzIQ0KDQo+IA0K
Pj4gaXQgc2VlbXMgYXBwcm9wcmlhdGUgdG8gaGF2ZSBhIE5VTEwgY2hlY2sgaW4gYWxsIG9mIHRo
ZSBmdW5jdGlvbnMuDQo+PiBPdGhlcndpc2UgdGhlIG1jdHJsX2dwaW9fdG9fZ3Bpb2QoKSBmdW5j
dGlvbiBpcyBwcm9uZSB0byBiZSB1c2VkDQo+PiBpbiBhIGNvbnRleHQgdGhhdCBjYW4gbGVhZCB0
byBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZS4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBGcmll
ZGVyIFNjaHJlbXBmIDxmcmllZGVyLnNjaHJlbXBmQGtvbnRyb24uZGU+DQo+IA0KPiBCZXN0IHJl
Z2FyZHMNCj4gVXdlDQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
