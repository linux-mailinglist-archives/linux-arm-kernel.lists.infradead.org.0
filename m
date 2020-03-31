Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D106198D3A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 09:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=weAiEdMvmJ24UM4ktoaL/wS9Sx1GsKyONcs2vVY2CyU=; b=pihk8ghowtg0MH
	gU/GXUWoilzUYTm+nBJdOLoAH/RbC/z9zxICfDxDPz5KZF1K5eHwa7deug/qPwOXVfQE/DGJfFx2h
	1vvWDbmnlcIN/pmP/uNAjE7l/CQrucctH0Ogp+afCwo4Q6tH6FsJAXuOVCIiBRHNU9gveUqujSN33
	VJ0XU026TK//vsXNUatcQncihkI1dly0xhtptpp+wh/CVslBE0XsKU4t/juvc9KK2hFxBCQi0EPxr
	w4hoaouxG7qRSGG3YbkiqjKRbUYaVbHLqrc1XZmc4yllqiE20bv0XhCco2bCyx06H0dA4Yb3dRspQ
	+7hMoCPp1ssXvEWwa3GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJBX7-0002sI-W0; Tue, 31 Mar 2020 07:42:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJBWz-0002ru-8m
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 07:41:54 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6109D206DB;
 Tue, 31 Mar 2020 07:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585640512;
 bh=5iFie0hFJZbTkxQfX1zpVUAdSViyONJlf5tfYCSCM90=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WpA59XPGa8R71SOKM3cUhV4bJJb6J9lAvZeIUmwwwW1bWXp1YARIYTGnL7YmXDF+d
 LDzhBrS/g+v7WummotEcUhWcRN9ycSGlBv/AXQe5fUH+nj/6AU4bvJUiPKP5jPtIzu
 X5mg8Tvnns1q6E42t+LvvlanLibgc3PoXVRqJpD8=
Date: Tue, 31 Mar 2020 08:41:47 +0100
From: Will Deacon <will@kernel.org>
To: tingwei@codeaurora.org
Subject: Re: [PATCH] arm64: hw_breakpoint: don't clear debug registers in
 halt mode
Message-ID: <20200331074147.GA25612@willie-the-truck>
References: <20200328083209.21793-1-tingwei@codeaurora.org>
 <20200330123946.GH1309@C02TD0UTHF1T.local>
 <20200330134218.GB10633@willie-the-truck>
 <2f4d076b2b21de3908f0821126d0c61e@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2f4d076b2b21de3908f0821126d0c61e@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_004153_332106_984CBBDB 
X-CRM114-Status: GOOD (  24.98  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

T24gVHVlLCBNYXIgMzEsIDIwMjAgYXQgMTA6Mzk6NDJBTSArMDgwMCwgdGluZ3dlaUBjb2RlYXVy
b3JhLm9yZyB3cm90ZToKPiDlnKggMjAyMC0wMy0zMCAyMTo0Mu+8jFdpbGwgRGVhY29uIOWGmemB
k++8mgo+ID4gT24gTW9uLCBNYXIgMzAsIDIwMjAgYXQgMDE6Mzk6NDZQTSArMDEwMCwgTWFyayBS
dXRsYW5kIHdyb3RlOgo+ID4gPiBPbiBTYXQsIE1hciAyOCwgMjAyMCBhdCAwNDozMjowOVBNICsw
ODAwLCBUaW5nd2VpIFpoYW5nIHdyb3RlOgo+ID4gPiA+IElmIGV4dGVybmFsIGRlYnVnZ2VyIHNl
dHMgYSBicmVha3BvaW50IGZvciBvbmUgS2VybmVsIGZ1bmN0aW9uCj4gPiA+ID4gd2hlbiBkZXZp
Y2UgaXMgaW4gYm9vdGxvYWRlciBtb2RlIGFuZCBsb2FkcyBLZXJuZWwsIHRoaXMgYnJlYWtwb2lu
dAo+ID4gPiA+IHdpbGwgYmUgd2lwZWQgb3V0IGluIGh3X2JyZWFrcG9pbnRfcmVzZXQoKS4gVG8g
Zml4IHRoaXMsIGNoZWNrCj4gPiA+ID4gTURTQ1JfRUwxLkhERSBpbiBod19icmVha3BvaW50X3Jl
c2V0KCkuIFdoZW4gTURTQ1JfRUwxLkhERSBpcwo+ID4gPiA+IDBiMSwgaGFsdGluZyBkZWJ1ZyBp
cyBlbmFibGVkLiBEb24ndCByZXNldCBkZWJ1ZyByZWdpc3RlcnMgaW4gdGhpcwo+ID4gY2FzZS4K
PiA+ID4gCj4gPiA+IEkgZG9uJ3QgdGhpbmsgdGhpcyBpcyBzdWZmaWNpZW50LCBiZWNhdXNlIHRo
ZSBrZXJuZWwgY2FuIHN0aWxsCj4gPiA+IHN1YnNlcXVlbnRseSBtZXNzIHdpdGggYnJlYWtwb2lu
dHMsIGFuZCB0aGUgSFcgZGVidWdnZXIgbWlnaHQgbm90IGJlCj4gPiA+IGF0dGFjaGVkIGF0IHRo
aXMgcG9pbnQgaW4gdGltZSBhbnlob3cuCj4gPiA+IAo+ID4gPiBJIHJlY2tvbiB0aGlzIHNob3Vs
ZCBoYW5nIG9mZiB0aGUgZXhpc3RpbmcgIm5vZGVidW1vbiIgY29tbWFuZCBsaW5lCj4gPiA+IG9w
dGlvbiwgYW5kIHdlIHNob3VsZG4ndCB1c2UgSFcgYnJlYWtwb2ludHMgYXQgYWxsIHdoZW4gdGhh
dCBpcwo+ID4gPiBwYXNzZWQuCj4gPiA+IFRoZW4geW91IGNhbiBwYXNzIHRoYXQgdG8gcHJldmVu
dCB0aGUga2VybmVsIHN0b21waW5nIG9uIHRoZSBleHRlcm5hbAo+ID4gPiBkZWJ1Z2dlci4KPiA+
ID4gCj4gPiA+IFdpbGwsIHRob3VnaHRzPwo+ID4gCj4gPiBJIHdhcyBnb2luZyB0byBzdWdnZXN0
IHRoZSBzYW1lIHRoaW5nLCBhbHRob3VnaCB3ZSB3aWxsIGFsc28gbmVlZCB0bwo+ID4gdGFrZQo+
ID4gY2FyZSB0byByZXNldCB0aGUgcmVnaXN0ZXJzIGlmICJub2RlYnVnbW9uIiBpcyB0b2dnbGVk
IGF0IHJ1bnRpbWUgdmlhCj4gPiB0aGUKPiA+ICJkZWJ1Z19lbmFibGVkIiBmaWxlIGluIGRlYnVn
ZnMuCj4gPiAKPiBUaGFua3MgZm9yIHRoZSBzdWdnZXN0aW9uLCBNYXJrIGFuZCBXaWxsLiBJdCdz
IGEgZ3JlYXQgaWRlYSB0byB1c2UKPiAibm9kZWJ1Z21vbiIuIFdoZW4gIm5vZGVidWdtb24iIGlz
IHNldCwgS2VybmVsIHdvbid0IGNoYW5nZSBIVyBicmVha3BvaW50cy4KPiAKPiBGb3IgcmVzZXQg
dGhlIHJlZ2lzdGVycyBhZnRlciAiZGVidWdfZW5hYmxlZCIgaXMgdG9nZ2xlZCwgSSdtIHRoaW5r
aW5nIGlmCj4gd2UgYXJlIGFkZGluZyB1bm5lY2Vzc2FyeSBjb21wbGV4aXR5IGhlcmUuSWYgd2Ug
dGFrZSB0aGF0IGFwcHJvYWNoLCB3ZSB3aWxsCj4gaG9vayAiZGVidWdfZW5hYmxlZCIgaW50ZXJm
YWNlIGFuZCB1c2Ugc21wX2NhbGxfZnVuY3Rpb25fc2luZ2xlKCkgdG8gY2FsbAo+IGh3X2JyZWFr
cG9pbnRfcmVzZXQoKSBvbiBlYWNoIENQVS4gV2FpdCBmb3IgYWxsIENQVXMnIGV4ZWN1dGlvbiBk
b25lIGFuZAo+IGNoYW5nZSAiZGVidWdfZW5hYmxlZCIuIEV4dGVybmFsIGRlYnVnZ2VyIHdvdWxk
IGNsZWFyIHRoZSBicmVha3BvaW50cyB3aGVuCj4gaXQgZGV0YWNoZXMgdGhlIGRldmljZSBhbmQg
cmVzdG9yZXMgaXRzIGJyZWFrcG9pbnRzIHdoZW4gYXR0YWNoZXMgdGhlCj4gZGV2aWNlLgo+IEFz
c3VtZSBkZWJ1Z19lbmFibGVkIGlzIGNoYW5nZWQgdG8gb25lIGFmdGVyIGV4dGVybmFsIGRlYnVn
Z2VyIGRldGFjaGVzIHRoZQo+IGRldmljZS4gRGVidWdnZXIgd291bGQgYWxyZWFkeSBjbGVhciB0
aGUgYnJlYWtwb2ludCByZWdpc3RlcnMuIElmIGRlYmdnZXIgaXMKPiBzdGlsbCBhdHRhY2hlZCwg
dGhlcmUncyBub3RoaW5nIEtlcm5lbCBjYW4gZG8gdG8gc3RvcCBpdCByZXN0b3Jlcy9wcm9ncmFt
cwo+IHRoZSBicmVha3BvaW50IHJlZ2lzdGVycy4KPiAKPiBXaGF0IGRvIHlvdSB0aGluayBvZiB0
aGlzPwoKSXQncyBhbGwgYSBiaXQgb2YgYSBtZXNzLiBMb29raW5nIGF0IGl0IHNvbWUgbW9yZSwg
d2h5IGNhbid0IHRoZSBleHRlcm5hbApkZWJ1Z2dlciBzaW1wbHkgdHJhcCBhY2Nlc3MgdG8gdGhl
IGRlYnVnIHJlZ2lzdGVycyB1c2luZyBFRFNDUi5UREE/IFRoYXQKd2F5LCB3ZSBkb24ndCBoYXZl
IHRvIGNoYW5nZSBhbnl0aGluZyBpbiB0aGUga2VybmVsLgoKV2lsbAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
