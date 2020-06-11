Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A365A1F694C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ls71xIhXdpMgrZ7RrAxI9qPO5KUJEKQl1miWJgif6gg=; b=TZlmYVrjkTcIcppNdRmK9TH6d
	mfepvkYBFv6y6uBoXKE2RVV+J/0McL6FBeMUhDDmJpw42EQk/NMMmEZsWqAFAoRcpjtHCtouLHqHr
	Vno8e5LHZLfdSh6B2COWn+hfminQftBjCBVVyhuWOEMff6hrEdcRga/7ZruBLTjM27wvqiL1ZzkXW
	bOplkQIAO+00kEvehDxw25iMLfdPKxlp2pAEVTCWZMG5XoOgjNjmHTJN9V5ZVh0hqbeZz8o+D8Fpm
	IZDbkyC2q1M4d1GrwsU/+X6Smt2cQ3ERpWh/jo4IFScheZRU84iUTxBUPFL/lNd8sS4NznATLbo0c
	A449DBAUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNWY-0002hl-Gd; Thu, 11 Jun 2020 13:45:42 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNWP-0002hB-KW
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:45:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id BCDABADCF;
 Thu, 11 Jun 2020 13:45:34 +0000 (UTC)
Subject: Re: [PATCH v2 4/5] ARM: mstar: Add dts for msc313(e) based BreadBee
 boards
To: Daniel Palmer <daniel@0x0f.com>
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-5-daniel@0x0f.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <42aa9e03-3fcc-a602-40db-cfbddef36b34@suse.de>
Date: Thu, 11 Jun 2020 15:45:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200610090421.3428945-5-daniel@0x0f.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_064533_968767_10105DBF 
X-CRM114-Status: GOOD (  23.82  )
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTAuMDYuMjAgdW0gMTE6MDQgc2NocmllYiBEYW5pZWwgUGFsbWVyOgo+IEJyZWFkQmVlIGlz
IGFuIG9wZW5zb3VyY2UgZGV2ZWxvcG1lbnQgYm9hcmQgYmFzZWQgb24gdGhlCj4gTVN0YXIgbXNj
MzEzKGUpIFNvQy4KPiAKPiBIYXJkd2FyZSBkZXRhaWxzLCBzY2hlbWF0aWNzIGFuZCBzbyBvbiBj
YW4gYmUgZm91bmQgYXQ6Cj4gaHR0cHM6Ly9naXRodWIuY29tL2JyZWFkYmVlL2JyZWFkYmVlCj4g
Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFBhbG1lciA8ZGFuaWVsQDB4MGYuY29tPgo+IC0tLQo+
ICAgYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgIHwgIDMgKysr
Cj4gICAuLi4vZHRzL2luZmluaXR5LW1zYzMxMy1icmVhZGJlZV9jcnVzdC5kdHMgICAgfCAyNSAr
KysrKysrKysrKysrKysrKysrCj4gICAuLi4vYm9vdC9kdHMvaW5maW5pdHkzLW1zYzMxM2UtYnJl
YWRiZWUuZHRzICAgfCAyNSArKysrKysrKysrKysrKysrKysrCj4gICAzIGZpbGVzIGNoYW5nZWQs
IDUzIGluc2VydGlvbnMoKykKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0
cy9pbmZpbml0eS1tc2MzMTMtYnJlYWRiZWVfY3J1c3QuZHRzCj4gICBjcmVhdGUgbW9kZSAxMDA2
NDQgYXJjaC9hcm0vYm9vdC9kdHMvaW5maW5pdHkzLW1zYzMxM2UtYnJlYWRiZWUuZHRzCj4gCj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlIGIvYXJjaC9hcm0vYm9vdC9k
dHMvTWFrZWZpbGUKPiBpbmRleCBlNmExY2FjMGJmYzcuLjRhNWY4MDc1YTRmNiAxMDA2NDQKPiAt
LS0gYS9hcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L01ha2VmaWxlCj4gQEAgLTEzNDIsNiArMTM0Miw5IEBAIGR0Yi0kKENPTkZJR19BUkNIX01FRElB
VEVLKSArPSBcCj4gICAJbXQ4MTI3LW1vb3NlLmR0YiBcCj4gICAJbXQ4MTM1LWV2YnAxLmR0Ygo+
ICAgZHRiLSQoQ09ORklHX0FSQ0hfTUlMQkVBVVQpICs9IG1pbGJlYXV0LW0xMHYtZXZiLmR0Ygo+
ICtkdGItJChDT05GSUdfQVJDSF9NU1RBUlY3KSArPSBcCj4gKwlpbmZpbml0eS1tc2MzMTMtYnJl
YWRiZWVfY3J1c3QuZHRiIFwKPiArCWluZmluaXR5My1tc2MzMTNlLWJyZWFkYmVlLmR0Ygo+ICAg
ZHRiLSQoQ09ORklHX0FSQ0hfWlgpICs9IHp4Mjk2NzAyLWFkMS5kdGIKPiAgIGR0Yi0kKENPTkZJ
R19BUkNIX0FTUEVFRCkgKz0gXAo+ICAgCWFzcGVlZC1hc3QyNTAwLWV2Yi5kdGIgXAo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbmZpbml0eS1tc2MzMTMtYnJlYWRiZWVfY3J1c3Qu
ZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW5maW5pdHktbXNjMzEzLWJyZWFkYmVlX2NydXN0LmR0
cwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi44YTgyN2M4ZmQ4
YjIKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW5maW5pdHktbXNj
MzEzLWJyZWFkYmVlX2NydXN0LmR0cwo+IEBAIC0wLDAgKzEsMjUgQEAKPiArLy8gU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiArLyoKPiArICogQ29weXJpZ2h0IChjKSAyMDE5IHRo
aW5neS5qcC4KPiArICogQXV0aG9yOiBEYW5pZWwgUGFsbWVyIDxkYW5pZWxAdGhpbmd5LmpwPgo+
ICsgKi8KPiArCj4gKy9kdHMtdjEvOwo+ICsjaW5jbHVkZSAiaW5maW5pdHktbXNjMzEzLmR0c2ki
Cj4gKwo+ICsvIHsKPiArCW1vZGVsID0gImJyZWFkYmVlLWNydXN0IjsKClRoaXMgaXMgdXNlci12
aXNpYmxlIHRleHQsIHNvICJCcmVhZEJlZSBDcnVzdCIgb3Igc28/Cgo+ICsJY29tcGF0aWJsZSA9
ICJ0aGluZ3lqcCxicmVhZGJlZS1jcnVzdCIsICJtc3RhcixpbmZpbml0eSI7Cj4gKwo+ICsJYWxp
YXNlcyB7Cj4gKwkJc2VyaWFsMCA9ICZwbV91YXJ0Owo+ICsJfTsKPiArCj4gKwljaG9zZW4gewo+
ICsJCXN0ZG91dC1wYXRoID0gInNlcmlhbDA6MTE1MjAwbjgiOwo+ICsJfTsKPiArfTsKPiArCj4g
KyZwbV91YXJ0IHsKPiArCXN0YXR1cyA9ICJva2F5IjsKCk1pZ2h0IHRoaXMgYmUgYSBtb3JlIHN1
aXRlZCBwbGFjZSBmb3IgdGVtcG9yYXJ5IGNsb2NrLWZyZXF1ZW5jeT8gRm9yIApsYWNrIG9mIGNs
ayBkcml2ZXIgaXQgd291bGQgc2VlbSB0byBkZXBlbmQgb24gdGhlIGJvYXJkJ3MgYm9vdGxvYWRl
ciAKcHJlLWNvbmZpZ3VyaW5nIGl0IHJhdGhlciB0aGFuIGJlaW5nIGEgZGVmYXVsdCBvZiB0aGUg
U29DLgoKPiArfTsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW5maW5pdHkzLW1z
YzMxM2UtYnJlYWRiZWUuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW5maW5pdHkzLW1zYzMxM2Ut
YnJlYWRiZWUuZHRzCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAu
LjQyM2JiMzJlNmI3NAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9p
bmZpbml0eTMtbXNjMzEzZS1icmVhZGJlZS5kdHMKPiBAQCAtMCwwICsxLDI1IEBACj4gKy8vIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gKy8qCj4gKyAqIENvcHlyaWdodCAoYykg
MjAxOSB0aGluZ3kuanAuCj4gKyAqIEF1dGhvcjogRGFuaWVsIFBhbG1lciA8ZGFuaWVsQHRoaW5n
eS5qcD4KPiArICovCj4gKwo+ICsvZHRzLXYxLzsKPiArI2luY2x1ZGUgImluZmluaXR5My1tc2Mz
MTNlLmR0c2kiCj4gKwo+ICsvIHsKPiArCW1vZGVsID0gImJyZWFkYmVlIjsKCkRpdHRvLCAiQnJl
YWRCZWUiPwoKPiArCWNvbXBhdGlibGUgPSAidGhpbmd5anAsYnJlYWRiZWUiLCAibXN0YXIsaW5m
aW5pdHkzIjsKPiArCj4gKwlhbGlhc2VzIHsKPiArCQlzZXJpYWwwID0gJnBtX3VhcnQ7Cj4gKwl9
Owo+ICsKPiArCWNob3NlbiB7Cj4gKwkJc3Rkb3V0LXBhdGggPSAic2VyaWFsMDoxMTUyMDBuOCI7
Cj4gKwl9Owo+ICt9Owo+ICsKPiArJnBtX3VhcnQgewo+ICsJc3RhdHVzID0gIm9rYXkiOwoKRGl0
dG8sIGNsb2NrLWZyZXF1ZW5jeT8KCj4gK307CgpSZWdhcmRzLApBbmRyZWFzCgotLSAKU1VTRSBT
b2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJu
YmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5i
ZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
