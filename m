Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDBAF9BD0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 22:14:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+e2g4gxJsS4WhjKuCYkDXMew93RNwkq/FD1U17YKnQA=; b=aMeBc3gE1YliCf
	V8IV7lE+yPd1TBzkNovMVpnkjaxcDArDKPaeFLC0mpd9QrR/YW8czhRfeQ5Gmh5WNONgwgbVw9GxP
	VRYbdhJFt9P2t+qzQ7YgE6DQ/z4X8rRUA+PvgFgwiMOfLDtFCequYWZ4Z3wIjye7SaBtFlWwIpGgR
	IyLmOYr/9g4eprIkiSnmJaMXrZuYur0ssc4jwmqh+WItPOxpqCND23HteM5yV+11zOGuU8H3s+I+4
	fiIAnSASYei8DS0hyekFUxwjrfbDzmdHMXovZqrYz5CuU6afPSkF0z8XyAO1Ov4c/ZBl6kEXudprh
	TXerDIT28ydSwmTM7fzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUdUj-0005i3-Oe; Tue, 12 Nov 2019 21:14:37 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUdUY-0005hO-QV
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 21:14:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573593265;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0bsLDLGgwqWjvPt7yk6eXjGQ2Ee83dUoAWlp33AQHXo=;
 b=ZCYbtUqnSxFgiY1dPBEw7YTUF5gkZUyJYBfFiPQl2JpJJPDNVHU7MINi4p1QQTRU/x2hRu
 14CVCSStkPtj7ZHBCO9TOYg91YfUMcxzO4yLr2bR67GiXvv6c8+Mnit45i+VUQiCwbEwFS
 Ph/xC83DJpHoids+LJCr4+AoanHV41E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-257-HqlNN2b1Nw-sGxj_LfAFhQ-1; Tue, 12 Nov 2019 16:14:21 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 785019266C;
 Tue, 12 Nov 2019 21:14:19 +0000 (UTC)
Received: from [10.36.116.54] (ovpn-116-54.ams2.redhat.com [10.36.116.54])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2278B6018B;
 Tue, 12 Nov 2019 21:14:16 +0000 (UTC)
Subject: Re: [kvm-unit-tests PATCH 04/17] arm: gic: Support no IRQs test case
To: Alexandru Elisei <alexandru.elisei@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Andrew Jones <drjones@redhat.com>,
 Paolo Bonzini <pbonzini@redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-5-andre.przywara@arm.com>
 <db89b983-425c-8b45-3f26-1a33b9817836@arm.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <a8546125-1d41-559b-1085-9289868ad009@redhat.com>
Date: Tue, 12 Nov 2019 22:14:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <db89b983-425c-8b45-3f26-1a33b9817836@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: HqlNN2b1Nw-sGxj_LfAFhQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_131426_936005_C420AC74 
X-CRM114-Status: GOOD (  23.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxMS8xMi8xOSAyOjI2IFBNLCBBbGV4YW5kcnUgRWxpc2VpIHdyb3RlOgo+IEhpLAo+
IAo+IE9uIDExLzgvMTkgMjo0MiBQTSwgQW5kcmUgUHJ6eXdhcmEgd3JvdGU6Cj4+IEZvciBzb21l
IHRlc3RzIGl0IHdvdWxkIGJlIGltcG9ydGFudCB0byBjaGVjayB0aGF0IGFuIElSUSB3YXMgKm5v
dCoKPj4gdHJpZ2dlcmVkLCBmb3IgaW5zdGFuY2UgdG8gdGVzdCBjZXJ0YWluIG1hc2tpbmcgb3Bl
cmF0aW9ucy4KPj4KPj4gRXh0ZW5kIHRoZSBjaGVja19hZGRlZCgpIGZ1bmN0aW9uIHRvIHJlY29n
bmlzZSBhbiBlbXB0eSBjcHVtYXNrIHRvCj4+IGRldGVjdCB0aGlzIHNpdHVhdGlvbi4gVGhlIHRp
bWVvdXQgZHVyYXRpb24gaXMgcmVkdWNlZCwgYW5kIHRoZSAibm8gSVJRcwo+IAo+IFdoeSBpcyB0
aGUgdGltZW91dCBkdXJhdGlvbiByZWR1Y2VkPwo+IAo+PiB0cmlnZ2VyZWQiIGNhc2UgaXMgYWN0
dWFsbHkgcmVwb3J0ZWQgYXMgYSBzdWNjZXNzIGluIHRoaXMgY2FzZS4KPj4KPj4gU2lnbmVkLW9m
Zi1ieTogQW5kcmUgUHJ6eXdhcmEgPGFuZHJlLnByenl3YXJhQGFybS5jb20+Cj4+IC0tLQo+PiAg
YXJtL2dpYy5jIHwgMTAgKysrKysrKystLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FybS9naWMuYyBiL2FybS9n
aWMuYwo+PiBpbmRleCBhMTE0MDA5Li5lY2E5MTg4IDEwMDY0NAo+PiAtLS0gYS9hcm0vZ2ljLmMK
Pj4gKysrIGIvYXJtL2dpYy5jCj4+IEBAIC02Niw5ICs2NiwxMCBAQCBzdGF0aWMgdm9pZCBjaGVj
a19hY2tlZChjb25zdCBjaGFyICp0ZXN0bmFtZSwgY3B1bWFza190ICptYXNrKQo+PiAgCWludCBt
aXNzaW5nID0gMCwgZXh0cmEgPSAwLCB1bmV4cGVjdGVkID0gMDsKPj4gIAlpbnQgbnJfcGFzcywg
Y3B1LCBpOwo+PiAgCWJvb2wgYmFkID0gZmFsc2U7Cj4+ICsJYm9vbCBub2lycXMgPSBjcHVtYXNr
X2VtcHR5KG1hc2spOwo+PiAgCj4+ICAJLyogV2FpdCB1cCB0byA1cyBmb3IgYWxsIGludGVycnVw
dHMgdG8gYmUgZGVsaXZlcmVkICovCj4gCj4gVGhpcyBjb21tZW50IG5lZWRzIHVwZGF0aW5nLgo+
IAo+PiAtCWZvciAoaSA9IDA7IGkgPCA1MDsgKytpKSB7Cj4+ICsJZm9yIChpID0gMDsgaSA8IChu
b2lycXMgPyAxNSA6IDUwKTsgKytpKSB7Cj4+ICAJCW1kZWxheSgxMDApOwo+PiAgCQlucl9wYXNz
ID0gMDsKPj4gIAkJZm9yX2VhY2hfcHJlc2VudF9jcHUoY3B1KSB7Cj4+IEBAIC04OCw3ICs4OSw3
IEBAIHN0YXRpYyB2b2lkIGNoZWNrX2Fja2VkKGNvbnN0IGNoYXIgKnRlc3RuYW1lLCBjcHVtYXNr
X3QgKm1hc2spCj4+ICAJCQkJYmFkID0gdHJ1ZTsKPj4gIAkJCX0KPj4gIAkJfQo+PiAtCQlpZiAo
bnJfcGFzcyA9PSBucl9jcHVzKSB7Cj4+ICsJCWlmICghbm9pcnFzICYmIG5yX3Bhc3MgPT0gbnJf
Y3B1cykgewo+IAo+IFRoaXMgY29uZGl0aW9uIGlzIHByZXR0eSBoYXJkIHRvIHJlYWQgLSB3aGF0
IHlvdSBhcmUgZG9pbmcgaGVyZSBpcyBtYWtpbmcgc3VyZQo+IHRoYXQgd2hlbiBjaGVja19hY2tl
ZCB0ZXN0cyB0aGF0IG5vIGlycXMgaGF2ZSBiZWVuIHJlY2VpdmVkLCB5b3UgZG8gdGhlIGVudGly
ZSBmb3IKPiBsb29wIGFuZCB3YWl0IHRoZSBlbnRpcmUgdGltZW91dCBkdXJhdGlvbi4gRGlkIEkg
Z2V0IHRoYXQgcmlnaHQ/Cj4gCj4gSG93IGFib3V0IHRoaXMgKGNvbXBpbGUgdGVzdGVkIG9ubHkp
Ogo+IAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChub2lycXMpCj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIFdhaXQgZm9yIHRoZSBl
bnRpcmUgdGltZW91dCBkdXJhdGlvbi4gKi8KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4gKwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBpZiAobnJfcGFzcyA9PSBucl9jcHVzKSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXBvcnQoIiVzIiwgIWJhZCwgdGVzdG5hbWUpOwo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGkpCj4g
Cj4+ICAJCQlyZXBvcnQoIiVzIiwgIWJhZCwgdGVzdG5hbWUpOwo+PiAgCQkJaWYgKGk+PiAgCQkJ
CXJlcG9ydF9pbmZvKCJ0b29rIG1vcmUgdGhhbiAlZCBtcyIsIGkgKiAxMDApOwo+PiBAQCAtOTYs
NiArOTcsMTEgQEAgc3RhdGljIHZvaWQgY2hlY2tfYWNrZWQoY29uc3QgY2hhciAqdGVzdG5hbWUs
IGNwdW1hc2tfdCAqbWFzaykKPj4gIAkJfQo+PiAgCX0KPj4gIAo+PiArCWlmIChub2lycXMgJiYg
bnJfcGFzcyA9PSBucl9jcHVzKSB7Cj4+ICsJCXJlcG9ydCgiJXMiLCAhYmFkLCB0ZXN0bmFtZSk7
CgpUaGlzIG9uZSBsb29rcyBhdCB0aGUgcmVzdWx0IG9mIHRoZSBsYXN0IGl0ZXJhdGlvbiAob24g
dGltZW91dCkuCgpJbiBjYXNlIG9mIG5vaXJxcyBJIHRoaW5rIHdlIHNob3VsZCBiZSBhYmxlIHRv
IHJldHVybiBhIGZhaWx1cmUgYXMgc29vbgphcyBhbiBpcnEgaXMgZGV0ZWN0ZWQgd2hlcmUgd2Ug
ZG8gbm90IGV4cGVjdCBpdCwgd2l0aG91dCB3YWl0aW5nIGZvciB0aGUKZnVsbCBkZWxheT8KClRo
YW5rcwoKRXJpYwo+IAo+IGJhZCBpcyB0cnVlIG9ubHkgd2hlbiBiYWRfc2VuZGVyW2NwdV0gIT0g
LTEgb3IgYmFkX2lycVtjcHVdICE9IC0xLCB3aGljaCBvbmx5IGdldAo+IHNldCBpbiB0aGUgaXJx
IG9yIGlwaSBoYW5kbGVzciwgbWVhbmluZyB3aGVuIHlvdSBkbyBnZXQgYW4gaW50ZXJydXB0LiBJ
ZiBucl9wYXNzCj4gPT0gbnJfY3B1cyBhbmQgbm9pcnFzLCB0aGVuIHlvdSBzaG91bGRuJ3QgaGF2
ZSBnb3R0ZW4gYW4gaW50ZXJydXB0LiBJIHRoaW5rIGl0J3MKPiBzYWZlIHRvIHdyaXRlIGl0IGFz
IHJlcG9ydCgiJXMiLCB0cnVlLCB0ZXN0bmFtZSkuIEkgdGhpbmsgYSBzaG9ydCBjb21tZW50IGFi
b3ZlCj4gZXhwbGFpbmluZyB3aHkgd2UgZG8gdGhpcyBjaGVjayAodGltZW91dCBleHBpcmVkIGFu
ZCB3ZSBoYXZlbid0IGdvdHRlbiBhbnkKPiBpbnRlcnJ1cHRzKSB3b3VsZCBhbHNvIGltcHJvdmUg
cmVhZGFiaWxpdHkgb2YgdGhlIGNvZGUsIGJ1dCB0aGF0J3MgdXAgdG8geW91Lgo+IAo+IFRoYW5r
cywKPiBBbGV4Cj4+ICsJCXJldHVybjsKPj4gKwl9Cj4+ICsKPj4gIAlmb3JfZWFjaF9wcmVzZW50
X2NwdShjcHUpIHsKPj4gIAkJaWYgKGNwdW1hc2tfdGVzdF9jcHUoY3B1LCBtYXNrKSkgewo+PiAg
CQkJaWYgKCFhY2tlZFtjcHVdKQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4ga3ZtYXJtIG1haWxpbmcgbGlzdAo+IGt2bWFybUBsaXN0cy5jcy5jb2x1
bWJpYS5lZHUKPiBodHRwczovL2xpc3RzLmNzLmNvbHVtYmlhLmVkdS9tYWlsbWFuL2xpc3RpbmZv
L2t2bWFybQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
