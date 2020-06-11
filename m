Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE26C1F6A7B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 17:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c2bIHJ3HgPzgd5W1LUu8mw85tXCs9d4KQEnReojVHsA=; b=pRqH3yHVgUBUePtgkn6RY/Gab
	Bjpa9bkkGcz9MVWe4ov1Bc6Phvi3fBDI6MxiWymeuOKP+pEQHyjDfaWAiQNqlPsLZf4cqjVTCa46H
	kGLxrtd28qa7xAJzLRjxevjniqc/G2YkVS5s5rAubp2JRyhlGvIJ2mHoQ956ihZ77gKLlhSYpq3uf
	yS9gFPfK/67/jyUbInFbFtcsPEsFSUI6Lb+3SD6taMcNOlOIbgmpe6CZoIaDDqRR9VO56E8e61BiE
	Y0VF0ky+Est0XVdQiV7Qnk8gpixFhWYFwGuMqrnjayfyfD9AXvy98OIPYt8Dlf15kYhYUXjIcu5yv
	dnijvW50A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjOha-0003OL-Mr; Thu, 11 Jun 2020 15:01:10 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjOhQ-0003N6-KR; Thu, 11 Jun 2020 15:01:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id AE830AEB1;
 Thu, 11 Jun 2020 15:00:59 +0000 (UTC)
Subject: Re: [PATCH v2 1/5] dt-bindings: arm: Initial MStar vendor prefixes
 and compatible strings
To: Daniel Palmer <daniel@0x0f.com>
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-2-daniel@0x0f.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <c4493f49-2ce8-ad23-0777-9812a1573782@suse.de>
Date: Thu, 11 Jun 2020 17:00:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200610090421.3428945-2-daniel@0x0f.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_080100_962876_55A2B0EA 
X-CRM114-Status: GOOD (  15.50  )
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
 Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, k@japko.eu,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KyBsaW51eC1tZWRpYXRlawoKQW0gMTAuMDYuMjAgdW0gMTE6MDMgc2NocmllYiBEYW5pZWwgUGFs
bWVyOgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVu
ZG9yLXByZWZpeGVzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVu
ZG9yLXByZWZpeGVzLnlhbWwKPiBpbmRleCBlZjZkNzViOTExM2EuLjE3NzBmYzc5NDAyNyAxMDA2
NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZp
eGVzLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9y
LXByZWZpeGVzLnlhbWwKWy4uLl0KPiBAQCAtNjc4LDYgKzY4MCw4IEBAIHBhdHRlcm5Qcm9wZXJ0
aWVzOgo+ICAgICAgIGRlc2NyaXB0aW9uOiBNaWNyb3NlbWkgQ29ycG9yYXRpb24KPiAgICAgIl5t
c2ksLioiOgo+ICAgICAgIGRlc2NyaXB0aW9uOiBNaWNyby1TdGFyIEludGVybmF0aW9uYWwgQ28u
IEx0ZC4KPiArICAiXm1zdGFyLC4qIjoKPiArICAgIGRlc2NyaXB0aW9uOiBNU3RhciBTZW1pY29u
ZHVjdG9yLCBJbmMuCgpEZXBlbmRpbmcgb24gd2hhdCBleGFjdGx5IGl0cyBsZWdhbCBzdGF0dXMg
aXMgdGhlc2UgZGF5cyAKKGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL01TdGFyKSwgeW91
IG1pZ2h0IGVpdGhlciBmb2xsb3cgdGhlIGJlbG93IApNSVBTIGV4YW1wbGUgb2YgZGVzY3JpYmlu
ZyBpdCBhcwoKIk1lZGlhVGVrIEluYy4gKGZvcm1lcmx5IE1TdGFyIFNlbWljb25kdWN0b3IsIElu
Yy4pIiwKCm9yIHlvdSBtaWdodCBleHRlbmQgYWJvdmUgZGVzY3JpcHRpb24gYXMKIk1TdGFyIFNl
bWljb25kdWN0b3IsIEluYy4gKGFjcXVpcmVkIGJ5IE1lZGlhVGVrIEluYy4pIiBpZiBpdCBzdGls
bCBleGlzdHMuCgpPciBhY2NvcmRpbmdseSAiWGlhbWVuIFhpbmdjaGVuIFRlY2hub2xvZ3kgQ28u
LCBMdGQuIChmb3JtZXJseSBNU3RhciAKU2VtaWNvbmR1Y3RvciwgSW5jLikiIGlmIGl0IHdhcyBy
ZW5hbWVkIHRvIFNpZ21hc3RhciAoaW4gd2hpY2ggY2FzZSB5b3UgCm1pZ2h0IGFkZGl0aW9uYWxs
eSByZXNlcnZlIHNzdGFyIHByZWZpeCBmb3IgU2lnbWFzdGFyIHdoaWxlIGF0IGl0KS4KCmh0dHA6
Ly93d3cuc2lnbWFzdGFyc2VtaS5jb20vZW4vZW50ZXJwcmlzZW5ld3MvaW5mby5hc3B4P2l0ZW1p
ZD00NDEKCj4gICAgICJebXRpLC4qIjoKPiAgICAgICBkZXNjcmlwdGlvbjogSW1hZ2luYXRpb24g
VGVjaG5vbG9naWVzIEx0ZC4gKGZvcm1lcmx5IE1JUFMgVGVjaG5vbG9naWVzIEluYy4pCj4gICAg
ICJebXVsdGktaW5ubywuKiI6ClsuLi5dCj4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJ
TlRBSU5FUlMKPiBpbmRleCA3N2EzZmE1ZTNlZGQuLjFjYTc3Zjk3YjhlZSAxMDA2NDQKPiAtLS0g
YS9NQUlOVEFJTkVSUwo+ICsrKyBiL01BSU5UQUlORVJTCj4gQEAgLTIxMTAsNiArMjExMCwxMiBA
QCBMOglsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcgKG1vZGVyYXRlZCBmb3Ig
bm9uLXN1YnNjcmliZXJzKQo+ICAgUzoJTWFpbnRhaW5lZAo+ICAgRjoJYXJjaC9hcm0vbWFjaC1w
eGEvbWlvYTcwMS5jCj4gICAKPiArQVJNL01TdGFyL1NpZ21hc3RhciBBUk12NyBTb0Mgc3VwcG9y
dAoKSGVyZSB5b3UgZG8gbWVudGlvbiBTaWdtYXN0YXIuCgo+ICtNOglEYW5pZWwgUGFsbWVyIDxk
YW5pZWxAdGhpbmd5LmpwPgo+ICtMOglsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcgKG1vZGVyYXRlZCBmb3Igbm9uLXN1YnNjcmliZXJzKQo+ICtTOglNYWludGFpbmVkCj4gK0Y6
CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbXN0YXIueWFtbAo+ICsKPiAg
IEFSTS9ORUMgTU9CSUxFUFJPIDkwMC9jIE1BQ0hJTkUgU1VQUE9SVAo+ICAgTToJTWljaGFlbCBQ
ZXRjaGtvdnNreSA8bWtwZXRjaEBpbnRlcm5vZGUub24ubmV0Pgo+ICAgUzoJTWFpbnRhaW5lZAoK
UmVnYXJkcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21i
SApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5k
w7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
