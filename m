Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 763711C6DE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+IlSdlZfVfhx9OcBTDP1NWxcEVfQAYPFQDxZamMXnhI=; b=KrifQ+uU97gx9F
	tCgoyDaYDhGJ2aSbcRZJJAPgFyPLD0mwqOhqiBP4fEa2P8EYxAzlRvlZOZ57Of4Q6QOimcKeShzOm
	A5Sjeyg2CLqVYqatVAG/P6AS0pUDvnLEtJDWrlJo0FhL1/qJZes48tWpMHOBt+vJKk0iFemnYiTvW
	Y5vr9IIhAt8rghtavtAIPgvMMj1J5yg5C2cC+0D1/tGkMzM3cnUYSYu6YjR0dQYS/liEbO5dc9Wr2
	LFWq+6Ei9ggwAN2Y0rgZEEeBNNLYha3DDa95/8SgwNdZt5TfmimR0BViJjt0sTJcL4G4dQ5BooLIx
	IEW0ArrddV6ExbN8N7SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWGrT-0005EK-AK; Wed, 06 May 2020 10:01:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWGrJ-0005BQ-Tz
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:01:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7E6B030E;
 Wed,  6 May 2020 03:00:56 -0700 (PDT)
Received: from [192.168.2.22] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 681FE3F71F;
 Wed,  6 May 2020 03:00:55 -0700 (PDT)
Subject: Re: [PATCH 07/16] arm64: dts: arm: Fix GIC compatible names
To: Marc Zyngier <maz@kernel.org>
References: <20200505165212.76466-1-andre.przywara@arm.com>
 <20200505165212.76466-8-andre.przywara@arm.com>
 <86lfm6tf1f.wl-maz@kernel.org> <629da7f9-9cc9-ec9e-f175-ef6c90b5e3f1@arm.com>
 <d9ebbc077d70805bed252656dede750b@kernel.org>
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Organization: ARM Ltd.
Message-ID: <72e7ca7e-003f-7edf-267c-763014f33fdc@arm.com>
Date: Wed, 6 May 2020 11:00:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <d9ebbc077d70805bed252656dede750b@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_030059_525596_EB53B9DF 
X-CRM114-Status: GOOD (  20.88  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, devicetree@vger.kernel.org,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYvMDUvMjAyMCAxMDoxNiwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIwMjAtMDUtMDYg
MDk6NDUsIEFuZHLDqSBQcnp5d2FyYSB3cm90ZToKPj4gT24gMDUvMDUvMjAyMCAxOToyNSwgTWFy
YyBaeW5naWVyIHdyb3RlOgo+Pj4gT24gVHVlLCAwNSBNYXkgMjAyMCAxNzo1MjowMyArMDEwMCwK
Pj4+IEFuZHJlIFByenl3YXJhIDxhbmRyZS5wcnp5d2FyYUBhcm0uY29tPiB3cm90ZToKPj4+Pgo+
Pj4+IFRoZSBHSUMgRFQgYmluZGluZyBvbmx5IGFsbG93cyBhIGNlcnRhaW4gY29tYmluYXRpb24g
b2YgRFQgY29tcGF0aWJsZQo+Pj4+IHN0cmluZ3MsIG1vc3RseSBqdXN0IGNvbnNpc3Rpbmcgb2Yg
b25lIG5hbWUuCj4+Pj4KPj4+PiBEcm9wIHRoZSBjb21iaW5hdGlvbiBvZiBtdWx0aXBsZSBuYW1l
cyBhbmQgZ28gd2l0aCB0aGUKPj4+PiAiYXJtLGNvcnRleC1hMTUtZ2ljIiBuYW1lIGZvciBHSUN2
MiwgYXMgdGhpcyBzZWVtcyB0byBiZSB0aGUgbW9zdAo+Pj4+IHdpZGVseQo+Pj4+IGFjY2VwdGVk
IHN0cmluZy4gImFybSxnaWMtNDAwIiB3b3VsZCBiZSBtb3JlIGNvcnJlY3QsIGJ1dCB3YXMKPj4+
PiBpbnRyb2R1Y2VkCj4+Pj4gbXVjaCBsYXRlciBpbnRvIHRoZSBrZXJuZWwncyBHSUMgZHJpdmVy
Lgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogQW5kcmUgUHJ6eXdhcmEgPGFuZHJlLnByenl3YXJh
QGFybS5jb20+Cj4+Pj4gLS0tCj4+Pj4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL2FybS9mb3VuZGF0
aW9uLXY4LWdpY3YyLmR0c2kgfCAyICstCj4+Pj4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL2FybS9q
dW5vLWJhc2UuZHRzacKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMiArLQo+Pj4+IMKgYXJjaC9hcm02
NC9ib290L2R0cy9hcm0vcnRzbV92ZS1hZW12OGEuZHRzwqDCoMKgwqDCoMKgIHwgMiArLQo+Pj4+
IMKgMyBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Pj4K
Pj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hcm0vZm91bmRhdGlvbi12OC1n
aWN2Mi5kdHNpCj4+Pj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FybS9mb3VuZGF0aW9uLXY4LWdp
Y3YyLmR0c2kKPj4+PiBpbmRleCAxNWZlODE3MzhlOTQuLjYxYTE3NTBmY2RkNiAxMDA2NDQKPj4+
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FybS9mb3VuZGF0aW9uLXY4LWdpY3YyLmR0c2kK
Pj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FybS9mb3VuZGF0aW9uLXY4LWdpY3YyLmR0
c2kKPj4+PiBAQCAtNiw3ICs2LDcgQEAKPj4+Pgo+Pj4+IMKgLyB7Cj4+Pj4gwqDCoMKgwqAgZ2lj
OiBpbnRlcnJ1cHQtY29udHJvbGxlckAyYzAwMTAwMCB7Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgIGNv
bXBhdGlibGUgPSAiYXJtLGNvcnRleC1hMTUtZ2ljIiwgImFybSxjb3J0ZXgtYTktZ2ljIjsKPj4+
PiArwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWExNS1naWMiOwo+Pj4+
IMKgwqDCoMKgwqDCoMKgwqAgI2ludGVycnVwdC1jZWxscyA9IDwzPjsKPj4+PiDCoMKgwqDCoMKg
wqDCoMKgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJy
dXB0LWNvbnRyb2xsZXI7Cj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYXJt
L2p1bm8tYmFzZS5kdHNpCj4+Pj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FybS9qdW5vLWJhc2Uu
ZHRzaQo+Pj4+IGluZGV4IDNmZWVmZDYxZWI3Ni4uNjIzOTJhYjFmODgwIDEwMDY0NAo+Pj4+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYXJtL2p1bm8tYmFzZS5kdHNpCj4+Pj4gKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9hcm0vanVuby1iYXNlLmR0c2kKPj4+PiBAQCAtNjksNyArNjksNyBA
QAo+Pj4+IMKgwqDCoMKgIH07Cj4+Pj4KPj4+PiDCoMKgwqDCoCBnaWM6IGludGVycnVwdC1jb250
cm9sbGVyQDJjMDEwMDAwIHsKPj4+PiAtwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJhcm0s
Z2ljLTQwMCIsICJhcm0sY29ydGV4LWExNS1naWMiOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBjb21w
YXRpYmxlID0gImFybSxjb3J0ZXgtYTE1LWdpYyI7Cj4+Pgo+Pj4gV2h5PyBHSUMtNDAwIGlzIGRl
ZmluaXRlbHkgdGhlIG1vc3QgY29ycmVjdCBjb21wYXRpYmxlIHN0cmluZy4gSSdkCj4+PiByYXRo
ZXIgc2VlIHRoaXMgY29tcGF0aWJsZSBiZWluZyBnZW5lcmFsaXNlZCB0byB0aGUgbW9kZWxzIHJh
dGhlciB0aGFuCj4+PiBvbmx5IHJlZmVyZW5jaW5nIHRoZSBBMTUgR0lDLgo+Pgo+PiBJIGFncmVl
IHRoYXQgZ2ljLTQwMCBpcyB0aGUgZmFyIGJldHRlciBuYW1lLCBidXQgaXQgd2FzIG9ubHkgaW50
cm9kdWNlZAo+PiBpbiB2My4xNi4gU28gb21pdHRpbmcgYXJtLGNvcnRleC1hMTUtZ2ljIHdvdWxk
IGJyZWFrIGFueSBrZXJuZWxzIGJlZm9yZQo+PiB0aGF0LCB3aGljaCBJIHdvdWxkIGxpa2UgdG8g
YXZvaWQuCj4gCj4gSSBhbSBub3QgdGFsa2luZyBhYm91dCBkcm9wcGluZyB0aGUgQTE1IEdJQy4g
SSdtIHNheWluZyB0aGF0IGJvdGggc2hvdWxkCj4gc3RheS4gSXMgdGhlcmUgYW55dGhpbmcgaW4g
dGhlIERUIGJpbmRpbmcgdGhhdCBmb3JiaWRzIG11bHRpcGxlIG5hbWVzIGluCj4gdGhlIGNvbXBh
dGlibGUgcHJvcGVydHk/CgpXZWxsLCB0aGUgY3VycmVudCBmb3JtIG9mIHRoZSBZQU1MIGJpbmRp
bmdzIHJlcXVpcmUgZXZlcnkgY29tYmluYXRpb24gb2YKY29tcGF0aWJsZSBzdHJpbmdzIHRvIGJl
IGxpc3RlZCwgZWl0aGVyIGV4cGxpY2l0bHksIG9yIHVzaW5nIGFuIGxpc3Qgb2YKYWxsb3dlZCBz
dHJpbmdzIGZvciBlYWNoIHBvc2l0aW9uLiBUaGlzIGNvbWJpbmF0aW9uIGhlcmUgaXMgbm90IGxp
c3RlZAphdCB0aGUgbW9tZW50LgoKPj4gSXQncyBhY3R1YWxseSBhIHBpdHkgdGhhdCB3ZSBhcmUg
c28gcGlja3kgYWJvdXQgdGhlIGNvbXBhdGlibGUgbGlzdGluZ3MsCj4+IGJlY2F1c2UgdGhlIGV4
aXN0aW5nIGNvbWJpbmF0aW9uIGlzIGFjdHVhbGx5IHF1aXRlIG5pY2U6IHdlIGdldAo+PiBjb21w
YXRpYmlsaXR5IHdpdGggb2xkZXIgRFQgY29uc3VtZXJzLCBidXQgc3RpbGwgY2FuIHNheSB3aGF0
IGl0Cj4+IGFjdHVhbGx5IGlzLgo+PiBJIHdvbmRlciBpZiBJIHNob3VsZCBpbnRyb2R1Y2UgdGhp
cyBjb21iaW5hdGlvbiB0byB0aGUgR0lDIERUIGJpbmRpbmcKPj4gaW5zdGVhZCwgaXQgc2VlbXMg
bGlrZSB0aGVyZSBhcmUgb3RoZXIgdXNlcnMgaW4gdGhlIHRyZWUgYXMgd2VsbC4KPj4KPj4gV2hh
dCBkbyB5b3UgdGhpbms/Cj4gCj4gSSdkIHNheSB0aGF0IGlmIHRoZSBiaW5kaW5nIGZvcmJpZHMg
bXVsdGlwbGUgY29tcGF0aWJsZSBzdHJpbmdzLCB0aGUKPiBiaW5kaW5nIGlzIGxpa2VseSB0byBi
ZSB3cm9uZy4gV2Ugc2hvdWxkIGZpeCBpdCwgYW5kIG5vdCBtYWtlIHRoZSBEVHMKPiB3b3JzZSBh
cyBhIHJlc3VsdCBvZiBhIGJpbmRpbmcgaXNzdWUuCgpPSywgdGhhbmtzIGZvciB0aGUgY29uZmly
bWF0aW9uLCBhbmQgSSBhZ3JlZS4gSSB3aWxsIGRpdGNoIHRoaXMgcGF0Y2gKYW5kIHJlcGxhY2Ug
aXQgd2l0aCBhIHJlc3BlY3RpdmUgYmluZGluZ3MgZml4LgoKVGhhbmtzLApBbmRyZS4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
