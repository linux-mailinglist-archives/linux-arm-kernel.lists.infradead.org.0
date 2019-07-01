Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C70C5C0F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 18:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mva0TUfKkYOubpmG//Ue4AeuPRANF1GvWc8xfM+fYzU=; b=M0xeEtZtQLGYw6
	OdRRKPiaZzMHh7DZuO0S8nUpio0NBjGAFo7YOQcf9bAqmqOdBJGg6JR0W+WzANncy8GU6i7/FzSnD
	9EhSqdsZVMK3Fd0+Wj+aDGBsf8JANyQRRtkcvR392sT55qS5fpmhafzf/XKMJvS53CyYP0zRBE8Kw
	QV/ebwFYfgU9+vY6CWuggY61ChzlsGTdkIORMJgHMGm7+X6YQvjwpkbBliGE/ROzWGZDhqgNDdjsr
	iHpo7TzBxohW3B+h3R3ybgfWnD1wOkY4UTRazBr/ggiYRCdkVL3SyDtUzeuR/BqF8SAPqVSh2uY73
	nfPJ+K1qeJ256ijQ2dTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhyuw-0005NP-Hk; Mon, 01 Jul 2019 16:12:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhyuq-0005Mo-DQ
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 16:12:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D27E2B;
 Mon,  1 Jul 2019 09:12:26 -0700 (PDT)
Received: from [10.1.31.185] (unknown [10.1.31.185])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3AE1C3F703;
 Mon,  1 Jul 2019 09:12:25 -0700 (PDT)
Subject: Re: [PATCH 18/59] KVM: arm64: nv: Trap EL1 VM register accesses in
 virtual EL2
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-19-marc.zyngier@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <37c2b50d-7a5a-335a-ed5e-6d568ee94cb7@arm.com>
Date: Mon, 1 Jul 2019 17:12:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-19-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_091228_546413_C306562D 
X-CRM114-Status: GOOD (  21.96  )
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
Cc: Andre Przywara <andre.przywara@arm.com>, Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDYvMjEvMTkgMTA6MzggQU0sIE1hcmMgWnluZ2llciB3cm90ZToKPiBGcm9tOiBDaHJpc3Rv
ZmZlciBEYWxsIDxjaHJpc3RvZmZlci5kYWxsQGxpbmFyby5vcmc+Cj4KPiBXaGVuIHJ1bm5pbmcg
aW4gdmlydHVhbCBFTDIgbW9kZSwgd2UgYWN0dWFsbHkgcnVuIHRoZSBoYXJkd2FyZSBpbiBFTDEK
PiBhbmQgdGhlcmVmb3JlIGhhdmUgdG8gdXNlIHRoZSBFTDEgcmVnaXN0ZXJzIHRvIGVuc3VyZSBj
b3JyZWN0IG9wZXJhdGlvbi4KPgo+IEJ5IHNldHRpbmcgdGhlIEhDUi5UVk0gYW5kIEhDUi5UVlJN
IHdlIGVuc3VyZSB0aGF0IHRoZSB2aXJ0dWFsIEVMMiBtb2RlCj4gZG9lc24ndCBzaG9vdCBpdHNl
bGYgaW4gdGhlIGZvb3Qgd2hlbiBzZXR0aW5nIHVwIHdoYXQgaXQgYmVsaWV2ZXMgdG8gYmUKPiBh
IGRpZmZlcmVudCBtb2RlJ3Mgc3lzdGVtIHJlZ2lzdGVyIHN0YXRlIChmb3IgZXhhbXBsZSB3aGVu
IHByZXBhcmluZyB0bwo+IHN3aXRjaCB0byBhIFZNKS4KQSBndWVzdCBoeXBlcnZpc29yIHdpdGgg
dmhlIGVuYWJsZWQgdXNlcyB0aGUgX0VMMTIgcmVnaXN0ZXIgbmFtZXMgd2hlbiBwcmVwYXJpbmcK
dG8gcnVuIGEgZ3Vlc3QsIGFuZCBhY2Nlc3NlcyB0byB0aG9zZSByZWdpc3RlcnMgYXJlIGFscmVh
ZHkgdHJhcHBlZCB3aGVuIHNldHRpbmcKSENSX0VMMi5OVi4gVGhpcyBwYXRjaCBhZmZlY3RzIG9u
bHkgbm9uLXZoZSBndWVzdCBoeXBlcnZpc29ycywgd291bGQgeW91IG1pbmQKdXBkYXRpbmcgdGhl
IG1lc3NhZ2UgdG8gcmVmbGVjdCB0aGF0Pwo+Cj4gV2UgY2FuIGxldmVyYWdlIHRoZSBleGlzdGlu
ZyBzeXNyZWdzIGluZnJhc3RydWN0dXJlIHRvIHN1cHBvcnQgdHJhcHBlZAo+IGFjY2Vzc2VzIHRv
IHRoZXNlIHJlZ2lzdGVycy4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9mZmVyIERhbGwgPGNo
cmlzdG9mZmVyLmRhbGxAbGluYXJvLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBNYXJjIFp5bmdpZXIg
PG1hcmMuenluZ2llckBhcm0uY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2t2bS9oeXAvc3dpdGNo
LmMgfCA0ICsrKysKPiAgYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYyAgIHwgNyArKysrKystCj4g
IDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQva3ZtL2h5cC9zd2l0Y2guYyBiL2FyY2gvYXJtNjQva3ZtL2h5
cC9zd2l0Y2guYwo+IGluZGV4IDdiNTVjMTFiMzBmYi4uNzkxYjI2NTcwMzQ3IDEwMDY0NAo+IC0t
LSBhL2FyY2gvYXJtNjQva3ZtL2h5cC9zd2l0Y2guYwo+ICsrKyBiL2FyY2gvYXJtNjQva3ZtL2h5
cC9zd2l0Y2guYwo+IEBAIC0xMzUsNiArMTM1LDEwIEBAIHN0YXRpYyB2b2lkIF9faHlwX3RleHQg
X19hY3RpdmF0ZV90cmFwcyhzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUpCj4gIHsKPiAgCXU2NCBoY3Ig
PSB2Y3B1LT5hcmNoLmhjcl9lbDI7Cj4gIAo+ICsJLyogVHJhcCBWTSBzeXNyZWcgYWNjZXNzZXMg
aWYgYW4gRUwyIGd1ZXN0IGlzIG5vdCB1c2luZyBWSEUuICovCj4gKwlpZiAodmNwdV9tb2RlX2Vs
Mih2Y3B1KSAmJiAhdmNwdV9lbDJfZTJoX2lzX3NldCh2Y3B1KSkKPiArCQloY3IgfD0gSENSX1RW
TSB8IEhDUl9UUlZNOwo+ICsKPiAgCXdyaXRlX3N5c3JlZyhoY3IsIGhjcl9lbDIpOwo+ICAKPiAg
CWlmIChjcHVzX2hhdmVfY29uc3RfY2FwKEFSTTY0X0hBU19SQVNfRVhUTikgJiYgKGhjciAmIEhD
Ul9WU0UpKQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2t2bS9zeXNfcmVncy5jIGIvYXJjaC9h
cm02NC9rdm0vc3lzX3JlZ3MuYwo+IGluZGV4IGUxODEzNTlhZGFkZi4uMDQ2NGQ4ZTI5Y2JhIDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQva3ZtL3N5c19yZWdzLmMKPiArKysgYi9hcmNoL2FybTY0
L2t2bS9zeXNfcmVncy5jCj4gQEAgLTQ0MCw3ICs0NDAsMTIgQEAgc3RhdGljIGJvb2wgYWNjZXNz
X3ZtX3JlZyhzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUsCj4gIAl1NjQgdmFsOwo+ICAJaW50IHJlZyA9
IHItPnJlZzsKPiAgCj4gLQlCVUdfT04oIXAtPmlzX3dyaXRlKTsKPiArCUJVR19PTighdmNwdV9t
b2RlX2VsMih2Y3B1KSAmJiAhcC0+aXNfd3JpdGUpOwo+ICsKPiArCWlmICghcC0+aXNfd3JpdGUp
IHsKPiArCQlwLT5yZWd2YWwgPSB2Y3B1X3JlYWRfc3lzX3JlZyh2Y3B1LCByZWcpOwo+ICsJCXJl
dHVybiB0cnVlOwo+ICsJfQo+ICAKPiAgCS8qIFNlZSB0aGUgMzJiaXQgbWFwcGluZyBpbiBrdm1f
aG9zdC5oICovCj4gIAlpZiAocC0+aXNfYWFyY2gzMikKCkZvciBtb3JlIGNvbnRleHQ6CgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYyBiL2FyY2gvYXJtNjQva3ZtL3N5c19y
ZWdzLmMKaW5kZXggZTE4MTM1OWFkYWRmLi4wNDY0ZDhlMjljYmEgMTAwNjQ0Ci0tLSBhL2FyY2gv
YXJtNjQva3ZtL3N5c19yZWdzLmMKKysrIGIvYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYwpAQCAt
NDI4LDMxICs0MjgsMzYgQEAgc3RhdGljIGJvb2wgYWNjZXNzX2Rjc3coc3RydWN0IGt2bV92Y3B1
ICp2Y3B1LArCoH0KwqAKwqAvKgrCoCAqIEdlbmVyaWMgYWNjZXNzb3IgZm9yIFZNIHJlZ2lzdGVy
cy4gT25seSBjYWxsZWQgYXMgbG9uZyBhcyBIQ1JfVFZNCsKgICogaXMgc2V0LiBJZiB0aGUgZ3Vl
c3QgZW5hYmxlcyB0aGUgTU1VLCB3ZSBzdG9wIHRyYXBwaW5nIHRoZSBWTQrCoCAqIHN5c19yZWdz
IGFuZCBsZWF2ZSBpdCBpbiBjb21wbGV0ZSBjb250cm9sIG9mIHRoZSBjYWNoZXMuCsKgICovCsKg
c3RhdGljIGJvb2wgYWNjZXNzX3ZtX3JlZyhzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUsCsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBzeXNfcmVn
X3BhcmFtcyAqcCwKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgY29uc3Qgc3RydWN0IHN5c19yZWdfZGVzYyAqcikKwqB7CsKgwqDCoMKgwqDCoMKgIGJv
b2wgd2FzX2VuYWJsZWQgPSB2Y3B1X2hhc19jYWNoZV9lbmFibGVkKHZjcHUpOwrCoMKgwqDCoMKg
wqDCoCB1NjQgdmFsOwrCoMKgwqDCoMKgwqDCoCBpbnQgcmVnID0gci0+cmVnOwrCoAotwqDCoMKg
wqDCoMKgIEJVR19PTighcC0+aXNfd3JpdGUpOworwqDCoMKgwqDCoMKgIEJVR19PTighdmNwdV9t
b2RlX2VsMih2Y3B1KSAmJiAhcC0+aXNfd3JpdGUpOworCivCoMKgwqDCoMKgwqAgaWYgKCFwLT5p
c193cml0ZSkgeworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwLT5yZWd2YWwgPSB2Y3B1
X3JlYWRfc3lzX3JlZyh2Y3B1LCByZWcpOworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gdHJ1ZTsKK8KgwqDCoMKgwqDCoCB9CsKgCsKgwqDCoMKgwqDCoMKgIC8qIFNlZSB0aGUg
MzJiaXQgbWFwcGluZyBpbiBrdm1faG9zdC5oICovCsKgwqDCoMKgwqDCoMKgIGlmIChwLT5pc19h
YXJjaDMyKQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gci0+cmVnIC8gMjsK
wqAKwqDCoMKgwqDCoMKgwqAgaWYgKCFwLT5pc19hYXJjaDMyIHx8ICFwLT5pc18zMmJpdCkgewrC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdmFsID0gcC0+cmVndmFsOwrCoMKgwqDCoMKg
wqDCoCB9IGVsc2UgewrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdmFsID0gdmNwdV9y
ZWFkX3N5c19yZWcodmNwdSwgcmVnKTsKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlm
IChyLT5yZWcgJSAyKQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHZhbCA9IChwLT5yZWd2YWwgPDwgMzIpIHwgKHU2NClsb3dlcl8zMl9iaXRzKHZhbCk7CsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdmFsID0gKCh1NjQpdXBwZXJfMzJfYml0cyh2YWwpIDw8
IDMyKSB8CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGxvd2VyXzMyX2JpdHMocC0+cmVndmFsKTsKwqDCoMKgwqDCoMKgwqAgfQoK
UGVyaGFwcyB0aGUgZnVuY3Rpb24gY29tbWVudCBzaG91bGQgYmUgdXBkYXRlZCB0byByZWZsZWN0
IHRoYXQgdGhlIGZ1bmN0aW9uIGlzCmFsc28gdXNlZCBmb3IgVk0gcmVnaXN0ZXIgdHJhcHMgZm9y
IGEgbm9uLXZoZSBndWVzdCBoeXBlcnZpc29yPwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
