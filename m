Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8989B98E99
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:01:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZ0jDwiH86znx7urjo2DRBh2lmEgINjHzGNA8RS6jvg=; b=mfZ4LVOpJmNU8i
	vhJ3RXVO39b61gFzqsYbeqNl+zrfMeVn5XXWmL1dKsMY5tiCThRsI8dsdxQ6FPoIpsmBFl+dX10g8
	09DPlnPEeOsqOqoQ83IRMm87oXHJJfjmo+hVsyb5uvBEyhTCWEq8AweMYVRLgCIDW1rtpxAK9+b2X
	0Jqne31SoPdJgGgpbayw5wSh6m8bXfRzVdiht5tNNgJk2DbUmo5GN3jkDA9EN7cbGSAVSUHfzmU9J
	eAbYpvj+x+f25dEoKicikIuvpktO+WKmUCooD/3t7njCGoinxVWsO51CNj3g2owC1SfyBHaYT5ech
	thbU/k06CiIZ7h0MwaBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0iyc-0000DG-A8; Thu, 22 Aug 2019 09:01:50 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ixH-00080m-S2
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 09:00:30 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 55D6E10F23E1;
 Thu, 22 Aug 2019 09:00:26 +0000 (UTC)
Received: from [10.36.116.105] (ovpn-116-105.ams2.redhat.com [10.36.116.105])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3830F5DC1E;
 Thu, 22 Aug 2019 09:00:23 +0000 (UTC)
Subject: Re: [PATCH] KVM: arm/arm64: vgic: Allow more than 256 vcpus for
 KVM_IRQ_LINE
To: Marc Zyngier <maz@kernel.org>, Peter Maydell <peter.maydell@linaro.org>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Zenghui Yu <yuzenghui@huawei.com>
References: <20190818140710.23920-1-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <e37a2b72-5027-b553-377c-8ec06a988fb6@redhat.com>
Date: Thu, 22 Aug 2019 11:00:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190818140710.23920-1-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.66]); Thu, 22 Aug 2019 09:00:26 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_020028_171571_F98A0BE5 
X-CRM114-Status: GOOD (  27.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: qemu-arm@nongnu.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDgvMTgvMTkgNDowNyBQTSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IFdoaWxl
IHBhcnRzIG9mIHRoZSBWR0lDIHN1cHBvcnQgYSBsYXJnZSBudW1iZXIgb2YgdmNwdXMgKHdlCj4g
YnJhdmVseSBhbGxvdyB1cCB0byA1MTIpLCBvdGhlciBwYXJ0cyBhcmUgbW9yZSBsaW1pdGVkLgo+
IAo+IE9uZSBvZiB0aGVzZSBsaW1pdHMgaXMgdmlzaWJsZSBpbiB0aGUgS1ZNX0lSUV9MSU5FIGlv
Y3RsLCB3aGljaAo+IG9ubHkgYWxsb3dzIDI1NiB2Y3B1cyB0byBiZSBzaWduYWxsZWQgd2hlbiB1
c2luZyB0aGUgQ1BVIG9yIFBQSQo+IHR5cGVzLiBVbmZvcnR1bmF0ZWx5LCB3ZSd2ZSBjb3JuZXJl
ZCBvdXJzZWx2ZXMgYmFkbHkgYnkgYWxsb2NhdGluZwo+IGFsbCB0aGUgYml0cyBpbiB0aGUgaXJx
IGZpZWxkLgo+IAo+IFNpbmNlIHRoZSBpcnFfdHlwZSBzdWJmaWVsZCAoOCBiaXQgd2lkZSkgaXMg
Y3VycmVudGx5IG9ubHkgdGFraW5nCj4gdGhlIHZhbHVlcyAwLCAxIGFuZCAyIChhbmQgd2UgaGF2
ZSBiZWVuIGNhcmVmdWwgbm90IHRvIGFsbG93IGFueXRoaW5nCj4gZWxzZSksIGxldCdzIHJlZHVj
ZSB0aGlzIGZpZWxkIHRvIG9ubHkgNCBiaXRzLCBhbmQgYWxsb2NhdGUgdGhlCj4gcmVtYWluaW5n
IDQgYml0cyB0byBhIHZjcHUyX2luZGV4LCB3aGljaCBhY3RzIGFzIGEgbXVsdGlwbGllcjoKPiAK
PiAgIHZjcHVfaWQgPSAyNTYgKiB2Y3B1Ml9pbmRleCArIHZjcHVfaW5kZXgKPiAKPiBXaXRoIHRo
YXQsIGFuZCBhIG5ldyBjYXBhYmlsaXR5IChLVk1fQ0FQX0FSTV9JUlFfTElORV9MQVlPVVRfMikK
PiBhbGxvd2luZyB0aGlzIHRvIGJlIGRpc2NvdmVyZWQsIGl0IGJlY29tZXMgcG9zc2libGUgdG8g
aW5qZWN0Cj4gUFBJcyB0byB1cCB0byA0MDk2IHZjcHVzLiBCdXQgcGxlYXNlIGp1c3QgZG9uJ3Qu
Cj4gCj4gUmVwb3J0ZWQtYnk6IFplbmdodWkgWXUgPHl1emVuZ2h1aUBodWF3ZWkuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+Cj4gLS0tCj4gIERvY3Vt
ZW50YXRpb24vdmlydC9rdm0vYXBpLnR4dCAgICB8IDggKysrKysrLS0KPiAgYXJjaC9hcm0vaW5j
bHVkZS91YXBpL2FzbS9rdm0uaCAgIHwgNCArKystCj4gIGFyY2gvYXJtNjQvaW5jbHVkZS91YXBp
L2FzbS9rdm0uaCB8IDQgKysrLQo+ICBpbmNsdWRlL3VhcGkvbGludXgva3ZtLmggICAgICAgICAg
fCAxICsKPiAgdmlydC9rdm0vYXJtL2FybS5jICAgICAgICAgICAgICAgIHwgMiArKwo+ICA1IGZp
bGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vdmlydC9rdm0vYXBpLnR4dCBiL0RvY3VtZW50YXRpb24vdmly
dC9rdm0vYXBpLnR4dAo+IGluZGV4IDJkMDY3NzY3YjYxNy4uODU1MThiZmIyYTk5IDEwMDY0NAo+
IC0tLSBhL0RvY3VtZW50YXRpb24vdmlydC9rdm0vYXBpLnR4dAo+ICsrKyBiL0RvY3VtZW50YXRp
b24vdmlydC9rdm0vYXBpLnR4dAo+IEBAIC03NTMsOCArNzUzLDggQEAgaW4ta2VybmVsIGlycWNo
aXAgKEdJQyksIGFuZCBmb3IgaW4ta2VybmVsIGlycWNoaXAgY2FuIHRlbGwgdGhlIEdJQyB0bwo+
ICB1c2UgUFBJcyBkZXNpZ25hdGVkIGZvciBzcGVjaWZpYyBjcHVzLiAgVGhlIGlycSBmaWVsZCBp
cyBpbnRlcnByZXRlZAo+ICBsaWtlIHRoaXM6Cj4gIAo+IC0gwqBiaXRzOiAgfCAzMSAuLi4gMjQg
fCAyMyAgLi4uIDE2IHwgMTUgICAgLi4uICAgIDAgfAo+IC0gIGZpZWxkOiB8IGlycV90eXBlICB8
IHZjcHVfaW5kZXggfCAgICAgaXJxX2lkICAgICB8Cj4gKyDCoGJpdHM6ICB8ICAzMSAuLi4gMjgg
IHwgMjcgLi4uIDI0IHwgMjMgIC4uLiAxNiB8IDE1IC4uLiAwIHwKPiArICBmaWVsZDogfCB2Y3B1
Ml9pbmRleCB8IGlycV90eXBlICB8IHZjcHVfaW5kZXggfCAgaXJxX2lkICB8Cj4gIAo+ICBUaGUg
aXJxX3R5cGUgZmllbGQgaGFzIHRoZSBmb2xsb3dpbmcgdmFsdWVzOgo+ICAtIGlycV90eXBlWzBd
OiBvdXQtb2Yta2VybmVsIEdJQzogaXJxX2lkIDAgaXMgSVJRLCBpcnFfaWQgMSBpcyBGSVEKPiBA
QCAtNzY2LDYgKzc2NiwxMCBAQCBUaGUgaXJxX3R5cGUgZmllbGQgaGFzIHRoZSBmb2xsb3dpbmcg
dmFsdWVzOgo+ICAKPiAgSW4gYm90aCBjYXNlcywgbGV2ZWwgaXMgdXNlZCB0byBhc3NlcnQvZGVh
c3NlcnQgdGhlIGxpbmUuCj4gIAo+ICtXaGVuIEtWTV9DQVBfQVJNX0lSUV9MSU5FX0xBWU9VVF8y
IGlzIHN1cHBvcnRlZCwgdGhlIHRhcmdldCB2Y3B1IGlzCj4gK2lkZW50aWZpZWQgYXMgKDI1NiAq
IHZjcHUyX2luZGV4ICsgdmNwdV9pbmRleCkuIE90aGVyd2lzZSwgdmNwdTJfaW5kZXgKPiArbXVz
dCBiZSB6ZXJvLgo+ICsKPiAgc3RydWN0IGt2bV9pcnFfbGV2ZWwgewo+ICAJdW5pb24gewo+ICAJ
CV9fdTMyIGlycTsgICAgIC8qIEdTSSAqLwo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9pbmNsdWRl
L3VhcGkvYXNtL2t2bS5oIGIvYXJjaC9hcm0vaW5jbHVkZS91YXBpL2FzbS9rdm0uaAo+IGluZGV4
IGE0MjE3YzFhNWQwMS4uMjc2OTM2MGYxOTVjIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2luY2x1
ZGUvdWFwaS9hc20va3ZtLmgKPiArKysgYi9hcmNoL2FybS9pbmNsdWRlL3VhcGkvYXNtL2t2bS5o
Cj4gQEAgLTI2Niw4ICsyNjYsMTAgQEAgc3RydWN0IGt2bV92Y3B1X2V2ZW50cyB7Cj4gICNkZWZp
bmUgICBLVk1fREVWX0FSTV9JVFNfQ1RSTF9SRVNFVAkJNAo+ICAKPiAgLyogS1ZNX0lSUV9MSU5F
IGlycSBmaWVsZCBpbmRleCB2YWx1ZXMgKi8KPiArI2RlZmluZSBLVk1fQVJNX0lSUV9WQ1BVMl9T
SElGVAkJMjgKPiArI2RlZmluZSBLVk1fQVJNX0lSUV9WQ1BVMl9NQVNLCQkweGYKPiAgI2RlZmlu
ZSBLVk1fQVJNX0lSUV9UWVBFX1NISUZUCQkyNAo+IC0jZGVmaW5lIEtWTV9BUk1fSVJRX1RZUEVf
TUFTSwkJMHhmZgo+ICsjZGVmaW5lIEtWTV9BUk1fSVJRX1RZUEVfTUFTSwkJMHhmCj4gICNkZWZp
bmUgS1ZNX0FSTV9JUlFfVkNQVV9TSElGVAkJMTYKPiAgI2RlZmluZSBLVk1fQVJNX0lSUV9WQ1BV
X01BU0sJCTB4ZmYKPiAgI2RlZmluZSBLVk1fQVJNX0lSUV9OVU1fU0hJRlQJCTAKPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9pbmNsdWRlL3VhcGkvYXNtL2t2bS5oIGIvYXJjaC9hcm02NC9pbmNs
dWRlL3VhcGkvYXNtL2t2bS5oCj4gaW5kZXggOWE1MDc3MTZhZTJmLi42N2MyMWY5YmRiYWQgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9pbmNsdWRlL3VhcGkvYXNtL2t2bS5oCj4gKysrIGIvYXJj
aC9hcm02NC9pbmNsdWRlL3VhcGkvYXNtL2t2bS5oCj4gQEAgLTMyNSw4ICszMjUsMTAgQEAgc3Ry
dWN0IGt2bV92Y3B1X2V2ZW50cyB7Cj4gICNkZWZpbmUgICBLVk1fQVJNX1ZDUFVfVElNRVJfSVJR
X1BUSU1FUgkJMQo+ICAKPiAgLyogS1ZNX0lSUV9MSU5FIGlycSBmaWVsZCBpbmRleCB2YWx1ZXMg
Ki8KPiArI2RlZmluZSBLVk1fQVJNX0lSUV9WQ1BVMl9TSElGVAkJMjgKPiArI2RlZmluZSBLVk1f
QVJNX0lSUV9WQ1BVMl9NQVNLCQkweGYKPiAgI2RlZmluZSBLVk1fQVJNX0lSUV9UWVBFX1NISUZU
CQkyNAo+IC0jZGVmaW5lIEtWTV9BUk1fSVJRX1RZUEVfTUFTSwkJMHhmZgo+ICsjZGVmaW5lIEtW
TV9BUk1fSVJRX1RZUEVfTUFTSwkJMHhmCj4gICNkZWZpbmUgS1ZNX0FSTV9JUlFfVkNQVV9TSElG
VAkJMTYKPiAgI2RlZmluZSBLVk1fQVJNX0lSUV9WQ1BVX01BU0sJCTB4ZmYKPiAgI2RlZmluZSBL
Vk1fQVJNX0lSUV9OVU1fU0hJRlQJCTAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4
L2t2bS5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L2t2bS5oCj4gaW5kZXggNWUzZjEyZDUzNTllLi41
NDE0YjY1ODhmYmIgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L2t2bS5oCj4gKysr
IGIvaW5jbHVkZS91YXBpL2xpbnV4L2t2bS5oCj4gQEAgLTk5Niw2ICs5OTYsNyBAQCBzdHJ1Y3Qg
a3ZtX3BwY19yZXNpemVfaHB0IHsKPiAgI2RlZmluZSBLVk1fQ0FQX0FSTV9QVFJBVVRIX0FERFJF
U1MgMTcxCj4gICNkZWZpbmUgS1ZNX0NBUF9BUk1fUFRSQVVUSF9HRU5FUklDIDE3Mgo+ICAjZGVm
aW5lIEtWTV9DQVBfUE1VX0VWRU5UX0ZJTFRFUiAxNzMKPiArI2RlZmluZSBLVk1fQ0FQX0FSTV9J
UlFfTElORV9MQVlPVVRfMiAxNzQKPiAgCj4gICNpZmRlZiBLVk1fQ0FQX0lSUV9ST1VUSU5HCj4g
IAo+IGRpZmYgLS1naXQgYS92aXJ0L2t2bS9hcm0vYXJtLmMgYi92aXJ0L2t2bS9hcm0vYXJtLmMK
PiBpbmRleCAzNWEwNjk4MTViYWYuLmMxMzg1OTExZGU2OSAxMDA2NDQKPiAtLS0gYS92aXJ0L2t2
bS9hcm0vYXJtLmMKPiArKysgYi92aXJ0L2t2bS9hcm0vYXJtLmMKPiBAQCAtMTgyLDYgKzE4Miw3
IEBAIGludCBrdm1fdm1faW9jdGxfY2hlY2tfZXh0ZW5zaW9uKHN0cnVjdCBrdm0gKmt2bSwgbG9u
ZyBleHQpCj4gIAlpbnQgcjsKPiAgCXN3aXRjaCAoZXh0KSB7Cj4gIAljYXNlIEtWTV9DQVBfSVJR
Q0hJUDoKPiArCWNhc2UgS1ZNX0NBUF9BUk1fSVJRX0xJTkVfTEFZT1VUXzI6Cj4gIAkJciA9IHZn
aWNfcHJlc2VudDsKPiAgCQlicmVhazsKPiAgCWNhc2UgS1ZNX0NBUF9JT0VWRU5URkQ6Cj4gQEAg
LTg4OCw2ICs4ODksNyBAQCBpbnQga3ZtX3ZtX2lvY3RsX2lycV9saW5lKHN0cnVjdCBrdm0gKmt2
bSwgc3RydWN0IGt2bV9pcnFfbGV2ZWwgKmlycV9sZXZlbCwKPiAgCj4gIAlpcnFfdHlwZSA9IChp
cnEgPj4gS1ZNX0FSTV9JUlFfVFlQRV9TSElGVCkgJiBLVk1fQVJNX0lSUV9UWVBFX01BU0s7Cj4g
IAl2Y3B1X2lkeCA9IChpcnEgPj4gS1ZNX0FSTV9JUlFfVkNQVV9TSElGVCkgJiBLVk1fQVJNX0lS
UV9WQ1BVX01BU0s7Cj4gKwl2Y3B1X2lkeCArPSAoKGlycSA+PiBLVk1fQVJNX0lSUV9WQ1BVMl9T
SElGVCkgJiBLVk1fQVJNX0lSUV9WQ1BVMl9NQVNLKSAqIChLVk1fQVJNX0lSUV9WQ1BVX01BU0sg
KyAxKTsKPiAgCWlycV9udW0gPSAoaXJxID4+IEtWTV9BUk1fSVJRX05VTV9TSElGVCkgJiBLVk1f
QVJNX0lSUV9OVU1fTUFTSzsKPiAgCj4gIAl0cmFjZV9rdm1faXJxX2xpbmUoaXJxX3R5cGUsIHZj
cHVfaWR4LCBpcnFfbnVtLCBpcnFfbGV2ZWwtPmxldmVsKTsKPiAKClRoYW5rIHlvdSBmb3IgdGhl
IHBhdGNoIQoKUmV2aWV3ZWQtYnk6IEVyaWMgQXVnZXIgPGVyaWMuYXVnZXJAcmVkaGF0LmNvbT4K
CkVyaWMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
