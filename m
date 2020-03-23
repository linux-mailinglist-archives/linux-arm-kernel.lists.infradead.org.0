Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4619918FFAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 21:43:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=onsOQpaI37QaE0Z2swXZm1M89tuNx8XKUgtktQ3xG58=; b=nl0+Ked43UCe/1
	VNhq4ckCQX1Jj5nfJyW1R1RoUzzZQceAgl9FVf30ZAghsJ4Wy+UZai8T4m17iCWnsMlLu+siJJqw7
	3B+6z6fToqUAvh5gpqgXuWW53tbBmBuBlfjnkuSFwAQOj9FnlPV+8qKwHH7Xgk5KglCXFzUsDO168
	QUls9bIbOSa21hebDjql16PMcUZdze1jpyJWxYryyDgqn/21ISh1aexa3s1YcvKM73yMmIF+9Mw0I
	KnAr2WNOi+F+RoXTMwmr02qxjm9vaQLq4XTPtaCNJ1DjxaRIUrzNl7txzqvLEIIEkPz/1kg00G0WB
	C9JE7X6fQbj8vGhbmeng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGTuL-0002qL-Tf; Mon, 23 Mar 2020 20:42:49 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGTuA-0002pT-1X
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 20:42:40 +0000
Received: from basile.remlab.net (87-92-31-51.bb.dnainternet.fi [87.92.31.51])
 (Authenticated sender: remi)
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTPSA id 991185FB11;
 Mon, 23 Mar 2020 21:42:31 +0100 (CET)
From: =?ISO-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 1/3] arm64: clean up trampoline vector loads
Date: Mon, 23 Mar 2020 22:42:30 +0200
Message-ID: <2067644.cOvikPKVsA@basile.remlab.net>
Organization: Remlab
In-Reply-To: <20200323190408.GE4892@mbp>
References: <1938400.7m7sAWtiY1@basile.remlab.net>
 <20200323121437.GC2597@C02TD0UTHF1T.local> <20200323190408.GE4892@mbp>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_134238_232446_EAAA41CA 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbWFhbmFudGFpbmEgMjMuIG1hYWxpc2t1dXRhIDIwMjAsIDIxLjA0LjA5IEVFVCBDYXRhbGlu
IE1hcmluYXMgYSDDqWNyaXQgOgo+IE9uIE1vbiwgTWFyIDIzLCAyMDIwIGF0IDEyOjE0OjM3UE0g
KzAwMDAsIE1hcmsgUnV0bGFuZCB3cm90ZToKPiA+IE9uIE1vbiwgTWFyIDIzLCAyMDIwIGF0IDAy
OjA4OjUzUE0gKzAyMDAsIFLDqW1pIERlbmlzLUNvdXJtb250IHdyb3RlOgo+ID4gPiBMZSBtYWFu
YW50YWluYSAyMy4gbWFhbGlza3V1dGEgMjAyMCwgMTQuMDcuMDAgRUVUIE1hcmsgUnV0bGFuZCBh
IMOpY3JpdCA6Cj4gPiA+ID4gT24gVGh1LCBNYXIgMTksIDIwMjAgYXQgMTE6MTQ6MDVBTSArMDIw
MCwgUsOpbWkgRGVuaXMtQ291cm1vbnQgd3JvdGU6Cj4gPiA+ID4gPiBGcm9tOiBSw6ltaSBEZW5p
cy1Db3VybW9udCA8cmVtaS5kZW5pcy5jb3VybW9udEBodWF3ZWkuY29tPgo+ID4gPiA+ID4gCj4g
PiA+ID4gPiBUaGlzIHN3aXRjaGVzIGZyb20gY3VzdG9tIGluc3RydWN0aW9uIHBhdHRlcm5zIHRv
IHRoZSByZWd1bGFyIGxhcmdlCj4gPiA+ID4gPiBtZW1vcnkgbW9kZWwgc2VxdWVuY2Ugd2l0aCBB
RFJQIGFuZCBMRFIuIEluIGRvaW5nIHNvLCB0aGUgQURECj4gPiA+ID4gPiBpbnN0cnVjdGlvbiBj
YW4gYmUgZWxpbWluYXRlZCBpbiB0aGUgU0RFSSBoYW5kbGVyLCBhbmQgdGhlIGNvZGUgbm8KPiA+
ID4gPiA+IGxvbmdlciBhc3N1bWVzIHRoYXQgdGhlIHRyYW1wb2xpbmUgdmVjdG9ycyBhbmQgdGhl
IHZlY3RvcnMgYWRkcmVzcwo+ID4gPiA+ID4gYm90aAo+ID4gPiA+ID4gc3RhcnQgb24gYSBwYWdl
IGJvdW5kYXJ5Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBSw6ltaSBEZW5p
cy1Db3VybW9udCA8cmVtaS5kZW5pcy5jb3VybW9udEBodWF3ZWkuY29tPgo+ID4gPiA+ID4gLS0t
Cj4gPiA+ID4gPiAKPiA+ID4gPiA+ICBhcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5TIHwgOSArKysr
LS0tLS0KPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJu
ZWwvZW50cnkuUyBiL2FyY2gvYXJtNjQva2VybmVsL2VudHJ5LlMKPiA+ID4gPiA+IGluZGV4IGU1
ZDRlMzBlZTI0Mi4uMjRmODI4NzM5Njk2IDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvYXJjaC9hcm02
NC9rZXJuZWwvZW50cnkuUwo+ID4gPiA+ID4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvZW50cnku
Uwo+ID4gPiA+ID4gQEAgLTgwNSw5ICs4MDUsOSBAQCBhbHRlcm5hdGl2ZV9lbHNlX25vcF9lbmRp
Zgo+ID4gPiA+ID4gCj4gPiA+ID4gPiAgMjoKPiA+ID4gPiA+ICAJdHJhbXBfbWFwX2tlcm5lbAl4
MzAKPiA+ID4gPiA+ICAKPiA+ID4gPiA+ICAjaWZkZWYgQ09ORklHX1JBTkRPTUlaRV9CQVNFCj4g
PiA+ID4gPiAKPiA+ID4gPiA+IC0JYWRyCXgzMCwgdHJhbXBfdmVjdG9ycyArIFBBR0VfU0laRQo+
ID4gPiA+ID4gKwlhZHJwCXgzMCwgdHJhbXBfdmVjdG9ycyArIFBBR0VfU0laRQo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiAgYWx0ZXJuYXRpdmVfaW5zbiBpc2IsIG5vcCwgQVJNNjRfV09SS0FST1VORF9R
Q09NX0ZBTEtPUl9FMTAwMwo+ID4gPiA+ID4gCj4gPiA+ID4gPiAtCWxkcgl4MzAsIFt4MzBdCj4g
PiA+ID4gPiArCWxkcgl4MzAsIFt4MzAsICM6bG8xMjpfX2VudHJ5X3RyYW1wX2RhdGFfc3RhcnRd
Cj4gPiA+ID4gCj4gPiA+ID4gSSB0aGluayB0aGlzIGlzIGJ1c3RlZCBmb3IgITRLIGtlcm5lbHMg
b25jZSB3ZSByZWR1Y2UgdGhlIGFsaWdubWVudCBvZgo+ID4gPiA+IF9fZW50cnlfdHJhbXBfZGF0
YV9zdGFydC4KPiA+ID4gPiAKPiA+ID4gPiBUaGUgQURSUCBnaXZlcyB1cyBhIDY0SyBhbGlnbmVk
IGFkZHJlc3MgKHdpdGggYml0cyAxNTowIGNsZWFyKS4gVGhlCj4gPiA+ID4gbG8xMgo+ID4gPiA+
IHJlbG9jYXRpb24gZ2l2ZXMgdXMgYml0cyAxMTowLCBzbyB3ZSBoYXZlbid0IGFjY291bnRlZCBm
b3IgYml0cyAxNToxMi4KPiA+ID4gCj4gPiA+IElNVSwgQURSUCBnaXZlcyBhIDRLIGFsaWduZWQg
dmFsdWUsIHJlZ2FyZGxlc3Mgb2YgTU1VIChUQ1IpIHNldHRpbmdzLgo+ID4gCj4gPiBTb3JyeSwg
SSBoYWQgZXJyb25lb3VzbHkgYXNzdW1lZCB0cmFtcF92ZWN0b3JzIHdhcyBwYWdlIGFsaWduZWQu
IFRoZQo+ID4gaXNzdWUgc3RpbGwgc3RhbmRzIC0tIHdlIGhhdmVuJ3QgYWNjb3VudGVkIGZvciBi
aXRzIDE1OjEyLCBhcyB0aG9zZSBjYW4KPiA+IGRpZmZlciBiZXR3ZWVuIHRyYW1wX3ZlY3RvcnMg
YW5kIF9fZW50cnlfdHJhbXBfZGF0YV9zdGFydC4KCkRvZXMgdGhhdCBtZWFuIHRoYXQgdGhlIFNE
RUkgY29kZSBuZXZlciB3b3JrZWQgd2l0aCBwYWdlIHNpemUgPiA0IEtpQj8KCj4gU2hvdWxkIHdl
IGp1c3QgdXNlIGFkcnAgb24gX19lbnRyeV90cmFtcF9kYXRhX3N0YXJ0PyBBbnl3YXksIHRoZSBk
aWZmCj4gYmVsb3cgZG9lc24ndCBzb2x2ZSB0aGUgaXNzdWUgSSdtIHNlZWluZyAob25seSByZXZl
cnRpbmcgcGF0Y2ggMykuCgpBRkFJVSwgdGhlIHByZWV4aXN0aW5nIGNvZGUgdXNlcyB0aGUgbWFu
dWFsIFBBR0VfU0laRSBvZmZzZXQgYmVjYXVzZSB0aGUgb2Zmc2V0IAppbiB0aGUgbWFpbiB2bWxp
bnV4IGRvZXMgbm90IG1hdGNoIHRoZSBhcmNoaXRlY3RlZCBvZmZzZXQgaW5zaWRlIHRoZSBmaXht
YXAuIElmIApzbywgdGhlbiB1c2luZyB0aGUgc3ltYm9sIGRpcmVjdGx5IHdpbGwgbm90IHdvcmsg
YXQgYWxsLgoKCgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUyBiL2Fy
Y2gvYXJtNjQva2VybmVsL2VudHJ5LlMKPiBpbmRleCBjYTEzNDBlYjQ2ZDguLjRjYzlkMWRmMzk4
NSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5TCj4gKysrIGIvYXJjaC9h
cm02NC9rZXJuZWwvZW50cnkuUwo+IEBAIC04MTAsNyArODEwLDcgQEAgYWx0ZXJuYXRpdmVfZWxz
ZV9ub3BfZW5kaWYKPiAgMjoKPiAgCXRyYW1wX21hcF9rZXJuZWwJeDMwCj4gICNpZmRlZiBDT05G
SUdfUkFORE9NSVpFX0JBU0UKPiAtCWFkcnAJeDMwLCB0cmFtcF92ZWN0b3JzICsgUEFHRV9TSVpF
Cj4gKwlhZHJwCXgzMCwgX19lbnRyeV90cmFtcF9kYXRhX3N0YXJ0Cj4gIGFsdGVybmF0aXZlX2lu
c24gaXNiLCBub3AsIEFSTTY0X1dPUktBUk9VTkRfUUNPTV9GQUxLT1JfRTEwMDMKPiAgCWxkcgl4
MzAsIFt4MzAsICM6bG8xMjpfX2VudHJ5X3RyYW1wX2RhdGFfc3RhcnRdCj4gICNlbHNlCj4gQEAg
LTk2NCw3ICs5NjQsNyBAQCBTWU1fQ09ERV9TVEFSVChfX3NkZWlfYXNtX2VudHJ5X3RyYW1wb2xp
bmUpCj4gIDE6CXN0cgl4NCwgW3gxLCAjKFNERUlfRVZFTlRfSU5UUkVHUyArIFNfT1JJR19BRERS
X0xJTUlUKV0KPiAKPiAgI2lmZGVmIENPTkZJR19SQU5ET01JWkVfQkFTRQo+IC0JYWRycAl4NCwg
dHJhbXBfdmVjdG9ycyArIFBBR0VfU0laRQo+ICsJYWRycAl4NCwgX19zZGVpX2FzbV90cmFtcG9s
aW5lX25leHRfaGFuZGxlcgo+ICAJbGRyCXg0LCBbeDQsICM6bG8xMjpfX3NkZWlfYXNtX3RyYW1w
b2xpbmVfbmV4dF9oYW5kbGVyXQo+ICAjZWxzZQo+ICAJbGRyCXg0LCA9X19zZGVpX2FzbV9oYW5k
bGVyCgoKLS0gCumbt+exs+KAp+W+t+WwvC3lupPlsJTokpkKaHR0cDovL3d3dy5yZW1sYWIubmV0
LwoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
