Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24989AF78D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 10:17:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0y9rzX6/nxiAYJd+gK6fAQ7VGAyfjVz5XoHWurTLI+c=; b=Cyw58FcvBEBbz9
	+rSsRooqZaT8AxH2CKpD+3Y46v4atLn2PX3f393JsQLPNFC6IMEipDMn60g6E0r+YChiMWsJ1RuP6
	gs/hDCZlEjzl1q7XegSuKx5o23N/qo5MYSQzvFHbVO7om4gLU7ZpY4LoQSt+xTmUs1TitcUzP8kZn
	x28gFmp3Y7waArvmNLqg/VBhLQfRBu6FucziCfOx/QmVahpflRnNvIvc+IwRAnJyL8Jw8car3V/gP
	L4moaX7yD3mpZtLHi60cfcKL+mKDPI7UilJxgByQWUrzn4g4qXTPS8awXojs11TirOn27RUkXmkOx
	I2n8l69+zXeXUvP785HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7xof-00022U-Le; Wed, 11 Sep 2019 08:17:29 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xoN-00021n-LC
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 08:17:13 +0000
Received: by mail-qt1-f194.google.com with SMTP id b2so24217380qtq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 01:17:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sSX4It+UYh+SclLrqRYTuJcNxBVNhdLE6sMCo8UKYag=;
 b=DDenaPNpYDj5b3g2+M7KfCVqh2Vc18tMsHJPGayJXIs2Ta/ls062TMX0EYbtnMKJO0
 TiTZUY+XXELldtGkdQTCYo/1PcRZCLmqH6KJqNrl2BqAwo4FCeZ8in1f+L1T4dYrMdJg
 yRgH88AN/eiu1isjyW8FX+1gz3lmCLuQPnN/Mgh6dGOou614+Bi4KH9lJNLXFymDXohy
 c8Ps+UClfxfqb2WTWGYtoNeyJPmdsa0ecFy5v35G6ENk/YHjE9ITQHjpLUGUp1uXVE50
 I0IR4EcLN1SZdFpFUHvUWgwrB75Ttz+X/y50v4fL+az7kCZZcr4tna08sLMzuymFQxVA
 AG+Q==
X-Gm-Message-State: APjAAAWR7AoRVFG9RTgW+dPvFaQtnfQPQ9UczMQ1ag0cNlJByyk4ZJWJ
 KjYW2Uldg5j7nZT9wyHhrZNs/uMTjbuwZ13D14M=
X-Google-Smtp-Source: APXvYqz45pgoTmTVL0lx/QE8rf/L0T6m/MIjRIXLqE3v8w3FYXI3PhfhiwrwjKmjULONteqaD1CGPmWyYRZFxNBlgK4=
X-Received: by 2002:ac8:342a:: with SMTP id u39mr33940011qtb.7.1568189830279; 
 Wed, 11 Sep 2019 01:17:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190905054647.1235-1-james.tai@realtek.com>
 <CAK8P3a13=VBZnj6E=s7mZk0o7Q3XkMHgcsL12s-3psuOWsfOtQ@mail.gmail.com>
 <43B123F21A8CFE44A9641C099E4196FFCF8DA1D0@RTITMBSVM04.realtek.com.tw>
In-Reply-To: <43B123F21A8CFE44A9641C099E4196FFCF8DA1D0@RTITMBSVM04.realtek.com.tw>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 11 Sep 2019 10:16:53 +0200
Message-ID: <CAK8P3a39VrC1Xn+HZc5gvh1-nUYKywDGjTfO9WPCqim89WtGAg@mail.gmail.com>
Subject: Re: [PATCH] ARM: Add support for Realtek SOC
To: =?UTF-8?B?SmFtZXMgVGFpW+aItOW/l+WzsF0=?= <james.tai@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_011711_697869_64E4FC5C 
X-CRM114-Status: GOOD (  27.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 =?UTF-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Phinex Hung <phinex@realtek.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Thierry Reding <treding@nvidia.com>,
 "jamestai.sky@gmail.com" <jamestai.sky@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Nicolas Pitre <nico@fluxnic.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBTZXAgMTEsIDIwMTkgYXQgOTo0NiBBTSBKYW1lcyBUYWlb5oi05b+X5bOwXSA8amFt
ZXMudGFpQHJlYWx0ZWsuY29tPiB3cm90ZToKPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIEFSTTog
QWRkIHN1cHBvcnQgZm9yIFJlYWx0ZWsgU09DCgo+ID4gPiBAQCAtMTQ4LDYgKzE0OCw3IEBAIGVu
ZGlmCj4gPiA+ICB0ZXh0b2ZzLSQoQ09ORklHX0FSQ0hfTVNNOFg2MCkgOj0gMHgwMDIwODAwMAo+
ID4gPiAgdGV4dG9mcy0kKENPTkZJR19BUkNIX01TTTg5NjApIDo9IDB4MDAyMDgwMDAKPiA+ID4g
IHRleHRvZnMtJChDT05GSUdfQVJDSF9NRVNPTikgOj0gMHgwMDIwODAwMAo+ID4gPiArdGV4dG9m
cy0kKENPTkZJR19BUkNIX1JFQUxURUspIDo9IDB4MDAyMDgwMDAKPiA+ID4gIHRleHRvZnMtJChD
T05GSUdfQVJDSF9BWFhJQSkgOj0gMHgwMDMwODAwMAo+ID4KPiA+IENhbiB5b3UgZXhwbGFpbiB3
aHkgdGhpcyBpcyBuZWVkZWQgZm9yIHlvdXIgcGxhdGZvcm0/Cj4gPgo+IFdlIG5lZWQgdG8gcmVz
ZXJ2ZSBtZW1vcnkgKDB4MDAwMDAwMDAgfiAweDAwMUIwMDAwKSBmb3Igcm9tIGFuZCBib290IGNv
ZGUuCgpPay4KCj4gPiA+ICtjb25maWcgQVJDSF9SVEQxNlhYCj4gPiA+ICsgICAgICAgYm9vbCAi
RW5hYmxlIHN1cHBvcnQgZm9yIFJURDE2MTkiCj4gPiA+ICsgICAgICAgZGVwZW5kcyBvbiBBUkNI
X1JFQUxURUsKPiA+ID4gKyAgICAgICBzZWxlY3QgQVJNX0dJQ19WMwo+ID4gPiArICAgICAgIHNl
bGVjdCBBUk1fUFNDSQo+ID4KPiA+IEFzIEkgdW5kZXJzdGFuZCwgdGhpcyBjaGlwIHVzZXMgYSBD
b3J0ZXgtQTU1LiBXaGF0IGlzIHRoZSByZWFzb24gZm9yIGFkZGluZwo+ID4gc3VwcG9ydCBvbmx5
IHRvIHRoZSAzMi1iaXQgQVJNIGFyY2hpdGVjdHVyZSByYXRoZXIgdGhhbiA2NC1iaXQ/Cj4KPiBU
aGUgUlREMTZYWCBwbGF0Zm9ybSBhbHNvIHN1cHBvcnQgdGhlIDY0LWJpdCBBUk0gYXJjaGl0ZWN0
dXJlLgo+IEkgd2lsbCBhZGQgdGhlIDY0LWJpdCBBUk0gYXJjaGl0ZWN0dXJlIGluIG5ldyB2ZXJz
aW9uIHBhdGNoLgo+Cj4gPiBNb3N0IDY0LWJpdCBTb0NzIGFyZSBvbmx5IHN1cHBvcnRlZCB3aXRo
IGFyY2gvYXJtNjQsIGJ1dCBnZW5lcmFsbHkgc3BlYWtpbmcKPiA+IHRoYXQgaXMgbm90IGEgcmVx
dWlyZW1lbnQuIE15IHJ1bGUgb2YgdGh1bWIgaXMgdGhhdCBvbiBzeXN0ZW1zIHdpdGggMUdCIG9m
Cj4gPiBSQU0gb3IgbW9yZSwgb25lIHdvdWxkIHdhbnQgdG8gcnVuIGEgNjQtYml0IGtlcm5lbCwg
d2hpbGUgc3lzdGVtcyB3aXRoIGxlc3MKPiA+IHRoYW4gdGhhdCBhcmUgYmV0dGVyIG9mZiB3aXRo
IGEgMzItYml0IG9uZSwgYnV0IHRoYXQgaXMgY2xlYXJseSBub3QgdGhlIG9ubHkgcmVhc29uCj4g
PiBmb3IgcGlja2luZyBvbmUgb3ZlciB0aGUgb3RoZXIuCj4gPgo+IFN1cHBvcnQgMzItYml0IEFS
TSBhcmNoaXRlY3R1cmUgaXMgZm9yIGFwcGxpY2F0aW9uIGNvbXBhdGliaWxpdHkuCgpHZW5lcmFs
bHkgc3BlYWtpbmcsIGEgNjQtYml0IGtlcm5lbCBzaG91bGQgd29yayBiZXR0ZXIgb24gNjQtYml0
IGhhcmR3YXJlCmV2ZW4gd2hlbiB5b3UgYXJlIHJ1bm5pbmcgbW9zdGx5IDMyLWJpdCBhcHBsaWNh
dGlvbnMuIEhvd2V2ZXIsIHlvdSBtYXkKaGF2ZSBkZXZpY2UgZHJpdmVycyB0aGF0IGRvIG5vdCBj
b3JyZWN0bHkgc2V0IGNvbXBhdF9pb2N0bCBoYW5kbGVycy4KCkFzIEkgc2FpZCwgaXQncyBubyBw
cm9ibGVtIHRvIGFsbG93IGJvdGgsIGp1c3QgZXhwbGFpbiB0aGlzIGluIHRoZQpjaGFuZ2Vsb2cg
dGV4dCBmb3IgdGhlIGRyaXZlciwgYWxvbmcgd2l0aCB0aGUgbmVlZCBmb3IgdGhlIHRleHRvZnMK
c2V0dGluZy4KCj4gPiBJdCdzIHZlcnkgdW51c3VhbCB0byBzZWUgY3VzdG9tIHNtcCBvcGVyYXRp
b25zIG9uIGFuIEFSTXY4IHN5c3RlbSwgYXMgd2UKPiA+IG5vcm1hbGx5IHVzZSBQU0NJIGhlcmUu
IENhbiB5b3UgZXhwbGFpbiB3aGF0IGlzIGdvaW5nIG9uIGhlcmU/IEFyZSB5b3UgYWJsZSB0bwo+
ID4gdXNlIGEgYm9vdCB3cmFwcGVyIHRoYXQgaW1wbGVtZW50cyB0aGVzZSBpbiBwc2NpIGluc3Rl
YWQ/Cj4gPgo+IFRoZSBzbXAgb3BlcmF0aW9ucyBpcyBwb3J0aW5nIGZvcm0gb3RoZXIgUmVhbHRl
ayBwbGF0Zm9ybS4KPgo+IEN1cnJlbnRseSwgVGhlIFJURDE2WFggcGxhdGZvcm0gY2FuIHVzZSB0
aGUgUFNDSSBtZXRob2QuCj4gSSB3aWxsIGFkZCBQU0NJIG1ldGhvZCBpbiBuZXcgdmVyc2lvbiBw
YXRjaC4KCk9rLCBwZXJmZWN0IQoKPiA+ID4gKyAgICAgICB0aW1lcl9wcm9iZSgpOwo+ID4gPiAr
ICAgICAgIHRpY2tfc2V0dXBfaHJ0aW1lcl9icm9hZGNhc3QoKTsgfQo+ID4KPiA+IFdoYXQgZG8g
eW91IG5lZWQgdGlja19zZXR1cF9ocnRpbWVyX2Jyb2FkY2FzdCgpIGZvcj8gSSBkb24ndCBzZWUg
YW55IG90aGVyCj4gPiBwbGF0Zm9ybSBjYWxsaW5nIHRoaXMuCj4gPgo+IEkgd2FudCB0byBpbml0
aWFsaXplIHRoZSBIUiB0aW1lci4KCkknbSBzdGlsbCB1bnN1cmUgYWJvdXQgdGhpcyBvbmUuIE15
IGZlZWxpbmcgaXMgdGhhdCBpdCBzaG91bGQgbm90IGJlCmluIHRoZSBwbGF0Zm9ybQpjb2RlLCBi
dXQgSSBkb24ndCBxdWl0ZSB1bmRlcnN0YW5kIHdoaWNoIGhhcmR3YXJlIG5lZWRzIGl0LiBJIHNl
ZSB0aGF0CkxvcmVuem8gUGllcmFsaXNpIGFkZGVkIHRoZSBzYW1lIGNvZGUgdG8gYXJtNjQgaW4g
Y29tbWl0IDkzNThkNzU1YmQ1YwooImFybTY0OiBrZXJuZWw6IGluaXRpYWxpemUgYnJvYWRjYXN0
IGhydGltZXIgYmFzZWQgY2xvY2sgZXZlbnQgZGV2aWNlIiksCmJ1dCBub3RoaW5nIGV2ZXIgY2Fs
bHMgaXQgb24gMzItYml0IGFyY2gvYXJtIGV2ZW4gdGhvdWdoIHRoZSBjb2RlIGRvZXMKZ2V0IGJ1
aWx0IGluIHRvIHRoZSBrZXJuZWwuCgpNeSBmZWVsaW5nIGlzIHRoYXQgZWl0aGVyIHlvdSBkb24n
dCByZWFsbHkgbmVlZCBpdCwgb3IgdGhpcyBpcyBzb21ldGhpbmcKdGhhdCBvdGhlciBwbGF0Zm9y
bXMgc2hvdWxkIHJlYWxseSBkbyBhcyB3ZWxsLCBhbmQgaXQgc2hvdWxkIGJlIGNhbGxlZCBmcm9t
CnRoZSBnZW5lcmljIHRpbWVfaW5pdCgpIGZ1bmN0aW9uIGluIGFyY2gvYXJtL2tlcm5lbC90aW1l
LmMgaW5zdGVhZC4KCkNhbiB5b3UgdHJ5IHRvIGZpbmQgb3V0IG1vcmUgb2YgdGhlIGJhY2tncm91
bmQgaGVyZSwgYW5kIHRoZW4KbW92ZSB0aGUgY2FsbCB0byB0aW1lX2luaXQoKSBhc3N1bWluZyBp
dCBpcyBpbmRlZWQgdXNlZnVsPwoKICAgICAgIEFybmQKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
