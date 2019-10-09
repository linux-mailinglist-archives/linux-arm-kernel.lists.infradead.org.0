Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A24AFD1017
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 15:29:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=sWtyKbDuCYFO0F0AcdX+r6LNmb+7whHVH9zP2eeUrcw=; b=QYdd1TRKO8r7nK
	sB3S4YKyitKjaYhqw2YnZtOy9EG1KEpQbEqCDX3AApM2KNRlHnYJYz71Bn8je+MYw+41dbJqt/W0h
	bAyahM3nAuNmH+C8xR6YRbraJ2vp35zY88/B62lr23nUwszaT7fBAyJEpxhFuc53vGmaauAFdVMU0
	/jf6UPZ7LoJvs7ZMshCmSWN2+EsxLrOvSrHwFfwcZo5rBKmX4KTOCxWGt8BWNBUU7HomACZ/MYs2g
	NENxWRTxkum5rqfSw/6SHH0z4eUxo0pe0/tO4CMCkJtYn5+OR+bxVsLj2B7d0ggevwL7PX8tE3g6A
	fNzXCbpI00dxXZ/8ianQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIC1V-0001YP-GJ; Wed, 09 Oct 2019 13:29:01 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIC1M-0001WL-3C
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 13:28:55 +0000
Received: from LHREML712-CAH.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id E1200349D8330F22641A;
 Wed,  9 Oct 2019 14:28:35 +0100 (IST)
Received: from LHREML524-MBS.china.huawei.com ([169.254.2.39]) by
 LHREML712-CAH.china.huawei.com ([10.201.108.35]) with mapi id 14.03.0415.000; 
 Wed, 9 Oct 2019 14:28:27 +0100
From: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
To: James Morse <james.morse@arm.com>
Subject: RE: MPAM branch verification (was RE: [RFC PATCH 2/2] ACPI / PPTT:
 cacheinfo: Label caches based on fw_token)
Thread-Topic: MPAM branch verification (was RE: [RFC PATCH 2/2] ACPI / PPTT:
 cacheinfo: Label caches based on fw_token)
Thread-Index: AdUoR6JBXCmGfD+rTvOGseVrKJ7QIACYz8KAAbik43ADLDuVgAVDqs8gCtWWFiA=
Date: Wed, 9 Oct 2019 13:28:26 +0000
Message-ID: <5FC3163CFD30C246ABAA99954A238FA83F43EE52@lhreml524-mbs.china.huawei.com>
References: <5FC3163CFD30C246ABAA99954A238FA83F2B38FD@lhreml524-mbs.china.huawei.com>
 <d3341796-d7ce-8b1b-3575-333eda7e6d07@arm.com>
 <5FC3163CFD30C246ABAA99954A238FA83F2DBB39@lhreml524-mbs.china.huawei.com>
 <6b863739-fc6d-424c-6b70-21e2e3775b78@arm.com> 
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.202.227.237]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_062852_287847_C3219A93 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Vijaya Kumar K <vkilari@codeaurora.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linuxarm <linuxarm@huawei.com>, Jeremy Linton <jeremy.linton@arm.com>,
 Tomasz Nowicki <Tomasz.Nowicki@cavium.com>,
 "Wangshaobo \(bobo\)" <bobo.shaobowang@huawei.com>,
 Richard Ruigrok <rruigrok@qti.qualcomm.com>,
 "Guohanjun \(Hanjun Guo\)" <guohanjun@huawei.com>,
 "wangxiongfeng \(C\)" <wangxiongfeng2@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2hhbWVl
cmFsaSBLb2xvdGh1bSBUaG9kaQ0KPiBTZW50OiAxNSBBdWd1c3QgMjAxOSAxMTozOA0KPiBUbzog
J0phbWVzIE1vcnNlJyA8amFtZXMubW9yc2VAYXJtLmNvbT4NCj4gQ2M6IFZpamF5YSBLdW1hciBL
IDx2a2lsYXJpQGNvZGVhdXJvcmEub3JnPjsgTG9yZW56byBQaWVyYWxpc2kNCj4gPGxvcmVuem8u
cGllcmFsaXNpQGFybS5jb20+OyBUb21hc3ogTm93aWNraQ0KPiA8VG9tYXN6Lk5vd2lja2lAY2F2
aXVtLmNvbT47IEplZmZyZXkgSHVnbyA8amh1Z29AY29kZWF1cm9yYS5vcmc+Ow0KPiBHdW9oYW5q
dW4gKEhhbmp1biBHdW8pIDxndW9oYW5qdW5AaHVhd2VpLmNvbT47IExpbnV4YXJtDQo+IDxsaW51
eGFybUBodWF3ZWkuY29tPjsgSmVyZW15IExpbnRvbiA8amVyZW15LmxpbnRvbkBhcm0uY29tPjsN
Cj4gbGludXgtYWNwaUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZzsgU3VkZWVwIEhvbGxhDQo+IDxzdWRlZXAuaG9sbGFAYXJtLmNvbT47IHdhbmd4
aW9uZ2ZlbmcgKEMpDQo+IDx3YW5neGlvbmdmZW5nMkBodWF3ZWkuY29tPjsgUmljaGFyZCBSdWln
cm9rDQo+IDxycnVpZ3Jva0BxdGkucXVhbGNvbW0uY29tPjsgJ2JvYm8uc2hhb2Jvd2FuZ0BodWF3
ZWkuY29tJw0KPiA8Ym9iby5zaGFvYm93YW5nQGh1YXdlaS5jb20+DQo+IFN1YmplY3Q6IFJFOiBN
UEFNIGJyYW5jaCB2ZXJpZmljYXRpb24gKHdhcyBSRTogW1JGQyBQQVRDSCAyLzJdIEFDUEkgLyBQ
UFRUOg0KPiBjYWNoZWluZm86IExhYmVsIGNhY2hlcyBiYXNlZCBvbiBmd190b2tlbikNCiANClsu
Li5dDQoNCj4gDQo+IEkgdGhpbmsgd2hhdCBoYXBwZW5zIG9uIG91ciBoYXJkd2FyZSBpcywgdGhl
IE1CQSByZXBvcnRzIFBNR19NQVggPSAwIGFuZA0KPiB0aGF0DQo+IHVwc2V0cyBtcGFtX3BtZ19i
aXRzKCkgLS0+aWxvZzIoKS4gSSBhbSBub3QgZW50aXJlbHkgc3VyZSB3aGV0aGVyIFBNR19NQVg9
DQo+IDAgaXMNCj4gYWxsb3dlZCBhcyBwZXIgc3BlYyB3aGVuIHRoZSByZXNvdXJjZSByZXBvcnRz
IEhBU19NU01PTiA9MS4gQnV0IGhhc24ndA0KPiBmb3VuZA0KPiBhbnl0aGluZyBpbiBzcGVjIHRo
YXQgZm9yYmlkcyB0aGlzIGFzIHRoZSBmaWx0ZXIgaXMgYSBjb21iaW5hdGlvbiBvZiBQUkFUSUQ6
UE1HLg0KPiANCj4gSSBoYXZlIGEgdGVtcCBoYWNrIGhlcmUgdG8ga2VlcCBpdCBnb2luZywNCj4g
DQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9oaXNpbGljb24va2VybmVsLWRldi9jb21taXQvNWUwODgx
YzRjZGRlZDQwNjZkZmFjNzYwMw0KPiBjNTMyNDIzODU0MTdhM2ENCj4gDQo+ID4NCj4gPiA+IEkg
d2lsbCBkZWJ1ZyBhbmQgdXBkYXRlIGlmIGl0IHJlYWxseSBpcyBhIHByb2JsZW0uIFBsZWFzZQ0K
PiA+ID4gbGV0IG1lIGtub3cgaWYgeW91IGhhdmUgYW55IHBsYW5zIHRvIHVwZGF0ZSB0aGUgYnJh
bmNoIHNvIHRoYXQgSSBjYW4gdHJ5IHRoZQ0KPiA+IGxhdGVzdC4NCj4gPg0KPiA+IEkgaG9wZSB0
byBwdXNoIGEgbmV3IHZlcnNpb24gYnkgdGhlIGVuZCBvZiBKdW5lLiAod2hvb3NoISBUaGVyZSBn
b2VzIEp1bmUpLg0KPiA+DQo+IGh0dHA6Ly93d3cubGludXgtYXJtLm9yZy9naXQ/cD1saW51eC1q
bS5naXQ7YT1zaG9ydGxvZztoPXJlZnMvaGVhZHMvbXBhbS9zDQo+ID4gbmFwc2hvdC9qdW4NCj4g
DQo+IFRoYW5rcyBmb3IgdGhhdC4gSSBhbSB1c2luZyB0aGlzIG5vdy4gKEFuZCBJIHNlZSBhIG1v
cmUgcmVjZW50IG9uZQ0KPiBtcGFtLzUuMy10bXANCj4gbm93LiBIYXMgYW55dGhpbmcgY2hhbmdl
ZCBvdGhlciB0aGFuIHJlYmFzZT8pDQo+IA0KPiA+DQo+ID4gVGhlIGNoYW5nZXMgaW4gdGhlcmUg
YXJlIHRvIGF2b2lkIHRoZSBrbm93bi1pc3N1ZXMgd2hlbiB0aGUgc2FtZSAndGhpbmcnIGlzDQo+
ID4gcGlja2VkIGFzIGJvdGgNCj4gPiBMMyByZXNvdXJjZSBhbmQgdGhlIE1CQSByZXNvdXJjZS4N
Cj4gDQo+IE5vdyB3aXRoIHRoZSBhYm92ZSBmaXggZm9yIFBNR19NQVg9MCwgSSBhbSBoaXR0aW5n
IGFub3RoZXIgaXNzdWUuDQo+IG1vdW50IC10IHJlc2N0cmwgcmVzY3RybCAvc3lzL2ZzL3Jlc2N0
cmwgZmFpbHMgd2l0aCAiRmlsZSBleGlzdHMiIGVycm9yLg0KPiANCj4gRGVidWdnaW5nIHBvaW50
cyB0bywNCj4gcmR0X2dldF90cmVlKCkNCj4gICBta2Rpcl9tb25kYXRhX2FsbCgpDQo+ICAgICBt
a2Rpcl9tb25kYXRhX3N1YmRpcl9hbGxkb20oKQ0KPiAgICAgICBta2Rpcl9tb25kYXRhX3N1YmRp
cigpDQo+ICAgICAgICAgbW9uX2FkZGZpbGUoKQ0KPiANCj4gSXQgbG9va3MgbGlrZSByLT5ldnRf
bGlzdCBnZXRzIGNvcnJ1cHRlZCBzb21laG93IGFuZCBoYXMgZHVwbGljYXRlIGVudHJpZXMuIEkN
Cj4gaGF2ZW7igJl0DQo+IGdvbmUgaW50byB0aGUgYm90dG9tIG9mIHRoaXMgaXNzdWUsIGJ1dCBw
bGVhc2UgbGV0IG1lIGtub3cgaWYgeW91IGhhdmUgYW55IGlkZWEuDQoNCkkgaGFkIGZldyBkaXJ0
eSBoYWNrc1sxXSB0byBmaXggdGhlIGFib3ZlIGFuZCBzb21lIG90aGVyIGlzc3VlcyBmb3VuZCwg
c28gdGhhdCBpdA0KZGV0ZWN0cyBib3RoIEwzIGFuZCBNQiBvbiBvdXIgcGxhdGZvcm1zLiBOb3cg
YWJsZSB0byBtb3VudCB0aGUgcmVzY3RybCBmcw0Kd2l0aCBib3RoIEwzIGFuZCBNQkEgcmVzb3Vy
Y2UuIEJ1dCBmdWxsIHZlcmlmaWNhdGlvbiBpcyBzdGlsbCBwZW5kaW5nLg0KDQpCZXR3ZWVuLCBq
dXN0IHRob3VnaHQgb2YgY2hlY2tpbmcgd2l0aCB5b3UsIGlzIHRoZXJlIGFueSBwbGFuIHRvIHJl
c3VtZS9yZXZpdmUgdGhlDQpNUEFNIHN1cHBvcnQgdXBzdHJlYW1bMl0gYW55dGltZSBzb29uPyBB
cHByZWNpYXRlIGlmIHlvdSBjb3VsZCBzaGFyZSB5b3VyIHBsYW4NCm9uIHRoaXMuDQoNClRoYW5r
cywNClNoYW1lZXINCg0KWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9oaXNpbGljb24va2VybmVsLWRl
di9jb21taXRzL3ByaXZhdGUtbXBhbS1kYmctc25hcHNob3QtanVuDQpbMl0gaHR0cHM6Ly9sa21s
Lm9yZy9sa21sLzIwMTgvOC8yNC8yNjENCg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
