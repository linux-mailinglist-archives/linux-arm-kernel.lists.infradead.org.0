Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3352E1F683E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 14:49:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ewc1gH21t6uAGao2C6R7Px58MPBxNYjOPrwHVZDXC8o=; b=Rt6VYrVvxa0R1KllkivDXziR2
	BDJrR+buF7CFjavwslnhDM5wsnJYBSHQgZiKTlvkF9iiAZpmXA57lrDTLd3E1udnD94QmigpCtjqy
	Ux1JC1THTBCtC3URXH9ufMs75i9S+6A5laTmBo0e0ZRFFrOGEHc3RHzuOqMpYnXm60Hd/5BkoH+vi
	Xp95pIis9umXlCvVb3LFP3YydgZm0IConxbBIXCXRxW8tIGTbvI7cToh8+nCHtUOuIVsl3iCu0DSx
	p+f2aaY25rGCPLcglqci3uY5o3HxNV2GnBJSmpFbHdsNVlPOj6LzpnhOKXG4HCC0kzWUs2LtaOHiJ
	1y/K7xHow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjMe6-0005t6-Up; Thu, 11 Jun 2020 12:49:26 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjMdz-0005sH-BS
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 12:49:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E4BD1ACAE;
 Thu, 11 Jun 2020 12:49:12 +0000 (UTC)
Subject: Re: [PATCH v2 2/5] ARM: mstar: Add machine for MStar/Sigmastar
 infinity/mercury family ARMv7 SoCs
To: Daniel Palmer <daniel@0x0f.com>
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-3-daniel@0x0f.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <976e789e-edd7-c44d-ea99-840ecb883ff8@suse.de>
Date: Thu, 11 Jun 2020 14:49:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200610090421.3428945-3-daniel@0x0f.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_054919_538602_0DB43A65 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Nathan Huckleberry <nhuck15@gmail.com>,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 allen <allen.chen@ite.com.tw>, tim.bird@sony.com,
 Maxime Ripard <mripard@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, k@japko.eu,
 Christian Lamparter <chunkeey@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTAuMDYuMjAgdW0gMTE6MDQgc2NocmllYiBEYW5pZWwgUGFsbWVyOgo+IEluaXRpYWwgc3Vw
cG9ydCBmb3IgdGhlIE1TdGFyL1NpZ21hc3RhciBpbmZpbml0eS9tZXJjdXJ5IHNlcmllcyBvZiBB
Uk12Nwo+IGJhc2VkIElQIGNhbWVyYSBhbmQgZGFzaGNhbSBTb0NzLgo+IAo+IFRoZXNlIGNoaXBz
IGFyZSBpbnRlcmVzdGluZyBpbiB0aGF0IHRoZXkgY29udGFpbiBhIENvcnRleCBBNywKCiJDb3J0
ZXgtQTciCgo+IHBlcmlwaGVyYWxzIGFuZCBzeXN0ZW0gbWVtb3J5IGluIGEgc2luZ2xlIHRpbnkg
UUZOIHBhY2thZ2UgdGhhdAo+IGNhbiBiZSBoYW5kIHNvbGRlcmVkIGFsbG93aW5nIGFsbW9zdCBh
bnlvbmUgdG8gZW1iZWQgTGludXgKCiJzb2xkZXJlZCwgYWxsb3dpbmciPwoKPiBpbiB0aGVpciBw
cm9qZWN0cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgUGFsbWVyIDxkYW5pZWxAMHgwZi5j
b20+Cj4gLS0tCj4gICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICB8ICAxICsKPiAgIGFy
Y2gvYXJtL0tjb25maWcgICAgICAgICAgICAgIHwgIDIgKwo+ICAgYXJjaC9hcm0vTWFrZWZpbGUg
ICAgICAgICAgICAgfCAgMSArCj4gICBhcmNoL2FybS9tYWNoLW1zdGFyL0tjb25maWcgICB8IDI2
ICsrKysrKysrKysrKysKPiAgIGFyY2gvYXJtL21hY2gtbXN0YXIvTWFrZWZpbGUgIHwgIDEgKwo+
ICAgYXJjaC9hcm0vbWFjaC1tc3Rhci9tc3RhcnY3LmMgfCA3MiArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwo+ICAgNiBmaWxlcyBjaGFuZ2VkLCAxMDMgaW5zZXJ0aW9ucygrKQo+
ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21hY2gtbXN0YXIvS2NvbmZpZwo+ICAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21hY2gtbXN0YXIvTWFrZWZpbGUKPiAgIGNyZWF0ZSBt
b2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLW1zdGFyL21zdGFydjcuYwo+IAo+IGRpZmYgLS1naXQg
YS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCj4gaW5kZXggMWNhNzdmOTdiOGVlLi43NTQ1MjE5
MzgzMDMgMTAwNjQ0Cj4gLS0tIGEvTUFJTlRBSU5FUlMKPiArKysgYi9NQUlOVEFJTkVSUwo+IEBA
IC0yMTE0LDYgKzIxMTQsNyBAQCBBUk0vTVN0YXIvU2lnbWFzdGFyIEFSTXY3IFNvQyBzdXBwb3J0
Cj4gICBNOglEYW5pZWwgUGFsbWVyIDxkYW5pZWxAdGhpbmd5LmpwPgo+ICAgTDoJbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnIChtb2RlcmF0ZWQgZm9yIG5vbi1zdWJzY3JpYmVy
cykKPiAgIFM6CU1haW50YWluZWQKPiArRjoJYXJjaC9hcm0vbWFjaC1tc3Rhci8KPiAgIEY6CURv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbXN0YXIueWFtbAo+ICAgCj4gICBB
Uk0vTkVDIE1PQklMRVBSTyA5MDAvYyBNQUNISU5FIFNVUFBPUlQKW3NuaXBdCgpUaGUgc29ydCBv
cmRlciBoYXMgcmVjZW50bHkgYmVlbiBjaGFuZ2VkIHRvIGNhc2Utc2Vuc2l0aXZlLCBpLmUuLCB5
b3UgCnNob3VsZCBhcHBlbmQgYXJjaCBhZnRlciBEb2N1bWVudGF0aW9uLgoKUmVnYXJkcywKQW5k
cmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3Ry
LiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIg
MzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
