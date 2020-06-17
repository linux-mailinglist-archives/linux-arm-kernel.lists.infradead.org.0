Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D18E1FCF0D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 16:04:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEcaV3ZNqB3kflNYFgDvKibAXoP/MPSJwyewMvlawZY=; b=rCh6jIOlcwH9TP
	+8b/z0WUj6cOUpTkh0M0ddnJ1hoOflQsZQbEzAB8f0wc7lFOHXoL+HIrDh+rqDN5H0vBkHZPqWtq3
	BwoMs0dx/9lpAsvvQvYdV0ut3DBn41ShvbpgRKsvRsPYzzX3XW9l7b97hwyxBtk0PZgfu/aVFlGxG
	YR+GPbZYOBZIReEsY0oSdduk8HHF5Xt1cDGmEAC27xPnhbaQHNqvrOi9x9sYoNCf7b6VmvJPrVkut
	CJ3u5WhayMfvm/G21b2yydwz2/kOXfMuRQemgF/uvmosdTg3gkQ87nAdBuHh6eAxpuT4Cn/a30xrk
	Ef5Vqf95e0qDjr/IznOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlYgD-0002MX-2d; Wed, 17 Jun 2020 14:04:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlYg3-0002Lj-Lv
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 14:04:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0CE5B31B;
 Wed, 17 Jun 2020 07:04:28 -0700 (PDT)
Received: from bogus (unknown [10.37.12.89])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E57BF3F73C;
 Wed, 17 Jun 2020 07:04:25 -0700 (PDT)
Date: Wed, 17 Jun 2020 15:04:20 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v2] firmware: smccc: Add ARCH_SOC_ID support
Message-ID: <20200617140420.GA18881@bogus>
References: <20200617100559.55209-1-sudeep.holla@arm.com>
 <ccbbae8d-8ca8-4688-4cec-58ae9962d766@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ccbbae8d-8ca8-4688-4cec-58ae9962d766@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_070431_804617_275C6044 
X-CRM114-Status: GOOD (  24.97  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Francois Ozog <francois.ozog@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Etienne Carriere <etienne.carriere@st.com>,
 Jose Marinho <Jose.Marinho@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Harb Abdulhamid \(harb@amperecomputing.com\)" <harb@amperecomputing.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMTcsIDIwMjAgYXQgMDI6MzQ6NDFQTSArMDEwMCwgU3RldmVuIFByaWNlIHdy
b3RlOgo+IE9uIDE3LzA2LzIwMjAgMTE6MDUsIFN1ZGVlcCBIb2xsYSB3cm90ZToKPiA+IFNNQ0ND
IHYxLjIgYWRkcyBhIG5ldyBvcHRpb25hbCBmdW5jdGlvbiBTTUNDQ19BUkNIX1NPQ19JRCB0byBv
YnRhaW4gYQo+ID4gU2lQIGRlZmluZWQgU29DIGlkZW50aWZpY2F0aW9uIHZhbHVlLiBBZGQgc3Vw
cG9ydCBmb3IgdGhlIHNhbWUuCj4gPiAKPiA+IEFsc28gdXNpbmcgdGhlIFNvQyBidXMgaW5mcmFz
dHJ1Y3R1cmUsIGxldCB1cyBleHBvc2UgdGhlIHBsYXRmb3JtCj4gPiBzcGVjaWZpYyBTb0MgYXRy
cmlidXRlcyB1bmRlciBzeXNmcy4KPiA+IAo+ID4gVGhlcmUgYXJlIHZhcmlvdXMgd2F5cyBpbiB3
aGljaCBpdCBjYW4gYmUgcmVwcmVzZW50ZWQgaW4gc2hvcnRlbmVkIGZvcm0KPiA+IGZvciBlZmZp
Y2llbmN5IGFuZCBlYXNlIG9mIHBhcnNpbmcgZm9yIHVzZXJzcGFjZS4gVGhlIGNob3NlbiBmb3Jt
IGlzCj4gPiBkZXNjcmliZWQgaW4gdGhlIEFCSSBkb2N1bWVudC4KPiA+IAo+ID4gQ2M6IFN0ZXZl
biBQcmljZSA8c3RldmVuLnByaWNlQGFybS5jb20+Cj4gPiBDYzogRXRpZW5uZSBDYXJyaWVyZSA8
ZXRpZW5uZS5jYXJyaWVyZUBzdC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBTdWRlZXAgSG9sbGEg
PHN1ZGVlcC5ob2xsYUBhcm0uY29tPgo+ID4gLS0tCj4gPiAgIERvY3VtZW50YXRpb24vQUJJL3Rl
c3Rpbmcvc3lzZnMtZGV2aWNlcy1zb2MgfCAgMzAgKysrKysrCj4gPiAgIGRyaXZlcnMvZmlybXdh
cmUvc21jY2MvS2NvbmZpZyAgICAgICAgICAgICAgfCAgIDkgKysKPiA+ICAgZHJpdmVycy9maXJt
d2FyZS9zbWNjYy9NYWtlZmlsZSAgICAgICAgICAgICB8ICAgMSArCj4gPiAgIGRyaXZlcnMvZmly
bXdhcmUvc21jY2Mvc29jX2lkLmMgICAgICAgICAgICAgfCAxMTQgKysrKysrKysrKysrKysrKysr
KysKPiA+ICAgaW5jbHVkZS9saW51eC9hcm0tc21jY2MuaCAgICAgICAgICAgICAgICAgICB8ICAg
NSArCj4gPiAgIDUgZmlsZXMgY2hhbmdlZCwgMTU5IGluc2VydGlvbnMoKykKPiA+ICAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvZmlybXdhcmUvc21jY2Mvc29jX2lkLmMKPiA+IAo+ID4gQ2hh
bmdlcyBmcm9tIHYxWzFdIC0+IHYyOgo+ID4gCS0gRHJvcHBlZCBuZXcgamVwMTA2X2lkIGFkZGVk
IHRvIFNvQyBpbmZyYXN0cnVjdHVyZQo+ID4gCS0gRHJvcHBlZCBhbGwgdGhlIHRhZ3MoYWNrcy9y
ZXZpZXdzKSBhcyB0aGVyZSBpcyBjaGFuZ2UgaW4gdGhlIGZvcm1hdAo+ID4gCS0gVXBkYXRlZCB0
aGUgZm9ybWF0IGZvciBTb0MgaWQgdG8gZW5zdXJlIHRoZXJlIHdpbGwgYmUgbm8KPiA+IAkgIGNv
bmZsaWN0IGluIHRoZSBuYW1lc3BhY2UKPiA+IAo+ID4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xrbWwvMjAyMDA1MjIxMjQ5NTEuMzU3NzYtMS1zdWRlZXAuaG9sbGFAYXJtLmNvbS8KPiA+
IAo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMtZGV2aWNl
cy1zb2MgYi9Eb2N1bWVudGF0aW9uL0FCSS90ZXN0aW5nL3N5c2ZzLWRldmljZXMtc29jCj4gPiBp
bmRleCBiYTNhM2ZhYzBlZTEuLjUwNzA3ZjMxNmVhOSAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50
YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMtZGV2aWNlcy1zb2MKPiA+ICsrKyBiL0RvY3VtZW50YXRp
b24vQUJJL3Rlc3Rpbmcvc3lzZnMtZGV2aWNlcy1zb2MKPiA+IEBAIC0yNiw2ICsyNiwzMCBAQCBj
b250YWN0OglMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+ID4gICAJCVJlYWQtb25s
eSBhdHRyaWJ1dGUgY29tbW9uIHRvIGFsbCBTb0NzLiBDb250YWlucyBTb0MgZmFtaWx5IG5hbWUK
PiA+ICAgCQkoZS5nLiBEQjg1MDApLgo+ID4gKwkJT24gbWFueSBvZiBBUk0gYmFzZWQgc2lsaWNv
biB3aXRoIFNNQ0NDIHYxLjIrIGNvbXBsaWFudCBmaXJtd2FyZQo+ID4gKwkJdGhpcyB3aWxsIGNv
bnRhaW4gdGhlIEpFREVDIEpFUDEwNiBtYW51ZmFjdHVyZXLigJlzIGlkZW50aWZpY2F0aW9uCj4g
PiArCQljb2RlLiBUaGUgZm9ybWF0IGlzICJqZXAxMDY6WFhZWSIgd2hlcmUgWFggaXMgaWRlbnRp
dHkgY29kZSBhbmQKPiA+ICsJCVlZIGlzIGNvbnRpbnVhdGlvbiBjb2RlLgo+ID4gKwo+ID4gKwkJ
VGhpcyBtYW51ZmFjdHVyZXLigJlzIGlkZW50aWZpY2F0aW9uIGNvZGUgaXMgZGVmaW5lZCBieSBv
bmUKPiA+ICsJCW9yIG1vcmUgZWlnaHQgKDgpIGJpdCBmaWVsZHMsIGVhY2ggY29uc2lzdGluZyBv
ZiBzZXZlbiAoNykKPiA+ICsJCWRhdGEgYml0cyBwbHVzIG9uZSAoMSkgb2RkIHBhcml0eSBiaXQu
IEl0IGlzIGEgc2luZ2xlIGZpZWxkLAo+ID4gKwkJbGltaXRpbmcgdGhlIHBvc3NpYmxlIG51bWJl
ciBvZiB2ZW5kb3JzIHRvIDEyNi4gVG8gZXhwYW5kCj4gPiArCQl0aGUgbWF4aW11bSBudW1iZXIg
b2YgaWRlbnRpZmljYXRpb24gY29kZXMsIGEgY29udGludWF0aW9uCj4gPiArCQlzY2hlbWUgaGFz
IGJlZW4gZGVmaW5lZC4KPiA+ICsKPiA+ICsJCVRoZSBzcGVjaWZpZWQgbWVjaGFuaXNtIGlzIHRo
YXQgYW4gaWRlbnRpdHkgY29kZSBvZiAweDdGCj4gPiArCQlyZXByZXNlbnRzIHRoZSAiY29udGlu
dWF0aW9uIGNvZGUiIGFuZCBpbXBsaWVzIHRoZSBwcmVzZW5jZQo+ID4gKwkJb2YgYW4gYWRkaXRp
b25hbCBpZGVudGl0eSBjb2RlIGZpZWxkLCBhbmQgdGhpcyBtZWNoYW5pc20KPiA+ICsJCW1heSBi
ZSBleHRlbmRlZCB0byBtdWx0aXBsZSBjb250aW51YXRpb24gY29kZXMgZm9sbG93ZWQKPiA+ICsJ
CWJ5IHRoZSBtYW51ZmFjdHVyZXIncyBpZGVudGl0eSBjb2RlLgo+ID4gKwo+ID4gKwkJRm9yIGV4
YW1wbGUsIEFSTSBoYXMgaWRlbnRpdHkgY29kZSAweDdGIDB4N0YgMHg3RiAweDdGIDB4M0IsCj4g
PiArCQl3aGljaCBpcyBjb2RlIDB4M0Igb24gdGhlIGZpZnRoICdwYWdlJy4gVGhpcyBjYW4gYmUg
c2hvcnRlbmVkCj4KPiBOSVQ6IHMvY2FuIGJlL2lzLyAtIHNpbmNlIHRoZSBmb3JtYXQgYWx3YXlz
IHVzZXMgdGhlIHNob3J0IGZvcm0uCj4KCldpbGwgZml4IGl0LgoKWy4uLl0KCj4gPiArCj4gPiAr
CXNwcmludGYoc29jX2lkX3Jldl9zdHIsICIweCUwOHgiLCBzb2NfaWRfcmV2KTsKPiA+ICsJc3By
aW50Zihzb2NfaWRfamVwMTA2X2lkX3N0ciwgImplcDEwNjolMDJ4JTAyeCIsCj4gPiArCQlKRVAx
MDZfQkFOS19DT05UX0NPREUoc29jX2lkX3ZlcnNpb24pLAo+ID4gKwkJSkVQMTA2X0lEX0NPREUo
c29jX2lkX3ZlcnNpb24pKTsKPiA+ICsJc3ByaW50Zihzb2NfaWRfc3RyLCAiJXM6JTA0eCIsIHNv
Y19pZF9qZXAxMDZfaWRfc3RyLAo+ID4gKwkJSU1QX0RFRl9TT0NfSUQoc29jX2lkX3ZlcnNpb24p
KTsKPiAKPiBNeSBtYXRocyBtaWdodCBiZSB3cm9uZywgYnV0IEkgdGhpbmsgdGhpcyBpcyBvbmUg
Ynl0ZSB0b28gbG9uZzoKPiAKPiBzb2NfaWRfamVwMTA2X2lkX3N0ciBjYW4gYmUgMTEgY2hhcmFj
dGVycyAod2l0aG91dCB0aGUgTlVMKSwgdGhlbiB3ZSBoYXZlIGEKPiAnOicgYnl0ZSBmb2xsb3dl
ZCBieSA0IGhleCBkaWdpdHMgYW5kIGEgdHJhaWxpbmcgTlVMOiAxMSArIDEgKyA0ICsgMSA9IDE3
LAo+IGJ1dCB0aGUgY2hhciBhcnJheSBpcyAxNiBieXRlcyBsb25nLgo+CgpOb3BlLCB5b3UgYXJl
IHJpZ2h0LiBJIHdhcyBjaGFuZ2luZyB0aGUgZm9ybWF0IG11bHRpcGxlIHRpbWVzIHdpdGhvdXQK
Ym90aGVyaW5nIG11Y2ggYWJvdXQgdGhhdCBzaXplLiBUaGFua3MgZm9yIHRoZSBjYXRjaC4KCj4g
V2l0aCB0aGF0IGZpeGVkIGZlZWwgZnJlZSB0byBhZGQgbXkgIlJldmlld2VkLWJ5Ii4KPgoKSSB3
aWxsIGZpeCBpdCB1cCBhbmQgdGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKLS0gClJlZ2FyZHMsClN1
ZGVlcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
