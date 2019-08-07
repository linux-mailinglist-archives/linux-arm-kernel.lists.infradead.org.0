Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB5884B20
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 14:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2BfbLcuhn+X4vHXT2aWnCfRrQyrn0ZTTwS1WuW0vKE=; b=KIckRmTDsCuf1F
	UBa4Q0VSmC4CPbe0H/YJM4FXUydfprIESV52KWAr4dNBQDfUXsFuSKWgpf5rmYycChAYq10x9sFfW
	GZUS7eQ4cXRHNTuFH/KRNAOGLPmrNTrQQwcaAAfOF1U9Ic5pTXFWBYm4W1fVO6x/WY8+G7VEf/+AO
	dYq/PymtfrgptkzeKugq6Ig+EKNT7GpoKR4TrpO2W/S0K5bXIN4YbJYVbu2hE5nhKcarCpQccTIve
	Le5D3r2BP1Hh2IQAIlVlQEmerXKyCEeDOFDFD901JMEh3LmLNHnhj4eU9hAw2XHJrITzxJ5UNCm8C
	xwd6nIv0R/V+Hiw92wlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvKbk-0002r4-7f; Wed, 07 Aug 2019 11:59:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvKbL-0002i7-Ro
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 11:59:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 23123219BE;
 Wed,  7 Aug 2019 11:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565179171;
 bh=fE7YIYx8+y7MYU9u2RxYo4CVYhuKEipF0tinVVdo9Sc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fqIoWwnfxBbJUXf2BBa9wQdIyLyOhszNRhLtFcfUHw3NhQ4TmBvZyabOT6UVP27B9
 ASkT5VvHTL+BACFrKajkYhPYPMaWw4LeiIWDNFMMdjZoj3r3C40mbgXXWCY+/JpS4S
 mbeGy4GZOgpyBKGaBOoHZj8FeY5+lrEWDT1JjlwY=
Date: Wed, 7 Aug 2019 12:59:27 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH v2] arm64/cache: fix -Woverride-init compiler warnings
Message-ID: <20190807115926.np7izmaq36kgxzdg@willie-the-truck>
References: <20190806193434.965-1-cai@lca.pw>
 <20190807105652.cyi3fou2rfsxhxrk@willie-the-truck>
 <D11F0810-A6D0-4835-B71A-9DDDC120423B@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D11F0810-A6D0-4835-B71A-9DDDC120423B@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_045932_225968_10F6CB0D 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBdWcgMDcsIDIwMTkgYXQgMDc6NTA6NDNBTSAtMDQwMCwgUWlhbiBDYWkgd3JvdGU6
Cj4gCj4gCj4gPiBPbiBBdWcgNywgMjAxOSwgYXQgNjo1NiBBTSwgV2lsbCBEZWFjb24gPHdpbGxA
a2VybmVsLm9yZz4gd3JvdGU6Cj4gPiAKPiA+IE9uIFR1ZSwgQXVnIDA2LCAyMDE5IGF0IDAzOjM0
OjM0UE0gLTA0MDAsIFFpYW4gQ2FpIHdyb3RlOgo+ID4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2tlcm5lbC9jcHVpbmZvLmMgYi9hcmNoL2FybTY0L2tlcm5lbC9jcHVpbmZvLmMKPiA+PiBpbmRl
eCA4NzYwNTVlMzczNTIuLmEwYzQ5NWEzZjRmZCAxMDA2NDQKPiA+PiAtLS0gYS9hcmNoL2FybTY0
L2tlcm5lbC9jcHVpbmZvLmMKPiA+PiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9jcHVpbmZvLmMK
PiA+PiBAQCAtMzQsMTAgKzM0LDcgQEAgREVGSU5FX1BFUl9DUFUoc3RydWN0IGNwdWluZm9fYXJt
NjQsIGNwdV9kYXRhKTsKPiA+PiBzdGF0aWMgc3RydWN0IGNwdWluZm9fYXJtNjQgYm9vdF9jcHVf
ZGF0YTsKPiA+PiAKPiA+PiBzdGF0aWMgY2hhciAqaWNhY2hlX3BvbGljeV9zdHJbXSA9IHsKPiA+
PiAtCVswIC4uLiBJQ0FDSEVfUE9MSUNZX1BJUFRdCT0gIlJFU0VSVkVEL1VOS05PV04iLAo+ID4+
IC0JW0lDQUNIRV9QT0xJQ1lfVklQVF0JCT0gIlZJUFQiLAo+ID4+IC0JW0lDQUNIRV9QT0xJQ1lf
UElQVF0JCT0gIlBJUFQiLAo+ID4+IC0JW0lDQUNIRV9QT0xJQ1lfVlBJUFRdCQk9ICJWUElQVCIs
Cj4gPj4gKwlbMCAuLi4gSUNBQ0hFX1BPTElDWV9QSVBUXQk9ICJSRVNFUlZFRC9VTktOT1dOIgo+
ID4+IH07Cj4gPj4gCj4gPj4gdW5zaWduZWQgbG9uZyBfX2ljYWNoZV9mbGFnczsKPiA+PiBAQCAt
MzEwLDEzICszMDcsMTYgQEAgc3RhdGljIHZvaWQgY3B1aW5mb19kZXRlY3RfaWNhY2hlX3BvbGlj
eShzdHJ1Y3QgY3B1aW5mb19hcm02NCAqaW5mbykKPiA+PiAKPiA+PiAJc3dpdGNoIChsMWlwKSB7
Cj4gPj4gCWNhc2UgSUNBQ0hFX1BPTElDWV9QSVBUOgo+ID4+ICsJCWljYWNoZV9wb2xpY3lfc3Ry
W0lDQUNIRV9QT0xJQ1lfUElQVF0gPSAiUElQVCI7Cj4gPj4gCQlicmVhazsKPiA+PiAJY2FzZSBJ
Q0FDSEVfUE9MSUNZX1ZQSVBUOgo+ID4+ICsJCWljYWNoZV9wb2xpY3lfc3RyW0lDQUNIRV9QT0xJ
Q1lfVlBJUFRdID0gIlZQSVBUIjsKPiA+PiAJCXNldF9iaXQoSUNBQ0hFRl9WUElQVCwgJl9faWNh
Y2hlX2ZsYWdzKTsKPiA+PiAJCWJyZWFrOwo+ID4+IAlkZWZhdWx0Ogo+ID4+IAkJLyogRmFsbHRo
cm91Z2ggKi8KPiA+PiAJY2FzZSBJQ0FDSEVfUE9MSUNZX1ZJUFQ6Cj4gPj4gKwkJaWNhY2hlX3Bv
bGljeV9zdHJbSUNBQ0hFX1BPTElDWV9WSVBUXSA9ICJWSVBUIjsKPiA+PiAJCS8qIEFzc3VtZSBh
bGlhc2luZyAqLwo+ID4+IAkJc2V0X2JpdChJQ0FDSEVGX0FMSUFTSU5HLCAmX19pY2FjaGVfZmxh
Z3MpOwo+ID4gCj4gPiBJIHN0aWxsIHRoaW5rIHRoaXMgaXMgd29yc2UgdGhhbiB0aGUgY29kZSBp
biBtYWlubGluZS4gSSBkb24ndCB0aGluawo+ID4gLVdvdmVycmlkZS1pbml0IHNob3VsZCB3YXJu
IHdoZW4gb3ZlcnJpZGluZyBhIGZpZWxkIGZyb20gYSBHQ0MgcmFuZ2UKPiA+IGRlc2lnbmF0ZWQg
aW5pdGlhbGlzZXIsIHNpbmNlIGl0IG1ha2VzIHRoZW0gY29uc2lkZXJhYmx5IGxlc3MgdXNlZnVs
Cj4gPiBpbW8uCj4gCj4gVW5mb3J0dW5hdGVseSwgY29tcGlsZXIgcGVvcGxlIGFyZSBtb3Zpbmcg
aW50byBhIGRpZmZlcmVudCBkaXJlY3Rpb24gYXMKPiBDbGFuZyB3b3VsZCB3YXJuIHRob3NlIGtp
bmQgb2YgdXNhZ2UgdG9vLgo+IAo+IEl0IGFjdHVhbGx5IHByb3ZlIHRoYXQgdGhvc2Ugd2Fybmlu
Z3MgYXJlIHVzZWZ1bCB0byBmaW5kIHJlYWwgaXNzdWVzLiBTZWUsCj4gCj4gRmFlNWUwMzNkNjVh
ICjigJxtZmQ6IHJrODA4OiBGaXggUks4MThfSVJRX0RJU0NIR19JTElNIGluaXRpYWxpemVy4oCd
KQo+IDMyZGYzNGQ4NzViYiAo4oCcW21lZGlhXSByYzogaW1nLWlyOiBqdmM6IFJlbW92ZSB1bnVz
ZWQgbm8tbGVhZGVyIHRpbWluZ3PigJ0pCj4gCj4gRXNwZWNpYWxseSwgdG8gZmluZCByZWR1bmRh
bnQgaW5pdGlhbGl6YXRpb25zIGluIGxhcmdlIHN0cnVjdHVyZXMuIGUuZy4sCj4gCj4gZTZlYTBi
OTE3ODc1ICjigJxbbWVkaWFdIGR2Yl9mcm9udGVuZDogRG9uJ3QgZGVjbGFyZSB2YWx1ZXMgdHdp
Y2UgYXQgYSB0YWJsZeKAnSkKCk5vbmUgb2YgdGhlc2UgYXBwZWFyIHRvIHVzZSB0aGUgcmFuZ2Ug
aW5pdGlhbGlzZXJzIEkgd2FzIHJlZmVycmluZyB0bywgc28gSQpkb24ndCBzZWUgd2h5IHRoaXMg
aXMgcmVsZXZhbnQgdG8gdGhlIGRpc2N1c3Npb24gYXQgaGFuZC4KCldpbGwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
