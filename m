Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3AE17A2DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 11:11:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PN4Fr1PJN8JpfOJuFwGics0q0y9bSkzqa0quMO1OJso=; b=suiFXq9MKOkVdjl7P9tkHUbZf
	72TzWKiA/xwgEzNpqfb37px7T3jbQy6zbjXJa8KxYdnfw5h4JFkh98abgvg0yPqd7EtZqhPw7bunA
	4GXlo8/MV3MzoMOk3bqL3PTxPBqTbZbTLk+NwPY36uylURDjaMIF7ejybf2oRVSkitk9SwnLiFRCC
	d+X/Rhu0K7oRmy/YTs52pRRBbGl55CrF/YwImh2sCTOyRqnjxAg8niEPkoPtU4eZqvnp92Pu7FToX
	cloUB8IkjSibLrrZXP5zmuqE7F1bLDsl42jsOOBH5EVPoiaIxgSu605ex4ztjwC9mhUdNo/4LLlEp
	nHB+hZzPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9nTG-0000jE-2b; Thu, 05 Mar 2020 10:11:14 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9nT8-0000iq-Q7
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 10:11:08 +0000
Received: from roundcube.remlab.net (ip6-localhost [IPv6:::1])
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTP id 238C45FD44;
 Thu,  5 Mar 2020 11:10:59 +0100 (CET)
MIME-Version: 1.0
Date: Thu, 05 Mar 2020 12:10:59 +0200
From: Remi Denis-Courmont <remi@remlab.net>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: reduce trampoline data alignment
Organization: Remlab Tmi
In-Reply-To: <20200305092353.GC19208@willie-the-truck>
References: <20200304093621.191138-1-remi@remlab.net>
 <20200304142951.GC3575@lakrids.cambridge.arm.com>
 <20200305092353.GC19208@willie-the-truck>
Message-ID: <43edb84793aaa43a0ce2774b3df19e2b@remlab.net>
X-Sender: remi@remlab.net
User-Agent: Roundcube Webmail/1.2.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_021106_994722_77DF2062 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMjAyMC0wMy0wNSAxMToyMywgV2lsbCBEZWFjb24gYSDDqWNyaXTCoDoKPiBPbiBXZWQsIE1h
ciAwNCwgMjAyMCBhdCAwMjoyOTo1MVBNICswMDAwLCBNYXJrIFJ1dGxhbmQgd3JvdGU6Cj4+IFth
ZGRpbmcgYXJtNjQgZm9sa10KPj4gCj4+IE9uIFdlZCwgTWFyIDA0LCAyMDIwIGF0IDExOjM2OjIx
QU0gKzAyMDAsIFLDqW1pIERlbmlzLUNvdXJtb250IHdyb3RlOgo+PiA+IEZyb206IFJlbWkgRGVu
aXMtQ291cm1vbnQgPHJlbWkuZGVuaXMuY291cm1vbnRAaHVhd2VpLmNvbT4KPj4gPgo+PiA+IFRo
ZSB0cmFtcG9saW5lIGRhdGEsIGN1cnJlbnRseSBjb25zaXN0aW5nIG9mIHR3byByZWxvY2F0ZWQg
cG9pbnRlcnMsCj4+ID4gbXVzdCBiZSB3aXRoaW4gYSBzaW5nbGUgcGFnZS4gSG93ZXZlciwgdGhl
cmUgYXJlIG5vIG5lZWRzIGZvciBpdCB0bwo+PiA+IHN0YXJ0IGEgcGFnZS4KPj4gPgo+PiA+IFRo
aXMgcmVkdWNlcyB0aGUgYWxpZ25tZW50IHRvIDE2IGJ5dGVzLCB3aGljaCBlbnN1cmVzIHRoYXQg
dGhlIDE2IGJ5dGVzCj4+ID4gb2YgZGF0YSBhcmUgaW4gdGhlIHNhbWUgcGFnZS4KPiAKPiBJIGRv
bid0IGZvbGxvdyB0aGlzIGJpdDogaXQncyBvbmUgOCBieXRlIHBvaW50ZXIuCgpJIGd1ZXNzIEkg
bWlzcmVhZCB0aGUgcXVhZCBwc2V1ZG8gb3AgYXMgNHg0IGluc3RlYWQgb2YgNHgyIGJ5dGVzLgoK
U28gaXQgbWlnaHQgYWN0dWFsbHkgYmUgcG9zc2libGUgdG8gcmVtb3ZlIHRoZSBhbGlnbiBzdGFu
emEgCmNvbXBsZXRlbHkuLi4KCj4+ID4gVGhpcyBwYXRjaCBhc3N1bWVzIHRoYXQgdGhlIHBhZ2Ug
YWxpZ25tZW50IHdhcyBqdXN0IGEgcXVpY2sgYW5kIGRpcnR5Cj4+ID4gdHJpY2sgdG8gbm90IHdv
cnJ5IGFib3V0IGZpeG1hcC4gSWYgaG93ZXZlciB0aGUgcGFnZSBhbGlnbm1lbnQgd2FzCj4+ID4g
bWVhbnQgdG8gcHJlc2VudCBhIGRhdGEgcGFnZSB3aXRoIG5vIG90aGVyIGRhdGEgdGhhbiB0aGUg
dHJhbXBvbGluZSdzLAo+PiA+IHRoZW4gYm90aCB0aGUgY3VycmVudCBjb2RlIGFuZCB0aGlzIHBh
dGNoIGFyZSB3cm9uZy4KPj4gCj4+IEkgdGhpbmsgdGhhdCBhbGlnbmluZyBpdCB0byBhIHBhZ2Ug
d2FzIGEgc2ltcGxpZmljYXRpb24gb3ZlcmFsbCwgbm90Cj4+IGp1c3QgZm9yIHRoZSBmaXhtYXAu
IEhvd2V2ZXIsIEkgZG8gYWdyZWUgdGhhdCBhcyB0aGUgcGFnZSBpc24ndCBtYXBwZWQKPj4gZHVy
aW5nIEVMMCBleGVjdXRpb24sIGl0J3MgZmluZSBmb3Igb3RoZXIgYml0cyBvZiAucm9kYXRhIHRv
IHNoYXJlIHRoZQo+PiBwYWdlLgo+PiAKPj4gSSBhbHNvIHRoaW5rIHRoYXQgaXQncyBhIGJpdCBz
Y2FyeSB0aGF0IHdlIHJlbHkgb24gbm90aGluZyBiZWluZyAKPj4gcGxhY2VkCj4+IGluIC5yb2Rh
dGEgYmV0d2VlbiBfX2VudHJ5X3RyYW1wX2RhdGFfc3RhcnQgYW5kCj4+IF9fc2RlaV9hc21fdHJh
bXBvbGluZV9uZXh0X2hhbmRsZXIsIHNpbmNlIG1hY3JvcyBjb3VsZCBlYXNpbHkgcGxhY2UKPj4g
c29tZXRoaW5nIGJldHdlZW4gdGhlIHR3by4gTHVja2lseSBOT0tQUk9CRSgpIGFkZHMgc3R1ZmYg
dG8gCj4+IC5pbml0LmRhdGEsCj4+IGJ1dCBJIGhhZCB0byBjaGVjay4KPj4gCj4+IEkgdGhpbmsg
aXQgd291bGQgYmUgYmV0dGVyIHRvIGFkZCBhIG5ldyAuZW50cnkudHJhbXAuZGF0YSBzZWN0aW9u
IHRvCj4+IGVuc3VyZSB0aGF0LCB3aGljaCB3ZSBjYW4gYWxpZ24gYXBwcm9wcmlhdGVseSBpbiB0
aGUgbGlua2VyIHNjcmlwdC4KPiAKPiBSZW1pJ3MgcGF0Y2ggbG9va3MgZmluZSB0aG91Z2gsIG5v
PyAobW9kdWxvIHRoZSBjb25mdXNpbmcgY29tbWl0IAo+IG1lc3NhZ2UpCgouLi4gdGhvdWdoIG5v
dyBJJ20gbm90IHN1cmUgaWYgd2Ugd2FudCB0byBoYXZlIGEgc2VwYXJhdGUgLnRyYW1wLnJvZGF0
YSAKc2VjdGlvbiwgYSBzZXBhcmF0ZSBwYWdlIHdpdGhpbiAucm9kYXRhLCBvciBqdXN0IGEgZml4
ZWQgdmVyc2lvbiBvZiB0aGlzIApwYXRjaD8KCkkgc3VwcG9zZSBpdCdzIGEgdHJhZGVvZmYgYmV0
d2VlbiBwZWFjZSBvZiBtaW5kIHJlZ2FyZGluZyBsZWFraW5nIGtlcm5lbCAKcmVhZC1vbmx5IGRh
dGEgaW4gdGhlIHRyYW1wb2xpbmUgbWFwcGluZ3MgdmVyc3VzIG1lbW9yeSB1c2U/CgotLSAKUsOp
bWkgRGVuaXMtQ291cm1vbnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
