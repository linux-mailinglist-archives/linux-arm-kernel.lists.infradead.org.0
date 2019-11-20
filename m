Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C32D103D4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 15:33:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sz1zIYdu2hcLgLBgVCpVdW07BtG23gUSAfVpYmKzTGU=; b=a1RN6dxtvgB9qrgFXlC4kAuuF
	D22wYpFg+KG+6nGUFU/IfEv81vFTKHxasXBKIqZ3LnRS+mHM2V1dnu8lDUSL+MiL7gZVHkA5physH
	mP4zDFksrrXFOFWfYKdTNG4mPM0ewOhLJ1V3J4xHyi9jlw9862UlP/+T/kgbLvAgO2JgkEXz72xXL
	B3u23TeGjNl4F7GMwBSZFCiSA75jEHRIbrg4nUeAhqzD4PgiiHsgV4TmLR9IjNNSIp65blj3Gh9LI
	/rHKju+KKR0g38DQN5dHQNcXJWhI7FK9IAZvlNh9hH398qpwJa46u6NWAAKZOEA1ykU5gV+rtcTH4
	O60YduSww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXR2Q-00024b-HT; Wed, 20 Nov 2019 14:32:58 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXR2H-00023C-8y; Wed, 20 Nov 2019 14:32:51 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXR2B-0005H9-UN; Wed, 20 Nov 2019 15:32:43 +0100
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v4 2/8] irqchip: Add Realtek RTD1295 mux driver
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 20 Nov 2019 14:32:43 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <18c09fc4-fe7b-7ba0-7cd3-ae0c650ca4a8@suse.de>
References: <20191119021917.15917-1-afaerber@suse.de>
 <20191119021917.15917-3-afaerber@suse.de>
 <a34e00cac16899b53d0b6445f0e81f4c@www.loen.fr>
 <e98364c5-a859-7981-8ccf-f8e5b5069379@suse.de> <20191119222956.23665e5d@why>
 <d7416bdb-e20a-42e1-daff-c61369f359fa@suse.de>
 <e4d30ff2485c3f9ffd2b934f1f757d19@www.loen.fr>
 <18c09fc4-fe7b-7ba0-7cd3-ae0c650ca4a8@suse.de>
Message-ID: <5d834a7c4b6195bb09675ffb96f509de@www.loen.fr>
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
X-CRM114-CacheID: sfid-20191120_063249_460151_17CE4B0A 
X-CRM114-Status: GOOD (  20.12  )
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

T24gMjAxOS0xMS0yMCAxMzozNCwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+IEFtIDIwLjExLjE5
IHVtIDExOjIwIHNjaHJpZWIgTWFyYyBaeW5naWVyOgo+PiBPbiAyMDE5LTExLTE5IDIzOjMzLCBB
bmRyZWFzIEbDpHJiZXIgd3JvdGU6Cj4+PiBBbSAxOS4xMS4xOSB1bSAyMzoyOSBzY2hyaWViIE1h
cmMgWnluZ2llcjoKPj4+PiBPbiBUdWUsIDE5IE5vdiAyMDE5IDIxOjU2OjQ4ICswMTAwCj4+Pj4g
QW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPiB3cm90ZToKPj4+Pj4gQW0gMTkuMTEu
MTkgdW0gMTM6MDEgc2NocmllYiBNYXJjIFp5bmdpZXI6Cj4+Pj4+PiBPbiAyMDE5LTExLTE5IDAy
OjE5LCBBbmRyZWFzIEbDpHJiZXIgd3JvdGU6Cj4+Pj4+Pj4gK3N0YXRpYyB2b2lkIHJ0ZDExOTVf
bXV4X2VuYWJsZV9pcnEoc3RydWN0IGlycV9kYXRhICpkYXRhKQo+Pj4+Pj4+ICt7Cj4+Pj4+Pj4g
K8KgwqDCoCBzdHJ1Y3QgcnRkMTE5NV9pcnFfbXV4X2RhdGEgKm11eF9kYXRhID0KPj4+Pj4+PiBp
cnFfZGF0YV9nZXRfaXJxX2NoaXBfZGF0YShkYXRhKTsKPj4+Pj4+PiArwqDCoMKgIHVuc2lnbmVk
IGxvbmcgZmxhZ3M7Cj4+Pj4+Pj4gK8KgwqDCoCB1MzIgbWFzazsKPj4+Pj4+PiArCj4+Pj4+Pj4g
K8KgwqDCoCBtYXNrID0gbXV4X2RhdGEtPmluZm8tPmlzcl90b19pbnRfZW5fbWFza1tkYXRhLT5o
d2lycV07Cj4+Pj4+Pj4gK8KgwqDCoCBpZiAoIW1hc2spCj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKg
IHJldHVybjsKPj4+Pj4+Cj4+Pj4+PiBIb3cgY2FuIHRoaXMgaGFwcGVuPyBZb3UndmUgbWFwcGVk
IHRoZSBpbnRlcnJ1cHQsIHNvIGl0IGV4aXN0cy4KPj4+Pj4+IEkgY2FuJ3Qgc2VlIGhvdyB5b3Ug
Y2FuIGRlY2lkZSB0byBmYWlsIHN1Y2ggZW5hYmxlLgo+Pj4+Pgo+Pj4+PiBUaGUgW1VNU0tfXUlT
UiBiaXRzIGFuZCB0aGUgU0NQVV9JTlRfRU4gYml0cyBhcmUgbm90IChhbGwpIHRoZSAKPj4+Pj4g
c2FtZS4KPj4+Pj4KPj4+Pj4gTXkgLi4uX2lzcl90b19zY3B1X2ludF9lbltdIGFycmF5cyBoYXZl
IDMyIGVudHJpZXMgZm9yIE8oMSkgCj4+Pj4+IGxvb2t1cCwgYnV0Cj4+Pj4+IGFyZSBzcGFyc2Vs
eSBwb3B1bGF0ZWQuIFNvIHRoZXJlIGFyZSBjaXJjdW1zdGFuY2VzIHN1Y2ggYXMgCj4+Pj4+IFdE
T0dfTk1JIGFzCj4+Pj4+IHdlbGwgYXMgcmVzZXJ2ZWQgYml0cyB0aGF0IHdlIGNhbm5vdCBlbmFi
bGUuCj4+Pj4KPj4+PiBCdXQgdGhlIHlvdSBzaG91bGQgaGF2ZSBmYWlsZWQgdGhlIG1hcC4gVGhl
IG1vbWVudCB5b3UgYWxsb3cgdGhlCj4+Pj4gbWFwcGluZyB0byBvY2N1ciwgeW91IGhhdmUgYWNj
ZXB0ZWQgdGhlIGNvbnRyYWN0IHRoYXQgdGhpcyAKPj4+PiBpbnRlcnJ1cHQgaXMKPj4+PiB1c2Fi
bGUuCj4+Pj4KPj4+Pj4gVGhpcyBjaGVjayBzaG91bGQgYmUKPj4+Pj4gaWRlbnRpY2FsIHRvIHYz
OyB0aGUgZXF1aXZhbGVudCBtYXNrIGNoZWNrIGluc2lkZSB0aGUgaW50ZXJydXB0IAo+Pj4+PiBo
YW5kbGVyCj4+Pj4+IHdhcyBleHRlbmRlZCB3aXRoICJtYXNrICYmIiB0byBkbyB0aGUgc2FtZSBp
biB0aGlzIHY0Lgo+Pj4+Cj4+Pj4gU3B1cmlvdXMgaW50ZXJydXB0cyBhcmUgYSBkaWZmZXJlbnQg
bWF0dGVyLiBXaGF0IEknbSBvYmplY3RpbmcgdG8gCj4+Pj4gaGVyZQo+Pj4+IGlzIGEgc2ltcGxl
IHF1ZXN0aW9uIG9mIGxvZ2ljLCB3aGV0aGVyIG9yIG5vdCB5b3UgYXJlIGFsbG93ZWQgdG8gCj4+
Pj4gZmFpbAo+Pj4+IGVuYWJsaW5nIGFuIGludGVycnVwdCB0aGF0IHlvdSd2ZSBvdGhlcndpc2Ug
YWxsb3dlZCB0byBiZSAKPj4+PiBwb3B1bGF0ZWQuCj4+Pgo+Pj4gVGhlbiB3aGF0IGFyZSB5b3Ug
c3VnZ2VzdGluZyBpbnN0ZWFkPyBJIGRvbid0IHNlZSBob3cgbXkgYXJyYXkgbWFwCj4+PiBsb29r
dXAgY291bGQgZmFpbCBvdGhlciB0aGFuIHJldHVybmluZyBhIHplcm8gdmFsdWUsIGdpdmVuIGl0
cyAKPj4+IHN0YXRpYwo+Pj4gaW5pdGlhbGl6YXRpb24uIENoZWNrIGZvciBhIHplcm8gbWFzayBp
biAKPj4+IHJ0ZDExOTVfbXV4X2lycV9kb21haW5fbWFwKCk/Cj4+PiBUaGVuIHdlIHdvdWxkbid0
IGJlIGFibGUgdG8gdXNlIHRoZSBtZW50aW9uZWQgV0RPR19OTUkuIEFkZCBhbm90aGVyCj4+PiBw
ZXItbXV4IGluZm8gZmllbGQgZm9yIHdoaWNoIGludGVycnVwdHMgYXJlIHZhbGlkIHRvIG1hcD8K
Pj4KPj4gSSdtIHN1Z2dlc3RpbmcgdGhhdCB5b3UgZmFpbCB0aGUgbWFwIGlmIHlvdSdyZSB1bmFi
bGUgdG8gYWxsb3cgdGhlCj4+IGludGVycnVwdCB0byBiZSBlbmFibGVkLgo+Cj4gVGhlIE5NSSB3
aWxsIGFsd2F5cyBiZSBlbmFibGVkLCBpdCBqdXN0IGNhbid0IGJlIGRpc2FibGVkLgoKSWYgSSBy
ZWFsbHkgY2FyZWQsIEknZCBjcnkuIFRoaXMgSFcgaXMgdXNlbGVzcy4KCj4gSSBoYXZlIGFkZGVk
IGEgY2hlY2sgdG8gc3VwcHJlc3MgYSB6ZXJvIGh3aXJxLiBTdXBwcmVzc2luZyByZXNlcnZlZCAK
PiBJUlEKPiBiaXRzIHdpbGwgdGFrZSBzb21lIG1vcmUgZWZmb3J0IHRvIGRpc3Rpbmd1aXNoIGZy
b20gTk1Jcy4gSW4gCj4gcGFydGljdWxhcgo+IGlmIHdlIGZsYWcgdGhpcyBpbiB0aGUgLi4uX2lz
cl90b19zY3B1X2ludF9lbiBhcnJheSBieSBzb21lIG1hZ2ljIAo+IG1hc2sKPiB2YWx1ZSBsaWtl
IDB4ZmZmZmZmZmYgdGhlbiBhbGwgdXNlcnMgbmVlZCB0byBjaGVjayBmb3IgdHdvIHJhdGhlciAK
PiB0aGFuCj4gb25lIHZhbHVlIC0gYnV0IGlmIHdlIHJlZHVjZSB0aGUgdXNlcnMsIGl0IHNob3Vs
ZG4ndCBtYXR0ZXIgdG9vIG11Y2guCgoxKSB5b3UgY2FuJ3Qgc3VwcHJlc3MgYSBsZXZlbCBpbnRl
cnJ1cHQgdGhhdCBjYW5ub3QgYmUgZGlzYWJsZWQuIEl0IAp3aWxsCmZpcmUgYmFjayBhdCB5b3Uu
CjIpIGdpdmVuIHRoYXQgeW91IGhhdmUgdG8gZGVtdXggdGhpbmdzIHVzaW5nIE1NSU8gYWNjZXNz
ZXMsIHBlcmZvcm1hbmNlCmlzIHRoZSBsZWFzdCBvZiBhbnlib2R5J3Mgd29ycnkuCgo+Cj4gV2l0
aCBjb250cmFjdCBJIGFzc3VtZSB5b3UncmUgcmVmZXJyaW5nIHRvIHRoZXNlIGNhbGxiYWNrcyBo
YXZpbmcgYSAKPiB2b2lkCj4gcmV0dXJuIHR5cGUsIHVuYWJsZSB0byByZXR1cm4gYW4gZXJyb3Ig
dG8gdGhlIGNhbGxlciwgYW5kIHRoZXJlIGJlaW5nIAo+IG5vCj4gaXNfZW5hYmxlZC9pc19tYXNr
ZWQgY2FsbGJhY2tzIGZvciBhbnlvbmUgdG8gZGlzY292ZXIgdGhpcy4KPgo+IFVuZm9ydHVuYXRl
bHkgTk1JIGhhbmRsaW5nIGFwcGVhcnMgdG8gYmUgb25seSB1c2VkIGluIEdJQ3YzIGFuZCBpcyAK
PiBub3QKPiB2ZXJ5IGludHVpdGl2ZSBmb3IgbWU6IEFwcGFyZW50bHkgSSBjYW4gb25seSBmbGFn
IHRoZSB3aG9sZSBpcnFfY2hpcCAKPiBhcwo+IGJlaW5nIE5NSSBidXQgbm90IGluZGl2aWR1YWwg
SVJRcz8gV291bGQgdGhhdCBtZWFuIHRoYXQgdGhpcyBkcml2ZXIKPiB3b3VsZCBuZWVkIHRvIGlu
c3RhbnRpYXRlIGEgc2Vjb25kIGlycV9jaGlwIGZvciB0aGF0IG9uZSBJUlE/IEhvdyAKPiB3b3Vs
ZAo+IHRoYXQgd29yayBmb3IgbWFwcGluZyBmcm9tIERUPyBHaXZlbiB0aGF0IHRoaXMgbXV4IHJl
bGllcyBvbiBhIAo+IG1hc2thYmxlCj4gR0lDdjIgSVJRLCBpdCdzIG5vdCBhICJ0cnVlIiBOTUkg
aW4gdGhlIExpbnV4IHNlbnNlIGFueXdheSwgb3RoZXIgCj4gdGhhbgo+IHRoZSAuaXJxX21hc2sg
Y2FsbGJhY2sgbm90IGJlaW5nIGFwcGxpY2FibGUuIFdoaWxlIEkgZG9uJ3QgbmVlZCB0aGF0IAo+
IE5NSQo+IGltbWVkaWF0ZWx5LCBJIHdvdWxkIHByZWZlciBub3QgdG8gbWVyZ2UgYSBkcml2ZXIg
dGhhdCBieSBkZXNpZ24gCj4gY2FuJ3QKPiBjb3BlIHdpdGggaXQgbGF0ZXIuCgpZb3UgYXJlIG1p
c3NpbmcgdGhlIHBvaW50IG9mIHRoZSBwc2V1ZG8tTk1JIGluZnJhc3RydWN0dXJlLiBUbyBiZSAK
dXNlZnVsLAppdCAqbXVzdCogYmUgdGhlIHJvb3QgaW50ZXJydXB0IGNvbnRyb2xsZXIuIE90aGVy
d2lzZSwgeW91IGNhbm5vdCAKZGlzdGluZ3Vpc2gKaXQgZnJvbSB0aGUgb3RoZXIgaW50ZXJydXB0
cyBpdCBpcyBtdXhlZCB3aXRoLiBZb3VyICdOTUknIGlzIGFic29sdXRlbHkKdW51c2FibGUsIGFu
ZCB3aG9ldmVyIGRlc2lnbmVkIHRoaXMgSFcgc2hvdWxkIGJlIGFjdGl2ZWx5IHByZXZlbnRlZApm
cm9tIGV2ZXIgZGVzaWduaW5nIGFub3RoZXIgaW50ZXJydXB0IGNvbnRyb2xsZXIgYWdhaW4uCgo+
IEknbGwgdHJ5IHRvIHBvc3QgYSB2NSB3aXRoIHJzdiBhbmQgbm1pIGJsb2NrZWQgaW4gbWFwIGZv
ciBmdXJ0aGVyCj4gZGlzY3Vzc2lvbiB0b25pZ2h0LgoKSSBkb24ndCBwbGFuIHRvIHJldmlldyBh
bnkgb2YgdGhpcyB1bnRpbCBhZnRlciB0aGUgbWVyZ2Ugd2luZG93LCBzbyAKcGxlYXNlCnRha2Ug
YXMgbG9uZyBhcyB5b3Ugd2FudC4KCiAgICAgICAgIE0uCi0tIApKYXp6IGlzIG5vdCBkZWFkLiBJ
dCBqdXN0IHNtZWxscyBmdW5ueS4uLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
