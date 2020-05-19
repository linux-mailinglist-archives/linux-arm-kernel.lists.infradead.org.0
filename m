Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 914FE1D97FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 15:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5RRFza3HL2a5uiXsjbLsXtrhy40Bzyr041Xqon5PNTc=; b=ZeoKUtMsbpT+oB
	sp+kCdr+J+A2gNSWZhN4r189BoiwOoa0paU93c1ct45uBtHeUm9DCBXPAai+yarOIy2hDpIlDdS+E
	z/W13KfqFEgc50VidEGHifaxmiLrbg5fvEFL0xEOsUGxGXZ4G/c/lnoLy2Fv+dQ9oG7V29OTUWFK0
	1kCS+FgQD9oWNm7dczftshb34VzvzruKwXpAO7q8w+ui5r1ISRSrZMthB3d5O5UbMGf1o0x3wMvny
	rdxt9VYYVx8dmJyHkpwt2TVALjWK2cW3GEq/P+we3AyR6KV/1B128joBugOuE44dInaNEq4PHWrZt
	J6Kc7LzdD9v8u6W3TGTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2Tk-0006Cd-7Z; Tue, 19 May 2020 13:40:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2TD-00063j-5x
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 13:39:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1320020709;
 Tue, 19 May 2020 13:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589895586;
 bh=pzwIq6FxQNT2i+7fr1ysMxB5M0jMNKibb/LYHnsK9cY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1+pU/GrNe5wvIqG1TQhTWK+LRWNLS09dJqfBM7NBtSZzBxMz55+8IqAJvQ/HrkA0h
 NbZTlvG4Ipg/5MQCKrs1XE88BDd68xsrCw0RHc2/xqfOAKRjgyzUvLwXbdXNmPtjF/
 NUlrKDhq4nef2PpfGPwTXNMvOo0AxGI7qUIdpx0g=
Date: Tue, 19 May 2020 14:39:41 +0100
From: Will Deacon <will@kernel.org>
To: Dave P Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 3/3] arm64: vdso: Fix CFI directives in sigreturn
 trampoline
Message-ID: <20200519133941.GB14570@willie-the-truck>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-4-will@kernel.org>
 <20200519130930.GO10636@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519130930.GO10636@e103592.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_063947_260954_DF6618A8 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tamas Zsoldos <Tamas.Zsoldos@arm.com>, Mark Brown <broonie@kernel.org>,
 "kernel-team@android.com" <kernel-team@android.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Daniel Kiss <Daniel.Kiss@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMDI6MDk6MzFQTSArMDEwMCwgRGF2ZSBQIE1hcnRpbiB3
cm90ZToKPiBPbiBUdWUsIE1heSAxOSwgMjAyMCBhdCAwMToxODoxOFBNICswMTAwLCBXaWxsIERl
YWNvbiB3cm90ZToKPiA+IERhbmllbCByZXBvcnRzIHRoYXQgdGhlIC5jZmlfc3RhcnRwcm9jIGlz
IG1pc3BsYWNlZCBmb3IgdGhlIHNpZ3JldHVybgo+ID4gdHJhbXBvbGluZSwgd2hpY2ggY2F1c2Vz
IExMVk0ncyB1bndpbmRlciB0byBtaXNiZWhhdmU6Cj4gPiAKPiA+ICAgfCBJIHJ1biBpbnRvIHRo
aXMgd2l0aCBMTFZN4oCZcyB1bndpbmRlci4KPiA+ICAgfCBUaGlzIGNvbWJpbmF0aW9uIHdhcyBh
bHdheXMgYnJva2VuLgo+ID4gCj4gPiBUaGlzIHByb21wdGVkIERhdmUgdG8gcmVhbGlzZSB0aGF0
IG91ciBDRkkgZGlyZWN0aXZlcyBhcmUgY29udHJhZGljdG9yeSwKPiA+IGFzIHdlIHNwZWNpZnkg
Ym90aCAuY2ZpX3NpZ25hbF9mcmFtZSAqYW5kKiAuY2ZpX2RlZl9jZmEsIHdpdGggdGhlIGxhdHRl
cgo+ID4gdW5jb25kaXRpb25hbGx5IGlkZW50aWZ5aW5nIHRoZSBpbnRlcnJ1cHRlZCBjb250ZXh0
IGFzIG9wcG9zZWQgdG8gdGhlCj4gPiB2YWx1ZXMgaW4gdGhlIHNpZ2NvbnRleHQuCj4gPiAKPiA+
IFJld29yayB0aGUgQ0ZJIGRpcmVjdGl2ZXMgc28gdGhhdCB3ZSBvbmx5IHVzZSAuY2ZpX3NpZ25h
bF9mcmFtZSwgYW5kCj4gPiBpbmNsdWRlIHRoZSAibXlzdGVyaW91cyBOT1AiIGFzIHBhcnQgb2Yg
dGhlIC5jZmlfe3N0YXJ0LGVuZH1wcm9jIGJsb2NrLgo+ID4gCj4gPiBDYzogVGFtYXMgWnNvbGRv
cyA8dGFtYXMuenNvbGRvc0Bhcm0uY29tPgo+ID4gUmVwb3J0ZWQtYnk6IERhdmUgTWFydGluIDxk
YXZlLm1hcnRpbkBhcm0uY29tPgo+ID4gUmVwb3J0ZWQtYnk6IERhbmllbCBLaXNzIDxkYW5pZWwu
a2lzc0Bhcm0uY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVs
Lm9yZz4KPiA+IC0tLQo+ID4gIGFyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0dXJuLlMgfCA4
ICsrKy0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlv
bnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0
dXJuLlMgYi9hcmNoL2FybTY0L2tlcm5lbC92ZHNvL3NpZ3JldHVybi5TCj4gPiBpbmRleCA3ODUz
ZmE5NjkyZjYuLjI4YjMzZjdkMDYwNCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVs
L3Zkc28vc2lncmV0dXJuLlMKPiA+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0
dXJuLlMKPiA+IEBAIC0xNCw2ICsxNCw5IEBACj4gPiAgCj4gPiAgCS50ZXh0Cj4gPiAgCj4gPiAr
LyogRW5zdXJlIHRoYXQgdGhlIG15c3RlcmlvdXMgTk9QIGNhbiBiZSBhc3NvY2lhdGVkIHdpdGgg
YSBmdW5jdGlvbi4gKi8KPiA+ICsJLmNmaV9zdGFydHByb2MKPiA+ICsJLmNmaV9zaWduYWxfZnJh
bWUKPiA+ICAvKgo+ID4gICAqIFRoaXMgbXlzdGVyaW91cyBOT1AgaXMgcmVxdWlyZWQgZm9yIHNv
bWUgdW53aW5kZXJzIHRoYXQgc3VidHJhY3Qgb25lIGZyb20KPiA+ICAgKiB0aGUgcmV0dXJuIGFk
ZHJlc3MgaW4gb3JkZXIgdG8gaWRlbnRpZnkgdGhlIGNhbGxpbmcgZnVuY3Rpb24uCj4gPiBAQCAt
MjgsMTEgKzMxLDYgQEAKPiA+ICAgKiBpcyBwZXJmZWN0bHkgZmluZS4KPiA+ICAgKi8KPiA+ICBT
WU1fU1RBUlQoX19rZXJuZWxfcnRfc2lncmV0dXJuLCBTWU1fTF9HTE9CQUwsIFNZTV9BX0FMSUdO
KQo+ID4gLQkuY2ZpX3N0YXJ0cHJvYwo+ID4gLQkuY2ZpX3NpZ25hbF9mcmFtZQo+ID4gLQkuY2Zp
X2RlZl9jZmEJeDI5LCAwCj4gPiAtCS5jZmlfb2Zmc2V0CXgyOSwgMCAqIDgKPiA+IC0JLmNmaV9v
ZmZzZXQJeDMwLCAxICogOAo+IAo+IEhhdmluZyB0aG91Z2h0IGFib3V0IHRoaXMgYWdhaW4sIEkg
dGhpbmsgaXQgbWlnaHQgYmUgYmV0dGVyIHRvIHN0aWNrIHRvCj4gdGhlIG9yaWdpbmFsIHZlcnNp
b24uCj4gCj4gSWYgdGhlIHNpZ25hbCBoYW5kbGVyIGlzIGhhbGZ3YXkgdGhyb3VnaCBtdW5nZWlu
ZyB0aGUgc2lnY29udGV4dCB0aGVuCj4gYmFja3RyYWNpbmcgdXNpbmcgc2lnY29udGV4dCB3b24n
dCBiZSByZWxpYWJsZS4KCkkgc3VwcG9zZSwgYnV0IHRoZW4gd2hhdCBkb2VzIC5jZmlfc2lnbmFs
X2ZyYW1lIGRvPyBJJ2xsIHNlZSBpZiBJIGNhbgpmaW5kIHNvbWV0aGluZyB0aGF0IHVzZXMgaXQu
IFRoZSBmcmFtZSByZWNvcmQgaXMgc3RpbGwgc2l0dGluZyBvbiB0aGUKc3RhY2ssIHNvIGl0IGRv
ZXMgZmVlbCByZWR1bmRhbnQgdG8gc2F5IGJvdGggJy5jZmlfc2lnbmFsX2ZyYW1lJyBhbmQKJy5j
ZmlfZGVmX2NmYScgKGFuZCBvdGhlciBhcmNoaXRlY3R1cmVzLCBlLmcuIHJpc2N2IGRvbid0IGRv
IHRoaXMpLgoKQnV0IEknbSBhbHNvIGhhcHB5IHRvIHBsYXkgaXQgc2FmZSBpZiBJIGNhbiBzdGlj
ayBhIGNvbW1lbnQgaW4gaGVyZQpzYXlpbmcgd2hhdCBpdCBkb2VzLgoKPiBQbHVzLCBpbiB0aGUg
YWJzZW5jZSBvZiBhbnkgc3BlYyB0aGF0IHNheXMgZXhhY3RseSB3aGF0Cj4gLmNmaV9zaWduYWxf
ZnJhbWUgbWVhbnMqLCB3ZSBwcm9iYWJseSBkb24ndCB3YW50IHRvIHJvY2sgdGhlIGJvYXQuCgpU
aGUgZ2FzIGRvY3Mgc2F5OgoKCSJNYXJrIGN1cnJlbnQgZnVuY3Rpb24gYXMgc2lnbmFsIHRyYW1w
b2xpbmUuIgoKd2hpY2ggaXMgcmVhbGx5IGluZm9ybWF0aXZlLgoKV2lsbAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
