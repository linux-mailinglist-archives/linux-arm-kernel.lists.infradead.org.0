Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF2F3CC6A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 15:03:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvho3VhCxxW/2UpB7OM3wUCLIROjlDnfnZUxsnvDM+Y=; b=fIPq9ZwYlN1bxm
	C2EuXhieK33olhFBu/9ccbXM2xRF+LH8+JD6Galvk7VCMWkRrQeKmf/rgVnmTeLDnuvAj6sTcrwZj
	hMFtjvrcF/A7H1b2BzcuWZhjNgHTsqIPvYtxzJl7mY+snMdurgaaAcjlqTcvnoPVQrh0bWh/bV3sx
	H7j93DVH0Dx3zQB4vxHM9BEOb0gx+XT6xL6GwJgtIDxKVAduvwLu66VaMI7OS31eulVDhVFY0Iuzi
	qa7RSobS792L2c0+yBWW1sa1yKlE/uvSTfrZG51TvxAJSoxY+e6fMbZbDMcuFvu/owwZg6usgLXXQ
	arMVYmgufKjLJEulo8pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hagQc-0008Bf-ME; Tue, 11 Jun 2019 13:03:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hagQA-0007zt-Nw
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 13:02:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E8EE344;
 Tue, 11 Jun 2019 06:02:37 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D24B3F557;
 Tue, 11 Jun 2019 06:02:35 -0700 (PDT)
Date: Tue, 11 Jun 2019 14:02:33 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
Message-ID: <20190611130233.GD29008@lakrids.cambridge.arm.com>
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
 <20190604142338.GC24467@lakrids.cambridge.arm.com>
 <20190610114326.GF15979@fuggles.cambridge.arm.com>
 <1560187575.6132.70.camel@lca.pw>
 <20190611100348.GB26409@lakrids.cambridge.arm.com>
 <20190611124118.GA4761@rapoport-lnx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611124118.GA4761@rapoport-lnx>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_060238_958030_54BDBAF7 
X-CRM114-Status: GOOD (  28.16  )
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
 Qian Cai <cai@lca.pw>, vdavydov.dev@gmail.com, hannes@cmpxchg.org,
 cgroups@vger.kernel.org, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgMDM6NDE6MTlQTSArMDMwMCwgTWlrZSBSYXBvcG9ydCB3
cm90ZToKPiBPbiBUdWUsIEp1biAxMSwgMjAxOSBhdCAxMTowMzo0OUFNICswMTAwLCBNYXJrIFJ1
dGxhbmQgd3JvdGU6Cj4gPiBPbiBNb24sIEp1biAxMCwgMjAxOSBhdCAwMToyNjoxNVBNIC0wNDAw
LCBRaWFuIENhaSB3cm90ZToKPiA+ID4gT24gTW9uLCAyMDE5LTA2LTEwIGF0IDEyOjQzICswMTAw
LCBXaWxsIERlYWNvbiB3cm90ZToKPiA+ID4gPiBPbiBUdWUsIEp1biAwNCwgMjAxOSBhdCAwMzoy
MzozOFBNICswMTAwLCBNYXJrIFJ1dGxhbmQgd3JvdGU6Cj4gPiA+ID4gPiBPbiBUdWUsIEp1biAw
NCwgMjAxOSBhdCAxMDowMDozNkFNIC0wNDAwLCBRaWFuIENhaSB3cm90ZToKPiA+ID4gPiA+ID4g
VGhlIGNvbW1pdCAiYXJtNjQ6IHN3aXRjaCB0byBnZW5lcmljIHZlcnNpb24gb2YgcHRlIGFsbG9j
YXRpb24iCj4gPiA+ID4gPiA+IGludHJvZHVjZWQgZW5kbGVzcyBmYWlsdXJlcyBkdXJpbmcgYm9v
dCBsaWtlLAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4ga29iamVjdF9hZGRfaW50ZXJuYWwgZmFp
bGVkIGZvciBwZ2RfY2FjaGUoMjg1OmNocm9ueWQuc2VydmljZSkgKGVycm9yOgo+ID4gPiA+ID4g
PiAtMiBwYXJlbnQ6IGNncm91cCkKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEl0IHR1cm5zIG91
dCBfX0dGUF9BQ0NPVU5UIGlzIHBhc3NlZCB0byBrZXJuZWwgcGFnZSB0YWJsZSBhbGxvY2F0aW9u
cwo+ID4gPiA+ID4gPiBhbmQgdGhlbiBsYXRlciBtZW1jZyBmaW5kcyBvdXQgdGhvc2UgZG9uJ3Qg
YmVsb25nIHRvIGFueSBjZ3JvdXAuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IE1pa2UsIEkgdW5kZXJz
dG9vZCBmcm9tIFsxXSB0aGF0IHRoaXMgd2Fzbid0IGV4cGVjdGVkIHRvIGJlIGEgcHJvYmxlbSwK
PiA+ID4gPiA+IGFzIHRoZSBhY2NvdW50aW5nIHNob3VsZCBieXBhc3Mga2VybmVsIHRocmVhZHMu
Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IFdhcyB0aGF0IGFzc3VtcHRpb24gd3JvbmcsIG9yIGlzIHNv
bWV0aGluZyBkaWZmZXJlbnQgaGFwcGVuaW5nIGhlcmU/Cj4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+IGJhY2t0cmFjZToKPiA+ID4gPiA+ID4gwqAga29iamVjdF9hZGRfaW50ZXJu
YWwKPiA+ID4gPiA+ID4gwqAga29iamVjdF9pbml0X2FuZF9hZGQKPiA+ID4gPiA+ID4gwqAgc3lz
ZnNfc2xhYl9hZGQrMHgxYTgKPiA+ID4gPiA+ID4gwqAgX19rbWVtX2NhY2hlX2NyZWF0ZQo+ID4g
PiA+ID4gPiDCoCBjcmVhdGVfY2FjaGUKPiA+ID4gPiA+ID4gwqAgbWVtY2dfY3JlYXRlX2ttZW1f
Y2FjaGUKPiA+ID4gPiA+ID4gwqAgbWVtY2dfa21lbV9jYWNoZV9jcmVhdGVfZnVuYwo+ID4gPiA+
ID4gPiDCoCBwcm9jZXNzX29uZV93b3JrCj4gPiA+ID4gPiA+IMKgIHdvcmtlcl90aHJlYWQKPiA+
ID4gPiA+ID4gwqAga3RocmVhZAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1i
eTogUWlhbiBDYWkgPGNhaUBsY2EucHc+Cj4gPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gPiDCoGFy
Y2gvYXJtNjQvbW0vcGdkLmMgfCAyICstCj4gPiA+ID4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9tbS9wZ2QuYyBiL2FyY2gvYXJtNjQvbW0vcGdkLmMKPiA+ID4g
PiA+ID4gaW5kZXggNzY5NTE2Y2I2Njc3Li41M2M0OGY1Yzg3NjUgMTAwNjQ0Cj4gPiA+ID4gPiA+
IC0tLSBhL2FyY2gvYXJtNjQvbW0vcGdkLmMKPiA+ID4gPiA+ID4gKysrIGIvYXJjaC9hcm02NC9t
bS9wZ2QuYwo+ID4gPiA+ID4gPiBAQCAtMzgsNyArMzgsNyBAQCBwZ2RfdCAqcGdkX2FsbG9jKHN0
cnVjdCBtbV9zdHJ1Y3QgKm1tKQo+ID4gPiA+ID4gPiDCoAlpZiAoUEdEX1NJWkUgPT0gUEFHRV9T
SVpFKQo+ID4gPiA+ID4gPiDCoAkJcmV0dXJuIChwZ2RfdCAqKV9fZ2V0X2ZyZWVfcGFnZShnZnAp
Owo+ID4gPiA+ID4gPiDCoAllbHNlCj4gPiA+ID4gPiA+IC0JCXJldHVybiBrbWVtX2NhY2hlX2Fs
bG9jKHBnZF9jYWNoZSwgZ2ZwKTsKPiA+ID4gPiA+ID4gKwkJcmV0dXJuIGttZW1fY2FjaGVfYWxs
b2MocGdkX2NhY2hlLCBHRlBfUEdUQUJMRV9LRVJORUwpOwo+ID4gPiA+ID4gCj4gPiA+ID4gPiBU
aGlzIGlzIHVzZWQgdG8gYWxsb2NhdGUgUEdEcyBmb3IgYm90aCB1c2VyIGFuZCBrZXJuZWwgcGFn
ZXRhYmxlcyAoZS5nLgo+ID4gPiA+ID4gZm9yIHRoZSBlZmkgcnVudGltZSBzZXJ2aWNlcyksIHNv
IHdoaWxlIHRoaXMgbWF5IGZpeCB0aGUgcmVncmVzc2lvbiwgSSdtCj4gPiA+ID4gPiBub3Qgc3Vy
ZSBpdCdzIHRoZSByaWdodCBmaXguCj4gPiA+ID4gPiAKPiA+ID4gPiA+IERvIHdlIG5lZWQgYSBz
ZXBhcmF0ZSBwZ2RfYWxsb2Nfa2VybmVsKCk/Cj4gPiA+ID4gCj4gPiA+ID4gU28gY2FuIEkgdGFr
ZSB0aGUgYWJvdmUgZm9yIC1yYzUsIG9yIGlzIHNvbWVib2R5IGVsc2Ugd29ya2luZyBvbiBhIGRp
ZmZlcmVudAo+ID4gPiA+IGZpeCB0byBpbXBsZW1lbnQgcGdkX2FsbG9jX2tlcm5lbCgpPwo+ID4g
PiAKPiA+ID4gVGhlIG9mZmVuc2l2ZSBjb21taXQgImFybTY0OiBzd2l0Y2ggdG8gZ2VuZXJpYyB2
ZXJzaW9uIG9mIHB0ZSBhbGxvY2F0aW9uIiBpcyBub3QKPiA+ID4geWV0IGluIHRoZSBtYWlubGlu
ZSwgYnV0IG9ubHkgaW4gdGhlIEFuZHJldydzIHRyZWUgYW5kIGxpbnV4LW5leHQsIGFuZCBJIGRv
dWJ0Cj4gPiA+IEFuZHJldyB3aWxsIHB1c2ggdGhpcyBvdXQgYW55IHRpbWUgc29vbmVyIGdpdmVu
IGl0IGlzIGJyb2tlbi4KPiA+IAo+ID4gSSdkIGFzc3VtZWQgdGhhdCBNaWtlIHdvdWxkIHJlc3Bp
biB0aGVzZSBwYXRjaGVzIHRvIGltcGxlbWVudCBhbmQgdXNlCj4gPiBwZ2RfYWxsb2Nfa2VybmVs
KCkgKG9yIHRha2UgZ2ZwIGZsYWdzKSBhbmQgdGhlIHVwZGF0ZWQgcGF0Y2hlcyB3b3VsZAo+ID4g
cmVwbGFjZSB0aGVzZSBpbiBha3BtJ3MgdHJlZS4KPiA+IAo+ID4gTWlrZSwgY291bGQgeW91IGNv
bmZpcm0gd2hhdCB5b3VyIHBsYW4gaXM/IEknbSBoYXBweSB0byByZXZpZXcvdGVzdAo+ID4gdXBk
YXRlZCBwYXRjaGVzIGZvciBhcm02NC4KPiAKPiBTb3JyeSBmb3IgdGhlIGRlbGF5LCBJJ20gbW9z
dGx5IG9mZmxpbmUgdGhlc2UgZGF5cy4KPiAKPiBJIHdhbnRlZCB0byB1bmRlcnN0YW5kIGZpcnN0
IHdoYXQgaXMgdGhlIHJlYXNvbiBmb3IgdGhlIGZhaWx1cmUuIEkndmUgdHJpZWQKPiB0byByZXBy
b2R1Y2UgaXQgd2l0aCBxZW11LCBidXQgSSBmYWlsZWQgdG8gZmluZCBhIGJvb3RhYmxlIGNvbmZp
Z3VyYXRpb24KPiB0aGF0IHdpbGwgaGF2ZSBQR0RfU0laRSAhPSBQQUdFX1NJWkUgOigKClRoaXMg
aXMgdGhlIGNhc2Ugd2l0aCA0OC1iaXQgVkEgYW5kIDY0SyBwYWdlcy4gSW4gdGhhdCBjYXNlIHdl
IGhhdmUKdGhyZWUgbGV2ZWxzIG9mIHRhYmxlLCBhbmQgdGhlIFBHRCBpcyAxLzE2dGggb2YgYSBw
YWdlLCBhcyBpdCBvbmx5IG5lZWRzCnRvIHJlc29sdmUgOSBiaXRzIG9mIHZpcnR1YWwgYWRkcmVz
cyByYXRoZXIgdGhhbiAxMy4KCklmIHlvdSBidWlsZCBkZWZjb25maWcgKyBBUk02NF82NEtfUEFH
RVM9eSwgdGhhdCBzaG91bGQgYmUgdGhlIGNhc2U6CgpbbWFya0BsYWtyaWRzOn4vc3JjL2xpbnV4
XSUgdXNla29yZyA4LjEuMCBhYXJjaDY0LWxpbnV4LW9iamR1bXAgLWQgYXJjaC9hcm02NC9tbS9w
Z2QubyAgICAgCgphcmNoL2FybTY0L21tL3BnZC5vOiAgICAgZmlsZSBmb3JtYXQgZWxmNjQtbGl0
dGxlYWFyY2g2NAoKCkRpc2Fzc2VtYmx5IG9mIHNlY3Rpb24gLnRleHQ6CgowMDAwMDAwMDAwMDAw
MDAwIDxwZ2RfYWxsb2M+OgogICAwOiAgIGE5YmY3YmZkICAgICAgICBzdHAgICAgIHgyOSwgeDMw
LCBbc3AsICMtMTZdIQogICA0OiAgIDkwMDAwMDAwICAgICAgICBhZHJwICAgIHgwLCAwIDxwZ2Rf
YWxsb2M+CiAgIDg6ICAgNTI4MWI4MDEgICAgICAgIG1vdiAgICAgdzEsICMweGRjMCAgICAgICAg
ICAgICAgICAgICAgICAvLyAjMzUyMAogICBjOiAgIDkxMDAwM2ZkICAgICAgICBtb3YgICAgIHgy
OSwgc3AKICAxMDogICBmOTQwMDAwMCAgICAgICAgbGRyICAgICB4MCwgW3gwXQogIDE0OiAgIDk0
MDAwMDAwICAgICAgICBibCAgICAgIDAgPGttZW1fY2FjaGVfYWxsb2M+CiAgMTg6ICAgYThjMTdi
ZmQgICAgICAgIGxkcCAgICAgeDI5LCB4MzAsIFtzcF0sICMxNgogIDFjOiAgIGQ2NWYwM2MwICAg
ICAgICByZXQKCjAwMDAwMDAwMDAwMDAwMjAgPHBnZF9mcmVlPjoKICAyMDogICBhOWJmN2JmZCAg
ICAgICAgc3RwICAgICB4MjksIHgzMCwgW3NwLCAjLTE2XSEKICAyNDogICA5MDAwMDAwMCAgICAg
ICAgYWRycCAgICB4MCwgMCA8cGdkX2FsbG9jPgogIDI4OiAgIDkxMDAwM2ZkICAgICAgICBtb3Yg
ICAgIHgyOSwgc3AKICAyYzogICBmOTQwMDAwMCAgICAgICAgbGRyICAgICB4MCwgW3gwXQogIDMw
OiAgIDk0MDAwMDAwICAgICAgICBibCAgICAgIDAgPGttZW1fY2FjaGVfZnJlZT4KICAzNDogICBh
OGMxN2JmZCAgICAgICAgbGRwICAgICB4MjksIHgzMCwgW3NwXSwgIzE2CiAgMzg6ICAgZDY1ZjAz
YzAgICAgICAgIHJldAoKRGlzYXNzZW1ibHkgb2Ygc2VjdGlvbiAuaW5pdC50ZXh0OgoKMDAwMDAw
MDAwMDAwMDAwMCA8cGdkX2NhY2hlX2luaXQ+OgogICAwOiAgIGE5YmY3YmZkICAgICAgICBzdHAg
ICAgIHgyOSwgeDMwLCBbc3AsICMtMTZdIQogICA0OiAgIDUyODA0MDAyICAgICAgICBtb3YgICAg
IHcyLCAjMHgyMDAgICAgICAgICAgICAgICAgICAgICAgLy8gIzUxMgogICA4OiAgIGQyODAwMDA0
ICAgICAgICBtb3YgICAgIHg0LCAjMHgwICAgICAgICAgICAgICAgICAgICAgICAgLy8gIzAKICAg
YzogICA5MTAwMDNmZCAgICAgICAgbW92ICAgICB4MjksIHNwCiAgMTA6ICAgMmEwMjAzZTEgICAg
ICAgIG1vdiAgICAgdzEsIHcyCiAgMTQ6ICAgNTJhMDAwODMgICAgICAgIG1vdiAgICAgdzMsICMw
eDQwMDAwICAgICAgICAgICAgICAgICAgICAvLyAjMjYyMTQ0CiAgMTg6ICAgOTAwMDAwMDAgICAg
ICAgIGFkcnAgICAgeDAsIDAgPHBnZF9jYWNoZV9pbml0PgogIDFjOiAgIDkxMDAwMDAwICAgICAg
ICBhZGQgICAgIHgwLCB4MCwgIzB4MAogIDIwOiAgIDk0MDAwMDAwICAgICAgICBibCAgICAgIDAg
PGttZW1fY2FjaGVfY3JlYXRlPgogIDI0OiAgIDkwMDAwMDAxICAgICAgICBhZHJwICAgIHgxLCAw
IDxwZ2RfY2FjaGVfaW5pdD4KICAyODogICBhOGMxN2JmZCAgICAgICAgbGRwICAgICB4MjksIHgz
MCwgW3NwXSwgIzE2CiAgMmM6ICAgZjkwMDAwMjAgICAgICAgIHN0ciAgICAgeDAsIFt4MV0KICAz
MDogICBkNjVmMDNjMCAgICAgICAgcmV0CgpUaGFua3MsCk1hcmsuCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
