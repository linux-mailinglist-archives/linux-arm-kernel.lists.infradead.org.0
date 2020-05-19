Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2659B1D98A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 15:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0rDHxHi9bY/30LZGNaEgfMoKpq67oPgw7ipznqOKHM=; b=DNNLRepKMRZfy0
	T8o0v1i8yI476oLp2iE35u6KlUUJajdaqQ4sKBVo5X4JPLNGFCE/RRKxAmjOyvkFh7ibM95IljO+f
	f3OfayZwKde6wXoqFW1Vy807aZ5UZpsB71jvrf4ZsduRiFCS7JttlSHgUVBlb3NUMIwJ2YOnypVRP
	SF698SKxs/jw2eEwy+sgBrSXzaO/H4bSfOG353Y1A/dNE3SYifP/RYSDncwSgPJn4MFe0EnvTMA+k
	9KtslfXnno3uOSSv2tXmGPgCJqxlsEmpFXqmKf1StVAuFD3lPRsU8itynrxYcst7zitZttIUzS5RA
	M31Qb8FrkmLrzwvITtVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2ij-0001P3-Na; Tue, 19 May 2020 13:55:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2ib-0001OV-Dw
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 13:55:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5042431B;
 Tue, 19 May 2020 06:55:40 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6BE6E3F52E;
 Tue, 19 May 2020 06:55:39 -0700 (PDT)
Date: Tue, 19 May 2020 14:55:37 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 3/3] arm64: vdso: Fix CFI directives in sigreturn
 trampoline
Message-ID: <20200519135537.GG5031@arm.com>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-4-will@kernel.org>
 <20200519130930.GO10636@e103592.cambridge.arm.com>
 <20200519133941.GB14570@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519133941.GB14570@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_065541_554744_84CEFD64 
X-CRM114-Status: GOOD (  27.73  )
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
Cc: Tamas Zsoldos <Tamas.Zsoldos@arm.com>, Mark Brown <broonie@kernel.org>,
 "kernel-team@android.com" <kernel-team@android.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Daniel Kiss <Daniel.Kiss@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMDI6Mzk6NDFQTSArMDEwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMDI6MDk6MzFQTSArMDEwMCwgRGF2ZSBQIE1h
cnRpbiB3cm90ZToKPiA+IE9uIFR1ZSwgTWF5IDE5LCAyMDIwIGF0IDAxOjE4OjE4UE0gKzAxMDAs
IFdpbGwgRGVhY29uIHdyb3RlOgo+ID4gPiBEYW5pZWwgcmVwb3J0cyB0aGF0IHRoZSAuY2ZpX3N0
YXJ0cHJvYyBpcyBtaXNwbGFjZWQgZm9yIHRoZSBzaWdyZXR1cm4KPiA+ID4gdHJhbXBvbGluZSwg
d2hpY2ggY2F1c2VzIExMVk0ncyB1bndpbmRlciB0byBtaXNiZWhhdmU6Cj4gPiA+IAo+ID4gPiAg
IHwgSSBydW4gaW50byB0aGlzIHdpdGggTExWTeKAmXMgdW53aW5kZXIuCj4gPiA+ICAgfCBUaGlz
IGNvbWJpbmF0aW9uIHdhcyBhbHdheXMgYnJva2VuLgo+ID4gPiAKPiA+ID4gVGhpcyBwcm9tcHRl
ZCBEYXZlIHRvIHJlYWxpc2UgdGhhdCBvdXIgQ0ZJIGRpcmVjdGl2ZXMgYXJlIGNvbnRyYWRpY3Rv
cnksCj4gPiA+IGFzIHdlIHNwZWNpZnkgYm90aCAuY2ZpX3NpZ25hbF9mcmFtZSAqYW5kKiAuY2Zp
X2RlZl9jZmEsIHdpdGggdGhlIGxhdHRlcgo+ID4gPiB1bmNvbmRpdGlvbmFsbHkgaWRlbnRpZnlp
bmcgdGhlIGludGVycnVwdGVkIGNvbnRleHQgYXMgb3Bwb3NlZCB0byB0aGUKPiA+ID4gdmFsdWVz
IGluIHRoZSBzaWdjb250ZXh0Lgo+ID4gPiAKPiA+ID4gUmV3b3JrIHRoZSBDRkkgZGlyZWN0aXZl
cyBzbyB0aGF0IHdlIG9ubHkgdXNlIC5jZmlfc2lnbmFsX2ZyYW1lLCBhbmQKPiA+ID4gaW5jbHVk
ZSB0aGUgIm15c3RlcmlvdXMgTk9QIiBhcyBwYXJ0IG9mIHRoZSAuY2ZpX3tzdGFydCxlbmR9cHJv
YyBibG9jay4KPiA+ID4gCj4gPiA+IENjOiBUYW1hcyBac29sZG9zIDx0YW1hcy56c29sZG9zQGFy
bS5jb20+Cj4gPiA+IFJlcG9ydGVkLWJ5OiBEYXZlIE1hcnRpbiA8ZGF2ZS5tYXJ0aW5AYXJtLmNv
bT4KPiA+ID4gUmVwb3J0ZWQtYnk6IERhbmllbCBLaXNzIDxkYW5pZWwua2lzc0Bhcm0uY29tPgo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPgo+ID4gPiAt
LS0KPiA+ID4gIGFyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0dXJuLlMgfCA4ICsrKy0tLS0t
Cj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+
ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0dXJu
LlMgYi9hcmNoL2FybTY0L2tlcm5lbC92ZHNvL3NpZ3JldHVybi5TCj4gPiA+IGluZGV4IDc4NTNm
YTk2OTJmNi4uMjhiMzNmN2QwNjA0IDEwMDY0NAo+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2tlcm5l
bC92ZHNvL3NpZ3JldHVybi5TCj4gPiA+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2ln
cmV0dXJuLlMKPiA+ID4gQEAgLTE0LDYgKzE0LDkgQEAKPiA+ID4gIAo+ID4gPiAgCS50ZXh0Cj4g
PiA+ICAKPiA+ID4gKy8qIEVuc3VyZSB0aGF0IHRoZSBteXN0ZXJpb3VzIE5PUCBjYW4gYmUgYXNz
b2NpYXRlZCB3aXRoIGEgZnVuY3Rpb24uICovCj4gPiA+ICsJLmNmaV9zdGFydHByb2MKPiA+ID4g
KwkuY2ZpX3NpZ25hbF9mcmFtZQo+ID4gPiAgLyoKPiA+ID4gICAqIFRoaXMgbXlzdGVyaW91cyBO
T1AgaXMgcmVxdWlyZWQgZm9yIHNvbWUgdW53aW5kZXJzIHRoYXQgc3VidHJhY3Qgb25lIGZyb20K
PiA+ID4gICAqIHRoZSByZXR1cm4gYWRkcmVzcyBpbiBvcmRlciB0byBpZGVudGlmeSB0aGUgY2Fs
bGluZyBmdW5jdGlvbi4KPiA+ID4gQEAgLTI4LDExICszMSw2IEBACj4gPiA+ICAgKiBpcyBwZXJm
ZWN0bHkgZmluZS4KPiA+ID4gICAqLwo+ID4gPiAgU1lNX1NUQVJUKF9fa2VybmVsX3J0X3NpZ3Jl
dHVybiwgU1lNX0xfR0xPQkFMLCBTWU1fQV9BTElHTikKPiA+ID4gLQkuY2ZpX3N0YXJ0cHJvYwo+
ID4gPiAtCS5jZmlfc2lnbmFsX2ZyYW1lCj4gPiA+IC0JLmNmaV9kZWZfY2ZhCXgyOSwgMAo+ID4g
PiAtCS5jZmlfb2Zmc2V0CXgyOSwgMCAqIDgKPiA+ID4gLQkuY2ZpX29mZnNldAl4MzAsIDEgKiA4
Cj4gPiAKPiA+IEhhdmluZyB0aG91Z2h0IGFib3V0IHRoaXMgYWdhaW4sIEkgdGhpbmsgaXQgbWln
aHQgYmUgYmV0dGVyIHRvIHN0aWNrIHRvCj4gPiB0aGUgb3JpZ2luYWwgdmVyc2lvbi4KPiA+IAo+
ID4gSWYgdGhlIHNpZ25hbCBoYW5kbGVyIGlzIGhhbGZ3YXkgdGhyb3VnaCBtdW5nZWluZyB0aGUg
c2lnY29udGV4dCB0aGVuCj4gPiBiYWNrdHJhY2luZyB1c2luZyBzaWdjb250ZXh0IHdvbid0IGJl
IHJlbGlhYmxlLgo+IAo+IEkgc3VwcG9zZSwgYnV0IHRoZW4gd2hhdCBkb2VzIC5jZmlfc2lnbmFs
X2ZyYW1lIGRvPyBJJ2xsIHNlZSBpZiBJIGNhbgo+IGZpbmQgc29tZXRoaW5nIHRoYXQgdXNlcyBp
dC4gVGhlIGZyYW1lIHJlY29yZCBpcyBzdGlsbCBzaXR0aW5nIG9uIHRoZQo+IHN0YWNrLCBzbyBp
dCBkb2VzIGZlZWwgcmVkdW5kYW50IHRvIHNheSBib3RoICcuY2ZpX3NpZ25hbF9mcmFtZScgYW5k
Cj4gJy5jZmlfZGVmX2NmYScgKGFuZCBvdGhlciBhcmNoaXRlY3R1cmVzLCBlLmcuIHJpc2N2IGRv
bid0IGRvIHRoaXMpLgo+IAo+IEJ1dCBJJ20gYWxzbyBoYXBweSB0byBwbGF5IGl0IHNhZmUgaWYg
SSBjYW4gc3RpY2sgYSBjb21tZW50IGluIGhlcmUKPiBzYXlpbmcgd2hhdCBpdCBkb2VzLgo+IAo+
ID4gUGx1cywgaW4gdGhlIGFic2VuY2Ugb2YgYW55IHNwZWMgdGhhdCBzYXlzIGV4YWN0bHkgd2hh
dAo+ID4gLmNmaV9zaWduYWxfZnJhbWUgbWVhbnMqLCB3ZSBwcm9iYWJseSBkb24ndCB3YW50IHRv
IHJvY2sgdGhlIGJvYXQuCj4gCj4gVGhlIGdhcyBkb2NzIHNheToKPiAKPiAJIk1hcmsgY3VycmVu
dCBmdW5jdGlvbiBhcyBzaWduYWwgdHJhbXBvbGluZS4iCj4gCj4gd2hpY2ggaXMgcmVhbGx5IGlu
Zm9ybWF0aXZlLgoKV2VsbCwgd2UndmUgZGVtb25zdHJhdGVkIHRoYXQgaWRlbnRpZnlpbmcgdGhl
IHNpZ25hbCBmcmFtZSBpcyBhIGdyb3NzCmJvZGdlLiAgVGhlIGNmaSBhbm5vdGF0aW9uIHNob3Vs
ZCBwcm92aWRlIGEgcmVsaWFibGUgd2F5IHRvIGlkZW50aWZ5IHRoZQpzaWduYWwgZnJhbWUsIGJ1
dCBJIGd1ZXNzIGl0IHdhcyB0b28gcG9vcmx5IHNwZWNpZmllZCBvciBjYW1lIHRvbyBsYXRlCnRv
IHByZXZlbnQgdGhlIGJvZGdlcyBmcm9tIHNwcmVhZGluZy4KClNpbmNlIHRoaXMgc2VlbXMgdG8g
YmUgYSBub25zdGFuZGFyZCBpbnZlbnRpb24sIEkgd291bGRuJ3QgaG9sZCBvdXQKbXVjaCBob3Bl
IG9mIGZpbmRpbmcgYSB1c2FibGUgc3BlYy4KCk9mIGNvdXJzZSwgc29tZXRoaW5nIG1pZ2h0IGJl
IHVzaW5nIGl0IG5vdywgc28gSSBndWVzcyB3ZSBoYXZlIHRvIGxlYXZlCml0LgoKLS0tRGF2ZQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
