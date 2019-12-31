Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2367612D748
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 10:16:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2GFyH2iNWHATfrcc8j9ThcYSxOVhcMJNwXDf/Asci8=; b=UCnX6/1q5Dl+SB
	3OtGvF7uxPFEsC/uH5D6AzFQ7BJ+FeZLgUYX31wHIjNyvB+7zCdv6wlAopDo+GnuBXfaoPV6Gmz0d
	rW+V44Li5OkayG0iprQBdD7/hqpCj8YQ/Ozq1Q0XNXYIW0YC2/8AK71QNZblIZHgIgu3qHdHeS4l2
	5xR1iFKqKo1MUtqTDJ0PS2vsS7Ihi+2gF7AUEf+R5+H3V8zw0QKH+MoUIDfaErJ+n4ZVdNqxrjZMN
	vAX2nSZYWXHnLxP3a+U8t3Q6zBSsuQ/hsDIZo1+v+dc9CZerkdGypATLy8TciatT/mQVcvIL/1Kwv
	bBReu1N7cha7w34bwDHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imDdi-0001xc-MY; Tue, 31 Dec 2019 09:16:34 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1imDdZ-0001wo-B1; Tue, 31 Dec 2019 09:16:27 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBV9G1Kv026279,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBV9G1Kv026279
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 31 Dec 2019 17:16:01 +0800
Received: from RTEXDAG02.realtek.com.tw (172.21.6.101) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Tue, 31 Dec 2019 17:16:01 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXDAG02.realtek.com.tw (172.21.6.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 31 Dec 2019 17:16:00 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Tue, 31 Dec 2019 17:16:00 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH 05/14] ARM: dts: rtd1195: Add CRT syscon node
Thread-Topic: [PATCH 05/14] ARM: dts: rtd1195: Add CRT syscon node
Thread-Index: AQHVqT1wU1zGfnse50605xj8lgt7lKfUIyxw
Date: Tue, 31 Dec 2019 09:16:00 +0000
Message-ID: <0c101eb62fe44bd3b45acc5302271ff3@realtek.com>
References: <20191202182205.14629-1-afaerber@suse.de>
 <20191202182205.14629-6-afaerber@suse.de>
In-Reply-To: <20191202182205.14629-6-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_011625_509884_48E62104 
X-CRM114-Status: GOOD (  11.92  )
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
ZmFlcmJlckBzdXNlLmRlPg0KPiAtLS0NCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRz
aSB8IDkgKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvcnRkMTE5NS5kdHNpDQo+IGluZGV4IGE3NGY1MzBkYzQzOS4uYWMzNzM2NmZmN2M0
IDEwMDY0NA0KPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kNCj4gKysrIGIv
YXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpDQo+IEBAIC0xMDAsNiArMTAwLDE1IEBADQo+
ICAJCQkjc2l6ZS1jZWxscyA9IDwxPjsNCj4gIAkJCXJhbmdlcyA9IDwweDAgMHgxODAwMDAwMCAw
eDcwMDAwPjsNCj4gDQo+ICsJCQljcnQ6IHN5c2NvbkAwIHsNCj4gKwkJCQljb21wYXRpYmxlID0g
InN5c2NvbiIsICJzaW1wbGUtbWZkIjsNCj4gKwkJCQlyZWcgPSA8MHgwIDB4MTAwMD47DQo+ICsJ
CQkJcmVnLWlvLXdpZHRoID0gPDQ+Ow0KPiArCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KPiAr
CQkJCSNzaXplLWNlbGxzID0gPDE+Ow0KPiArCQkJCXJhbmdlcyA9IDwweDAgMHgwIDB4MTAwMD47
DQo+ICsJCQl9Ow0KPiArDQo+ICAJCQlpc286IHN5c2NvbkA3MDAwIHsNCj4gIAkJCQljb21wYXRp
YmxlID0gInN5c2NvbiIsICJzaW1wbGUtbWZkIjsNCj4gIAkJCQlyZWcgPSA8MHg3MDAwIDB4MTAw
MD47DQo+IC0tDQo+IDIuMTYuNA0KPiANCj4gDQpBY2tlZC1ieTogSmFtZXMgVGFpIDxqYW1lcy50
YWlAcmVhbHRlay5jb20+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
