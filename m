Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C7E3666A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 23:10:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KxqTKpMNtXyPzEOyZwefPaaxmzVzidihWbJoAMwnfnM=; b=bqcgs+QDgQMzlM
	aGYuXJZ42TZtfjnu4u/KeoO6Cpi/RV9K/UDVZZ+/5QMFqGM/ocw4nIX1rMQzIvTG2adkwPlGuElIm
	P9ZkmsXIsHi9IO8Rl+vh68ja6BYM+ftAVT1w0zi6YocA5V7wLaGCj19B0+XKCYVVGQVf5zF5N5keA
	G2eKXuGjPpAKIf/Y3ZcS6oQL3409RAS0IylfNxwzVQFNwtPz8s11eqqsKXYw4fjw12Pib1I9fnLKg
	IWRHLhBNZLR6Bki/Zx+tCLd7rs0YTkoj3I+Er4EjMRMGDHdInlmq6VmXOdUJkchtTOUTHDN4oPq6c
	Bh1tPK2fLrDKkmhVB1wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYdBA-0004ZS-6i; Wed, 05 Jun 2019 21:10:40 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYdB3-0004Z0-Mg
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 21:10:35 +0000
X-Originating-IP: 93.29.109.196
Received: from collins (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 802F8E0002;
 Wed,  5 Jun 2019 21:10:18 +0000 (UTC)
Message-ID: <e45ea296476b2966a3800552dae259d7117a7751.camel@bootlin.com>
Subject: Re: [PATCH 6/7] media: cedrus: Add infra for extra buffers
 connected to capture buffers
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej =?UTF-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>, Maxime Ripard
 <maxime.ripard@bootlin.com>
Date: Wed, 05 Jun 2019 23:10:17 +0200
In-Reply-To: <3029072.frl2UAsRGt@jernej-laptop>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-7-jernej.skrabec@siol.net>
 <20190603121859.sbphcjy75kmed6oc@flea> <3029072.frl2UAsRGt@jernej-laptop>
User-Agent: Evolution 3.32.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_141034_058693_08EE5D16 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpMZSBsdW5kaSAwMyBqdWluIDIwMTkgw6AgMTc6NDggKzAyMDAsIEplcm5laiDFoGtyYWJl
YyBhIMOpY3JpdCA6Cj4gRG5lIHBvbmVkZWxqZWssIDAzLiBqdW5paiAyMDE5IG9iIDE0OjE4OjU5
IENFU1QgamUgTWF4aW1lIFJpcGFyZCBuYXBpc2FsKGEpOgo+ID4gSGksCj4gPiAKPiA+IE9uIFRo
dSwgTWF5IDMwLCAyMDE5IGF0IDExOjE1OjE1UE0gKzAyMDAsIEplcm5laiBTa3JhYmVjIHdyb3Rl
Ogo+ID4gPiBIMjY0IGFuZCBIRVZDIGVuZ2luZXMgbmVlZCBhZGRpdGlvbmFsIGJ1ZmZlcnMgZm9y
IGVhY2ggY2FwdHVyZSBidWZmZXIuCj4gPiA+IEgyNjQgZW5naW5lIGhhcyB0aGlzIGN1cnJlbnRs
eSBzb2x2ZWQgYnkgYWxsb2NhdGluZyBmaXhlZCBzaXplIHBvb2wsCj4gPiA+IHdoaWNoIGlzIG5v
dCBpZGVhbC4gTW9zdCBvZiB0aGUgdGltZSBwb29sIHNpemUgaXMgbXVjaCBiaWdnZXIgdGhhbiBp
dAo+ID4gPiBuZWVkcyB0byBiZS4KPiA+ID4gCj4gPiA+IElkZWFsbHksIGV4dHJhIGJ1ZmZlciBz
aG91bGQgYmUgYWxsb2NhdGVkIGF0IGJ1ZmZlciBpbml0aWFsaXphdGlvbiwgYnV0Cj4gPiA+IHRo
YXQncyBub3QgZWZmaWNpZW50LiBJdCdzIHNpemUgaW4gSDI2NCBkZXBlbmRzIG9uIGZsYWdzIHNl
dCBpbiBTUFMsIGJ1dAo+ID4gPiB0aGF0IGluZm9ybWF0aW9uIGlzIG5vdCBhdmFpbGFibGUgaW4g
YnVmZmVyIGluaXQgY2FsbGJhY2suCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWog
U2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPiA+IC0tLQo+ID4gPiAKPiA+ID4g
IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzLmggICB8ICA0ICsrKysK
PiA+ID4gIC4uLi9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfdmlkZW8uYyB8IDE5
ICsrKysrKysrKysrKysrKysrKysKPiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9u
cygrKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54
aS9jZWRydXMvY2VkcnVzLmgKPiA+ID4gYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2Vk
cnVzL2NlZHJ1cy5oIGluZGV4Cj4gPiA+IGQ4ZTY3NzdlNWUyNy4uMTZjMWJkZmQyNDNhIDEwMDY0
NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1cy5o
Cj4gPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzLmgK
PiA+ID4gQEAgLTgxLDYgKzgxLDEwIEBAIHN0cnVjdCBjZWRydXNfcnVuIHsKPiA+ID4gCj4gPiA+
ICBzdHJ1Y3QgY2VkcnVzX2J1ZmZlciB7Cj4gPiA+ICAKPiA+ID4gIAlzdHJ1Y3QgdjRsMl9tMm1f
YnVmZmVyICAgICAgICAgIG0ybV9idWY7Cj4gPiA+IAo+ID4gPiArCXZvaWQJCSpleHRyYV9idWY7
Cj4gPiA+ICsJZG1hX2FkZHJfdAlleHRyYV9idWZfZG1hOwo+ID4gPiArCXNzaXplX3QJCWV4dHJh
X2J1Zl9zaXplOwo+ID4gPiArCj4gPiA+IAo+ID4gPiAgCXVuaW9uIHsKPiA+ID4gIAkKPiA+ID4g
IAkJc3RydWN0IHsKPiA+ID4gIAkJCj4gPiA+ICAJCQl1bnNpZ25lZCBpbnQJCQlwb3NpdGlvbjsK
PiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2Vk
cnVzL2NlZHJ1c192aWRlby5jCj4gPiA+IGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2Nl
ZHJ1cy9jZWRydXNfdmlkZW8uYyBpbmRleAo+ID4gPiA2ODFkZmUzMzY3YTYuLmQ3NTZlMGU2OTYz
NCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9j
ZWRydXNfdmlkZW8uYwo+ID4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2Vk
cnVzL2NlZHJ1c192aWRlby5jCj4gPiA+IEBAIC00MTEsNiArNDExLDI0IEBAIHN0YXRpYyB2b2lk
IGNlZHJ1c19xdWV1ZV9jbGVhbnVwKHN0cnVjdCB2YjJfcXVldWUKPiA+ID4gKnZxLCB1MzIgc3Rh
dGUpPiAKPiA+ID4gIAl9Cj4gPiA+ICAKPiA+ID4gIH0KPiA+ID4gCj4gPiA+ICtzdGF0aWMgdm9p
ZCBjZWRydXNfYnVmX2NsZWFudXAoc3RydWN0IHZiMl9idWZmZXIgKnZiKQo+ID4gPiArewo+ID4g
PiArCXN0cnVjdCB2YjJfcXVldWUgKnZxID0gdmItPnZiMl9xdWV1ZTsKPiA+ID4gKwo+ID4gPiAr
CWlmICghVjRMMl9UWVBFX0lTX09VVFBVVCh2cS0+dHlwZSkpIHsKPiA+ID4gKwkJc3RydWN0IGNl
ZHJ1c19jdHggKmN0eCA9IHZiMl9nZXRfZHJ2X3ByaXYodnEpOwo+ID4gPiArCQlzdHJ1Y3QgY2Vk
cnVzX2J1ZmZlciAqY2VkcnVzX2J1ZjsKPiA+ID4gKwo+ID4gPiArCQljZWRydXNfYnVmID0gdmIy
X3RvX2NlZHJ1c19idWZmZXIodnEtPmJ1ZnNbdmItPmluZGV4XSk7Cj4gPiA+ICsKPiA+ID4gKwkJ
aWYgKGNlZHJ1c19idWYtPmV4dHJhX2J1Zl9zaXplKQo+ID4gPiArCQkJZG1hX2ZyZWVfY29oZXJl
bnQoY3R4LT5kZXYtPmRldiwKPiA+ID4gKwkJCQkJICBjZWRydXNfYnVmLQo+ID4gZXh0cmFfYnVm
X3NpemUsCj4gPiA+ICsJCQkJCSAgY2VkcnVzX2J1Zi0KPiA+IGV4dHJhX2J1ZiwKPiA+ID4gKwkJ
CQkJICBjZWRydXNfYnVmLQo+ID4gZXh0cmFfYnVmX2RtYSk7Cj4gPiA+ICsJfQo+ID4gPiArfQo+
ID4gPiArCj4gPiAKPiA+IEknbSByZWFsbHkgbm90IGEgZmFuIG9mIGFsbG9jYXRpbmcgc29tZXRo
aW5nIHNvbWV3aGVyZSwgYW5kIGZyZWVpbmcgaXQKPiA+IHNvbWV3aGVyZSBlbHNlLiBNYWtpbmcg
c3VyZSB5b3UgZG9uJ3QgbGVhayBzb21ldGhpbmcgaXMgaGFyZCBlbm91Z2ggdG8KPiA+IG5vdCBo
YXZlIHNvbWUgbm9uLXRyaXZpYWwgYWxsb2NhdGlvbiBzY2hlbWUuCj4gCj4gT2ssIHdoYXQgYWJv
dXQgaW50cm9kdWNpbmcgdHdvIG5ldyBvcHRpb25hbCBtZXRob2RzIGluIGVuZ2luZSBjYWxsYmFj
a3MsIAo+IGJ1ZmZlcl9pbml0IGFuZCBidWZmZXJfZGVzdHJveSwgd2hpY2ggd291bGQgYmUgY2Fs
bGVkIGZyb20gY2VkcnVzX2J1Zl9pbml0KCkgYW5kIAo+IGNlZHJ1c19idWZfY2xlYW51cCgpLCBy
ZXNwZWN0aXZlbHkuIFRoYXQgd2F5IGFsbCAoZGUpYWxsb2NhdGlvbiBsb2dpYyBzdGF5cyAKPiB3
aXRoaW4gdGhlIHNhbWUgZW5naW5lLgoKSSdtIHRoaW5raW5nIHRoYXQgd2Ugc2hvdWxkIGhhdmUg
djRsMi1mcmFtZXdvcmstbGV2ZWwgcGVyLWNvZGVjIGhlbHBlcnMKdG8gcHJvdmlkZSBvcHMgZm9y
IHRoZXNlIGtpbmRzIG9mIHRoaW5ncywgc2luY2UgdGhleSB0ZW5kIGJlIHF1aXRlCmNvbW1vbiBh
Y3Jvc3MgZGVjb2RlcnMuCgpDaGVlcnMsCgpQYXVsCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
