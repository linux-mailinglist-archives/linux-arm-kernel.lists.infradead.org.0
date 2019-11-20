Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1291039FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 13:24:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LfoirVmAXiyvWNo9tX5Ivivamshkob3sVbSkRyBzuOk=; b=FRmswuCsydrPn/q+pOdP0pnU+
	4MgJ1YOiznTTyvZ67judkzyIMcTN9jKjhSUVzVSImmLMeuklRnFHazJwwayBgCPR2/Ebu/3ZcOsiL
	+Xpm7T64vfzrfucAbTuf6GqxashrGbgUWZtbLqeLxEWjiFAQ3MLl0B1FEofTr8O1Y9yayVK0IqlFY
	nvxDjHRhKIav8g3QicRxjBRMpe2gjCTQZLz2kze7nL6xWoBkWp3VcR/ffIppr8L71pr/ujOx0Fh8K
	InypiUhIT992sbJXrVxnPRBdfM2FZPmuVrFjeM5C8wPcyUK1Bd8j/LutW/zytKZrsu8bS9UZDepnm
	UVNlZV+mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXP1d-0005r3-Qr; Wed, 20 Nov 2019 12:24:01 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXP1U-0005pY-S7; Wed, 20 Nov 2019 12:23:54 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXP1R-0002tb-PO; Wed, 20 Nov 2019 13:23:49 +0100
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v4 2/8] irqchip: Add Realtek RTD1295 mux driver
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 20 Nov 2019 12:23:49 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <37b3b5d3-b3c8-b513-f8b5-9054f32a4b53@suse.de>
References: <20191119021917.15917-1-afaerber@suse.de>
 <20191119021917.15917-3-afaerber@suse.de>
 <a34e00cac16899b53d0b6445f0e81f4c@www.loen.fr>
 <0bff78c1-a1d0-9631-fbf4-e0d1ef1264ea@suse.de>
 <8137861d0a89dd246b3334ac596da8be@www.loen.fr>
 <37b3b5d3-b3c8-b513-f8b5-9054f32a4b53@suse.de>
Message-ID: <3d74bc591552a22b06f6f77190cbfec5@www.loen.fr>
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
X-CRM114-CacheID: sfid-20191120_042353_052294_2AF2600A 
X-CRM114-Status: GOOD (  16.35  )
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

T24gMjAxOS0xMS0yMCAxMjoxMiwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+IEFtIDIwLjExLjE5
IHVtIDExOjE4IHNjaHJpZWIgTWFyYyBaeW5naWVyOgo+PiBPbiAyMDE5LTExLTE5IDIzOjI1LCBB
bmRyZWFzIEbDpHJiZXIgd3JvdGU6Cj4+PiBBbSAxOS4xMS4xOSB1bSAxMzowMSBzY2hyaWViIE1h
cmMgWnluZ2llcjoKPj4+PiBPbiAyMDE5LTExLTE5IDAyOjE5LCBBbmRyZWFzIEbDpHJiZXIgd3Jv
dGU6Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lycWNoaXAvaXJxLXJ0ZDExOTUtbXV4LmMK
Pj4+Pj4gYi9kcml2ZXJzL2lycWNoaXAvaXJxLXJ0ZDExOTUtbXV4LmMKPj4+Pj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPj4+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi5lNmIwODQzOGIyM2MKPj4+Pj4g
LS0tIC9kZXYvbnVsbAo+Pj4+PiArKysgYi9kcml2ZXJzL2lycWNoaXAvaXJxLXJ0ZDExOTUtbXV4
LmMKPj4+IFsuLi5dCj4+Pj4+ICtzdGF0aWMgdm9pZCBydGQxMTk1X211eF9pcnFfaGFuZGxlKHN0
cnVjdCBpcnFfZGVzYyAqZGVzYykKPj4+Pj4gK3sKPj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgcnRkMTE5
NV9pcnFfbXV4X2RhdGEgKmRhdGEgPQo+Pj4+PiBpcnFfZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRl
c2MpOwo+Pj4+PiArwqDCoMKgIHN0cnVjdCBpcnFfY2hpcCAqY2hpcCA9IGlycV9kZXNjX2dldF9j
aGlwKGRlc2MpOwo+Pj4+PiArwqDCoMKgIHUzMiBpc3IsIG1hc2s7Cj4+Pj4+ICvCoMKgwqAgaW50
IGk7Cj4+Pj4+ICsKPj4+Pj4gK8KgwqDCoCBjaGFpbmVkX2lycV9lbnRlcihjaGlwLCBkZXNjKTsK
Pj4+Pj4gKwo+Pj4+PiArwqDCoMKgIGlzciA9IHJlYWRsX3JlbGF4ZWQoZGF0YS0+cmVnX2lzcik7
Cj4+Pj4+ICsKPj4+Pj4gK8KgwqDCoCB3aGlsZSAoaXNyKSB7Cj4+Pj4+ICvCoMKgwqDCoMKgwqDC
oCBpID0gX19mZnMoaXNyKTsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlzciAmPSB+QklUKGkpOwo+
Pj4+PiArCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBtYXNrID0gZGF0YS0+aW5mby0+aXNyX3RvX2lu
dF9lbl9tYXNrW2ldOwo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKG1hc2sgJiYgIShkYXRhLT5z
Y3B1X2ludF9lbiAmIG1hc2spKQo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250aW51
ZTsKPj4+Pj4gKwo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKCFnZW5lcmljX2hhbmRsZV9pcnEo
aXJxX2ZpbmRfbWFwcGluZyhkYXRhLT5kb21haW4sIAo+Pj4+PiBpKSkpCj4+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHdyaXRlbF9yZWxheGVkKEJJVChpKSwgZGF0YS0+cmVnX2lzcik7Cj4+
Pj4KPj4+PiBXaGF0IGRvZXMgdGhpcyB3cml0ZSBkbyBleGFjdGx5PyBJdCBpcyB0aGUgc2FtZSB0
aGluZyBhcyBhICdtYXNrJywKPj4+PiB3aGljaCBpcyBwcmV0dHkgb2RkLiBTbyBlaXRoZXI6Cj4+
Pj4KPj4+PiAtIHRoaXMgaXMgbm90IGRvaW5nIGFueXRoaW5nIGFuZCB5b3VyICdtYXNrJyBjYWxs
YmFjayBpcyBib2d1cwo+Pj4+IMKgIChvdGhlcndpc2UgeW91J2QgbmV2ZXIgaGF2ZSBtb3JlIHRo
YW4gYSBzaW5nbGUgaW50ZXJydXB0KQo+Pj4+Cj4+Pj4gLSBvciB0aGlzIGlzIGFuIEFDSyBvcGVy
YXRpb24sIGFuZCB0aGlzIHNob3VsZCBiZSBkZXNjcmliZWQgYXMKPj4+PiDCoCBzdWNoIChhbmQg
dGhlbiBmaXggdGhlIG1hc2svdW5tYXNrL2VuYWJsZS9kaXNhYmxlIG1lc3MgdGhhdAo+Pj4+IMKg
IHJlc3VsdHMgZnJvbSBpdCkuCj4+Pgo+Pj4gVGhpcyBpcyBzdXBwb3NlZCB0byBiZSBhbiBBQ0ss
IGkuZS4gY2xlYXItMS1iaXRzIG9wZXJhdGlvbi4KPj4KPj4gSWYgaXQgaXMgYW4gQUNLLCBtb2Rl
bCBpdCBhcyBzdWNoLCBhbmQgZG8gbm90IG9wZW4tY29kZSBpdC4KPgo+IEkgaGF2ZSBmb3VuZCBh
biAuaXJxX2FjayBjYWxsYmFjayAtIG1vdmluZyB0aGlzIHRoZXJlIGFwcGVhcnMgdG8gCj4gd29y
ay4KPgo+IEFsdGVybmF0aXZlbHkgdGhlcmUgaXMgYW4gaXJxX2VvaSBjYWxsYmFjayBhbmQgYW4g
Cj4gSVJRQ0hJUF9FT0lfSUZfSEFORExFRAo+IGZsYWcuCj4KPiBJdCB3b3VsZCByZWFsbHkgaGVs
cCBtZSBpZiB5b3Ugc3BlbGxlZCBvdXQgZXhwbGljaXRseSB3aGVyZSB5b3UgdGhpbmsgCj4gSQo+
IHNob3VsZCBiZSBtb3ZpbmcgY29kZSwgYXMgdGhlIGRvY3VtZW50YXRpb24gaW4gaXJxLmggaXMg
bm90IGFsbCB0aGF0Cj4gaGVscGZ1bCBpbiB0ZXJtcyBvZiB3aGVuIGFyZSB0aGV5IGNhbGxlZCBh
bmQgd2hhdCBzaG91bGQgYmUgZG9uZSAKPiB0aGVyZS4KPiBJbiBjYXNlIG5vdCBvYnZpb3VzLCB0
aGlzIGlzIG15IGZpcnN0IGlycWNoaXAgZHJpdmVyLgoKSW1wbGVtZW50aW5nIG9uZSBjYWxsYmFj
ayBvciB0aGUgb3RoZXIgcmVhbGx5IGRlcGVuZHMgb24gaG93IHRoZSBIVwpiZWhhdmVzLiBUaGUg
aXJxIGZyYW1ld29yayBnaXZlcyB5b3UgYSB3aWRlIHJhbmdlIG9mIGZsb3dzIHRoYXQgYWxsb3cK
eW91IHRvIHBsdWcgeW91ciBkcml2ZXIgaW4gdGhlIHN0YWNrLCBidXQgdGhlIHByZXJlcXVpc2l0
ZSBpcyB0aGF0IHlvdQprbm93ICpleGFjdGx5KiBob3cgdGhlIEhXIGJlaGF2ZXMuIEFjayBhbmQg
RU9JIGhhdmUgdmVyeSBkaWZmZXJlbnQKbWVhbmluZ3MsIGFyZSBjYWxsZWQgZnJvbSBkaWZmZXJl
bnQgZmxvd3MsIGFuZCBjb3JyZXNwb25kIHRvIGRpZmZlcmVudApzdGF0ZXMgaW4gdGhlIGludGVy
cnVwdCBsaWZlIGN5Y2xlLgoKVXNlIHRoZSB3cm9uZyBvbmUsIGFuZCB5b3Ugd2lsbCBsb3NlIGlu
dGVycnVwdHMuIElmIHlvdSBkb24ndCBrbm93IGhvdwp0aGUgSFcgYmVoYXZlcywgdGhlbiB0aGUg
Y2hhbmNlcyBvZiBzb21ldGhpbmcgYmFkIGhhcHBlbmluZyBhcmUgcHJldHR5CmhpZ2ggKHlvdSds
bCBlbmQtdXAgaW4gZGVhZGxvY2sgbGFuZCBhdCBzb21lIHBvaW50KS4gSSdtIGFmcmFpZCBJIApj
YW5ub3QKaGVscCB5b3Ugd2l0aCB0aGF0LCBzaG9ydCBvZiBiZWluZyBnaXZlbiBhY2Nlc3MgdG8g
c29tZSBkb2N1bWVudGF0aW9uCnRoYXQgZG9lc24ndCBzZWVtIHRvIGV4aXN0LgoKICAgICAgICAg
TS4KLS0gCkphenogaXMgbm90IGRlYWQuIEl0IGp1c3Qgc21lbGxzIGZ1bm55Li4uCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
