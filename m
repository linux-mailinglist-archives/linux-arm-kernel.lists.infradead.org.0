Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A64412F3FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 06:07:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5Oy325YE2M3mfYO88n9yv05tRXR7Ez4n4V96u/i2hk=; b=nze2vK01AKl7tW
	2xcxFeprUYMweC3Rosu7JWwfHu4axIOWwXqS+awmBRs2elnC/EYVUNsWk3V74t6+En6isRxkH5fpZ
	MXJ+5rWVBF2X7GvjLCv/TsqkFLOe+2sw1L9k5x1aFm1auOs2Tunx/NoEFmQaPuBlLvIm/RZSUSoD1
	0dDTYu/q4KX4R6ZA43YwzwHOsWgHUU1YYriuQ4hN/K4nTxYE3KW6HuxUqtHlc0Q2SfJZ7NRY8pijf
	z9Ly3l7oSmk6aRsIBoxdlRHRyGtvhgPy7ubLIBMBhXWk800kD+GhmcDXfjgPBYRRcoFH+bo0zsVT7
	6p8MjUXWIYLYOIPEtpWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inFBJ-0007H3-MR; Fri, 03 Jan 2020 05:07:29 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1inFBC-0007Fi-PR; Fri, 03 Jan 2020 05:07:24 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID 00357Dx1010637,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS11.realtek.com.tw[172.21.6.12])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id 00357Dx1010637
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 3 Jan 2020 13:07:13 +0800
Received: from RTEXMB02.realtek.com.tw (172.21.6.95) by
 RTITCAS11.realtek.com.tw (172.21.6.12) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Fri, 3 Jan 2020 13:07:13 +0800
Received: from RTEXMB04.realtek.com.tw (172.21.6.97) by
 RTEXMB02.realtek.com.tw (172.21.6.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 3 Jan 2020 13:07:12 +0800
Received: from RTEXMB04.realtek.com.tw ([fe80::d9c5:a079:495e:b999]) by
 RTEXMB04.realtek.com.tw ([fe80::d9c5:a079:495e:b999%6]) with mapi id
 15.01.1779.005; Fri, 3 Jan 2020 13:07:12 +0800
From: =?utf-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>
To: James Tai <james.tai@realtek.com>, =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?=
 <afaerber@suse.de>, "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [RFC 02/11] soc: Add Realtek chip info driver for RTD1195 and
 RTD1295
Thread-Topic: [RFC 02/11] soc: Add Realtek chip info driver for RTD1195 and
 RTD1295
Thread-Index: AQHVkedcJ4CFLsLliUi6huLyOdRzNafXzdIQgADxX0A=
Date: Fri, 3 Jan 2020 05:07:12 +0000
Message-ID: <0cd79474f707499d8c5d58b4f3250a68@realtek.com>
References: <20191103013645.9856-1-afaerber@suse.de>
 <20191103013645.9856-3-afaerber@suse.de>
 <93eeece5be0640488096f20a9beb3d1d@realtek.com>
In-Reply-To: <93eeece5be0640488096f20a9beb3d1d@realtek.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.55]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_210722_957501_77F33A18 
X-CRM114-Status: GOOD (  10.03  )
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

SGkgQW5kcmVhcywNCg0KSSBoYXZlIHRlc3RlZCB0aGlzIHBhdGNoIGluIG15IGxvY2FsIHBsYXRm
b3JtLg0KQW5kIHRoaXMgcGF0Y2ggaXMgZmluZSBhbmQgaXQgY2FuIHdvcmsuDQoNCj4gDQo+IEFk
ZCBTdGFubGV5IENoYW5nIGZvciByZXZpZXcuDQo+IA0KPiA+IEFkZCBhIHNvYyBidXMgZHJpdmVy
IHRvIHByaW50IGNoaXAgbW9kZWwgYW5kIHJldmlzaW9uIGRldGFpbHMuDQo+ID4NCj4gPiBSZXZp
c2lvbnMgZnJvbSBkb3duc3RyZWFtIGRyaXZlcnMvc29jL3JlYWx0ZWsvcnRkezExOXgsMTI5eH0v
cnRrX2NoaXAuYy4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZh
ZXJiZXJAc3VzZS5kZT4NCj4gPiAtLS0NCj4gPiAgTmFtaW5nOiBXaGF0IHRvIGNhbGwgdGhlIGZh
bWlseSB2cy4gc29jX2lkPw0KPiA+DQo+ID4gIGRyaXZlcnMvc29jL0tjb25maWcgICAgICAgICAg
fCAgIDEgKw0KPiA+ICBkcml2ZXJzL3NvYy9NYWtlZmlsZSAgICAgICAgIHwgICAxICsNCj4gPiAg
ZHJpdmVycy9zb2MvcmVhbHRlay9LY29uZmlnICB8ICAxMyArKysrDQo+ID4gIGRyaXZlcnMvc29j
L3JlYWx0ZWsvTWFrZWZpbGUgfCAgIDIgKw0KPiA+ICBkcml2ZXJzL3NvYy9yZWFsdGVrL2NoaXAu
YyAgIHwgMTY0DQo+ID4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kw0KPiA+ICA1IGZpbGVzIGNoYW5nZWQsIDE4MSBpbnNlcnRpb25zKCspDQo+ID4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL3NvYy9yZWFsdGVrL0tjb25maWcgIGNyZWF0ZSBtb2RlIDEwMDY0
NA0KPiA+IGRyaXZlcnMvc29jL3JlYWx0ZWsvTWFrZWZpbGUgIGNyZWF0ZSBtb2RlIDEwMDY0NA0K
PiA+IGRyaXZlcnMvc29jL3JlYWx0ZWsvY2hpcC5jDQoNClRlc3RlZC1ieTogU3RhbmxleSBDaGFu
ZyA8c3RhbmxleV9jaGFuZ0ByZWFsdGVrLmNvbT4NClJldmlld2VkLWJ5OiBTdGFubGV5IENoYW5n
IDxzdGFubGV5X2NoYW5nQHJlYWx0ZWsuY29tPg0KDQpUaGFua3MsDQpTdGFubGV5DQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
