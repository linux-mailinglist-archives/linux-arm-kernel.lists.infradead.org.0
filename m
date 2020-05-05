Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A14461C599C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:32:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRWSus4k/JvPEaRqPugHIm4L+ZsWFt2QonHm0jSPkLk=; b=jLxIxhD6+9GEVu
	kT1X28VnXeQBm6yjnj7PJ7UDlztSVmKGzhlEoeUVzbtQPA7eHNTTN0K7NWmvAgRi5nveOVSb2oJjs
	n+eUcMVpz07De3a7xCHGmP1jyfDk+qyrGDD3rxadBgE6/i8N5CCRlA7foIKmHSmBB8GwcC1seV5ZP
	75cpMK8WywiLGiRJgC+4rzdj2Lw5gB0UngrHA/2QgUxouXwcuUMz6qXwAz03H7e8lboyQyoiIkxLl
	sJnK487Su06r/68TAdnPhikWJ4QlaTqScM2XMRIpDrHsOlAmKBMbvNgyV7vtyhTwIGWodWBasOBrI
	JJOoQjqmH0/YeTMDuexw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyc6-0005CY-01; Tue, 05 May 2020 14:32:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyby-0005C1-Uh
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:31:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1E2A1FB;
 Tue,  5 May 2020 07:31:53 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.25.241])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9293E3F68F;
 Tue,  5 May 2020 07:31:52 -0700 (PDT)
Date: Tue, 5 May 2020 15:31:49 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Itaru Kitayama <itaru.kitayama@gmail.com>
Subject: Re: [PATCH] arm64: hugetlb: avoid potential NULL dereference
Message-ID: <20200505143149.GG82823@C02TD0UTHF1T.local>
References: <20200505125930.26901-1-mark.rutland@arm.com>
 <CANW9uyt4LorH7cZ+qj51T+yiHwLB+V8d=GjR=yae4APUwyQo+w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANW9uyt4LorH7cZ+qj51T+yiHwLB+V8d=GjR=yae4APUwyQo+w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_073155_075439_84D48D62 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMDUsIDIwMjAgYXQgMTA6MTI6MDJQTSArMDkwMCwgSXRhcnUgS2l0YXlhbWEg
d3JvdGU6Cj4gVGhlIG92ZXJoZWFkIGlzIGp1c3QgbmVnbGlnaWJsZSBpbiB0aGUgcGF0aHM/CgpT
b3JyeSwgSSdtIG5vdCBzdXJlIEkgdW5kZXJzdGFuZCB5b3VyIHF1ZXN0aW9uLiBBcmUgeW91IGFz
a2luZyBpZiB0aGlzCmlzIGxpa2VseSB0byBhZmZlY3QgcGVyZm9ybWFuY2U/CgpJIGRvbid0IGV4
cGVjdCB0aGVyZSB0byBiZSBhbnkgbWVhc3VyZWFibGUgb3ZlcmhlYWQgaGVyZS4gUHJhY3RpY2Fs
bHkKc3BlYWtpbmcgdGhlIGRpZmZlcmVuY2UgaXMgYSBDQlogKyBSRVQsIGFuZCBvdGhlciBmYWN0
b3JzIHdpbGwgZG9taW5hdGUKaGVyZS4KClJlZ2FyZGxlc3MsIHRoaXMgaXMgdHJpdmlhbCBlcnJv
ciBoYW5kbGluZyB0aGF0IHdhcyBtaXNzaW5nIGZyb20gdGhlCm9yaWdpbmFsIHBhdGNoLgoKVGhh
bmtzLApNYXJrLgoKPiBPbiBUdWUsIE1heSA1LCAyMDIwIGF0IDIxOjU5IE1hcmsgUnV0bGFuZCA8
bWFyay5ydXRsYW5kQGFybS5jb20+IHdyb3RlOgo+IAo+ID4gVGhlIHN0YXRpYyBhbmFseXplciBp
biBHQ0MgMTAgc3BvdHRlZCB0aGF0IGluIGh1Z2VfcHRlX2FsbG9jKCkgd2UgbWF5Cj4gPiBwYXNz
IGEgTlVMTCBwbWRwIGludG8gcHRlX2FsbG9jX21hcCgpIHdoZW4gcG1kX2FsbG9jKCkgcmV0dXJu
cyBOVUxMOgo+ID4KPiA+IHwgICBDQyAgICAgIGFyY2gvYXJtNjQvbW0vcGFnZWF0dHIubwo+ID4g
fCAgIENDICAgICAgYXJjaC9hcm02NC9tbS9odWdldGxicGFnZS5vCj4gPiB8ICAgICAgICAgICAg
ICAgICAgZnJvbSBhcmNoL2FybTY0L21tL2h1Z2V0bGJwYWdlLmM6MTA6Cj4gPiB8IGFyY2gvYXJt
NjQvbW0vaHVnZXRsYnBhZ2UuYzogSW4gZnVuY3Rpb24g4oCYaHVnZV9wdGVfYWxsb2PigJk6Cj4g
PiB8IC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wZ3RhYmxlLXR5cGVzLmg6Mjg6MjQ6IHdhcm5p
bmc6IGRlcmVmZXJlbmNlIG9mCj4gPiBOVUxMIOKAmHBtZHDigJkgW0NXRS02OTBdIFstV2FuYWx5
emVyLW51bGwtZGVyZWZlcmVuY2VdCj4gPiB8IC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wZ3Rh
YmxlLmg6NDM2OjI2OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8KPiA+IOKAmHBtZF92YWzi
gJkKPiA+IHwgYXJjaC9hcm02NC9tbS9odWdldGxicGFnZS5jOjI0MjoxMDogbm90ZTogaW4gZXhw
YW5zaW9uIG9mIG1hY3JvCj4gPiDigJhwdGVfYWxsb2NfbWFw4oCZCj4gPiB8ICAgICB8YXJjaC9h
cm02NC9tbS9odWdldGxicGFnZS5jOjIzMjoxMDoKPiA+IHwgICAgIHwuL2FyY2gvYXJtNjQvaW5j
bHVkZS9hc20vcGd0YWJsZS10eXBlcy5oOjI4OjI0Ogo+ID4gfCAuL2FyY2gvYXJtNjQvaW5jbHVk
ZS9hc20vcGd0YWJsZS5oOjQzNjoyNjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvCj4gPiDi
gJhwbWRfdmFs4oCZCj4gPiB8IGFyY2gvYXJtNjQvbW0vaHVnZXRsYnBhZ2UuYzoyNDI6MTA6IG5v
dGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybwo+ID4g4oCYcHRlX2FsbG9jX21hcOKAmQo+ID4KPiA+
IFRoaXMgY2FuIG9ubHkgb2NjdXIgd2hlbiB0aGUga2VybmVsIGNhbm5vdCBhbGxvY2F0ZSBhIHBh
Z2UsIGFuZCBzbyBpcwo+ID4gdW5saWtlbHkgdG8gaGFwcGVuIGluIHByYWN0aWNlIGJlZm9yZSBv
dGhlciBzeXN0ZW1zIHN0YXJ0IGZhaWxpbmcuCj4gPgo+ID4gV2UgY2FuIGF2b2lkIHRoaXMgYnkg
YmFpbGluZyBvdXQgaWYgcG1kX2FsbG9jKCkgZmFpbHMsIGFzIHdlIGRvIGVhcmxpZXIKPiA+IGlu
IHRoZSBmdW5jdGlvbiBpZiBwdWRfYWxsb2MoKSBmYWlscy4KPiA+Cj4gPiBGaXhlczogNjZiMzky
M2ExYTBmNzdhNSAoImFybTY0OiBodWdldGxiOiBhZGQgc3VwcG9ydCBmb3IgUFRFIGNvbnRpZ3Vv
dXMKPiA+IGJpdCkiCj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFu
ZEBhcm0uY29tPgo+ID4gUmVwb3J0ZWQtYnk6IEt5cmlsbCBUa2FjaG92IDxreXJ5bG8udGthY2hv
dkBhcm0uY29tPgo+ID4gQ2M6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5j
b20+Cj4gPiBDYzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPiA+IC0tLQo+ID4gIGFy
Y2gvYXJtNjQvbW0vaHVnZXRsYnBhZ2UuYyB8IDIgKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvbW0vaHVnZXRsYnBh
Z2UuYyBiL2FyY2gvYXJtNjQvbW0vaHVnZXRsYnBhZ2UuYwo+ID4gaW5kZXggYmJlYjZhNWE2YmE2
Li4wYmUzMzU1ZTM0OTkgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L21tL2h1Z2V0bGJwYWdl
LmMKPiA+ICsrKyBiL2FyY2gvYXJtNjQvbW0vaHVnZXRsYnBhZ2UuYwo+ID4gQEAgLTIzMCw2ICsy
MzAsOCBAQCBwdGVfdCAqaHVnZV9wdGVfYWxsb2Moc3RydWN0IG1tX3N0cnVjdCAqbW0sCj4gPiAg
ICAgICAgICAgICAgICAgcHRlcCA9IChwdGVfdCAqKXB1ZHA7Cj4gPiAgICAgICAgIH0gZWxzZSBp
ZiAoc3ogPT0gKENPTlRfUFRFX1NJWkUpKSB7Cj4gPiAgICAgICAgICAgICAgICAgcG1kcCA9IHBt
ZF9hbGxvYyhtbSwgcHVkcCwgYWRkcik7Cj4gPiArICAgICAgICAgICAgICAgaWYgKCFwbWRwKQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIE5VTEw7Cj4gPgo+ID4gICAgICAgICAg
ICAgICAgIFdBUk5fT04oYWRkciAmIChzeiAtIDEpKTsKPiA+ICAgICAgICAgICAgICAgICAvKgo+
ID4gLS0KPiA+IDIuMTEuMAo+ID4KPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ID4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiA+
IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCj4gPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
