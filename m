Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C171CD5864
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 23:50:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SD89rV2crMKKdocmZQ2HvkrJ5oWi53mHKCCWBqHTZ2o=; b=Ir9BE1NAct52HQ
	h1OSwpvdb+2f8ZXLTb/X2vTmbm+fg0x/D4L1joQwECqLrRHN8An2uPM6MFq4kD+JCnfUDtMNc2ekr
	lLqGhKwfPkwSSnopelIEa76CEloRp1l/yikcW75yukqv+Yg/MUrTOAPFGO7a1SCOHGDnCAK2PYwxX
	DaMW7VTrtqXfQwnSe5XhmHAPuMjVY4iHCGC/WR7A14pX4i6WKxCQpqfVg+DbVkpseQt46GFojlukC
	HSD7GwEk3cwsUu6IshSOGerb2/oAYtBzUi08e+ioP4dJTu/HAnOKRTio0Uea+IPIbMMinF6t+7ViQ
	m3LO9lL9A1sEaEMzupFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJlkl-0005xC-17; Sun, 13 Oct 2019 21:50:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJlkd-0004mK-89; Sun, 13 Oct 2019 21:50:09 +0000
Received: from i59f7e0c5.versanet.de ([89.247.224.197] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iJlkV-0004sv-Rh; Sun, 13 Oct 2019 23:50:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: clk: rockchip: Checking a kmemdup() call in
 rockchip_clk_register_pll()
Date: Sun, 13 Oct 2019 23:49:54 +0200
Message-ID: <2588953.0pqkEXWxhN@phil>
In-Reply-To: <29d12079-d888-e090-da5a-c407c13d696b@web.de>
References: <e96505a8-b554-f61e-3940-0b9e9c7850ff@web.de>
 <5801053.xxhhKtLrcJ@diego> <29d12079-d888-e090-da5a-c407c13d696b@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_145007_451589_9C994ABE 
X-CRM114-Status: GOOD (  22.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Stephen Boyd <sboyd@kernel.org>, Kangjie Lu <kjlu@umn.edu>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen McCamant <smccaman@umn.edu>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org,
 Navid Emamdoost <emamd001@umn.edu>, Aditya Pakki <pakki001@umn.edu>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gU29ubnRhZywgMTMuIE9rdG9iZXIgMjAxOSwgMTA6NDU6MDkgQ0VTVCBzY2hyaWViIE1hcmt1
cyBFbGZyaW5nOgo+ID4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1w
bGwuYz9pZD0xYzBjYzVmMWFlNWVlNWE2OTEzNzA0YzBkNzVhNmU5OTYwNGVlMzBhI245MTMKPiA+
PiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS40LXJjMi9zb3VyY2UvZHJpdmVy
cy9jbGsvcm9ja2NoaXAvY2xrLXBsbC5jI0w5MTMKPiA+Pgo+ID4+ICogRG8geW91IGZpbmQgdGhl
IHVzYWdlIG9mIHRoZSBmb3JtYXQgc3RyaW5nIOKAnCVzOiBjb3VsZCBub3QgYWxsb2NhdGUKPiA+
PiAgIHJhdGUgdGFibGUgZm9yICVzXG7igJ0gc3RpbGwgYXBwcm9wcmlhdGUgYXQgdGhpcyBwbGFj
ZT8KPiA+Cj4gPiBJZiB0aGVyZSBpcyBhbiBpbnRlcm5hbCAibm8tbWVtb3J5IiBvdXRwdXQgZnJv
bSBpbnNpZGUga21lbWR1cCBub3csCj4gPiBJIGd1ZXNzIHRoZSBvbmUgaW4gdGhlIGNsb2NrIGRy
aXZlciB3b3VsZCBiZSBhIGR1cGxpY2F0ZSBhbmQgY291bGQgZ28gYXdheS4KPiAKPiBIb3cgZG8g
eW91IHRoaW5rIGFib3V0IHRvIHJlY2hlY2sgaW5mb3JtYXRpb24gc291cmNlcyBhcm91bmQKPiB0
aGUgTGludXggYWxsb2NhdGlvbiBmYWlsdXJlIHJlcG9ydD8KPiBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9Eb2N1
bWVudGF0aW9uL3Byb2Nlc3MvY29kaW5nLXN0eWxlLnJzdD9pZD1kYTk0MDAxMjM5Y2NlYjkzYzEz
MmEzMTkyOGQ2ZGRjNDIxNDg2MmQ1I244NzgKPiAKPiAKPiA+PiAqIElzIHRoZXJlIGEgbmVlZCB0
byBhZGp1c3QgdGhlIGVycm9yIGhhbmRsaW5nIGhlcmU/Cj4gPgo+ID4gVGhlcmUgaXMgbm8gbmVl
ZCBmb3IgYWRkaXRpb25hbCBlcnJvciBoYW5kbGluZy4KPiAKPiBJZiB5b3Ugd291bGQgbGlrZSB0
byBvbWl0IHRoZSBtYWNybyBjYWxsIOKAnFdBUk7igJ0sIEkgd291bGQgZXhwZWN0IGFsc28KPiB0
byBleHByZXNzIGEgY29ycmVzcG9uZGluZyBudWxsIHBvaW50ZXIgY2hlY2suCgpTbyBJIGd1ZXNz
IHdlIHdhbnQgc29tZXRoaW5nIGxpa2UgdGhlIGNoYW5nZSBhdCB0aGUgYm90dG9tLgoKCj4gPiBM
aWtlIGlmIHRoZSByYXRlLXRhYmxlIGNvdWxkIG5vdCBiZSBkdXBsaWNhdGVkLAo+ID4gdGhlIGNs
b2NrIHdpbGwgc3RpbGwgcmVwb3J0IHRoZSBjb3JyZWN0IGNsb2NrcmF0ZQo+ID4geW91IGNhbiBq
dXN0IG5vdCBzZXQgYSBuZXcgcmF0ZS4KPiAKPiBIb3cgbXVjaCB3aWxsIGEgZGlmZmVyZW50IHN5
c3RlbSBjb25maWd1cmF0aW9uIG1hdHRlciBmaW5hbGx5Pwo+IChEbyB5b3UgcmVhbGx5IHdhbnQg
dG8gdHJlYXQgdGhpcyBzZXR0aW5nIGFzIOKAnG9wdGlvbmFs4oCdPykKPiAKPiA+IEFuZCBmb3Ig
YSBzeXN0ZW0gaXQncyBhbHdheXMgYmV0dGVyIHRvIGhhdmUgdGhlIGNsb2NrIGRyaXZlciBwcmVz
ZW50Cj4gPiB0aGFuIGZvciBhbGwgZGV2aWNlLWRyaXZlcnMgdG8gZmFpbCBwcm9iaW5nLiBFc3Bl
Y2lhbGx5IGFzIHRoaXMgc3RhcnQgYXMKPiA+IGNvcmUgY2xvY2sgZHJpdmVyLCBzbyB0aGVyZSBp
cyBubyBkZWZlcnJpbmcgcG9zc2libGUuCj4gCj4gSSBpbWFnaW5lIHRoYXQgc3VjaCBhIHZpZXcg
Y2FuIGJlIGNsYXJpZmllZCBmdXJ0aGVyLgoKVGhlIGNvcmUgc29jIGNsb2NrIGRyaXZlciBnZXRz
IGluaXRpYWxpemVkIHRocm91Z2ggQ0xLX09GX0RFQ0xBUkUoKSwKYWthIHJlYWwgZWFybHkgZHVy
aW5nIGJvb3QuIFNvIGlmIHRoZSBrbWVtZHVwIGZhaWxzIHRoZXJlIGNhbiBub3QgYmUKYW55IC1F
UFJPQkVfREVGRVIsIGFzIHRoZXJlIGlzIG5vIGtlcm5lbC1kcml2ZXItbW9kZWwgcnVubmluZyB5
ZXQuCgpBbGwgb3RoZXIgY29tcG9uZW50cyBvZiB0aGUgc3lzdGVtIG9mIGNvdXJzZSBkZXBlbmQg
b24gdGhlIGNsb2NrLQpjb250cm9sbGVyIGJlaW5nIGF2YWlsYWJsZSwgc28gdGhhdCB3YXkgdGhl
IHN5c3RlbSBjYW4gYXQgbGVhc3QgY29tZQp1cCBmdXJ0aGVyIHNvIHRoYXQgcGVvcGxlIG1pZ2h0
IGJlIGFibGUgdG8gZGVidWcgdGhlaXIgaXNzdWUgZnVydGhlci4KClRoZSBvdGhlciBvcHRpb24g
d291bGQgYmUgdG8gcGFuaWMsIGJ1dCB0aGUga2VybmVsIHNob3VsZCBub3QKcGFuaWMgaWYgb3Ro
ZXIgb3B0aW9ucyBhcmUgYXZhaWxhYmxlIC0gYW5kIGNvbnRpbnVpbmcgd2l0aCBhIHN0YXRpYwpw
bGwgZnJlcXVlbmN5IGlzIGxlc3MgaW52YXNpdmUgaW4gdGhlIGVycm9yIGNhc2UuCgpIZWlrbwoK
LS0tLS0tIDg8IC0tLS0tLS0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1w
bGwuYyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1wbGwuYwppbmRleCAxOTg0MTdkNTYzMDAu
LjE3YmZhYzYxMWU3OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXBsbC5j
CisrKyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1wbGwuYwpAQCAtOTA5LDE0ICs5MDksMTYg
QEAgc3RydWN0IGNsayAqcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX3BsbChzdHJ1Y3Qgcm9ja2NoaXBf
Y2xrX3Byb3ZpZGVyICpjdHgsCiAJCWZvciAobGVuID0gMDsgcmF0ZV90YWJsZVtsZW5dLnJhdGUg
IT0gMDsgKQogCQkJbGVuKys7CiAKLQkJcGxsLT5yYXRlX2NvdW50ID0gbGVuOwogCQlwbGwtPnJh
dGVfdGFibGUgPSBrbWVtZHVwKHJhdGVfdGFibGUsCiAJCQkJCXBsbC0+cmF0ZV9jb3VudCAqCiAJ
CQkJCXNpemVvZihzdHJ1Y3Qgcm9ja2NoaXBfcGxsX3JhdGVfdGFibGUpLAogCQkJCQlHRlBfS0VS
TkVMKTsKLQkJV0FSTighcGxsLT5yYXRlX3RhYmxlLAotCQkJIiVzOiBjb3VsZCBub3QgYWxsb2Nh
dGUgcmF0ZSB0YWJsZSBmb3IgJXNcbiIsCi0JCQlfX2Z1bmNfXywgbmFtZSk7CisKKwkJLyoKKwkJ
ICogU2V0IG51bSByYXRlcyB0byAwIGlmIGttZW1kdXAgZmFpbHMuIFRoYXQgd2F5IHRoZSBjbG9j
aworCQkgKiBhdCBsZWFzdCBjYW4gcmVwb3J0IGl0cyByYXRlIGFuZCBzdGF5cyB1c2FibGUuCisJ
CSAqLworCQlwbGwtPnJhdGVfY291bnQgPSBwbGwtPnJhdGVfdGFibGUgPyBsZW4gOiAwOwogCX0K
IAogCXN3aXRjaCAocGxsX3R5cGUpIHsKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
