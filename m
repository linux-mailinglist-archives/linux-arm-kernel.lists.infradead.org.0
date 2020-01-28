Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26A214B3BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 12:49:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SIYsoYjacYRg6sEdY0uVamoFV8uEFeWvdgLIPVCs2TY=; b=OWutBUt69cVlBipev+zV8BXOn
	b5xbeD+RTn/EqucL6x78zjCVeFDSQTgkJDTSTPVaRuFl++kUS6JV2dfjurrgznVh7Zf8VWsfZDmuv
	VAhU8uygnTXsnTDJtRML3C9U/BuU963D7duAQio7bZ85rr61HKXLaMtbUf2Bbz7UWd+ghi7OxDHuz
	byRA2eDg+dkPoWsuiLfSEou6qBKfoILsmHk67LOn82gAC5RI3v8E8hEq6PdJyjC9k9QaTCrc+MFuL
	onRUelemrJEgKDpUdy27uvZo4Ym6Caf2n4RZKn9cM+kxDnVGXgPq9jCfDNq+4Hz2waQadyxGFnrcL
	duf3Get7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwPMY-0008T2-ON; Tue, 28 Jan 2020 11:48:58 +0000
Received: from disco-boy.misterjones.org ([51.254.78.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwPMM-0008SI-Rp
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 11:48:48 +0000
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@misterjones.org>)
 id 1iwPM8-001o2H-Sm; Tue, 28 Jan 2020 11:48:33 +0000
MIME-Version: 1.0
Date: Tue, 28 Jan 2020 11:48:32 +0000
From: Marc Zyngier <maz@misterjones.org>
To: Boqun Feng <boqun.feng@gmail.com>
Subject: Re: [RFC 0/6] vDSO support for Hyper-V guest on ARM64
In-Reply-To: <20200128055846.GA83200@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
References: <20191216001922.23008-1-boqun.feng@gmail.com>
 <ef6cb7ba-b448-cfa5-abbb-1d99d1396ce5@arm.com>
 <20200124063215.GA93938@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
 <4cdf2188-8909-4b90-ca78-92cef520b23d@arm.com>
 <20200128055846.GA83200@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
Message-ID: <58c453d060066ebaed24cd13e22de1c5@misterjones.org>
X-Sender: maz@misterjones.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: boqun.feng@gmail.com, vincenzo.frascino@arm.com,
 sashal@kernel.org, linux-hyperv@vger.kernel.org, sstabellini@kernel.org,
 sthemmin@microsoft.com, catalin.marinas@arm.com, haiyangz@microsoft.com,
 linux-kernel@vger.kernel.org, mikelley@microsoft.com,
 xen-devel@lists.xenproject.org, tglx@linutronix.de, kys@microsoft.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@misterjones.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_034846_906953_AB083B58 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sasha Levin <sashal@kernel.org>, linux-hyperv@vger.kernel.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, linux-kernel@vger.kernel.org,
 Michael Kelley <mikelley@microsoft.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, xen-devel@lists.xenproject.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMS0yOCAwNTo1OCwgQm9xdW4gRmVuZyB3cm90ZToKPiBPbiBGcmksIEphbiAyNCwg
MjAyMCBhdCAxMDoyNDo0NEFNICswMDAwLCBWaW5jZW56byBGcmFzY2lubyB3cm90ZToKPj4gSGkg
Qm9xdW4gRmVuZywKPj4gCj4+IE9uIDI0LzAxLzIwMjAgMDY6MzIsIEJvcXVuIEZlbmcgd3JvdGU6
Cj4+ID4gSGkgVmluY2Vuem8sCj4+ID4KPj4gCj4+IFsuLi5dCj4+IAo+PiA+Pgo+PiA+PiBJIGhh
ZCBhIGxvb2sgdG8geW91ciBwYXRjaGVzIGFuZCBvdmVyYWxsLCBJIGNvdWxkIG5vdCB1bmRlcnN0
YW5kIHdoeSB3ZSBjYW4ndAo+PiA+PiB1c2UgdGhlIGFyY2hfdGltZXIgdG8gZG8gdGhlIHNhbWUg
dGhpbmdzIHlvdSBhcmUgZG9pbmcgd2l0aCB0aGUgb25lIHlvdQo+PiA+PiBpbnRyb2R1Y2VkIGlu
IHRoaXMgc2VyaWVzLiBXaGF0IGNvbmZ1c2VzIG1lIGlzIHRoYXQgS1ZNIHdvcmtzIGp1c3QgZmlu
ZSB3aXRoIHRoZQo+PiA+PiBhcmNoX3RpbWVyIHdoaWNoIHdhcyBkZXNpZ25lZCB3aXRoIHZpcnR1
YWxpemF0aW9uIGluIG1pbmQuIFdoeSBkbyB3ZSBuZWVkCj4+ID4+IGFub3RoZXIgb25lPyBDb3Vs
ZCB5b3UgcGxlYXNlIGV4cGxhaW4/Cj4+ID4+Cj4+ID4KPj4gPiBQbGVhc2Ugbm90ZSB0aGF0IHRo
ZSBndWVzdCBWTSBvbiBIeXBlci1WIGZvciBBUk02NCBkb2Vzbid0IHVzZQo+PiA+IGFyY2hfdGlt
ZXIgYXMgdGhlIGNsb2Nrc291cmNlLiBTZWU6Cj4+ID4KPj4gPiAJaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtYXJtLWtlcm5lbC8xNTcwMTI5MzU1LTE2MDA1LTctZ2l0LXNlbmQtZW1haWwt
bWlrZWxsZXlAbWljcm9zb2Z0LmNvbS8KPj4gPgo+PiA+ICwgIEFDUElfU0lHX0dURFQgaXMgdXNl
ZCBmb3Igc2V0dGluZyB1cCBIeXBlci1WIHN5bnRoZXRpYyBjbG9ja3NvdXJjZQo+PiA+IGFuZCBv
dGhlciBpbml0aWFsaXphdGlvbiB3b3JrLgo+PiA+Cj4+IAo+PiBJIGhhZCBhIGxvb2sgYSBsb29r
IGF0IGl0IGFuZCBteSBxdWVzdGlvbiBzdGFuZHMsIHdoeSBkbyB3ZSBuZWVkIAo+PiBhbm90aGVy
IHRpbWVyCj4+IG9uIGFybTY0Pwo+PiAKPiAKPiBTb3JyeSBmb3IgdGhlIGxhdGUgcmVzcG9uc2Uu
IEl0J3Mgd2Vla2VuZCBhbmQgQ2hpbmVzZSBOZXcgWWVhciwgc28gSSAKPiBnb3QKPiB0byBzcGVu
ZCBzb21lIHRpbWUgbWFraW5nIChhbmQgbW9zdGx5IGVhdGluZykgZHVtcGxpbmdzIDstKQoKQW5k
IHlvdSBoYXZlbid0IGJlZW4gc2hhcmluZyEgOy0pCgo+IEFmdGVyIGRpc2N1c3Npb24gd2l0aCBN
aWNoYWVsLCBoZXJlIGlzIHNvbWUgZXhwbGFuYXRpb24gd2h5IHdlIG5lZWQKPiBhbm90aGVyIHRp
bWVyOgo+IAo+IFRoZSBzeW50aGV0aWMgY2xvY2tzIHRoYXQgSHlwZXItViBwcmVzZW50cyBpbiBh
IGd1ZXN0IFZNIHdlcmUgCj4gb3JpZ2luYWxseQo+IGNyZWF0ZWQgZm9yIHRoZSB4ODYgYXJjaGl0
ZWN0dXJlLiBUaGV5IHByb3ZpZGUgYSBsZXZlbCBvZiBhYnN0cmFjdGlvbgo+IHRoYXQgc29sdmVz
IHByb2JsZW1zIGxpa2UgY29udGludWl0eSBhY3Jvc3MgbGl2ZSBtaWdyYXRpb25zIHdoZXJlIHRo
ZQo+IGhhcmR3YXJlIGNsb2NrIChpLmUuLCBUU0MgaW4gdGhlIGNhc2UgeDg2KSBmcmVxdWVuY3kg
bWF5IGJlIGRpZmZlcmVudAo+IGFjcm9zcyB0aGUgbWlncmF0aW9uLiBXaGVuIEh5cGVyLVYgd2Fz
IGJyb3VnaHQgdG8gQVJNNjQsIHRoaXMKPiBhYnN0cmFjdGlvbiB3YXMgbWFpbnRhaW5lZCB0byBw
cm92aWRlIGNvbnNpc3RlbmN5IGFjcm9zcyB0aGUgeDg2IGFuZAo+IEFSTTY0IGFyY2hpdGVjdHVy
ZXMsIGFuZCBmb3IgYm90aCBXaW5kb3dzIGFuZCBMaW51eCBndWVzdCBWTXMuICAgVGhlCj4gY29y
ZSBMaW51eCBjb2RlIGZvciB0aGUgSHlwZXItViBjbG9ja3MgKGluCj4gZHJpdmVycy9jbG9ja3Nv
dXJjZS9oeXBlcnZfdGltZXIuYykgaXMgYXJjaGl0ZWN0dXJlIG5ldXRyYWwgYW5kIHdvcmtzIAo+
IG9uCj4gYm90aCB4ODYgYW5kIEFSTTY0LiBBcyB5b3UgY2FuIHNlZSwgdGhpcyBwYXJ0IGlzIGRv
bmUgaW4gTWljaGFlbCdzCj4gcGF0Y2hzZXQuCj4gCj4gQXJndWFibHksIEh5cGVyLVYgZm9yIEFS
TTY0IHNob3VsZCBoYXZlIG9wdGltaXplZCBmb3IgY29uc2lzdGVuY3kgd2l0aAo+IHRoZSBBUk02
NCBjb21tdW5pdHkgcmF0aGVyIHdpdGggdGhlIGV4aXN0aW5nIHg4NiBpbXBsZW1lbnRhdGlvbiBh
bmQKPiBleGlzdGluZyBndWVzdCBjb2RlIGluIFdpbmRvd3MuIEJ1dCBhdCB0aGlzIHBvaW50LCBp
dCBpcyB3aGF0IGl0IGlzLAo+IGFuZCB0aGUgSHlwZXItViBjbG9ja3MgZG8gc29sdmUgcHJvYmxl
bXMgbGlrZSBtaWdyYXRpb24gdGhhdCBhcmVu4oCZdAo+IGFkZHJlc3NlZCBpbiBBUk02NCB1bnRp
bCB2OC40IG9mIHRoZSBhcmNoaXRlY3R1cmUgd2l0aCB0aGUgYWRkaXRpb24gb2YKPiB0aGUgY291
bnRlciBoYXJkd2FyZSBzY2FsaW5nIGZlYXR1cmUuIEh5cGVyLVYgZG9lc27igJl0IGN1cnJlbnRs
eSBtYXAgdGhlCj4gQVJNIGFyY2ggdGltZXIgaW50ZXJydXB0cyBpbnRvIGd1ZXN0IFZNcywgc28g
d2UgbmVlZCB0byB1c2UgdGhlIAo+IGV4aXN0aW5nCj4gSHlwZXItViBjbG9ja3MgYW5kIHRoZSBj
b21tb24gY29kZSB0aGF0IGFscmVhZHkgZXhpc3RzLgoKVGhlIG1pZ3JhdGlvbiB0aGluZyBpcyBh
IGJpdCBvZiBhIHJlZCBoZXJyaW5nLiBEbyB5b3UgcmVhbGx5IGFudGljaXBhdGUKVk0gbWlncmF0
aW9uIGFjcm9zcyBzeXN0ZW1zIHRoYXQgaGF2ZSB0aGVpciB0aW1lcnMgcnVubmluZyBhdCBkaWZm
ZXJlbnQKZnJlcXVlbmNpZXMgKnRvZGF5Kj8gQW5kIGV2ZW4gaWYgeW91IGRpZCwgdGhlcmUgYXJl
IHdheXMgdG8gZGVhbCB3aXRoIGl0CndpdGggdGhlIGFyY2ggdGltZXJzIChwYXRjaGVzIHRvIHRo
YXQgZWZmZWN0IHdlcmUgcG9zdGVkIG9uIHRoZSBsaXN0LCAKYW5kCnRoZXJlIHdhcyBldmVuIGEg
Yml0IG9mIGFuIEFSTSBzcGVjIGZvciBpdCkuCgpJIGZpbmQgaXQgb2RkIHRvIHRyeSBhbmQgbWFr
ZSBhcm02NCAianVzdCBhbm90aGVyIHg4NiIsIHdoaWxlIHRoZSAKYXJjaGl0ZWN0dXJlCmdpdmVz
IHlvdSBtb3N0IG9mIHdoYXQgeW91IG5lZWQgYWxyZWFkeS4gSSBndWVzcyBJJ20gdGFpbnRlZC4K
ClRoYW5rcywKCiAgICAgICAgIE0uCi0tIApXaG8geW91IGppdmluJyB3aXRoIHRoYXQgQ29zbWlr
IERlYnJpcz8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
