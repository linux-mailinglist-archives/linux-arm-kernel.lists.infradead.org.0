Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306E518C54C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 03:32:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3z4zQFS29CRpJnMNsap+YOqXKt63LSCusO3ubmXYElg=; b=bMo3t/XktX7zTkv1gnmdyaX+A
	DGzUN+cNKRtXMDCcP50+gI4NT1CaA6x3OhzBUSldjL4QWxF3seiiH8cKi+lUbk3o0uj9XeXwtKN+7
	17B40COyU1qe0+ChNgZpfAIWP2UGY99TgTEp0JdD3sqh/WIQZ2jku5tSL70wRIOEwUIf2JoQqaDVd
	8xcgIo/3zFyu2SipGQwOVTLjB522i+gJMsNoEJkeVvqGrFO0YlwdtcTHiEGlHeHEItPqbuv5laYHf
	UtOo822D59SO2hQEmwVfe4+CFTrYBuF7T4cx4vskdeYPj5nXfbAVLe/wBWVc46+fB65ukAjPZfLdi
	A6Pg/YbLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF7Rv-0000Ye-Mu; Fri, 20 Mar 2020 02:31:51 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF7Ro-0000XU-4b
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 02:31:46 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 2AC509635A3A5CBCEBBC;
 Fri, 20 Mar 2020 10:31:31 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0; Fri, 20 Mar 2020
 10:31:22 +0800
Subject: Re: [PATCH v5 16/23] irqchip/gic-v4.1: Eagerly vmap vPEs
To: Marc Zyngier <maz@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-17-maz@kernel.org>
 <2817cb89-4cc2-549f-6e40-91d941aa8a5f@huawei.com>
 <d45e7ddfd51d4d8229e02efc42c8da04@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <2f667113-8241-dce6-0a5e-3acb5ef9cf7f@huawei.com>
Date: Fri, 20 Mar 2020 10:31:20 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <d45e7ddfd51d4d8229e02efc42c8da04@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_193144_354411_F4E01194 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org, Eric
 Auger <eric.auger@redhat.com>, Robert
 Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>, Julien
 Thierry <julien.thierry.kdev@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMjAvMy8xOSAxODo1NSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIw
MjAtMDMtMTcgMDI6NDksIFplbmdodWkgWXUgd3JvdGU6Cj4+IEhpIE1hcmMsCj4+Cj4+IE9uIDIw
MjAvMy81IDQ6MzMsIE1hcmMgWnluZ2llciB3cm90ZToKPj4+IE5vdyB0aGF0IHdlIGhhdmUgSFct
YWNjZWxlcmF0ZWQgU0dJcyBiZWluZyBkZWxpdmVyZWQgdG8gVlBFcywgaXQKPj4+IGJlY29tZXMg
cmVxdWlyZWQgdG8gbWFwIHRoZSBWUEVzIG9uIGFsbCBJVFNzIGluc3RlYWQgb2YgcmVseWluZwo+
Pj4gb24gdGhlIGxhenkgYXBwcm9hY2ggdGhhdCB3ZSB3b3VsZCB1c2Ugd2hlbiB1c2luZyB0aGUg
SVRTLWxpc3QKPj4+IG1lY2hhbmlzbS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXJjIFp5bmdp
ZXIgPG1hekBrZXJuZWwub3JnPgo+Pgo+PiBCZWZvcmUgR0lDdjQuMSwgd2UgdXNlIHZscGlfY291
bnQgdG8gZXZhbHVhdGUgd2hldGhlciB0aGUgdlBFIGhhcyBiZWVuCj4+IG1hcHBlZCBvbiB0aGUg
c3BlY2lmaWVkIElUUywgYW5kIHVzZSB0aGlzIHJlZmNvdW50IHRvIG9ubHkgaXNzdWUgVk1PVlAK
Pj4gdG8gdGhvc2UgaW52b2x2ZWQgSVRTZXMuIEl0J3MgYnJva2VuIGFmdGVyIHRoaXMgcGF0Y2gu
Cj4+Cj4+IFdlIG1heSBuZWVkIHRvIHJlLWV2YWx1YXRlICJ3aGV0aGVyIHRoZSB2UEUgaXMgbWFw
cGVkIiBub3cgdGhhdCB3ZSdyZSBhdAo+PiBHSUN2NC4xLCBvdGhlcndpc2UgKm5vKiBWTU9WUCB3
aWxsIGJlIGlzc3VlZCBvbiB0aGUgdjQuMSBjYXBhYmxlIG1hY2hpbmUKPj4gKEkgbWVhbiB0aG9z
ZSB3aXRob3V0IHNpbmdsZSBWTU9WUCBzdXBwb3J0KS4KPj4KPj4gV2hhdCBJJ20gc2F5aW5nIGlz
IHNvbWV0aGluZyBsaWtlIGJlbG93IChvbmx5IGFuIGlkZWEsIGl0IGV2ZW4gY2FuJ3QKPj4gY29t
cGlsZSksIGFueSB0aG91Z2h0cz8KPj4KPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaXJxY2hp
cC9pcnEtZ2ljLXYzLWl0cy5jIAo+PiBiL2RyaXZlcnMvaXJxY2hpcC9pcnEtZ2ljLXYzLWl0cy5j
Cj4+IGluZGV4IDJlMTJiYzUyZTNhMi4uMzQ1MGI1ZTg0N2NhIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL2lycWNoaXAvaXJxLWdpYy12My1pdHMuYwo+PiArKysgYi9kcml2ZXJzL2lycWNoaXAvaXJx
LWdpYy12My1pdHMuYwo+PiBAQCAtMTk4LDcgKzE5OCw4IEBAIHN0YXRpYyB1MTYgZ2V0X2l0c19s
aXN0KHN0cnVjdCBpdHNfdm0gKnZtKQo+PiDCoMKgwqDCoMKgwqDCoMKgIGlmICghaXNfdjQoaXRz
KSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnRpbnVlOwo+Pgo+PiAtwqDCoMKgwqDC
oMKgwqAgaWYgKHZtLT52bHBpX2NvdW50W2l0cy0+bGlzdF9ucl0pCj4+ICvCoMKgwqDCoMKgwqDC
oCBpZiAodm0tPnZscGlfY291bnRbaXRzLT5saXN0X25yXSB8fAo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBnaWNfcmVxdWlyZXNfZWFnZXJfbWFwcGluZygpKQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgX19zZXRfYml0KGl0cy0+bGlzdF9uciwgJml0c19saXN0KTsKPj4gwqDCoMKgwqAg
fQo+Pgo+PiBAQCAtMTI5NSw3ICsxMjk2LDggQEAgc3RhdGljIHZvaWQgaXRzX3NlbmRfdm1vdnAo
c3RydWN0IGl0c192cGUgKnZwZSkKPj4gwqDCoMKgwqDCoMKgwqDCoCBpZiAoIWlzX3Y0KGl0cykp
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250aW51ZTsKPj4KPj4gLcKgwqDCoMKgwqDC
oMKgIGlmICghdnBlLT5pdHNfdm0tPnZscGlfY291bnRbaXRzLT5saXN0X25yXSkKPj4gK8KgwqDC
oMKgwqDCoMKgIGlmICghdnBlLT5pdHNfdm0tPnZscGlfY291bnRbaXRzLT5saXN0X25yXSAmJgo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAhZ2ljX3JlcXVpcmVzX2VhZ2VyX21hcHBpbmcoKSkK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnRpbnVlOwo+Pgo+PiDCoMKgwqDCoMKgwqDC
oMKgIGRlc2MuaXRzX3Ztb3ZwX2NtZC5jb2wgPSAmaXRzLT5jb2xsZWN0aW9uc1tjb2xfaWRdOwo+
IAo+IEl0IHRvb2sgbWUgYSB3aGlsZSB0byB3cmFwIG15IGhlYWQgYXJvdW5kIHRoYXQgb25lLCBi
dXQgeW91J3JlIGFzIHVzdWFsIAo+IHNwb3Qgb24uCj4gCj4gVGhlIHVzZSBvZiBnaWNfcmVxdWly
ZXNfZWFnZXJfbWFwcGluZygpIGlzIGEgYml0IGNvbmZ1c2luZyBoZXJlLCBhcyBpdCAKPiBpc24n
dAo+IHNvIG11Y2ggdGhhdCB0aGUgVlBFIGlzIGVhZ2VybHkgbWFwcGVkLCBidXQgdGhlIHByZWRp
Y2F0ZSBvbiB3aGljaCB3ZSAKPiBldmFsdWF0ZQo+IHRoZSBuZWVkIGZvciBhIFZNT1ZQLiBIb3cg
YWJvdXQgdGhpczoKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMt
aXRzLmMgCj4gYi9kcml2ZXJzL2lycWNoaXAvaXJxLWdpYy12My1pdHMuYwo+IGluZGV4IGNkNjQ1
MWUxOTBjOS4uMzQ4ZjdhOTA5YTY5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvaXJxY2hpcC9pcnEt
Z2ljLXYzLWl0cy5jCj4gKysrIGIvZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRzLmMKPiBA
QCAtMTg5LDYgKzE4OSwxNSBAQCBzdGF0aWMgREVGSU5FX0lEQShpdHNfdnBlaWRfaWRhKTsKPiAg
wqAjZGVmaW5lIGdpY19kYXRhX3JkaXN0X3JkX2Jhc2UoKcKgwqDCoCAoZ2ljX2RhdGFfcmRpc3Qo
KS0+cmRfYmFzZSkKPiAgwqAjZGVmaW5lIGdpY19kYXRhX3JkaXN0X3ZscGlfYmFzZSgpwqDCoMKg
IChnaWNfZGF0YV9yZGlzdF9yZF9iYXNlKCkgKyAKPiBTWl8xMjhLKQo+IAo+ICsvKgo+ICsgKiBT
a2lwIElUU3MgdGhhdCBoYXZlIG5vIHZMUElzIG1hcHBlZCwgdW5sZXNzIHdlJ3JlIG9uIEdJQ3Y0
LjEsIGFzIHdlCj4gKyAqIGFsd2F5cyBoYXZlIHZTR0lzIG1hcHBlZC4KPiArICovCj4gK3N0YXRp
YyBib29sIHJlcXVpcmVfaXRzX2xpc3Rfdm1vdnAoc3RydWN0IGl0c192bSAqdm0sIHN0cnVjdCBp
dHNfbm9kZSAKPiAqaXRzKQo+ICt7Cj4gK8KgwqDCoCByZXR1cm4gKGdpY19yZGlzdHMtPmhhc19y
dnBlaWQgfHwgdm0tPnZscGlfY291bnRbaXRzLT5saXN0X25yXSk7Cj4gK30KPiArCj4gIMKgc3Rh
dGljIHUxNiBnZXRfaXRzX2xpc3Qoc3RydWN0IGl0c192bSAqdm0pCj4gIMKgewo+ICDCoMKgwqDC
oCBzdHJ1Y3QgaXRzX25vZGUgKml0czsKPiBAQCAtMTk4LDcgKzIwNyw3IEBAIHN0YXRpYyB1MTYg
Z2V0X2l0c19saXN0KHN0cnVjdCBpdHNfdm0gKnZtKQo+ICDCoMKgwqDCoMKgwqDCoMKgIGlmICgh
aXNfdjQoaXRzKSkKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnRpbnVlOwo+IAo+IC3C
oMKgwqDCoMKgwqDCoCBpZiAodm0tPnZscGlfY291bnRbaXRzLT5saXN0X25yXSkKPiArwqDCoMKg
wqDCoMKgwqAgaWYgKHJlcXVpcmVfaXRzX2xpc3Rfdm1vdnAodm0sIGl0cykpCj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBfX3NldF9iaXQoaXRzLT5saXN0X25yLCAmaXRzX2xpc3QpOwo+ICDC
oMKgwqDCoCB9Cj4gCj4gQEAgLTEyOTUsNyArMTMwNCw3IEBAIHN0YXRpYyB2b2lkIGl0c19zZW5k
X3Ztb3ZwKHN0cnVjdCBpdHNfdnBlICp2cGUpCj4gIMKgwqDCoMKgwqDCoMKgwqAgaWYgKCFpc192
NChpdHMpKQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4gCj4gLcKgwqDC
oMKgwqDCoMKgIGlmICghdnBlLT5pdHNfdm0tPnZscGlfY291bnRbaXRzLT5saXN0X25yXSkKPiAr
wqDCoMKgwqDCoMKgwqAgaWYgKCFyZXF1aXJlX2l0c19saXN0X3Ztb3ZwKHZwZS0+aXRzX3ZtLCBp
dHMpKQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4gCj4gIMKgwqDCoMKg
wqDCoMKgwqAgZGVzYy5pdHNfdm1vdnBfY21kLmNvbCA9ICZpdHMtPmNvbGxlY3Rpb25zW2NvbF9p
ZF07CgpJbmRlZWQgdGhpcyBsb29rcyBtdWNoIGNsZWFyZXIuIFdlJ3JlIGFjdHVhbGx5IGV2YWx1
YXRpbmcgdGhlIG5lZWQKZm9yIGlzc3VpbmcgVk1PVlAgdG8gYSBzcGVjaWZpZWQgSVRTLCBvbiBz
eXN0ZW0gdXNpbmcgaXRzX2xpc3RfbWFwCmZlYXR1cmUgKHRob3VnaCB3ZSBldmFsdWF0ZSBpdCBi
eSBjaGVja2luZyB3aGV0aGVyIHRoZSB2UEUgaXMgbWFwcGVkCm9uIHRoaXMgSVRTKS4KCgpUaGFu
a3MsClplbmdodWkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
