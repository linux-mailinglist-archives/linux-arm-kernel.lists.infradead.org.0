Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B6A3C80A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+aik3Mij5MHaqPcwR4Gfjuw63dAscE+gQo2QxP12us=; b=iXtNYGbNDZrkge
	Ob1Vdw93xTfX94b14jGak+8XdxJ8EMiFfmdzzfnKq2U8d31vXJ9S/1kXz4ax+4LQrhBU2HIbRp+Ev
	LnMP4xlOItOIl5KICQdNibEQXrQVBWusgUIooy+rGYAD2ZJ61eLfTDybe9xrGaE14v5Fxyz9iRPUZ
	PK0CR5IOIhoSgvtpA5Ihk1j3GAOT2/zgapZLJ8SxwirXU6MmhAUvytdWlIu0oevb5HvpmWA3qg0OU
	u7E/+Ntg850ddgzRhnjZBiI8f6Cqun8grE80417YkP5plKRPGCoLYC2jo7Yv/eI+jt1uuexHtf5sE
	aZHy3Gq1kuYs1UiOhe0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haddd-0001Ne-D2; Tue, 11 Jun 2019 10:04:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haddB-0001Hq-VK
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:03:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3292A337;
 Tue, 11 Jun 2019 03:03:53 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F1B7C3F73C;
 Tue, 11 Jun 2019 03:05:33 -0700 (PDT)
Date: Tue, 11 Jun 2019 11:03:49 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Qian Cai <cai@lca.pw>, rppt@linux.ibm.com
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
Message-ID: <20190611100348.GB26409@lakrids.cambridge.arm.com>
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
 <20190604142338.GC24467@lakrids.cambridge.arm.com>
 <20190610114326.GF15979@fuggles.cambridge.arm.com>
 <1560187575.6132.70.camel@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560187575.6132.70.camel@lca.pw>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_030354_137558_7059C73A 
X-CRM114-Status: GOOD (  22.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, mhocko@kernel.org, linux-mm@kvack.org,
 vdavydov.dev@gmail.com, hannes@cmpxchg.org, cgroups@vger.kernel.org,
 akpm@linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMTAsIDIwMTkgYXQgMDE6MjY6MTVQTSAtMDQwMCwgUWlhbiBDYWkgd3JvdGU6
Cj4gT24gTW9uLCAyMDE5LTA2LTEwIGF0IDEyOjQzICswMTAwLCBXaWxsIERlYWNvbiB3cm90ZToK
PiA+IE9uIFR1ZSwgSnVuIDA0LCAyMDE5IGF0IDAzOjIzOjM4UE0gKzAxMDAsIE1hcmsgUnV0bGFu
ZCB3cm90ZToKPiA+ID4gT24gVHVlLCBKdW4gMDQsIDIwMTkgYXQgMTA6MDA6MzZBTSAtMDQwMCwg
UWlhbiBDYWkgd3JvdGU6Cj4gPiA+ID4gVGhlIGNvbW1pdCAiYXJtNjQ6IHN3aXRjaCB0byBnZW5l
cmljIHZlcnNpb24gb2YgcHRlIGFsbG9jYXRpb24iCj4gPiA+ID4gaW50cm9kdWNlZCBlbmRsZXNz
IGZhaWx1cmVzIGR1cmluZyBib290IGxpa2UsCj4gPiA+ID4gCj4gPiA+ID4ga29iamVjdF9hZGRf
aW50ZXJuYWwgZmFpbGVkIGZvciBwZ2RfY2FjaGUoMjg1OmNocm9ueWQuc2VydmljZSkgKGVycm9y
Ogo+ID4gPiA+IC0yIHBhcmVudDogY2dyb3VwKQo+ID4gPiA+IAo+ID4gPiA+IEl0IHR1cm5zIG91
dCBfX0dGUF9BQ0NPVU5UIGlzIHBhc3NlZCB0byBrZXJuZWwgcGFnZSB0YWJsZSBhbGxvY2F0aW9u
cwo+ID4gPiA+IGFuZCB0aGVuIGxhdGVyIG1lbWNnIGZpbmRzIG91dCB0aG9zZSBkb24ndCBiZWxv
bmcgdG8gYW55IGNncm91cC4KPiA+ID4gCj4gPiA+IE1pa2UsIEkgdW5kZXJzdG9vZCBmcm9tIFsx
XSB0aGF0IHRoaXMgd2Fzbid0IGV4cGVjdGVkIHRvIGJlIGEgcHJvYmxlbSwKPiA+ID4gYXMgdGhl
IGFjY291bnRpbmcgc2hvdWxkIGJ5cGFzcyBrZXJuZWwgdGhyZWFkcy4KPiA+ID4gCj4gPiA+IFdh
cyB0aGF0IGFzc3VtcHRpb24gd3JvbmcsIG9yIGlzIHNvbWV0aGluZyBkaWZmZXJlbnQgaGFwcGVu
aW5nIGhlcmU/Cj4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IGJhY2t0cmFjZToKPiA+ID4gPiDCoCBr
b2JqZWN0X2FkZF9pbnRlcm5hbAo+ID4gPiA+IMKgIGtvYmplY3RfaW5pdF9hbmRfYWRkCj4gPiA+
ID4gwqAgc3lzZnNfc2xhYl9hZGQrMHgxYTgKPiA+ID4gPiDCoCBfX2ttZW1fY2FjaGVfY3JlYXRl
Cj4gPiA+ID4gwqAgY3JlYXRlX2NhY2hlCj4gPiA+ID4gwqAgbWVtY2dfY3JlYXRlX2ttZW1fY2Fj
aGUKPiA+ID4gPiDCoCBtZW1jZ19rbWVtX2NhY2hlX2NyZWF0ZV9mdW5jCj4gPiA+ID4gwqAgcHJv
Y2Vzc19vbmVfd29yawo+ID4gPiA+IMKgIHdvcmtlcl90aHJlYWQKPiA+ID4gPiDCoCBrdGhyZWFk
Cj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogUWlhbiBDYWkgPGNhaUBsY2EucHc+Cj4g
PiA+ID4gLS0tCj4gPiA+ID4gwqBhcmNoL2FybTY0L21tL3BnZC5jIHwgMiArLQo+ID4gPiA+IMKg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+ID4gCj4g
PiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvbW0vcGdkLmMgYi9hcmNoL2FybTY0L21tL3Bn
ZC5jCj4gPiA+ID4gaW5kZXggNzY5NTE2Y2I2Njc3Li41M2M0OGY1Yzg3NjUgMTAwNjQ0Cj4gPiA+
ID4gLS0tIGEvYXJjaC9hcm02NC9tbS9wZ2QuYwo+ID4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvbW0v
cGdkLmMKPiA+ID4gPiBAQCAtMzgsNyArMzgsNyBAQCBwZ2RfdCAqcGdkX2FsbG9jKHN0cnVjdCBt
bV9zdHJ1Y3QgKm1tKQo+ID4gPiA+IMKgCWlmIChQR0RfU0laRSA9PSBQQUdFX1NJWkUpCj4gPiA+
ID4gwqAJCXJldHVybiAocGdkX3QgKilfX2dldF9mcmVlX3BhZ2UoZ2ZwKTsKPiA+ID4gPiDCoAll
bHNlCj4gPiA+ID4gLQkJcmV0dXJuIGttZW1fY2FjaGVfYWxsb2MocGdkX2NhY2hlLCBnZnApOwo+
ID4gPiA+ICsJCXJldHVybiBrbWVtX2NhY2hlX2FsbG9jKHBnZF9jYWNoZSwgR0ZQX1BHVEFCTEVf
S0VSTkVMKTsKPiA+ID4gCj4gPiA+IFRoaXMgaXMgdXNlZCB0byBhbGxvY2F0ZSBQR0RzIGZvciBi
b3RoIHVzZXIgYW5kIGtlcm5lbCBwYWdldGFibGVzIChlLmcuCj4gPiA+IGZvciB0aGUgZWZpIHJ1
bnRpbWUgc2VydmljZXMpLCBzbyB3aGlsZSB0aGlzIG1heSBmaXggdGhlIHJlZ3Jlc3Npb24sIEkn
bQo+ID4gPiBub3Qgc3VyZSBpdCdzIHRoZSByaWdodCBmaXguCj4gPiA+IAo+ID4gPiBEbyB3ZSBu
ZWVkIGEgc2VwYXJhdGUgcGdkX2FsbG9jX2tlcm5lbCgpPwo+ID4gCj4gPiBTbyBjYW4gSSB0YWtl
IHRoZSBhYm92ZSBmb3IgLXJjNSwgb3IgaXMgc29tZWJvZHkgZWxzZSB3b3JraW5nIG9uIGEgZGlm
ZmVyZW50Cj4gPiBmaXggdG8gaW1wbGVtZW50IHBnZF9hbGxvY19rZXJuZWwoKT8KPiAKPiBUaGUg
b2ZmZW5zaXZlIGNvbW1pdCAiYXJtNjQ6IHN3aXRjaCB0byBnZW5lcmljIHZlcnNpb24gb2YgcHRl
IGFsbG9jYXRpb24iIGlzIG5vdAo+IHlldCBpbiB0aGUgbWFpbmxpbmUsIGJ1dCBvbmx5IGluIHRo
ZSBBbmRyZXcncyB0cmVlIGFuZCBsaW51eC1uZXh0LCBhbmQgSSBkb3VidAo+IEFuZHJldyB3aWxs
IHB1c2ggdGhpcyBvdXQgYW55IHRpbWUgc29vbmVyIGdpdmVuIGl0IGlzIGJyb2tlbi4KCkknZCBh
c3N1bWVkIHRoYXQgTWlrZSB3b3VsZCByZXNwaW4gdGhlc2UgcGF0Y2hlcyB0byBpbXBsZW1lbnQg
YW5kIHVzZQpwZ2RfYWxsb2Nfa2VybmVsKCkgKG9yIHRha2UgZ2ZwIGZsYWdzKSBhbmQgdGhlIHVw
ZGF0ZWQgcGF0Y2hlcyB3b3VsZApyZXBsYWNlIHRoZXNlIGluIGFrcG0ncyB0cmVlLgoKTWlrZSwg
Y291bGQgeW91IGNvbmZpcm0gd2hhdCB5b3VyIHBsYW4gaXM/IEknbSBoYXBweSB0byByZXZpZXcv
dGVzdAp1cGRhdGVkIHBhdGNoZXMgZm9yIGFybTY0LgoKVGhhbmtzLApNYXJrLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
