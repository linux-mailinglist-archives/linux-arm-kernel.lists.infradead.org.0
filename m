Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 427321F6973
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:55:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yL44pwUdfScebc/VkL/VLt93PaTijnvR6Y/kRiWXW1g=; b=Lsh8jixX4DiC91k0dKloPQYUi
	pFSr6vWlXPDiFSOmSb6ouiJezMWl+bBhwSgtE1DjQdMguELYicC8Qi6mcspG+O6hc8E0iCQA2d5Zd
	fj1xp2AHexFudO+hbX7NWw9c2P3QO4PKlfPiBPheU5T4RBJyTA+/Rhek1Ta+2FcEM2U50qh2uiV6O
	HvU7+hIWV7wFX3I7fZTgCpTnwZjBbIZuS/7fHabR6NbF//fJJ5/dGBDe2FJgMG3Z0Uj8LCTT6dtbB
	OTTpkHdojIu52j7Dju3D5RCc4j4dt3EdvmsvU9P4mrffmiqWOEt/0cfFmkiiBs06KrnI7NVB0rQHB
	PRIc9rc4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNfU-0007yg-Ro; Thu, 11 Jun 2020 13:54:56 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNfM-0007xA-8y
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:54:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 6D067AB76;
 Thu, 11 Jun 2020 13:54:44 +0000 (UTC)
Subject: Re: [PATCH v2 5/5] ARM: mstar: Add dts for 70mai midrive d08
To: Daniel Palmer <daniel@0x0f.com>
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-6-daniel@0x0f.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <a626d8a5-16c2-8f0a-b131-c124c06b0317@suse.de>
Date: Thu, 11 Jun 2020 15:54:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200610090421.3428945-6-daniel@0x0f.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_065448_609651_8D44EDDB 
X-CRM114-Status: GOOD (  22.26  )
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
 Will Deacon <will@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, k@japko.eu,
 Christian Lamparter <chunkeey@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QlRXIEkgdGhpbmsgdGhlIHN1YmplY3QgY29udmVudGlvbiBoYXMgYmVlbiAiQVJNOiBkdHM6IC4u
LiIsIHdpdGggIkFSTTogCm1zdGFyOiAuLi4iIG1vcmUgZm9yIG1hY2gtbXN0YXIuCgpBbSAxMC4w
Ni4yMCB1bSAxMTowNCBzY2hyaWViIERhbmllbCBQYWxtZXI6Cj4gQWRkcyBpbml0YWwgc3VwcG9y
dCBmb3IgdGhlIDcwbWFpIG1pZHJpdmUgZDA4IGRhc2ggY2FtZXJhLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IERhbmllbCBQYWxtZXIgPGRhbmllbEAweDBmLmNvbT4KPiAtLS0KPiAgIGFyY2gvYXJtL2Jv
b3QvZHRzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICB8ICAzICsrLQo+ICAgLi4uL2Jvb3Qv
ZHRzL21lcmN1cnk1LXNzYzgzMzZuLW1pZHJpdmUwOC5kdHMgIHwgMjUgKysrKysrKysrKysrKysr
KysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMvbWVyY3VyeTUtc3NjODMz
Nm4tbWlkcml2ZTA4LmR0cwo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9NYWtl
ZmlsZSBiL2FyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlCj4gaW5kZXggNGE1ZjgwNzVhNGY2Li4z
NWM3ZWNjNTJjNjAgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUKPiAr
KysgYi9hcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZQo+IEBAIC0xMzQ0LDcgKzEzNDQsOCBAQCBk
dGItJChDT05GSUdfQVJDSF9NRURJQVRFSykgKz0gXAo+ICAgZHRiLSQoQ09ORklHX0FSQ0hfTUlM
QkVBVVQpICs9IG1pbGJlYXV0LW0xMHYtZXZiLmR0Ygo+ICAgZHRiLSQoQ09ORklHX0FSQ0hfTVNU
QVJWNykgKz0gXAo+ICAgCWluZmluaXR5LW1zYzMxMy1icmVhZGJlZV9jcnVzdC5kdGIgXAo+IC0J
aW5maW5pdHkzLW1zYzMxM2UtYnJlYWRiZWUuZHRiCj4gKwlpbmZpbml0eTMtbXNjMzEzZS1icmVh
ZGJlZS5kdGIgXAo+ICsJbWVyY3VyeTUtc3NjODMzNm4tbWlkcml2ZTA4LmR0Ygo+ICAgZHRiLSQo
Q09ORklHX0FSQ0hfWlgpICs9IHp4Mjk2NzAyLWFkMS5kdGIKPiAgIGR0Yi0kKENPTkZJR19BUkNI
X0FTUEVFRCkgKz0gXAo+ICAgCWFzcGVlZC1hc3QyNTAwLWV2Yi5kdGIgXAo+IGRpZmYgLS1naXQg
YS9hcmNoL2FybS9ib290L2R0cy9tZXJjdXJ5NS1zc2M4MzM2bi1taWRyaXZlMDguZHRzIGIvYXJj
aC9hcm0vYm9vdC9kdHMvbWVyY3VyeTUtc3NjODMzNm4tbWlkcml2ZTA4LmR0cwo+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi40ZWU1MGVjZjZhYjEKPiAtLS0gL2Rl
di9udWxsCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvbWVyY3VyeTUtc3NjODMzNm4tbWlkcml2
ZTA4LmR0cwo+IEBAIC0wLDAgKzEsMjUgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjAKPiArLyoKPiArICogQ29weXJpZ2h0IChjKSAyMDE5IHRoaW5neS5qcC4KPiArICog
QXV0aG9yOiBEYW5pZWwgUGFsbWVyIDxkYW5pZWxAdGhpbmd5LmpwPgo+ICsgKi8KPiArCj4gKy9k
dHMtdjEvOwo+ICsjaW5jbHVkZSAibWVyY3VyeTUtc3NjODMzNm4uZHRzaSIKPiArCj4gKy8gewo+
ICsJbW9kZWwgPSAibWlkcml2ZSBkMDgiOwoKQ291bGRuJ3QgZmluZCB0aGlzIG9uIHRoZWlyIHdl
YnNpdGUuIFNob3VsZCB0aGlzIGJlICI3MG1haSBtaWRyaXZlIC4uLiIgCm9yIGlzICJtaWRyaXZl
IiBhIGRpZmZlcmVudCBicmFuZD8KCj4gKwljb21wYXRpYmxlID0gIjcwbWFpLG1pZHJpdmVkMDgi
LCAibXN0YXIsbWVyY3VyeTUiOwoKSGF2ZSB5b3UgY29uc2lkZXJlZCBuYW1pbmcgaXQgIjcwbWFp
LG1pZHJpdmUtZDA4IiBmb3IgYmV0dGVyIApyZWFkYWJpbGl0eT8gKGFmZmVjdHMgMS81KQoKPiAr
Cj4gKwlhbGlhc2VzIHsKPiArCQlzZXJpYWwwID0gJnBtX3VhcnQ7Cj4gKwl9Owo+ICsKPiArCWNo
b3NlbiB7Cj4gKwkJc3Rkb3V0LXBhdGggPSAic2VyaWFsMDoxMTUyMDBuOCI7Cj4gKwl9Owo+ICt9
Owo+ICsKPiArJnBtX3VhcnQgewo+ICsJc3RhdHVzID0gIm9rYXkiOwoKY2xvY2stZnJlcXVlbmN5
PwoKPiArfTsKClJlZ2FyZHMsCkFuZHJlYXMKCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBH
ZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBG
ZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
