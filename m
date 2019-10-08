Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC66ECF42A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 09:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHic7oNCeRcREW75a56S75Mh3skBh6b6Bw+FLi7FBKM=; b=Sb2zNBEL6Nggi1
	VLD5a5DXfa9ZqibY2F925/htZomspv5gsknU9H0KyrphHzlufvUJ0+L7N1t3lKL6mPiiXmFbx/OhH
	mt+Yxerw1VUxngMXzGyJSYXq6zRUVAr4QFzlE8kElVfV4Oit+YLmTOQfRWCTgO2AmVM7Ao7E5hJfQ
	LFAR+fNO5z4v5bCe0t50dldpmO54ViFLpMHpkbAnAx9Bn8EA6hvgKm/FhzjBHKva4xBe9H+zaAtKq
	EVrgMsMQb73tDJkaPw26DlZMs2DRHJKmWH2D/t2peKZdX8k/mCyzHp3SXNWye/y7TpzAM9MoSpt0F
	sLkZJ5BvfaSoPD/zDw3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHkCO-0002Qs-SC; Tue, 08 Oct 2019 07:46:24 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHkCE-0002QI-Gw
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 07:46:16 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iHkC5-0001oY-Va; Tue, 08 Oct 2019 09:46:06 +0200
Date: Tue, 8 Oct 2019 08:46:04 +0100
From: Marc Zyngier <maz@kernel.org>
To: "Justin He (Arm Technology China)" <Justin.He@arm.com>
Subject: Re: [PATCH v10 2/3] arm64: mm: implement arch_faults_on_old_pte()
 on arm64
Message-ID: <20191008084604.7db2a123@why>
In-Reply-To: <DB7PR08MB308265EB3ED2465D2471B492F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20190930015740.84362-1-justin.he@arm.com>
 <20190930015740.84362-3-justin.he@arm.com>
 <20191001125031.7ddm5dlwss6m3dth@willie-the-truck>
 <20191001143219.018281be@why>
 <DB7PR08MB308265EB3ED2465D2471B492F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: Justin.He@arm.com, will@kernel.org, Catalin.Marinas@arm.com,
 Mark.Rutland@arm.com, James.Morse@arm.com, willy@infradead.org,
 kirill.shutemov@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, punitagrawal@gmail.com,
 tglx@linutronix.de, akpm@linux-foundation.org, hejianet@gmail.com,
 Kaly.Xin@arm.com, nd@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_004614_711432_45863138 
X-CRM114-Status: GOOD (  29.60  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, "Kaly Xin \(Arm Technology
 China\)" <Kaly.Xin@arm.com>, Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Punit Agrawal <punitagrawal@gmail.com>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, nd <nd@arm.com>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCA4IE9jdCAyMDE5IDAxOjU1OjA0ICswMDAwCiJKdXN0aW4gSGUgKEFybSBUZWNobm9s
b2d5IENoaW5hKSIgPEp1c3Rpbi5IZUBhcm0uY29tPiB3cm90ZToKCj4gSGkgV2lsbCBhbmQgTWFy
Ywo+IAo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IE1hcmMgWnluZ2ll
ciA8bWF6QGtlcm5lbC5vcmc+Cj4gPiBTZW50OiAyMDE55bm0MTDmnIgx5pelIDIxOjMyCj4gPiBU
bzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPiA+IENjOiBKdXN0aW4gSGUgKEFybSBU
ZWNobm9sb2d5IENoaW5hKSA8SnVzdGluLkhlQGFybS5jb20+OyBDYXRhbGluCj4gPiBNYXJpbmFz
IDxDYXRhbGluLk1hcmluYXNAYXJtLmNvbT47IE1hcmsgUnV0bGFuZAo+ID4gPE1hcmsuUnV0bGFu
ZEBhcm0uY29tPjsgSmFtZXMgTW9yc2UgPEphbWVzLk1vcnNlQGFybS5jb20+Owo+ID4gTWF0dGhl
dyBXaWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+OyBLaXJpbGwgQS4gU2h1dGVtb3YKPiA+IDxr
aXJpbGwuc2h1dGVtb3ZAbGludXguaW50ZWwuY29tPjsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnOwo+ID4gbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtbW1A
a3ZhY2sub3JnOyBQdW5pdCBBZ3Jhd2FsCj4gPiA8cHVuaXRhZ3Jhd2FsQGdtYWlsLmNvbT47IFRo
b21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPjsKPiA+IEFuZHJldyBNb3J0b24gPGFr
cG1AbGludXgtZm91bmRhdGlvbi5vcmc+OyBoZWppYW5ldEBnbWFpbC5jb207IEthbHkKPiA+IFhp
biAoQXJtIFRlY2hub2xvZ3kgQ2hpbmEpIDxLYWx5LlhpbkBhcm0uY29tPgo+ID4gU3ViamVjdDog
UmU6IFtQQVRDSCB2MTAgMi8zXSBhcm02NDogbW06IGltcGxlbWVudAo+ID4gYXJjaF9mYXVsdHNf
b25fb2xkX3B0ZSgpIG9uIGFybTY0Cj4gPiAKPiA+IE9uIFR1ZSwgMSBPY3QgMjAxOSAxMzo1MDoz
MiArMDEwMAo+ID4gV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiAgIAo+
ID4gPiBPbiBNb24sIFNlcCAzMCwgMjAxOSBhdCAwOTo1NzozOUFNICswODAwLCBKaWEgSGUgd3Jv
dGU6ICAKPiA+ID4gPiBPbiBhcm02NCB3aXRob3V0IGhhcmR3YXJlIEFjY2VzcyBGbGFnLCBjb3B5
aW5nIGZyb211c2VyIHdpbGwgZmFpbCAgCj4gPiBiZWNhdXNlICAKPiA+ID4gPiB0aGUgcHRlIGlz
IG9sZCBhbmQgY2Fubm90IGJlIG1hcmtlZCB5b3VuZy4gU28gd2UgYWx3YXlzIGVuZCB1cCB3aXRo
ICAKPiA+IHplcm9lZCAgCj4gPiA+ID4gcGFnZSBhZnRlciBmb3JrKCkgKyBDb1cgZm9yIHBmbiBt
YXBwaW5ncy4gd2UgZG9uJ3QgYWx3YXlzIGhhdmUgYQo+ID4gPiA+IGhhcmR3YXJlLW1hbmFnZWQg
YWNjZXNzIGZsYWcgb24gYXJtNjQuCj4gPiA+ID4KPiA+ID4gPiBIZW5jZSBpbXBsZW1lbnQgYXJj
aF9mYXVsdHNfb25fb2xkX3B0ZSBvbiBhcm02NCB0byBpbmRpY2F0ZSB0aGF0IGl0ICAKPiA+IG1p
Z2h0ICAKPiA+ID4gPiBjYXVzZSBwYWdlIGZhdWx0IHdoZW4gYWNjZXNzaW5nIG9sZCBwdGUuCj4g
PiA+ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKaWEgSGUgPGp1c3Rpbi5oZUBhcm0uY29tPgo+
ID4gPiA+IFJldmlld2VkLWJ5OiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0u
Y29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL3BndGFibGUu
aCB8IDE0ICsrKysrKysrKysrKysrCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRp
b25zKCspCj4gPiA+ID4KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9pbmNsdWRlL2Fz
bS9wZ3RhYmxlLmggIAo+ID4gYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3BndGFibGUuaCAgCj4g
PiA+ID4gaW5kZXggNzU3NmRmMDBlYjUwLi5lOTZmYjgyZjYyZGUgMTAwNjQ0Cj4gPiA+ID4gLS0t
IGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wZ3RhYmxlLmgKPiA+ID4gPiArKysgYi9hcmNoL2Fy
bTY0L2luY2x1ZGUvYXNtL3BndGFibGUuaAo+ID4gPiA+IEBAIC04ODUsNiArODg1LDIwIEBAIHN0
YXRpYyBpbmxpbmUgdm9pZCB1cGRhdGVfbW11X2NhY2hlKHN0cnVjdCAgCj4gPiB2bV9hcmVhX3N0
cnVjdCAqdm1hLCAgCj4gPiA+ID4gICNkZWZpbmUgcGh5c190b190dGJyKGFkZHIpCShhZGRyKQo+
ID4gPiA+ICAjZW5kaWYKPiA+ID4gPgo+ID4gPiA+ICsvKgo+ID4gPiA+ICsgKiBPbiBhcm02NCB3
aXRob3V0IGhhcmR3YXJlIEFjY2VzcyBGbGFnLCBjb3B5aW5nIGZyb20gdXNlciB3aWxsIGZhaWwg
IAo+ID4gYmVjYXVzZSAgCj4gPiA+ID4gKyAqIHRoZSBwdGUgaXMgb2xkIGFuZCBjYW5ub3QgYmUg
bWFya2VkIHlvdW5nLiBTbyB3ZSBhbHdheXMgZW5kIHVwICAKPiA+IHdpdGggemVyb2VkICAKPiA+
ID4gPiArICogcGFnZSBhZnRlciBmb3JrKCkgKyBDb1cgZm9yIHBmbiBtYXBwaW5ncy4gV2UgZG9u
J3QgYWx3YXlzIGhhdmUgYQo+ID4gPiA+ICsgKiBoYXJkd2FyZS1tYW5hZ2VkIGFjY2VzcyBmbGFn
IG9uIGFybTY0Lgo+ID4gPiA+ICsgKi8KPiA+ID4gPiArc3RhdGljIGlubGluZSBib29sIGFyY2hf
ZmF1bHRzX29uX29sZF9wdGUodm9pZCkKPiA+ID4gPiArewo+ID4gPiA+ICsJV0FSTl9PTihwcmVl
bXB0aWJsZSgpKTsKPiA+ID4gPiArCj4gPiA+ID4gKwlyZXR1cm4gIWNwdV9oYXNfaHdfYWYoKTsK
PiA+ID4gPiArfSAgCj4gPiA+Cj4gPiA+IERvZXMgdGhpcyB3b3JrIGNvcnJlY3RseSBpbiBhIEtW
TSBndWVzdD8gKGkuZS4gaXMgdGhlIE1NRlIgc2FuaXRpc2VkIGluICAKPiA+IHRoYXQgIAo+ID4g
PiBjYXNlLCBkZXNwaXRlIG5vdCBiZWluZyB0aGUgY2FzZSBvbiB0aGUgaG9zdD8pICAKPiA+IAo+
ID4gWXVwLCBhbGwgdGhlIDY0Yml0IE1NRlJzIGFyZSB0cmFwcGVkIChIQ1JfRUwyLlRJRDMgaXMg
c2V0IGZvciBhbgo+ID4gQUFyY2g2NCBndWVzdCksIGFuZCB3ZSByZXR1cm4gdGhlIHNhbml0aXNl
ZCB2ZXJzaW9uLiAgCj4gVGhhbmtzIGZvciBNYXJjJ3MgZXhwbGFuYXRpb24uIEkgdmVyaWZpZWQg
dGhlIHBhdGNoIHNlcmllcyBvbiBhIGt2bSBndWVzdCAoLU0gdmlydCkKPiB3aXRoIHNpbXVsYXRl
ZCBudmRpbW0gZGV2aWNlIGNyZWF0ZWQgYnkgcWVtdS4gVGhlIGhvc3QgaXMgVGh1bmRlclgyIGFh
cmNoNjQuCj4gCj4gPiAKPiA+IEJ1dCB0aGF0J3MgYW4gaW50ZXJlc3RpbmcgcmVtYXJrOiB3ZSdy
ZSBub3cgdHJhZGluZyBhbiBleHRyYSBmYXVsdCBvbgo+ID4gQ1BVcyB0aGF0IGRvIG5vdCBzdXBw
b3J0IEhXQUZEQlMgZm9yIGEgZ3VhcmFudGVlZCB0cmFwIGZvciBlYWNoIGFuZAo+ID4gZXZlcnkg
Z3Vlc3QgdW5kZXIgdGhlIHN1biB0aGF0IHdpbGwgaGl0IHRoZSBDT1cgcGF0aC4uLgo+ID4gCj4g
PiBNeSBndXQgZmVlbGluZyBpcyB0aGF0IHRoaXMgaXMgZ29pbmcgdG8gYmUgcHJldHR5IHZpc2li
bGUuIEppYSwgZG8geW91Cj4gPiBoYXZlIGFueSBudW1iZXJzIGZvciB0aGlzIGtpbmQgb2YgYmVo
YXZpb3VyPyAgCj4gSXQgaXMgbm90IGEgY29tbW9uIENPVyBwYXRoLCBidXQgYSBDT1cgZm9yIFBG
TiBtYXBwaW5nIHBhZ2VzIG9ubHkuCj4gSSBhZGQgYSBnX2NvdW50ZXIgYmVmb3JlIHB0ZV9ta3lv
dW5nIGluIGZvcmNlX21reW91bmd7fSB3aGVuIHRlc3RpbmcgCj4gdm1tYWxsb2NfZm9yayBhdCBb
MV0uCj4gCj4gSW4gdGhpcyB0ZXN0IGNhc2UsIGl0IHdpbGwgc3RhcnQgTSBmb3JrIHByb2Nlc3Nl
cyBhbmQgTiBwdGhyZWFkcy4gVGhlIGRlZmF1bHQgaXMKPiBNPTIsTj00LiB0aGUgZ19jb3VudGVy
IGlzIGFib3V0IDI0MSwgdGhhdCBpcyBpdCB3aWxsIGhpdCBteSBwYXRjaCBzZXJpZXMgZm9yIDI0
MQo+IHRpbWVzLgo+IElmIEkgc2V0IE09MjAgYW5kIE49NDAgZm9yIFRFU1QzLCB0aGUgZ19jb3Vu
dGVyIGlzIGFib3V0IDE0OTIuCgpJIG11c3QgY29uZmVzcyBJJ20gbm90IHNvIG11Y2ggaW50ZXJl
c3RlZCBpbiByYW5kb20gbWljcm9iZW5jaG1hcmtzLApidXQgbW9yZSBpbiBhY3R1YWwgYXBwbGlj
YXRpb25zIHRoYXQgY291bGQgcG90ZW50aWFsbHkgYmUgaW1wYWN0ZWQgYnkKdGhpcy4gVGhlIG51
bWJlcnMgeW91J3JlIHF1b3RpbmcgaGVyZSBzZWVtIHByZXR0eSBzbWFsbCwgd2hpY2ggd291bGQK
aW5kaWNhdGUgYSBsb3cgb3ZlcmhlYWQsIGJ1dCB0aGF0J3Mgbm90IGluZGljYXRpdmUgb2Ygd2hh
dCB3b3VsZCBoYXBwZW4KaW4gcmVhbCBsaWZlLgoKSSBndWVzcyB0aGF0IHdlIGNhbiBsZWF2ZSBp
dCBhdCB0aGF0IGZvciBub3csIGFuZCB0dXJuIGl0IGludG8gYSBDUFUKZmVhdHVyZSAod2l0aCB0
aGUgYXNzb2NpYXRlZCBzdGF0aWMga2V5KSBpZiB0aGlzIHNob3dzIGFueXdoZXJlLgoKVGhhbmtz
LAoKCU0uCgoKPiAgIAo+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vcG1lbS9wbWRrL3RyZWUvbWFz
dGVyL3NyYy90ZXN0L3ZtbWFsbG9jX2ZvcmsKPiAKPiAKPiAtLQo+IENoZWVycywKPiBKdXN0aW4g
KEppYSBIZSkKPiAKLS0gCkphenogaXMgbm90IGRlYWQuIEl0IGp1c3Qgc21lbGxzIGZ1bm55Li4u
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
