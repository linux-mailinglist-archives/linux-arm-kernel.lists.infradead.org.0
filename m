Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163B6C37A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HqqLNu+vcj+tfnBzbsI//vVZEdnprd1CS8giINlbyRg=; b=NV17kVNdjCih/t
	baYtZRbnEeQzF8/nPfnjtXmJrFKzfFeUqhTW8FB+f0aif/EAS32PmN39YE8migKKxJ7vVkAijj0lK
	nUdHsZT0oe2B3cRckCiIENRCYab6YM4IKyTVFbVEI4vYY4RnGTthsQ96pjCDztIm6OI2XnQ11wY5T
	UOn3dXt80hDEFuCBRJb/NABxFPW1sTteVQPcRRL2J1BoIeKIYt2eIeRiTTzlybFlRmmmVLhWQht6Z
	SPN+Q2NqpKDahufmE0lvqVyJFPAr+2kMvzr72TMMTh+rN/9hMwFc0Aa18Fv0ZsBC7gzOQasEAX9jH
	V3G2t1iKmSL0nPNLSpQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJJj-0000A4-6u; Tue, 01 Oct 2019 14:39:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJJX-000080-Bf
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:39:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BFB4F1000;
 Tue,  1 Oct 2019 07:39:42 -0700 (PDT)
Received: from [10.37.8.149] (unknown [10.37.8.149])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6C8253F71A;
 Tue,  1 Oct 2019 07:39:41 -0700 (PDT)
Subject: Re: [PATCH v3 3/5] arm64: vdso32: Fix compilation warning
To: Will Deacon <will@kernel.org>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
 <20190926214342.34608-4-vincenzo.frascino@arm.com>
 <20191001132108.jx2x7quyk2p2vyfw@willie-the-truck>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <adc03e22-6317-a6c1-2d3c-e1fddcd97edd@arm.com>
Date: Tue, 1 Oct 2019 15:41:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001132108.jx2x7quyk2p2vyfw@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_073943_487325_1B09D02B 
X-CRM114-Status: GOOD (  20.26  )
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMS8xOSAyOjIxIFBNLCBXaWxsIERlYWNvbiB3cm90ZToKPiBPbiBUaHUsIFNlcCAyNiwg
MjAxOSBhdCAxMDo0Mzo0MFBNICswMTAwLCBWaW5jZW56byBGcmFzY2lubyB3cm90ZToKPj4gQXMg
cmVwb3J0ZWQgYnkgV2lsbCBEZWFjb24gdGhlIGZvbGxvd2luZyBjb21waWxhdGlvbiB3YXJuaW5n
IGFwcGVhcnMKPj4gZHVyaW5nIHRoZSBjb21waWxhdGlvbiBvZiB0aGUgdmRzbzMyOgo+Pgo+PiBJ
biBmaWxlIGluY2x1ZGVkIGZyb20gLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3RocmVhZF9pbmZv
Lmg6MTc6MCwKPj4gICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC90aHJlYWRf
aW5mby5oOjM4LAo+PiAgICAgICAgICAgICAgICAgIGZyb20gLi9hcmNoL2FybTY0L2luY2x1ZGUv
YXNtL3ByZWVtcHQuaDo1LAo+PiAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4
L3ByZWVtcHQuaDo3OCwKPj4gICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9z
cGlubG9jay5oOjUxLAo+PiAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L3Nl
cWxvY2suaDozNiwKPj4gICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC90aW1l
Lmg6NiwKPj4gICAgICAgICAgICAgICAgICBmcm9tIC4uLi93b3JrL2xpbnV4L2xpYi92ZHNvL2dl
dHRpbWVvZmRheS5jOjcsCj4+ICAgICAgICAgICAgICAgICAgZnJvbSA8Y29tbWFuZC1saW5lPjow
Ogo+PiAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vbWVtb3J5Lmg6IEluIGZ1bmN0aW9uIOKAmF9f
dGFnX3NldOKAmToKPj4gLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5oOjIzMzoxNTog
d2FybmluZzogY2FzdCBmcm9tIHBvaW50ZXIgdG8KPj4gaW50ZWdlciBvZiBkaWZmZXJlbnQgc2l6
ZSBbLVdwb2ludGVyLXRvLWludC1jYXN0XQo+PiAgIHU2NCBfX2FkZHIgPSAodTY0KWFkZHIgJiB+
X190YWdfc2hpZnRlZCgweGZmKTsKPj4gICAgICAgICAgICAgICAgXgo+PiBJbiBmaWxlIGluY2x1
ZGVkIGZyb20gLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3BndGFibGUtaHdkZWYuaDo4OjAsCj4+
ICAgICAgICAgICAgICAgICAgZnJvbSAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcHJvY2Vzc29y
Lmg6MzQsCj4+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20v
ZWxmLmg6MTE4LAo+PiAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2VsZi5o
OjUsCj4+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvZWxmbm90ZS5oOjYy
LAo+PiAgICAgICAgICAgICAgICAgIGZyb20gYXJjaC9hcm02NC9rZXJuZWwvdmRzbzMyL25vdGUu
YzoxMToKPj4gLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5oOiBJbiBmdW5jdGlvbiDi
gJhfX3RhZ19zZXTigJk6Cj4+IC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9tZW1vcnkuaDoyMzM6
MTU6IHdhcm5pbmc6IGNhc3QgZnJvbSBwb2ludGVyIHRvCj4+IGludGVnZXIgb2YgZGlmZmVyZW50
IHNpemUgWy1XcG9pbnRlci10by1pbnQtY2FzdF0KPj4gICB1NjQgX19hZGRyID0gKHU2NClhZGRy
ICYgfl9fdGFnX3NoaWZ0ZWQoMHhmZik7Cj4+ICAgICAgICAgICAgICAgIF4KPj4KPj4gVGhpcyBo
YXBwZW5zIGJlY2F1c2UgZmV3IDY0IGJpdCBjb21waWxhdGlvbiBoZWFkZXJzIGFyZSBpbmNsdWRl
ZCBkdXJpbmcKPj4gdGhlIGdlbmVyYXRpb24gb2YgdmRzbzMyLgo+Pgo+PiBGaXggdGhlIGlzc3Vl
IHJlZGVmaW5pbmcgdGhlIF9fdGFnX3NldCBmdW5jdGlvbi4KPj4KPj4gTm90ZTogVGhpcyBmaXgg
aXMgbWVhbnQgdG8gYmUgdGVtcG9yYXJ5LCBhIG1vcmUgY29tcHJlaGVuc2l2ZSBzb2x1dGlvbgo+
PiBiYXNlZCBvbiB0aGUgcmVmYWN0b3Jpbmcgb2YgdGhlIGdlbmVyaWMgaGVhZGVycyB3aWxsIGJl
IHByb3ZpZGVkIHdpdGggYQo+PiBmdXR1cmUgcGF0Y2ggc2V0LiBBdCB0aGF0IHBvaW50IGl0IHdp
bGwgYmUgcG9zc2libGUgdG8gcmV2ZXJ0IHRoaXMgcGF0Y2guCj4+Cj4+IENjOiBXaWxsIERlYWNv
biA8d2lsbEBrZXJuZWwub3JnPgo+PiBDYzogQ2F0YWxpbiBNYXJpbmFzIDxjYXRhbGluLm1hcmlu
YXNAYXJtLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogVmluY2Vuem8gRnJhc2Npbm8gPHZpbmNlbnpv
LmZyYXNjaW5vQGFybS5jb20+Cj4+IC0tLQo+PiAgYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9tZW1v
cnkuaCB8IDMgKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4+Cj4+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5oIGIvYXJjaC9hcm02NC9p
bmNsdWRlL2FzbS9tZW1vcnkuaAo+PiBpbmRleCBiNjFiNTBiZjY4YjEuLmM2MWIyZWI1MGEzYiAx
MDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9tZW1vcnkuaAo+PiArKysgYi9h
cmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5oCj4+IEBAIC0yMjgsMTEgKzIyOCwxNCBAQCBz
dGF0aWMgaW5saW5lIHVuc2lnbmVkIGxvbmcga2FzbHJfb2Zmc2V0KHZvaWQpCj4+ICAjZGVmaW5l
IF9fdGFnX2dldChhZGRyKQkJMAo+PiAgI2VuZGlmIC8qIENPTkZJR19LQVNBTl9TV19UQUdTICov
Cj4+ICAKPj4gKyNpZmRlZiBfX2FhcmNoNjRfXwo+PiArLyogRG8gbm90IGF0dGVtcHQgdG8gY29t
cGlsZSB0aGlzIGNvZGUgd2l0aCBjb21wYXQgdmRzbyAqLwo+PiAgc3RhdGljIGlubGluZSBjb25z
dCB2b2lkICpfX3RhZ19zZXQoY29uc3Qgdm9pZCAqYWRkciwgdTggdGFnKQo+PiAgewo+PiAgCXU2
NCBfX2FkZHIgPSAodTY0KWFkZHIgJiB+X190YWdfc2hpZnRlZCgweGZmKTsKPj4gIAlyZXR1cm4g
KGNvbnN0IHZvaWQgKikoX19hZGRyIHwgX190YWdfc2hpZnRlZCh0YWcpKTsKPj4gIH0KPj4gKyNl
bmRpZgo+IAo+IFNvcnJ5LCBidXQgSSdtIG5vdCB0YWtpbmcgdGhpcy4KPiAKPiBJIGtub3cgeW91
J3JlIHRyeWluZyB0byBmaXggdGhlIGlzc3VlcyBJIHJlcG9ydGVkIGFzIHF1aWNrbHkgYXMgeW91
IGNhbiAoYW5kCj4gdGhhbmsgeW91IGZvciB0aGF0KSwgYnV0IEknbSBzdXJlIHRoYXQgeW91IGFn
cmVlIHRoaXMgbmVlZHMgbW9yZSB0aG91Z2h0IHRvCj4gZGV2ZWxvcCBhIHByb3BlciBzb2x1dGlv
biB0byB3aGF0IGlzIGEgbXVjaCBiaWdnZXIgaXNzdWUgdGhhbiBjYW4gYmUgc29sdmVkCj4gYnkg
c3ByaW5rbGluZyAjaWZkZWZzLiBJIGNhbiBsaXZlIHdpdGggdGhlIHdhcm5pbmcgb24gdGhlIGJh
c2lzIHRoYXQgYQo+IHByb3BlciBmaXggaXMgaW4gdGhlIHBpcGVsaW5lLCBidXQgaW4gdGhlIG1l
YW50aW1lIGl0IGNhbiBzZXJ2ZSBhcyBhCj4gcmVtaW5kZXIgdGhhdCB3ZSdyZSBub3QgZG9uZSBo
ZXJlLgo+CgpUaGlzIHdhcyBteSBvcmlnaW5hbCBwcmVmZXJlbmNlIGFzIHdlbGwsIGlmIHdlIHNp
bGVuY2UgdGhlIHdhcm5pbmdzIHdlIHRlbmQgdG8KZm9yZ2V0IGFib3V0IHRoZW0uIFNpbmNlIHlv
dSByZXBvcnRlZCB0aGUgaXNzdWUgYXMgdXJnZW50LCBJIHJlYWN0ZWQgd2l0aApzb21ldGhpbmcg
dGhhdCBmaXhlcyBpdCB0ZW1wb3JhcmlseSwgYnV0IEkgaGF2ZSBub3Qgb2JqZWN0aW9ucyBpZiB5
b3Ugd2FudCB0bwp3YWl0IGZvciBhIG1vcmUgY29tcHJlaGVuc2l2ZSBzb2x1dGlvbi4KCj4gV2ls
bAo+IAoKLS0gClJlZ2FyZHMsClZpbmNlbnpvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
