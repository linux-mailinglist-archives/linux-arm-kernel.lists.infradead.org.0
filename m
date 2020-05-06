Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C5E1C6FC6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KS2LvX/+zKQlIN4IOi2Sz8FH9UxeE8TJtYSq/UqY4Vk=; b=nnlFZBMs39X351
	u15fsfdllg7NUIC2Z5F/ADO2Y8gj1H+RVAsb83UMl8u/eV/p2wz+OpuftsVGSGbj5jbDrqsuefYQ1
	KpmNy7bI1UNVGSCWU12/HqBPHphbT3k5WhRrX6zP/GcIamV6MHsH3c+2Zna92Yo2fScQq2tnrvJJx
	JrJs3U3hFdqH9gNEcEmML6UD4Nnq3aQiCHDAuoCXdCS7UruimNSZLxAZp63uvqE5twkp8K78zXBy1
	i2vX0gfcMpzd232EsJO4uB0zUzjzW4E8mW/2iuvO0rU3YLz8i0fOrvFIpKBujdoRHUeVxH2bZVe6p
	dcetQiqhg9F/+mPlSXbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIiE-0008RR-6Q; Wed, 06 May 2020 11:59:42 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIi4-0008QW-UM
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 11:59:34 +0000
Received: from sntmail14r.snt-is.com (unknown [10.203.32.184])
 by skedge04.snt-world.com (Postfix) with ESMTP id 283B267A887;
 Wed,  6 May 2020 13:59:27 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail14r.snt-is.com
 (10.203.32.184) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Wed, 6 May 2020
 13:59:26 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.007; Wed, 6 May 2020 13:59:26 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [RFC PATCH 4/4] arm64: dts: imx8mm: Add GPU nodes for 2D and 3D
 core using Etnaviv
Thread-Topic: [RFC PATCH 4/4] arm64: dts: imx8mm: Add GPU nodes for 2D and 3D
 core using Etnaviv
Thread-Index: AQHWHu1XU8cnqZiR7kmt3VxL/7fb7aiWVM8AgASDlACAAAPOgA==
Date: Wed, 6 May 2020 11:59:26 +0000
Message-ID: <c9379cdb-cd53-804b-a214-bfee3022a859@kontron.de>
References: <20200430124602.14463-1-frieder.schrempf@kontron.de>
 <20200430124602.14463-5-frieder.schrempf@kontron.de>
 <CAHCN7xJ=srZxygtG6hW_+us=qH1heY-k=EosavYH9tDk-KG0Bw@mail.gmail.com>
 <0df68f7c-13d2-5bd6-e27a-4bf8534f88fb@kontron.de>
In-Reply-To: <0df68f7c-13d2-5bd6-e27a-4bf8534f88fb@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <44F5D1A06A190C449A968796CBDACFE2@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 283B267A887.AF18A
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: aford173@gmail.com, anson.huang@nxp.com,
 christian.gmeiner@gmail.com, daniel.baluta@nxp.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, festevam@gmail.com, jun.li@nxp.com,
 kernel@pengutronix.de, l.stach@pengutronix.de,
 leonard.crestez@nxp.com, linux+etnaviv@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, peng.fan@nxp.com,
 s.hauer@pengutronix.de, shawnguo@kernel.org, shengjiu.wang@nxp.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_045933_305437_F649BC83 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.69 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 "etnaviv@lists.freedesktop.org" <etnaviv@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio
 Estevam <festevam@gmail.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYuMDUuMjAgMTM6NDUsIEZyaWVkZXIgU2NocmVtcGYgd3JvdGU6DQo+IE9uIDAzLjA1LjIw
IDE2OjQ5LCBBZGFtIEZvcmQgd3JvdGU6DQo+PiBPbiBUaHUsIEFwciAzMCwgMjAyMCBhdCA3OjQ2
IEFNIFNjaHJlbXBmIEZyaWVkZXINCj4+IDxmcmllZGVyLnNjaHJlbXBmQGtvbnRyb24uZGU+IHdy
b3RlOg0KPj4+DQo+Pj4gRnJvbTogRnJpZWRlciBTY2hyZW1wZiA8ZnJpZWRlci5zY2hyZW1wZkBr
b250cm9uLmRlPg0KPj4+DQo+Pj4gQWNjb3JkaW5nIHRvIHRoZSBkb2N1bWVudHMsIHRoZSBpLk1Y
OE0tTWluaSBmZWF0dXJlcyBhIEdDMzIwIGFuZCBhDQo+Pj4gR0NOYW5vVWx0cmEgR1BVIGNvcmUu
IEV0bmF2aXYgZGV0ZWN0cyB0aGVtIGFzOg0KPj4+DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBldG5h
dml2LWdwdSAzODAwMDAwMC5ncHU6IG1vZGVsOiBHQzYwMCwgcmV2aXNpb246IDQ2NTMNCj4+PiDC
oMKgwqDCoMKgwqDCoMKgIGV0bmF2aXYtZ3B1IDM4MDA4MDAwLmdwdTogbW9kZWw6IEdDNTIwLCBy
ZXZpc2lvbjogNTM0MQ0KPj4+DQo+Pj4gVGhpcyBzZWVtcyB0byB3b3JrIGZpbmUgbW9yZSBvciBs
ZXNzIHdpdGhvdXQgYW55IGNoYW5nZXMgdG8gdGhlIEhXREIsDQo+Pj4gd2hpY2ggc3RpbGwgbWln
aHQgYmUgbmVlZGVkIGluIHRoZSBmdXR1cmUgdG8gY29ycmVjdCBzb21lIGZlYXR1cmVzLA0KPj4+
IGV0Yy4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IEZyaWVkZXIgU2NocmVtcGYgPGZyaWVkZXIu
c2NocmVtcGZAa29udHJvbi5kZT4NCj4+PiAtLS0NCj4+IFNpbmNlIG5vdCBldmVyeW9uZSB1c2Vz
IHRoZSAzRCBvciAyRCwgd291bGQgaXQgbWFrZSBzZW5zZSB0byBtYXJrIHRoZW0NCj4+IGFzIGRp
c2FibGVkIGJ5IGRlZmF1bHQgYW5kIGxldCBwZW9wbGUgd2hvIG5lZWQgdGhlIDNEIGFuZCAyRCBl
bmFibGUNCj4+IHRoZW0gYXQgdGhlaXIgcmVzcGVjdGl2ZSBib2FyZCBmaWxlcz8NCj4gDQo+IEkg
d291bGQgcmF0aGVyIGtlZXAgaXQgdGhlIHdheSBpdCBoYXMgYmVlbiBkb25lIGZvciBvdGhlciBT
b0NzLiBMb29raW5nIA0KPiBhdCB0aGUgaS5NWDYgZGV2aWNldHJlZXMsIHRoZXkgYWxsIHNlZW0g
dG8gaGF2ZSB0aGUgR1BVcyBlbmFibGVkIGJ5IA0KPiBkZWZhdWx0Lg0KDQpBaCwgSSBoYWQgbWlz
c2VkIEx1Y2FzIHJlcGx5LiBIZSBhbHJlYWR5IHByb3ZpZGVkIG11Y2ggYmV0dGVyIGFyZ3VtZW50
cyANCmZvciBrZWVwaW5nIHRoZSBHUFVzIGVuYWJsZWQgYnkgZGVmYXVsdC4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
