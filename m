Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C0184C28
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 14:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2vUEQDvaWPJ+SgCMF0wl+9EugBIBvKiLY4SoGrKtz4=; b=ql5JNfESOqT9Qk
	oaDuXahhw7k5W8vXMBk/0W9IzFtQflr+5+3HlwA8+iJggM+LYiPiX1hFX0htF5zhmO2Ev/UzdSs6T
	AHGiAbAiRvtC0wjP4IYykEnyXMLy73wPIEipUOfiHQ4XtTH4PenJve58kicadWqMo4WLhqYu4JvsN
	altW7Bb96jR6gUChbEhWXXk6oDYlu9Si8Jm+85VyizopLUXH+A5zRA7ZhDvgG4tHBCYOBQ2VdGhWg
	iA3Eu3YZ+WbOAGB6J9plrCGXBuR9fLu4uInvQJ3j6FVigjQqWBIWAuBmsMFZ2oAgpu5Qe0qwzhs0s
	BnFtBMUth5oGvCoplE+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLWb-0001bq-PT; Wed, 07 Aug 2019 12:58:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLWN-0001b5-IT
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 12:58:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9E2B28;
 Wed,  7 Aug 2019 05:58:24 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 493D93F575;
 Wed,  7 Aug 2019 05:58:22 -0700 (PDT)
Subject: Re: [PATCH v10 20/22] x86: mm: Convert dump_pagetables to use
 walk_page_range
To: Andrew Morton <akpm@linux-foundation.org>
References: <20190731154603.41797-1-steven.price@arm.com>
 <20190731154603.41797-21-steven.price@arm.com>
 <20190806165823.3f735b45a7c4163aca20a767@linux-foundation.org>
From: Steven Price <steven.price@arm.com>
Message-ID: <066fa4ca-5a46-ba86-607f-9c3e16f79cde@arm.com>
Date: Wed, 7 Aug 2019 13:58:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190806165823.3f735b45a7c4163aca20a767@linux-foundation.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_055827_698889_C690C32B 
X-CRM114-Status: GOOD (  20.49  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDcvMDgvMjAxOSAwMDo1OCwgQW5kcmV3IE1vcnRvbiB3cm90ZToKPiBPbiBXZWQsIDMxIEp1
bCAyMDE5IDE2OjQ2OjAxICswMTAwIFN0ZXZlbiBQcmljZSA8c3RldmVuLnByaWNlQGFybS5jb20+
IHdyb3RlOgo+IAo+PiBNYWtlIHVzZSBvZiB0aGUgbmV3IGZ1bmN0aW9uYWxpdHkgaW4gd2Fsa19w
YWdlX3JhbmdlIHRvIHJlbW92ZSB0aGUKPj4gYXJjaCBwYWdlIHdhbGtpbmcgY29kZSBhbmQgdXNl
IHRoZSBnZW5lcmljIGNvZGUgdG8gd2FsayB0aGUgcGFnZSB0YWJsZXMuCj4+Cj4+IFRoZSBlZmZl
Y3RpdmUgcGVybWlzc2lvbnMgYXJlIHBhc3NlZCBkb3duIHRoZSBjaGFpbiB1c2luZyBuZXcgZmll
bGRzCj4+IGluIHN0cnVjdCBwZ19zdGF0ZS4KPj4KPj4gVGhlIEtBU0FOIG9wdGltaXNhdGlvbiBp
cyBpbXBsZW1lbnRlZCBieSBpbmNsdWRpbmcgdGVzdF9wP2QgY2FsbGJhY2tzCj4+IHdoaWNoIGNh
biBkZWNpZGUgdG8gc2tpcCBhbiBlbnRpcmUgdHJlZSBvZiBlbnRyaWVzCj4+Cj4+IC4uLgo+Pgo+
PiArc3RhdGljIGNvbnN0IHN0cnVjdCBwdGR1bXBfcmFuZ2UgcHRkdW1wX3Jhbmdlc1tdID0gewo+
PiArI2lmZGVmIENPTkZJR19YODZfNjQKPj4gIAo+PiAtI2RlZmluZSBwZ2RfbGFyZ2UoYSkgKHBn
dGFibGVfbDVfZW5hYmxlZCgpID8gcGdkX2xhcmdlKGEpIDogcDRkX2xhcmdlKF9fcDRkKHBnZF92
YWwoYSkpKSkKPj4gLSNkZWZpbmUgcGdkX25vbmUoYSkgIChwZ3RhYmxlX2w1X2VuYWJsZWQoKSA/
IHBnZF9ub25lKGEpIDogcDRkX25vbmUoX19wNGQocGdkX3ZhbChhKSkpKQo+PiArI2RlZmluZSBu
b3JtYWxpemVfYWRkcl9zaGlmdCAoNjQgLSAoX19WSVJUVUFMX01BU0tfU0hJRlQgKyAxKSkKPj4g
KyNkZWZpbmUgbm9ybWFsaXplX2FkZHIodSkgKChzaWduZWQgbG9uZykodSA8PCBub3JtYWxpemVf
YWRkcl9zaGlmdCkgXAo+PiArCQkJCT4+IG5vcm1hbGl6ZV9hZGRyX3NoaWZ0KQo+PiAgCj4+IC1z
dGF0aWMgaW5saW5lIGJvb2wgaXNfaHlwZXJ2aXNvcl9yYW5nZShpbnQgaWR4KQo+PiAtewo+PiAt
I2lmZGVmIENPTkZJR19YODZfNjQKPj4gLQkvKgo+PiAtCSAqIEEgaG9sZSBpbiB0aGUgYmVnaW5u
aW5nIG9mIGtlcm5lbCBhZGRyZXNzIHNwYWNlIHJlc2VydmVkCj4+IC0JICogZm9yIGEgaHlwZXJ2
aXNvci4KPj4gLQkgKi8KPj4gLQlyZXR1cm4JKGlkeCA+PSBwZ2RfaW5kZXgoR1VBUkRfSE9MRV9C
QVNFX0FERFIpKSAmJgo+PiAtCQkoaWR4IDwgIHBnZF9pbmRleChHVUFSRF9IT0xFX0VORF9BRERS
KSk7Cj4+ICsJezAsIFBUUlNfUEVSX1BHRCAqIFBHRF9MRVZFTF9NVUxUIC8gMn0sCj4+ICsJe25v
cm1hbGl6ZV9hZGRyKFBUUlNfUEVSX1BHRCAqIFBHRF9MRVZFTF9NVUxUIC8gMiksIH4wVUx9LAo+
IAo+IFRoaXMgYmxvd3MgdXAgYmVjYXVzZSBQR0RfTEVWRUxfTVVMVCBpcyBzb21ldGltZXMgbm90
IGEgY29uc3RhbnQuCj4gCj4geDg2XzY0IGFsbG1vZGNvbmZpZzoKPiAKPiBJbiBmaWxlIGluY2x1
ZGVkIGZyb20gLi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlX3R5cGVzLmg6MjQ5OjAsCj4g
ICAgICAgICAgICAgICAgICBmcm9tIC4vYXJjaC94ODYvaW5jbHVkZS9hc20vcGFyYXZpcnRfdHlw
ZXMuaDo0NSwKPiAgICAgICAgICAgICAgICAgIGZyb20gLi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9w
dHJhY2UuaDo5NCwKPiAgICAgICAgICAgICAgICAgIGZyb20gLi9hcmNoL3g4Ni9pbmNsdWRlL2Fz
bS9tYXRoX2VtdS5oOjUsCj4gICAgICAgICAgICAgICAgICBmcm9tIC4vYXJjaC94ODYvaW5jbHVk
ZS9hc20vcHJvY2Vzc29yLmg6MTIsCj4gICAgICAgICAgICAgICAgICBmcm9tIC4vYXJjaC94ODYv
aW5jbHVkZS9hc20vY3B1ZmVhdHVyZS5oOjUsCj4gICAgICAgICAgICAgICAgICBmcm9tIC4vYXJj
aC94ODYvaW5jbHVkZS9hc20vdGhyZWFkX2luZm8uaDo1MywKPiAgICAgICAgICAgICAgICAgIGZy
b20gLi9pbmNsdWRlL2xpbnV4L3RocmVhZF9pbmZvLmg6MzgsCj4gICAgICAgICAgICAgICAgICBm
cm9tIC4vYXJjaC94ODYvaW5jbHVkZS9hc20vcHJlZW1wdC5oOjcsCj4gICAgICAgICAgICAgICAg
ICBmcm9tIC4vaW5jbHVkZS9saW51eC9wcmVlbXB0Lmg6NzgsCj4gICAgICAgICAgICAgICAgICBm
cm9tIC4vaW5jbHVkZS9saW51eC9zcGlubG9jay5oOjUxLAo+ICAgICAgICAgICAgICAgICAgZnJv
bSAuL2luY2x1ZGUvbGludXgvd2FpdC5oOjksCj4gICAgICAgICAgICAgICAgICBmcm9tIC4vaW5j
bHVkZS9saW51eC93YWl0X2JpdC5oOjgsCj4gICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVk
ZS9saW51eC9mcy5oOjYsCj4gICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9k
ZWJ1Z2ZzLmg6MTUsCj4gICAgICAgICAgICAgICAgICBmcm9tIGFyY2gveDg2L21tL2R1bXBfcGFn
ZXRhYmxlcy5jOjExOgo+IC4vYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0YWJsZV82NF90eXBlcy5o
OjU2OjIyOiBlcnJvcjogaW5pdGlhbGl6ZXIgZWxlbWVudCBpcyBub3QgY29uc3RhbnQKPiAgI2Rl
ZmluZSBQVFJTX1BFUl9QR0QgNTEyCj4gICAgICAgICAgICAgICAgICAgICAgIF4KClRoaXMgaXMg
dmVyeSB1bmhlbHBmdWwgb2YgR0NDIC0gaXQncyBhY3R1YWxseSBQVFJTX1BFUl9QNEQgd2hpY2gg
aXNuJ3QKY29uc3RhbnQhCgo+IGFyY2gveDg2L21tL2R1bXBfcGFnZXRhYmxlcy5jOjM2Mzo2OiBu
b3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYUFRSU19QRVJfUEdE4oCZCj4gICB7MCwgUFRS
U19QRVJfUEdEICogUEdEX0xFVkVMX01VTFQgLyAyfSwKPiAgICAgICBefn5+fn5+fn5+fn4KPiAu
L2FyY2gveDg2L2luY2x1ZGUvYXNtL3BndGFibGVfNjRfdHlwZXMuaDo1NjoyMjogbm90ZTogKG5l
YXIgaW5pdGlhbGl6YXRpb24gZm9yIOKAmHB0ZHVtcF9yYW5nZXNbMF0uZW5k4oCZKQo+ICAjZGVm
aW5lIFBUUlNfUEVSX1BHRCA1MTIKPiAgICAgICAgICAgICAgICAgICAgICAgXgo+IGFyY2gveDg2
L21tL2R1bXBfcGFnZXRhYmxlcy5jOjM2Mzo2OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g
4oCYUFRSU19QRVJfUEdE4oCZCj4gICB7MCwgUFRSU19QRVJfUEdEICogUEdEX0xFVkVMX01VTFQg
LyAyfSwKPiAgICAgICBefn5+fn5+fn5+fn4KPiBhcmNoL3g4Ni9tbS9kdW1wX3BhZ2V0YWJsZXMu
YzozNjA6Mjc6IGVycm9yOiBpbml0aWFsaXplciBlbGVtZW50IGlzIG5vdCBjb25zdGFudAo+ICAj
ZGVmaW5lIG5vcm1hbGl6ZV9hZGRyKHUpICgoc2lnbmVkIGxvbmcpKHUgPDwgbm9ybWFsaXplX2Fk
ZHJfc2hpZnQpIFwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCj4gYXJjaC94ODYvbW0v
ZHVtcF9wYWdldGFibGVzLmM6MzY0OjM6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhu
b3JtYWxpemVfYWRkcuKAmQo+ICAge25vcm1hbGl6ZV9hZGRyKFBUUlNfUEVSX1BHRCAqIFBHRF9M
RVZFTF9NVUxUIC8gMiksIH4wVUx9LAo+ICAgIF5+fn5+fn5+fn5+fn5+Cj4gYXJjaC94ODYvbW0v
ZHVtcF9wYWdldGFibGVzLmM6MzYwOjI3OiBub3RlOiAobmVhciBpbml0aWFsaXphdGlvbiBmb3Ig
4oCYcHRkdW1wX3Jhbmdlc1sxXS5zdGFydOKAmSkKPiAgI2RlZmluZSBub3JtYWxpemVfYWRkcih1
KSAoKHNpZ25lZCBsb25nKSh1IDw8IG5vcm1hbGl6ZV9hZGRyX3NoaWZ0KSBcCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgXgo+IGFyY2gveDg2L21tL2R1bXBfcGFnZXRhYmxlcy5jOjM2NDoz
OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYbm9ybWFsaXplX2FkZHLigJkKPiAgIHtu
b3JtYWxpemVfYWRkcihQVFJTX1BFUl9QR0QgKiBQR0RfTEVWRUxfTVVMVCAvIDIpLCB+MFVMfSwK
PiAKPiBJIGRvbid0IGtub3cgd2hhdCB0byBkbyBhYm91dCB0aGlzIHNvIEknbGwgZHJvcCB0aGUg
c2VyaWVzLgoKTXkgYmVzdCBzb2x1dGlvbiB0byB0aGlzIGlzIHRvIHNpbXBseSBtYWtlIHB0ZHVt
cF9yYW5nZXMgZHluYW1pYyAoc2VlCmJlbG93KS4gQnV0IHRoZXJlIGFyZSBvdGhlciBwcm9ibGVt
cyB3aXRoIHRoaXMgc2VyaWVzICh0aGFua3MgZm9yCnNwb3R0aW5nIHRoZW0pLCBzbyBJJ2xsIHNl
bmQgb3V0IGFub3RoZXIgdmVyc2lvbiBsYXRlci4KClRoYW5rcywKClN0ZXZlCgotLS0tODwtLS0t
LQpkaWZmIC0tZ2l0IGEvYXJjaC94ODYvbW0vZHVtcF9wYWdldGFibGVzLmMgYi9hcmNoL3g4Ni9t
bS9kdW1wX3BhZ2V0YWJsZXMuYwppbmRleCA5OThjN2Y0Njc2M2MuLjhmYzEyOWZmOTg1ZSAxMDA2
NDQKLS0tIGEvYXJjaC94ODYvbW0vZHVtcF9wYWdldGFibGVzLmMKKysrIGIvYXJjaC94ODYvbW0v
ZHVtcF9wYWdldGFibGVzLmMKQEAgLTM1Myw3ICszNTMsMTAgQEAgc3RhdGljIHZvaWQgbm90ZV9w
YWdlKHN0cnVjdCBwdGR1bXBfc3RhdGUgKnB0X3N0LAp1bnNpZ25lZCBsb25nIGFkZHIsIGludCBs
ZXZlbCwKICAgICAgICB9CiB9Cgotc3RhdGljIGNvbnN0IHN0cnVjdCBwdGR1bXBfcmFuZ2UgcHRk
dW1wX3Jhbmdlc1tdID0geworc3RhdGljIHZvaWQgcHRkdW1wX3dhbGtfcGdkX2xldmVsX2NvcmUo
c3RydWN0IHNlcV9maWxlICptLCBzdHJ1Y3QKbW1fc3RydWN0ICptbSwKKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgYm9vbCBjaGVja3d4LCBib29sIGRtZXNnKQoreworICAg
ICAgIGNvbnN0IHN0cnVjdCBwdGR1bXBfcmFuZ2UgcHRkdW1wX3Jhbmdlc1tdID0gewogI2lmZGVm
IENPTkZJR19YODZfNjQKCiAjZGVmaW5lIG5vcm1hbGl6ZV9hZGRyX3NoaWZ0ICg2NCAtIChfX1ZJ
UlRVQUxfTUFTS19TSElGVCArIDEpKQpAQCAtMzY4LDkgKzM3MSw2IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgcHRkdW1wX3JhbmdlIHB0ZHVtcF9yYW5nZXNbXSA9IHsKICAgICAgICB7MCwgMH0KIH07
Cgotc3RhdGljIHZvaWQgcHRkdW1wX3dhbGtfcGdkX2xldmVsX2NvcmUoc3RydWN0IHNlcV9maWxl
ICptLCBzdHJ1Y3QKbW1fc3RydWN0ICptbSwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgYm9vbCBjaGVja3d4LCBib29sIGRtZXNnKQotewogICAgICAgIHN0cnVjdCBwZ19z
dGF0ZSBzdCA9IHsKICAgICAgICAgICAgICAgIC5wdGR1bXAgPSB7CiAgICAgICAgICAgICAgICAg
ICAgICAgIC5ub3RlX3BhZ2UgICAgICA9IG5vdGVfcGFnZSwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
