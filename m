Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70955BB803
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 17:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Uzhp2v5rrnf29Anl9PgcCR1kSGkzN3TSMf4dI6MXWe4=; b=uZhKCNvzgezj5ISy422QNX0Y7
	tMh7FfhCyk1ZYLGWNArr7GgJ0Ht3kdmvSAweIw1YYUGsInii+FsZIZ1cHggj6ItjCC/OCvzLb4V7g
	s+vfyOG1/bqhyCRJU+Oro+4HAsivcLDhUSAlnw3mkSAaibc0DnfZDJfaLxDFqwDHC62AKDncr1gkl
	EoBwoC6qGxSVVQrf58o81faq8zKknAOWNEAnMNA1pY2/jisr1/BWrcrtq6ashqUMpM3xKQArLOCMz
	xxM94ZMEmvBXPBgWLPppVN5UtKDA6IJoGUY557h4Ns6jtqvLVD1H+jpgZXkxeLZ4RSLHBwmuruVtI
	UprVOoZuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQME-0000Tp-Mq; Mon, 23 Sep 2019 15:34:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQM0-0000T6-Cq; Mon, 23 Sep 2019 15:34:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 45F75283B93
Subject: Re: [PATCH] drm/rockchip: Add AFBC support
To: Neil Armstrong <narmstrong@baylibre.com>, dri-devel@lists.freedesktop.org
References: <20190923122014.18229-1-andrzej.p@collabora.com>
 <da7f0c5e-9ca9-020d-5366-2b21a42acdff@baylibre.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <332335a5-dc7f-2cce-601f-f73e9243dee5@collabora.com>
Date: Mon, 23 Sep 2019 17:34:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <da7f0c5e-9ca9-020d-5366-2b21a42acdff@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_083420_571561_F6C16D99 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVhciBBbGwsCgpBcyBhIHJlc3VsdCBvZiBteSBtaXN0YWtlIEkndmUgc2VudCB0aGlzIHBhdGNo
IHdpdGggYW4gaW5jb3JyZWN0IFNPQiBjaGFpbi4gClBsZWFzZSBraW5kbHkgZGlzcmVnYXJkIHRo
aXMgcGF0Y2guCgpATmVpbDogdGhhbmsgeW91IGZvciB5b3VyIHRpbWUgeW91IHNwZW50IHJldmll
d2luZyBpdCBhbmQgYW5zd2VyaW5nIGFuZCBJJ20gCnNvcnJ5IGl0J3MgdG8gbm8gZWZmZWN0LgpA
RXplcXVpZWwsIEBUb21ldTogSSBhcG9sb2dpemUgdG8geW91LiBNeSBtaXN0YWtlLgoKUmVnYXJk
cywKCkFuZHJ6ZWogUGlldHJhc2lld2ljegoKClcgZG5pdSAyMy4wOS4yMDE5IG/CoDE1OjUzLCBO
ZWlsIEFybXN0cm9uZyBwaXN6ZToKPiBPbiAyMy8wOS8yMDE5IDE0OjIwLCBBbmRyemVqIFBpZXRy
YXNpZXdpY3ogd3JvdGU6Cj4+IEZyb206IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFi
b3JhLmNvbT4KPj4KPj4gQUZCQyBpcyBhIHByb3ByaWV0YXJ5IGxvc3NsZXNzIGltYWdlIGNvbXBy
ZXNzaW9uIHByb3RvY29sIGFuZCBmb3JtYXQuCj4+IEl0IGhlbHBzIHJlZHVjZSBtZW1vcnkgYmFu
ZHdpZHRoIG9mIHRoZSBncmFwaGljcyBwaXBlbGluZSBvcGVyYXRpb25zLgo+PiBUaGlzLCBpbiB0
dXJuLCBpbXByb3ZlcyBwb3dlciBlZmZpY2llbmN5Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBFemVx
dWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4+IFtsb2NraW5nIGltcHJvdmVt
ZW50c10KPj4gU2lnbmVkLW9mZi1ieTogVG9tZXUgVml6b3NvIDx0b21ldS52aXpvc29AY29sbGFi
b3JhLmNvbT4KPj4gW3NxdWFzaGluZyB0aGUgYWJvdmUsIGNvbW1pdCBtZXNzYWdlIGFuZCBSb2Nr
Y2hpcCBBRkJDIG1vZGlmaWVyXQo+PiBTaWduZWQtb2ZmLWJ5OiBBbmRyemVqIFBpZXRyYXNpZXdp
Y3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMgIHwgMjcgKysrKysrCj4+ICAgZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyB8IDk0ICsrKysrKysrKysrKysrKysrKysr
LQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmggfCAxMiAr
KysKPj4gICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9wX3JlZy5jIHwgMTgg
KysrKwo+PiAgIGluY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oICAgICAgICAgICAgICAgfCAg
MyArCj4+ICAgNSBmaWxlcyBjaGFuZ2VkLCAxNTEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKPj4KPiAKPiBbLi4uXQo+IAo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2RybS9kcm1f
Zm91cmNjLmggYi9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaAo+PiBpbmRleCAzZmVlYWEz
Zjk4N2EuLmJhNmNhZjA2YzgyNCAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS91YXBpL2RybS9kcm1f
Zm91cmNjLmgKPj4gKysrIGIvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmgKPj4gQEAgLTc0
Miw2ICs3NDIsOSBAQCBleHRlcm4gIkMiIHsKPj4gICAgKi8KPj4gICAjZGVmaW5lIEFGQkNfRk9S
TUFUX01PRF9CQ0ggICAgICgxVUxMIDw8IDExKQo+PiAgIAo+PiArI2RlZmluZSBBRkJDX0ZPUk1B
VF9NT0RfUk9DS0NISVAgXAo+PiArCShBRkJDX0ZPUk1BVF9NT0RfQkxPQ0tfU0laRV8xNngxNiB8
IEFGQkNfRk9STUFUX01PRF9TUEFSU0UpCj4gCj4gVGhpcyBkZWZpbmUgbG9va3MgdXNlbGVzcywg
d2hhdCdzIFJvY2tjaGlwIHNwZWNpZmljIGhlcmUgPwo+IAo+IE5laWwKPiAKPj4gKwo+PiAgIC8q
Cj4+ICAgICogQWxsd2lubmVyIHRpbGVkIG1vZGlmaWVyCj4+ICAgICoKPj4KPiAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
