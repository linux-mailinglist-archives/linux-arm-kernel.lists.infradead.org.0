Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BA978B99
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 14:17:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCIK/mXah5kiiQD9RugOgQ30x/rBNYgzsp4NnPbdrm0=; b=TWm/kH6CnUhLpr
	ChWhTte0oVnsBm3oYSqCIZ9uUZQt9c1bB+p7/0QZiuXi/lS5BlJRQFApPRlRU7w6Syszw3K0d2cS4
	BVXcyV69Tg2dol+1qU/Y1r67yItaUf+qNjOlXyisKZJMVrdTsP71u9Gw8aMiLFemZd7abvhYzb0at
	x2lnXkn2JXNJpPqY0CsaV26mkKBIrdcAQvLmdhlZW6mSFGm4faVSbmH8HWt/2iwHioL4WtxN9GCV4
	wnHA88evq3A3vZ5eDvTPWjgvU93aDhJJnB3qX41ke16XkXa0+uFAv9I38PmIWU04p0oWNm7GAEijv
	Z8zVPyf3OjrO+vIkcFkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4bC-0001MU-Pq; Mon, 29 Jul 2019 12:17:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4b6-0001MA-9p
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 12:17:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F232528;
 Mon, 29 Jul 2019 05:17:45 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4EFF93F575;
 Mon, 29 Jul 2019 05:17:43 -0700 (PDT)
Subject: Re: [PATCH v9 11/21] mm: pagewalk: Add p4d_entry() and pgd_entry()
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-12-steven.price@arm.com>
 <b61435a3-0da0-de57-0993-b1fffeca3ca9@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <63a86424-9a8e-4528-5880-138f0009e462@arm.com>
Date: Mon, 29 Jul 2019 13:17:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b61435a3-0da0-de57-0993-b1fffeca3ca9@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_051748_433991_62488501 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjgvMDcvMjAxOSAxMzozMywgQW5zaHVtYW4gS2hhbmR1YWwgd3JvdGU6Cj4gCj4gCj4gT24g
MDcvMjIvMjAxOSAwOToxMiBQTSwgU3RldmVuIFByaWNlIHdyb3RlOgo+PiBwZ2RfZW50cnkoKSBh
bmQgcHVkX2VudHJ5KCkgd2VyZSByZW1vdmVkIGJ5IGNvbW1pdCAwYjFmYmZlNTAwMDZjNDEwCj4+
ICgibW0vcGFnZXdhbGs6IHJlbW92ZSBwZ2RfZW50cnkoKSBhbmQgcHVkX2VudHJ5KCkiKSBiZWNh
dXNlIHRoZXJlIHdlcmUKPj4gbm8gdXNlcnMuIFdlJ3JlIGFib3V0IHRvIGFkZCB1c2VycyBzbyBy
ZWludHJvZHVjZSB0aGVtLCBhbG9uZyB3aXRoCj4+IHA0ZF9lbnRyeSgpIGFzIHdlIG5vdyBoYXZl
IDUgbGV2ZWxzIG9mIHRhYmxlcy4KPj4KPj4gTm90ZSB0aGF0IGNvbW1pdCBhMDBjYzdkOWRkOTNk
NjZhICgibW0sIHg4NjogYWRkIHN1cHBvcnQgZm9yCj4+IFBVRC1zaXplZCB0cmFuc3BhcmVudCBo
dWdlcGFnZXMiKSBhbHJlYWR5IHJlLWFkZGVkIHB1ZF9lbnRyeSgpIGJ1dCB3aXRoCj4+IGRpZmZl
cmVudCBzZW1hbnRpY3MgdG8gdGhlIG90aGVyIGNhbGxiYWNrcy4gU2luY2UgdGhlcmUgaGF2ZSBu
ZXZlcgo+PiBiZWVuIHVwc3RyZWFtIHVzZXJzIG9mIHRoaXMsIHJldmVydCB0aGUgc2VtYW50aWNz
IGJhY2sgdG8gbWF0Y2ggdGhlCj4+IG90aGVyIGNhbGxiYWNrcy4gVGhpcyBtZWFucyBwdWRfZW50
cnkoKSBpcyBjYWxsZWQgZm9yIGFsbCBlbnRyaWVzLCBub3QKPj4ganVzdCB0cmFuc3BhcmVudCBo
dWdlIHBhZ2VzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTdGV2ZW4gUHJpY2UgPHN0ZXZlbi5wcmlj
ZUBhcm0uY29tPgo+PiAtLS0KPj4gIGluY2x1ZGUvbGludXgvbW0uaCB8IDE1ICsrKysrKysrKy0t
LS0tLQo+PiAgbW0vcGFnZXdhbGsuYyAgICAgIHwgMjcgKysrKysrKysrKysrKysrKy0tLS0tLS0t
LS0tCj4+ICAyIGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygt
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9tbS5oIGIvaW5jbHVkZS9saW51eC9t
bS5oCj4+IGluZGV4IDAzMzRjYTk3YzU4NC4uYjIyNzk5MTI5MTI4IDEwMDY0NAo+PiAtLS0gYS9p
bmNsdWRlL2xpbnV4L21tLmgKPj4gKysrIGIvaW5jbHVkZS9saW51eC9tbS5oCj4+IEBAIC0xNDMy
LDE1ICsxNDMyLDE0IEBAIHZvaWQgdW5tYXBfdm1hcyhzdHJ1Y3QgbW11X2dhdGhlciAqdGxiLCBz
dHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnN0YXJ0X3ZtYSwKPj4gIAo+PiAgLyoqCj4+ICAgKiBtbV93
YWxrIC0gY2FsbGJhY2tzIGZvciB3YWxrX3BhZ2VfcmFuZ2UKPj4gLSAqIEBwdWRfZW50cnk6IGlm
IHNldCwgY2FsbGVkIGZvciBlYWNoIG5vbi1lbXB0eSBQVUQgKDJuZC1sZXZlbCkgZW50cnkKPj4g
LSAqCSAgICAgICB0aGlzIGhhbmRsZXIgc2hvdWxkIG9ubHkgaGFuZGxlIHB1ZF90cmFuc19odWdl
KCkgcHVkcy4KPj4gLSAqCSAgICAgICB0aGUgcG1kX2VudHJ5IG9yIHB0ZV9lbnRyeSBjYWxsYmFj
a3Mgd2lsbCBiZSB1c2VkIGZvcgo+PiAtICoJICAgICAgIHJlZ3VsYXIgUFVEcy4KPj4gLSAqIEBw
bWRfZW50cnk6IGlmIHNldCwgY2FsbGVkIGZvciBlYWNoIG5vbi1lbXB0eSBQTUQgKDNyZC1sZXZl
bCkgZW50cnkKPj4gKyAqIEBwZ2RfZW50cnk6IGlmIHNldCwgY2FsbGVkIGZvciBlYWNoIG5vbi1l
bXB0eSBQR0QgKHRvcC1sZXZlbCkgZW50cnkKPj4gKyAqIEBwNGRfZW50cnk6IGlmIHNldCwgY2Fs
bGVkIGZvciBlYWNoIG5vbi1lbXB0eSBQNEQgZW50cnkKPj4gKyAqIEBwdWRfZW50cnk6IGlmIHNl
dCwgY2FsbGVkIGZvciBlYWNoIG5vbi1lbXB0eSBQVUQgZW50cnkKPj4gKyAqIEBwbWRfZW50cnk6
IGlmIHNldCwgY2FsbGVkIGZvciBlYWNoIG5vbi1lbXB0eSBQTUQgZW50cnkKPj4gICAqCSAgICAg
ICB0aGlzIGhhbmRsZXIgaXMgcmVxdWlyZWQgdG8gYmUgYWJsZSB0byBoYW5kbGUKPj4gICAqCSAg
ICAgICBwbWRfdHJhbnNfaHVnZSgpIHBtZHMuICBUaGV5IG1heSBzaW1wbHkgY2hvb3NlIHRvCj4+
ICAgKgkgICAgICAgc3BsaXRfaHVnZV9wYWdlKCkgaW5zdGVhZCBvZiBoYW5kbGluZyBpdCBleHBs
aWNpdGx5Lgo+PiAtICogQHB0ZV9lbnRyeTogaWYgc2V0LCBjYWxsZWQgZm9yIGVhY2ggbm9uLWVt
cHR5IFBURSAoNHRoLWxldmVsKSBlbnRyeQo+PiArICogQHB0ZV9lbnRyeTogaWYgc2V0LCBjYWxs
ZWQgZm9yIGVhY2ggbm9uLWVtcHR5IFBURSAobG93ZXN0LWxldmVsKSBlbnRyeQo+PiAgICogQHB0
ZV9ob2xlOiBpZiBzZXQsIGNhbGxlZCBmb3IgZWFjaCBob2xlIGF0IGFsbCBsZXZlbHMKPj4gICAq
IEBodWdldGxiX2VudHJ5OiBpZiBzZXQsIGNhbGxlZCBmb3IgZWFjaCBodWdldGxiIGVudHJ5Cj4+
ICAgKiBAdGVzdF93YWxrOiBjYWxsZXIgc3BlY2lmaWMgY2FsbGJhY2sgZnVuY3Rpb24gdG8gZGV0
ZXJtaW5lIHdoZXRoZXIKPj4gQEAgLTE0NTUsNiArMTQ1NCwxMCBAQCB2b2lkIHVubWFwX3ZtYXMo
c3RydWN0IG1tdV9nYXRoZXIgKnRsYiwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICpzdGFydF92bWEs
Cj4+ICAgKiAoc2VlIHRoZSBjb21tZW50IG9uIHdhbGtfcGFnZV9yYW5nZSgpIGZvciBtb3JlIGRl
dGFpbHMpCj4+ICAgKi8KPj4gIHN0cnVjdCBtbV93YWxrIHsKPj4gKwlpbnQgKCpwZ2RfZW50cnkp
KHBnZF90ICpwZ2QsIHVuc2lnbmVkIGxvbmcgYWRkciwKPj4gKwkJCSB1bnNpZ25lZCBsb25nIG5l
eHQsIHN0cnVjdCBtbV93YWxrICp3YWxrKTsKPj4gKwlpbnQgKCpwNGRfZW50cnkpKHA0ZF90ICpw
NGQsIHVuc2lnbmVkIGxvbmcgYWRkciwKPj4gKwkJCSB1bnNpZ25lZCBsb25nIG5leHQsIHN0cnVj
dCBtbV93YWxrICp3YWxrKTsKPj4gIAlpbnQgKCpwdWRfZW50cnkpKHB1ZF90ICpwdWQsIHVuc2ln
bmVkIGxvbmcgYWRkciwKPj4gIAkJCSB1bnNpZ25lZCBsb25nIG5leHQsIHN0cnVjdCBtbV93YWxr
ICp3YWxrKTsKPj4gIAlpbnQgKCpwbWRfZW50cnkpKHBtZF90ICpwbWQsIHVuc2lnbmVkIGxvbmcg
YWRkciwKPj4gZGlmZiAtLWdpdCBhL21tL3BhZ2V3YWxrLmMgYi9tbS9wYWdld2Fsay5jCj4+IGlu
ZGV4IGMzMDg0ZmYyNTY5ZC4uOTgzNzNhOWY4OGI4IDEwMDY0NAo+PiAtLS0gYS9tbS9wYWdld2Fs
ay5jCj4+ICsrKyBiL21tL3BhZ2V3YWxrLmMKPj4gQEAgLTkwLDE1ICs5MCw5IEBAIHN0YXRpYyBp
bnQgd2Fsa19wdWRfcmFuZ2UocDRkX3QgKnA0ZCwgdW5zaWduZWQgbG9uZyBhZGRyLCB1bnNpZ25l
ZCBsb25nIGVuZCwKPj4gIAkJfQo+PiAgCj4+ICAJCWlmICh3YWxrLT5wdWRfZW50cnkpIHsKPj4g
LQkJCXNwaW5sb2NrX3QgKnB0bCA9IHB1ZF90cmFuc19odWdlX2xvY2socHVkLCB3YWxrLT52bWEp
Owo+PiAtCj4+IC0JCQlpZiAocHRsKSB7Cj4+IC0JCQkJZXJyID0gd2Fsay0+cHVkX2VudHJ5KHB1
ZCwgYWRkciwgbmV4dCwgd2Fsayk7Cj4+IC0JCQkJc3Bpbl91bmxvY2socHRsKTsKPj4gLQkJCQlp
ZiAoZXJyKQo+PiAtCQkJCQlicmVhazsKPj4gLQkJCQljb250aW51ZTsKPj4gLQkJCX0KPj4gKwkJ
CWVyciA9IHdhbGstPnB1ZF9lbnRyeShwdWQsIGFkZHIsIG5leHQsIHdhbGspOwo+PiArCQkJaWYg
KGVycikKPj4gKwkJCQlicmVhazsKPiAKPiBCdXQgd2lsbCBub3QgdGhpcyBzdGlsbCBlbmNvdW50
ZXIgcG9zc2libGUgVEhQIGVudHJpZXMgd2hlbiB3YWxraW5nIHVzZXIKPiBwYWdlIHRhYmxlcyAo
dmFsaWQgd2Fsay0+dm1hKSBpbiB3aGljaCBjYXNlIHN0aWxsIG5lZWRzIHRvIGdldCBhIGxvY2su
Cj4gT1Igd2lsbCB0aGUgY2FsbGJhY2sgdGFrZSBjYXJlIG9mIGl0ID8KClRoaXMgaXMgd2hhdCBJ
IG1lYW4gaW4gdGhlIGNvbW1pdCBtZXNzYWdlIGJ5Ogo+IFNpbmNlIHRoZXJlIGhhdmUgbmV2ZXIK
PiBiZWVuIHVwc3RyZWFtIHVzZXJzIG9mIHRoaXMsIHJldmVydCB0aGUgc2VtYW50aWNzIGJhY2sg
dG8gbWF0Y2ggdGhlCj4gb3RoZXIgY2FsbGJhY2tzLiBUaGlzIG1lYW5zIHB1ZF9lbnRyeSgpIGlz
IGNhbGxlZCBmb3IgYWxsIGVudHJpZXMsIG5vdAo+IGp1c3QgdHJhbnNwYXJlbnQgaHVnZSBwYWdl
cy4KClNvIHRoZSBleHBlY3RhdGlvbiBpcyB0aGF0IHRoZSBjYWxsZXIgdGFrZXMgY2FyZSBvZiBp
dC4KCkhvd2V2ZXIsIGhhdmluZyBjaGVja2VkIGFnYWluLCBpdCBhcHBlYXJzIHRoYXQgbW0vaG1t
LmMgbm93IGRvZXMgdXNlCnRoaXMgY2FsbGJhY2sgKG1lcmdlZCBpbiB2NS4yLXJjMSkuCgpKw6ly
w7RtZSAtIGFyZSB5b3UgaGFwcHkgd2l0aCB0aGlzIGNoYW5nZSBpbiBzZW1hbnRpY3M/IEl0IGxv
b2tzIGxpa2UKaG1tX3ZtYV93YWxrX3B1ZCgpIHNob3VsZCBkZWFsIGdyYWNlZnVsbHkgd2l0aCBi
b3RoIG5vcm1hbCBhbmQgbGFyZ2UKcGFnZXMgLSBhbHRob3VnaCBJJ20gdW5zdXJlIHdoZXRoZXIg
eW91IGFyZSByZWx5aW5nIG9uIHRoZSBsb2NrIGZyb20KcHVkX3RyYW5zX2h1Z2VfbG9jaygpPwoK
VGhhbmtzLAoKU3RldmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
