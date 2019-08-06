Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD1F82A1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 05:50:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTyxisc5f1OayPsFc98WdsiQrS4t7maJyoUO4Xsefnk=; b=t/HvRn+B4tLyzd
	3L4Z4LfU78UofWkgaVO5pzRYM17xsE6O0FoKSglQJK2Ex2v8l8+mF6AfkDzVx1PFasUThiIYIktGY
	xMcdfxkbTgFdMi72ZVunuK02c0CNWwVGU6b1A2ipd29vpUCGLSYHuqVL50SFCAqcCBO8fwN82rkMY
	KXJF++o4qQmbBQoi38jikSeCCFa2CC+uIDFKHAxcoYuy7Yu536bWOjhEzWcZjCzpEgoO/cE1E2B4V
	FnoC1yur1zD6NISoXVwS7UrSafj/p5D+uI0bYk2zqjwFwi78LUYgCFUjNb2SGMRae3uBFyO4BmH2T
	oEowzEmXJ7Qiz3WRKAQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huqUK-0000dj-GP; Tue, 06 Aug 2019 03:50:16 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huqUB-0000Hh-MZ
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 03:50:09 +0000
Received: by mail-qk1-x744.google.com with SMTP id s22so61920845qkj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 20:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=qh2aacRT20BlQ9A973K75nHXL1wZp2XTv3/9UF2XGxc=;
 b=Uu4acLVsnqEsAeS985J39078bIOn28lBSHW2elLI3mXoit8aw1ClcoRmBNcUtD81ho
 LPSW0bG6GIyt7oll53uGJ1l6R9/c58LRGxC2Ilifkc+u4mITBuKyfOibxq3XgjNVvzBd
 FkFiNNToE4pC9mMNEsjyrkrl3byLqw4XUbepKmypUV0nC7dx1VcSB1+0P2iFtNVWrWGv
 WnmOC2u74ZkMr+VXKzcqF/x0MkSqkh0O4cHaj8eK/mnnB2jh0k3KXSLnHXWZmht2lzAj
 i8Omq1y/kguQZo8hhZjpFg7RnF8aTOTnkCiHxiFQyjqyOWsu9WFscNjFLhEjLLSfdjhS
 tX6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=qh2aacRT20BlQ9A973K75nHXL1wZp2XTv3/9UF2XGxc=;
 b=G35QgGMMoKfl4Xu6KaNuqvKgW+a177MMnFaj6CHqxs4T1JIBsG9rQI/dvvH3LP6Puj
 BEVx0OOWf1k7s+0cGU4NdJaio2Klnq+oahIf9Fxyp7ktKF67m0btvfk9WL/Xx1UOzXcc
 121HlhUmV732sWgs4bvtMoWZwsNA4mMpeKvmsSGwflIHRCLiQqyZ9BtmTuu2ThAjaIjy
 v3Bo+valYy1Cd1a5Cm16W+wgsL21xWnRrPkaaEZgkC1y2ljoB9v4R0GoI5ix1PGJAop6
 AMqiaI29njq8egyFlTn5k19bI8TD+c42JGhO5VZ6jTQr3Z+IZDl7QBbiMeUtIW2P/ALF
 MJ1w==
X-Gm-Message-State: APjAAAWzspHdomyT744m3IxGpzjpLzKC3tTThRnz/uAuhVzR4MR8L9GV
 iNLoH9AmqWbOIKguybwDWIbUHA==
X-Google-Smtp-Source: APXvYqy1hF8A4G+N7jc/1OxNxVeXSi6P8h94UymN35VEWiNWqQmEFyxp9KQaMN/eaxJgjRZWUuNpHA==
X-Received: by 2002:ae9:eb4e:: with SMTP id b75mr1395985qkg.478.1565063405483; 
 Mon, 05 Aug 2019 20:50:05 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id h18sm35493471qkk.93.2019.08.05.20.50.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 20:50:04 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH] arm64/cache: fix -Woverride-init compiler warnings
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20190805140118.fys437oor2b2rnq5@willie-the-truck>
Date: Mon, 5 Aug 2019 23:50:03 -0400
Message-Id: <06613F4A-3DA7-4FF9-8616-52CB4BB58C48@lca.pw>
References: <1564759944-2197-1-git-send-email-cai@lca.pw>
 <20190805095256.ocgdb2yfhnbdz6kw@willie-the-truck>
 <771C4B4C-6D79-419D-9778-5DE1BFC67FBE@lca.pw>
 <20190805140118.fys437oor2b2rnq5@willie-the-truck>
To: Will Deacon <will@kernel.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_205007_745101_57763B20 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Cgo+IE9uIEF1ZyA1LCAyMDE5LCBhdCAxMDowMSBBTSwgV2lsbCBEZWFjb24gPHdpbGxAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4gCj4gT24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMDc6NDc6MzdBTSAtMDQw
MCwgUWlhbiBDYWkgd3JvdGU6Cj4+IAo+PiAKPj4+IE9uIEF1ZyA1LCAyMDE5LCBhdCA1OjUyIEFN
LCBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPiB3cm90ZToKPj4+IAo+Pj4gT24gRnJpLCBB
dWcgMDIsIDIwMTkgYXQgMTE6MzI6MjRBTSAtMDQwMCwgUWlhbiBDYWkgd3JvdGU6Cj4+Pj4gVGhl
IGNvbW1pdCAxNTU0MzNjYjM2NWUgKCJhcm02NDogY2FjaGU6IFJlbW92ZSBzdXBwb3J0IGZvciBB
U0lELXRhZ2dlZAo+Pj4+IFZJVlQgSS1jYWNoZXMiKSBpbnRyb2R1Y2VkIHNvbWUgY29tcGlhdGlv
biB3YXJuaW5ncyBmcm9tIEdDQywKPj4+PiAKPj4+PiBhcmNoL2FybTY0L2tlcm5lbC9jcHVpbmZv
LmM6Mzg6MjY6IHdhcm5pbmc6IGluaXRpYWxpemVkIGZpZWxkCj4+Pj4gb3ZlcndyaXR0ZW4gWy1X
b3ZlcnJpZGUtaW5pdF0KPj4+PiBbSUNBQ0hFX1BPTElDWV9WSVBUXSAgPSAiVklQVCIsCj4+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+Cj4+Pj4gYXJjaC9hcm02NC9rZXJuZWwvY3B1
aW5mby5jOjM4OjI2OiBub3RlOiAobmVhciBpbml0aWFsaXphdGlvbiBmb3IKPj4+PiAnaWNhY2hl
X3BvbGljeV9zdHJbMl0nKQo+Pj4+IGFyY2gvYXJtNjQva2VybmVsL2NwdWluZm8uYzozOToyNjog
d2FybmluZzogaW5pdGlhbGl6ZWQgZmllbGQKPj4+PiBvdmVyd3JpdHRlbiBbLVdvdmVycmlkZS1p
bml0XQo+Pj4+IFtJQ0FDSEVfUE9MSUNZX1BJUFRdICA9ICJQSVBUIiwKPj4+PiAgICAgICAgICAg
ICAgICAgICAgICAgICBefn5+fn4KPj4+PiBhcmNoL2FybTY0L2tlcm5lbC9jcHVpbmZvLmM6Mzk6
MjY6IG5vdGU6IChuZWFyIGluaXRpYWxpemF0aW9uIGZvcgo+Pj4+ICdpY2FjaGVfcG9saWN5X3N0
clszXScpCj4+Pj4gYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5jOjQwOjI3OiB3YXJuaW5nOiBp
bml0aWFsaXplZCBmaWVsZAo+Pj4+IG92ZXJ3cml0dGVuIFstV292ZXJyaWRlLWluaXRdCj4+Pj4g
W0lDQUNIRV9QT0xJQ1lfVlBJUFRdICA9ICJWUElQVCIsCj4+Pj4gICAgICAgICAgICAgICAgICAg
ICAgICAgIF5+fn5+fn4KPj4+PiBhcmNoL2FybTY0L2tlcm5lbC9jcHVpbmZvLmM6NDA6Mjc6IG5v
dGU6IChuZWFyIGluaXRpYWxpemF0aW9uIGZvcgo+Pj4+ICdpY2FjaGVfcG9saWN5X3N0clswXScp
Cj4+Pj4gCj4+Pj4gYmVjYXVzZSBpdCBpbml0aWFsaXplcyBpY2FjaGVfcG9saWN5X3N0clswIC4u
LiAzXSB0d2ljZS4KPj4+PiAKPj4+PiBGaXhlczogMTU1NDMzY2IzNjVlICgiYXJtNjQ6IGNhY2hl
OiBSZW1vdmUgc3VwcG9ydCBmb3IgQVNJRC10YWdnZWQgVklWVCBJLWNhY2hlcyIpCj4+Pj4gU2ln
bmVkLW9mZi1ieTogUWlhbiBDYWkgPGNhaUBsY2EucHc+Cj4+Pj4gLS0tCj4+Pj4gYXJjaC9hcm02
NC9rZXJuZWwvY3B1aW5mby5jIHwgNCArKy0tCj4+Pj4gMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4+PiAKPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9rZXJuZWwvY3B1aW5mby5jIGIvYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5jCj4+Pj4gaW5k
ZXggODc2MDU1ZTM3MzUyLi4xOTNiMzhkYThkOTYgMTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm02
NC9rZXJuZWwvY3B1aW5mby5jCj4+Pj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5j
Cj4+Pj4gQEAgLTM0LDEwICszNCwxMCBAQAo+Pj4+IHN0YXRpYyBzdHJ1Y3QgY3B1aW5mb19hcm02
NCBib290X2NwdV9kYXRhOwo+Pj4+IAo+Pj4+IHN0YXRpYyBjaGFyICppY2FjaGVfcG9saWN5X3N0
cltdID0gewo+Pj4+IC0JWzAgLi4uIElDQUNIRV9QT0xJQ1lfUElQVF0JPSAiUkVTRVJWRUQvVU5L
Tk9XTiIsCj4+Pj4gKwlbSUNBQ0hFX1BPTElDWV9WUElQVF0JCT0gIlZQSVBUIiwKPj4+PiArCVtJ
Q0FDSEVfUE9MSUNZX1ZQSVBUICsgMV0JPSAiUkVTRVJWRUQvVU5LTk9XTiIsCj4+Pj4gCVtJQ0FD
SEVfUE9MSUNZX1ZJUFRdCQk9ICJWSVBUIiwKPj4+PiAJW0lDQUNIRV9QT0xJQ1lfUElQVF0JCT0g
IlBJUFQiLAo+Pj4+IC0JW0lDQUNIRV9QT0xJQ1lfVlBJUFRdCQk9ICJWUElQVCIsCj4+PiAKPj4+
IEkgcmVhbGx5IGRvbid0IGxpa2UgdGhpcyBwYXRjaC4gVXNpbmcgIlswIC4uLiBNQVhJRFhdID0g
PGRlZmF1bHQ+IiBpcyBhCj4+PiB1c2VmdWwgaWRpb20gYW5kIEkgdGhpbmsgdGhlIGNvZGUgaXMg
bW9yZSBlcnJvci1wcm9uZSB0aGUgd2F5IHlvdSBoYXZlCj4+PiByZXN0cnVjdHVyZWQgaXQuCj4+
PiAKPj4+IFdoeSBhcmUgeW91IHBhc3NpbmcgLVdvdmVycmlkZS1pbml0IHRvIHRoZSBjb21waWxl
ciBhbnl3YXk/IFRoZXJlJ3Mgb25seQo+Pj4gb25lIE1ha2VmaWxlIHRoYXQgcmVmZXJlbmNlcyB0
aGF0IG9wdGlvbiwgYW5kIGl0J3Mgc3BlY2lmaWMgdG8gYSBwaW5jdHJsCj4+PiBkcml2ZXIuCj4+
IAo+PiBUaG9zZSBleHRyYSB3YXJuaW5ncyBjYW4gYmUgZW5hYmxlZCBieSDigJxtYWtlIFc9MeKA
nS4g4oCcLVdvdmVycmlkZS1pbml0IOKAnCBzZWVtcyB0byBiZSB1c2VmdWwKPj4gdG8gY2F0Y2gg
cG90ZW50aWFsIGRldmVsb3BlciBtaXN0YWtlcyB3aXRoIHVuaW50ZW50ZWQgZG91YmxlLWluaXRp
YWxpemF0aW9ucy4gSXQgaXMgbm9ybWFsIHRvCj4+IHN0YXJ0IHRvIGZpeCB0aGUgbW9zdCBvZiBm
YWxzZS1wb3NpdGl2ZXMgZmlyc3QgYmVmb3JlIGdsb2JhbGx5IGVuYWJsaW5nIHRoZSBmbGFnIGJ5
IGRlZmF1bHQganVzdCBsaWtlCj4+IOKAnC1XaW1wbGljaXQtZmFsbHRocm91Z2jigJ0gbWVudGlv
bmVkIGluLAo+PiAKPj4gaHR0cHM6Ly9sd24ubmV0L0FydGljbGVzLzc5NDk0NC8KPiAKPiBJIHRo
aW5rIHRoaXMgY2FzZSBpcyBjb21wbGV0ZWx5IGRpZmZlcmVudCB0byB0aGUgaW1wbGljaXQgZmFs
bHRocm91Z2ggc3R1ZmYuCj4gVGhlIHNvbHV0aW9uIHRoZXJlIHdhcyBzaW1wbHkgdG8gYWRkIGEg
Y29tbWVudCB3aXRob3V0IHJlc3RydWN0dXJpbmcgdGhlCj4gc3Vycm91bmRpbmcgY29kZS4gV2hh
dCB5b3VyIHBhdGNoIGRvZXMgaGVyZSBpcyBhY3RpdmVseSBtYWtlIHRoZSBjb2RlIGhhcmRlcgo+
IHRvIHVuZGVyc3RhbmQuCj4gCj4gSW5pdGlhbGlzaW5nIGEgc3RhdGljIGFycmF5IHdpdGggYSBu
b24temVybyBwYXR0ZXJuIGlzIGEgdXNlZnVsIGlkaW9tIGFuZCBJCj4gZG9uJ3QgdGhpbmsgd2Ug
c2hvdWxkIHRocm93IHRoYXQgYXdheSBqdXN0IHRvIGFwcGVhc2UgYSBzaWxseSBjb21waWxlcgo+
IHdhcm5pbmcgdGhhdCBhcHBlYXJzIG9ubHkgd2l0aCBub24tZGVmYXVsdCBidWlsZCBvcHRpb25z
LiBIYXZlIGEgbG9vayBhdAo+IHRoZSB3YXkgd2UgdXNlIFBFUkZfTUFQX0FMTF9VTlNVUFBPUlRF
RCBpbiB0aGUgQXJtIFBNVSBjb2RlLCBmb3IgZXhhbXBsZS4KCldlbGwsIGJvdGggR0NDIGFuZCBD
bGFuZyB3b3VsZCBnZW5lcmF0ZSB3YXJuaW5ncyBmb3IgdGhvc2UuIENsYW5nIGV2ZW4gZW5hYmxl
IHRoaXMgYnkKZGVmYXVsdCwKCmh0dHBzOi8vcmVsZWFzZXMubGx2bS5vcmcvOC4wLjAvdG9vbHMv
Y2xhbmcvZG9jcy9EaWFnbm9zdGljc1JlZmVyZW5jZS5odG1sI3dpbml0aWFsaXplci1vdmVycmlk
ZXMKCkFzc3VtZSBjb21waWxlciBwZW9wbGUgYXJlIHNhbmUsIEkgcHJvYmFibHkgbm90IGNhbGwg
dGhvc2UgYXJlIOKAnHNpbGx54oCdLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
