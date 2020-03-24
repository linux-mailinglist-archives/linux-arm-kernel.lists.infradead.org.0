Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0396190B89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:53:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hat41uAh540my2x81z18B4HXolC5xDH4KUfhwoGNHxc=; b=DRbIYe0RFdBZGY
	knLsqsor2b6tVeFc7B8bKl4oC2mWA9UR7A68pq56+C2jKhmqU778j+nSzOLxX68dLi6oJPFQBHyGH
	YusvawBNa375WWaDwHxuXZcj2I6svs+ESm9GdNYsc4dp0L6RERDm0pxI453b/jcBO9hnmSFZb+8qa
	TgqJwPG3u/SBW24Yd8AOqK4A1MESYrd6au2QQPziJ380YdIAHvZLbigwD2R9qtXD5xejjHLWJGxee
	FMbMwAfZSrWhZRrROSOgUmVSqB9CeqqJMHnD89yQTbvMcoDin6d10xAmw7H42GeJtov/6WRQT9Jp+
	9+FpBRjA0qELJXx7HqFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGhBR-0004QX-Fs; Tue, 24 Mar 2020 10:53:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGhAZ-00040E-KF
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:52:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC0B330E;
 Tue, 24 Mar 2020 03:52:26 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2425D3F792;
 Tue, 24 Mar 2020 03:52:24 -0700 (PDT)
Date: Tue, 24 Mar 2020 10:52:17 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: =?utf-8?B?UsOpbWk=?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH 1/3] arm64: clean up trampoline vector loads
Message-ID: <20200324105217.GA20256@C02TD0UTHF1T.local>
References: <1938400.7m7sAWtiY1@basile.remlab.net>
 <20200323121437.GC2597@C02TD0UTHF1T.local>
 <20200323190408.GE4892@mbp> <2067644.cOvikPKVsA@basile.remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2067644.cOvikPKVsA@basile.remlab.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_035227_780666_A1E56692 
X-CRM114-Status: GOOD (  22.40  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, will@kernel.org,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXIgMjMsIDIwMjAgYXQgMTA6NDI6MzBQTSArMDIwMCwgUsOpbWkgRGVuaXMtQ291
cm1vbnQgd3JvdGU6Cj4gTGUgbWFhbmFudGFpbmEgMjMuIG1hYWxpc2t1dXRhIDIwMjAsIDIxLjA0
LjA5IEVFVCBDYXRhbGluIE1hcmluYXMgYSDDqWNyaXQgOgo+ID4gT24gTW9uLCBNYXIgMjMsIDIw
MjAgYXQgMTI6MTQ6MzdQTSArMDAwMCwgTWFyayBSdXRsYW5kIHdyb3RlOgo+ID4gPiBPbiBNb24s
IE1hciAyMywgMjAyMCBhdCAwMjowODo1M1BNICswMjAwLCBSw6ltaSBEZW5pcy1Db3VybW9udCB3
cm90ZToKPiA+ID4gPiBMZSBtYWFuYW50YWluYSAyMy4gbWFhbGlza3V1dGEgMjAyMCwgMTQuMDcu
MDAgRUVUIE1hcmsgUnV0bGFuZCBhIMOpY3JpdCA6Cj4gPiA+ID4gPiBPbiBUaHUsIE1hciAxOSwg
MjAyMCBhdCAxMToxNDowNUFNICswMjAwLCBSw6ltaSBEZW5pcy1Db3VybW9udCB3cm90ZToKPiA+
ID4gPiA+ID4gRnJvbTogUsOpbWkgRGVuaXMtQ291cm1vbnQgPHJlbWkuZGVuaXMuY291cm1vbnRA
aHVhd2VpLmNvbT4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFRoaXMgc3dpdGNoZXMgZnJvbSBj
dXN0b20gaW5zdHJ1Y3Rpb24gcGF0dGVybnMgdG8gdGhlIHJlZ3VsYXIgbGFyZ2UKPiA+ID4gPiA+
ID4gbWVtb3J5IG1vZGVsIHNlcXVlbmNlIHdpdGggQURSUCBhbmQgTERSLiBJbiBkb2luZyBzbywg
dGhlIEFERAo+ID4gPiA+ID4gPiBpbnN0cnVjdGlvbiBjYW4gYmUgZWxpbWluYXRlZCBpbiB0aGUg
U0RFSSBoYW5kbGVyLCBhbmQgdGhlIGNvZGUgbm8KPiA+ID4gPiA+ID4gbG9uZ2VyIGFzc3VtZXMg
dGhhdCB0aGUgdHJhbXBvbGluZSB2ZWN0b3JzIGFuZCB0aGUgdmVjdG9ycyBhZGRyZXNzCj4gPiA+
ID4gPiA+IGJvdGgKPiA+ID4gPiA+ID4gc3RhcnQgb24gYSBwYWdlIGJvdW5kYXJ5Lgo+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogUsOpbWkgRGVuaXMtQ291cm1vbnQgPHJl
bWkuZGVuaXMuY291cm1vbnRAaHVhd2VpLmNvbT4KPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+
IAo+ID4gPiA+ID4gPiAgYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUyB8IDkgKysrKy0tLS0tCj4g
PiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVs
L2VudHJ5LlMgYi9hcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5TCj4gPiA+ID4gPiA+IGluZGV4IGU1
ZDRlMzBlZTI0Mi4uMjRmODI4NzM5Njk2IDEwMDY0NAo+ID4gPiA+ID4gPiAtLS0gYS9hcmNoL2Fy
bTY0L2tlcm5lbC9lbnRyeS5TCj4gPiA+ID4gPiA+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL2Vu
dHJ5LlMKPiA+ID4gPiA+ID4gQEAgLTgwNSw5ICs4MDUsOSBAQCBhbHRlcm5hdGl2ZV9lbHNlX25v
cF9lbmRpZgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gIDI6Cj4gPiA+ID4gPiA+ICAJdHJhbXBf
bWFwX2tlcm5lbAl4MzAKPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiAgI2lmZGVmIENPTkZJR19S
QU5ET01JWkVfQkFTRQo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gLQlhZHIJeDMwLCB0cmFtcF92
ZWN0b3JzICsgUEFHRV9TSVpFCj4gPiA+ID4gPiA+ICsJYWRycAl4MzAsIHRyYW1wX3ZlY3RvcnMg
KyBQQUdFX1NJWkUKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ICBhbHRlcm5hdGl2ZV9pbnNuIGlz
Yiwgbm9wLCBBUk02NF9XT1JLQVJPVU5EX1FDT01fRkFMS09SX0UxMDAzCj4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiAtCWxkcgl4MzAsIFt4MzBdCj4gPiA+ID4gPiA+ICsJbGRyCXgzMCwgW3gzMCwg
IzpsbzEyOl9fZW50cnlfdHJhbXBfZGF0YV9zdGFydF0KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSSB0
aGluayB0aGlzIGlzIGJ1c3RlZCBmb3IgITRLIGtlcm5lbHMgb25jZSB3ZSByZWR1Y2UgdGhlIGFs
aWdubWVudCBvZgo+ID4gPiA+ID4gX19lbnRyeV90cmFtcF9kYXRhX3N0YXJ0Lgo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiBUaGUgQURSUCBnaXZlcyB1cyBhIDY0SyBhbGlnbmVkIGFkZHJlc3MgKHdpdGgg
Yml0cyAxNTowIGNsZWFyKS4gVGhlCj4gPiA+ID4gPiBsbzEyCj4gPiA+ID4gPiByZWxvY2F0aW9u
IGdpdmVzIHVzIGJpdHMgMTE6MCwgc28gd2UgaGF2ZW4ndCBhY2NvdW50ZWQgZm9yIGJpdHMgMTU6
MTIuCj4gPiA+ID4gCj4gPiA+ID4gSU1VLCBBRFJQIGdpdmVzIGEgNEsgYWxpZ25lZCB2YWx1ZSwg
cmVnYXJkbGVzcyBvZiBNTVUgKFRDUikgc2V0dGluZ3MuCj4gPiA+IAo+ID4gPiBTb3JyeSwgSSBo
YWQgZXJyb25lb3VzbHkgYXNzdW1lZCB0cmFtcF92ZWN0b3JzIHdhcyBwYWdlIGFsaWduZWQuIFRo
ZQo+ID4gPiBpc3N1ZSBzdGlsbCBzdGFuZHMgLS0gd2UgaGF2ZW4ndCBhY2NvdW50ZWQgZm9yIGJp
dHMgMTU6MTIsIGFzIHRob3NlIGNhbgo+ID4gPiBkaWZmZXIgYmV0d2VlbiB0cmFtcF92ZWN0b3Jz
IGFuZCBfX2VudHJ5X3RyYW1wX2RhdGFfc3RhcnQuCj4gCj4gRG9lcyB0aGF0IG1lYW4gdGhhdCB0
aGUgU0RFSSBjb2RlIG5ldmVyIHdvcmtlZCB3aXRoIHBhZ2Ugc2l6ZSA+IDQgS2lCPwoKSSB0aGlu
ayB0aGlzIGhhcHBlbnMgdG8gd29yaywgYnV0IGlzIGZyYWdpbGUuIEJlY2F1c2Ugbm90aGluZyBo
YXBwZW5zIHRvCmdldCBwbGFjZWQgaW4gLnJvZGF0YSBiZXR3ZWVuIHRoZSBfZW50cnlfdHJhbXBf
ZGF0YV9zdGFydCBkYXRhIGFuZCB0aGUKX19zZGVpX2FzbV90cmFtcG9saW5lX25leHRfaGFuZGxl
ciBkYXRhLCB0aGUKX19zZGVpX2FzbV90cmFtcG9saW5lX25leHRfaGFuZGxlciBkYXRhIGRvZXNu
J3Qgc3BpbGwgaW50byBhIHNlcGFyYXRlCnBhZ2UgZnJvbSB0aGUgX2VudHJ5X3RyYW1wX2RhdGFf
c3RhcnQgZGF0YS4KCklmIHdlIGRpZCBzdGFydCBhZGRpbmcgc3R1ZmYgaW50byAucm9kYXRhIGJl
dHdlZW4gdGhvc2UgdHdvLCB0aGVyZSdkIGJlCmEgYmlnZ2VyIHJpc2sgb2YgdGhpbmdzIGdvaW5n
IHdyb25nLiBUaGF0IHdhcyB3aHkgSSBzdWdnZXN0ZWQgYQouZW50cnkudHJhbXAuZGF0YSBzZWN0
aW9uIHByZXZpb3VzbHkuCgo+ID4gU2hvdWxkIHdlIGp1c3QgdXNlIGFkcnAgb24gX19lbnRyeV90
cmFtcF9kYXRhX3N0YXJ0PyBBbnl3YXksIHRoZSBkaWZmCj4gPiBiZWxvdyBkb2Vzbid0IHNvbHZl
IHRoZSBpc3N1ZSBJJ20gc2VlaW5nIChvbmx5IHJldmVydGluZyBwYXRjaCAzKS4KPiAKPiBBRkFJ
VSwgdGhlIHByZWV4aXN0aW5nIGNvZGUgdXNlcyB0aGUgbWFudWFsIFBBR0VfU0laRSBvZmZzZXQg
YmVjYXVzZSB0aGUgb2Zmc2V0IAo+IGluIHRoZSBtYWluIHZtbGludXggZG9lcyBub3QgbWF0Y2gg
dGhlIGFyY2hpdGVjdGVkIG9mZnNldCBpbnNpZGUgdGhlIGZpeG1hcC4gSWYgCj4gc28sIHRoZW4g
dXNpbmcgdGhlIHN5bWJvbCBkaXJlY3RseSB3aWxsIG5vdCB3b3JrIGF0IGFsbC4KCkluZGVlZC4g
SSBjYW4ndCBzZWUgYSBuZWF0IHdheSBvZiBhdm9pZGluZyB0aGlzIHJpZ2h0IG5vdywgc28gc2hv
dWxkIHdlCmRyb3AgdGhlc2UgcGF0Y2hlcyBhbmQgbGVhdmUgdGhlIGNvZGUgYXMtaXMgKGJ1dCB3
aXRoIGNvbW1lbnRzIGFzIHRvIHRoZQpzcGVjaWFsIHJlcXVpcmVtZW50cyB0aGF0IGl0IGhhcyk/
CgpUaGFua3MsCk1hcmsuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
