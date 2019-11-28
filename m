Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADF910C483
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 08:47:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ApJIyZ4/E6WCof2yO2mUppl0Y672Z2ei20/GHcc22DY=; b=TEL/7gsRZ5pSQZ
	SDtrAmA3R63RC2FdmdQ+f2ppzri71Pls/hiXhyoNOznpe0o6HXG43jnqRhhZwNWkDjNATWvjP9q3V
	vJzAPE9+OeCXPAQ3Gh9bnFWxaYL3rsqee5kFJqO4m1qMM23TSE3Lxea28r/mYTohhJgWSg2JoCX3n
	i8ABwcIdAFaVHRAn9gKR37CPxwsLCWvHKNxroDUyt8Z6Tsx9mhp7gAVv7p+sPXWTcXbLowmTQwr0M
	Cy6RybTLT4QdVH3XsH0pO0UEPBjefpNsr3LjiAI2TRbBtT4nHQrpW37/HuK7zNXGT66IdNftnY4bw
	hUr6qM3D2CpShEvfZySg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaEWD-00066r-Rx; Thu, 28 Nov 2019 07:47:17 +0000
Received: from mail-eopbgr80120.outbound.protection.outlook.com
 ([40.107.8.120] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaEW2-00065X-De
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 07:47:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CKvveR7dw3JMxOJdrf9Q2LMtt7cTu5MNUuQDiSP57caqDyosj8VPp46oNMdWfeuZhOdEobHhrdjP4vWGsicjJ8LskCocatZJdm5rYBFx9777o3cYTV/UVWPqcSCFD6BMWp01RDCWR1v0/FE7bgSVOIt0qpho4hSkywNItc7TMucQxw6KsD5AHyghA+i4IkRCVFa/2yzYD9L0+qPe0ixF4fIGUUbB1RttB7UL7FbZYz9P4yE8lYoMAxJkJHlq3NYtws37ClnkdzMx2/O0xJ7DcMgSPQrSQeRekCL/9iWPhtNxfR2UGVASW9KncV50xVh3SMCPJj0XlPJ1lNFhr3KQEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5qCcSxIsiJjFczeyfA//Ic6VsMCa0SWNvCdd4gWtCAI=;
 b=XsmM0TA8nmthrRgLUUMm5h0S030DEN07+2VRfeC2qnbCxkFZAXmTeu41Zsh72SHI1jqCBskBVZrv3qsOpXqpI/tOkW/T2eCjpyA4ro4nO/lHWe4h7/FPuLs3EEL6Rx+fX7rdK0RE8HLzol0y3UkDbgTuIfKazg63OqxnKbeY21psCxQ837sNNFqGYQjNjfGNbg+4IieB/jl2fx7R6kMLv53Im6mwgdpi/XYa1vSRskgSM0BBiOuaVPzYLCDZ13He1+lJsW6Vn10YzyiAPPJyxsi6wIa8pNsSThnJ2BQrLygVnpwyF3Nr3YPPqPwV2aNVKDMBqrUJJGNa32PutqYDYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5qCcSxIsiJjFczeyfA//Ic6VsMCa0SWNvCdd4gWtCAI=;
 b=IfUiICCu00wGgUA5DW/nhl04BTIhRy1I+AYsjUnNUv6gwsAmVqxpVsDmbmOZ4g9gq/mkPfSn5/q5OeBRIkis0AFgEdgNg+DAyqmkj93mdyOLac4Ch3M79wE1OUycOKjoTJYD7lQWJisFr+tk4ZifXs7w48CAMkCogfIFdc0M1DE=
Received: from AM0PR05MB5156.eurprd05.prod.outlook.com (20.178.20.19) by
 AM0PR05MB4339.eurprd05.prod.outlook.com (52.134.126.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Thu, 28 Nov 2019 07:47:01 +0000
Received: from AM0PR05MB5156.eurprd05.prod.outlook.com
 ([fe80::d9d5:8f93:482:2a21]) by AM0PR05MB5156.eurprd05.prod.outlook.com
 ([fe80::d9d5:8f93:482:2a21%2]) with mapi id 15.20.2495.014; Thu, 28 Nov 2019
 07:47:00 +0000
From: Sven Auhagen <sven.auhagen@voleatech.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: CP110 Comphy Issue
Thread-Topic: CP110 Comphy Issue
Thread-Index: AQHVpOkOsup6Gumbska7MJykRWmBvaee25AAgAFraQA=
Date: Thu, 28 Nov 2019 07:47:00 +0000
Message-ID: <E32E5A7F-7C9D-4A61-AD48-5CD61BF87A66@voleatech.de>
References: <4EC81A7A-C1D1-4DDD-BD09-88D46BC0D058@voleatech.de>
 <20191127120618.66c46b7a@xps13>
In-Reply-To: <20191127120618.66c46b7a@xps13>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sven.auhagen@voleatech.de; 
x-originating-ip: [37.24.174.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 418f467e-5a16-47c5-25a6-08d773d72740
x-ms-traffictypediagnostic: AM0PR05MB4339:
x-microsoft-antispam-prvs: <AM0PR05MB43391DCDA88936C56604B64DEF470@AM0PR05MB4339.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0235CBE7D0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(396003)(376002)(39830400003)(346002)(136003)(189003)(199004)(40764003)(102836004)(6436002)(305945005)(6306002)(81166006)(8676002)(81156014)(8936002)(14444005)(7116003)(7736002)(256004)(71200400001)(26005)(71190400001)(186003)(4326008)(76176011)(15974865002)(6916009)(2616005)(44832011)(86362001)(6506007)(6246003)(6512007)(2906002)(5660300002)(66066001)(33656002)(36756003)(66574012)(66476007)(446003)(76116006)(11346002)(66946007)(66556008)(66446008)(64756008)(229853002)(6116002)(3846002)(54906003)(316002)(99286004)(6486002)(14454004)(25786009)(508600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR05MB4339;
 H:AM0PR05MB5156.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: voleatech.de does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Eaa6sZ8dq/vEWjwW+ci0KoZJRqMycnytYy0j0OUYra/VtAwpe2LyOJDjq0sRK2Ihba3CmGt6rN9h7tf3mvYeOVNyp07u6m0W4hCfinzqyFmphysyAou+lfYzV4qBh+q6G/KjGrmAS7XpBKy274U7UOtyHCGh9cvDC9Ydsbxq46T7JiBGzP1fkSX+pehi7lIOnEhyksOvA0KT9fFYk2LWtlSdWbNeMB1JTWgCiNi/ngtPc2ELXMKMZfDaHQKnMljBR3bje7Og6xQrWjP8hbjum4T3nv4V/xSiDkc723s1aOuI+lhlCv+hFh1SMRQ12SxGxWOFn7cW/y5xkPKqKcvA+8ruyg0fwQ54+rURx67DEOTum6uxg9EdYHFiC5PVHsZmO61tK/nplFNo7ANdkoC2+EOuD8gj15o4diFE9NGWzwvahztXP3cJHUbT3HPo0UUq
x-ms-exchange-transport-forked: True
Content-ID: <63002D5B93337044A9FDE6C2E0C01142@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 418f467e-5a16-47c5-25a6-08d773d72740
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2019 07:47:00.7274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BJTEXRJ9YoECCrRr0w71NEUdePHB72lE8SwyuonEBNwj8CkuFRWIbbHfFb7PAl1GYFKkAjNGiCRJNCrhzIYOZDvQz10C87+TimAqdoMaaJo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4339
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_234706_668737_94998313 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Baruch Siach <baruch@tkos.co.il>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlxdcOobCwNCg0KSSBmb3VuZCB0aGUgcHJvYmxlbSwgaXQgd2FzIHRoZSBVU0IgbGluZSB0
aGF0IGlzIGFsc28gY29ubmVjdGVkIHRvIHRoZSBzYW1lIE0uMiBQQ0llIHdoaWNoIGNhdXNlZCB0
aGUgc3RhbGwuDQpJIHdhcyBhYmxlIHRvIGZpeCB0aGF0IHdpdGggYSBkZXZpY2UgdHJlZSBjaGFu
Z2UuDQoNClRoYW5rIHlvdSBmb3IgeW91ciBoZWxwLg0KDQpCZXN0DQpTdmVuDQoNCkZyb206IE1p
cXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+DQpPcmdhbmlzYXRpb246IEJv
b3RsaW4NCkRhdGU6IFdlZG5lc2RheSwgMjcuIE5vdmVtYmVyIDIwMTkgYXQgMTI6MDYgUE0NClRv
OiBTdmVuIEF1aGFnZW4gPHN2ZW4uYXVoYWdlbkB2b2xlYXRlY2guZGU+DQpDYzogQmFydWNoIFNp
YWNoIDxiYXJ1Y2hAdGtvcy5jby5pbD4sICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmciIDxsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc+DQpTdWJqZWN0OiBS
ZTogQ1AxMTAgQ29tcGh5IElzc3VlDQoNCkhpIFN2ZW4sDQoNClN2ZW4gQXVoYWdlbiA8bWFpbHRv
OnN2ZW4uYXVoYWdlbkB2b2xlYXRlY2guZGU+IHdyb3RlIG9uIFdlZCwgMjcgTm92IDIwMTkNCjA2
OjA4OjE2ICswMDAwOg0KDQpIaSBNaXF1w6hsLA0KSSBsb29rZWQgdGhyb3VnaCB0aGUgQVRGIGNv
ZGUgYW5kIGFzIGZhciBhcyBJIGNhbiB0ZWxsIHRoZSBwY2llIGNsb2NrIGRpcmVjdGlvbiBpcyBz
ZXQgYmFzZWQgb24gdGhlIHNhciByZWdpc3RlciBpbiBjcDExMF9wY2llX2Nsa19jZmcNCkkgYW0g
bm90IHN1cmUgaG93IHRoaXMgY2FuIGxlYWQgdG8gdGhlIHByb2JsZW0gb2YgdGhlIGNvbXBoeSBu
b3QgY29taW5nIHVwLg0KDQpDbG9ja3MgYXJlIG9mdGVuIHJlc3BvbnNpYmxlIG9mIHN0YWxscyB3
aGVuIGFjY2Vzc2luZyByZWdpc3RlcnMuDQoNCkkgZG9uJ3Qga25vdyB3aGF0IHlvdXIgcHJvYmxl
bSBpcywgSSBhbSBnaXZpbmcgeW91IHN1Z2dlc3Rpb25zLg0KDQpJIGNhbiBhbHNvIHNlZSB0aGF0
IHRoZSBQQ0llIHdvcmtzIGluIHVib290IGFuZCB0aGUgSW50ZWwgTklDIGlzIHJlY29nbml6ZWQg
anVzdCBmaW5lIHRoZXJlIHNvIHRoZSBpbnRpYWwgY29tcGh5IHNldHVwIG11c3QgYmUgd29ya2lu
Zy4NCg0KSXMgVS1Cb290IGRvaW5nIFNNQyBjYWxscyB0b28/IEkgc3VwcG9zZSBpdCBkb2VzIG5v
dC4NCg0KSSBjb3VsZCBub3QgZmluZCB0aGUgcmVzZXQgY29kZSwgY2FuIHlvdSBzZW5kIG1lIHRo
ZSBmaWxlIHdoZXJlIGl0IGlzPw0KDQpJIHRob3VnaHQgd2UgaGFkIHNvbWUgaW4gdGhlIGNvbXBo
eSBkcml2ZXIsIGFwcGFyZW50bHkgbm90Lg0KDQpJIGRvbid0IGhhdmUgbW9yZSBpbnB1dHMgc28g
ZmFyLiBJcyB5b3VyIGRlYnVnZ2luZyBnaXZpbmcgaW50ZXJlc3RpbmcNCmluZm9zPyBIYXZlIHlv
dSBjaGVja2VkIGluIC0+c2V0X21vZGUoKSBldmVyeXRoaW5nIGxvb2tzIGZpbmU/DQoNCg0KVGhh
bmtzLA0KTWlxdcOobA0KDQoNCg0KQmVzdGUgR3LDvMOfZS9CZXN0IHJlZ2FyZHMNCg0KU3ZlbiBB
dWhhZ2VuDQpEaXBsLiBNYXRoLiBvZWMuLCBNLlNjLg0KVm9sZWF0ZWNoIEdtYkgNCkhSQjogQiA3
NTQ2NDMNClVTVElEOiBERTMwMzY0MzE4MA0KR3JhdGh3b2hsc3RyLiA1DQo3Mjc2MiBSZXV0bGlu
Z2VuDQpUZWw6ICs0OSA3MTIxNTM5NTUwDQpGYXg6ICs0OSA3MTIxNTM5NTUxDQpFLU1haWw6IHN2
ZW4uYXVoYWdlbkB2b2xlYXRlY2guZGUNCnd3dy52b2xlYXRlY2guZGU8aHR0cHM6Ly93d3cudm9s
ZWF0ZWNoLmRlPg0KRGllc2UgSW5mb3JtYXRpb24gaXN0IGF1c3NjaGxpZcOfbGljaCBmw7xyIGRl
biBBZHJlc3NhdGVuIGJlc3RpbW10IHVuZCBrYW5uIHZlcnRyYXVsaWNoIG9kZXIgZ2VzZXR6bGlj
aCBnZXNjaMO8dHp0ZSBJbmZvcm1hdGlvbmVuIGVudGhhbHRlbi4gV2VubiBTaWUgbmljaHQgZGVy
IGJlc3RpbW11bmdzZ2Vtw6TDn2UgQWRyZXNzYXQgc2luZCwgdW50ZXJyaWNodGVuIFNpZSBiaXR0
ZSBkZW4gQWJzZW5kZXIgdW5kIHZlcm5pY2h0ZW4gU2llIGRpZXNlIE1haWwuIEFuZGVyZW4gYWxz
IGRlbSBiZXN0aW1tdW5nc2dlbcOkw59lbiBBZHJlc3NhdGVuIGlzdCBlcyB1bnRlcnNhZ3QsIGRp
ZXNlIEUtTWFpbCB6dSBsZXNlbiwgenUgc3BlaWNoZXJuLCB3ZWl0ZXJ6dWxlaXRlbiBvZGVyIGlo
cmVuIEluaGFsdCBhdWYgd2VsY2hlIFdlaXNlIGF1Y2ggaW1tZXIgenUgdmVyd2VuZGVuLiBGw7xy
IGRlbiBBZHJlc3NhdGVuIHNpbmQgZGllIEluZm9ybWF0aW9uZW4gaW4gZGllc2VyIE1haWwgbnVy
IHp1bSBwZXJzw7ZubGljaGVuIEdlYnJhdWNoLiBFaW5lIFdlaXRlcmxlaXR1bmcgZGFyZiBudXIg
bmFjaCBSw7xja3NwcmFjaGUgbWl0IGRlbSBBYnNlbmRlciBlcmZvbGdlbi4gV2lyIHZlcndlbmRl
biBha3R1ZWxsZSBWaXJlbnNjaHV0enByb2dyYW1tZS4gRsO8ciBTY2jDpGRlbiwgZGllIGRlbSBF
bXBmw6RuZ2VyIGdsZWljaHdvaGwgZHVyY2ggdm9uIHVucyB6dWdlc2FuZHRlIG1pdCBWaXJlbiBi
ZWZhbGxlbmUgRS1NYWlscyBlbnRzdGVoZW4sIHNjaGxpZcOfZW4gd2lyIGplZGUgSGFmdHVuZyBh
dXMuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
