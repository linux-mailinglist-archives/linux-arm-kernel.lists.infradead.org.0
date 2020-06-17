Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 731681FCB4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pijOpWtHseGLMR+kt1nL5MlDJRvPJOEu4UcdSH4I8uU=; b=nVwJPk50fUBJwPzXUmrQy+V61
	hxBc9wNWrcZtZn7iFoslMEdgiuqL/+3q6YZlCj4TJ6YEFum3B0BJgE4ulQFZkZb1N5sKkXUwwRy0X
	01g7moeD6OFpSmKLPk+jZfJ5wA4+WjqBvGWMF1JhBITql6g+wxSBXilApW36BlqsHNQRgCrSdND+z
	SH2DdmrhvJowgBXTtwFSqA8ofB4Su4SNYjWSYpkwqYrWqGyZP6Kjap7/hiCKyEzQaL2JKSopMqhcp
	+8ocFVr0kbIg9S072yhwoJCfvUYb3td+MVuI7KmB0hR338BWTUC20wKjCwMA1F4g/YffDluj0mBlq
	GKmx99AwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVeM-0004gN-SE; Wed, 17 Jun 2020 10:50:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVeA-0004fw-Lc
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:50:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1B32B31B;
 Wed, 17 Jun 2020 03:50:22 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ACC3F3F71F;
 Wed, 17 Jun 2020 03:50:20 -0700 (PDT)
Subject: Re: [PATCH] KVM: arm64: kvm_reset_vcpu() return code incorrect with
 SVE
To: Marc Zyngier <maz@kernel.org>
References: <20200617104339.35094-1-steven.price@arm.com>
 <c9761495762abe174e6546122916fc38@kernel.org>
From: Steven Price <steven.price@arm.com>
Message-ID: <969fe724-de5a-897b-fd55-ca48656e1c46@arm.com>
Date: Wed, 17 Jun 2020 11:50:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <c9761495762abe174e6546122916fc38@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_035022_796444_A052D974 
X-CRM114-Status: GOOD (  18.25  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Dave Martin <Dave.Martin@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTcvMDYvMjAyMCAxMTo0NywgTWFyYyBaeW5naWVyIHdyb3RlOgo+IEhpIFN0ZXZlbiwKPiAK
PiBPbiAyMDIwLTA2LTE3IDExOjQzLCBTdGV2ZW4gUHJpY2Ugd3JvdGU6Cj4+IElmIFNWRSBpcyBl
bmFibGVkIHRoZW4gJ3JldCcgY2FuIGJlIGFzc2lnbmVkIHRoZSByZXR1cm4gdmFsdWUgb2YKPj4g
a3ZtX3ZjcHVfZW5hYmxlX3N2ZSgpIHdoaWNoIG1heSBiZSAwIGNhdXNpbmcgZnV0dXJlICJnb3Rv
IG91dCIgc2l0ZXMgdG8KPj4gZXJyb25lb3VzbHkgcmV0dXJuIDAgb24gZmFpbHVyZSByYXRoZXIg
dGhhbiAtRUlOVkFMIGFzIGV4cGVjdGVkLgo+Pgo+PiBSZW1vdmUgdGhlIGluaXRpYWxpc2F0aW9u
IG9mICdyZXQnIGFuZCBtYWtlIHNldHRpbmcgdGhlIHJldHVybiB2YWx1ZQo+PiBleHBsaWNpdCB0
byBhdm9pZCB0aGlzIHNpdHVhdGlvbiBpbiB0aGUgZnV0dXJlLgo+Pgo+PiBGaXhlczogOWEzY2Rm
MjZlMzM2ICgiS1ZNOiBhcm02NC9zdmU6IEFsbG93IHVzZXJzcGFjZSB0byBlbmFibGUgU1ZFIAo+
PiBmb3IgdmNwdXMiKQo+PiBSZXBvcnRlZC1ieTogSmFtZXMgTW9yc2UgPGphbWVzLm1vcnNlQGFy
bS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFN0ZXZlbiBQcmljZSA8c3RldmVuLnByaWNlQGFybS5j
b20+Cj4+IC0tLQo+PiBUaGUgcHJvYmxlbWF0aWMgY2h1bmsgaXNuJ3QgdmlzaWJsZSBpbiB0aGUg
ZGlmZiwgc28gcmVwcm9kdWNlZCBoZXJlOgo+Pgo+PiDCoMKgwqDCoGlmICgha3ZtX2FybV92Y3B1
X3N2ZV9maW5hbGl6ZWQodmNwdSkpIHsKPj4gwqDCoMKgwqDCoMKgwqAgaWYgKHRlc3RfYml0KEtW
TV9BUk1fVkNQVV9TVkUsIHZjcHUtPmFyY2guZmVhdHVyZXMpKSB7Cj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmV0ID0ga3ZtX3ZjcHVfZW5hYmxlX3N2ZSh2Y3B1KTsKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBpZiAocmV0KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290
byBvdXQ7Cj4+IMKgwqDCoMKgwqDCoMKgIH0KPj4gwqDCoMKgwqB9IGVsc2Ugewo+PiDCoMKgwqDC
oMKgwqDCoCBrdm1fdmNwdV9yZXNldF9zdmUodmNwdSk7Cj4+IMKgwqDCoMKgfQo+Pgo+PiDCoGFy
Y2gvYXJtNjQva3ZtL3Jlc2V0LmMgfCAxMCArKysrKysrLS0tCj4+IMKgMSBmaWxlIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQva3ZtL3Jlc2V0LmMgYi9hcmNoL2FybTY0L2t2bS9yZXNldC5jCj4+IGluZGV4IGQzYjIw
OTAyMzcyNy4uZjEwNTc2MDNiNzU2IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2t2bS9yZXNl
dC5jCj4+ICsrKyBiL2FyY2gvYXJtNjQva3ZtL3Jlc2V0LmMKPj4gQEAgLTI0NSw3ICsyNDUsNyBA
QCBzdGF0aWMgaW50IGt2bV92Y3B1X2VuYWJsZV9wdHJhdXRoKHN0cnVjdCBrdm1fdmNwdSAKPj4g
KnZjcHUpCj4+IMKgICovCj4+IMKgaW50IGt2bV9yZXNldF92Y3B1KHN0cnVjdCBrdm1fdmNwdSAq
dmNwdSkKPj4gwqB7Cj4+IC3CoMKgwqAgaW50IHJldCA9IC1FSU5WQUw7Cj4+ICvCoMKgwqAgaW50
IHJldDsKPj4gwqDCoMKgwqAgYm9vbCBsb2FkZWQ7Cj4+IMKgwqDCoMKgIHUzMiBwc3RhdGU7Cj4+
Cj4+IEBAIC0yNjksMTUgKzI2OSwxOSBAQCBpbnQga3ZtX3Jlc2V0X3ZjcHUoc3RydWN0IGt2bV92
Y3B1ICp2Y3B1KQo+Pgo+PiDCoMKgwqDCoCBpZiAodGVzdF9iaXQoS1ZNX0FSTV9WQ1BVX1BUUkFV
VEhfQUREUkVTUywgdmNwdS0+YXJjaC5mZWF0dXJlcykgfHwKPj4gwqDCoMKgwqDCoMKgwqDCoCB0
ZXN0X2JpdChLVk1fQVJNX1ZDUFVfUFRSQVVUSF9HRU5FUklDLCB2Y3B1LT5hcmNoLmZlYXR1cmVz
KSkgewo+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKGt2bV92Y3B1X2VuYWJsZV9wdHJhdXRoKHZjcHUp
KQo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGt2bV92Y3B1X2VuYWJsZV9wdHJhdXRoKHZjcHUpKSB7
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IC1FSU5WQUw7Cj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4gK8KgwqDCoMKgwqDCoMKgIH0KPj4gwqDCoMKgwqAg
fQo+Pgo+PiDCoMKgwqDCoCBzd2l0Y2ggKHZjcHUtPmFyY2gudGFyZ2V0KSB7Cj4+IMKgwqDCoMKg
IGRlZmF1bHQ6Cj4+IMKgwqDCoMKgwqDCoMKgwqAgaWYgKHRlc3RfYml0KEtWTV9BUk1fVkNQVV9F
TDFfMzJCSVQsIHZjcHUtPmFyY2guZmVhdHVyZXMpKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGlmICghY3B1c19oYXZlX2NvbnN0X2NhcChBUk02NF9IQVNfMzJCSVRfRUwxKSkKPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGNwdXNfaGF2ZV9jb25zdF9jYXAoQVJNNjRfSEFTXzMy
QklUX0VMMSkpIHsKPiAKPiBEbyB5b3UgcmVhbGx5IG1lYW4gdGhpcz8gU2VlbXMgY291bnRlci1w
cm9kdWN0aXZlLi4uIDotKAoKQ2xlYXJseSBub3QuLi4gSSdtIHJlYWxseSBub3Qgc3VyZSBob3cg
SSBtYW5hZ2VkIHRvIHNjcmV3IHRoYXQgdXAgc28gCmJhZGx5IDooCgpJJ20gZ2xhZCBzb21lb25l
IGlzIGF3YWtlIQoKU29ycnkgYWJvdXQgdGhhdCwKClN0ZXZlCgo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldCA9IC1FSU5WQUw7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGdvdG8gb3V0Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBwc3RhdGUgPSBWQ1BVX1JFU0VUX1BTVEFURV9TVkM7Cj4+IMKg
wqDCoMKgwqDCoMKgwqAgfSBlbHNlIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBzdGF0
ZSA9IFZDUFVfUkVTRVRfUFNUQVRFX0VMMTsKPiAKPiBUaGFua3MsCj4gCj4gIMKgwqDCoMKgwqDC
oMKgIE0uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
