Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA85727F32
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 16:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJM+DmNt5FnUbLKc/QHaYVRGnGLMJXs6W8ZyucPvUgg=; b=fH5SYYVSorOFoO
	7vdTLLdY0sdsaIa/ftGg2xO+w6XyHWM03lMgyDd9k2GYVXr3h0zA4SxuHzdwP1hR2hn5E2lKFzHsb
	u93fav82gP2j+ViT5SbxNv4sK+vBOKFaOXA3zUCF1kTy2VTQtiDlkpFUmp8ya5GZx/ZNc5nNBvETd
	15X4YbNqdCtqP8R+8m6bXqukvAbIolPU3nM4JsTfEyFsVvS7y/2jIdGO30c2QULbZqKm1xB4v0J6f
	o1QdhDz0iXoZM65ExoTcC82zso6R8C6Jc1rRHv6Gw8ioFW2oTOhuRQmj7p9g82Lh2mmRv78jWLpai
	ZSjhTB8XeeQTekMDQwkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hToRc-00030p-VH; Thu, 23 May 2019 14:11:44 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hToRV-0002x5-AD
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 14:11:39 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4NE5jjk005074; Thu, 23 May 2019 16:11:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=Bn0iz+tF/GtBv/wF0WfrXOWDGayct1EsCY0uvVuAAio=;
 b=foDBrFtMiEpQ4S191xrSp76m77Dycn3qTuxkYSsyrsxWzOjBws7kfFD2eGy7ZXm0JkF/
 8rES42SfBfNvk5gbWOdx0crWSpHgnsIi9EsXMiRpDrDy198KPXGZXSI2oM5Kl6j/gXOm
 kWHDQguFJF1JhQs4QAKcKDYU1JHuYJGeXHzbxwUeMK2m13mv/lWXUzDyg2GmzhGTvhwC
 lquiqMeJ+8R4cFk5rlQY+cSZv+qr1jt9H5zGBM3GBS9VeHgglBtvlzbe77RpdKQHcbME
 L9jCMT6j5SkwgeoHiRBF5soBrzvd6XlzZxoCaM0OoUuWwyhnNr8RAFuGKfsB36u7I5vw fA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2snrve1myv-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 23 May 2019 16:11:13 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 94D2638;
 Thu, 23 May 2019 14:11:12 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DAD212CA5;
 Thu, 23 May 2019 14:11:11 +0000 (GMT)
Received: from SFHDAG3NODE2.st.com (10.75.127.8) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 23 May
 2019 16:11:11 +0200
Received: from SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96]) by
 SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96%20]) with mapi id
 15.00.1347.000; Thu, 23 May 2019 16:11:11 +0200
From: Amelie DELAUNAY <amelie.delaunay@st.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] pinctrl: stmfx: Fix compile issue when CONFIG_OF_GPIO is
 not defined
Thread-Topic: [PATCH] pinctrl: stmfx: Fix compile issue when CONFIG_OF_GPIO is
 not defined
Thread-Index: AQHVDuDxK6HzwnJUFE6SYGi4rooWzqZ2hLKAgAAnAgCAAAlUgIAACtCAgADRIYCAARFPAA==
Date: Thu, 23 May 2019 14:11:11 +0000
Message-ID: <08ea97544018430caf53af36677902b7@SFHDAG3NODE2.st.com>
References: <1558338735-8444-1-git-send-email-amelie.delaunay@st.com>
 <20190522054833.GB4574@dell> <eb8425ec-989a-9701-7fee-61bd1d2b93c1@st.com>
 <20190522084133.GF4574@dell> <bc1b5f1d-23b0-141d-f58f-b54ac303fe20@st.com>
 <CACRpkdYmdpwEvCBrL6i1V+Zxd0OSpZmD8BJPSZu9jYNeJkoimQ@mail.gmail.com>
In-Reply-To: <CACRpkdYmdpwEvCBrL6i1V+Zxd0OSpZmD8BJPSZu9jYNeJkoimQ@mail.gmail.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
fcc: imap://frq92262@localhost/Sent
x-mozilla-draft-info: internal/draft; vcard=0; receipt=0; DSN=0; uuencode=0;
 attachmentreminder=0; deliveryformat=4
x-account-key: account1
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-identity-key: id1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <7D90F5DB4CC7194687CC2E9A6A3EEA8F@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-23_12:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_071137_644946_EBDA4862 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Randy Dunlap <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "kbuild-all@01.org" <kbuild-all@01.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8yMi8xOSAxMTo0OCBQTSwgTGludXMgV2FsbGVpaiB3cm90ZToNCj4gT24gV2VkLCBNYXkg
MjIsIDIwMTkgYXQgMTE6MjEgQU0gQW1lbGllIERFTEFVTkFZIDxhbWVsaWUuZGVsYXVuYXlAc3Qu
Y29tPiB3cm90ZToNCj4gDQo+PiAuLi9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1zdG1meC5jOjQw
OToyMDogZXJyb3I6DQo+PiDigJhwaW5jb25mX2dlbmVyaWNfZHRfbm9kZV90b19tYXBfcGlu4oCZ
IHVuZGVjbGFyZWQgaGVyZSAobm90IGluIGEgZnVuY3Rpb24pDQo+PiAgICAgLmR0X25vZGVfdG9f
bWFwID0gcGluY29uZl9nZW5lcmljX2R0X25vZGVfdG9fbWFwX3BpbiwNCj4+DQo+PiBPRl9HUElP
IGRlcGVuZHMgb24gT0YuDQo+Pg0KPj4gU28gZWl0aGVyDQo+PiAgICAgICBkZXBlbmRzIG9uIE9G
IHx8IChPRiAmJiBDT01QSUxFX1RFU1QpDQo+PiBvcg0KPj4gICAgICAgZGVwZW5kcyBvbiBPRiB8
fCAoT0ZfR1BJTyAmJiBDT01QSUxFX1RFU1QpDQo+Pg0KPj4gYW5kDQo+Pg0KPj4gICAgICAgc2Vs
ZWN0IE9GX0dQSU8NCj4gDQo+IEkgd291bGQgdXNlIGp1c3Q6DQo+IA0KPiBkZXBlbmRzIG9uIE9G
X0dQSU8NCj4gDQo+IEJlY2F1c2UgT0ZfR1BJTyBhbHJlYWR5IGRlcGVuZHMgb24gT0YsIGFuZA0K
PiBjb21waWxlIHRlc3RzIHdpbGwgbm90IHdvcmsgd2l0aG91dCBPRl9HUElPIHdoaWNoDQo+IHJl
cXVpcmUgT0Ygc28uLi4NCj4gDQo+IEJlc2lkZXMgaXQgaXMgd2hhdCBtb3N0IG90aGVyIEdQSU8g
ZHJpdmVycyBkby4NCj4gDQo+IFNvIGp1c3Qga2VlcCB0aGF0IG9uZSBsaW5lIGFuZCBkcm9wIHRo
ZSByZXN0Lg0KPiANCj4gWW91cnMsDQo+IExpbnVzIFdhbGxlaWoNCj4gDQoNCk9rIHNvIEkgY2Fu
IGdldCByaWQgb2YgQ09NUElMRV9URVNUID8NCglkZXBlbmRzIG9uIEkyQw0KCWRlcGVuZHMgb24g
T0ZfR1BJTw0KCXNlbGVjdCBHRU5FUklDX1BJTkNPTkYNCglzZWxlY3QgR1BJT0xJQl9JUlFDSElQ
DQoJc2VsZWN0IE1GRF9TVE1GWA0KDQpCZWNhdXNlIEkndmUgbm8gYXJjaCB0byBiYWxhbmNlIENP
TVBJTEVfVEVTVC4gT3IgbWF5YmUgc29tZXRoaW5nIGxpa2UgDQoJZGVwZW5kcyBvbiBPRl9HUElP
ICYmIChPRiB8fCBDT01QSUxFX1RFU1QpDQpldmVuIGlmIE9GX0dQSU8gJiYgT0YgaXMgcmVkdW5k
YW50ID8NCg0KUmVnYXJkcywNCkFtZWxpZQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
