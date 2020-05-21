Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FAC1DC56D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 05:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrSkCmyZZiMtbw3CfubxhaBslAeood9mDwjXDRzSR1k=; b=lvDqmdZOSy8opQ
	owUZY9u+tOcQ6IdZPWu5YuXOqxc5PLV5kBZeBhE6C96av5QVOKJHtYrNP/3YP/3lcYikRAbSht5vv
	XuA0rSX70Rg1o/qyTRJhAcZOPRrDx+kbUYOFUxjSVXoteeS5qzhL6l/8G+f3LTizhmMpYYjDPz5st
	zxrzLUx/eAmuzZ88+BZXahqiTMHLCH3V55DPjxI21/2PJEp5XvHkO8BEELzaLkU4OBjv3a3fBOuwi
	QY5pd1ilrovNQnUUaTHw6Fy2pzSUxKycRvo0pIJUqEcj+QyGuK98QhkwCXPyE6XFjDI7Vfhh6j7qO
	Gn4Pfxm7EzDtz87T/5WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbbSY-00086Y-6L; Thu, 21 May 2020 03:01:26 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbbSP-00085H-OO; Thu, 21 May 2020 03:01:20 +0000
Received: from dggemi406-hub.china.huawei.com (unknown [172.30.72.55])
 by Forcepoint Email with ESMTP id 7E246397595705ECA5FA;
 Thu, 21 May 2020 11:01:04 +0800 (CST)
Received: from DGGEMI525-MBS.china.huawei.com ([169.254.6.191]) by
 dggemi406-hub.china.huawei.com ([10.3.17.144]) with mapi id 14.03.0487.000;
 Thu, 21 May 2020 11:00:57 +0800
From: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
To: Alexandru Elisei <alexandru.elisei@arm.com>, Mark Rutland
 <mark.rutland@arm.com>, Lecopzer Chen <lecopzer@gmail.com>
Subject: RE: [PATCH 0/3] arm64: perf: Add support for Perf NMI interrupts
Thread-Topic: [PATCH 0/3] arm64: perf: Add support for Perf NMI interrupts
Thread-Index: AQHWK4CVzuSk3r9OTUuU9MOLmvQA7qis0jIAgAALFQCAAEh6AIAACRWAgAMXfYCAAZjBIA==
Date: Thu, 21 May 2020 03:00:57 +0000
Message-ID: <B926444035E5E2439431908E3842AFD24B2728@DGGEMI525-MBS.china.huawei.com>
References: <20200516124857.75004-1-lecopzer@gmail.com>
 <CAFA6WYNwp+_ENiS8QDao5+RXyt5ofJZyq6c5CKG_d0CNEmBNYg@mail.gmail.com>
 <CANr2M19unLW8n0P2DiOYEZ=GZcaD-L2ygPht_5HNtNZ6e4h6xQ@mail.gmail.com>
 <20200518104524.GA1224@C02TD0UTHF1T.local>
 <a9002b5e-aec5-b6e0-7174-87b93351d60c@arm.com>
 <8a1022c0-da2b-c83d-81cd-44b11149496b@arm.com>
In-Reply-To: <8a1022c0-da2b-c83d-81cd-44b11149496b@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.200.188]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_200118_129847_1CF49CB1 
X-CRM114-Status: GOOD (  28.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Sumit Garg <sumit.garg@linaro.org>,
 Jian-Lin Chen <lecopzer.chen@mediatek.com>, Will Deacon <will@kernel.org>,
 "alexander.shishkin@linux.intel.com" <alexander.shishkin@linux.intel.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "yj.chiang@mediatek.com" <yj.chiang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "acme@kernel.org" <acme@kernel.org>, Linuxarm <linuxarm@huawei.com>, Peter
 Zijlstra <peterz@infradead.org>, "mingo@redhat.com" <mingo@redhat.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>,
 "jolsa@redhat.com" <jolsa@redhat.com>,
 "julien.thierry.kdev@gmail.com" <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogbGludXgtYXJtLWtlcm5l
bCBbbWFpbHRvOmxpbnV4LWFybS1rZXJuZWwtYm91bmNlc0BsaXN0cy5pbmZyYWRlYWQub3JnXQ0K
PiBPbiBCZWhhbGYgT2YgQWxleGFuZHJ1IEVsaXNlaQ0KPiBTZW50OiBXZWRuZXNkYXksIE1heSAy
MCwgMjAyMCAxMDozMSBQTT4gDQo+IEhpLA0KPiANCj4gT24gNS8xOC8yMCAxMjoxNyBQTSwgQWxl
eGFuZHJ1IEVsaXNlaSB3cm90ZToNCj4gPiBIaSwNCj4gPg0KPiA+IE9uIDUvMTgvMjAgMTE6NDUg
QU0sIE1hcmsgUnV0bGFuZCB3cm90ZToNCj4gPj4gSGkgYWxsLA0KPiA+Pg0KPiA+PiBPbiBNb24s
IE1heSAxOCwgMjAyMCBhdCAwMjoyNjowMFBNICswODAwLCBMZWNvcHplciBDaGVuIHdyb3RlOg0K
PiA+Pj4gSEkgU3VtaXQsDQo+ID4+Pg0KPiA+Pj4gVGhhbmtzIGZvciB5b3VyIGluZm9ybWF0aW9u
Lg0KPiA+Pj4NCj4gPj4+IEkndmUgYWxyZWFkeSBpbXBsZW1lbnRlZCBJUEkgKHNhbWUgYXMgeW91
IGRpZCBbMV0sIGxpdHRsZSBkaWZmZXJlbmNlDQo+ID4+PiBpbiBkZXRhaWwpLCBoYXJkbG9ja3Vw
IGRldGVjdG9yIGFuZCBwZXJmIGluIGxhc3QgeWVhcigyMDE5KSBmb3INCj4gPj4+IGRlYnVnZ2Fi
aWxpdHkuDQo+ID4+PiBBbmQgbm93IHdlIHRlbmQgdG8gdXBzdHJlYW0gdG8gcmVkdWNlIGtlcm5l
bCBtYWludGFpbmluZyBlZmZvcnQuDQo+ID4+PiBJJ20gZ2xhZCBpZiBzb21lb25lIGluIEFSTSBj
YW4gZG8gdGhpcyB3b3JrIDopDQo+ID4+Pg0KPiA+Pj4gSGkgSnVsaWVuLA0KPiA+Pj4NCj4gPj4+
IERvZXMgYW55IEFybSBtYWludGFpbmVycyBjYW4gcHJvY2VlZCB0aGlzIGFjdGlvbj8NCj4gPj4g
QWxleGFuZHJ1IChDYydkKSBoYXMgYmVlbiByZWJhc2luZyBhbmQgcmV3b3JraW5nIEp1bGllbidz
IHBhdGNoZXMsDQo+ID4+IHdoaWNoIGlzIG15IHByZWZlcnJlZCBhcHByb2FjaC4NCj4gPj4NCj4g
Pj4gSSB1bmRlcnN0YW5kIHRoYXQncyBub3QgcXVpdGUgcmVhZHkgZm9yIHBvc3Rpbmcgc2luY2Ug
aGUncw0KPiA+PiBpbnZlc3RpZ2F0aW5nIHNvbWUgb2YgdGhlIG5hc3RpZXIgc3VidGxldGllcyAo
ZS5nLiBtdXR1YWwgZXhjbHVzaW9uDQo+ID4+IHdpdGggdGhlIE5NSSksIGJ1dCBtYXliZSB3ZSBj
YW4gcHV0IHRoZSB3b3JrLWluLXByb2dyZXNzIHBhdGNoZXMNCj4gPj4gc29tZXdoZXJlIGluIHRo
ZSBtZWFuIHRpbWUuDQo+ID4+DQo+ID4+IEFsZXhhbmRydSwgZG8geW91IGhhdmUgYW4gaWRlYSBv
ZiB3aGF0IG5lZWRzIHRvIGJlIGRvbmUsIGFuZC9vciB3aGVuDQo+ID4+IHlvdSBleHBlY3QgeW91
IGNvdWxkIHBvc3QgdGhhdD8NCj4gPiBJJ20gY3VycmVudGx5IHdvcmtpbmcgb24gcmViYXNpbmcg
dGhlIHBhdGNoZXMgb24gdG9wIG9mIDUuNy1yYzUsIHdoZW4NCj4gPiBJIGhhdmUgc29tZXRoaW5n
IHVzYWJsZSBJJ2xsIHBvc3QgYSBsaW5rIChzaG91bGQgYmUgYSBjb3VwbGUgb2YgZGF5cykuDQo+
ID4gQWZ0ZXIgdGhhdCBJIHdpbGwgYWRkcmVzcyB0aGUgcmV2aWV3IGNvbW1lbnRzLCBhbmQgSSBw
bGFuIHRvIGRvIGENCj4gPiB0aG9yb3VnaCB0ZXN0aW5nIGJlY2F1c2UgSSdtIG5vdCAxMDAlIGNv
bmZpZGVudCB0aGF0IHNvbWUgb2YgdGhlDQo+ID4gYXNzdW1wdGlvbnMgYXJvdW5kIHRoZSBsb2Nr
cyB0aGF0IHdlcmUgcmVtb3ZlZCBhcmUgY29ycmVjdC4gTXkgZ3Vlc3MgaXMNCj4gdGhpcyB3aWxs
IHRha2UgYSBmZXcgd2Vla3MuDQo+IA0KPiBQdXNoZWQgYSBXSVAgYnJhbmNoIG9uIGxpbnV4LWFy
bS5vcmcgWzFdOg0KPiANCj4gZ2l0IGNsb25lIC1iIFdJUC1wbXUtbm1pIGdpdDovL2xpbnV4LWFy
bS5vcmcvbGludXgtYWUNCj4gDQo+IFByYWN0aWNhbGx5IHVudGVzdGVkLCBJIG9ubHkgZGlkIHBl
cmYgcmVjb3JkIG9uIGEgZGVmY29uZmlnIGtlcm5lbCBydW5uaW5nIG9uIHRoZQ0KPiBtb2RlbC4N
Cj4gDQo+IFsxXQ0KPiBodHRwOi8vd3d3LmxpbnV4LWFybS5vcmcvZ2l0P3A9bGludXgtYWUuZ2l0
O2E9c2hvcnRsb2c7aD1yZWZzL2hlYWRzL1dJUC1wbQ0KPiB1LW5taQ0KDQpGb3J0dW5hdGVseSwg
aXQgZG9lcyB3b3JrLiBJIHVzZWQgdGhpcyB0cmVlIHRvIHBlcmYgYW5ub3RhdGUgYXJtX3NtbXVf
Y21kcV9pc3N1ZV9jbWRsaXN0KCkgd2hpY2gNCmlzIGNvbXBsZXRlbHkgZGlzYWJsaW5nIElSUS4g
THVja2lseSwgaXQgcmVwb3J0cyBjb3JyZWN0IGRhdGEuIEJlZm9yZSB0aGF0LCBpdCByZXBvcnRl
ZCBhbGwgdGltZSB3YXMgc3BlbnQgYnkNCnRoZSBjb2RlIHdoaWNoIGVuYWJsZWQgSVJRIC4NCg0K
DQpCYXJyeQ0KDQo+IA0KPiBUaGFua3MsDQo+IEFsZXgNCj4gPg0KPiA+IFRoYW5rcywNCj4gPiBB
bGV4DQo+ID4+IFRoYW5rcywNCj4gPj4gTWFyay4NCj4gPj4NCj4gPj4+IFRoaXMgaXMgcmVhbGx5
IHVzZWZ1bCBpbiBkZWJ1Z2dpbmcuDQo+ID4+PiBUaGFuayB5b3UhIQ0KPiA+Pj4NCj4gPj4+DQo+
ID4+Pg0KPiA+Pj4gWzFdIGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDIwLzQvMjQvMzI4DQo+ID4+
Pg0KPiA+Pj4NCj4gPj4+IExlY29wemVyDQo+ID4+Pg0KPiA+Pj4gU3VtaXQgR2FyZyA8c3VtaXQu
Z2FyZ0BsaW5hcm8ub3JnPiDmlrwgMjAyMOW5tDXmnIgxOOaXpSDpgLHkuIAg5LiL5Y2IDQo+IDE6
NDblr6vpgZPvvJoNCj4gPj4+PiArIEp1bGllbg0KPiA+Pj4+DQo+ID4+Pj4gSGkgTGVjb3B6ZXIs
DQo+ID4+Pj4NCj4gPj4+PiBPbiBTYXQsIDE2IE1heSAyMDIwIGF0IDE4OjIwLCBMZWNvcHplciBD
aGVuIDxsZWNvcHplckBnbWFpbC5jb20+DQo+IHdyb3RlOg0KPiA+Pj4+PiBUaGVzZSBzZXJpZXMg
aW1wbGVtZW50IFBlcmYgTk1JIGZ1bnh0aW9uYWxpdHkgYW5kIGRlcGVuZHMgb24NCj4gPj4+Pj4g
UHNldWRvIE5NSSBbMV0gd2hpY2ggaGFzIGJlZW4gdXBzdHJlYW1lZC4NCj4gPj4+Pj4NCj4gPj4+
Pj4gSW4gYXJtNjQgd2l0aCBHSUN2MywgUHNldWRvIE5NSSB3YXMgaW1wbGVtZW50ZWQgZm9yIE5N
SS1saWtlDQo+IGludGVycnV0cy4NCj4gPj4+Pj4gVGhhdCBjYW4gYmUgZXh0ZW5kZWQgdG8gUGVy
ZiBOTUkgd2hpY2ggaXMgdGhlIHByZXJlcXVpc2l0ZSBmb3INCj4gPj4+Pj4gaGFyZC1sb2NrdXAg
ZGV0ZWN0b3Igd2hpY2ggaGFkIGFscmVhZHkgYSBzdGFuZGFyZCBpbnRlcmZhY2UgaW5zaWRlDQo+
IExpbnV4Lg0KPiA+Pj4+Pg0KPiA+Pj4+PiBUaHVzIHRoZSBmaXJzdCBzdGVwIHdlIG5lZWQgdG8g
aW1wbGVtZW50IHBlcmYgTk1JIGludGVyZmFjZSBhbmQNCj4gPj4+Pj4gbWFrZSBzdXJlIGl0IHdv
cmtzIGZpbmUuDQo+ID4+Pj4+DQo+ID4+Pj4gVGhpcyBpcyBzb21ldGhpbmcgdGhhdCBpcyBhbHJl
YWR5IGltcGxlbWVudGVkIHZpYSBKdWxpZW4ncw0KPiA+Pj4+IHBhdGNoLXNldCBbMV0uIEl0cyB2
NCBoYXMgYmVlbiBmbG9hdGluZyBzaW5jZSBKdWx5LCAyMDE5IGFuZCBJDQo+ID4+Pj4gY291bGRu
J3QgZmluZCBhbnkgbWFqb3IgYmxvY2tpbmcgY29tbWVudHMgYnV0IG5vdCBzdXJlIHdoeSB0aGlu
Z3MNCj4gPj4+PiBoYXZlbid0IHByb2dyZXNzZWQgZnVydGhlci4NCj4gPj4+Pg0KPiA+Pj4+IE1h
eWJlIEp1bGllbiBvciBBcm0gbWFpbnRhaW5lcnMgY2FuIHByb3ZpZGUgdXBkYXRlcyBvbiBleGlz
dGluZw0KPiA+Pj4+IHBhdGNoLXNldCBbMV0gYW5kIGhvdyB3ZSBzaG91bGQgcHJvY2VlZCBmdXJ0
aGVyIHdpdGggdGhpcw0KPiA+Pj4+IGludGVyZXN0aW5nIGZlYXR1cmUuDQo+ID4+Pj4NCj4gPj4+
PiBBbmQgcmVnYXJkaW5nIGhhcmQtbG9ja3VwIGRldGVjdGlvbiwgSSBoYXZlIGJlZW4gYWJsZSB0
byBlbmFibGUgaXQNCj4gPj4+PiBiYXNlZCBvbiBwZXJmIE5NSSBldmVudHMgdXNpbmcgSnVsaWVu
J3MgcGVyZiBwYXRjaC1zZXQgWzFdLiBIYXZlIGENCj4gPj4+PiBsb29rIGF0IHRoZSBwYXRjaCBo
ZXJlIFsyXS4NCj4gPj4+Pg0KPiA+Pj4+IFsxXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3Jn
L2NvdmVyLzExMDQ3NDA3Lw0KPiA+Pj4+IFsyXQ0KPiA+Pj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL3BpcGVybWFpbC9saW51eC1hcm0ta2VybmVsLzIwMjAtTWF5LzczMjINCj4gPj4+PiAy
Ny5odG1sDQo+ID4+Pj4NCj4gPj4+PiAtU3VtaXQNCj4gPj4+Pg0KPiA+Pj4+PiBQZXJmIE5NSSBo
YXMgYmVlbiB0ZXN0IGJ5IGRkIGlmPS9kZXYvdXJhbmRvbSBvZj0vZGV2L251bGwgbGlrZSB0aGUN
Cj4gPj4+Pj4gbGluayBbMl0gZGlkLg0KPiA+Pj4+Pg0KPiA+Pj4+PiBbMV0gaHR0cHM6Ly9sa21s
Lm9yZy9sa21sLzIwMTkvMS8zMS81MzUNCj4gPj4+Pj4gWzJdIGh0dHBzOi8vd3d3LmxpbmFyby5v
cmcvYmxvZy9kZWJ1Z2dpbmctYXJtLWtlcm5lbHMtdXNpbmctbm1pZmlxDQo+ID4+Pj4+DQo+ID4+
Pj4+DQo+ID4+Pj4+IExlY29wemVyIENoZW4gKDMpOg0KPiA+Pj4+PiAgIGFybV9wbXU6IEFkZCBz
dXBwb3J0IGZvciBwZXJmIE5NSSBpbnRlcnJ1cHRzIHJlZ2lzdHJhdGlvbg0KPiA+Pj4+PiAgIGFy
bTY0OiBwZXJmOiBTdXBwb3J0IE5NSSBjb250ZXh0IGZvciBwZXJmIGV2ZW50IElTUg0KPiA+Pj4+
PiAgIGFybTY0OiBLY29uZmlnOiBBZGQgc3VwcG9ydCBmb3IgdGhlIFBlcmYgTk1JDQo+ID4+Pj4+
DQo+ID4+Pj4+ICBhcmNoL2FybTY0L0tjb25maWcgICAgICAgICAgICAgfCAxMCArKysrKysrDQo+
ID4+Pj4+ICBhcmNoL2FybTY0L2tlcm5lbC9wZXJmX2V2ZW50LmMgfCAzNiArKysrKysrKysrKysr
KysrKystLS0tLS0NCj4gPj4+Pj4gIGRyaXZlcnMvcGVyZi9hcm1fcG11LmMgICAgICAgICB8IDUx
DQo+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0NCj4gPj4+Pj4gIGluY2x1ZGUv
bGludXgvcGVyZi9hcm1fcG11LmggICB8ICA2ICsrKysNCj4gPj4+Pj4gIDQgZmlsZXMgY2hhbmdl
ZCwgODggaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+ID4+Pj4+DQo+ID4+Pj4+IC0t
DQo+ID4+Pj4+IDIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
