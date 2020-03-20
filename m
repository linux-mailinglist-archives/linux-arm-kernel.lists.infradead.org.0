Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3739718CCF3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 12:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFOZ2sfNqHrXg/Rw+/Fm4F3OrwW52NBFKM7wd/R6I9s=; b=pSi3cj1Ecku84q
	e6R6a9ed+iyjDCxxTXJJzJtPFLzzer/4NdQ9cfrW99kmtbgBwXOPByqaqzLgGHESO2GLiRy+WEBZt
	7K5DotaSEwPGwgzZwZ2CKG8Qz5DV3VKAC+iVEg7935i+WQP+gM11GX2Gb0oN9aGVhMVQ841ZntPVp
	kQfR6EVaBkbQwX08uWV24pqgO9Nr9Xs3EYSpvJ/lNAk3c3q/8j5jSsP2XL1X1ZaT/XAPBwrgdolSy
	nuwa7dD6agzTFFZquWW7pHkLpBvOgyfirUxcn1icw0zHtPuXO55/Tx7UrmPJ9i9z7Jg/qEqrBa0M9
	/l+qk2OEVYINVwebU01Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFFml-0007Xf-S5; Fri, 20 Mar 2020 11:25:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFFmc-0007X9-Sp
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 11:25:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F046231B;
 Fri, 20 Mar 2020 04:25:45 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7E2EE3F85E;
 Fri, 20 Mar 2020 04:25:44 -0700 (PDT)
Date: Fri, 20 Mar 2020 11:25:38 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
Subject: Re: [PATCH] driver/perf: Add PMU driver for the ARM DMC-620 memory
 controller.
Message-ID: <20200320105315.GA35932@C02TD0UTHF1T.local>
References: <1584491381-31492-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200319151646.GC4876@lakrids.cambridge.arm.com>
 <23AD5E45-15E3-4487-9B0D-0D9554DD9DE8@amperemail.onmicrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23AD5E45-15E3-4487-9B0D-0D9554DD9DE8@amperemail.onmicrosoft.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_042547_014835_DF28E4D5 
X-CRM114-Status: GOOD (  25.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Tuan Phan <tuanphan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXIgMTksIDIwMjAgYXQgMTI6MDM6NDNQTSAtMDcwMCwgVHVhbiBQaGFuIHdyb3Rl
Ogo+IEhpIE1hcmssCj4gUGxlYXNlIGZpbmQgbXkgY29tbWVudHMgYmVsb3cuCgpIaSBUdWFuLAoK
QXMgV2lsbCBzYWlkLCAqcGxlYXNlKiBzZXQgdXAgYSBtb3JlIHVzdWFsIG1haWwgY2xpbmV0IGNv
bmZpZ3VyYXRpb24gaWYKeW91IGNhbi4gVGhlIHJlcGx5IHN0eWxlICh3aXRoIGxpbmVzIHN0YXJ0
aW5nIHdpdGggJz0+JykgaXMgdW51c3VhbCBhbmQKdmVyeSBwYWluZnVsIHRvIHNwb3QuCgo+ID4g
T24gTWFyIDE5LCAyMDIwLCBhdCA4OjE2IEFNLCBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBh
cm0uY29tPiB3cm90ZToKPiA+IAo+ID4gSGkgVHVhbiwKPiA+IAo+ID4gT24gVHVlLCBNYXIgMTcs
IDIwMjAgYXQgMDU6Mjk6MzhQTSAtMDcwMCwgVHVhbiBQaGFuIHdyb3RlOgo+ID4+IERNQy02MjAg
UE1VIHN1cHBvcnRzIHRvdGFsIDEwIGNvdW50ZXJzIHdoaWNoIGVhY2ggaXMKPiA+PiBpbmRlcGVu
ZGVudGx5IHByb2dyYW1tYWJsZSB0byBkaWZmZXJlbnQgZXZlbnRzIGFuZCBjYW4KPiA+PiBiZSBz
dGFydGVkIGFuZCBzdG9wcGVkIGluZGl2aWR1YWxseS4KPiA+IAo+ID4gTG9va2luZyBhdCB0aGUg
VFJNIGZvciBETUMtNjIwLCB0aGUgUE1VIHJlZ2lzdGVycyBhcmUgbm90IGluIGEgc2VwYXJhdGUK
PiA+IGZyYW1lIGZyb20gdGhlIG90aGVyIERNQyBjb250cm9sIHJlZ2lzdGVycywgYW5kIHN0YXJ0
IGF0IG9mZnNldCAweEEwMAo+ID4gKEFLQSAyNTYwKS4gSSB3b3VsZCBnZW5lcmFsbHkgZXhwZWN0
IHRoYXQgYWNjZXNzIHRvIHRoZSBETUMgY29udHJvbAo+ID4gcmVnaXN0ZXJzIHdhcyByZXN0cmlj
dGVkIHRvIHRoZSBzZWN1cmUgd29ybGQ7IGlzIHRoYXQgbm90IHRoZSBjYXNlIG9uCj4gPiB5b3Vy
IHBsYXRmb3JtPwo+ID4gCj4gPiBJIGFzayBiZWNhdXNlIGlmIHRob3NlIGFyZSBub3QgcmVzdHJp
Y3RlZCwgdGhlIE5vcm1hbCB3b3JsZCBjb3VsZAo+ID4gcG90ZW50aWFsbHkgdW5kZXJtaW5lIHRo
ZSBTZWN1cmUgd29ybGQgdGhyb3VnaCB0aGlzIChlLmcuIHBsYXlpbmcgd2l0aAo+ID4gdHJhaW5p
bmcgc2V0dGluZ3MsIG1lc3Npbmcgd2l0aCB0aGUgcGh5c2ljYWwgbWVtb3J5IG1hcCwgaW5qZWN0
aW5nIFJBUwo+ID4gZXJyb3JzKS4gSGF2ZSB5b3UgY29uc2lkZXJlZCB0aGlzPwo+ID0+IE9ubHkg
UE1VIHJlZ2lzdGVycyBjYW4gYmUgYWNjZXNzZWQgd2l0aGluIG5vcm1hbCB3b3JsZC4gSSBvbmx5
IHBhc3MKPiBQTVUgcmVnaXN0ZXJzIChvZmZzZXQgMHhBMDApIHRvIGtlcm5lbCBzbyBzaG91bGRu
4oCZdCBiZSBwcm9ibGVtLgoKU3VyZSwgeW91IG9ubHkgKmRlc2NyaWJlKiB0aGF0IGluIHRoZSBB
Q1BJIHRhYmxlcywgYnV0IEkgY2FuJ3Qgc2VlIGhvdwp0aGF0J3MgYWNjZXNzIGNvbnRyb2wgaXMg
ZW5mb3JjZWQgaW4gdGhlIGhhcmR3YXJlLCBiZWNhdXNlIHRoZXNlCnJlZ2lzdGVycyBmYWxsIGlu
IHRoZSBzYW1lIDRLIHBhZ2UgYXMgb3RoZXIgY29udHJvbCByZWdpc3RlcnMsIGFuZApBRkFJQ1Qg
dGhlIElQIGRvZXNuJ3QgZGlzdGluZ3Vpc2ggUy9OUyBhY2Nlc3Nlcy4KCklmIHRoZSBTZWN1cmUg
d29ybGQgb24geW91ciBwYXJ0IHVzZXMgRFJBTSAoaW5jbHVkaW5nIHRoZSBzZWN1cmUKcG9ydGlv
bnMgb2YgSVBzIGxpa2UgU01NVXMpLCB5b3UgKm11c3QqIGVuc3VyZSB0aGF0IHRoZSBOb3JtYWwg
d29ybGQKY2Fubm90IGFjY2VzcyB0aG9zZSBvdGhlciBjb250cm9sIHJlZ2lzdGVycywgb3IgaXQg
Y2FuIGNvcnJ1cHQgU2VjdXJlCndvcmxkIHN0YXRlIGFuZCBlc2NhbGF0ZSBwcml2aWxlZ2UuCgpJ
cyB0aGF0IG5vdCBhIGNvbmNlcm4gaGVyZT8KCj4gPj4gRE1DLTYyMCBQTVUgZGV2aWNlcyBhcmUg
bmFtZWQgYXMgYXJtX2RtYzYyMF88dWlkPiB3aGVyZQo+ID4+IDx1aWQ+IGlzIHRoZSBVSUQgb2Yg
RE1DLTYyMCBQTVUgQUNQSSBub2RlLiBDdXJyZW50bHksIGl0IG9ubHkKPiA+PiBzdXBwb3J0cyBB
Q1BJLiBPdGhlciBwbGF0Zm9ybXMgZmVlbCBmcmVlIHRvIHRlc3QgYW5kIGFkZAo+ID4+IHN1cHBv
cnQgZm9yIGRldmljZSB0cmVlLgo+ID4+IAo+ID4+IFVzYWdlIGV4YW1wbGU6Cj4gPj4gICNwZXJm
IHN0YXQgLWUgYXJtX2RtYzYyMF8wL2Nsa19jeWNsZV9jb3VudC8gLUMgMAo+ID4+ICBHZXQgcGVy
ZiBldmVudCBmb3IgY2xrX2N5Y2xlX2NvdW50IGNvdW50ZXIuCj4gPj4gCj4gPj4gICNwZXJmIHN0
YXQgLWUgYXJtX2RtYzYyMF8wL2Nsa2RpdjJfYWxsb2NhdGUsbWFzaz0weDFmLG1hdGNoPTB4MmYs
Cj4gPj4gIGluY3I9MixpbnZlcnQ9MS8gLUMgMAo+ID4+ICBUaGUgYWJvdmUgZXhhbXBsZSBzaG93
cyBob3cgdG8gc3BlY2lmeSBtYXNrLCBtYXRjaCwgaW5jciwKPiA+PiAgaW52ZXJ0IHBhcmFtZXRl
cnMgZm9yIGNsa2RpdjJfYWxsb2NhdGUgZXZlbnQuCj4gPiAKPiA+IFsuLi5dCj4gPiAKPiA+PiAr
I2RlZmluZSBETUM2MjBfQ05UX01BWF9QRVJJT0QJCQkJMHhmZmZmZmZmZgo+ID4+ICsjZGVmaW5l
IERNQzYyMF9QTVVfQ0xLRElWMl9NQVhfQ09VTlRFUlMJCQk4Cj4gPj4gKyNkZWZpbmUgRE1DNjIw
X1BNVV9DTEtfTUFYX0NPVU5URVJTCQkJMgo+ID4+ICsjZGVmaW5lIERNQzYyMF9QTVVfTUFYX0NP
VU5URVJTCQkJCVwKPiA+PiArCShETUM2MjBfUE1VX0NMS0RJVjJfTUFYX0NPVU5URVJTICsgRE1D
NjIwX1BNVV9DTEtfTUFYX0NPVU5URVJTKQo+ID4+ICsKPiA+PiArI2RlZmluZSBETUM2MjBfUE1V
X09WRVJGTE9XX1NUQVRVU19DTEtESVYyX09GRlNFVAk4Cj4gPiAKPiA+IFRoaXMgYXBwZWFycyB0
byBiZSByZWxhdGl2ZSB0byAweEEwMC4gV2hhdCBleGFjdGx5IGRvZXMgeW91ciBBQ1BJCj4gPiBk
ZXNjcmlwdGlvbiBwcm92aWRlPyBUaGUgd2hvbGUgc2V0IG9mIERNQyByZWdpc3RlcnMsIG9yIGp1
c3QgdGhlIFBNVQo+ID4gcmVnaXN0ZXJzPwo+ID0+IEp1c3QgUE1VIHJlZ2lzdGVycyBmcm9tIDB4
QTAwIHRvIDB4QkZGLgoKSSBkb24ndCBiZWxpZXZlIHRoYXQgaXMgY29ycmVjdDsgc2VlIGJlbG93
IHcuci50LiB0aGUgQUNQSSBiaW5kaW5nLgoKPiA+PiArc3RhdGljIGludCBhcm1fZG1jNjIwX3Bt
dV9kZXZfaW5pdChzdHJ1Y3QgYXJtX2RtYzYyMF9wbXUgKmRtYzYyMF9wbXUpCj4gPj4gK3sKPiA+
PiArCXN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYgPSBkbWM2MjBfcG11LT5wZGV2Owo+ID4+
ICsJaW50IHJldDsKPiA+PiArCj4gPj4gKwlyZXQgPSBkZXZtX3JlcXVlc3RfaXJxKCZwZGV2LT5k
ZXYsIGRtYzYyMF9wbXUtPmlycSwKPiA+PiArCQkJCWFybV9kbWM2MjBfcG11X2hhbmRsZV9pcnEs
Cj4gPj4gKwkJCQlJUlFGX1NIQVJFRCwKPiA+PiArCQkJCWRldl9uYW1lKCZwZGV2LT5kZXYpLCBk
bWM2MjBfcG11KTsKPiA+IAo+ID4gVGhpcyBzaG91bGQgaGF2ZSBJUlFGX05PQkFMQU5DSU5HIHwg
SVJRRl9OT19USFJFQUQuIEkgZG9uJ3QgdGhpbmsgd2UKPiA+IHNob3VsZCBoYXZlIElSUUZfU0hB
UkVELgo+ID0+IEkgYWdyZWUgb24gaGF2aW5nIElSUUZfTk9CQUxBTkNJTkcgYW5kIElSUUZfTk9f
VEhSRUFELiBCdXQKPiBJUlFGX1NIQVJFRCBpcyBuZWVkZWQuIEluIG91ciBwbGF0Zm9ybSBhbGwg
RE1DNjIwcyBzaGFyZSBzYW1lIElSUXMgYW5kCj4gYW55IGNwdXMgY2FuIGFjY2VzcyB0aGUgcG11
IHJlZ2lzdGVycy4KCkxpbnV4IG5lZWRzIHRvIGVuc3VyZSB0aGF0IHRoZSBzYW1lIGluc3RhbmNl
IGlzIGNvbmNpc3RlbnRseSBhY2Nlc3NlZApmcm9tIHRoZSBzYW1lIENQVSwgYW5kIG5lZWRzIHRv
IG1pZ3JhdGUgdGhlIElSUSB0byBoYW5kbGUgdGhhdC4gR2l2ZW4gd2UKZG8gdGhhdCBvbiBhIHBl
ci1pbnN0YW5jZSBiYXNpcywgd2UgY2Fubm90IHNoYXJlIHRoZSBJUlEgd2l0aCBhbm90aGVyCmlu
c3RhbmNlLgoKUGxlYXNlIGZlZWQgYmFjayB0byB5b3UgSFcgZGVzaWduZXJzIHRoYXQgbXV4aW5n
IElSUXMgbGlrZSB0aGlzIGNhdXNlcwpzaWduaWZpY2FudCBwcm9ibGVtcyBmb3Igc29mdHdhcmUu
Cgo+ID4gCj4gPiBbLi4uXQo+ID4gCj4gPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgYWNwaV9kZXZp
Y2VfaWQgYXJtX2RtYzYyMF9hY3BpX21hdGNoW10gPSB7Cj4gPj4gKwl7ICJBUk1IRDYyMCIsIDB9
LAo+ID4+ICsJe30sCj4gPj4gK307Cj4gPiAKPiA+IEp1c3QgdG8gY2hlY2ssIHdhcyB0aGlzIElE
IGFsbG9jYXRlZCBieSBBcm0sIG9yIGhhdmUgeW91IGFsbG9jYXRlZCBpdD8KPiA9PiBJRCB3YXMg
YWxsb2NhdGVkIGJ5IEFSTS4gUGxlYXNlIHJlZmVyIHRvIAo+IGh0dHBzOi8vc3RhdGljLmRvY3Mu
YXJtLmNvbS9kZW4wMDkzL2EvREVOMDA5M19BQ1BJX0FybV9Db21wb25lbnRzXzEuMC5wZGYgPGh0
dHBzOi8vc3RhdGljLmRvY3MuYXJtLmNvbS9kZW4wMDkzL2EvREVOMDA5M19BQ1BJX0FybV9Db21w
b25lbnRzXzEuMC5wZGY+CgpUaGFua3MgZm9yIHRoZSBsaW5rISBGb3IgdGhpcyBfSElELCB0aGUg
ZG9jdW1lbnQgc2F5cyB0aGUgX0NSUyBjb250YWlucwphIFFXb3JkTWVtb3J5IEJhc2UgYWRkcmVz
cywgd2hpY2ggdGhlIGZ1bGwgZGVzY3JpcHRpb24gaXM6Cgp8IEJhc2UgQWRkcmVzcyBvZiB0aGUg
RE1DNjIwIGluIHRoZSBzeXN0ZW0gYWRkcmVzcyBtYXAKCi4uLiB3aGljaCB3b3VsZCBwcmVzdW1h
Ymx5IG1lYW4gdGhlICplbnRpcmUqIHNldCBvZiBNTUlPIHJlZ2lzdGVycywgbm90Cmp1c3QgdGhl
IFBNVSBwb3J0aW9uLiBUaGUgZXhhbXBsZSBmaXJtbHkgaGludHMgdGhhdCBpdCBpcyB0aGUgZW50
aXJlIHNldApvZiBNTUlPIHJlZ2lzdGVyczoKCnwgSW4gdGhpcyBleGFtcGxlLCB0aGUgRE1DNjIw
IHJlZ2lzdGVyIHNwYWNlIGlzIG1hcHBlZCB0byBhIDY0SyByYW5nZQp8IHRoYXQgYmVnaW5zIGF0
IG9mZnNldCAweDgwQ0FGRTAwMDAgaW4gdGhlIHN5c3RlbSBhZGRyZXNzIHNwYWNlCgpUaGFua3Ms
Ck1hcmsuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
