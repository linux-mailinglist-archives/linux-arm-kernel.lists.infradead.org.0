Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA3112D775
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 10:31:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSzRUGwcIMyLVQmyCRz7st5pDB5G5IMlNTAp0f5hglA=; b=SQwkV+DCTqoJl+
	dY6arx7kRMNOdcOUS5CLYCL9+zb4xLyc+zi2AY6TJXltqpEuAZp9eVYoMty+lsYQ0PlVme1DRT8/0
	nI+u4jtXVdX2t9gIfCm86yeCkeqeR68KzOGVAw4tP4JBQDP6Ji8Akq7B6RFLtXhsaRSKnuHwWnIdm
	CCiMo4GNkkD1kfuXrysyfnJjsQNDQQNE+4QN/bNrPpg+TTtJG4svc/6SjA7VwZZaLH/2iMgF5XUFX
	3qLdzNIoGkzRcSM8UXKsb1M9UPEiQ+FXDCfpb9g7NvavkdB64ZhyROFdRvZ5wmvvb0nfZ1lvb2de7
	WIOv8uhdPYKfTACzeRdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imDre-000050-1y; Tue, 31 Dec 2019 09:30:58 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1imDrU-0008W3-6z; Tue, 31 Dec 2019 09:30:49 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBV9UUbh030702,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS12.realtek.com.tw[172.21.6.16])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBV9UUbh030702
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 31 Dec 2019 17:30:31 +0800
Received: from RTEXMB04.realtek.com.tw (172.21.6.97) by
 RTITCAS12.realtek.com.tw (172.21.6.16) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Tue, 31 Dec 2019 17:30:30 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB04.realtek.com.tw (172.21.6.97) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 31 Dec 2019 17:30:30 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Tue, 31 Dec 2019 17:30:30 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH 10/14] ARM: dts: rtd1195: Add SB2 and SCPU Wrapper syscon
 nodes
Thread-Topic: [PATCH 10/14] ARM: dts: rtd1195: Add SB2 and SCPU Wrapper syscon
 nodes
Thread-Index: AQHVqT1w3e0DCQM4MUy3rWx8/bISHqfUJzhw
Date: Tue, 31 Dec 2019 09:30:30 +0000
Message-ID: <0f3c6ae55b524367913a68fe3f7faa47@realtek.com>
References: <20191202182205.14629-1-afaerber@suse.de>
 <20191202182205.14629-11-afaerber@suse.de>
In-Reply-To: <20191202182205.14629-11-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_013048_383114_C23A53A8 
X-CRM114-Status: GOOD (  12.44  )
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

PiBBZGQgc3lzY29uIG1mZCBub2RlcyBmb3IgU0IyIGFuZCBTQ1BVIFdyYXBwZXIgdG8gUlREMTE5
NSBEVC4NCj4gDQo+IENjOiBKYW1lcyBUYWkgPGphbWVzLnRhaUByZWFsdGVrLmNvbT4NCj4gU2ln
bmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPg0KPiAtLS0NCj4g
IGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaSB8IDE4ICsrKysrKysrKysrKysrKysrKw0K
PiAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1
LmR0c2kNCj4gaW5kZXggMDlhY2I5OTA4M2MxLi4yMTg5NzIxMGQ5ZDAgMTAwNjQ0DQo+IC0tLSBh
L2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaQ0KPiArKysgYi9hcmNoL2FybS9ib290L2R0
cy9ydGQxMTk1LmR0c2kNCj4gQEAgLTExOSw2ICsxMTksMTUgQEANCj4gIAkJCQlyYW5nZXMgPSA8
MHgwIDB4NzAwMCAweDEwMDA+Ow0KPiAgCQkJfTsNCj4gDQo+ICsJCQlzYjI6IHN5c2NvbkAxYTAw
MCB7DQo+ICsJCQkJY29tcGF0aWJsZSA9ICJzeXNjb24iLCAic2ltcGxlLW1mZCI7DQo+ICsJCQkJ
cmVnID0gPDB4MWEwMDAgMHgxMDAwPjsNCj4gKwkJCQlyZWctaW8td2lkdGggPSA8ND47DQo+ICsJ
CQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47DQo+ICsJCQkJI3NpemUtY2VsbHMgPSA8MT47DQo+ICsJ
CQkJcmFuZ2VzID0gPDB4MCAweDFhMDAwIDB4MTAwMD47DQo+ICsJCQl9Ow0KPiArDQo+ICAJCQlt
aXNjOiBzeXNjb25AMWIwMDAgew0KPiAgCQkJCWNvbXBhdGlibGUgPSAic3lzY29uIiwgInNpbXBs
ZS1tZmQiOw0KPiAgCQkJCXJlZyA9IDwweDFiMDAwIDB4MTAwMD47DQo+IEBAIC0xMjcsNiArMTM2
LDE1IEBADQo+ICAJCQkJI3NpemUtY2VsbHMgPSA8MT47DQo+ICAJCQkJcmFuZ2VzID0gPDB4MCAw
eDFiMDAwIDB4MTAwMD47DQo+ICAJCQl9Ow0KPiArDQo+ICsJCQlzY3B1X3dyYXBwZXI6IHN5c2Nv
bkAxZDAwMCB7DQo+ICsJCQkJY29tcGF0aWJsZSA9ICJzeXNjb24iLCAic2ltcGxlLW1mZCI7DQo+
ICsJCQkJcmVnID0gPDB4MWQwMDAgMHgxMDAwPjsNCj4gKwkJCQlyZWctaW8td2lkdGggPSA8ND47
DQo+ICsJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47DQo+ICsJCQkJI3NpemUtY2VsbHMgPSA8MT47
DQo+ICsJCQkJcmFuZ2VzID0gPDB4MCAweDFkMDAwIDB4MTAwMD47DQo+ICsJCQl9Ow0KPiAgCQl9
Ow0KPiANCj4gIAkJZ2ljOiBpbnRlcnJ1cHQtY29udHJvbGxlckBmZjAxMTAwMCB7DQo+IC0tDQo+
IDIuMTYuNA0KPiANCj4gDQpBY2tlZC1ieTogSmFtZXMgVGFpIDxqYW1lcy50YWlAcmVhbHRlay5j
b20+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
