Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5205E1D935A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:30:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLV6tKbvfoMOqRUQcCg7DPqJuLN1OguIg4PLdinh0+4=; b=YSRQ3BeC06d4nd
	XtGDtfcZ2TdHIgi/35oWgW1R6pjwtrfR/MY1cAfqSYxNTrSbTQSS6g0toV9AWgMeVR6y16oOtyeH7
	B7yg9ixT1yZDHxZhgriYHmqD5JUqTZMfXeyoN/U09ZVFddp2hzJmwJgRk+R8v16NPcdz/j/XdJLjc
	ZPUxe4/9RUz1dpwgEsCD0VL4PiadT1KizXawJs+BhF85JbUOgYxOEU2W24DvGa9wNw7mASNWCTa9R
	O+n4vX2alCYBrr7QGn0onHoOiNVLdCgsU/en2J/GFrpCgq27NxpThs0VsvROe/8mm6cdJFb5Ptj5J
	tu71dSk1drlbxl6itgeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayZS-0003QI-JA; Tue, 19 May 2020 09:29:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayZB-0003OB-Kn
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:29:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9692101E;
 Tue, 19 May 2020 02:29:39 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2AFEA3F305;
 Tue, 19 May 2020 02:29:39 -0700 (PDT)
Date: Tue, 19 May 2020 10:29:37 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Daniel Kiss <Daniel.Kiss@arm.com>
Subject: Re: [PATCH] arm64: vdso: Fix CFI info in sigreturn.
Message-ID: <20200519092934.GC5031@arm.com>
References: <20200515162020.78169-1-daniel.kiss@arm.com>
 <20200518155926.GA21779@arm.com>
 <AC859EC1-68DE-4E66-9CD6-D4D42F191D1D@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AC859EC1-68DE-4E66-9CD6-D4D42F191D1D@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_022941_769835_73EF3815 
X-CRM114-Status: GOOD (  34.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Tamas Zsoldos <Tamas.Zsoldos@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMTgsIDIwMjAgYXQgMDU6MDA6MzJQTSArMDAwMCwgRGFuaWVsIEtpc3Mgd3Jv
dGU6Cj4gCj4gCj4gPiBPbiAxOCBNYXkgMjAyMCwgYXQgMTc6NTksIERhdmUgTWFydGluIDxEYXZl
Lk1hcnRpbkBhcm0uY29tPiB3cm90ZToKPiA+IAo+ID4gT24gRnJpLCBNYXkgMTUsIDIwMjAgYXQg
MDY6MjA6MjBQTSArMDIwMCwgZGFua2lzMDEgd3JvdGU6Cj4gPj4gV2hlbiB0aGUgc2lnbmFsIGhh
bmRsZXIgaXMgY2FsbGVkIHRoZSByZWdpc3RlcnMgc2V0IHVwIGFzIHRoZSByZXR1cm4gYWRkcmVz
cwo+ID4+IHBvaW50cyB0byB0aGUgX19rZXJuZWxfcnRfc2lncmV0dXJuLiBUaGUgTk9QIGhlcmUg
aXMgdGhlIHBsYWNlaG9sZGVyIG9mIHRoZQoKKEp1c3QgdG8gYmUgY2xlYXIgYWJvdXQgd2h5IEkg
b3JpZ2luYWxseSBwaWNrZWQgdXAgb24gdGhpcywgeW91cgpzdGF0ZW1lbnQgYWJvdXQgdGhlIHB1
cnBvc2Ugb2YgdGhlIE5PUCBoZXJlIHNlZW1zIHRvIGJlIGFuIGFzc3VtcHRpb24uCkNhbiB5b3Ug
c2F5IGhvdyB5b3UgcmVhY2hlZCB0aGlzIGNvbmNsdXNpb24/KQoKPiA+PiBicmFuY2ggYW5kIGxp
bmsgaW5zdHJ1Y3Rpb24gdGhhdCAiY2FsbHMiIHRoZSBzaWduYWwgaGFuZGxlci4gSW4gY2FzZSBv
ZiBhCj4gPj4gcmV0dXJuIGFkZHJlc3MgdGhlIHVud2luZGVyIGlkZW50aWZpZXMgdGhlIGxvY2F0
aW9uIG9mIHRoZSBjYWxsZXIgYmVjYXVzZQo+ID4+IGluIHNvbWUgY2FzZXMgdGhlIHJldHVybiBh
ZGRyZXNzIG1pZ2h0IG5vdCBleGlzdC4gU2luY2UgdGhlIC5jZmlfc3RhcnRwcm9jCj4gPj4gaXMg
YWZ0ZXIgdGhlIE5PUCwgaXQgd29uJ3QgYmUgYXNzb2NpYXRlZCB3aXRoIGFueSBsb2NhdGlvbiBh
bmQgdGhlCj4gPj4gdW53aW5kZXIgd2lsbCBzdG9wIHdhbGtpbmcuCj4gPj4gCj4gPj4gVGhpcyBj
aGFuZ2UgY29ycmVjdHMgdGhlIGdlbmVyYXRlZCBFSEZyYW1lcyBvbmx5Lgo+ID4gCj4gPiBUaGlz
IGlzIGEgY2FuIG9mIHdvcm1zLgo+ID4gCj4gPiBXaGljaCB1bndpbmRlciBhcmUgeW91IGxvb2sg
YXQsIGFuZCB3aGF0IGRvIG90aGVyIHVud2luZGVycyBkbz8gIEFyZSB5b3UKPiA+IHN1cmUgdGhl
IHVud2luZGVyIGlzIGRvaW5nIHNvbWV0aGluZyB2YWxpZD8gIElzIHRoaXMgYSBuZXdseSBvYnNl
cnZlZAo+ID4gcHJvYmxlbSwgb3IgaGFzIGl0IGhhcHBlbmVkIGZvcmV2ZXI/Cj4gSSBydW4gaW50
byB0aGlzIHdpdGggTExWTeKAmXMgdW53aW5kZXIuCj4gVGhpcyBjb21iaW5hdGlvbiB3YXMgYWx3
YXlzIGJyb2tlbi4KCk9LLCBzbyB3ZSd2ZSBuYXJyb3dlZCB0aGUgYnJlYWthZ2UgZG93biB0byBv
bmUgb2YgdHdvIHRoaW5ncyA7KQoKSSBzdGlsbCBkb24ndCBzZWUgd2h5IHRoZXJlIG11c3QgYmUg
YSB2YWxpZCBpbnN0cnVjdGlvbiAob3IgZXZlbiBtYXBwZWQKbWVtb3J5KSBiZWZvcmUgbHIuICBF
eGFtcGxlcyBpbmNsdWRlIGJhY2t0cmFjaW5nIG5vcmV0dXJuIGZ1bmN0aW9ucywgYW5kCmJhY2t0
cmFjaW5nIHRoZSBTSUdTRUdWIHdoZW4gZXhlY3V0aW9uIGZhbGxzIHRocm91Z2ggaW50byBhIG5v
bi1leGVjdXRhYmxlCnBhZ2UuCgpTbywgc2lncmV0dXJuIGlzIGp1c3Qgb25lIGV4YW1wbGUgaWYg
dGhpcyBpc3N1ZS4KClRoaXMgaXMgd2h5IEknbSBub3Qgc3VyZSB0aGUgcHJvYmxlbSBpcyB3ZWxs
LXVuZGVyc3Rvb2QuICBBZGRpbmcgYSBub3AKaW50byB0aGUgX19rZXJuZWxfc2lncmV0dXJuIHVu
d2luZCBibG9jayBtYXkgcGFwZXIgb3ZlciB0aGlzIHBhcnRpY3VsYXIKaW5zdGFuY2UsIGJ1dCB3
aGF0IGFib3V0IHRoZSBvdGhlciBzaW1pbGFyIHNjZW5hcmlvcz8KCj4gCj4gPiBXaHkgc2hvdWxk
IHRoZXJlIGJlIGFueSBpbnN0cnVjdGlvbiB0aGF0ICJjYWxscyIgdGhlIHNpZ25hbCBoYW5kbGVy
Pwo+IEl0IGlzIGp1c3QgZnJvbSB0aGUgdW53aW5kZXIvdXNlciBzcGFjZSBwb2ludCBvZiB2aWV3
LiAgTm9ybWFsbHkgdGhhdCBpbnN0cnVjdGlvbiB3b3VsZCBzZXQgdGhlIHJldHVybiBhZGRyZXNz
LAo+IGFuZCBzb21lIGNhc2VzIGluIHRoZSB1c2Vyc3BhY2Ugbm8gaW5zdHJ1Y3Rpb24gaXMgZ2Vu
ZXJhdGVkIGZvciB0aGUgcmV0dXJuIGFkZHJlc3Mgd2hlbiB0aGUgY29tcGlsZXIga25vd3MgCj4g
aXQgaXMgdW5yZWFjaGFibGUuCj4gCj4gPiBJbiB0aGUgY2FzZSBpcyBhIFNJR1NFR1YgdGhlIGFm
ZmVjdGVkIGluc3RydWN0aW9uIGlzIGFmdGVyIHRoZSBwYyBhbmQKPiA+IG5vdCBiZWZvcmUgaXQ7
IGZvciBhbiBhc3luY2hyb25vdXMgc2lnbmFsIGFuZCBub3Rpb24gb2YgYSAiY2FsbGluZyIKPiA+
IGluc3RydWN0aW9uIGlzIG5vbnNlbnNlLgo+ID4gCj4gPiAKPiA+IENlcnRhaW5seSBJJ3ZlIHNl
ZW4gY29ycmVjdCB1bndpbmRpbmcgdGhyb3VnaCBzaWduYWwgaGFuZGxlcnMgd2l0aCBnbGliYwo+
ID4gYW5kIGdkYiwgYnV0IEkgaGFkbid0IHRyaWVkIGV2ZXJ5dGhpbmfigKYKPiBHREIgcmVjb2du
aXNlIF9fa2VybmVsX3J0X3NpZ3JldHVybiB0byB1bndpbmQgaXQgY29ycmVjdGx5LCBhcyBJIHNl
ZSBpdDoKPiBodHRwczovL2dpdGh1Yi5jb20vYm1pbm9yL2JpbnV0aWxzLWdkYi9ibG9iLzM1ODA4
MTBjNTFiYzE3Yzk0N2QwZGQ2YTdmNGViMzk5ZDdjYTQ2MTkvZ2RiL2kzODYtbGludXgtdGRlcC5j
I0wyNjUKCmkzODY/Cgo+ID4gCj4gPj4gCj4gPj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIEtpc3Mg
PGRhbmllbC5raXNzQGFybS5jb20+Cj4gPj4gU2lnbmVkLW9mZi1ieTogVGFtYXMgWnNvbGRvcyA8
dGFtYXMuenNvbGRvc0Bhcm0uY29tPgo+ID4+IC0tLQo+ID4+IGFyY2gvYXJtNjQva2VybmVsL3Zk
c28vc2lncmV0dXJuLlMgfCA0ICsrLS0KPiA+PiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+ID4+IAo+ID4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tl
cm5lbC92ZHNvL3NpZ3JldHVybi5TIGIvYXJjaC9hcm02NC9rZXJuZWwvdmRzby9zaWdyZXR1cm4u
Uwo+ID4+IGluZGV4IDEyMzI0ODYzZDVjMi4uNWQ1MGVlOTJmYWE0IDEwMDY0NAo+ID4+IC0tLSBh
L2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0dXJuLlMKPiA+PiArKysgYi9hcmNoL2FybTY0
L2tlcm5lbC92ZHNvL3NpZ3JldHVybi5TCj4gPj4gQEAgLTEzLDEzICsxMywxMyBAQAo+ID4+IAo+
ID4+IAkudGV4dAo+ID4+IAo+ID4+IC0Jbm9wCj4gPj4gLVNZTV9GVU5DX1NUQVJUKF9fa2VybmVs
X3J0X3NpZ3JldHVybikKPiA+PiAJLmNmaV9zdGFydHByb2MKPiA+PiAJLmNmaV9zaWduYWxfZnJh
bWUKPiA+PiAJLmNmaV9kZWZfY2ZhCXgyOSwgMAo+ID4+IAkuY2ZpX29mZnNldAl4MjksIDAgKiA4
Cj4gPj4gCS5jZmlfb2Zmc2V0CXgzMCwgMSAqIDgKPiA+IAo+ID4gSG1tLCByZWNvdmVyaW5nIHgy
OSx4MzAgbGlrZSB0aGlzIHdpbGwgYmUgd3JvbmcgaWYgdGhlIHNpZ25hbCBoYW5kbGVyCj4gPiBt
dW5nZXMgc2lnY29udGV4dCBpbiB0aGUgbWVhbnRpbWUgKHNheSwgZG9pbmcgc29tZSBraW5kIG9m
IHVzZXJzcGFjZQo+ID4gY29udGV4dCBzd2l0Y2gpLgo+ID4gCj4gPiBUaGV5IHNob3VsZCBiZSBw
dWxsZWQgb3V0IG9mIHNpZ2NvbnRleHQgaW5zdGVhZCByZWFsbHkuICBBRkFJSywgdGhhdCdzCj4g
PiB3aGF0ICIuY2ZpX3NpZ25hbF9mcmFtZSIgaXMgc3VwcG9zZWQgdG8gdGVsbCB0aGUgdW53aW5k
ZXIuICBJJ20gbm90IHN1cmUKPiA+IHdoeSB3ZSBoYXZlIHRoZXNlIGFkZGl0aW9uYWwsIGNvbmZs
aWN0aW5nIGFubm90YXRpb25zIGhlcmUuCj4gVGhlIHVud2luZGVyIHdvbuKAmXQgZmluZCB0aGUg
4oCcY2ZpX3NpZ25hbF9mcmFtZeKAnSB1bnRpbCBpdCBmaWd1cmVzIG91dCB0aGUgdW53aW5kIGVu
dHJ5Lgo+IAo+ID4gQW55IGlkZWFzLCBXaWxsPwo+ID4gCj4gPiBUaGlzIHByb2JhYmx5IGlzbid0
IHJlbGF0ZWQgdG8gdGhlIGJ1ZyBoZXJlLCBidXQgaXQgd291bGQgYmUgZ29vZCB0bwo+ID4gdW5k
ZXJzdGFuZC4KPiA+IAo+ID4+ICsJbm9wICAvKiBwbGFjZWhvbGRlciBmb3IgYmwgc2lnbmFsaGFu
ZGxlciAqLwo+ID4gCj4gPiBXaWxsIGNhbiBjb3JyZWN0IG1lIG9uIHRoaXMsIGJ1dCBJIHNlZW0g
dG8gcmVtZW1iZXIgc29tZXRoaW5nIGFib3V0IG5vcAo+ID4gYmVpbmcgdGhlcmUgZm9yIHBhZGRp
bmcsIHNvIHRoYXQgdGhlcmUgaXMgYSBndWFyYW50ZWVkIGdhcCBiZXR3ZWVuCj4gPiB1bndpbmQg
ZW50cmllcy4KPiA+IAo+ID4gSSBjYW4ndCByZW1lbWJlciB0aGUgcHJlY2lzZSByZWFzb25pbmcs
IGJ1dCB0aGVyZSBhcmUgc29tZSBuYXN0eSBlZGdlCj4gPiBjYXNlcyBjb25uZWN0ZWQgd2l0aCB0
aGUgZmFjdCB0aGF0IHRoZSBsaW5rZXIgY2FuIHBsYWNlIGFub3RoZXIgcmFuZG9tCj4gPiB1bndp
bmQgYmxvY2sgZnJvbSBhbm90aGVyIC5vIGltbWVkaWF0ZWx5IGJlZm9yZSB0aGlzIG9uZS4KClsu
Li5dCgpDaGVlcnMKLS0tRGF2ZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
