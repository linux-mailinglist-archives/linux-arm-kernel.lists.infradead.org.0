Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 558F7427F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 15:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsyL8eExPC9H9bGp64ZazfsQ+HHLLlfFYVFYrb9d1+0=; b=NwnIgyQo959WC+
	sfduG8Nhpgs0EU6u/R5CC/EhUCgzw3hPfuLT2lb4+CoRP4L4NPhOKVHUiifuQR9gA9OJMYGPFuJFL
	zje3MUe+cu+L4+jU51YtIZiv1WPX+UgZSWXNlXxCy3Df/Oy1JAzDAUxwmU0MeNgd573dBan0SrVGZ
	Z7LciREC5GQlZNh09jpXDe+uBMdoZpcLBBPokuXlkWCi9KBRhV/4Yz3dYsG6B2Jbu5zHPtLlHwhYY
	3oOKS0hE1iYRjY5BBGMrWNhApD8liY6C/nAhLHJmidxdD114MIa56Na1G+jQZRNb0szJNqzlsaSIQ
	VC4p/uMYjDRfQv74xbUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb3e1-0006cm-BH; Wed, 12 Jun 2019 13:50:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb3dq-0006c5-2I
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 13:50:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C720428;
 Wed, 12 Jun 2019 06:50:16 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 566AC3F557;
 Wed, 12 Jun 2019 06:50:15 -0700 (PDT)
Date: Wed, 12 Jun 2019 14:50:13 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>
Subject: Re: [PATCH 0/2] arm64/sve: Fix mutating register endianness on
 big-endian
Message-ID: <20190612135012.GT28398@e103592.cambridge.arm.com>
References: <1559839495-22315-1-git-send-email-Dave.Martin@arm.com>
 <20190607093858.GA21378@fuggles.cambridge.arm.com>
 <20190607154832.GH28398@e103592.cambridge.arm.com>
 <207E140D-AC57-4B0D-B838-94B92BE2B0A0@arm.com>
 <87v9xbdr3o.fsf@zen.linaroharston>
 <20190612124712.GR28398@e103592.cambridge.arm.com>
 <87sgsfdjru.fsf@zen.linaroharston>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87sgsfdjru.fsf@zen.linaroharston>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_065020_106012_EE78554E 
X-CRM114-Status: GOOD (  24.92  )
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
Cc: Peter Maydell <peter.maydell@linaro.org>, nd <nd@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Alan Hayward <Alan.Hayward@arm.com>,
 Will Deacon <Will.Deacon@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Julien Grall <Julien.Grall@arm.com>, "gdb@sourceware.org" <gdb@sourceware.org>,
 "richard.henderson@linaro.org" <richard.henderson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMDI6MTg6MjlQTSArMDEwMCwgQWxleCBCZW5uw6llIHdy
b3RlOgo+IAo+IERhdmUgTWFydGluIDxEYXZlLk1hcnRpbkBhcm0uY29tPiB3cml0ZXM6Cj4gCj4g
PiBPbiBXZWQsIEp1biAxMiwgMjAxOSBhdCAxMTo0MDoxMUFNICswMTAwLCBBbGV4IEJlbm7DqWUg
d3JvdGU6Cj4gPj4KPiA+PiBBbGFuIEhheXdhcmQgPEFsYW4uSGF5d2FyZEBhcm0uY29tPiB3cml0
ZXM6Cj4gPj4KPiA+PiA+PiBPbiA3IEp1biAyMDE5LCBhdCAxNjo0OCwgRGF2ZSBNYXJ0aW4gPERh
dmUuTWFydGluQGFybS5jb20+IHdyb3RlOgo+ID4+ID4+Cj4gPj4gPj4gT24gRnJpLCBKdW4gMDcs
IDIwMTkgYXQgMTA6Mzg6NThBTSArMDEwMCwgV2lsbCBEZWFjb24gd3JvdGU6Cj4gPj4gPj4+IE9u
IFRodSwgSnVuIDA2LCAyMDE5IGF0IDA1OjQ0OjUzUE0gKzAxMDAsIERhdmUgTWFydGluIHdyb3Rl
Ogo+ID4+ID4+Pj4gQnkgaW5zcGVjdGlvbiB3aGlsZSBkZWJ1Z2dpbmcgc29tZXRoaW5nIGVsc2Us
IEkgbm90aWNlZCB0aGF0IHRoZSBieXRlCj4gPj4gPj4+PiBvcmRlciBvZiBGUFNJTUQgVi1yZWdp
c3RlciBzdG9yZXMgYW5kIFNWRSBaLXJlZ2lzdGVyIHN0b3JlcyBpcyBub3QgdGhlCj4gPj4gPj4+
PiBzYW1lIHdoZW4gcnVubmluZyBvbiBiaWctZW5kaWFuLgo+ID4+ID4+Pj4KPiA+PiA+Pj4+IFRo
aXMgaXMgbm90IHByb3Blcmx5IHRha2VuIGludG8gYWNjb3VudCB3aGVuIG1vdmluZyBiZXR3ZWVu
IHRoZSBGUFNJTUQKPiA+PiA+Pj4+IGFuZCBTVkUgcmVnaXN0ZXIgdmlld3MgaW5zaWRlIHRoZSBr
ZXJuZWwsIHJlc3VsdGluZyBpbiB0aGUgYnl0ZXMgb2YgYQo+ID4+ID4+Pj4gVi1yZWdpc3RlciBn
ZXR0aW5nIHNwb250YW5lb3VzbHkgcmV2ZXJzZWQgaW4gc29tZSBzaXR1YXRpb25zLCBmcm9tCj4g
Pj4gPj4+PiB1c2Vyc3BhY2UncyBwb2ludCBvZiB2aWV3LiAgVGhlIHNpZ25hbCBmcmFtZSBhbmQg
cHRyYWNlIGludGVyZmFjZSBhcmUKPiA+PiA+Pj4+IGFsc28gYWZmZWN0ZWQuICBUaGUgS1ZNIEFC
SSBmb3JiaWRzIG1peGluZyB0aGUgdHdvIHZpZXdzIGFuZCBzbyBzaG91bGQKPiA+PiA+Pj4+IG5v
dCBiZSBhZmZlY3RlZC4KPiA8c25pcD4KPiA+PiA+Pj4KPiA+PiA+Pj4gV291bGRuJ3QgdGhpcyBi
ZSBlYXN5IGVub3VnaCB0byB0ZXN0Pwo+ID4+ID4+Cj4gPj4gPj4gU28sIGdkYiB3b3JrcyBPSyBv
biBiaWctZW5kaWFuIGJ1dCB3ZWlyZCBzdHVmZiBoYXBwZW5pbmcgb24gYm90aCB3aXRoCj4gPj4g
Pj4gYW5kIHdpdGhvdXQgdGhlIGZpeC4KPiA+PiA+Pgo+ID4+ID4+IFRoZXJlIGFyZSBwbGFjZXMg
aW4gdGhlIGdkYiBjb2RlIGl0c2VsZiB3aGVyZSBpdCBpcyBsaWtlbHkgbWlzc2luZwo+ID4+ID4+
IGVuZGlhbm5lc3MgY29udmVyc2lvbnMsIGJ1dCBJIG5lZWQgdG8gZm9sbG93IHVwIHdpdGggdGhl
IGdkYiBmb2xrcyB0bwo+ID4+ID4+IGNsYXJpZnkgd2hldGhlciBteSBwYXRjaCBpcyBtaXNzaW5n
IHNvbWV0aGluZ+KApgo+ID4+ID4KPiA+PiA+IChJIGFkZGVkIHRoZSBTVkUgc3VwcG9ydCBmb3Ig
R0RCKS4KPiA+PiA+Cj4gPj4gPiBJ4oCZdmUgdHJpZWQgdGhlc2UgY2hhbmdlcyBvdXQgbXlzZWxm
IHVzaW5nIEdEQi4KPiA+PiA+IFdpdGggeW91ciBjaGFuZ2VzIGV2ZXJ5dGhpbmcgbG9va3MgZ29v
ZCwgYXBhcnQgZnJvbToKPiA+PiA+ICogR0RCIGdldHMgaXQgd3Jvbmcgd2hlbiB0aGUgcHRyYWNl
IHN2ZSBzdHJ1Y3R1cmUgY29udGFpbnMgYSBmcHNpbWQuCj4gPj4gPiAqIEkgbmVlZCB0byBkbyBz
b21lIHRlc3RpbmcgYXJvdW5kIHNpZ2NvbnRleHRzLCBidXQgYWdhaW4gSSB0aGluayBHREIKPiA+
PiA+ICAgd2lsbCBuZWVkIGEgc2xpZ2h0IGNoYW5nZS4KPiA+PiA+IEnigJlsbCBnZXQgc29tZSBw
YXRjaGVzIHRvZ2V0aGVyIGZvciBHREIuCj4gPj4KPiA+PiBXaGVyZSBpcyB0aGUgbGF0ZXN0IHN0
YXRlIG9mIFNWRSBzdXBwb3J0IGZvciBHREI/IEkgcmVhbGx5IHNob3VsZCBjaGVjawo+ID4+IHRo
ZSBRRU1VIGdkYnN0dWIgZG9lcyB0aGUgY29ycmVjdCB0aGluZ3MgZm9yIFNWRSByZWdpc3RlcnMg
YnV0IEkgd2FzCj4gPj4gd2FpdGluZyBmb3IgdXBzdHJlYW0gZ2RiIHN1cHBvcnQuCj4gPgo+ID4g
RG9lcyB0aGlzIGlzc3VlIG5lZWQgbG9va2luZyBhdCBmb3IgdGhlIFFFTVUgdXNlcnNwYWNlIGVt
dWxhdGlvbiB0b28/Cj4gCj4gSG1tIEkgdGhpbmsgd2UgYXJlIE9LLiBGb3IgdGhlIFNWRSBmcmFt
ZSBpdHNlbGYgd2UgZXhwbGljaXRseSBzdG9yZSBpbgo+IExFIG9yZGVyOgo+IAo+ICAgc3RhdGlj
IHZvaWQgdGFyZ2V0X3NldHVwX3N2ZV9yZWNvcmQoc3RydWN0IHRhcmdldF9zdmVfY29udGV4dCAq
c3ZlLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgQ1BVQVJNU3RhdGUg
KmVudiwgaW50IHZxLCBpbnQgc2l6ZSkKPiAgIHsKPiAgICAgICBpbnQgaSwgajsKPiAKPiAgICAg
ICBfX3B1dF91c2VyKFRBUkdFVF9TVkVfTUFHSUMsICZzdmUtPmhlYWQubWFnaWMpOwo+ICAgICAg
IF9fcHV0X3VzZXIoc2l6ZSwgJnN2ZS0+aGVhZC5zaXplKTsKPiAgICAgICBfX3B1dF91c2VyKHZx
ICogVEFSR0VUX1NWRV9WUV9CWVRFUywgJnN2ZS0+dmwpOwo+IAo+ICAgICAgIC8qIE5vdGUgdGhh
dCBTVkUgcmVncyBhcmUgc3RvcmVkIGFzIGEgYnl0ZSBzdHJlYW0sIHdpdGggZWFjaCBieXRlIGVs
ZW1lbnQKPiAgICAgICAgKiBhdCBhIHN1YnNlcXVlbnQgYWRkcmVzcy4gIFRoaXMgY29ycmVzcG9u
ZHMgdG8gYSBsaXR0bGUtZW5kaWFuIHN0b3JlCj4gICAgICAgICogb2Ygb3VyIDY0LWJpdCBodW5r
cy4KPiAgICAgICAgKi8KPiAgICAgICBmb3IgKGkgPSAwOyBpIDwgMzI7ICsraSkgewo+ICAgICAg
ICAgICB1aW50NjRfdCAqeiA9ICh2b2lkICopc3ZlICsgVEFSR0VUX1NWRV9TSUdfWlJFR19PRkZT
RVQodnEsIGkpOwo+ICAgICAgICAgICBmb3IgKGogPSAwOyBqIDwgdnEgKiAyOyArK2opIHsKPiAg
ICAgICAgICAgICAgIF9fcHV0X3VzZXJfZShlbnYtPnZmcC56cmVnc1tpXS5kW2pdLCB6ICsgaiwg
bGUpOwo+ICAgICAgICAgICB9Cj4gICAgICAgfQo+ICAgICAgIGZvciAoaSA9IDA7IGkgPD0gMTY7
ICsraSkgewo+ICAgICAgICAgICB1aW50MTZfdCAqcCA9ICh2b2lkICopc3ZlICsgVEFSR0VUX1NW
RV9TSUdfUFJFR19PRkZTRVQodnEsIGkpOwo+ICAgICAgICAgICBmb3IgKGogPSAwOyBqIDwgdnE7
ICsraikgewo+ICAgICAgICAgICAgICAgdWludDY0X3QgciA9IGVudi0+dmZwLnByZWdzW2ldLnBb
aiA+PiAyXTsKPiAgICAgICAgICAgICAgIF9fcHV0X3VzZXJfZShyID4+ICgoaiAmIDMpICogMTYp
LCBwICsgaiwgbGUpOwo+ICAgICAgICAgICB9Cj4gICAgICAgfQo+ICAgfQo+IAo+IEZvciB0aGUg
YWxpYXNlZCBmcHNpbWQgcmVnaXN0ZXJzIHdlIHN0b3JlIGluIHRoZSB0YXJnZXQgZW5kaWFuIGZv
cm1hdDoKPiAKPiAgIHN0YXRpYyB2b2lkIHRhcmdldF9zZXR1cF9mcHNpbWRfcmVjb3JkKHN0cnVj
dCB0YXJnZXRfZnBzaW1kX2NvbnRleHQgKmZwc2ltZCwKPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIENQVUFSTVN0YXRlICplbnYpCj4gICB7Cj4gICAgICAgaW50IGk7
Cj4gCj4gICAgICAgX19wdXRfdXNlcihUQVJHRVRfRlBTSU1EX01BR0lDLCAmZnBzaW1kLT5oZWFk
Lm1hZ2ljKTsKPiAgICAgICBfX3B1dF91c2VyKHNpemVvZihzdHJ1Y3QgdGFyZ2V0X2Zwc2ltZF9j
b250ZXh0KSwgJmZwc2ltZC0+aGVhZC5zaXplKTsKPiAgICAgICBfX3B1dF91c2VyKHZmcF9nZXRf
ZnBzcihlbnYpLCAmZnBzaW1kLT5mcHNyKTsKPiAgICAgICBfX3B1dF91c2VyKHZmcF9nZXRfZnBj
cihlbnYpLCAmZnBzaW1kLT5mcGNyKTsKPiAKPiAgICAgICBmb3IgKGkgPSAwOyBpIDwgMzI7IGkr
Kykgewo+ICAgICAgICAgICB1aW50NjRfdCAqcSA9IGFhNjRfdmZwX3FyZWcoZW52LCBpKTsKPiAg
ICNpZmRlZiBUQVJHRVRfV09SRFNfQklHRU5ESUFOCj4gICAgICAgICAgIF9fcHV0X3VzZXIocVsw
XSwgJmZwc2ltZC0+dnJlZ3NbaSAqIDIgKyAxXSk7Cj4gICAgICAgICAgIF9fcHV0X3VzZXIocVsx
XSwgJmZwc2ltZC0+dnJlZ3NbaSAqIDJdKTsKPiAgICNlbHNlCj4gICAgICAgICAgIF9fcHV0X3Vz
ZXIocVswXSwgJmZwc2ltZC0+dnJlZ3NbaSAqIDJdKTsKPiAgICAgICAgICAgX19wdXRfdXNlcihx
WzFdLCAmZnBzaW1kLT52cmVnc1tpICogMiArIDFdKTsKPiAgICNlbmRpZgo+ICAgICAgIH0KPiAg
IH0KClRoYXQncyByZWFzc3VyaW5nLgoKV2hhdCBhYm91dCB3aGVyZSB5b3UgbWVyZ2UgdGhlIGZw
c2ltZCByZWdpc3RlcnMgYmFjayBpbnRvIHRoZSBTVkUgcmVncwpvbiBzaWdyZXR1cm4/Cgo+IFdo
ZXJlIG91ciBsYXlvdXQgZm9yIHRoZSBxdWFkcyBpcyBhbHdheXM6Cj4gCj4gICBRbiA9IHJlZ3Nb
bl0uZFsxXTpyZWdzW25dLmRbMF0KCllvdSBtZWFuIGFsd2F5cyBvbiBCRT8gIFRoYXQgd291bGQg
YmUgd3JvbmcgZm9yIExFLgoKQ2hlZXJzCi0tLURhdmUKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
