Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 956211D9BC7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 17:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UcP9V3/uXLldIKrs4oLl9s/92TTiFR5t0lXe+jlB0sg=; b=SeGvmwWDzFT5ix
	X/ZFOBKB3HwBLu79yXaGsXTd/T90qQgW4DWgdUv0ceiuAg7FizaWJIqV7ZFmdgPviX+vF6ueQM90q
	MpC/7IeyJfc25kMwu3Lb6Mg+Qn0FmMrRFo/MugzMXIX367XSbIA3YWX1BhqtP09EuZLflfFjARgC4
	NK9lVG+VnNxlj/YeEvWfUw03w5geLLS0zspBnbSsOoxHRFZBFG+FMDC9JiJ4M/tMY47X2Fl5Mexre
	5Sk1b4YTne5KKRAVs+eTjY41CkopRuuNc9G4DD9Xp8GRbECpnf0M6E4J3MJ2/1Ccu9aJ1RJmncHVm
	DPabNTmaV93vUFm5Iu9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4b2-0005ZP-KV; Tue, 19 May 2020 15:56:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4au-0005Yi-Lm
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 15:55:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F2F5207C4;
 Tue, 19 May 2020 15:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589903749;
 bh=TTXOR435oap+xTdm3kMQAC882UHSKoS9Ab3R/hrQlws=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ssb+7xQN1THlnxODG0aWVFbR7vi9RJSmJGO1zzAzXw77R8+ZUfrqMijeO65IBlY6z
 bJYoTdtXODuREeRYPAeMqA99i7ufeZ/Nmfl4iflEzLREuEDj2Rlf0XNRmmi+typari
 xtmctcKUe7BYPXvdNtKM20GVXJiIIxhwsZ2gtPT0=
Date: Tue, 19 May 2020 16:55:45 +0100
From: Will Deacon <will@kernel.org>
To: Daniel Kiss <Daniel.Kiss@arm.com>
Subject: Re: [PATCH 3/3] arm64: vdso: Fix CFI directives in sigreturn
 trampoline
Message-ID: <20200519155544.GC15811@willie-the-truck>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-4-will@kernel.org>
 <20200519130930.GO10636@e103592.cambridge.arm.com>
 <20200519133941.GB14570@willie-the-truck>
 <20200519135537.GG5031@arm.com>
 <65A3D0F6-5B38-4624-B2DC-BD21EC2BCB25@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <65A3D0F6-5B38-4624-B2DC-BD21EC2BCB25@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_085552_750887_53C437BE 
X-CRM114-Status: GOOD (  17.45  )
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
 Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMDM6MzA6NTdQTSArMDAwMCwgRGFuaWVsIEtpc3Mgd3Jv
dGU6Cj4gPiBPbiAxOSBNYXkgMjAyMCwgYXQgMTU6NTUsIERhdmUgTWFydGluIDxEYXZlLk1hcnRp
bkBhcm0uY29tPiB3cm90ZToKPiA+IE9uIFR1ZSwgTWF5IDE5LCAyMDIwIGF0IDAyOjM5OjQxUE0g
KzAxMDAsIFdpbGwgRGVhY29uIHdyb3RlOgo+ID4+IE9uIFR1ZSwgTWF5IDE5LCAyMDIwIGF0IDAy
OjA5OjMxUE0gKzAxMDAsIERhdmUgUCBNYXJ0aW4gd3JvdGU6Cj4gPj4+IE9uIFR1ZSwgTWF5IDE5
LCAyMDIwIGF0IDAxOjE4OjE4UE0gKzAxMDAsIFdpbGwgRGVhY29uIHdyb3RlOgo+ID4+Pj4gRGFu
aWVsIHJlcG9ydHMgdGhhdCB0aGUgLmNmaV9zdGFydHByb2MgaXMgbWlzcGxhY2VkIGZvciB0aGUg
c2lncmV0dXJuCj4gPj4+PiB0cmFtcG9saW5lLCB3aGljaCBjYXVzZXMgTExWTSdzIHVud2luZGVy
IHRvIG1pc2JlaGF2ZToKPiA+Pj4+IAo+ID4+Pj4gIHwgSSBydW4gaW50byB0aGlzIHdpdGggTExW
TeKAmXMgdW53aW5kZXIuCj4gPj4+PiAgfCBUaGlzIGNvbWJpbmF0aW9uIHdhcyBhbHdheXMgYnJv
a2VuLgo+ID4+Pj4gCj4gPj4+PiBUaGlzIHByb21wdGVkIERhdmUgdG8gcmVhbGlzZSB0aGF0IG91
ciBDRkkgZGlyZWN0aXZlcyBhcmUgY29udHJhZGljdG9yeSwKPiA+Pj4+IGFzIHdlIHNwZWNpZnkg
Ym90aCAuY2ZpX3NpZ25hbF9mcmFtZSAqYW5kKiAuY2ZpX2RlZl9jZmEsIHdpdGggdGhlIGxhdHRl
cgo+ID4+Pj4gdW5jb25kaXRpb25hbGx5IGlkZW50aWZ5aW5nIHRoZSBpbnRlcnJ1cHRlZCBjb250
ZXh0IGFzIG9wcG9zZWQgdG8gdGhlCj4gPj4+PiB2YWx1ZXMgaW4gdGhlIHNpZ2NvbnRleHQuCj4g
Pj4+PiAKPiA+Pj4+IFJld29yayB0aGUgQ0ZJIGRpcmVjdGl2ZXMgc28gdGhhdCB3ZSBvbmx5IHVz
ZSAuY2ZpX3NpZ25hbF9mcmFtZSwgYW5kCj4gPj4+PiBpbmNsdWRlIHRoZSAibXlzdGVyaW91cyBO
T1AiIGFzIHBhcnQgb2YgdGhlIC5jZmlfe3N0YXJ0LGVuZH1wcm9jIGJsb2NrLgo+ID4+Pj4gCj4g
Pj4+PiBDYzogVGFtYXMgWnNvbGRvcyA8dGFtYXMuenNvbGRvc0Bhcm0uY29tPgo+ID4+Pj4gUmVw
b3J0ZWQtYnk6IERhdmUgTWFydGluIDxkYXZlLm1hcnRpbkBhcm0uY29tPgo+ID4+Pj4gUmVwb3J0
ZWQtYnk6IERhbmllbCBLaXNzIDxkYW5pZWwua2lzc0Bhcm0uY29tPgo+ID4+Pj4gU2lnbmVkLW9m
Zi1ieTogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPiA+Pj4+IC0tLQo+ID4+Pj4gYXJj
aC9hcm02NC9rZXJuZWwvdmRzby9zaWdyZXR1cm4uUyB8IDggKysrLS0tLS0KPiA+Pj4+IDEgZmls
ZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gPj4+PiAKPiA+Pj4+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC92ZHNvL3NpZ3JldHVybi5TIGIvYXJjaC9h
cm02NC9rZXJuZWwvdmRzby9zaWdyZXR1cm4uUwo+ID4+Pj4gaW5kZXggNzg1M2ZhOTY5MmY2Li4y
OGIzM2Y3ZDA2MDQgMTAwNjQ0Cj4gPj4+PiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC92ZHNvL3Np
Z3JldHVybi5TCj4gPj4+PiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC92ZHNvL3NpZ3JldHVybi5T
Cj4gPj4+PiBAQCAtMTQsNiArMTQsOSBAQAo+ID4+Pj4gCj4gPj4+PiAJLnRleHQKPiA+Pj4+IAo+
ID4+Pj4gKy8qIEVuc3VyZSB0aGF0IHRoZSBteXN0ZXJpb3VzIE5PUCBjYW4gYmUgYXNzb2NpYXRl
ZCB3aXRoIGEgZnVuY3Rpb24uICovCj4gPj4+PiArCS5jZmlfc3RhcnRwcm9jCj4gPj4+PiArCS5j
Zmlfc2lnbmFsX2ZyYW1lCj4gPj4+PiAvKgo+ID4+Pj4gICogVGhpcyBteXN0ZXJpb3VzIE5PUCBp
cyByZXF1aXJlZCBmb3Igc29tZSB1bndpbmRlcnMgdGhhdCBzdWJ0cmFjdCBvbmUgZnJvbQo+ID4+
Pj4gICogdGhlIHJldHVybiBhZGRyZXNzIGluIG9yZGVyIHRvIGlkZW50aWZ5IHRoZSBjYWxsaW5n
IGZ1bmN0aW9uLgo+ID4+Pj4gQEAgLTI4LDExICszMSw2IEBACj4gPj4+PiAgKiBpcyBwZXJmZWN0
bHkgZmluZS4KPiA+Pj4+ICAqLwo+ID4+Pj4gU1lNX1NUQVJUKF9fa2VybmVsX3J0X3NpZ3JldHVy
biwgU1lNX0xfR0xPQkFMLCBTWU1fQV9BTElHTikKPiA+Pj4+IC0JLmNmaV9zdGFydHByb2MKPiA+
Pj4+IC0JLmNmaV9zaWduYWxfZnJhbWUKPiA+Pj4+IC0JLmNmaV9kZWZfY2ZhCXgyOSwgMAo+ID4+
Pj4gLQkuY2ZpX29mZnNldAl4MjksIDAgKiA4Cj4gPj4+PiAtCS5jZmlfb2Zmc2V0CXgzMCwgMSAq
IDgKPiBMTFZN4oCZcyB1bndpbmRlciBkb2VzIG5vdCBsaWtlIHRoaXMgdmVyc2lvbiBvZiB0aGUg
Q0ZJLiBJdCBuZWVkcyBhIGJpdCBtb3JlIGluZm9ybWF0aW9uLCAKPiB0aGUgY2ZpX3NpZ25hbF9m
cmFtZSBpcyBub3QgdXNlZCBmb3IgZmluZGluZyB0aGUgZnJhbWUuCgpUaGFua3MsIERhbmllbC4g
VGhhdCBpcywgYXQgbGVhc3QsIGFsaWduZWQgd2l0aCBteSBjdXJyZW50IHVuZGVyc3RhbmRpbmcK
b2YgaG93IHRoaXMgaXMgc3VwcG9zZWQgdG8gd29yay4KCkknbGwgc2VuZCBvdXQgYSB2MiBpbiBh
IGJpdC4KCldpbGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
