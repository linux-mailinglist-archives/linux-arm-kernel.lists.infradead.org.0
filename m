Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C77887C7F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVU/GpIjNKU7s+kSiAAO/1ctJ8MKQtiNTjCH3/dJCmY=; b=q3wYIA1kkZiD9v
	/RSU4u1m3HxcTxlm8CXlfvoXC2QxIJKDgmQWd6rnF2U7tFydoiQv8+VKlIWih1wFv/vPzPPmSHxFt
	Bp9OdAw9tqPYWSvHLHAPD7EYw4sqD3vRf7bCizhHXfGTmsouQfK7iWn6hjBh7cetjigNG+lX5Ps0i
	5MmNNLvLN4bmfntN9hQ7+q0JLKgKTqqwiENqzSpVOK8N5bO81eqBcZ4ZUOz3ZjRUUFyMqDYuvMlb9
	2ZXFpcal2uadxyAbZAB4djwrSDyf2IWRirsDFWDHOPXuLvXddeMjogpE+8mNLyFsbv8BT9CDaUdqt
	0zuxzM069dBNLAZiYEzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw5je-0003FL-MU; Fri, 09 Aug 2019 14:19:14 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw5jS-0003EH-3v
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:19:03 +0000
Received: by mail-qk1-f193.google.com with SMTP id s145so71745165qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 07:19:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TEfOzDxFX7gDpnqMzrlBGrH3Syt9gXqMdj4yqEybIZo=;
 b=fVWTgTiuj2/re3JdUGmsltEqvlcvhEgPa+1iLD8UzDajp5IVE4ZaifTiuYiXg1X7GM
 KJ4JbrfSEgV1qb5qnMagSOJb3ATLdCaGUxex0tfxAm7KRsbMq0/8/TLmFO6TJYcOQLzU
 74A+cspcEqBkw6R37uuuWYjmVXRYLKTWqo8mdSYWxcPgszxMWTMJn16zGoZpJc3vJnG+
 58g/chm54TnAVxKGbtGwPovGt8l0YMQZsd6vdXuGcVp1ODcxhstkNVdeyOVwlNOAeJDG
 dlMJQ+Zwi0oH+G8i2ymS2RIfbZB7WP0XTceD/ImedWlnt20OMlmzhz3Pj+uXhIjuPn25
 rYVg==
X-Gm-Message-State: APjAAAVUGq5Vrg+23JYOxf+Wj4mWVzCDXpB4ITYSsEUq2F0cjfFeReoi
 Jl+ZLYBIX23Cv9ZIV6riblRkvjJ4+rHgjYJalAA=
X-Google-Smtp-Source: APXvYqwdOIIhs7aYJbryOrEuz/1xQSAZBUfsTj7jxd0qGAmaTDwXDUSNUG1kGVNfZ5fjxOBFSW0skDDZmykp0YbSLSg=
X-Received: by 2002:a37:984:: with SMTP id 126mr12380366qkj.3.1565360340175;
 Fri, 09 Aug 2019 07:19:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-6-arnd@arndb.de>
 <CAMpxmJWFfT_vrDas2fzW5tnxskk9kmgHQpGnGQ-_C20UaS_jhA@mail.gmail.com>
 <CAK8P3a3KpKvRKXY72toE_5eAp4ER_Mre0GX3guwGeQgsY2HX+g@mail.gmail.com>
 <CAMpxmJUdSnp0QNwWB0rJ1opFrYs9R2KSVS64Tz8X5GDYAJYLpg@mail.gmail.com>
In-Reply-To: <CAMpxmJUdSnp0QNwWB0rJ1opFrYs9R2KSVS64Tz8X5GDYAJYLpg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 9 Aug 2019 16:18:43 +0200
Message-ID: <CAK8P3a1NT_yoP39y52oJTMsFCb96-bRyuMm=+5HPPsxyq0fJDA@mail.gmail.com>
Subject: Re: [PATCH 05/14] gpio: lpc32xx: allow building on non-lpc32xx targets
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_071902_162236_637AF7B2 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

T24gTW9uLCBBdWcgNSwgMjAxOSBhdCAxMDoyOCBBTSBCYXJ0b3N6IEdvbGFzemV3c2tpCjxiZ29s
YXN6ZXdza2lAYmF5bGlicmUuY29tPiB3cm90ZToKPgo+IHB0LiwgMiBzaWUgMjAxOSBvIDEzOjIw
IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+IG5hcGlzYcWCKGEpOgo+ID4KPiA+IE9uIEZy
aSwgQXVnIDIsIDIwMTkgYXQgOToxMCBBTSBCYXJ0b3N6IEdvbGFzemV3c2tpCj4gPiA8YmdvbGFz
emV3c2tpQGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4gPiA+ID4gLSNpbmNsdWRlIDxtYWNoL2hhcmR3
YXJlLmg+Cj4gPiA+ID4gLSNpbmNsdWRlIDxtYWNoL3BsYXRmb3JtLmg+Cj4gPiA+ID4gKyNkZWZp
bmUgX0dQUkVHKHgpICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKHgpCj4gPiA+Cj4gPiA+
IFdoYXQgcHVycG9zZSBkb2VzIHRoaXMgbWFjcm8gc2VydmU/Cj4gPiA+Cj4gPiA+ID4KPiA+ID4g
PiAgI2RlZmluZSBMUEMzMlhYX0dQSU9fUDNfSU5QX1NUQVRFICAgICAgICAgICAgICBfR1BSRUco
MHgwMDApCj4gPiA+ID4gICNkZWZpbmUgTFBDMzJYWF9HUElPX1AzX09VVFBfU0VUICAgICAgICAg
ICAgICAgX0dQUkVHKDB4MDA0KQo+ID4KPiA+IEluIHRoZSBleGlzdGluZyBjb2RlIGJhc2UsIHRo
aXMgbWFjcm8gY29udmVydHMgYSByZWdpc3RlciBvZmZzZXQgdG8KPiA+IGFuIF9faW9tZW0gcG9p
bnRlciBmb3IgYSBncGlvIHJlZ2lzdGVyLiBJIGNoYW5nZWQgdGhlIGRlZmluaXRpb24gb2YgdGhl
Cj4gPiBtYWNybyBoZXJlIHRvIGtlZXAgdGhlIG51bWJlciBvZiBjaGFuZ2VzIGRvd24sIGJ1dCBJ
IGl0J3MganVzdAo+ID4gYXMgZWFzeSB0byByZW1vdmUgaXQgaWYgeW91IHByZWZlci4KPgo+IENv
dWxkIHlvdSBqdXN0IGFkZCBhIGNvbW1lbnQgc28gdGhhdCBpdCdzIGNsZWFyIGF0IGZpcnN0IGds
YW5jZT8KCkkgZW5kZWQgdXAgcmVtb3ZpbmcgdGhlIG1hY3JvLiBXaXRoIHRoZSBjaGFuZ2UgdG8g
a2VlcCB0aGUgcmVnX2Jhc2UgYXMKYSBzdHJ1Y3QgbWVtYmVyLCB0aGlzIGVuZHMgdXAgYmVpbmcg
YSByZWxhdGl2ZWx5IHNtYWxsIGNoYW5nZSwgYW5kIGl0J3MKbW9yZSBzdHJhaWdodGZvcndhcmQg
dGhhdCB3YXkuCgo+ID4gPiA+IEBAIC0xNjcsMTQgKzE2NiwyNiBAQCBzdHJ1Y3QgbHBjMzJ4eF9n
cGlvX2NoaXAgewo+ID4gPiA+ICAgICAgICAgc3RydWN0IGdwaW9fcmVncyAgICAgICAgKmdwaW9f
Z3JwOwo+ID4gPiA+ICB9Owo+ID4gPiA+Cj4gPiA+ID4gK3ZvaWQgX19pb21lbSAqZ3Bpb19yZWdf
YmFzZTsKPiA+ID4KPiA+ID4gQW55IHJlYXNvbiB3aHkgdGhpcyBjYW4ndCBiZSBtYWRlIHBhcnQg
b2Ygc3RydWN0IGxwYzMyeHhfZ3Bpb19jaGlwPwo+ID4KPiA+IEl0IGNvdWxkIGJlLCBidXQgaXQn
cyB0aGUgc2FtZSBmb3IgZWFjaCBpbnN0YW5jZSwgYW5kIG5vdCBrbm93biB1bnRpbAo+ID4gcHJv
YmUoKSB0aW1lLCBzbyB0aGUgc2FtZSBwb2ludGVyIHdvdWxkIG5lZWQgdG8gYmUgY29waWVkIGlu
dG8gZWFjaAo+ID4gaW5zdGFuY2UgdGhhdCBpcyBvdGhlcndpc2UgcmVhZC1vbmx5Lgo+ID4KPiA+
IExldCBtZSBrbm93IGlmIHlvdSdkIHByZWZlciBtZSB0byByZXdvcmsgdGhlc2UgdHdvIHRoaW5n
cyBvciBsZWF2ZQo+ID4gdGhlbSBhcyB0aGV5IGFyZS4KPgo+IEkgd291bGQgcHJlZmVyIG5vdCB0
byBoYXZlIGdsb2JhbCBzdGF0ZSBpbiB0aGUgZHJpdmVyLCBsZXQncyBqdXN0Cj4gc3RvcmUgdGhl
IHBvaW50ZXIgaW4gdGhlIGRhdGEgcGFzc2VkIHRvIGdwaW9jaGlwX2FkZF9kYXRhKCkuCgpPaywg
ZG9uZS4KCiAgICAgICBBcm5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
