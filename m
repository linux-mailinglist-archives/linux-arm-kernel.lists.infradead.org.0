Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E17CA1E967C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 11:11:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hn0jnAkputnmqp/sQRpbeCNeBY8rajzLeZZy6qYYp9k=; b=lZhlnT91zEaBsj
	xrqNZxgCjWTM5UOoYXONNQENn0RYL9UCOLgdX1cWSYpFi71einPKmm604BhqvdyduWpJTGny/QCim
	QCaIaYHfaC0C3N2g5hHOLyTVxpQy3uhtqpPWHoCDKrZ5XbqsGBfVdLAgf76W/1Cc5cR2pNnH1zemF
	f9rSS8iRXS0kEMbOaabTka4Cfdj4YsSlN2RrN5DY6jta79nT1PLzZZy+VzTKfdoQmVLVb4FRXaWQm
	ZqKTB7ZUPsq8KVG+aPh/yUY1Zw5yxxKgFyX91EbwZeByC/imRz82KRljfInGLiZjaqXFiB3hBkZjW
	GpGawyaJjzVoL+sk9tHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfK0K-0000sy-Ms; Sun, 31 May 2020 09:11:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfK0B-0000sI-R5
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 09:11:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18F591045;
 Sun, 31 May 2020 02:11:30 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 58C973F52E;
 Sun, 31 May 2020 02:11:29 -0700 (PDT)
Subject: Re: [PATCH RFC] KVM: arm64: Sidestep stage2_unmap_vm() on vcpu reset
 when S2FWB is supported
To: Marc Zyngier <maz@kernel.org>
References: <20200415072835.1164-1-yuzenghui@huawei.com>
 <e99bc07d-0dd4-055c-808f-fd9cde88d2fc@arm.com>
 <a1a1961a-2eae-b26c-e607-ab5c0c929f37@arm.com>
 <13db879dff56d091f98f7c5416ab1535@kernel.org>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <ff9e2eb5-cbc4-b831-bc59-d194c966d04e@arm.com>
Date: Sun, 31 May 2020 10:12:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <13db879dff56d091f98f7c5416ab1535@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_021131_966971_044B7264 
X-CRM114-Status: GOOD (  28.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Zenghui Yu <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDUvMzAvMjAgNTozMSBQTSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IEhpIEFs
ZXgsCj4KPiBPbiAyMDIwLTA1LTMwIDExOjQ2LCBBbGV4YW5kcnUgRWxpc2VpIHdyb3RlOgo+PiBI
aSwKPgo+IFsuLi5dCj4KPj4+PiBkaWZmIC0tZ2l0IGEvdmlydC9rdm0vYXJtL2FybS5jIGIvdmly
dC9rdm0vYXJtL2FybS5jCj4+Pj4gaW5kZXggNDhkMGVjNDRhZDc3Li5lNjM3ODE2MmNkZWYgMTAw
NjQ0Cj4+Pj4gLS0tIGEvdmlydC9rdm0vYXJtL2FybS5jCj4+Pj4gKysrIGIvdmlydC9rdm0vYXJt
L2FybS5jCj4+Pj4gQEAgLTk4Myw4ICs5ODMsMTEgQEAgc3RhdGljIGludCBrdm1fYXJjaF92Y3B1
X2lvY3RsX3ZjcHVfaW5pdChzdHJ1Y3Qga3ZtX3ZjcHUKPj4+PiAqdmNwdSwKPj4+PiDCoMKgwqDC
oCAvKgo+Pj4+IMKgwqDCoMKgwqAgKiBFbnN1cmUgYSByZWJvb3RlZCBWTSB3aWxsIGZhdWx0IGlu
IFJBTSBwYWdlcyBhbmQgZGV0ZWN0IGlmIHRoZQo+Pj4+IMKgwqDCoMKgwqAgKiBndWVzdCBNTVUg
aXMgdHVybmVkIG9mZiBhbmQgZmx1c2ggdGhlIGNhY2hlcyBhcyBuZWVkZWQuCj4+Pj4gK8KgwqDC
oMKgICoKPj4+PiArwqDCoMKgwqAgKiBTMkZXQiBlbmZvcmNlcyBhbGwgbWVtb3J5IGFjY2Vzc2Vz
IHRvIFJBTSBiZWluZyBjYWNoZWFibGUsIHdlCj4+Pj4gK8KgwqDCoMKgICogZW5zdXJlIHRoYXQg
dGhlIGNhY2hlIGlzIGFsd2F5cyBjb2hlcmVudC4KPj4+PiDCoMKgwqDCoMKgICovCj4+Pj4gLcKg
wqDCoCBpZiAodmNwdS0+YXJjaC5oYXNfcnVuX29uY2UpCj4+Pj4gK8KgwqDCoCBpZiAodmNwdS0+
YXJjaC5oYXNfcnVuX29uY2UgJiYgIWNwdXNfaGF2ZV9jb25zdF9jYXAoQVJNNjRfSEFTX1NUQUdF
Ml9GV0IpKQo+Pj4gSSB0aGluayB1c2Vyc3BhY2UgZG9lcyBub3QgaW52YWxpZGF0ZSB0aGUgaWNh
Y2hlIHdoZW4gbG9hZGluZyBhIG5ldyBrZXJuZWwgaW1hZ2UsCj4+PiBhbmQgaWYgdGhlIGd1ZXN0
IHBhdGNoZWQgaW5zdHJ1Y3Rpb25zLCB0aGV5IGNvdWxkIHBvdGVudGlhbGx5IHN0aWxsIGJlIGlu
IHRoZQo+Pj4gaWNhY2hlLiBTaG91bGQgdGhlIGljYWNoZSBiZSBpbnZhbGlkYXRlZCBpZiBGV0Ig
aXMgcHJlc2VudD8KPj4KPj4gSSBub3RpY2VkIHRoYXQgdGhpcyB3YXMgaW5jbHVkZWQgaW4gdGhl
IGN1cnJlbnQgcHVsbCByZXF1ZXN0IGFuZCBJCj4+IHJlbWVtYmVyZWQgdGhhdAo+PiBJIHdhc24n
dCBzdXJlIGFib3V0IHRoaXMgcGFydC4gRGlkIHNvbWUgbW9yZSBkaWdnaW5nIGFuZCBpdCB0dXJu
cyBvdXQgdGhhdCBGV0IKPj4gaW1wbGllcyBubyBjYWNoZSBtYWludGVuYW5jZSBuZWVkZWQgZm9y
ICpkYXRhIHRvIGluc3RydWN0aW9uKgo+PiBjb2hlcmVuY2UuIEZyb20gQVJNCj4+IERESSAwNDg3
Ri5iLCBwYWdlIEQ1LTI2MzU6Cj4+Cj4+ICJXaGVuIEFSTXY4LjQtUzJGV0IgaXMgaW1wbGVtZW50
ZWQsIHRoZSBhcmNoaXRlY3R1cmUgcmVxdWlyZXMgdGhhdAo+PiBDTElEUl9FTDEue0xPVVUsIExP
SVVTfSBhcmUgemVybyBzbyB0aGF0IG5vIGxldmVscyBvZiBkYXRhIGNhY2hlIG5lZWQgdG8gYmUK
Pj4gY2xlYW5lZCBpbiBvcmRlciB0byBtYW5hZ2UgY29oZXJlbmN5IHdpdGggaW5zdHJ1Y3Rpb24g
ZmV0Y2hlcyIuCj4+Cj4+IEhvd2V2ZXIsIHRoZXJlJ3Mgbm8gbWVudGlvbiB0aGF0IEkgZm91bmQg
Zm9yIGluc3RydWN0aW9uIHRvIGRhdGEgY29oZXJlbmNlLAo+PiBtZWFuaW5nIHRoYXQgdGhlIGlj
YWNoZSB3b3VsZCBzdGlsbCBuZWVkIHRvIGJlIGludmFsaWRhdGVkIG9uIGVhY2ggdmNwdSBpbiBv
cmRlcgo+PiB0byBwcmV2ZW50IGZldGNoaW5nIG9mIHBhdGNoZWQgaW5zdHJ1Y3Rpb25zIGZyb20g
dGhlIGljYWNoZS4gQW0gSQo+PiBtaXNzaW5nIHNvbWV0aGluZz8KPgo+IEkgdGhpbmsgeW91IGFy
ZSByaWdodCwgYW5kIHRoaXMgZGVmaW5pdGVseSBtYXRjaGVzIHRoZSB3YXkgd2UgZGVhbCB3aXRo
Cj4gdGhlIGljYWNoZSBvbiB0aGUgZmF1bHQgcGF0aC4gRm9yIHNvbWUgYml6YXJyZSByZWFzb24s
IEkgYWx3YXlzIGFzc3VtZQo+IHRoYXQgRldCIGltcGxpZXMgRElDLCB3aGljaCBpc24ndCB0cnVl
IGF0IGFsbC4KPgo+IEknbSBwbGFubmluZyB0byBhZGRyZXNzIGl0IGFzIGZvbGxvd3MuIFBsZWFz
ZSBsZXQgbWUga25vdyB3aGF0IHlvdSB0aGluay4KPgo+IFRoYW5rcywKPgo+IMKgwqDCoMKgwqDC
oMKgIE0uCj4KPiBGcm9tIGY3ODYwZDFkMjg0ZjQxYWZlYTE3NmNjMTdlNWM5ZDg5NWFlNjY1ZTkg
TW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCj4gRnJvbTogTWFyYyBaeW5naWVyIDxtYXpAa2VybmVs
Lm9yZz4KPiBEYXRlOiBTYXQsIDMwIE1heSAyMDIwIDE3OjIyOjE5ICswMTAwCj4gU3ViamVjdDog
W1BBVENIXSBLVk06IGFybTY0OiBGbHVzaCB0aGUgaW5zdHJ1Y3Rpb24gY2FjaGUgaWYgbm90IHVu
bWFwcGluZyB0aGUKPiDCoFZNIG9uIHJlYm9vdAo+Cj4gT24gYSBzeXN0ZW0gd2l0aCBGV0IsIHdl
IGRvbid0IG5lZWQgdG8gdW5tYXAgU3RhZ2UtMiBvbiByZWJvb3QsCj4gYXMgZXZlbiBpZiB1c2Vy
c3BhY2UgdGFrZXMgdGhpcyBvcHBvcnR1bml0eSB0byByZXBhaW50IHRoZSB3aG9sZQo+IG9mIG1l
bW9yeSwgRldCIGVuc3VyZXMgdGhhdCB0aGUgZGF0YSBzaWRlIHN0YXlzIGNvbnNpc3RlbnQgZXZl
bgo+IGlmIHRoZSBndWVzdCB1c2VzIG5vbi1jYWNoZWFibGUgbWFwcGluZ3MuCj4KPiBIb3dldmVy
LCB0aGUgSS1zaWRlIGlzIG5vdCBuZWNlc3NhcmlseSBjb2hlcmVudCB3aXRoIHRoZSBELXNpZGUK
PiBpZiBDVFJfRUwwLkRJQyBpcyAwLiBJbiB0aGlzIGNhc2UsIGludmFsaWRhdGUgdGhlIGktY2Fj
aGUgdG8KPiBwcmVzZXJ2ZSBjb2hlcmVuY3kuCj4KPiBSZXBvcnRlZC1ieTogQWxleGFuZHJ1IEVs
aXNlaSA8YWxleGFuZHJ1LmVsaXNlaUBhcm0uY29tPgo+IEZpeGVzOiA4OTI3MTNlOTdjYTEgKCJL
Vk06IGFybTY0OiBTaWRlc3RlcCBzdGFnZTJfdW5tYXBfdm0oKSBvbiB2Y3B1IHJlc2V0IHdoZW4K
PiBTMkZXQiBpcyBzdXBwb3J0ZWQiKQo+IFNpZ25lZC1vZmYtYnk6IE1hcmMgWnluZ2llciA8bWF6
QGtlcm5lbC5vcmc+Cj4gLS0tCj4gwqBhcmNoL2FybTY0L2t2bS9hcm0uYyB8IDE0ICsrKysrKysr
KystLS0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2t2bS9hcm0uYyBiL2FyY2gvYXJtNjQva3Zt
L2FybS5jCj4gaW5kZXggYjBiNTY5ZjJjZGQwLi5kNjk4ODQwMWMyMmEgMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9hcm02NC9rdm0vYXJtLmMKPiArKysgYi9hcmNoL2FybTY0L2t2bS9hcm0uYwo+IEBAIC05
ODksMTEgKzk4OSwxNyBAQCBzdGF0aWMgaW50IGt2bV9hcmNoX3ZjcHVfaW9jdGxfdmNwdV9pbml0
KHN0cnVjdCBrdm1fdmNwdQo+ICp2Y3B1LAo+IMKgwqDCoMKgwqAgKiBFbnN1cmUgYSByZWJvb3Rl
ZCBWTSB3aWxsIGZhdWx0IGluIFJBTSBwYWdlcyBhbmQgZGV0ZWN0IGlmIHRoZQo+IMKgwqDCoMKg
wqAgKiBndWVzdCBNTVUgaXMgdHVybmVkIG9mZiBhbmQgZmx1c2ggdGhlIGNhY2hlcyBhcyBuZWVk
ZWQuCj4gwqDCoMKgwqDCoCAqCj4gLcKgwqDCoMKgICogUzJGV0IgZW5mb3JjZXMgYWxsIG1lbW9y
eSBhY2Nlc3NlcyB0byBSQU0gYmVpbmcgY2FjaGVhYmxlLCB3ZQo+IC3CoMKgwqDCoCAqIGVuc3Vy
ZSB0aGF0IHRoZSBjYWNoZSBpcyBhbHdheXMgY29oZXJlbnQuCj4gK8KgwqDCoMKgICogUzJGV0Ig
ZW5mb3JjZXMgYWxsIG1lbW9yeSBhY2Nlc3NlcyB0byBSQU0gYmVpbmcgY2FjaGVhYmxlLAo+ICvC
oMKgwqDCoCAqIGVuc3VyaW5nIHRoYXQgdGhlIGRhdGEgc2lkZSBpcyBhbHdheXMgY29oZXJlbnQu
IFdlIHN0aWxsCj4gK8KgwqDCoMKgICogbmVlZCB0byBpbnZhbGlkYXRlIHRoZSBJLWNhY2hlIHRo
b3VnaCwgYXMgRldCIGRvZXMgKm5vdCoKPiArwqDCoMKgwqAgKiBpbXBseSBDVFJfRUwwLkRJQy4K
PiDCoMKgwqDCoMKgICovCj4gLcKgwqDCoCBpZiAodmNwdS0+YXJjaC5oYXNfcnVuX29uY2UgJiYg
IWNwdXNfaGF2ZV9jb25zdF9jYXAoQVJNNjRfSEFTX1NUQUdFMl9GV0IpKQo+IC3CoMKgwqDCoMKg
wqDCoCBzdGFnZTJfdW5tYXBfdm0odmNwdS0+a3ZtKTsKPiArwqDCoMKgIGlmICh2Y3B1LT5hcmNo
Lmhhc19ydW5fb25jZSkgewo+ICvCoMKgwqDCoMKgwqDCoCBpZiAoIWNwdXNfaGF2ZV9maW5hbF9j
YXAoQVJNNjRfSEFTX1NUQUdFMl9GV0IpKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0YWdl
Ml91bm1hcF92bSh2Y3B1LT5rdm0pOwo+ICvCoMKgwqDCoMKgwqDCoCBlbHNlCj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgX19mbHVzaF9pY2FjaGVfYWxsKCk7Cj4gK8KgwqDCoCB9Cj4KPiDCoMKg
wqDCoCB2Y3B1X3Jlc2V0X2hjcih2Y3B1KTsKPgo+Ckxvb2tzIGdvb2QsIF9fZmx1c2hfaWNhY2hl
X2FsbCBjaGVja3MgQ1RSX0VMMC5ESUMgYmVmb3JlIGRvaW5nIGljYWNoZSBtYWludGVuYW5jZToK
ClJldmlld2VkLWJ5OiBBbGV4YW5kcnUgRWxpc2VpIDxhbGV4YW5kcnUuZWxpc2VpQGFybS5jb20+
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
