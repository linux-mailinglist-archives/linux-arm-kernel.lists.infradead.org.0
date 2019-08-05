Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A88EE81E65
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 16:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2pgQ/pKOguI4cY12GKioIK0Z3BgoWTXK6Mi9RvfI9zY=; b=rDzt6HJBx3LDrE
	Jvg53BtYfZSBNp/HjWJ9qnY6+Ji3isoPMqgYK4cirCbH+ivKWGwPhUBk9MfCf5u4R7T0ZVUYbhg6b
	3Q3LvrRzE6qZjpYs9OvW4Djaf46iBSntvHK3vIeyAG/4axOwmkskCdakaf9Msvhfq4UTtgtZUoxt2
	JuZGsP14rnPOw4KWo9LkadETgevFzbmv8CqoI3ana8yrxIe5qkQFHJap90TizISsEqTIgmVLFHRje
	OQhiDonPakjNHLRrN28joBK2ZbFJeadB3l91Pi1n6bWymWMD5aattuGrZavlxbHGksWcOI/DHLNWb
	+op4L69xvCkNock5fpyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudYP-0002lV-J1; Mon, 05 Aug 2019 14:01:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudYC-0002kc-3V
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 14:01:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C5C2B214C6;
 Mon,  5 Aug 2019 14:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565013683;
 bh=jjNyHTb7y2OQFlMNJASooyvqSUfY24hc6hv9fvauXAo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yZEAcRQk5+MQbNA8Iv+LnnLWLy3Ow0Bj9Xm45B2LMoDpvdrsNB1JAMRtAdgHpUUOM
 TastMn6ZW6vaKBxTpUvQzXEF72Gnghhsvy5EmnwLOCJtgdYRRMnAM5jrc9cePl9cq4
 /ZvswzjpGAJhhKQ2fvc3R0xtmDK4HFvL2Zl6OpQc=
Date: Mon, 5 Aug 2019 15:01:19 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] arm64/cache: fix -Woverride-init compiler warnings
Message-ID: <20190805140118.fys437oor2b2rnq5@willie-the-truck>
References: <1564759944-2197-1-git-send-email-cai@lca.pw>
 <20190805095256.ocgdb2yfhnbdz6kw@willie-the-truck>
 <771C4B4C-6D79-419D-9778-5DE1BFC67FBE@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <771C4B4C-6D79-419D-9778-5DE1BFC67FBE@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_070124_188477_278D6955 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMDc6NDc6MzdBTSAtMDQwMCwgUWlhbiBDYWkgd3JvdGU6
Cj4gCj4gCj4gPiBPbiBBdWcgNSwgMjAxOSwgYXQgNTo1MiBBTSwgV2lsbCBEZWFjb24gPHdpbGxA
a2VybmVsLm9yZz4gd3JvdGU6Cj4gPiAKPiA+IE9uIEZyaSwgQXVnIDAyLCAyMDE5IGF0IDExOjMy
OjI0QU0gLTA0MDAsIFFpYW4gQ2FpIHdyb3RlOgo+ID4+IFRoZSBjb21taXQgMTU1NDMzY2IzNjVl
ICgiYXJtNjQ6IGNhY2hlOiBSZW1vdmUgc3VwcG9ydCBmb3IgQVNJRC10YWdnZWQKPiA+PiBWSVZU
IEktY2FjaGVzIikgaW50cm9kdWNlZCBzb21lIGNvbXBpYXRpb24gd2FybmluZ3MgZnJvbSBHQ0Ms
Cj4gPj4gCj4gPj4gYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5jOjM4OjI2OiB3YXJuaW5nOiBp
bml0aWFsaXplZCBmaWVsZAo+ID4+IG92ZXJ3cml0dGVuIFstV292ZXJyaWRlLWluaXRdCj4gPj4g
IFtJQ0FDSEVfUE9MSUNZX1ZJUFRdICA9ICJWSVBUIiwKPiA+PiAgICAgICAgICAgICAgICAgICAg
ICAgICAgXn5+fn5+Cj4gPj4gYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5jOjM4OjI2OiBub3Rl
OiAobmVhciBpbml0aWFsaXphdGlvbiBmb3IKPiA+PiAnaWNhY2hlX3BvbGljeV9zdHJbMl0nKQo+
ID4+IGFyY2gvYXJtNjQva2VybmVsL2NwdWluZm8uYzozOToyNjogd2FybmluZzogaW5pdGlhbGl6
ZWQgZmllbGQKPiA+PiBvdmVyd3JpdHRlbiBbLVdvdmVycmlkZS1pbml0XQo+ID4+ICBbSUNBQ0hF
X1BPTElDWV9QSVBUXSAgPSAiUElQVCIsCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgIF5+
fn5+fgo+ID4+IGFyY2gvYXJtNjQva2VybmVsL2NwdWluZm8uYzozOToyNjogbm90ZTogKG5lYXIg
aW5pdGlhbGl6YXRpb24gZm9yCj4gPj4gJ2ljYWNoZV9wb2xpY3lfc3RyWzNdJykKPiA+PiBhcmNo
L2FybTY0L2tlcm5lbC9jcHVpbmZvLmM6NDA6Mjc6IHdhcm5pbmc6IGluaXRpYWxpemVkIGZpZWxk
Cj4gPj4gb3ZlcndyaXR0ZW4gWy1Xb3ZlcnJpZGUtaW5pdF0KPiA+PiAgW0lDQUNIRV9QT0xJQ1lf
VlBJUFRdICA9ICJWUElQVCIsCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+
Cj4gPj4gYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5jOjQwOjI3OiBub3RlOiAobmVhciBpbml0
aWFsaXphdGlvbiBmb3IKPiA+PiAnaWNhY2hlX3BvbGljeV9zdHJbMF0nKQo+ID4+IAo+ID4+IGJl
Y2F1c2UgaXQgaW5pdGlhbGl6ZXMgaWNhY2hlX3BvbGljeV9zdHJbMCAuLi4gM10gdHdpY2UuCj4g
Pj4gCj4gPj4gRml4ZXM6IDE1NTQzM2NiMzY1ZSAoImFybTY0OiBjYWNoZTogUmVtb3ZlIHN1cHBv
cnQgZm9yIEFTSUQtdGFnZ2VkIFZJVlQgSS1jYWNoZXMiKQo+ID4+IFNpZ25lZC1vZmYtYnk6IFFp
YW4gQ2FpIDxjYWlAbGNhLnB3Pgo+ID4+IC0tLQo+ID4+IGFyY2gvYXJtNjQva2VybmVsL2NwdWlu
Zm8uYyB8IDQgKystLQo+ID4+IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCj4gPj4gCj4gPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL2NwdWlu
Zm8uYyBiL2FyY2gvYXJtNjQva2VybmVsL2NwdWluZm8uYwo+ID4+IGluZGV4IDg3NjA1NWUzNzM1
Mi4uMTkzYjM4ZGE4ZDk2IDEwMDY0NAo+ID4+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2NwdWlu
Zm8uYwo+ID4+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL2NwdWluZm8uYwo+ID4+IEBAIC0zNCwx
MCArMzQsMTAgQEAKPiA+PiBzdGF0aWMgc3RydWN0IGNwdWluZm9fYXJtNjQgYm9vdF9jcHVfZGF0
YTsKPiA+PiAKPiA+PiBzdGF0aWMgY2hhciAqaWNhY2hlX3BvbGljeV9zdHJbXSA9IHsKPiA+PiAt
CVswIC4uLiBJQ0FDSEVfUE9MSUNZX1BJUFRdCT0gIlJFU0VSVkVEL1VOS05PV04iLAo+ID4+ICsJ
W0lDQUNIRV9QT0xJQ1lfVlBJUFRdCQk9ICJWUElQVCIsCj4gPj4gKwlbSUNBQ0hFX1BPTElDWV9W
UElQVCArIDFdCT0gIlJFU0VSVkVEL1VOS05PV04iLAo+ID4+IAlbSUNBQ0hFX1BPTElDWV9WSVBU
XQkJPSAiVklQVCIsCj4gPj4gCVtJQ0FDSEVfUE9MSUNZX1BJUFRdCQk9ICJQSVBUIiwKPiA+PiAt
CVtJQ0FDSEVfUE9MSUNZX1ZQSVBUXQkJPSAiVlBJUFQiLAo+ID4gCj4gPiBJIHJlYWxseSBkb24n
dCBsaWtlIHRoaXMgcGF0Y2guIFVzaW5nICJbMCAuLi4gTUFYSURYXSA9IDxkZWZhdWx0PiIgaXMg
YQo+ID4gdXNlZnVsIGlkaW9tIGFuZCBJIHRoaW5rIHRoZSBjb2RlIGlzIG1vcmUgZXJyb3ItcHJv
bmUgdGhlIHdheSB5b3UgaGF2ZQo+ID4gcmVzdHJ1Y3R1cmVkIGl0Lgo+ID4gCj4gPiBXaHkgYXJl
IHlvdSBwYXNzaW5nIC1Xb3ZlcnJpZGUtaW5pdCB0byB0aGUgY29tcGlsZXIgYW55d2F5PyBUaGVy
ZSdzIG9ubHkKPiA+IG9uZSBNYWtlZmlsZSB0aGF0IHJlZmVyZW5jZXMgdGhhdCBvcHRpb24sIGFu
ZCBpdCdzIHNwZWNpZmljIHRvIGEgcGluY3RybAo+ID4gZHJpdmVyLgo+IAo+IFRob3NlIGV4dHJh
IHdhcm5pbmdzIGNhbiBiZSBlbmFibGVkIGJ5IOKAnG1ha2UgVz0x4oCdLiDigJwtV292ZXJyaWRl
LWluaXQg4oCcIHNlZW1zIHRvIGJlIHVzZWZ1bAo+IHRvIGNhdGNoIHBvdGVudGlhbCBkZXZlbG9w
ZXIgbWlzdGFrZXMgd2l0aCB1bmludGVudGVkIGRvdWJsZS1pbml0aWFsaXphdGlvbnMuIEl0IGlz
IG5vcm1hbCB0bwo+IHN0YXJ0IHRvIGZpeCB0aGUgbW9zdCBvZiBmYWxzZS1wb3NpdGl2ZXMgZmly
c3QgYmVmb3JlIGdsb2JhbGx5IGVuYWJsaW5nIHRoZSBmbGFnIGJ5IGRlZmF1bHQganVzdCBsaWtl
Cj4g4oCcLVdpbXBsaWNpdC1mYWxsdGhyb3VnaOKAnSBtZW50aW9uZWQgaW4sCj4gCj4gaHR0cHM6
Ly9sd24ubmV0L0FydGljbGVzLzc5NDk0NC8KCkkgdGhpbmsgdGhpcyBjYXNlIGlzIGNvbXBsZXRl
bHkgZGlmZmVyZW50IHRvIHRoZSBpbXBsaWNpdCBmYWxsdGhyb3VnaCBzdHVmZi4KVGhlIHNvbHV0
aW9uIHRoZXJlIHdhcyBzaW1wbHkgdG8gYWRkIGEgY29tbWVudCB3aXRob3V0IHJlc3RydWN0dXJp
bmcgdGhlCnN1cnJvdW5kaW5nIGNvZGUuIFdoYXQgeW91ciBwYXRjaCBkb2VzIGhlcmUgaXMgYWN0
aXZlbHkgbWFrZSB0aGUgY29kZSBoYXJkZXIKdG8gdW5kZXJzdGFuZC4KCkluaXRpYWxpc2luZyBh
IHN0YXRpYyBhcnJheSB3aXRoIGEgbm9uLXplcm8gcGF0dGVybiBpcyBhIHVzZWZ1bCBpZGlvbSBh
bmQgSQpkb24ndCB0aGluayB3ZSBzaG91bGQgdGhyb3cgdGhhdCBhd2F5IGp1c3QgdG8gYXBwZWFz
ZSBhIHNpbGx5IGNvbXBpbGVyCndhcm5pbmcgdGhhdCBhcHBlYXJzIG9ubHkgd2l0aCBub24tZGVm
YXVsdCBidWlsZCBvcHRpb25zLiBIYXZlIGEgbG9vayBhdAp0aGUgd2F5IHdlIHVzZSBQRVJGX01B
UF9BTExfVU5TVVBQT1JURUQgaW4gdGhlIEFybSBQTVUgY29kZSwgZm9yIGV4YW1wbGUuCgpXaWxs
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
