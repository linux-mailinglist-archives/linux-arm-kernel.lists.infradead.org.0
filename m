Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A5C56108
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 05:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LVKbxMUY+g/BqA80JUFG39Z0ui83xrFg+XzCXLJ4+3w=; b=d45q9lPNpGShy4SSiVctBVVcL
	Mnad+suWIXxlphkLe0vMYHpw7/A3iCBVVQw+lH2HSfck3/4e7xezCQaSmSiaW/OB2YuAPun8PtNm1
	eYyUHq/kJ/QweLuvIzLh4UEtQjPTaZqM66sIGgqwIzMr/uV8jMx2/DXKvUzDW2vVqdXgkOAfYTcPG
	DD0RtwvYN+X/pt6FjtdTKN57fKLsLAxC/3zy7v1wavPrecSwGs7OXIfEmZlzoRc+WBb5hVcaUELkp
	pSbc9a06cXrLoKPSaHQhkUEEa84yfClpuYuumADgJ4IlhnozgO9ZoIoMhDg1OoLxT0L1bgUxLr0W2
	WqJSMA1cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfz2P-0002Xy-Ic; Wed, 26 Jun 2019 03:56:01 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfz1y-0002W9-2Y
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 03:55:35 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1FC7BE4B79234D7E47FC;
 Wed, 26 Jun 2019 11:55:29 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Wed, 26 Jun 2019
 11:55:22 +0800
Subject: Re: [PATCH v2 7/9] KVM: arm/arm64: vgic-its: Cache successful
 MSI->LPI translation
From: Zenghui Yu <yuzenghui@huawei.com>
To: Marc Zyngier <marc.zyngier@arm.com>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <kvm@vger.kernel.org>
References: <20190611170336.121706-1-marc.zyngier@arm.com>
 <20190611170336.121706-8-marc.zyngier@arm.com>
 <53de88e9-3550-bd7f-8266-35c5e75fae4e@huawei.com>
 <169cc847-ebfa-44b6-00e7-c69dccdbbd62@arm.com>
 <7af32ebf-91a8-ef63-6108-4ca506fd364e@huawei.com>
Message-ID: <dd1b71c0-46fb-29f2-2fbc-2689c22ca8d7@huawei.com>
Date: Wed, 26 Jun 2019 11:54:55 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <7af32ebf-91a8-ef63-6108-4ca506fd364e@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_205534_357228_3FB771BD 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, "Raslan,
 KarimAllah" <karahmed@amazon.de>, Julien Thierry <julien.thierry@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>, "Saidi,
 Ali" <alisaidi@amazon.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNi8yNiAwOjAwLCBaZW5naHVpIFl1IHdyb3RlOgo+IEhpIE1hcmMsCj4gCj4gT24g
MjAxOS82LzI1IDIwOjMxLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+IEhpIFplbmdodWksCj4+Cj4+
IE9uIDI1LzA2LzIwMTkgMTI6NTAsIFplbmdodWkgWXUgd3JvdGU6Cj4+PiBIaSBNYXJjLAo+Pj4K
Pj4+IE9uIDIwMTkvNi8xMiAxOjAzLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+Pj4gT24gYSBzdWNj
ZXNzZnVsIHRyYW5zbGF0aW9uLCBwcmVzZXJ2ZSB0aGUgcGFyYW1ldGVycyBpbiB0aGUgTFBJCj4+
Pj4gdHJhbnNsYXRpb24gY2FjaGUuIEVhY2ggdHJhbnNsYXRpb24gaXMgcmV1c2luZyB0aGUgbGFz
dCBzbG90Cj4+Pj4gaW4gdGhlIGxpc3QsIG5hdHVyYWxseSBldmluY3RpbmcgdGhlIGxlYXN0IHJl
Y2VudGx5IHVzZWQgZW50cnkuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXJjIFp5bmdpZXIg
PG1hcmMuenluZ2llckBhcm0uY29tPgo+Pj4+IC0tLQo+Pj4+IMKgwqAgdmlydC9rdm0vYXJtL3Zn
aWMvdmdpYy1pdHMuYyB8IDg2IAo+Pj4+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+Pj4+IMKgwqAgMSBmaWxlIGNoYW5nZWQsIDg2IGluc2VydGlvbnMoKykKPj4+Pgo+Pj4+
IGRpZmYgLS1naXQgYS92aXJ0L2t2bS9hcm0vdmdpYy92Z2ljLWl0cy5jIAo+Pj4+IGIvdmlydC9r
dm0vYXJtL3ZnaWMvdmdpYy1pdHMuYwo+Pj4+IGluZGV4IDBhYTBjYmJjM2FmNi4uNjI5MzI0NTg0
NzZhIDEwMDY0NAo+Pj4+IC0tLSBhL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtaXRzLmMKPj4+PiAr
KysgYi92aXJ0L2t2bS9hcm0vdmdpYy92Z2ljLWl0cy5jCj4+Pj4gQEAgLTU0Niw2ICs1NDYsOTAg
QEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgCj4+Pj4gdmdpY19tbWlvX3JlYWRfaXRzX2lkcmVncyhz
dHJ1Y3Qga3ZtICprdm0sCj4+Pj4gwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+Pj4+IMKgwqAgfQo+
Pj4+ICtzdGF0aWMgc3RydWN0IHZnaWNfaXJxICpfX3ZnaWNfaXRzX2NoZWNrX2NhY2hlKHN0cnVj
dCB2Z2ljX2Rpc3QgKmRpc3QsCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcGh5c19hZGRyX3QgZGIsCj4+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdTMyIGRldmlkLCB1MzIgZXZl
bnRpZCkKPj4+PiArewo+Pj4+ICvCoMKgwqAgc3RydWN0IHZnaWNfdHJhbnNsYXRpb25fY2FjaGVf
ZW50cnkgKmN0ZTsKPj4+PiArwqDCoMKgIHN0cnVjdCB2Z2ljX2lycSAqaXJxID0gTlVMTDsKPj4+
PiArCj4+Pj4gK8KgwqDCoCBsaXN0X2Zvcl9lYWNoX2VudHJ5KGN0ZSwgJmRpc3QtPmxwaV90cmFu
c2xhdGlvbl9jYWNoZSwgZW50cnkpIHsKPj4+PiArwqDCoMKgwqDCoMKgwqAgLyoKPj4+PiArwqDC
oMKgwqDCoMKgwqDCoCAqIElmIHdlIGhpdCBhIE5VTEwgZW50cnksIHRoZXJlIGlzIG5vdGhpbmcg
YWZ0ZXIgdGhpcwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgICogcG9pbnQuCj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqAgKi8KPj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKCFjdGUtPmlycSkKPj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4+PiArCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlm
IChjdGUtPmRiID09IGRiICYmCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3RlLT5kZXZp
ZCA9PSBkZXZpZCAmJgo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGN0ZS0+ZXZlbnRpZCA9
PSBldmVudGlkKSB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyoKPj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgICogTW92ZSB0aGlzIGVudHJ5IHRvIHRoZSBoZWFkLCBhcyBpdCBp
cyB0aGUKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogbW9zdCByZWNlbnRseSB1c2Vk
Lgo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBsaXN0X21vdmUoJmN0ZS0+ZW50cnksICZkaXN0LT5scGlfdHJhbnNsYXRpb25fY2Fj
aGUpOwo+Pj4KPj4+IE9ubHkgZm9yIHBlcmZvcm1hbmNlIHJlYXNvbnM6IGlmIHdlIGhpdCBhdCB0
aGUgImhlYWQiIG9mIHRoZSBsaXN0LCB3ZQo+Pj4gZG9uJ3QgbmVlZCB0byBkbyBhIGxpc3RfbW92
ZSgpLgo+Pj4gSW4gb3VyIHRlc3RzLCB3ZSBmb3VuZCB0aGF0IGEgc2luZ2xlIGxpc3RfbW92ZSgp
IHRha2VzIG5lYXJseSAoc29tZXRpbWVzCj4+PiBldmVuIG1vcmUgdGhhbikgb25lIG1pY3Jvc2Vj
b25kLCBmb3Igc29tZSB1bmtub3duIHJlYXNvbi4uLgoKcy9vbmUgbWljcm9zZWNvbmQvNTAwIG5h
bm9zZWNvbmRzLwooSSBnb3QgdGhlIHZhbHVlIG9mIENOVEZSUSB3cm9uZywgc29ycnkuKQoKPj4K
Pj4gSHVoLi4uIFRoYXQncyBvZGQuCj4+Cj4+IENhbiB5b3UgbmFycm93IGRvd24gdW5kZXIgd2hp
Y2ggY29uZGl0aW9ucyB0aGlzIGhhcHBlbnM/IEknbSBub3Qgc3VyZSBpZgo+PiBjaGVja2luZyBm
b3IgdGhlIGxpc3QgaGVhZCB3b3VsZCBiZSBtb3JlIGVmZmljaWVudCwgYXMgeW91IGVuZC11cAo+
PiBmZXRjaGluZyB0aGUgaGVhZCBhbnl3YXkuIENhbiB5b3UgdHJ5IHJlcGxhY2luZyB0aGlzIGxp
bmUgd2l0aDoKPj4KPj4gwqDCoMKgwqBpZiAoIWxpc3RfaXNfZmlyc3QoJmN0ZS0+ZW50cnksICZk
aXN0LT5scGlfdHJhbnNsYXRpb25fY2FjaGUpKQo+PiDCoMKgwqDCoMKgwqDCoCBsaXN0X21vdmUo
JmN0ZS0+ZW50cnksICZkaXN0LT5scGlfdHJhbnNsYXRpb25fY2FjaGUpOwo+Pgo+PiBhbmQgbGV0
IG1lIGtub3cgd2hldGhlciBpdCBoZWxwcz8KPiAKPiBJdCBoZWxwcy4gV2l0aCB0aGlzIGNoYW5n
ZSwgdGhlIG92ZXJoZWFkIG9mIGxpc3RfbW92ZSgpIGlzIGdvbmUuCj4gCj4gV2UgcnVuIDE2IDQt
dmNwdSBWTXMgb24gdGhlIGhvc3QsIGVhY2ggd2l0aCBhIHZob3N0LXVzZXIgbmljLCBhbmQgcnVu
Cj4gImlwZXJmIiBpbiBwYWlycyBiZXR3ZWVuIHRoZW0uwqAgSXQncyBsaWtlbHkgdG8gaGl0IGF0
IHRoZSBoZWFkIG9mIHRoZQo+IGNhY2hlIGxpc3QgaW4gb3VyIHRlc3RzLgo+IFdpdGggdGhpcyBj
aGFuZ2UsIHRoZSBzeXMlIHV0aWxpemF0aW9uIG9mIHZob3N0ZHBmd2QgdGhyZWFkcyB3aWxsCj4g
ZGVjcmVhc2UgYnkgYWJvdXQgMTAlLsKgIEJ1dCBJIGRvbid0IGtub3cgdGhlIHJlYXNvbiBleGFj
dGx5IChJIGhhdmVuJ3QKPiBmb3VuZCBhbnkgY2x1ZXMgaW4gY29kZSB5ZXQsIGluIGltcGxlbWVu
dGF0aW9uIG9mIGxpc3RfbW92ZS4uLikuCj4gCj4gCj4gVGhhbmtzLAo+IHplbmdodWkKPiAKPiAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
