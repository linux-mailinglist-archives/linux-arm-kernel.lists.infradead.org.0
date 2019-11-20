Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81411103752
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 11:19:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=btfYeI62QPa8IrCRmxihJyjM0GjdwTknhMnGzd4IdMg=; b=aqeGyXLnyddMP2SaEO0m9c3Qg
	r4OyEsPObzjfWeXbverjP/zhdNNuHQINwXl6tS9HT867GhvTF1ZCAGBFt3KxNHUqY8tCLRllSu8eu
	ondidKG2Ot8M6FBsJATTrg1mD/OCuJmgDmSld0yjsbpaTSFCYnen8MKBBYxyE2qVq6ka/iXiNUQIn
	kX0UbOJIhtd4hVbHu3TRI6fR53pQTDmO9bMaud9J7L06mb0Ge74Xk+KB5EEDrHF/R4j06NV3x9NyP
	gjOP0HGjrxg7FFwsKvjwyWsMXKj+FmCsR8qgFm+vlaRPZ32lH+pKrD87+UavE9gydmh80/SFR7nGW
	c7A1aXFPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXN4p-0002ht-6B; Wed, 20 Nov 2019 10:19:11 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXN4e-0002gk-Vy; Wed, 20 Nov 2019 10:19:02 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXN4b-0001G1-Pc; Wed, 20 Nov 2019 11:18:57 +0100
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v4 2/8] irqchip: Add Realtek RTD1295 mux driver
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 20 Nov 2019 10:18:57 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <0bff78c1-a1d0-9631-fbf4-e0d1ef1264ea@suse.de>
References: <20191119021917.15917-1-afaerber@suse.de>
 <20191119021917.15917-3-afaerber@suse.de>
 <a34e00cac16899b53d0b6445f0e81f4c@www.loen.fr>
 <0bff78c1-a1d0-9631-fbf4-e0d1ef1264ea@suse.de>
Message-ID: <8137861d0a89dd246b3334ac596da8be@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: afaerber@suse.de, linux-realtek-soc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernelrocks@gmail.com, james.tai@realtek.com, tglx@linutronix.de,
 jason@lakedaemon.net
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_021901_174745_3449B808 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMS0xOSAyMzoyNSwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+IEFtIDE5LjExLjE5
IHVtIDEzOjAxIHNjaHJpZWIgTWFyYyBaeW5naWVyOgo+PiBPbiAyMDE5LTExLTE5IDAyOjE5LCBB
bmRyZWFzIEbDpHJiZXIgd3JvdGU6Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pcnFjaGlwL2ly
cS1ydGQxMTk1LW11eC5jCj4+PiBiL2RyaXZlcnMvaXJxY2hpcC9pcnEtcnRkMTE5NS1tdXguYwo+
Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uZTZiMDg0Mzhi
MjNjCj4+PiAtLS0gL2Rldi9udWxsCj4+PiArKysgYi9kcml2ZXJzL2lycWNoaXAvaXJxLXJ0ZDEx
OTUtbXV4LmMKPiBbLi4uXQo+Pj4gK3N0YXRpYyB2b2lkIHJ0ZDExOTVfbXV4X2lycV9oYW5kbGUo
c3RydWN0IGlycV9kZXNjICpkZXNjKQo+Pj4gK3sKPj4+ICvCoMKgwqAgc3RydWN0IHJ0ZDExOTVf
aXJxX211eF9kYXRhICpkYXRhID0gCj4+PiBpcnFfZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRlc2Mp
Owo+Pj4gK8KgwqDCoCBzdHJ1Y3QgaXJxX2NoaXAgKmNoaXAgPSBpcnFfZGVzY19nZXRfY2hpcChk
ZXNjKTsKPj4+ICvCoMKgwqAgdTMyIGlzciwgbWFzazsKPj4+ICvCoMKgwqAgaW50IGk7Cj4+PiAr
Cj4+PiArwqDCoMKgIGNoYWluZWRfaXJxX2VudGVyKGNoaXAsIGRlc2MpOwo+Pj4gKwo+Pj4gK8Kg
wqDCoCBpc3IgPSByZWFkbF9yZWxheGVkKGRhdGEtPnJlZ19pc3IpOwo+Pj4gKwo+Pj4gK8KgwqDC
oCB3aGlsZSAoaXNyKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgaSA9IF9fZmZzKGlzcik7Cj4+PiAr
wqDCoMKgwqDCoMKgwqAgaXNyICY9IH5CSVQoaSk7Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqAg
bWFzayA9IGRhdGEtPmluZm8tPmlzcl90b19pbnRfZW5fbWFza1tpXTsKPj4+ICvCoMKgwqDCoMKg
wqDCoCBpZiAobWFzayAmJiAhKGRhdGEtPnNjcHVfaW50X2VuICYgbWFzaykpCj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBjb250aW51ZTsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAo
IWdlbmVyaWNfaGFuZGxlX2lycShpcnFfZmluZF9tYXBwaW5nKGRhdGEtPmRvbWFpbiwgCj4+PiBp
KSkpCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB3cml0ZWxfcmVsYXhlZChCSVQoaSksIGRh
dGEtPnJlZ19pc3IpOwo+Pgo+PiBXaGF0IGRvZXMgdGhpcyB3cml0ZSBkbyBleGFjdGx5PyBJdCBp
cyB0aGUgc2FtZSB0aGluZyBhcyBhICdtYXNrJywKPj4gd2hpY2ggaXMgcHJldHR5IG9kZC4gU28g
ZWl0aGVyOgo+Pgo+PiAtIHRoaXMgaXMgbm90IGRvaW5nIGFueXRoaW5nIGFuZCB5b3VyICdtYXNr
JyBjYWxsYmFjayBpcyBib2d1cwo+PiDCoCAob3RoZXJ3aXNlIHlvdSdkIG5ldmVyIGhhdmUgbW9y
ZSB0aGFuIGEgc2luZ2xlIGludGVycnVwdCkKPj4KPj4gLSBvciB0aGlzIGlzIGFuIEFDSyBvcGVy
YXRpb24sIGFuZCB0aGlzIHNob3VsZCBiZSBkZXNjcmliZWQgYXMKPj4gwqAgc3VjaCAoYW5kIHRo
ZW4gZml4IHRoZSBtYXNrL3VubWFzay9lbmFibGUvZGlzYWJsZSBtZXNzIHRoYXQKPj4gwqAgcmVz
dWx0cyBmcm9tIGl0KS4KPgo+IFRoaXMgaXMgc3VwcG9zZWQgdG8gYmUgYW4gQUNLLCBpLmUuIGNs
ZWFyLTEtYml0cyBvcGVyYXRpb24uCgpJZiBpdCBpcyBhbiBBQ0ssIG1vZGVsIGl0IGFzIHN1Y2gs
IGFuZCBkbyBub3Qgb3Blbi1jb2RlIGl0LgoKPgo+IFRoZSBCU1AgaGFkIGV4dGVuZGVkIHZhcmlv
dXMgZHJpdmVycywgc3VjaCBhcyA4MjUwIFVBUlQsIHRvIGRvIHRoaXMgCj4gYWNrCj4gaW4gdGhl
aXIgaW50ZXJydXB0IGhhbmRsZXIgdGhyb3VnaCBhbiBhZGRpdGlvbmFsIERUIHJlZyByZWdpb24u
IEkgCj4gdHJpZWQKPiB0byBjbGVhbiB0aGF0IHVwIGJ5IGhhbmRsaW5nIGl0IGNlbnRyYWxseSBo
ZXJlIGluIHRoZSBpcnFjaGlwIGRyaXZlci4KPgo+Pgo+PiBhcyBJIGNhbid0IHNlZSBob3cgdGhl
IHNhbWUgcmVnaXN0ZXIgY2FuIGJlIHVzZWQgZm9yIGJvdGggcHVycG9zZXMuCj4+IFlvdSBzaG91
bGQgYmUgYWJsZSB0byB2ZXJpZnkgdGhpcyBleHBlcmltZW50YWxseSwgZXZlbiB3aXRob3V0Cj4+
IGRvY3VtZW50YXRpb24uCj4KPiBUaGVyZSBhcmUgdGhyZWUgcmVnaXN0ZXJzIGhlcmU6Cj4KPiBN
SVNfVU1TS19JU1IgICAgLSBNSVNDIHVubWFza2VkIGludGVycnVwdCBzdGF0dXMgcmVnaXN0ZXIK
PiBNSVNfSVNSICAgICAgICAgLSBNSVNDICAgbWFza2VkIGludGVycnVwdCBzdGF0dXMgcmVnaXN0
ZXIKPiBNSVNfU0NQVV9JTlRfRU4gLSBNSVNDIFNDUFUgaW50ZXJydXB0IGVuYWJsZSByZWdpc3Rl
cgo+Cj4gVGhlIGxhdHRlciBpcyBhIHJlZ3VsYXIgUi9XIHJlZ2lzdGVyOyB0aGUgZm9ybWVyIHR3
byBoYXZlIGEgCj4gd3JpdGVfZGF0YQo+IGZpZWxkIGFzIEJJVCgwKSwgd2l0aCAxIGluZGljYXRp
bmcgYSB3cml0ZSB2cy4gMCBpbmRpY2F0aW5nIGNsZWFyLCAKPiBSQVouCj4KPiBCeSBlbmFibGlu
Zy9kaXNhYmxpbmcgaW4gX1NDUFVfSU5UX0VOIHdlIG1hc2svdW5tYXNrIHRoZW0gaW4gX0lTUiBi
dXQKPiBub3QgaW4gX1VNU0tfSVNSLgo+Cj4gRG9lcyB0aGF0IHNoZWQgYW55IG1vcmUgbGlnaHQ/
CgpOb25lIHdoYXRzb2V2ZXIuIFlvdXIgbWFzayBjYWxsYmFjayBkb2Vzbid0IG1ha2UgYW55IHNl
bnNlLCBzaW5jZSBpdAphY3R1YWxseSBhY2tzIHRoZSBpbnRlcnJ1cHQuIE15IGd1dCBmZWVsaW5n
IGlzIHRoYXQgeW91ciBlbmFibGUvZGlzYWJsZQpzaG91bGQgcmVhbGx5IGJlIG1hc2svdW5tYXNr
LgoKPgo+IFNvIGdpdmVuIHRoYXQgd2UncmUgaXRlcmF0aW5nIG92ZXIgcmVnX2lzciBhYm92ZSwg
d2UgY291bGQgcHJvYmFibHkgCj4gZHJvcAo+IHRoZSBtYXNrIGNoZWNrIGhlcmUuLi4KPgo+IElu
IGFkZGl0aW9uIHRoZXJlIGFyZSBNSVNfW1VNU0tfXUlTUl9TV0MgYW5kIE1JU19TRVRUSU5HX1NX
QyAKPiByZWdpc3RlcnMKPiBmb3IgU2VjdXJlIFdvcmxkLCBhbmQgTUlTX0ZBU1RfSU5UX0VOXyog
YW5kIE1JU19GQVNUX0lTUiBhcyB3ZWxsIGFzCj4gdmFyaW91cyBHUElPIGludGVycnVwdCByZWdp
c3RlcnMuCgpUaGlzIGRvZXNuJ3Qgc2VlbSByZWxldmFudCB0byB0aGUgZGlzY3Vzc2lvbiBoZXJl
LgoKICAgICAgICAgTS4KLS0gCkphenogaXMgbm90IGRlYWQuIEl0IGp1c3Qgc21lbGxzIGZ1bm55
Li4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
