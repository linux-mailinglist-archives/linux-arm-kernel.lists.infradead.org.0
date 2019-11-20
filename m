Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B61191039BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 13:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hf4HyZ+PchIaUHIppEt9ZeAX/PeaOwLA75yh1NY1EeA=; b=QL+NRxBwoR3DNb
	+YFDgmS/YNkhyO9ydg1LtEEKpzLNbi82e/cDBxSSJB8dGjgKqFgz2JwJEW4pLy2WoAVav1PoChSF2
	1vQU2zSK0LsdKuqoHcNAHK0DXyegZIT2AUXfqgw3xIzU61Dfg5UD26fncAbij6N0vkV0cNtcCbJCx
	MEj1+3s6OrBPXhDMJH3okmAlVCTwOVPmbKh14HQ/tvDcBSTl4Uh3xqVo67AnYHNQcnFfanV1o+ceQ
	G8no2FfqwpOmJb+iCoNmPskRcyUsJ3CwhTopWEVSX6Uzaqh+osj71KmlhdWljh0qZsC/8e367f5Pv
	yz9JeBbSC2WrTUH0DTYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOqp-0001TE-I7; Wed, 20 Nov 2019 12:12:51 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOqZ-0001M3-VT; Wed, 20 Nov 2019 12:12:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A4F0E69C2B;
 Wed, 20 Nov 2019 12:12:32 +0000 (UTC)
Subject: Re: [PATCH v4 2/8] irqchip: Add Realtek RTD1295 mux driver
To: Marc Zyngier <maz@kernel.org>
References: <20191119021917.15917-1-afaerber@suse.de>
 <20191119021917.15917-3-afaerber@suse.de>
 <a34e00cac16899b53d0b6445f0e81f4c@www.loen.fr>
 <0bff78c1-a1d0-9631-fbf4-e0d1ef1264ea@suse.de>
 <8137861d0a89dd246b3334ac596da8be@www.loen.fr>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <37b3b5d3-b3c8-b513-f8b5-9054f32a4b53@suse.de>
Date: Wed, 20 Nov 2019 13:12:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <8137861d0a89dd246b3334ac596da8be@www.loen.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_041236_348627_6F80EDAB 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: James Tai <james.tai@realtek.com>,
 Aleix Roca Nonell <kernelrocks@gmail.com>,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjAuMTEuMTkgdW0gMTE6MTggc2NocmllYiBNYXJjIFp5bmdpZXI6Cj4gT24gMjAxOS0xMS0x
OSAyMzoyNSwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+PiBBbSAxOS4xMS4xOSB1bSAxMzowMSBz
Y2hyaWViIE1hcmMgWnluZ2llcjoKPj4+IE9uIDIwMTktMTEtMTkgMDI6MTksIEFuZHJlYXMgRsOk
cmJlciB3cm90ZToKPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pcnFjaGlwL2lycS1ydGQxMTk1
LW11eC5jCj4+Pj4gYi9kcml2ZXJzL2lycWNoaXAvaXJxLXJ0ZDExOTUtbXV4LmMKPj4+PiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+Pj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uZTZiMDg0MzhiMjNjCj4+
Pj4gLS0tIC9kZXYvbnVsbAo+Pj4+ICsrKyBiL2RyaXZlcnMvaXJxY2hpcC9pcnEtcnRkMTE5NS1t
dXguYwo+PiBbLi4uXQo+Pj4+ICtzdGF0aWMgdm9pZCBydGQxMTk1X211eF9pcnFfaGFuZGxlKHN0
cnVjdCBpcnFfZGVzYyAqZGVzYykKPj4+PiArewo+Pj4+ICvCoMKgwqAgc3RydWN0IHJ0ZDExOTVf
aXJxX211eF9kYXRhICpkYXRhID0KPj4+PiBpcnFfZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRlc2Mp
Owo+Pj4+ICvCoMKgwqAgc3RydWN0IGlycV9jaGlwICpjaGlwID0gaXJxX2Rlc2NfZ2V0X2NoaXAo
ZGVzYyk7Cj4+Pj4gK8KgwqDCoCB1MzIgaXNyLCBtYXNrOwo+Pj4+ICvCoMKgwqAgaW50IGk7Cj4+
Pj4gKwo+Pj4+ICvCoMKgwqAgY2hhaW5lZF9pcnFfZW50ZXIoY2hpcCwgZGVzYyk7Cj4+Pj4gKwo+
Pj4+ICvCoMKgwqAgaXNyID0gcmVhZGxfcmVsYXhlZChkYXRhLT5yZWdfaXNyKTsKPj4+PiArCj4+
Pj4gK8KgwqDCoCB3aGlsZSAoaXNyKSB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGkgPSBfX2Zmcyhp
c3IpOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBpc3IgJj0gfkJJVChpKTsKPj4+PiArCj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgIG1hc2sgPSBkYXRhLT5pbmZvLT5pc3JfdG9faW50X2VuX21hc2tbaV07Cj4+
Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChtYXNrICYmICEoZGF0YS0+c2NwdV9pbnRfZW4gJiBtYXNr
KSkKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250aW51ZTsKPj4+PiArCj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgIGlmICghZ2VuZXJpY19oYW5kbGVfaXJxKGlycV9maW5kX21hcHBpbmcoZGF0
YS0+ZG9tYWluLCBpKSkpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgd3JpdGVsX3JlbGF4
ZWQoQklUKGkpLCBkYXRhLT5yZWdfaXNyKTsKPj4+Cj4+PiBXaGF0IGRvZXMgdGhpcyB3cml0ZSBk
byBleGFjdGx5PyBJdCBpcyB0aGUgc2FtZSB0aGluZyBhcyBhICdtYXNrJywKPj4+IHdoaWNoIGlz
IHByZXR0eSBvZGQuIFNvIGVpdGhlcjoKPj4+Cj4+PiAtIHRoaXMgaXMgbm90IGRvaW5nIGFueXRo
aW5nIGFuZCB5b3VyICdtYXNrJyBjYWxsYmFjayBpcyBib2d1cwo+Pj4gwqAgKG90aGVyd2lzZSB5
b3UnZCBuZXZlciBoYXZlIG1vcmUgdGhhbiBhIHNpbmdsZSBpbnRlcnJ1cHQpCj4+Pgo+Pj4gLSBv
ciB0aGlzIGlzIGFuIEFDSyBvcGVyYXRpb24sIGFuZCB0aGlzIHNob3VsZCBiZSBkZXNjcmliZWQg
YXMKPj4+IMKgIHN1Y2ggKGFuZCB0aGVuIGZpeCB0aGUgbWFzay91bm1hc2svZW5hYmxlL2Rpc2Fi
bGUgbWVzcyB0aGF0Cj4+PiDCoCByZXN1bHRzIGZyb20gaXQpLgo+Pgo+PiBUaGlzIGlzIHN1cHBv
c2VkIHRvIGJlIGFuIEFDSywgaS5lLiBjbGVhci0xLWJpdHMgb3BlcmF0aW9uLgo+IAo+IElmIGl0
IGlzIGFuIEFDSywgbW9kZWwgaXQgYXMgc3VjaCwgYW5kIGRvIG5vdCBvcGVuLWNvZGUgaXQuCgpJ
IGhhdmUgZm91bmQgYW4gLmlycV9hY2sgY2FsbGJhY2sgLSBtb3ZpbmcgdGhpcyB0aGVyZSBhcHBl
YXJzIHRvIHdvcmsuCgpBbHRlcm5hdGl2ZWx5IHRoZXJlIGlzIGFuIGlycV9lb2kgY2FsbGJhY2sg
YW5kIGFuIElSUUNISVBfRU9JX0lGX0hBTkRMRUQKZmxhZy4KCkl0IHdvdWxkIHJlYWxseSBoZWxw
IG1lIGlmIHlvdSBzcGVsbGVkIG91dCBleHBsaWNpdGx5IHdoZXJlIHlvdSB0aGluayBJCnNob3Vs
ZCBiZSBtb3ZpbmcgY29kZSwgYXMgdGhlIGRvY3VtZW50YXRpb24gaW4gaXJxLmggaXMgbm90IGFs
bCB0aGF0CmhlbHBmdWwgaW4gdGVybXMgb2Ygd2hlbiBhcmUgdGhleSBjYWxsZWQgYW5kIHdoYXQg
c2hvdWxkIGJlIGRvbmUgdGhlcmUuCkluIGNhc2Ugbm90IG9idmlvdXMsIHRoaXMgaXMgbXkgZmly
c3QgaXJxY2hpcCBkcml2ZXIuCgo+Pgo+PiBUaGUgQlNQIGhhZCBleHRlbmRlZCB2YXJpb3VzIGRy
aXZlcnMsIHN1Y2ggYXMgODI1MCBVQVJULCB0byBkbyB0aGlzIGFjawo+PiBpbiB0aGVpciBpbnRl
cnJ1cHQgaGFuZGxlciB0aHJvdWdoIGFuIGFkZGl0aW9uYWwgRFQgcmVnIHJlZ2lvbi4gSSB0cmll
ZAo+PiB0byBjbGVhbiB0aGF0IHVwIGJ5IGhhbmRsaW5nIGl0IGNlbnRyYWxseSBoZXJlIGluIHRo
ZSBpcnFjaGlwIGRyaXZlci4KPj4KPj4+Cj4+PiBhcyBJIGNhbid0IHNlZSBob3cgdGhlIHNhbWUg
cmVnaXN0ZXIgY2FuIGJlIHVzZWQgZm9yIGJvdGggcHVycG9zZXMuCj4+PiBZb3Ugc2hvdWxkIGJl
IGFibGUgdG8gdmVyaWZ5IHRoaXMgZXhwZXJpbWVudGFsbHksIGV2ZW4gd2l0aG91dAo+Pj4gZG9j
dW1lbnRhdGlvbi4KPj4KPj4gVGhlcmUgYXJlIHRocmVlIHJlZ2lzdGVycyBoZXJlOgo+Pgo+PiBN
SVNfVU1TS19JU1LCoMKgwqAgLSBNSVNDIHVubWFza2VkIGludGVycnVwdCBzdGF0dXMgcmVnaXN0
ZXIKPj4gTUlTX0lTUsKgwqDCoMKgwqDCoMKgwqAgLSBNSVNDwqDCoCBtYXNrZWQgaW50ZXJydXB0
IHN0YXR1cyByZWdpc3Rlcgo+PiBNSVNfU0NQVV9JTlRfRU4gLSBNSVNDIFNDUFUgaW50ZXJydXB0
IGVuYWJsZSByZWdpc3Rlcgo+Pgo+PiBUaGUgbGF0dGVyIGlzIGEgcmVndWxhciBSL1cgcmVnaXN0
ZXI7IHRoZSBmb3JtZXIgdHdvIGhhdmUgYSB3cml0ZV9kYXRhCj4+IGZpZWxkIGFzIEJJVCgwKSwg
d2l0aCAxIGluZGljYXRpbmcgYSB3cml0ZSB2cy4gMCBpbmRpY2F0aW5nIGNsZWFyLCBSQVouCj4+
Cj4+IEJ5IGVuYWJsaW5nL2Rpc2FibGluZyBpbiBfU0NQVV9JTlRfRU4gd2UgbWFzay91bm1hc2sg
dGhlbSBpbiBfSVNSIGJ1dAo+PiBub3QgaW4gX1VNU0tfSVNSLgo+Pgo+PiBEb2VzIHRoYXQgc2hl
ZCBhbnkgbW9yZSBsaWdodD8KPiAKPiBOb25lIHdoYXRzb2V2ZXIuIFlvdXIgbWFzayBjYWxsYmFj
ayBkb2Vzbid0IG1ha2UgYW55IHNlbnNlLCBzaW5jZSBpdAo+IGFjdHVhbGx5IGFja3MgdGhlIGlu
dGVycnVwdC4gTXkgZ3V0IGZlZWxpbmcgaXMgdGhhdCB5b3VyIGVuYWJsZS9kaXNhYmxlCj4gc2hv
dWxkIHJlYWxseSBiZSBtYXNrL3VubWFzay4KClJlbmFtaW5nIGVuYWJsZSAtPiB1bm1hc2sgYW5k
IGRpc2FibGUgLT4gbWFzayB3b3JrcyBva2F5LgoKVGhhbmtzLApBbmRyZWFzCgotLSAKU1VTRSBT
b2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJu
YmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5i
ZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
