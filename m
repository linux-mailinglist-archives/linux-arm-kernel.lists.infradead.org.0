Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE10512D132
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:49:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zze5z7G1TIqZipW3TXgnM0gMN2W42kqeCVU04Gg5J4o=; b=R61QFlwoBiv8RO
	02HKhLJkSKErufzNpoQJYnx5moOZ15lEQ1jDuaKqII4EgsZbzrj3BdGiLbwzV2bL985ZNV3Oy0Vw/
	PLkXLUDwrN8k3Xxevyk8xjjhsk4sAW2NOjaQLk1U5ee3DEo2N/OddGw13ODJ6N5YcEAEoQudbgfPW
	XJglPZW9SfRGpVQrDGZT+uPtEhBIBlz4+43BifggcyOGjEvWTIEa/M7gG/RiEj5neZ98jmTFMsLw7
	nx1i5O1CFPvvBv9cVc7TWlZLbTEdeXcghro4PkOlf00PCh/TQ5IL06fuqaTiBwLp4gZrB6hEWr040
	mfCUnJEigjJLz/0ciUpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwMN-0002K2-Iz; Mon, 30 Dec 2019 14:49:31 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ilwGH-0004SG-OT; Mon, 30 Dec 2019 14:43:15 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBUEh505016963,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS12.realtek.com.tw[172.21.6.16])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBUEh505016963
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 30 Dec 2019 22:43:05 +0800
Received: from RTEXMB06.realtek.com.tw (172.21.6.99) by
 RTITCAS12.realtek.com.tw (172.21.6.16) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Mon, 30 Dec 2019 22:43:04 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB06.realtek.com.tw (172.21.6.99) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 30 Dec 2019 22:43:04 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Mon, 30 Dec 2019 22:43:04 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH 09/14] arm64: dts: realtek: rtd16xx: Add CRT syscon node
Thread-Topic: [PATCH 09/14] arm64: dts: realtek: rtd16xx: Add CRT syscon node
Thread-Index: AQHVqT1w+SSrqtXhnUG5EZL0WTOy8qfS7CZw
Date: Mon, 30 Dec 2019 14:43:04 +0000
Message-ID: <20e5025d02de484ab3f94a5773c2085c@realtek.com>
References: <20191202182205.14629-1-afaerber@suse.de>
 <20191202182205.14629-10-afaerber@suse.de>
In-Reply-To: <20191202182205.14629-10-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.128.25]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064313_944321_37733637 
X-CRM114-Status: GOOD (  10.59  )
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

PiBQcmVwYXJlIGEgQ1JUIHN5c2NvbiBtZmQgbm9kZS4NCj4gDQo+IENjOiBKYW1lcyBUYWkgPGph
bWVzLnRhaUByZWFsdGVrLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxh
ZmFlcmJlckBzdXNlLmRlPg0KPiAtLS0NCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9y
dGQxNnh4LmR0c2kgfCA5ICsrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9u
cygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQx
Nnh4LmR0c2kNCj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTZ4eC5kdHNpDQo+
IGluZGV4IDhmOGYyYjMyOGNkMS4uNzc2ZWZjMTBiYWIyIDEwMDY0NA0KPiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTZ4eC5kdHNpDQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcmVhbHRlay9ydGQxNnh4LmR0c2kNCj4gQEAgLTExOCw2ICsxMTgsMTUgQEANCj4gIAkJ
CSNzaXplLWNlbGxzID0gPDE+Ow0KPiAgCQkJcmFuZ2VzID0gPDB4MCAweDk4MDAwMDAwIDB4MjAw
MDAwPjsNCj4gDQo+ICsJCQljcnQ6IHN5c2NvbkAwIHsNCj4gKwkJCQljb21wYXRpYmxlID0gInN5
c2NvbiIsICJzaW1wbGUtbWZkIjsNCj4gKwkJCQlyZWcgPSA8MHgwIDB4MTAwMD47DQo+ICsJCQkJ
cmVnLWlvLXdpZHRoID0gPDQ+Ow0KPiArCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KPiArCQkJ
CSNzaXplLWNlbGxzID0gPDE+Ow0KPiArCQkJCXJhbmdlcyA9IDwweDAgMHgwIDB4MTAwMD47DQo+
ICsJCQl9Ow0KPiArDQo+ICAJCQlpc286IHN5c2NvbkA3MDAwIHsNCj4gIAkJCQljb21wYXRpYmxl
ID0gInN5c2NvbiIsICJzaW1wbGUtbWZkIjsNCj4gIAkJCQlyZWcgPSA8MHg3MDAwIDB4MTAwMD47
DQo+IC0tDQo+IDIuMTYuNA0KPiANCj4gDQoNCkFja2VkLWJ5OiBKYW1lcyBUYWkgPGphbWVzLnRh
aUByZWFsdGVrLmNvbT4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
