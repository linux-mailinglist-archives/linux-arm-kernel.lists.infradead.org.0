Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E804110494
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 19:55:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kadF0fZmztiP6to8dHKjhItiIOcU8EiDJQugirOmnAc=; b=uHHwIW9mNUY+YW
	US9Afhnvwarx1xAIEGsmWSd3Rp7z6uLLgnRFUPNJeUHoVLgjSavzSfCgS7l0BBrpIb6L6herfvW4+
	65KZi6g7Dk8CQqB1fxr5ru4LhQefRcUmh8NT4QKckB1Dpz7LI6GD82c4IdxDodZ3ZT3WScZ20MCzm
	IvB9mTRILGBZzMafoLtqlYTuZfX/RS2ZjNwKFNHYrog95bCNf3TMJkH8u6PEbbtz1q5r0hupiCjee
	epkhCqLj/w4f88N/yHZkLDKu8ekdkPlWvIJ7XxLDnO5w1fZUdJMnPnT3QjizBKdnt1uQCttu/Dk/z
	vl33pdCWE6wEWsmcO6Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDKj-0005qx-In; Tue, 03 Dec 2019 18:55:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDKZ-0005q2-Ue; Tue, 03 Dec 2019 18:55:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0884CB12D;
 Tue,  3 Dec 2019 18:55:26 +0000 (UTC)
Subject: Re: [PATCH 6/6] dt-bindings: clk: realtek: add rtd1619 clock
 controller bindings
To: James Tai <james.tai@realtek.com>
References: <20191203074513.9416-1-james.tai@realtek.com>
 <20191203074513.9416-7-james.tai@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <f16bc1ef-8b69-feb4-bf1a-b015d7f8618e@suse.de>
Date: Tue, 3 Dec 2019 19:55:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191203074513.9416-7-james.tai@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_105528_278515_BA3773AD 
X-CRM114-Status: GOOD (  23.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 cylee12 <cylee12@realtek.com>, linux-realtek-soc@lists.infradead.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpbZHJvcHBpbmcgUGFsbWVyLCBhZGRpbmcgUGhpbGlwcF0KCkFtIDAzLjEyLjE5
IHVtIDA4OjQ1IHNjaHJpZWIgSmFtZXMgVGFpOgo+IEZyb206IGN5bGVlMTIgPGN5bGVlMTJAcmVh
bHRlay5jb20+CgpBdXRob3IuCgokc3ViamVjdDogY2xrIHZzLiBjbG9jayBwcmVmaXgKCkxhY2tp
bmcgYSBjb21taXQgbWVzc2FnZSBoZXJlLgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaGVuZy1ZdSBM
ZWUgPGN5bGVlMTJAcmVhbHRlay5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSmFtZXMgVGFpIDxqYW1l
cy50YWlAcmVhbHRlay5jb20+Cj4gLS0tCj4gIC4uLi9iaW5kaW5ncy9jbG9jay9yZWFsdGVrLGNs
b2Nrcy50eHQgICAgICAgICB8IDM4ICsrKysrKysrKysrKysrKysrKysKClBsZWFzZSB1c2UgWUFN
TCBzY2hlbWEgZm9yIGFueSBuZXcgYmluZGluZ3MuCgo+ICAxIGZpbGUgY2hhbmdlZCwgMzggaW5z
ZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2Nsb2NrL3JlYWx0ZWssY2xvY2tzLnR4dAoKVGhpcyBwYXRjaCBuZWVkcyB0byBi
ZSBvcmRlcmVkIGJlZm9yZSBwYXRjaGVzIHVzaW5nIHRoZSBiaW5kaW5nIGluIGEKZHJpdmVyIG9y
IERULiBJbiB0aGlzIGNhc2UgaXQgc2hvdWxkJ3ZlIGJlZW4gc3F1YXNoZWQgaW50byAxLzYuCgo+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svcmVh
bHRlayxjbG9ja3MudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2Nr
L3JlYWx0ZWssY2xvY2tzLnR4dAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAw
MDAwMDAwLi5kYjEwMTUwOGFjNmEKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3JlYWx0ZWssY2xvY2tzLnR4dAo+IEBAIC0wLDAg
KzEsMzggQEAKPiArUmVhbHRlayBDbG9jay9SZXNldCBDb250cm9sbGVyCj4gKz09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PQo+ICsKPiArUmVhbHRlayBDUlQvSVNPIGNvbnRyb2xsZXIgZGV2
aWNlLXRyZWUgYmluZGluZyBmb3IgUmVhbHRlayBQbGF0Zm9ybXMuCj4gKwo+ICtUaGlzIGJpbmRp
bmcgdXNlcyB0aGUgY29tbW9uIGNsb2NrIGJpbmRpbmdbMV0uCj4gKwo+ICtUaGUgY29udHJvbGxl
ciBub2RlIHNob3VsZCBiZSB0aGUgY2hpbGQgb2YgYSBzeXNjb24gbm9kZSB3aXRoIHRoZSByZXF1
aXJlZAo+ICtwcm9wZXJ0aXNlOgo+ICsKPiArLSBjb21wYXRpYmxlIDoKPiArCXNob3VsZCBjb250
YWluIG9ubHkgb25lIG9mIHRoZSBmb2xsb3dpbmc6Cj4gKwkJInJlYWx0ZWsscnRkMTYxOS1jYyIg
Zm9yIFJURDE2MTkgQ1JUIGNsb2NrIGNvbnRyb2xsZXIsCj4gKwkJInJlYWx0ZWsscnRkMTYxOS1p
YyIgZm9yIFJURDE2MTkgSVNPIGNsb2NrIGNvbnRyb2xsZXIsCgotaWMgZG9lcyBub3Qgc3RyaWtl
IG1lIGFzIHRoZSBiZXN0IG5hbWUsIGNhbiB3ZSBnbyB3aXRoIC1pc28tc29tZXRoaW5nCmZvciBj
b25zaXN0ZW5jeT8KCj4gKwo+ICstICNjbG9jay1jZWxscyA6IHNob3VsZCBiZSAxLgo+ICsKPiAr
LSAjcmVzZXQtY2VsbHMgOiBzaG91bGQgYmUgMS4KPiArCj4gK1sxXSBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvY2xvY2svY2xvY2stYmluZGluZ3MudHh0Cj4gKwo+ICtFeGFtcGxl
Ogo+ICsKPiArCWNydEA5ODAwMDAwMCB7CgpjcnQ6IHN5c2NvbkAuLi4KCkFsd2F5cyBwcmVmZXIg
Z2VuZXJpYyBub2RlIG5hbWVzIHdoZW4gcG9zc2libGUuCgo+ICsJCWNvbXBhdGlibGUgPSAicmVh
bHRlayxydGQxNjE5LWNydCIsICJzaW1wbGUtbWZkIiwgInN5c2NvbiI7CgoxKSBZb3UgbXVzdCBu
b3QgdXNlIHVuZGVmaW5lZCBjb21wYXRpYmxlIHN0cmluZ3MgaW4geW91ciBleGFtcGxlISBJZiB3
ZQp3YW50IHRvIHVzZSBzdWNoIGNvbXBhdGlibGVzICh3aGljaCBJIGFncmVlIHdpdGggaW4gcHJp
bmNpcGxlKSwgdGhlbiB3ZQpuZWVkIHRvIHBvc3Qgc2VwYXJhdGUgYmluZGluZ3MgcGF0Y2hlcyBi
ZWZvcmUgeW91IGRvIHNvLiBUaGUgYmlnIGlzc3VlCnRoZXJlIGlzIGhvdyB0byBuYW1lIHRoZW0g
dG8gd29yayBhY3Jvc3MgU29DIGZhbWlsaWVzLiBGb3IgdGhhdCByZWFzb24KbXkgc3lzY29uIHNl
cmllcyBkaWQgbm90IGluY2x1ZGUgZHQtYmluZGluZ3MsIHRvIG5vdCBob2xkIHVzIHVwIHdpdGgK
dGhlbS4gRHJvcCBpdCBoZXJlIGZvciBub3c/CgoyKSBZb3UgbXVzdCByZXRhaW4gdGhlIHZhbGlk
IG9yZGVyLCBoZXJlIGRlZmluZWQgYnkgdGhlIHN5c2NvbiBiaW5kaW5nLgpMaWtlIEkgc2FpZCBm
b3IgdGhlIE1qb2xuaXIgLmR0cy4gSWYgd2UgY29uc2VxdWVudGx5IHVzZSBZQU1MIHNjaGVtYXMs
CnRoZW4geW91IGNhbiBjaGVjayB5b3VyIC5kdHMgZmlsZXMgd2l0aCBtYWtlIGR0YnNfY2hlY2sg
YW5kIGhvcGVmdWxseQpub3RpY2UgaXQgeW91cnNlbGYgYmVmb3JlIEkgY29tcGxhaW4uIC5kdHNp
IHBhdGNoZXMgYXJlIHNhZGx5IG1pc3NpbmcgaW4KdGhpcyBzZXJpZXMsIHNvIHlvdSBjb3VsZCBv
bmx5IHJ1biBsaW1pdGVkIG1ha2UgZHRfYmluZGluZ19jaGVjay4KCj4gKwkJcmVnID0gPDB4OTgw
MDAwMDAgMHgxMDAwPjsKPiArCj4gKwkJY2M6IGNjQDk4MDAwMDAwIHsKCmNjOiBjbG9jay1jb250
cm9sbGVyQC4uLgoKQnV0IHlvdSBtdXN0IG5vdCBnaXZlIGEgdW5pdCBhZGRyZXNzIGluIGFic2Vu
Y2Ugb2YgcmVnLgoKPiArCQkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDE2MTktY2MiOwoKcmVn
IG1pc3NpbmcuIFdoZW4geW91IGFkZCBpdCwgeW91IG5lZWQgI2FkZHJlc3MtY2VsbHMgYW5kICNz
aXplLWNlbGxzCmFib3ZlLCB0b28uIEFsc28gcmFuZ2VzIGZvciBjb21wbGV0ZW5lc3MuIEluIFlB
TUwgaXQgZ2V0cyBjb21waWxlLXRlc3RlZAphbmQgc2hvdWxkIG5vdCBzcHJvdXQgd2FybmluZ3Mu
Cgo+ICsJCQkjY2xvY2stY2VsbHMgPSA8MT47Cj4gKwkJCSNyZXNldC1jZWxscyA9IDwxPjsKCkJU
VyBnaXZlbiB0aGUgY29tcGxleCBtYXBwaW5ncyB0aGF0IHlvdSBhdHRlbXB0LCB3b3VsZG4ndCBp
dCBiZSBlYXNpZXIKdG8gdXNlICNyZXNldC1jZWxscyA9IDwyPj8gSW4gdGhhdCBjYXNlIG9uZSBj
b3VsZCBhZ2FpbiBhcmd1ZSB0aGF0IGEKcGVyLWJhbmsgbm9kZS9kcml2ZXIgd2lsbCBiZSBlYXNp
ZXIuCgo+ICsJCX07Cj4gKwl9OwoKSGF2ZW4ndCB0ZXN0ZWQgdGhpcyB5ZXQsIGJ1dCBJIHdvbmRl
ciB3aGV0aGVyIHdlIGNvdWxkIGp1c3QgdXNlCiJyZWFsdGVrLHJ0ZDE2MTktY3J0IiBmb3IgdGhl
IGNsb2NrIGNvbnRyb2xsZXIgZGlyZWN0bHkgYW5kIHN0aWxsIHVzZQp0aGUgc2FtZSBub2RlIGFz
IHN5c2NvbiBtZmQ/IElmIG5vdCwgaXQgbWlnaHQgYmUgbmljZSB0byBkZXNjcmliZSBpbiB0aGUK
Y2hpbGQgbm9kZSdzIHJlZyB3aGF0IGV4YWN0bHkgaXMgY292ZXJlZCBpbnN0ZWFkIG9mIGp1c3Qg
PDB4MCAweDEwMDA+LgoKTXkgcG9pbnQgaGVyZSBpcyB0aGF0IHRoZSBEVCBkZXNjcmliZXMgdGhl
IGhhcmR3YXJlLCBidXQgdGhhdCBkb2VzIG5vdApkaWN0YXRlIGhvdyB0aGUgTGludXggZHJpdmVy
cyBiaW5kIHRvIERULiBjbGsgaXMgbm8gcGxhdGZvcm1fZHJpdmVyLCBzbwp5b3UgY2FuIGhhdmUg
Y2xrIGFuZCByZXNldCBkcml2ZXJzIGJpbmRpbmcgdG8gdGhlIHNhbWUgRFQgY29tcGF0aWJsZS4K
RGlkIHRoYXQgZm9yIFNUTTMyIENSVCBvbmNlLiBIb3dldmVyLCBkb24ndCBoaWRlIHRoZSBiaW5k
aW5nIHVuZGVyIGNsb2NrCmlmIGl0J3MgcmVhbGx5IG1mZCAtIHNvbWVvbmUgbG9va2luZyBmb3Ig
cmVzZXQgYmluZGluZ3MgaXMgZ29pbmcgdG8gaGF2ZQphIGhhcmQgdGltZSBmaW5kaW5nIHRoZW0g
dW5kZXIgY2xvY2suCgo+ICsKPiArCWNvbnN1bWVyIHsKPiArCQljbG9ja3MgPSA8JmNjIENDX0NL
RV9HU1BJPjsKPiArCX07Cj4gKwoKUmVnYXJkcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUg
U29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdl
cm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
