Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991331CCEE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 02:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PE6dA0SpQ0J++2Zy5zF2qGTyRKEMxAijKFh2IOFDGmg=; b=ahlEbQqZ32MiuU
	m+clHSNmXmhrahMN6FCRtZZ5ECx1hiH3a7dFGpuiFrJyla59Ehglwd1hO/L9Rigy+u+iTo3ItfjTD
	rmSWGlZX5k9diJvfALV8KC4yDOl27iAmXYAj3EXAhQgARDrvPdYf7ARtcDwGAqT1w4L6dRuTPaYV1
	7khavkSB6LDb63XL0mhWY2/OhD1tKx3rRWfj4Mu2v/azz+yC3zgMacD7jpl2Gb/9T4qm7BxwwxlpS
	+zN+RCPoM4zfCgVWOyktjeGwUjhDjNHFZvA6bdj7wOk+hXFBpEZQUWA2S6qo5sfjTTjmU1F7IBaji
	NNgd0vmZLbtKEQaD1etQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXwgr-0007l8-Mw; Mon, 11 May 2020 00:53:05 +0000
Received: from shasxm06.verisilicon.com ([101.89.135.45]
 helo=shasxm03.verisilicon.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXwgj-0007k1-Kb
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 00:53:00 +0000
Content-Language: zh-CN
DKIM-Signature: v=1; a=rsa-sha256; d=Verisilicon.com; s=default;
 c=simple/simple; t=1589158355; h=from:subject:to:date:message-id;
 bh=jQqN0tjyATSElgUnkv/SM87yAJ8KjjGobbNsJuAYA1M=;
 b=WTNna0XFC0LdImFoiUVplZnwAylA+A3rIK7dG9U4iwlrZigVGXuVpCi5QUIQY3GZvcZDRT/vLfW
 mntPW8Ur67reWI30P8K/naPjRAE3c0zb2es+JOC6x/2cov9CFK2K9o3yqmJTJNjJECJAK0mcqg8qm
 hiUr2yXPTVX7+yn9RMg=
Received: from SHASXM03.verisilicon.com ([fe80::938:4dda:a2f9:38aa]) by
 SHASXM06.verisilicon.com ([fe80::59a8:ce34:dc14:ddda%16]) with mapi id
 14.03.0123.003; Mon, 11 May 2020 08:52:34 +0800
From: "Zhu, Joe" <Chunguang.Zhu@verisilicon.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: =?gb2312?B?tPC4tDogW1BBVENIIDEvMV0gZmlybXdhcmU6IGFybV9zY21pL21haWxib3g6?=
 =?gb2312?Q?_ignore_notification_for_tx_done_using_irq?=
Thread-Topic: [PATCH 1/1] firmware: arm_scmi/mailbox: ignore notification
 for tx done using irq
Thread-Index: AQHWJeM9tKTwOheOeEevYOsDCJbD8aifWMGAgAK3P4A=
Date: Mon, 11 May 2020 00:52:33 +0000
Message-ID: <5564B50DC8FF8945812290C7B168B6C770141CDF@SHASXM03.verisilicon.com>
References: <20200509085457.31920-1-joe_zhuchg@126.com>
 <20200509152007.GA18877@bogus>
In-Reply-To: <20200509152007.GA18877@bogus>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.3.87]
x-tm-as-product-ver: SMEX-11.0.0.4179-8.100.1062-25412.001
x-tm-as-result: No--8.899200-0.000000-31
x-tm-as-user-approved-sender: Yes
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_175258_001187_5CBC695C 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3VkZWVwLA0KICAgIFllcywgbWFpbGJveCBjbGllbnQgZG9lcyBub3QgbmVlZCB0byBrbm93
IGhvdyBjb250cm9sbGVyIGltcGxlbWVudGVkLiBJIHdpbGwgY2hlY2sgd2l0aCBtYWlsYm94IGRy
aXZlci4gVGhhbmtzIQ0KDQoNClJlZ2FyZHMsDQpKb2UNCg0KDQotLS0tLdPKvP7Urbz+LS0tLS0N
CreivP7IyzogU3VkZWVwIEhvbGxhIFttYWlsdG86c3VkZWVwLmhvbGxhQGFybS5jb21dIA0Kt6LL
zcqxvOQ6IDIwMjDE6jXUwjnI1SAyMzoyMA0KytW8/sjLOiBqb2Vfemh1Y2hnQDEyNi5jb20NCrOt
y806IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgta2VybmVsQHZn
ZXIua2VybmVsLm9yZzsgU3VkZWVwIEhvbGxhOyBaaHUsIEpvZQ0K1vfM4jogUmU6IFtQQVRDSCAx
LzFdIGZpcm13YXJlOiBhcm1fc2NtaS9tYWlsYm94OiBpZ25vcmUgbm90aWZpY2F0aW9uIGZvciB0
eCBkb25lIHVzaW5nIGlycQ0KDQpPbiBTYXQsIE1heSAwOSwgMjAyMCBhdCAwNDo1NDo1N1BNICsw
ODAwLCBqb2Vfemh1Y2hnQDEyNi5jb20gd3JvdGU6DQo+IEZyb206IEpvZSBaaHUgPENodW5ndWFu
Zy5aaHVAdmVyaXNpbGljb24uY29tPg0KPiANCj4gSWYgbWFpbGJveCB1c2VzIElSUSBtZXRob2Qs
IGl0IGFscmVhZHkgbm90aWZpZWQgZnJhbWV3b3JrIHdpdGgNCj4gbWJveF9jaGFuX3R4ZG9uZSgp
IGluIElTUi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvZSBaaHUgPENodW5ndWFuZy5aaHVAdmVy
aXNpbGljb24uY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZmlybXdhcmUvYXJtX3NjbWkvbWFpbGJv
eC5jIHwgNCArKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9maXJtd2FyZS9hcm1fc2NtaS9tYWls
Ym94LmMgYi9kcml2ZXJzL2Zpcm13YXJlL2FybV9zY21pL21haWxib3guYw0KPiBpbmRleCA3MzA3
N2JiYzRhZDkuLjMwM2E1ZGM0MjQyOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9maXJtd2FyZS9h
cm1fc2NtaS9tYWlsYm94LmMNCj4gKysrIGIvZHJpdmVycy9maXJtd2FyZS9hcm1fc2NtaS9tYWls
Ym94LmMNCj4gQEAgLTksNiArOSw3IEBADQo+ICAjaW5jbHVkZSA8bGludXgvZXJyLmg+DQo+ICAj
aW5jbHVkZSA8bGludXgvZGV2aWNlLmg+DQo+ICAjaW5jbHVkZSA8bGludXgvbWFpbGJveF9jbGll
bnQuaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9tYWlsYm94X2NvbnRyb2xsZXIuaD4NCg0KVGhpcyBp
cyBhbiBpbmRpY2F0aW9uIHRoYXQgc29tZXRoaW5nIGlzIHdyb25nLiBUaGUgbWFpbGJveCBjb250
cm9sbGVyDQphbmQgY2xpZW50IGludGVyZmFjZXMgYXJlIHZlcnkgY2xlYXIuIFlvdSBuZWVkIHRv
IHVzZSBtYWlsYm94IGNvbnRyb2xsZXINCmludGVyZmFjZSB3aGVuIGltcGxlbWVudGluZyBhIG1h
aWxib3ggY29udHJvbGxlciBhbmQgdXNlIG9ubHkgY2xpZW50DQppbnRlcmZhY2Ugd2hlbiBpbXBs
ZW1lbnRpbmcgYSBtYWlsYm94IGNsaWVudC4NCg0KPiAgI2luY2x1ZGUgPGxpbnV4L29mLmg+DQo+
ICAjaW5jbHVkZSA8bGludXgvb2ZfYWRkcmVzcy5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4L3NsYWIu
aD4NCj4gQEAgLTE0Nyw3ICsxNDgsOCBAQCBzdGF0aWMgdm9pZCBtYWlsYm94X21hcmtfdHhkb25l
KHN0cnVjdCBzY21pX2NoYW5faW5mbyAqY2luZm8sIGludCByZXQpDQo+ICAJICogVW5mb3J0dW5h
dGVseSwgd2UgaGF2ZSB0byBraWNrIHRoZSBtYWlsYm94IGZyYW1ld29yayBhZnRlciB3ZSBoYXZl
DQo+ICAJICogcmVjZWl2ZWQgb3VyIG1lc3NhZ2UuDQo+ICAJICovDQo+IC0JbWJveF9jbGllbnRf
dHhkb25lKHNtYm94LT5jaGFuLCByZXQpOw0KPiArCWlmICghc21ib3gtPmNoYW4tPm1ib3gtPnR4
ZG9uZV9pcnEpDQo+ICsJCW1ib3hfY2xpZW50X3R4ZG9uZShzbWJveC0+Y2hhbiwgcmV0KTsNCg0K
SWYgdGhpcyBwYXRjaCBpcyB0byBhdm9pZCBnZXR0aW5nICJDbGllbnQgY2FuJ3QgcnVuIHRoZSBU
WCB0aWNrZXIiIGVycm9yDQptZXNzYWdlcywgdGhlbiB5b3UgbWFrZSBuZWVkIHRvIGZpeCB0aGF0
IHdpdGggc29tZXRoaW5nIGxpa2UgYmVsb3c6DQoNClJlZ2FyZHMsDQpTdWRlZXANCg0KLS0+OA0K
ZGlmZiAtLWdpdCBpL2RyaXZlcnMvbWFpbGJveC9tYWlsYm94LmMgdy9kcml2ZXJzL21haWxib3gv
bWFpbGJveC5jDQppbmRleCAwYjgyMWE1YjJkYjguLjVhNzhhMGFkY2NlNCAxMDA2NDQNCi0tLSBp
L2RyaXZlcnMvbWFpbGJveC9tYWlsYm94LmMNCisrKyB3L2RyaXZlcnMvbWFpbGJveC9tYWlsYm94
LmMNCkBAIC0xODksNyArMTg5LDkgQEAgRVhQT1JUX1NZTUJPTF9HUEwobWJveF9jaGFuX3R4ZG9u
ZSk7DQogdm9pZCBtYm94X2NsaWVudF90eGRvbmUoc3RydWN0IG1ib3hfY2hhbiAqY2hhbiwgaW50
IHIpDQogew0KICAgICAgICBpZiAodW5saWtlbHkoIShjaGFuLT50eGRvbmVfbWV0aG9kICYgVFhE
T05FX0JZX0FDSykpKSB7DQotICAgICAgICAgICAgICAgZGV2X2VycihjaGFuLT5tYm94LT5kZXYs
ICJDbGllbnQgY2FuJ3QgcnVuIHRoZSBUWCB0aWNrZXJcbiIpOw0KKyAgICAgICAgICAgICAgIGlm
ICh1bmxpa2VseSghKGNoYW4tPnR4ZG9uZV9tZXRob2QgJiBUWERPTkVfQllfSVJRKSkpDQorICAg
ICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKGNoYW4tPm1ib3gtPmRldiwNCisgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIkNsaWVudCBjYW4ndCBydW4gdGhlIFRYIHRpY2tlclxuIik7
DQogICAgICAgICAgICAgICAgcmV0dXJuOw0KICAgICAgICB9DQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
