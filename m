Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FDDF9496
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 16:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bal7TGB3s3RMDBrPGipMDZLHhFu3o7L5iA9HI3lq1uk=; b=td46GEqFY2yNk8
	+SHhsdePXTmaTKVg82JcYna8RC/lsWNn6VfygRFACU3/oeYz09jo5IotsiCa/DFWLZ77gfvlzA1tc
	1/uF3JcMUI4gBmdUpr3bspPDCEJFA9wqdPPjW30VzoxyjdxoGhkZ6c/iklIVOObjEk23nW5yifrPB
	HBY1J/xCjZxdoUodpXPVzdDIbim3ElQWLGP7xIKJGRyLGAmeBy/sUSmPfnUjQU5Kdt2PDeCy+oXLn
	XmdESDrynUHACNniMEzPzIapyjED4XtwB02jWmIj70UO/YgXV03pgaVjUMPcyp9jrlKtkr81KZOxA
	XXna/GZPrlgwlFCjMZ1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYIy-0006uq-U8; Tue, 12 Nov 2019 15:42:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYIq-0006u9-Jk
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 15:42:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D98611FB;
 Tue, 12 Nov 2019 07:41:58 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E8DB03F534;
 Tue, 12 Nov 2019 07:41:57 -0800 (PST)
Subject: Re: [kvm-unit-tests PATCH 08/17] arm: gic: Add simple SPI MP test
To: Andre Przywara <andre.przywara@arm.com>, Andrew Jones
 <drjones@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-9-andre.przywara@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <f7f11075-4313-dfc7-2e70-07c37fb61531@arm.com>
Date: Tue, 12 Nov 2019 15:41:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191108144240.204202-9-andre.przywara@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_074200_742261_4695944C 
X-CRM114-Status: GOOD (  18.91  )
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

SGksCgpXaGF0IGRvZXMgTVAgc3RhbmQgZm9yIGluIHRoZSBzdWJqZWN0PyBNdWx0aS1wcm9jZXNz
b3I/IEkgdGhpbmsgY2hhbmdpbmcgaXQgdG8gU01QCm1ha2VzIG1vcmUgc2Vuc2UsIGFzIHRoYXQg
aXMgYWxzbyBpbiB0aGUgdGVzdCBuYW1lIHRoYXQgeW91J3ZlIGFkZGVkLgoKT24gMTEvOC8xOSAy
OjQyIFBNLCBBbmRyZSBQcnp5d2FyYSB3cm90ZToKPiBTaGFyZWQgUGVyaXBoZXJhbCBJbnRlcnJ1
cHRzIChTUEkpIGNhbiB0YXJnZXQgYSBzcGVjaWZpYyBDUFUuIFRlc3QgdGhpcwo+IGZlYXR1cmUg
Ynkgcm91dGluZyB0aGUgdGVzdCBTUEkgdG8gZWFjaCBvZiB0aGUgdkNQVXMsIHRoZW4gdHJpZ2dl
cmluZyBpdAo+IGFuZCBjb25maXJtIGl0cyByZWNlcHRpb24gb24gdGhhdCByZXF1ZXN0ZWQgY29y
ZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlIFByenl3YXJhIDxhbmRyZS5wcnp5d2FyYUBhcm0u
Y29tPgo+IC0tLQo+ICBhcm0vZ2ljLmMgfCAzMSArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KystCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvYXJtL2dpYy5jIGIvYXJtL2dpYy5jCj4gaW5kZXggNjNhYTlmNC4uMzA0
YjdiOSAxMDA2NDQKPiAtLS0gYS9hcm0vZ2ljLmMKPiArKysgYi9hcm0vZ2ljLmMKPiBAQCAtNjIw
LDE2ICs2MjAsNDUgQEAgc3RhdGljIHZvaWQgc3BpX3Rlc3Rfc2luZ2xlKHZvaWQpCj4gIAljaGVj
a19hY2tlZCgibm93IGVuYWJsZWQgU1BJIGZpcmVzIiwgJmNwdW1hc2spOwo+ICB9Cj4gIAo+ICtz
dGF0aWMgdm9pZCBzcGlfdGVzdF9zbXAodm9pZCkKPiArewo+ICsJaW50IGNwdTsKPiArCWludCBj
b3JlcyA9IDE7Cj4gKwo+ICsJd2FpdF9vbl9yZWFkeSgpOwo+ICsJZm9yX2VhY2hfcHJlc2VudF9j
cHUoY3B1KSB7Cj4gKwkJaWYgKGNwdSA9PSBzbXBfcHJvY2Vzc29yX2lkKCkpCj4gKwkJCWNvbnRp
bnVlOwo+ICsJCXNwaV9jb25maWd1cmVfaXJxKFNQSV9JUlEsIGNwdSk7Cj4gKwkJaWYgKHRyaWdn
ZXJfYW5kX2NoZWNrX3NwaShOVUxMLCBJUlFfU1RBVF9JUlEsIGNwdSkpCj4gKwkJCWNvcmVzKys7
Cj4gKwkJZWxzZQo+ICsJCQlyZXBvcnRfaW5mbygiU1BJIGRlbGl2ZXJ5IGZhaWxlZCBvbiBjb3Jl
ICVkIiwgY3B1KTsKPiArCX0KPiArCXJlcG9ydCgiU1BJIGRlbGlldmVyZWQgb24gYWxsIGNvcmVz
IiwgY29yZXMgPT0gbnJfY3B1cyk7Cj4gK30KPiArCj4gIHN0YXRpYyB2b2lkIHNwaV9zZW5kKHZv
aWQpCj4gIHsKPiAgCWlycXNfZW5hYmxlKCk7Cj4gIAo+ICAJc3BpX3Rlc3Rfc2luZ2xlKCk7Cj4g
IAo+ICsJaWYgKG5yX2NwdXMgPiAxKQo+ICsJCXNwaV90ZXN0X3NtcCgpOwo+ICsKPiAgCWNoZWNr
X3NwdXJpb3VzKCk7Cj4gIAlleGl0KHJlcG9ydF9zdW1tYXJ5KCkpOwo+ICB9Cj4gIAo+ICtzdGF0
aWMgdm9pZCBzcGlfdGVzdCh2b2lkICpkYXRhIF9fdW51c2VkKQo+ICt7Cj4gKwlpZiAoc21wX3By
b2Nlc3Nvcl9pZCgpID09IDApCj4gKwkJc3BpX3NlbmQoKTsKPiArCWVsc2UKPiArCQlpcnFfcmVj
digpOwo+ICt9Cj4gKwo+ICBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqKmFyZ3YpCj4gIHsKPiAg
CWlmICghZ2ljX2luaXQoKSkgewo+IEBAIC02NjMsNyArNjkyLDcgQEAgaW50IG1haW4oaW50IGFy
Z2MsIGNoYXIgKiphcmd2KQo+ICAJCXJlcG9ydF9wcmVmaXhfcG9wKCk7Cj4gIAl9IGVsc2UgaWYg
KHN0cmNtcChhcmd2WzFdLCAiaXJxIikgPT0gMCkgewo+ICAJCXJlcG9ydF9wcmVmaXhfcHVzaChh
cmd2WzFdKTsKPiAtCQlzcGlfc2VuZCgpOwo+ICsJCW9uX2NwdXMoc3BpX3Rlc3QsIE5VTEwpOwoK
VGhpcyBpcyBhIGJpdCBzdHJhbmdlLiBZb3UgY2FsbCBvbl9jcHVzIGhlcmUsIHdoaWNoIG1lYW5z
IHlvdSBhc3N1bWUgdGhhdCB5b3UgaGF2ZQptb3JlIHRoYW4gb25lIENQVSwgYnV0IHRoZW4geW91
IGNoZWNrIGlmIHlvdSBoYXZlIG1vcmUgdGhhbiBvbmUgQ1BVIGluIHNwaV9zZW5kLAp3aGljaCBn
ZXRzIGV4ZWN1dGVkIG9uIENQVSAwLgoKSG93IGFib3V0IHRoaXMgaW5zdGVhZCAoY29tcGlsZSB0
ZXN0ZWQgb25seSk6CgpkaWZmIC0tZ2l0IGEvYXJtL2dpYy5jIGIvYXJtL2dpYy5jCmluZGV4IDYz
YWE5ZjRhOWZkYS4uN2QyNDQzYjA2ZmZhIDEwMDY0NAotLS0gYS9hcm0vZ2ljLmMKKysrIGIvYXJt
L2dpYy5jCkBAIC02MjAsMTIgKzYyMCw0MiBAQCBzdGF0aWMgdm9pZCBzcGlfdGVzdF9zaW5nbGUo
dm9pZCkKwqDCoMKgwqDCoMKgwqAgY2hlY2tfYWNrZWQoIm5vdyBlbmFibGVkIFNQSSBmaXJlcyIs
ICZjcHVtYXNrKTsKwqB9CsKgCi1zdGF0aWMgdm9pZCBzcGlfc2VuZCh2b2lkKQorc3RhdGljIHZv
aWQgc3BpX3Rlc3Rfc21wKHZvaWQpCsKgewotwqDCoMKgwqDCoMKgIGlycXNfZW5hYmxlKCk7CivC
oMKgwqDCoMKgwqAgaW50IGNwdTsKK8KgwqDCoMKgwqDCoCBpbnQgY29yZXMgPSAxOworCivCoMKg
wqDCoMKgwqAgZm9yX2VhY2hfcHJlc2VudF9jcHUoY3B1KSB7CivCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGlmIChjcHUgPT0gc21wX3Byb2Nlc3Nvcl9pZCgpKQorwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7CivCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHNtcF9ib290X3NlY29uZGFyeShjcHUsIGlycV9yZWN2KTsKK8KgwqDCoMKg
wqDCoCB9CivCoMKgwqDCoMKgwqAgd2FpdF9vbl9yZWFkeSgpOwrCoAorwqDCoMKgwqDCoMKgIGZv
cl9lYWNoX3ByZXNlbnRfY3B1KGNwdSkgeworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBp
ZiAoY3B1ID09IHNtcF9wcm9jZXNzb3JfaWQoKSkKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGNvbnRpbnVlOworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBzcGlfY29uZmlndXJlX2lycShTUElfSVJRLCBjcHUpOworwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBpZiAodHJpZ2dlcl9hbmRfY2hlY2tfc3BpKE5VTEwsIElSUV9TVEFUX0lSUSwgY3B1
KSkKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVzKys7
CivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVsc2UKK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlcG9ydF9pbmZvKCJTUEkgZGVsaXZlcnkgZmFpbGVk
IG9uIGNvcmUgJWQiLCBjcHUpOworwqDCoMKgwqDCoMKgIH0KK8KgwqDCoMKgwqDCoCByZXBvcnQo
IlNQSSBkZWxpZXZlcmVkIG9uIGFsbCBjb3JlcyIsIGNvcmVzID09IG5yX2NwdXMpOworfQorCitz
dGF0aWMgdm9pZCBzcGlfdGVzdCh2b2lkKQoreworwqDCoMKgwqDCoMKgIGlycXNfZW5hYmxlKCk7
CsKgwqDCoMKgwqDCoMKgIHNwaV90ZXN0X3NpbmdsZSgpOworwqDCoMKgwqDCoMKgIGlmIChucl9j
cHVzID09IDEpIHsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVwb3J0X3NraXAoIkF0
IGxlYXN0IDIgY3B1cyByZXF1aXJlZCB0byBydW4gdGhlIFNQSSBTTVAgdGVzdCIpOworwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKK8KgwqDCoMKgwqDCoCB9CisKK8KgwqDC
oMKgwqDCoCBzcGlfdGVzdF9zbXAoKTsKwqAKK291dDoKwqDCoMKgwqDCoMKgwqAgY2hlY2tfc3B1
cmlvdXMoKTsKwqDCoMKgwqDCoMKgwqAgZXhpdChyZXBvcnRfc3VtbWFyeSgpKTsKwqB9CkBAIC02
NjMsNyArNjkzLDcgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQrCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVwb3J0X3ByZWZpeF9wb3AoKTsKwqDCoMKgwqDCoMKgwqAg
fSBlbHNlIGlmIChzdHJjbXAoYXJndlsxXSwgImlycSIpID09IDApIHsKwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJlcG9ydF9wcmVmaXhfcHVzaChhcmd2WzFdKTsKLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgc3BpX3NlbmQoKTsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3BpX3Rlc3QoKTsKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlcG9ydF9wcmVm
aXhfcG9wKCk7CsKgwqDCoMKgwqDCoMKgIH0gZWxzZSB7CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZXBvcnRfYWJvcnQoIlVua25vd24gc3VidGVzdCAnJXMnIiwgYXJndlsxXSk7CgpX
aGF0IGRvIHlvdSB0aGluaz8KClRoYW5rcywKQWxleAo+ICAJCXJlcG9ydF9wcmVmaXhfcG9wKCk7
Cj4gIAl9IGVsc2Ugewo+ICAJCXJlcG9ydF9hYm9ydCgiVW5rbm93biBzdWJ0ZXN0ICclcyciLCBh
cmd2WzFdKTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
