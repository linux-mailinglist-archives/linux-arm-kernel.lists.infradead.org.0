Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1808BCFA20
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:40:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAZAPMSkSWtFtGlKoERA82DfQInpAN3OBGGJhzV96DI=; b=IkV4xW3onvlO56
	kKDaJ1kf1MOzO5BjYO36c1V6oG1nuHPC0JD0H+FKNY1JxDu5zrq0g5qMbvqnfgTkUGiqJ+wEveGkf
	gPQbbkxAvvIHvWSw1m+GnLSJYTlR/vt7ndaS6o8JWzSt1HqooZjcax8XH7a3B3vahCqAChwluwXBp
	6Fb05Nn8f1acb/RushEm1a9FMZJ7WfN6CfYssGhYZ5W1mdIs7D+jec1MyA6R57RJE/6q/KpZV4CQ+
	nNMMorRJkgiw52g8oq45Fp/cL6kwYgEQp1y22NNR3DO8YZPYmilYInPKDgFl1Vz6S9eA21fBBDtFO
	s3VZsjRWGDRjiqCO1gfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHome-0004mb-SW; Tue, 08 Oct 2019 12:40:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHomM-0004mD-4m
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:39:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1A5F3206B6;
 Tue,  8 Oct 2019 12:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570538389;
 bh=VOehHrjoEEH/9k1qS9ryy1x3ms6XAZCSJcvTxw4RJFY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iwaHKDtsfJzVVQq4/IuDx7OPcJ1OZEk1TNgWyf3KSKHP241RRMNvK2Y5lbwky4ez7
 LhZK0baYberKH77q90rA/AcHKfjADNwNqDvstzw6/4+SHednGlG0qZ90g5niGw+Fn7
 kBQ2DxxS+dqLZTW/evaUTo8vP3LSBCsoOgQsv7Q8=
Date: Tue, 8 Oct 2019 13:39:44 +0100
From: Will Deacon <will@kernel.org>
To: "Justin He (Arm Technology China)" <Justin.He@arm.com>
Subject: Re: [PATCH v10 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20191008123943.j7q6dlu2qb2az6xa@willie-the-truck>
References: <20190930015740.84362-1-justin.he@arm.com>
 <20190930015740.84362-4-justin.he@arm.com>
 <20191001125413.mhxa6qszwnuhglky@willie-the-truck>
 <DB7PR08MB3082563BD18482E5D541F019F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR08MB3082563BD18482E5D541F019F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_053950_228985_536D0888 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Punit Agrawal <punitagrawal@gmail.com>, Marc Zyngier <maz@kernel.org>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, nd <nd@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBPY3QgMDgsIDIwMTkgYXQgMDI6MTk6MDVBTSArMDAwMCwgSnVzdGluIEhlIChBcm0g
VGVjaG5vbG9neSBDaGluYSkgd3JvdGU6Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+
ID4gRnJvbTogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPiA+IFNlbnQ6IDIwMTnlubQx
MOaciDHml6UgMjA6NTQKPiA+IFRvOiBKdXN0aW4gSGUgKEFybSBUZWNobm9sb2d5IENoaW5hKSA8
SnVzdGluLkhlQGFybS5jb20+Cj4gPiBDYzogQ2F0YWxpbiBNYXJpbmFzIDxDYXRhbGluLk1hcmlu
YXNAYXJtLmNvbT47IE1hcmsgUnV0bGFuZAo+ID4gPE1hcmsuUnV0bGFuZEBhcm0uY29tPjsgSmFt
ZXMgTW9yc2UgPEphbWVzLk1vcnNlQGFybS5jb20+OyBNYXJjCj4gPiBaeW5naWVyIDxtYXpAa2Vy
bmVsLm9yZz47IE1hdHRoZXcgV2lsY294IDx3aWxseUBpbmZyYWRlYWQub3JnPjsgS2lyaWxsIEEu
Cj4gPiBTaHV0ZW1vdiA8a2lyaWxsLnNodXRlbW92QGxpbnV4LmludGVsLmNvbT47IGxpbnV4LWFy
bS0KPiA+IGtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJu
ZWwub3JnOyBsaW51eC0KPiA+IG1tQGt2YWNrLm9yZzsgUHVuaXQgQWdyYXdhbCA8cHVuaXRhZ3Jh
d2FsQGdtYWlsLmNvbT47IFRob21hcwo+ID4gR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT47
IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtCj4gPiBmb3VuZGF0aW9uLm9yZz47IGhlamlhbmV0
QGdtYWlsLmNvbTsgS2FseSBYaW4gKEFybSBUZWNobm9sb2d5IENoaW5hKQo+ID4gPEthbHkuWGlu
QGFybS5jb20+Cj4gPiBTdWJqZWN0OiBSZTogW1BBVENIIHYxMCAzLzNdIG1tOiBmaXggZG91Ymxl
IHBhZ2UgZmF1bHQgb24gYXJtNjQgaWYgUFRFX0FGCj4gPiBpcyBjbGVhcmVkCj4gPiAKPiA+IE9u
IE1vbiwgU2VwIDMwLCAyMDE5IGF0IDA5OjU3OjQwQU0gKzA4MDAsIEppYSBIZSB3cm90ZToKPiA+
ID4gZGlmZiAtLWdpdCBhL21tL21lbW9yeS5jIGIvbW0vbWVtb3J5LmMKPiA+ID4gaW5kZXggYjFj
YTUxYTA3OWYyLi4xZjU2YjAxMThlZjUgMTAwNjQ0Cj4gPiA+IC0tLSBhL21tL21lbW9yeS5jCj4g
PiA+ICsrKyBiL21tL21lbW9yeS5jCj4gPiA+IEBAIC0xMTgsNiArMTE4LDEzIEBAIGludCByYW5k
b21pemVfdmFfc3BhY2UgX19yZWFkX21vc3RseSA9Cj4gPiA+ICAJCQkJCTI7Cj4gPiA+ICAjZW5k
aWYKPiA+ID4KPiA+ID4gKyNpZm5kZWYgYXJjaF9mYXVsdHNfb25fb2xkX3B0ZQo+ID4gPiArc3Rh
dGljIGlubGluZSBib29sIGFyY2hfZmF1bHRzX29uX29sZF9wdGUodm9pZCkKPiA+ID4gK3sKPiA+
ID4gKwlyZXR1cm4gZmFsc2U7Cj4gPiA+ICt9Cj4gPiA+ICsjZW5kaWYKPiA+IAo+ID4gS2lyaWxs
IGhhcyBhY2tlZCB0aGlzLCBzbyBJJ20gaGFwcHkgdG8gdGFrZSB0aGUgcGF0Y2ggYXMtaXMsIGhv
d2V2ZXIgaXNuJ3QKPiA+IGl0IHRoZSBjYXNlIHRoYXQgL21vc3QvIGFyY2hpdGVjdHVyZXMgd2ls
bCB3YW50IHRvIHJldHVybiB0cnVlIGZvcgo+ID4gYXJjaF9mYXVsdHNfb25fb2xkX3B0ZSgpPyBJ
biB3aGljaCBjYXNlLCB3b3VsZG4ndCBpdCBtYWtlIG1vcmUgc2Vuc2UgZm9yCj4gPiB0aGF0IHRv
IGJlIHRoZSBkZWZhdWx0LCBhbmQgaGF2ZSB4ODYgYW5kIGFybTY0IHByb3ZpZGUgYW4gb3ZlcnJp
ZGU/IEZvcgo+ID4gZXhhbXBsZSwgYXJlbid0IG1vc3QgYXJjaGl0ZWN0dXJlcyBzdGlsbCBnb2lu
ZyB0byBoaXQgdGhlIGRvdWJsZSBmYXVsdAo+ID4gc2NlbmFyaW8gZXZlbiB3aXRoIHlvdXIgcGF0
Y2ggYXBwbGllZD8KPiAKPiBObywgYWZ0ZXIgYXBwbHlpbmcgbXkgcGF0Y2ggc2VyaWVzLCBvbmx5
IHRob3NlIGFyY2hpdGVjdHVyZXMgd2hpY2ggZG9uJ3QgcHJvdmlkZQo+IHNldHRpbmcgYWNjZXNz
IGZsYWcgYnkgaGFyZHdhcmUgQU5EIGRvbid0IGltcGxlbWVudCB0aGVpciBhcmNoX2ZhdWx0c19v
bl9vbGRfcHRlCj4gd2lsbCBoaXQgdGhlIGRvdWJsZSBwYWdlIGZhdWx0Lgo+IAo+IFRoZSBtZWFu
aW5nIG9mIHRydWUgZm9yIGFyY2hfZmF1bHRzX29uX29sZF9wdGUoKSBpcyAidGhpcyBhcmNoIGRv
ZXNuJ3QgaGF2ZSB0aGUgaGFyZHdhcmUKPiBzZXR0aW5nIGFjY2VzcyBmbGFnIHdheSwgaXQgbWln
aHQgY2F1c2UgcGFnZSBmYXVsdCBvbiBhbiBvbGQgcHRlIgo+IEkgZG9uJ3Qgd2FudCB0byBjaGFu
Z2Ugb3RoZXIgYXJjaGl0ZWN0dXJlcycgZGVmYXVsdCBiZWhhdmlvciBoZXJlLiBTbyBieSBkZWZh
dWx0LCAKPiBhcmNoX2ZhdWx0c19vbl9vbGRfcHRlKCkgaXMgZmFsc2UuCgouLi5hbmQgbXkgY29t
cGxhaW50IGlzIHRoYXQgdGhpcyBpcyB0aGUgbWFqb3JpdHkgb2Ygc3VwcG9ydGVkIGFyY2hpdGVj
dHVyZXMsCnNvIHlvdSdyZSBmaXhpbmcgc29tZXRoaW5nIGZvciBhcm02NCB3aGljaCBhbHNvIGFm
ZmVjdHMgYXJtLCBwb3dlcnBjLAphbHBoYSwgbWlwcywgcmlzY3YsIC4uLgoKQ2hhbmNlcyBhcmUs
IHRoZXkgd29uJ3QgZXZlbiByZWFsaXNlIHRoZXkgbmVlZCB0byBpbXBsZW1lbnQKYXJjaF9mYXVs
dHNfb25fb2xkX3B0ZSgpIHVudGlsIHNvbWVib2R5IHJ1bnMgaW50byB0aGUgZG91YmxlIGZhdWx0
IGFuZAp3YXN0ZXMgbG90cyBvZiB0aW1lIGRlYnVnZ2luZyBpdCBiZWZvcmUgdGhleSBzcG90IHlv
dXIgcGF0Y2guCgo+IEJ0dywgY3VycmVudGx5IEkgb25seSBvYnNlcnZlZCB0aGlzIGRvdWJsZSBw
YWdlZmF1bHQgb24gYXJtNjQncyBndWVzdAo+IChob3N0IGlzIFRodW5kZXJYMikuICBPbiBYODYg
Z3Vlc3QgKGhvc3QgaXMgSW50ZWwoUikgQ29yZShUTSkgaTctNDc5MCBDUFUKPiBAIDMuNjBHSHog
KSwgdGhlcmUgaXMgbm8gc3VjaCBkb3VibGUgcGFnZWZhdWx0LiBJdCBoYXMgdGhlIHNpbWlsYXIg
c2V0dGluZwo+IGFjY2VzcyBmbGFnIHdheSBieSBoYXJkd2FyZS4KClJpZ2h0LCBhbmQgdGhhdCdz
IHdoeSBJJ20gbm90IGNvbmNlcm5lZCBhYm91dCB4ODYgZm9yIHRoaXMgcHJvYmxlbS4KCldpbGwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
