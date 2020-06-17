Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7C91FCA05
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 11:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dZzzKpEVGESbC4E9wYlHckAqr1dwBLJJMPjfIgZbSE=; b=kB3F5ecQqGeSN/
	niog6+0A6FP5dhob3Vb9f2+VjM7zsFc4bkmu3j45A2wPbxoJfHw5lMTdLx6w8qEGlHnjy8a2e6+q1
	H64znnlvEJekNQNFdBKVbXv0/ualVGfUlgMOJaQVoHDz4IpVWvZoaf+pv1KmpVtme6Ql14KxqkZ9q
	AENpHSR3C/wwmy201vLvF32JhynZzV5IwYbkzp5W+50ZnzDO/KCOJTewfI6rGpefIytjWXWmNxKgM
	K/a3HZLHJ6fKEeylFIlHjkaMPYZoDU4gX0aFENTnT2BOWRmPXBwWaH8SeG8sZj1v/rm+rbaiy27mo
	LTjZSoDe104wHnvOWPKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUZB-0004cH-Aq; Wed, 17 Jun 2020 09:41:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUZ0-0004bp-5N
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 09:40:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7A87C0A;
 Wed, 17 Jun 2020 02:40:57 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 03BDE3F6CF;
 Wed, 17 Jun 2020 02:40:56 -0700 (PDT)
Date: Wed, 17 Jun 2020 10:40:54 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/2] arm64/sve: Eliminate data races on sve_default_vl
Message-ID: <20200617094054.GP25945@arm.com>
References: <1591808590-20210-1-git-send-email-Dave.Martin@arm.com>
 <1591808590-20210-3-git-send-email-Dave.Martin@arm.com>
 <20200616131808.GA1040@lca.pw>
 <20200616150451.GA1941@willie-the-truck>
 <20200616161704.GN25945@arm.com>
 <20200616171926.GA2129@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616171926.GA2129@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_024058_290482_565FFE79 
X-CRM114-Status: GOOD (  26.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMTYsIDIwMjAgYXQgMDY6MTk6MjdQTSArMDEwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gVHVlLCBKdW4gMTYsIDIwMjAgYXQgMDU6MTc6MDRQTSArMDEwMCwgRGF2ZSBNYXJ0
aW4gd3JvdGU6Cj4gPiBPbiBUdWUsIEp1biAxNiwgMjAyMCBhdCAwNDowNDo1MVBNICswMTAwLCBX
aWxsIERlYWNvbiB3cm90ZToKPiA+ID4gT24gVHVlLCBKdW4gMTYsIDIwMjAgYXQgMDk6MTg6MDhB
TSAtMDQwMCwgUWlhbiBDYWkgd3JvdGU6Cj4gPiA+ID4gT24gV2VkLCBKdW4gMTAsIDIwMjAgYXQg
MDY6MDM6MTBQTSArMDEwMCwgRGF2ZSBNYXJ0aW4gd3JvdGU6Cj4gPiA+ID4gPiBzdmVfZGVmYXVs
dF92bCBjYW4gYmUgbW9kaWZpZWQgdmlhIHRoZSAvcHJvYy9zeXMvYWJpL3N2ZV9kZWZhdWx0X3Zs
Cj4gPiA+ID4gPiBzeXNjdGwgY29uY3VycmVudGx5IHdpdGggdXNlLCBhbmQgbW9kaWZpZWQgY29u
Y3VycmVudGx5IGJ5IG11bHRpcGxlCj4gPiA+ID4gPiB0aHJlYWRzLgo+ID4gPiA+ID4gCj4gPiA+
ID4gPiBBZGRpbmcgYSBsb2NrIGZvciB0aGlzIHNlZW1zIG92ZXJraWxsLCBhbmQgSSBkb24ndCB3
YW50IHRvIHRoaW5rIGFueQo+ID4gPiA+ID4gbW9yZSB0aGFuIG5lY2Vzc2FyeSwgc28ganVzdCBk
ZWZpbmUgd3JhcHBlcnMgdXNpbmcgUkVBRF9PTkNFKCkvCj4gPiA+ID4gPiBXUklURV9PTkNFKCku
Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoaXMgd2lsbCBhdm9pZCB0aGUgcG9zc2liaWxpdHkgb2Yg
dG9ybiBhY2Nlc3NlcyBhbmQgcmVwZWF0ZWQgbG9hZHMKPiA+ID4gPiA+IGFuZCBzdG9yZXMuCj4g
PiA+ID4gPiAKPiA+ID4gPiA+IFRoZXJlJ3Mgbm8gZXZpZGVuY2UgeWV0IHRoYXQgdGhpcyBpcyBn
b2luZyB3cm9uZyBpbiBwcmFjdGljZTogdGhpcwo+ID4gPiA+ID4gaXMganVzdCBoeWdpZW5lLiAg
Rm9yIGdlbmVyaWMgc3lzY3RsIHVzZXJzLCBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8KPiA+ID4gPiA+
IGJ1aWxkIHRoaXMga2luZCBvZiB0aGluZyBpbnRvIHRoZSBzeXNjdGwgY29tbW9uIGNvZGUgc29t
ZWhvdy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gUmVwb3J0ZWQtYnk6IFdpbGwgRGVhY29uIDx3aWxs
QGtlcm5lbC5vcmc+Cj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBEYXZlIE1hcnRpbiA8RGF2ZS5N
YXJ0aW5AYXJtLmNvbT4KPiA+ID4gPiAKPiA+ID4gPiBXaGlsZSB0aGlzIG9yaWdpbmFsIHBhdGNo
IGxvb2tzIGNvcnJlY3QsIGxpbnV4LW5leHQgaGFzIHRoaXMsCj4gPiA+ID4gCj4gPiA+ID4gW3dp
bGw6IG1vdmUgc2V0X3N2ZV9kZWZhdWx0X3ZsKCkgaW5zaWRlICNpZmRlZiB0byBzcXVhc2ggYWxs
bm9jb25maWcgd2FybmluZ10KPiA+ID4gPiAKPiA+ID4gPiAxZTU3MGY1MTJjYmQgKCJhcm02NC9z
dmU6IEVsaW1pbmF0ZSBkYXRhIHJhY2VzIG9uIHN2ZV9kZWZhdWx0X3ZsIikKPiA+ID4gPiAKPiA+
ID4gPiB3aGljaCBjYXVzZXMgYW4gZXJyb3Igd2l0aCBDT05GSUdfQVJNNjRfU1ZFPW4sCj4gPiA+
ID4gCj4gPiA+ID4gVGhpcyAuY29uZmlnLAo+ID4gPiA+IGh0dHBzOi8vcmF3LmdpdGh1YnVzZXJj
b250ZW50LmNvbS9jYWlsY2EvbGludXgtbW0vbWFzdGVyL2FybTY0LmNvbmZpZwo+ID4gPiA+IAo+
ID4gPiA+IGFyY2gvYXJtNjQva2VybmVsL2Zwc2ltZC5jOiBJbiBmdW5jdGlvbiDigJhzdmVfcHJv
Y19kb19kZWZhdWx0X3Zs4oCZOgo+ID4gPiA+IGFyY2gvYXJtNjQva2VybmVsL2Zwc2ltZC5jOjM3
NToyOiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YKPiA+ID4gPiBmdW5jdGlvbiDigJhz
ZXRfc3ZlX2RlZmF1bHRfdmzigJk7IGRpZCB5b3UgbWVhbiDigJhnZXRfc3ZlX2RlZmF1bHRfdmzi
gJk/Cj4gPiA+ID4gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4gPiA+
ID4gICBzZXRfc3ZlX2RlZmF1bHRfdmwoZmluZF9zdXBwb3J0ZWRfdmVjdG9yX2xlbmd0aCh2bCkp
Owo+ID4gPiA+ICAgXn5+fn5+fn5+fn5+fn5+fn5+Cj4gPiA+ID4gICBnZXRfc3ZlX2RlZmF1bHRf
dmwKPiA+ID4gCj4gPiA+IFRoYW5rcywgSSdsbCB0YWtlIGEgbG9vay4KPiA+IAo+ID4gSSBoYXZl
bid0IGxvb2tlZCBpbiBkZXRhaWwgYXQgdGhpczsgSSBndWVzcyB0aGUgbmV3IGhlbHBlcnMganVz
dAo+ID4gbmVlZCB0byBiZSBtYW51YWxseSBwbGFjZWQgaW4gdGhlIHJpZ2h0ICNpZmRlZiBibG9j
ay4KPiAKPiBUaGF0IHdhcyB3aGF0IEkgZGlkIHdoZW4gSSBtZXJnZWQgdGhlIHBhdGNoLCBidXQg
dGhhdCBicm9rZSBjb25maWd1cmF0aW9ucwo+IHdoZXJlIFNZU0NUTCBpcyBlbmFibGVkIGJ1dCBT
VkUgaXMgZGlzYWJsZWQuIEkndmUgZW5kZWQgdXAgd2l0aCB0aGlzCj4gZGlmZiBvbiB0b3Agb2Yg
Zm9yLW5leHQvZml4ZXMuCj4gCj4gV2lsbAo+IAo+IC0tLT44Cj4gCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQva2VybmVsL2Zwc2ltZC5jIGIvYXJjaC9hcm02NC9rZXJuZWwvZnBzaW1kLmMKPiBp
bmRleCBkOWVlZTkxOTQ1MTEuLjU1YzhmM2VjNjcwNSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0
L2tlcm5lbC9mcHNpbWQuYwo+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL2Zwc2ltZC5jCj4gQEAg
LTM0OSw3ICszNDksNyBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGZpbmRfc3VwcG9ydGVkX3ZlY3Rv
cl9sZW5ndGgodW5zaWduZWQgaW50IHZsKQo+ICAJcmV0dXJuIHN2ZV92bF9mcm9tX3ZxKF9fYml0
X3RvX3ZxKGJpdCkpOwo+ICB9Cj4gIAo+IC0jaWZkZWYgQ09ORklHX1NZU0NUTAo+ICsjaWYgZGVm
aW5lZChDT05GSUdfQVJNNjRfU1ZFKSAmJiBkZWZpbmVkKENPTkZJR19TWVNDVEwpCj4gIAo+ICBz
dGF0aWMgaW50IHN2ZV9wcm9jX2RvX2RlZmF1bHRfdmwoc3RydWN0IGN0bF90YWJsZSAqdGFibGUs
IGludCB3cml0ZSwKPiAgCQkJCSAgdm9pZCAqYnVmZmVyLCBzaXplX3QgKmxlbnAsIGxvZmZfdCAq
cHBvcykKPiBAQCAtMzk0LDkgKzM5NCw5IEBAIHN0YXRpYyBpbnQgX19pbml0IHN2ZV9zeXNjdGxf
aW5pdCh2b2lkKQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gLSNlbHNlIC8qICEgQ09ORklHX1NZ
U0NUTCAqLwo+ICsjZWxzZSAvKiAhIChDT05GSUdfQVJNNjRfU1ZFICYmIENPTkZJR19TWVNDVEwp
ICovCj4gIHN0YXRpYyBpbnQgX19pbml0IHN2ZV9zeXNjdGxfaW5pdCh2b2lkKSB7IHJldHVybiAw
OyB9Cj4gLSNlbmRpZiAvKiAhIENPTkZJR19TWVNDVEwgKi8KPiArI2VuZGlmIC8qICEgKENPTkZJ
R19BUk02NF9TVkUgJiYgQ09ORklHX1NZU0NUTCkgKi8KCkhtbSwgSSBndWVzcyB0aGF0IHdvcmtz
LCBidXQgaXQgc3RpbGwgc2VlbXMgY3VtYmVyc29tZS4gICNpZmRlZnMgZG8KdGVuZCB0byBicmVl
ZCBhcyB0aGUgY29kZSBnZXRzIGV4dGVuZGVkLCBzbyBJJ2Qgd29ya2VkIGhhcmQgdG8KZWxpbWlu
YXRlIHRoZW0gYXMgbXVjaCBhcyBwb3NzaWJsZS4KCkNhbid0IHdlIHNpbXBseSBsZWF2ZSB0aGUg
aGVscGVycyBvdXRzaWRlIHRoZSAjaWZkZWYsIGFuZCBkbyB0aGlzPwoKIC8qIERlZmF1bHQgVkwg
Zm9yIHRhc2tzIHRoYXQgZG9uJ3Qgc2V0IGl0IGV4cGxpY2l0bHk6ICovCiBzdGF0aWMgaW50IF9f
c3ZlX2RlZmF1bHRfdmwgPSAtMTsKIAotc3RhdGljIGludCBnZXRfc3ZlX2RlZmF1bHRfdmwodm9p
ZCkKK3N0YXRpYyBpbmxpbmUgaW50IGdldF9zdmVfZGVmYXVsdF92bCh2b2lkKQogewogCXJldHVy
biBSRUFEX09OQ0UoX19zdmVfZGVmYXVsdF92bCk7CiB9CiAKLXN0YXRpYyB2b2lkIHNldF9zdmVf
ZGVmYXVsdF92bChpbnQgdmFsKQorc3RhdGljIGlubGluZSB2b2lkIHNldF9zdmVfZGVmYXVsdF92
bChpbnQgdmFsKQogewogCVdSSVRFX09OQ0UoX19zdmVfZGVmYXVsdF92bCwgdmFsKTsKIH0KCgpD
aGVlcnMKLS0tRGF2ZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
