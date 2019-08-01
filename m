Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F927D895
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 11:28:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSZNh8Ogp+jR9EtQAEnMTyxGHTVxPRYs9eHnh96x5MY=; b=l6OC8GyXvBi0iE
	hoWdXjwwIdtILyCUNyq7AVB9zVhfnr5z3Coyk2X/VBXiaGV0TAsd4S6f5RKYq4kLqySdVIdHk95v9
	qtsBllFvqD8Fvap3q2VTmHDQQ3H/JO++Mw5pWdWA8FoKDFpxXtWAwBRcckeT79Rn3gUdaKf0NLYXg
	ga7PcvsidN6NXTXzPZSoBTqxn3sgFjALPKGb61ISEt9nT06gczeICRSP852skIf7b/IddANB2s/su
	Lsvbghg8HFNPQjW5btw5frlBxoaIhmSL0BL32qHeyHTS70f5+HO7Wg8ynsk0psq1OPxqiF82/5+g0
	y+EepyskK87FATFcPVaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht7OD-0001Mf-71; Thu, 01 Aug 2019 09:28:49 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht7O6-0001Lr-KQ
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 09:28:45 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 4533367A8D7;
 Thu,  1 Aug 2019 11:28:34 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 1 Aug 2019
 11:28:33 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Thu, 1 Aug 2019 11:28:33 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH] serial: imx: Avoid probe failure in case of missing
 gpiolib
Thread-Topic: [PATCH] serial: imx: Avoid probe failure in case of missing
 gpiolib
Thread-Index: AQHVSEGkENWr6+HjfEGe5le+et6Jcabl2bqAgAALMwA=
Date: Thu, 1 Aug 2019 09:28:33 +0000
Message-ID: <0674d68b-99fa-3408-1dd1-22dc84144b43@kontron.de>
References: <20190801081524.22577-1-frieder.schrempf@kontron.de>
 <20190801084827.m42ci3amo37hmesi@pengutronix.de>
In-Reply-To: <20190801084827.m42ci3amo37hmesi@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <6902432E5480BF48B377D0BC2FB45B09@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 4533367A8D7.AE7BB
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
X-CRM114-CacheID: sfid-20190801_022843_004268_EA7CCCEF 
X-CRM114-Status: GOOD (  13.15  )
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

SGkgVXdlLA0KDQpPbiAwMS4wOC4xOSAxMDo0OCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6DQo+
IE9uIFRodSwgQXVnIDAxLCAyMDE5IGF0IDA4OjE4OjA1QU0gKzAwMDAsIFNjaHJlbXBmIEZyaWVk
ZXIgd3JvdGU6DQo+PiBGcm9tOiBGcmllZGVyIFNjaHJlbXBmIDxmcmllZGVyLnNjaHJlbXBmQGtv
bnRyb24uZGU+DQo+Pg0KPj4gSWYgQ09ORklHX0dQSU9MSUIgaXMgbm90IGVuYWJsZWQsIG1jdHJs
X2dwaW9faW5pdCgpIHdpbGwgcmV0dXJuDQo+PiAtRU5PU1lTIGFuZCBjYXVzZSB0aGUgcHJvYmlu
ZyBvZiB0aGUgaW14IFVBUlQgdG8gZmFpbC4gQXMgdGhlDQo+PiBHUElPcyBhcmUgb3B0aW9uYWws
IHdlIHNob3VsZCBjb250aW51ZSBwcm9iaW5nIGluIHRoaXMgY2FzZS4NCj4gDQo+IElzIHRoaXMg
cmVhbGx5IHN0aWxsIHRoZSBjYXNlPyBPbiB3aGljaCB2ZXJzaW9uIGRpZCB5b3UgaGl0IHRoaXMN
Cj4gcHJvYmxlbT8NCg0KWWVzLCBJIHRoaW5rIGl0IGlzLiBJIHVzZWQgdjUuMi41LCB0aGF0IGFs
cmVhZHkgaGFzIGQ5OTQ4MjY3M2Y5NS4NCg0KPiANCj4gSSB3b3VsZCBleHBlY3QgdGhhdCBpcyBn
b25lIHdpdGgNCj4gZDk5NDgyNjczZjk1MDgxN2IzMGNhZjNmY2RmYjMxMTc5YjA1MGNlMSBpZiBu
b3QgZWFybGllci4NCg0KSSB0aGluayB0aGlzIGlzIGEgZGlmZmVyZW50IHByb2JsZW0uIElmIENP
TkZJR19HUElPTElCIGlzIGRpc2FibGVkLCANCm1jdHJsX2dwaW9faW5pdCgpIHJldHVybnMgLUVO
T1NZUyB1bmNvbmRpdGlvbmFsbHkgaGVyZTogWzFdLiBUaGUgDQpleGlzdGluZyBwYXRjaCAoZDk5
NDgyNjczZjk1KSBzZWVtcyB0byBoYW5kbGUgdGhlIGNhc2Ugd2hlbiANCkNPTkZJR19HUElPTElC
IGlzIGVuYWJsZWQsIGJ1dCBubyBvciBub3QgYWxsIEdQSU9zIGFyZSBnaXZlbiBpbiB0aGUgZHRi
Lg0KDQpUaGUgc2gtc2NpLmMgZHJpdmVyIGhhcyBhIHNpbWlsYXIgY2hlY2sgdG8gc2tpcCB0aGlz
IGNhc2U6IFsyXS4NCg0KUmVnYXJkcywNCkZyaWVkZXINCg0KWzFdIA0KaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUv
ZHJpdmVycy90dHkvc2VyaWFsL3NlcmlhbF9tY3RybF9ncGlvLmgjbjEyMQ0KWzJdIA0KaHR0cHM6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXgu
Z2l0L3RyZWUvZHJpdmVycy90dHkvc2VyaWFsL3NoLXNjaS5jI24zMjkwCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
