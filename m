Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDABCF909A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:26:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptYdrcl5J/mJ6bYQlTmdLw/Qd7ZtgiG5G4yymPzls6c=; b=KaPzUgoCqsamsh
	eZsWWUdP9aqYBWFxaYq3OBpG9RWvhOPccDP0ezBthSN7xfMXIH03+kCIAGS3oRNX+TQrQqccC6tDG
	d5gYxCAbKnjZekdqknYxrY/gQp156+0ls3uHa3Y2QcEBR2VSHf2IZRa9MsSw2B8p+sgPZ6AOec2p2
	f7pzHbfcV3A0GZbWyvWlcXIAvmCX3lum56gg226Md+ciJOtbfERZSzj3oaPs+y3Rs6/3kfiGoDqka
	InjjWHWuuoCWegdUoZO3vePaSLGSrVYauXmonvXoNuAuEL/ldrOO14L2dwdzWhHg+2n43R88O6YtO
	4gEQekzYxBbLa5AJplQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUWBi-0005ll-Re; Tue, 12 Nov 2019 13:26:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUWBY-0005lC-8m
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:26:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1CF2A30E;
 Tue, 12 Nov 2019 05:26:19 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 273F53F6C4;
 Tue, 12 Nov 2019 05:26:18 -0800 (PST)
Subject: Re: [kvm-unit-tests PATCH 04/17] arm: gic: Support no IRQs test case
To: Andre Przywara <andre.przywara@arm.com>, Andrew Jones
 <drjones@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-5-andre.przywara@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <db89b983-425c-8b45-3f26-1a33b9817836@arm.com>
Date: Tue, 12 Nov 2019 13:26:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191108144240.204202-5-andre.przywara@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_052620_398826_3032AF42 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxMS84LzE5IDI6NDIgUE0sIEFuZHJlIFByenl3YXJhIHdyb3RlOgo+IEZvciBzb21l
IHRlc3RzIGl0IHdvdWxkIGJlIGltcG9ydGFudCB0byBjaGVjayB0aGF0IGFuIElSUSB3YXMgKm5v
dCoKPiB0cmlnZ2VyZWQsIGZvciBpbnN0YW5jZSB0byB0ZXN0IGNlcnRhaW4gbWFza2luZyBvcGVy
YXRpb25zLgo+Cj4gRXh0ZW5kIHRoZSBjaGVja19hZGRlZCgpIGZ1bmN0aW9uIHRvIHJlY29nbmlz
ZSBhbiBlbXB0eSBjcHVtYXNrIHRvCj4gZGV0ZWN0IHRoaXMgc2l0dWF0aW9uLiBUaGUgdGltZW91
dCBkdXJhdGlvbiBpcyByZWR1Y2VkLCBhbmQgdGhlICJubyBJUlFzCgpXaHkgaXMgdGhlIHRpbWVv
dXQgZHVyYXRpb24gcmVkdWNlZD8KCj4gdHJpZ2dlcmVkIiBjYXNlIGlzIGFjdHVhbGx5IHJlcG9y
dGVkIGFzIGEgc3VjY2VzcyBpbiB0aGlzIGNhc2UuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbmRyZSBQ
cnp5d2FyYSA8YW5kcmUucHJ6eXdhcmFAYXJtLmNvbT4KPiAtLS0KPiAgYXJtL2dpYy5jIHwgMTAg
KysrKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2FybS9naWMuYyBiL2FybS9naWMuYwo+IGluZGV4IGExMTQw
MDkuLmVjYTkxODggMTAwNjQ0Cj4gLS0tIGEvYXJtL2dpYy5jCj4gKysrIGIvYXJtL2dpYy5jCj4g
QEAgLTY2LDkgKzY2LDEwIEBAIHN0YXRpYyB2b2lkIGNoZWNrX2Fja2VkKGNvbnN0IGNoYXIgKnRl
c3RuYW1lLCBjcHVtYXNrX3QgKm1hc2spCj4gIAlpbnQgbWlzc2luZyA9IDAsIGV4dHJhID0gMCwg
dW5leHBlY3RlZCA9IDA7Cj4gIAlpbnQgbnJfcGFzcywgY3B1LCBpOwo+ICAJYm9vbCBiYWQgPSBm
YWxzZTsKPiArCWJvb2wgbm9pcnFzID0gY3B1bWFza19lbXB0eShtYXNrKTsKPiAgCj4gIAkvKiBX
YWl0IHVwIHRvIDVzIGZvciBhbGwgaW50ZXJydXB0cyB0byBiZSBkZWxpdmVyZWQgKi8KClRoaXMg
Y29tbWVudCBuZWVkcyB1cGRhdGluZy4KCj4gLQlmb3IgKGkgPSAwOyBpIDwgNTA7ICsraSkgewo+
ICsJZm9yIChpID0gMDsgaSA8IChub2lycXMgPyAxNSA6IDUwKTsgKytpKSB7Cj4gIAkJbWRlbGF5
KDEwMCk7Cj4gIAkJbnJfcGFzcyA9IDA7Cj4gIAkJZm9yX2VhY2hfcHJlc2VudF9jcHUoY3B1KSB7
Cj4gQEAgLTg4LDcgKzg5LDcgQEAgc3RhdGljIHZvaWQgY2hlY2tfYWNrZWQoY29uc3QgY2hhciAq
dGVzdG5hbWUsIGNwdW1hc2tfdCAqbWFzaykKPiAgCQkJCWJhZCA9IHRydWU7Cj4gIAkJCX0KPiAg
CQl9Cj4gLQkJaWYgKG5yX3Bhc3MgPT0gbnJfY3B1cykgewo+ICsJCWlmICghbm9pcnFzICYmIG5y
X3Bhc3MgPT0gbnJfY3B1cykgewoKVGhpcyBjb25kaXRpb24gaXMgcHJldHR5IGhhcmQgdG8gcmVh
ZCAtIHdoYXQgeW91IGFyZSBkb2luZyBoZXJlIGlzIG1ha2luZyBzdXJlCnRoYXQgd2hlbiBjaGVj
a19hY2tlZCB0ZXN0cyB0aGF0IG5vIGlycXMgaGF2ZSBiZWVuIHJlY2VpdmVkLCB5b3UgZG8gdGhl
IGVudGlyZSBmb3IKbG9vcCBhbmQgd2FpdCB0aGUgZW50aXJlIHRpbWVvdXQgZHVyYXRpb24uIERp
ZCBJIGdldCB0aGF0IHJpZ2h0PwoKSG93IGFib3V0IHRoaXMgKGNvbXBpbGUgdGVzdGVkIG9ubHkp
OgoKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKG5vaXJxcykKK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIFdhaXQgZm9yIHRoZSBlbnRpcmUg
dGltZW91dCBkdXJhdGlvbi4gKi8KK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGNvbnRpbnVlOworCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAo
bnJfcGFzcyA9PSBucl9jcHVzKSB7CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmVwb3J0KCIlcyIsICFiYWQsIHRlc3RuYW1lKTsKwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoaSkKCj4gIAkJCXJlcG9ydCgiJXMi
LCAhYmFkLCB0ZXN0bmFtZSk7Cj4gIAkJCWlmIChpKQo+ICAJCQkJcmVwb3J0X2luZm8oInRvb2sg
bW9yZSB0aGFuICVkIG1zIiwgaSAqIDEwMCk7Cj4gQEAgLTk2LDYgKzk3LDExIEBAIHN0YXRpYyB2
b2lkIGNoZWNrX2Fja2VkKGNvbnN0IGNoYXIgKnRlc3RuYW1lLCBjcHVtYXNrX3QgKm1hc2spCj4g
IAkJfQo+ICAJfQo+ICAKPiArCWlmIChub2lycXMgJiYgbnJfcGFzcyA9PSBucl9jcHVzKSB7Cj4g
KwkJcmVwb3J0KCIlcyIsICFiYWQsIHRlc3RuYW1lKTsKCmJhZCBpcyB0cnVlIG9ubHkgd2hlbiBi
YWRfc2VuZGVyW2NwdV0gIT0gLTEgb3IgYmFkX2lycVtjcHVdICE9IC0xLCB3aGljaCBvbmx5IGdl
dApzZXQgaW4gdGhlIGlycSBvciBpcGkgaGFuZGxlc3IsIG1lYW5pbmcgd2hlbiB5b3UgZG8gZ2V0
IGFuIGludGVycnVwdC4gSWYgbnJfcGFzcwo9PSBucl9jcHVzIGFuZCBub2lycXMsIHRoZW4geW91
IHNob3VsZG4ndCBoYXZlIGdvdHRlbiBhbiBpbnRlcnJ1cHQuIEkgdGhpbmsgaXQncwpzYWZlIHRv
IHdyaXRlIGl0IGFzIHJlcG9ydCgiJXMiLCB0cnVlLCB0ZXN0bmFtZSkuIEkgdGhpbmsgYSBzaG9y
dCBjb21tZW50IGFib3ZlCmV4cGxhaW5pbmcgd2h5IHdlIGRvIHRoaXMgY2hlY2sgKHRpbWVvdXQg
ZXhwaXJlZCBhbmQgd2UgaGF2ZW4ndCBnb3R0ZW4gYW55CmludGVycnVwdHMpIHdvdWxkIGFsc28g
aW1wcm92ZSByZWFkYWJpbGl0eSBvZiB0aGUgY29kZSwgYnV0IHRoYXQncyB1cCB0byB5b3UuCgpU
aGFua3MsCkFsZXgKPiArCQlyZXR1cm47Cj4gKwl9Cj4gKwo+ICAJZm9yX2VhY2hfcHJlc2VudF9j
cHUoY3B1KSB7Cj4gIAkJaWYgKGNwdW1hc2tfdGVzdF9jcHUoY3B1LCBtYXNrKSkgewo+ICAJCQlp
ZiAoIWFja2VkW2NwdV0pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
