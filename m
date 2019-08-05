Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 802718142F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 10:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLkVmkGjLZiijiWgzH8EGSqTu5MHmi1HKzmBoCiGJ5E=; b=ZpyDo38Gw3nnTs
	J73fvvtUeT994StkhTW6ngxiXxv/MDwjf1xn0dzg8QXGkClY9Q1xRYuVajLn3bKbDbGmNwrbWimfr
	uY7T61nnmlZ2H6ZtXhtp5IUgvFqhN2DPB53EHsIbnWl4MgpX1TmQ9Fx1LlGixCFRGL6TkmhGVX47i
	ko7L94X+rGf1ZtW/ZVFTeRN/S+KvqSsalwVhfhwrB+Aa1brdoVeglOYQJ65DuxzISI1bKZOiOx/Ub
	DFDM3ldgOeCk8TsJ/lQJbKRYLpbVk9edoMxRB43zgh0qWGKzsh+fa8+NwCvTxLPZcZo5bXjJQAmr+
	y3hLqTh8E51qgkajUQrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYLl-0004Uc-FU; Mon, 05 Aug 2019 08:28:13 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYLY-0004UG-Tn
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 08:28:02 +0000
Received: by mail-ot1-x341.google.com with SMTP id z23so56099384ote.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 01:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=qvG85uu+23wc3aOz56jKz9zl98RKrlFXnI9v0RdgYHY=;
 b=gn0LHf8ENoBGwjVAUPWk1trAn5THo247jg8e6zjlOG+W0AiNseHCflLSx/XH7Kcfy9
 2wSOMmbwOPfMbBjkX6M2RQupJ/NbQ7i1OeZV4x0b7UaMTogOPcjGAh2WD4/Wzn3oFz+S
 s68do0KW/i5W4PVQKdwoTVYuoajMggDI1ujveZBBQeM1XkbfxbcpVORGDNzhN6D90l0s
 nchBa36BsovaPAw4h8M0gY9GSFJmJ6RPIM5M8O2TBp8svyqdG+/Z77FGfO1gxNobnwjE
 Hl6bo1835l7C2TEp1ARt072yPf+OHySWwJSl6kUR7uAp3M2jEwLs21KSIEzQgcwZEeFx
 EIwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=qvG85uu+23wc3aOz56jKz9zl98RKrlFXnI9v0RdgYHY=;
 b=osy3kUtEDW+2oJXrh+7ZSQBfqyVJXz1mtirnhWoZbnxE/if9vf2bApTopnwyqjlptr
 /8p6BrQ4ToJLxNvYjQTT2VrxlAJhe5zcpnn8dp976/N0yJs6c3qqmsCUR/RjrWJZjuXu
 Qc8KYvCc9cky+SWpKBn//0h5k1jp2OQHbTHauYg9Cb8vv6KF6+C7hDdTstUfIvSWOeE3
 YfmJjqenlzCsCsgXnoPURuYgfEDng8zdHU4MxUmCOprwRfj2mjZ0Yl8QSMuONE39GQo9
 G7F0260nvva9LFcYjp81Jefay5KTAXhlwBJfYQ3Z1xuAYJrma9FkeE2ng367oh/4+Hi0
 8TnQ==
X-Gm-Message-State: APjAAAWjBTtCInuVKttGabRKgvqTPmiLfAA1b+aNzyZ/rpFVlgt0L61I
 r94ogIp/1bC0abuQkchDH2Lop5vMuSBTZqkALo9SMA==
X-Google-Smtp-Source: APXvYqyHiFzcWgwMSYIdyYbnaCWSjRwGweIT3RKPv1xwORdpLKUPWaLHXzDYxYbuZLEk4t8xeoYAy31E8HbSzjuIfD4=
X-Received: by 2002:a9d:2969:: with SMTP id d96mr115002880otb.85.1564993679131; 
 Mon, 05 Aug 2019 01:27:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-6-arnd@arndb.de>
 <CAMpxmJWFfT_vrDas2fzW5tnxskk9kmgHQpGnGQ-_C20UaS_jhA@mail.gmail.com>
 <CAK8P3a3KpKvRKXY72toE_5eAp4ER_Mre0GX3guwGeQgsY2HX+g@mail.gmail.com>
In-Reply-To: <CAK8P3a3KpKvRKXY72toE_5eAp4ER_Mre0GX3guwGeQgsY2HX+g@mail.gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Mon, 5 Aug 2019 10:27:48 +0200
Message-ID: <CAMpxmJUdSnp0QNwWB0rJ1opFrYs9R2KSVS64Tz8X5GDYAJYLpg@mail.gmail.com>
Subject: Re: [PATCH 05/14] gpio: lpc32xx: allow building on non-lpc32xx targets
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_012801_013696_DA2CC61E 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 USB list <linux-usb@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Vladimir Zapolskiy <vz@mleia.com>, linux-gpio <linux-gpio@vger.kernel.org>,
 soc@kernel.org, netdev <netdev@vger.kernel.org>,
 Alan Stern <stern@rowland.harvard.edu>, Guenter Roeck <linux@roeck-us.net>,
 linux-serial@vger.kernel.org, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cHQuLCAyIHNpZSAyMDE5IG8gMTM6MjAgQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4gbmFw
aXNhxYIoYSk6Cj4KPiBPbiBGcmksIEF1ZyAyLCAyMDE5IGF0IDk6MTAgQU0gQmFydG9zeiBHb2xh
c3pld3NraQo+IDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29tPiB3cm90ZToKPiA+ID4gLSNpbmNs
dWRlIDxtYWNoL2hhcmR3YXJlLmg+Cj4gPiA+IC0jaW5jbHVkZSA8bWFjaC9wbGF0Zm9ybS5oPgo+
ID4gPiArI2RlZmluZSBfR1BSRUcoeCkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAoeCkK
PiA+Cj4gPiBXaGF0IHB1cnBvc2UgZG9lcyB0aGlzIG1hY3JvIHNlcnZlPwo+ID4KPiA+ID4KPiA+
ID4gICNkZWZpbmUgTFBDMzJYWF9HUElPX1AzX0lOUF9TVEFURSAgICAgICAgICAgICAgX0dQUkVH
KDB4MDAwKQo+ID4gPiAgI2RlZmluZSBMUEMzMlhYX0dQSU9fUDNfT1VUUF9TRVQgICAgICAgICAg
ICAgICBfR1BSRUcoMHgwMDQpCj4KPiBJbiB0aGUgZXhpc3RpbmcgY29kZSBiYXNlLCB0aGlzIG1h
Y3JvIGNvbnZlcnRzIGEgcmVnaXN0ZXIgb2Zmc2V0IHRvCj4gYW4gX19pb21lbSBwb2ludGVyIGZv
ciBhIGdwaW8gcmVnaXN0ZXIuIEkgY2hhbmdlZCB0aGUgZGVmaW5pdGlvbiBvZiB0aGUKPiBtYWNy
byBoZXJlIHRvIGtlZXAgdGhlIG51bWJlciBvZiBjaGFuZ2VzIGRvd24sIGJ1dCBJIGl0J3MganVz
dAo+IGFzIGVhc3kgdG8gcmVtb3ZlIGl0IGlmIHlvdSBwcmVmZXIuCgpDb3VsZCB5b3UganVzdCBh
ZGQgYSBjb21tZW50IHNvIHRoYXQgaXQncyBjbGVhciBhdCBmaXJzdCBnbGFuY2U/Cgo+Cj4gPiA+
IEBAIC0xNjcsMTQgKzE2NiwyNiBAQCBzdHJ1Y3QgbHBjMzJ4eF9ncGlvX2NoaXAgewo+ID4gPiAg
ICAgICAgIHN0cnVjdCBncGlvX3JlZ3MgICAgICAgICpncGlvX2dycDsKPiA+ID4gIH07Cj4gPiA+
Cj4gPiA+ICt2b2lkIF9faW9tZW0gKmdwaW9fcmVnX2Jhc2U7Cj4gPgo+ID4gQW55IHJlYXNvbiB3
aHkgdGhpcyBjYW4ndCBiZSBtYWRlIHBhcnQgb2Ygc3RydWN0IGxwYzMyeHhfZ3Bpb19jaGlwPwo+
Cj4gSXQgY291bGQgYmUsIGJ1dCBpdCdzIHRoZSBzYW1lIGZvciBlYWNoIGluc3RhbmNlLCBhbmQg
bm90IGtub3duIHVudGlsCj4gcHJvYmUoKSB0aW1lLCBzbyB0aGUgc2FtZSBwb2ludGVyIHdvdWxk
IG5lZWQgdG8gYmUgY29waWVkIGludG8gZWFjaAo+IGluc3RhbmNlIHRoYXQgaXMgb3RoZXJ3aXNl
IHJlYWQtb25seS4KPgo+IExldCBtZSBrbm93IGlmIHlvdSdkIHByZWZlciBtZSB0byByZXdvcmsg
dGhlc2UgdHdvIHRoaW5ncyBvciBsZWF2ZQo+IHRoZW0gYXMgdGhleSBhcmUuCgpJIHdvdWxkIHBy
ZWZlciBub3QgdG8gaGF2ZSBnbG9iYWwgc3RhdGUgaW4gdGhlIGRyaXZlciwgbGV0J3MganVzdApz
dG9yZSB0aGUgcG9pbnRlciBpbiB0aGUgZGF0YSBwYXNzZWQgdG8gZ3Bpb2NoaXBfYWRkX2RhdGEo
KS4KCkJhcnQKCj4KPiA+ID4gK3N0YXRpYyBpbmxpbmUgdTMyIGdwcmVnX3JlYWQodW5zaWduZWQg
bG9uZyBvZmZzZXQpCj4gPgo+ID4gSGVyZSBhbmQgZWxzZXdoZXJlOiBjb3VsZCB5b3UgcGxlYXNl
IGtlZXAgdGhlIGxwYzMyeHhfZ3BpbyBwcmVmaXggZm9yCj4gPiBhbGwgc3ltYm9scz8KPgo+IFN1
cmUuCj4KPiAgICAgICBBcm5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
