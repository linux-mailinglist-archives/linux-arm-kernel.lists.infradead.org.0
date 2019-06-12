Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8BA4265F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:48:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=scQyiaO0GY94+4AAyH8xTk5wY9x1QUpuaF+H8xaKqq4=; b=kDj3+4jBaebO67
	SDqn1p77aBsXE93kcUVgnQnNrhrYLdTgyrFnUm/1qzwJ5rsYE6D6P2bwnbCm9bOyxOsIKn8TFV9Ta
	Qsei/MugK/jtNqk1J4aSDcb+G5aLrox+jY+zZKszNIRhwKgOiDugZDgiQq//hCemjbFmaJEH07siZ
	vMBSoUBX1v/sjHUSXPJeRFBAsbGka0kW/w0UWgnYujgmud8KqfSCx+3ZTtLdfXMphryGKPrSrH3Os
	xa10ZhITzid9kH6kE9DBptvy6AmcY7aVpV7Ab+HDq2gh7WdQEcuH3vgVc87uFS2u/aDLPCSh8dSum
	VRboHbMPd6xNzMAwOmiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2fo-00037z-2N; Wed, 12 Jun 2019 12:48:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2er-0002dZ-4l
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:47:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C21128;
 Wed, 12 Jun 2019 05:47:16 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 477653F246;
 Wed, 12 Jun 2019 05:47:15 -0700 (PDT)
Date: Wed, 12 Jun 2019 13:47:13 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>
Subject: Re: [PATCH 0/2] arm64/sve: Fix mutating register endianness on
 big-endian
Message-ID: <20190612124712.GR28398@e103592.cambridge.arm.com>
References: <1559839495-22315-1-git-send-email-Dave.Martin@arm.com>
 <20190607093858.GA21378@fuggles.cambridge.arm.com>
 <20190607154832.GH28398@e103592.cambridge.arm.com>
 <207E140D-AC57-4B0D-B838-94B92BE2B0A0@arm.com>
 <87v9xbdr3o.fsf@zen.linaroharston>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87v9xbdr3o.fsf@zen.linaroharston>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_054717_291266_1ADBC9CA 
X-CRM114-Status: GOOD (  22.90  )
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 "gdb@sourceware.org" <gdb@sourceware.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Julien Grall <Julien.Grall@arm.com>,
 Alan Hayward <Alan.Hayward@arm.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMTE6NDA6MTFBTSArMDEwMCwgQWxleCBCZW5uw6llIHdy
b3RlOgo+IAo+IEFsYW4gSGF5d2FyZCA8QWxhbi5IYXl3YXJkQGFybS5jb20+IHdyaXRlczoKPiAK
PiA+PiBPbiA3IEp1biAyMDE5LCBhdCAxNjo0OCwgRGF2ZSBNYXJ0aW4gPERhdmUuTWFydGluQGFy
bS5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gT24gRnJpLCBKdW4gMDcsIDIwMTkgYXQgMTA6Mzg6NThB
TSArMDEwMCwgV2lsbCBEZWFjb24gd3JvdGU6Cj4gPj4+IE9uIFRodSwgSnVuIDA2LCAyMDE5IGF0
IDA1OjQ0OjUzUE0gKzAxMDAsIERhdmUgTWFydGluIHdyb3RlOgo+ID4+Pj4gQnkgaW5zcGVjdGlv
biB3aGlsZSBkZWJ1Z2dpbmcgc29tZXRoaW5nIGVsc2UsIEkgbm90aWNlZCB0aGF0IHRoZSBieXRl
Cj4gPj4+PiBvcmRlciBvZiBGUFNJTUQgVi1yZWdpc3RlciBzdG9yZXMgYW5kIFNWRSBaLXJlZ2lz
dGVyIHN0b3JlcyBpcyBub3QgdGhlCj4gPj4+PiBzYW1lIHdoZW4gcnVubmluZyBvbiBiaWctZW5k
aWFuLgo+ID4+Pj4KPiA+Pj4+IFRoaXMgaXMgbm90IHByb3Blcmx5IHRha2VuIGludG8gYWNjb3Vu
dCB3aGVuIG1vdmluZyBiZXR3ZWVuIHRoZSBGUFNJTUQKPiA+Pj4+IGFuZCBTVkUgcmVnaXN0ZXIg
dmlld3MgaW5zaWRlIHRoZSBrZXJuZWwsIHJlc3VsdGluZyBpbiB0aGUgYnl0ZXMgb2YgYQo+ID4+
Pj4gVi1yZWdpc3RlciBnZXR0aW5nIHNwb250YW5lb3VzbHkgcmV2ZXJzZWQgaW4gc29tZSBzaXR1
YXRpb25zLCBmcm9tCj4gPj4+PiB1c2Vyc3BhY2UncyBwb2ludCBvZiB2aWV3LiAgVGhlIHNpZ25h
bCBmcmFtZSBhbmQgcHRyYWNlIGludGVyZmFjZSBhcmUKPiA+Pj4+IGFsc28gYWZmZWN0ZWQuICBU
aGUgS1ZNIEFCSSBmb3JiaWRzIG1peGluZyB0aGUgdHdvIHZpZXdzIGFuZCBzbyBzaG91bGQKPiA+
Pj4+IG5vdCBiZSBhZmZlY3RlZC4KPiA+Pj4+Cj4gPj4+PiBTZWUgcGF0Y2ggMiBmb3IgZGV0YWls
cy4KPiA+Pj4+Cj4gPj4+PiBQYXRjaCAxIGRvZXMgc29tZSB0cml2aWFsIHByZXBhcmF0b3J5IHJl
ZmFjdG9yaW5nLgo+ID4+Pgo+ID4+PiBTb3JyeSB0byBiZSBhIHBhaW4sIGJ1dCB3b3VsZCB5b3Ug
YmUgYWJsZSB0byBmbGlwIHRoaXMgc2VyaWVzIHJvdW5kIHNvIHRoYXQKPiA+Pj4gdGhlIGZpeCBk
b2Vzbid0IGRlcGVuZCBvbiB0aGUgcmVmYWN0b3JpbmcsIHBsZWFzZT8gVGhhdCB3YXkgd2UgY2Fu
IHB1dCBpdAo+ID4+PiBpbnRvIHN0YWJsZSB3aXRob3V0IHRoZSBkZXBlbmRlbmN5Lgo+ID4+Pgo+
ID4+Pj4gZ2RiIG1heSBvciBtYXkgbm90IGJlIGFmZmVjdGVkIGJ5IHRoaXMsIGRlcGVuZGluZyBv
biBob3cgaXQgdXNlcyB0aGUKPiA+Pj4+IE5UX1BSRlBSRUcgYW5kIE5UX0FSTV9TVkUgcmVnc2V0
cy4gIEknbGwgbGVhdmUgaXQgdG8gdGhlIGRldmVsb3BlcnMgdG8KPiA+Pj4+IGFzc2VzcyB0aGF0
Lgo+ID4+Pgo+ID4+PiBXb3VsZG4ndCB0aGlzIGJlIGVhc3kgZW5vdWdoIHRvIHRlc3Q/Cj4gPj4K
PiA+PiBTbywgZ2RiIHdvcmtzIE9LIG9uIGJpZy1lbmRpYW4gYnV0IHdlaXJkIHN0dWZmIGhhcHBl
bmluZyBvbiBib3RoIHdpdGgKPiA+PiBhbmQgd2l0aG91dCB0aGUgZml4Lgo+ID4+Cj4gPj4gVGhl
cmUgYXJlIHBsYWNlcyBpbiB0aGUgZ2RiIGNvZGUgaXRzZWxmIHdoZXJlIGl0IGlzIGxpa2VseSBt
aXNzaW5nCj4gPj4gZW5kaWFubmVzcyBjb252ZXJzaW9ucywgYnV0IEkgbmVlZCB0byBmb2xsb3cg
dXAgd2l0aCB0aGUgZ2RiIGZvbGtzIHRvCj4gPj4gY2xhcmlmeSB3aGV0aGVyIG15IHBhdGNoIGlz
IG1pc3Npbmcgc29tZXRoaW5n4oCmCj4gPgo+ID4gKEkgYWRkZWQgdGhlIFNWRSBzdXBwb3J0IGZv
ciBHREIpLgo+ID4KPiA+IEnigJl2ZSB0cmllZCB0aGVzZSBjaGFuZ2VzIG91dCBteXNlbGYgdXNp
bmcgR0RCLgo+ID4gV2l0aCB5b3VyIGNoYW5nZXMgZXZlcnl0aGluZyBsb29rcyBnb29kLCBhcGFy
dCBmcm9tOgo+ID4gKiBHREIgZ2V0cyBpdCB3cm9uZyB3aGVuIHRoZSBwdHJhY2Ugc3ZlIHN0cnVj
dHVyZSBjb250YWlucyBhIGZwc2ltZC4KPiA+ICogSSBuZWVkIHRvIGRvIHNvbWUgdGVzdGluZyBh
cm91bmQgc2lnY29udGV4dHMsIGJ1dCBhZ2FpbiBJIHRoaW5rIEdEQgo+ID4gICB3aWxsIG5lZWQg
YSBzbGlnaHQgY2hhbmdlLgo+ID4gSeKAmWxsIGdldCBzb21lIHBhdGNoZXMgdG9nZXRoZXIgZm9y
IEdEQi4KPiAKPiBXaGVyZSBpcyB0aGUgbGF0ZXN0IHN0YXRlIG9mIFNWRSBzdXBwb3J0IGZvciBH
REI/IEkgcmVhbGx5IHNob3VsZCBjaGVjawo+IHRoZSBRRU1VIGdkYnN0dWIgZG9lcyB0aGUgY29y
cmVjdCB0aGluZ3MgZm9yIFNWRSByZWdpc3RlcnMgYnV0IEkgd2FzCj4gd2FpdGluZyBmb3IgdXBz
dHJlYW0gZ2RiIHN1cHBvcnQuCgpEb2VzIHRoaXMgaXNzdWUgbmVlZCBsb29raW5nIGF0IGZvciB0
aGUgUUVNVSB1c2Vyc3BhY2UgZW11bGF0aW9uIHRvbz8KCkNoZWVycwotLS1EYXZlCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
