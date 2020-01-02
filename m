Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F4512E748
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 15:36:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zV4fmb05jwSJZM9F6S8AaXFSXIqzQkJ+9DOg9HfeqHU=; b=oe9SeQvrtXirZd
	ire7eWdc8Feuk/ylyam3vDG39rR9DBaZe140CDtBgomye5IF9Er8BWZHf6yVet4y7Aamcn0Gt+bAW
	j4DNaqmMKdKjUrtat3wcIkC+EUmu9/ZqXIn5JLaJYrpj2dbuhCR5Axi3M/381RG6XLBl/zbU1kjMZ
	jNSOJcJFhOmVSJeof/uYVGxpCukmw9grHsLG3bZGAujVwyxpJ+nN41E+vZsIm+DUV5SMJB4Lsdfe3
	4VuPiLfrSBHuudBA1LlsA0SPbU842JFTejcR9FW1OIKeiGUsukor0wPOTqzYWoKBjwgdpHl09EYG4
	WMCcMcj8iaDAUCE5K4CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in1Zx-0004vk-DU; Thu, 02 Jan 2020 14:36:01 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1in1Zq-0004vD-Pa; Thu, 02 Jan 2020 14:35:56 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID 002EZqPs015545,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS11.realtek.com.tw[172.21.6.12])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id 002EZqPs015545
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 2 Jan 2020 22:35:53 +0800
Received: from RTEXMB06.realtek.com.tw (172.21.6.99) by
 RTITCAS11.realtek.com.tw (172.21.6.12) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Thu, 2 Jan 2020 22:35:52 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB06.realtek.com.tw (172.21.6.99) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Thu, 2 Jan 2020 22:35:52 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Thu, 2 Jan 2020 22:35:52 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [RFC 06/11] soc: realtek: chip: Detect RTD1296
Thread-Topic: [RFC 06/11] soc: realtek: chip: Detect RTD1296
Thread-Index: AQHVked+8ysSEPXOXEWoR+Z6QJyNe6fXz/Og
Date: Thu, 2 Jan 2020 14:35:52 +0000
Message-ID: <e23f24e7c018440bbf72317fbcc1b22f@realtek.com>
References: <20191103013645.9856-1-afaerber@suse.de>
 <20191103013645.9856-7-afaerber@suse.de>
In-Reply-To: <20191103013645.9856-7-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.143.250]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_063554_960747_EC4CFF1A 
X-CRM114-Status: GOOD (  11.84  )
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBEZXRlY3Rpb24gbG9naWMgZnJvbSBkb3duc3RyZWFtIGRyaXZlcnMvc29jL3JlYWx0ZWsvcnRk
MTI5eC9ydGtfY2hpcC5jLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxh
ZmFlcmJlckBzdXNlLmRlPg0KPiAtLS0NCj4gIGRyaXZlcnMvc29jL3JlYWx0ZWsvY2hpcC5jIHwg
MTggKysrKysrKysrKysrKysrKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL3JlYWx0ZWsv
Y2hpcC5jIGIvZHJpdmVycy9zb2MvcmVhbHRlay9jaGlwLmMgaW5kZXgNCj4gOWQxMzQyMmU5OTM2
Li5iYTY1M2MwOTc2NDQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvc29jL3JlYWx0ZWsvY2hpcC5j
DQo+ICsrKyBiL2RyaXZlcnMvc29jL3JlYWx0ZWsvY2hpcC5jDQo+IEBAIC01MCw5ICs1MCwyNSBA
QCBzdGF0aWMgY29uc3QgY2hhciAqZGVmYXVsdF9uYW1lKHN0cnVjdCBkZXZpY2UgKmRldiwNCj4g
Y29uc3Qgc3RydWN0IHJ0ZF9zb2MgKnMpDQo+ICAJcmV0dXJuIHMtPmZhbWlseTsNCj4gIH0NCj4g
DQo+ICtzdGF0aWMgY29uc3QgY2hhciAqcnRkMTI5NV9uYW1lKHN0cnVjdCBkZXZpY2UgKmRldiwg
Y29uc3Qgc3RydWN0DQo+ICtydGRfc29jICpzKSB7DQo+ICsJdm9pZCBfX2lvbWVtICpiYXNlOw0K
PiArDQo+ICsJYmFzZSA9IG9mX2lvbWFwKGRldi0+b2Zfbm9kZSwgMSk7DQo+ICsJaWYgKGJhc2Up
IHsNCj4gKwkJdTMyIGNoaXBpbmZvMSA9IHJlYWRsX3JlbGF4ZWQoYmFzZSk7DQo+ICsJCWlvdW5t
YXAoYmFzZSk7DQo+ICsJCWlmIChjaGlwaW5mbzEgJiBCSVQoMTEpKSB7DQo+ICsJCQlyZXR1cm4g
IlJURDEyOTYiOw0KPiArCQl9DQo+ICsJfQ0KPiArDQo+ICsJcmV0dXJuICJSVEQxMjk1IjsNCj4g
K30NCj4gKw0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBydGRfc29jIHJ0ZF9zb2NfZmFtaWxpZXNb
XSA9IHsNCj4gIAl7IDB4MDAwMDYzMjksICJSVEQxMTk1IiwgZGVmYXVsdF9uYW1lLCBydGQxMTk1
X3JldmlzaW9ucywgIlBob2VuaXgiIH0sDQo+IC0JeyAweDAwMDA2NDIxLCAiUlREMTI5NSIsIGRl
ZmF1bHRfbmFtZSwgcnRkMTI5NV9yZXZpc2lvbnMsICJLeWxpbiIgfSwNCj4gKwl7IDB4MDAwMDY0
MjEsICJSVEQxMjk1IiwgcnRkMTI5NV9uYW1lLCBydGQxMjk1X3JldmlzaW9ucywgIkt5bGluIiB9
LA0KPiAgfTsNCj4gDQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHJ0ZF9zb2MgKnJ0ZF9zb2NfYnlf
Y2hpcF9pZCh1MzIgY2hpcF9pZCkNCj4gLS0NCj4gMi4xNi40DQo+IA0KQWNrZWQtYnk6IEphbWVz
IFRhaSA8amFtZXMudGFpQHJlYWx0ZWsuY29tPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
