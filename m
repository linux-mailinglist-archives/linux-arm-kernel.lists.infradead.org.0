Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B3F19F130
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 09:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GjvzclbE1FcflANI7wguJ9vYDmM/irPpFvWqTEKENBY=; b=AerjuWUF24SrH2
	2pOgWh+qdzrTU5vJ14aAqGgpDA6X/J/nBVQuRa/VYIoZFwaC5wTlEj4m6H8iG3+amHSz8lth2JEqG
	sAfdTya/TX8mcNpTNVUUdnnIN3TZRDG8l21xjZX6mkHGOiYgSB7DdRiDF3dHDD7OZ7HlFgpkza18T
	2A+fSJh/8TOJ5ATDl6SCVbkVBdryoDD9PFJRe/cJtPnh/WU/4VRVfqYHp/LkwIQKjJhV5u+tD+Pka
	HAqzFBMm3wTZqSsMQlv6DhKITX3jspE0WO5034sjSN4KG9yUkKhoEt1fzG9HuuUqJ1tLurB/dwrm1
	CA0sKpXh9GBvzIbZz4GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLMUR-0002TJ-9R; Mon, 06 Apr 2020 07:48:15 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLMUJ-0002Se-EP
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 07:48:10 +0000
Received: by mail-qt1-x843.google.com with SMTP id c14so12148537qtp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 00:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=amAF0/6ZAlncZUHeVlhe3w2Ki3z4fhffTcU8qEplQgI=;
 b=TGEztmhV4iB7KyI5BPf8WoTfqW3RCZUlDikAjrf1SR+nN1ZsXwXw2LRG86FQfm7Vmk
 yf7DjN8owLtSCpXTYmdNKugl6ddHr5UviVK0DWckTC+8BSgi4oKm2WkuR1cOfxw1ejTk
 b0sfFieGzMsxgNCHBn7I9YXMZL/47t1Rr/Wh6WRw/08nhG+/naUtTien/aMtfPkJvEp2
 +JSy8a8tR3cOr7obFkgvuGtURmTRVYq++sadK9pcZtZVhgd3ah+/FCTiT6bOhVdZ9R7T
 sJOW+IFFQBDi9XJCU/Wf11AQfeluJniuWM0IZhDfPafDVPHlY5jdVrW1kFw060cL6RgB
 EjRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=amAF0/6ZAlncZUHeVlhe3w2Ki3z4fhffTcU8qEplQgI=;
 b=RU25wrqGr/57OZjClgE/jWxQXMv3XgjnTW8jEeTW1N6kBUEQFSngIMmwrsrDwyfuJa
 nT4myRUNkKZZHOYPNOcGLL5XdNMKxAK/5Hg1KBL4WXt9JvVK01AtFTyrrVvlouvpivhP
 cx23ziHYzV/8fOvlsXoA7klyun00douLhrWjEnCnInxg0D8iWXFMA3ZLTBtLaqo5/our
 4TL30ungnfaAmK7jdEXoSCyjxojlgE/b1CqcE00Q9Kdvoj+9n+l439TrPmd42ZOumnhL
 xLS8hOJIt2K+8RQ/SWxxxs3RzmkuU56AsvmE+HST0+eo++R8VtkjmpfQDVeS628uDTTe
 o85w==
X-Gm-Message-State: AGi0PuZUCH+IZfYvzOJX+T1wHbaGj1TJyH8Nd1ad/AxvvJH2isZiUPVD
 dwX3yytUzAi4aleZtezFj40BYe2I6qhwL7it2+l7CA==
X-Google-Smtp-Source: APiQypIZh9O39IoVlyPxAsvhWgOsBERW3TzNwd/djolltb8HgtlAHalS0On8dowlQ6zkrSLVBqEdY6ashXn19IuDVN0=
X-Received: by 2002:ac8:5318:: with SMTP id t24mr3914516qtn.208.1586159284935; 
 Mon, 06 Apr 2020 00:48:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-11-michael@walle.cc>
In-Reply-To: <20200402203656.27047-11-michael@walle.cc>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Mon, 6 Apr 2020 09:47:54 +0200
Message-ID: <CAMpxmJVE3PgVCxkQ-ryc5=KSrKcpdmk1cnJUxJBz9QFCx-e_+A@mail.gmail.com>
Subject: Re: [PATCH v2 10/16] gpio: add a reusable generic gpio_chip using
 regmap
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_004807_490922_E402C368 
X-CRM114-Status: GOOD (  31.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgMiBrd2kgMjAyMCBvIDIyOjM3IE1pY2hhZWwgV2FsbGUgPG1pY2hhZWxAd2FsbGUuY2M+
IG5hcGlzYcWCKGEpOgo+Cj4gVGhlcmUgYXJlIHF1aXRlIGEgbG90IHNpbXBsZSBHUElPIGNvbnRy
b2xsZXIgd2hpY2ggYXJlIHVzaW5nIHJlZ21hcCB0bwo+IGFjY2VzcyB0aGUgaGFyZHdhcmUuIFRo
aXMgZHJpdmVyIHRyaWVzIHRvIGJlIGEgYmFzZSB0byB1bmlmeSBleGlzdGluZwo+IGNvZGUgaW50
byBvbmUgcGxhY2UuIFRoaXMgd29uJ3QgY292ZXIgZXZlcnl0aGluZyBidXQgaXQgc2hvdWxkIGJl
IGEgZ29vZAo+IHN0YXJ0aW5nIHBvaW50Lgo+Cj4gSXQgZG9lcyBub3QgaW1wbGVtZW50IGl0cyBv
d24gaXJxX2NoaXAgYmVjYXVzZSB0aGVyZSBpcyBhbHJlYWR5IGEKPiBnZW5lcmljIG9uZSBmb3Ig
cmVnbWFwIGJhc2VkIGRldmljZXMuIEluc3RlYWQsIHRoZSBpcnFfY2hpcCB3aWxsIGJlCj4gaW5z
dGFuY2lhdGVkIGluIHRoZSBwYXJlbnQgZHJpdmVyIGFuZCBpdHMgaXJxIGRvbWFpbiB3aWxsIGJl
IGFzc29jaWF0ZQo+IHRvIHRoaXMgZHJpdmVyLgo+Cj4gRm9yIG5vdyBpdCBjb25zaXN0cyBvZiB0
aGUgdXN1YWwgcmVnaXN0ZXJzLCBsaWtlIHNldCAoYW5kIGFuIG9wdGlvbmFsCj4gY2xlYXIpIGRh
dGEgcmVnaXN0ZXIsIGFuIGlucHV0IHJlZ2lzdGVyIGFuZCBkaXJlY3Rpb24gcmVnaXN0ZXJzLgo+
IE91dC1vZi10aGUtYm94LCBpdCBzdXBwb3J0cyBjb25zZWN1dGl2ZSByZWdpc3RlciBtYXBwaW5n
cyBhbmQgbWFwcGluZ3MKPiB3aGVyZSB0aGUgcmVnaXN0ZXJzIGhhdmUgZ2FwcyBiZXR3ZWVuIHRo
ZW0gd2l0aCBhIGxpbmVhciBtYXBwaW5nIGJldHdlZW4KPiBHUElPIG9mZnNldCBhbmQgYml0IHBv
c2l0aW9uLiBGb3Igd2VpcmRlciBtYXBwaW5ncyB0aGUgdXNlciBjYW4gcmVnaXN0ZXIKPiBpdHMg
b3duIC54bGF0ZSgpLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBXYWxsZSA8bWljaGFlbEB3
YWxsZS5jYz4KCkhpIE1pY2hhZWwsCgpUaGFua3MgZm9yIGRvaW5nIHRoaXMhIFdoZW4gbG9va2lu
ZyBhdCBvdGhlciBnZW5lcmljIGRyaXZlcnM6CmdwaW8tbW1pbyBhbmQgZ3Bpby1yZWcgSSBjYW4g
c2VlIHRoZXJlIGFyZSBzb21lIGNvcm5lci1jYXNlcyBhbmQgbW9yZQpzcGVjaWZpYyBjb25maWd1
cmF0aW9uIG9wdGlvbnMgd2UgY291bGQgYWRkIGJ1dCBpdCdzIG5vdCBhIGJsb2NrZXIsCndlJ2xs
IHByb2JhYmx5IGJlIGV4dGVuZGluZyB0aGlzIG9uZSBhcyB3ZSBjb252ZXJ0IG1vcmUgZHJpdmVy
cyB0bwp1c2luZyBpdC4gUGVyc29uYWxseSBJJ2QgbG92ZSB0byBzZWUgZ3Bpby1tbWlvIGFuZCBn
cGlvLXJlZyByZW1vdmVkCmFuZCByZXBsYWNlZCBieSBhIHNpbmdsZSwgZ2VuZXJpYyByZWdtYXAg
aW50ZXJmYWNlIGV2ZW50dWFsbHkuCgo+IC0tLQo+ICBkcml2ZXJzL2dwaW8vS2NvbmZpZyAgICAg
ICAgfCAgIDQgKwo+ICBkcml2ZXJzL2dwaW8vTWFrZWZpbGUgICAgICAgfCAgIDEgKwo+ICBkcml2
ZXJzL2dwaW8vZ3Bpby1yZWdtYXAuYyAgfCAzMjAgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrCj4gIGluY2x1ZGUvbGludXgvZ3Bpby1yZWdtYXAuaCB8ICA4OCArKysrKysrKysr
Cj4gIDQgZmlsZXMgY2hhbmdlZCwgNDEzIGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvZ3Bpby9ncGlvLXJlZ21hcC5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNs
dWRlL2xpbnV4L2dwaW8tcmVnbWFwLmgKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwaW8vS2Nv
bmZpZyBiL2RyaXZlcnMvZ3Bpby9LY29uZmlnCj4gaW5kZXggMWI5NjE2OWQ4NGY3Li5hOGUxNDhm
NGIyZTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncGlvL0tjb25maWcKPiArKysgYi9kcml2ZXJz
L2dwaW8vS2NvbmZpZwo+IEBAIC03Myw2ICs3MywxMCBAQCBjb25maWcgR1BJT19HRU5FUklDCj4g
ICAgICAgICBkZXBlbmRzIG9uIEhBU19JT01FTSAjIE9ubHkgZm9yIElPTUVNIGRyaXZlcnMKPiAg
ICAgICAgIHRyaXN0YXRlCj4KPiArY29uZmlnIEdQSU9fUkVHTUFQCj4gKyAgICAgICBkZXBlbmRz
IG9uIFJFR01BUAo+ICsgICAgICAgdHJpc3RhdGUKPiArCj4gICMgcHV0IGRyaXZlcnMgaW4gdGhl
IHJpZ2h0IHNlY3Rpb24sIGluIGFscGhhYmV0aWNhbCBvcmRlcgo+Cj4gICMgVGhpcyBzeW1ib2wg
aXMgc2VsZWN0ZWQgYnkgYm90aCBJMkMgYW5kIFNQSSBleHBhbmRlcnMKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncGlvL01ha2VmaWxlIGIvZHJpdmVycy9ncGlvL01ha2VmaWxlCj4gaW5kZXggYjJj
ZmMyMWE5N2YzLi45M2UxMzlmZGZhNTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncGlvL01ha2Vm
aWxlCj4gKysrIGIvZHJpdmVycy9ncGlvL01ha2VmaWxlCj4gQEAgLTEyLDYgKzEyLDcgQEAgb2Jq
LSQoQ09ORklHX0dQSU9fU1lTRlMpICAgICAgKz0gZ3Bpb2xpYi1zeXNmcy5vCj4gIG9iai0kKENP
TkZJR19HUElPX0FDUEkpICAgICAgICAgICAgICAgICs9IGdwaW9saWItYWNwaS5vCj4KPiAgIyBE
ZXZpY2UgZHJpdmVycy4gR2VuZXJhbGx5IGtlZXAgbGlzdCBzb3J0ZWQgYWxwaGFiZXRpY2FsbHkK
PiArb2JqLSQoQ09ORklHX0dQSU9fUkVHTUFQKSAgICAgICs9IGdwaW8tcmVnbWFwLm8KPiAgb2Jq
LSQoQ09ORklHX0dQSU9fR0VORVJJQykgICAgICs9IGdwaW8tZ2VuZXJpYy5vCj4KPiAgIyBkaXJl
Y3RseSBzdXBwb3J0ZWQgYnkgZ3Bpby1nZW5lcmljCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3Bp
by9ncGlvLXJlZ21hcC5jIGIvZHJpdmVycy9ncGlvL2dwaW8tcmVnbWFwLmMKPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uY2M0NDM3ZGMwNTIxCj4gLS0tIC9kZXYv
bnVsbAo+ICsrKyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXJlZ21hcC5jCj4gQEAgLTAsMCArMSwzMjAg
QEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQo+ICsvKgo+ICsg
KiByZWdtYXAgYmFzZWQgZ2VuZXJpYyBHUElPIGRyaXZlcgo+ICsgKgo+ICsgKiBDb3B5cmlnaHQg
MjAxOSBNaWNoYWVsIFdhbGxlIDxtaWNoYWVsQHdhbGxlLmNjPgo+ICsgKi8KPiArCj4gKyNpbmNs
dWRlIDxsaW51eC9ncGlvL2RyaXZlci5oPgo+ICsjaW5jbHVkZSA8bGludXgvZ3Bpby1yZWdtYXAu
aD4KPiArI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgo+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxl
Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9yZWdtYXAuaD4KPiArCj4gK3N0cnVjdCBncGlvX3JlZ21h
cF9kYXRhIHsKPiArICAgICAgIHN0cnVjdCBncGlvX2NoaXAgZ3Bpb19jaGlwOwo+ICsgICAgICAg
c3RydWN0IGdwaW9fcmVnbWFwICpncGlvOwo+ICt9Owo+ICsKPiArLyoqCj4gKyAqIGdwaW9fcmVn
bWFwX3NpbXBsZV94bGF0ZSgpIC0gdHJhbnNsYXRlIGJhc2Uvb2Zmc2V0IHRvIHJlZy9tYXNrCj4g
KyAqCj4gKyAqIFVzZSBhIHNpbXBsZSBsaW5lYXIgbWFwcGluZyB0byB0cmFuc2xhdGUgdGhlIG9m
ZnNldCB0byB0aGUgYml0bWFzay4KPiArICovCj4gK2ludCBncGlvX3JlZ21hcF9zaW1wbGVfeGxh
dGUoc3RydWN0IGdwaW9fcmVnbWFwICpncGlvLCB1bnNpZ25lZCBpbnQgYmFzZSwKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBvZmZzZXQsCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgKnJlZywgdW5zaWduZWQgaW50ICptYXNrKQo+
ICt7Cj4gKyAgICAgICB1bnNpZ25lZCBpbnQgbGluZSA9IG9mZnNldCAlIGdwaW8tPm5ncGlvX3Bl
cl9yZWc7Cj4gKyAgICAgICB1bnNpZ25lZCBpbnQgc3RyaWRlID0gb2Zmc2V0IC8gZ3Bpby0+bmdw
aW9fcGVyX3JlZzsKPiArCj4gKyAgICAgICAqcmVnID0gYmFzZSArIHN0cmlkZSAqIGdwaW8tPnJl
Z19zdHJpZGU7Cj4gKyAgICAgICAqbWFzayA9IEJJVChsaW5lKTsKPiArCj4gKyAgICAgICByZXR1
cm4gMDsKPiArfQo+ICtFWFBPUlRfU1lNQk9MX0dQTChncGlvX3JlZ21hcF9zaW1wbGVfeGxhdGUp
OwoKV2h5IGRvZXMgdGhpcyBuZWVkIHRvIGJlIGV4cG9ydGVkPwoKPiArCj4gK3N0YXRpYyBpbnQg
Z3Bpb19yZWdtYXBfZ2V0KHN0cnVjdCBncGlvX2NoaXAgKmNoaXAsIHVuc2lnbmVkIGludCBvZmZz
ZXQpCj4gK3sKPiArICAgICAgIHN0cnVjdCBncGlvX3JlZ21hcF9kYXRhICpkYXRhID0gZ3Bpb2No
aXBfZ2V0X2RhdGEoY2hpcCk7Cj4gKyAgICAgICBzdHJ1Y3QgZ3Bpb19yZWdtYXAgKmdwaW8gPSBk
YXRhLT5ncGlvOwo+ICsgICAgICAgdW5zaWduZWQgaW50IGJhc2U7Cj4gKyAgICAgICB1bnNpZ25l
ZCBpbnQgdmFsLCByZWcsIG1hc2s7CgpUaGlzIGNhbiBmaXQgb24gYSBzaW5nbGUgbGluZSB3aXRo
IGJhc2UuIFNhbWUgZWxzZXdoZXJlLgoKPiArICAgICAgIGludCByZXQ7Cj4gKwo+ICsgICAgICAg
Lyogd2UgbWlnaHQgbm90IGhhdmUgYW4gb3V0cHV0IHJlZ2lzdGVyIGlmIHdlIGFyZSBpbnB1dCBv
bmx5ICovCj4gKyAgICAgICBpZiAoZ3Bpby0+cmVnX2RhdF9iYXNlLnZhbGlkKQo+ICsgICAgICAg
ICAgICAgICBiYXNlID0gZ3Bpby0+cmVnX2RhdF9iYXNlLmFkZHI7Cj4gKyAgICAgICBlbHNlCj4g
KyAgICAgICAgICAgICAgIGJhc2UgPSBncGlvLT5yZWdfc2V0X2Jhc2UuYWRkcjsKPiArCj4gKyAg
ICAgICByZXQgPSBncGlvLT5yZWdfbWFza194bGF0ZShncGlvLCBiYXNlLCBvZmZzZXQsICZyZWcs
ICZtYXNrKTsKPiArICAgICAgIGlmIChyZXQpCj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7
Cj4gKwo+ICsgICAgICAgcmV0ID0gcmVnbWFwX3JlYWQoZ3Bpby0+cmVnbWFwLCByZWcsICZ2YWwp
Owo+ICsgICAgICAgaWYgKHJldCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArCj4g
KyAgICAgICByZXR1cm4gKHZhbCAmIG1hc2spID8gMSA6IDA7Cj4gK30KPiArCj4gK3N0YXRpYyB2
b2lkIGdwaW9fcmVnbWFwX3NldChzdHJ1Y3QgZ3Bpb19jaGlwICpjaGlwLCB1bnNpZ25lZCBpbnQg
b2Zmc2V0LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgdmFsKQo+ICt7Cj4gKyAg
ICAgICBzdHJ1Y3QgZ3Bpb19yZWdtYXBfZGF0YSAqZGF0YSA9IGdwaW9jaGlwX2dldF9kYXRhKGNo
aXApOwo+ICsgICAgICAgc3RydWN0IGdwaW9fcmVnbWFwICpncGlvID0gZGF0YS0+Z3BpbzsKPiAr
ICAgICAgIHVuc2lnbmVkIGludCBiYXNlID0gZ3Bpby0+cmVnX3NldF9iYXNlLmFkZHI7Cj4gKyAg
ICAgICB1bnNpZ25lZCBpbnQgcmVnLCBtYXNrOwo+ICsKPiArICAgICAgIGdwaW8tPnJlZ19tYXNr
X3hsYXRlKGdwaW8sIGJhc2UsIG9mZnNldCwgJnJlZywgJm1hc2spOwo+ICsgICAgICAgaWYgKHZh
bCkKPiArICAgICAgICAgICAgICAgcmVnbWFwX3VwZGF0ZV9iaXRzKGdwaW8tPnJlZ21hcCwgcmVn
LCBtYXNrLCBtYXNrKTsKPiArICAgICAgIGVsc2UKPiArICAgICAgICAgICAgICAgcmVnbWFwX3Vw
ZGF0ZV9iaXRzKGdwaW8tPnJlZ21hcCwgcmVnLCBtYXNrLCAwKTsKPiArfQo+ICsKPiArc3RhdGlj
IHZvaWQgZ3Bpb19yZWdtYXBfc2V0X3dpdGhfY2xlYXIoc3RydWN0IGdwaW9fY2hpcCAqY2hpcCwK
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgb2Zm
c2V0LCBpbnQgdmFsKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZ3Bpb19yZWdtYXBfZGF0YSAqZGF0
YSA9IGdwaW9jaGlwX2dldF9kYXRhKGNoaXApOwo+ICsgICAgICAgc3RydWN0IGdwaW9fcmVnbWFw
ICpncGlvID0gZGF0YS0+Z3BpbzsKPiArICAgICAgIHVuc2lnbmVkIGludCBiYXNlOwo+ICsgICAg
ICAgdW5zaWduZWQgaW50IHJlZywgbWFzazsKPiArCj4gKyAgICAgICBpZiAodmFsKQo+ICsgICAg
ICAgICAgICAgICBiYXNlID0gZ3Bpby0+cmVnX3NldF9iYXNlLmFkZHI7Cj4gKyAgICAgICBlbHNl
Cj4gKyAgICAgICAgICAgICAgIGJhc2UgPSBncGlvLT5yZWdfY2xyX2Jhc2UuYWRkcjsKPiArCj4g
KyAgICAgICBncGlvLT5yZWdfbWFza194bGF0ZShncGlvLCBiYXNlLCBvZmZzZXQsICZyZWcsICZt
YXNrKTsKPiArICAgICAgIHJlZ21hcF93cml0ZShncGlvLT5yZWdtYXAsIHJlZywgbWFzayk7Cj4g
K30KPiArCj4gK3N0YXRpYyBpbnQgZ3Bpb19yZWdtYXBfZ2V0X2RpcmVjdGlvbihzdHJ1Y3QgZ3Bp
b19jaGlwICpjaGlwLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNp
Z25lZCBpbnQgb2Zmc2V0KQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZ3Bpb19yZWdtYXBfZGF0YSAq
ZGF0YSA9IGdwaW9jaGlwX2dldF9kYXRhKGNoaXApOwo+ICsgICAgICAgc3RydWN0IGdwaW9fcmVn
bWFwICpncGlvID0gZGF0YS0+Z3BpbzsKPiArICAgICAgIHVuc2lnbmVkIGludCB2YWwsIHJlZywg
bWFzazsKPiArICAgICAgIHVuc2lnbmVkIGludCBiYXNlOwo+ICsgICAgICAgaW50IGludmVydDsK
PiArICAgICAgIGludCByZXQ7Cj4gKwo+ICsgICAgICAgaWYgKGdwaW8tPnJlZ19kaXJfb3V0X2Jh
c2UudmFsaWQpIHsKPiArICAgICAgICAgICAgICAgYmFzZSA9IGdwaW8tPnJlZ19kaXJfb3V0X2Jh
c2UuYWRkcjsKPiArICAgICAgICAgICAgICAgaW52ZXJ0ID0gMDsKPiArICAgICAgIH0gZWxzZSBp
ZiAoZ3Bpby0+cmVnX2Rpcl9pbl9iYXNlLnZhbGlkKSB7Cj4gKyAgICAgICAgICAgICAgIGJhc2Ug
PSBncGlvLT5yZWdfZGlyX2luX2Jhc2UuYWRkcjsKPiArICAgICAgICAgICAgICAgaW52ZXJ0ID0g
MTsKPiArICAgICAgIH0gZWxzZSB7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiBHUElPX0xJTkVf
RElSRUNUSU9OX0lOOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIHJldCA9IGdwaW8tPnJlZ19t
YXNrX3hsYXRlKGdwaW8sIGJhc2UsIG9mZnNldCwgJnJlZywgJm1hc2spOwo+ICsgICAgICAgaWYg
KHJldCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArCj4gKyAgICAgICByZXQgPSBy
ZWdtYXBfcmVhZChncGlvLT5yZWdtYXAsIHJlZywgJnZhbCk7Cj4gKyAgICAgICBpZiAocmV0KQo+
ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ICsKPiArICAgICAgIGlmICghISh2YWwgJiBt
YXNrKSBeIGludmVydCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIEdQSU9fTElORV9ESVJFQ1RJ
T05fT1VUOwo+ICsgICAgICAgZWxzZQo+ICsgICAgICAgICAgICAgICByZXR1cm4gR1BJT19MSU5F
X0RJUkVDVElPTl9JTjsKPiArfQo+ICsKPiArc3RhdGljIGludCBncGlvX3JlZ21hcF9zZXRfZGly
ZWN0aW9uKHN0cnVjdCBncGlvX2NoaXAgKmNoaXAsCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHVuc2lnbmVkIGludCBvZmZzZXQsIGJvb2wgb3V0cHV0KQo+ICt7Cj4gKyAg
ICAgICBzdHJ1Y3QgZ3Bpb19yZWdtYXBfZGF0YSAqZGF0YSA9IGdwaW9jaGlwX2dldF9kYXRhKGNo
aXApOwo+ICsgICAgICAgc3RydWN0IGdwaW9fcmVnbWFwICpncGlvID0gZGF0YS0+Z3BpbzsKPiAr
ICAgICAgIHVuc2lnbmVkIGludCB2YWwsIHJlZywgbWFzazsKPiArICAgICAgIHVuc2lnbmVkIGlu
dCBiYXNlOwo+ICsgICAgICAgaW50IGludmVydDsKPiArICAgICAgIGludCByZXQ7Cj4gKwo+ICsg
ICAgICAgaWYgKGdwaW8tPnJlZ19kaXJfb3V0X2Jhc2UudmFsaWQpIHsKPiArICAgICAgICAgICAg
ICAgYmFzZSA9IGdwaW8tPnJlZ19kaXJfb3V0X2Jhc2UuYWRkcjsKPiArICAgICAgICAgICAgICAg
aW52ZXJ0ID0gMDsKPiArICAgICAgIH0gZWxzZSBpZiAoZ3Bpby0+cmVnX2Rpcl9pbl9iYXNlLnZh
bGlkKSB7Cj4gKyAgICAgICAgICAgICAgIGJhc2UgPSBncGlvLT5yZWdfZGlyX2luX2Jhc2UuYWRk
cjsKPiArICAgICAgICAgICAgICAgaW52ZXJ0ID0gMTsKPiArICAgICAgIH0gZWxzZSB7Cj4gKyAg
ICAgICAgICAgICAgIHJldHVybiAwOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIHJldCA9IGdw
aW8tPnJlZ19tYXNrX3hsYXRlKGdwaW8sIGJhc2UsIG9mZnNldCwgJnJlZywgJm1hc2spOwo+ICsg
ICAgICAgaWYgKHJldCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArCj4gKyAgICAg
ICBpZiAoIWludmVydCkKPiArICAgICAgICAgICAgICAgdmFsID0gKG91dHB1dCkgPyBtYXNrIDog
MDsKPiArICAgICAgIGVsc2UKPiArICAgICAgICAgICAgICAgdmFsID0gKG91dHB1dCkgPyAwIDog
bWFzazsKPiArCj4gKyAgICAgICByZXR1cm4gcmVnbWFwX3VwZGF0ZV9iaXRzKGdwaW8tPnJlZ21h
cCwgcmVnLCBtYXNrLCB2YWwpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGdwaW9fcmVnbWFwX2Rp
cmVjdGlvbl9pbnB1dChzdHJ1Y3QgZ3Bpb19jaGlwICpjaGlwLAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBvZmZzZXQpCj4gK3sKPiArICAgICAg
IHJldHVybiBncGlvX3JlZ21hcF9zZXRfZGlyZWN0aW9uKGNoaXAsIG9mZnNldCwgZmFsc2UpOwo+
ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGdwaW9fcmVnbWFwX2RpcmVjdGlvbl9vdXRwdXQoc3RydWN0
IGdwaW9fY2hpcCAqY2hpcCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgdW5zaWduZWQgaW50IG9mZnNldCwgaW50IHZhbHVlKQo+ICt7Cj4gKyAgICAgICBncGlvX3Jl
Z21hcF9zZXQoY2hpcCwgb2Zmc2V0LCB2YWx1ZSk7Cj4gKyAgICAgICByZXR1cm4gZ3Bpb19yZWdt
YXBfc2V0X2RpcmVjdGlvbihjaGlwLCBvZmZzZXQsIHRydWUpOwo+ICt9Cj4gKwo+ICtzdGF0aWMg
aW50IGdwaW9fcmVnbWFwX3RvX2lycShzdHJ1Y3QgZ3Bpb19jaGlwICpjaGlwLCB1bnNpZ25lZCBp
bnQgb2Zmc2V0KQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZ3Bpb19yZWdtYXBfZGF0YSAqZGF0YSA9
IGdwaW9jaGlwX2dldF9kYXRhKGNoaXApOwo+ICsgICAgICAgc3RydWN0IGdwaW9fcmVnbWFwICpn
cGlvID0gZGF0YS0+Z3BpbzsKPiArCj4gKyAgICAgICAvKiB0aGUgdXNlciBtaWdodCBoYXZlIGl0
cyBvd24gLnRvX2lycSBjYWxsYmFjayAqLwo+ICsgICAgICAgaWYgKGdwaW8tPnRvX2lycSkKPiAr
ICAgICAgICAgICAgICAgcmV0dXJuIGdwaW8tPnRvX2lycShncGlvLCBvZmZzZXQpOwo+ICsKPiAr
ICAgICAgIHJldHVybiBpcnFfY3JlYXRlX21hcHBpbmcoZ3Bpby0+aXJxX2RvbWFpbiwgb2Zmc2V0
KTsKPiArfQo+ICsKPiArLyoqCj4gKyAqIGdwaW9fcmVnbWFwX3JlZ2lzdGVyKCkgLSBSZWdpc3Rl
ciBhIGdlbmVyaWMgcmVnbWFwIEdQSU8gY29udHJvbGxlcgo+ICsgKgo+ICsgKiBAZ3BpbzogZ3Bp
b19yZWdtYXAgZGV2aWNlIHRvIHJlZ2lzdGVyCj4gKyAqCj4gKyAqIFJldHVybnMgMCBvbiBzdWNj
ZXNzIG9yIGFuIGVycm5vIG9uIGZhaWx1cmUuCj4gKyAqLwo+ICtpbnQgZ3Bpb19yZWdtYXBfcmVn
aXN0ZXIoc3RydWN0IGdwaW9fcmVnbWFwICpncGlvKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZ3Bp
b19yZWdtYXBfZGF0YSAqZDsKPiArICAgICAgIHN0cnVjdCBncGlvX2NoaXAgKmNoaXA7Cj4gKyAg
ICAgICBpbnQgcmV0Owo+ICsKPiArICAgICAgIGlmICghZ3Bpby0+cGFyZW50KQo+ICsgICAgICAg
ICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiArCj4gKyAgICAgICBpZiAoIWdwaW8tPm5ncGlvKQo+
ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiArCj4gKyAgICAgICAvKiB3ZSBuZWVk
IGF0IGxlYXN0IG9uZSAqLwo+ICsgICAgICAgaWYgKCFncGlvLT5yZWdfZGF0X2Jhc2UudmFsaWQg
JiYgIWdwaW8tPnJlZ19zZXRfYmFzZS52YWxpZCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1F
SU5WQUw7Cj4gKwo+ICsgICAgICAgLyogd2UgZG9uJ3Qgc3VwcG9ydCBoYXZpbmcgYm90aCByZWdp
c3RlcnMgc2ltdWxhbmlvdXNseSBmb3Igbm93ICovCj4gKyAgICAgICBpZiAoZ3Bpby0+cmVnX2Rp
cl9vdXRfYmFzZS52YWxpZCAmJiBncGlvLT5yZWdfZGlyX2luX2Jhc2UudmFsaWQpCj4gKyAgICAg
ICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ICsKPiArICAgICAgIC8qIGlmIG5vdCBzZXQsIGFz
c3VtZSB0aGV5IGFyZSBjb25zZWN1dGl2ZSAqLwo+ICsgICAgICAgaWYgKCFncGlvLT5yZWdfc3Ry
aWRlKQo+ICsgICAgICAgICAgICAgICBncGlvLT5yZWdfc3RyaWRlID0gMTsKPiArCj4gKyAgICAg
ICAvKiBpZiBub3Qgc2V0LCBhc3N1bWUgdGhlcmUgaXMgb25seSBvbmUgcmVnaXN0ZXIgKi8KPiAr
ICAgICAgIGlmICghZ3Bpby0+bmdwaW9fcGVyX3JlZykKPiArICAgICAgICAgICAgICAgZ3Bpby0+
bmdwaW9fcGVyX3JlZyA9IGdwaW8tPm5ncGlvOwo+ICsKPiArICAgICAgIGlmICghZ3Bpby0+cmVn
X21hc2tfeGxhdGUpCj4gKyAgICAgICAgICAgICAgIGdwaW8tPnJlZ19tYXNrX3hsYXRlID0gZ3Bp
b19yZWdtYXBfc2ltcGxlX3hsYXRlOwo+ICsKPiArICAgICAgIGQgPSBremFsbG9jKHNpemVvZigq
ZCksIEdGUF9LRVJORUwpOwo+ICsgICAgICAgaWYgKCFkKQo+ICsgICAgICAgICAgICAgICByZXR1
cm4gLUVOT01FTTsKPiArCj4gKyAgICAgICBncGlvLT5kYXRhID0gZDsKPiArICAgICAgIGQtPmdw
aW8gPSBncGlvOwo+ICsKPiArICAgICAgIGNoaXAgPSAmZC0+Z3Bpb19jaGlwOwo+ICsgICAgICAg
Y2hpcC0+cGFyZW50ID0gZ3Bpby0+cGFyZW50Owo+ICsgICAgICAgY2hpcC0+bGFiZWwgPSBncGlv
LT5sYWJlbDsKPiArICAgICAgIGNoaXAtPmJhc2UgPSAtMTsKPiArICAgICAgIGNoaXAtPm5ncGlv
ID0gZ3Bpby0+bmdwaW87Cj4gKyAgICAgICBjaGlwLT5jYW5fc2xlZXAgPSB0cnVlOwo+ICsgICAg
ICAgY2hpcC0+Z2V0ID0gZ3Bpb19yZWdtYXBfZ2V0Owo+ICsKPiArICAgICAgIGlmICghY2hpcC0+
bGFiZWwpCj4gKyAgICAgICAgICAgICAgIGNoaXAtPmxhYmVsID0gZGV2X25hbWUoZ3Bpby0+cGFy
ZW50KTsKPiArCj4gKyAgICAgICBpZiAoZ3Bpby0+cmVnX3NldF9iYXNlLnZhbGlkICYmIGdwaW8t
PnJlZ19jbHJfYmFzZS52YWxpZCkKPiArICAgICAgICAgICAgICAgY2hpcC0+c2V0ID0gZ3Bpb19y
ZWdtYXBfc2V0X3dpdGhfY2xlYXI7Cj4gKyAgICAgICBlbHNlIGlmIChncGlvLT5yZWdfc2V0X2Jh
c2UudmFsaWQpCj4gKyAgICAgICAgICAgICAgIGNoaXAtPnNldCA9IGdwaW9fcmVnbWFwX3NldDsK
PiArCj4gKyAgICAgICBpZiAoZ3Bpby0+cmVnX2Rpcl9pbl9iYXNlLnZhbGlkIHx8IGdwaW8tPnJl
Z19kaXJfb3V0X2Jhc2UudmFsaWQpIHsKPiArICAgICAgICAgICAgICAgY2hpcC0+Z2V0X2RpcmVj
dGlvbiA9IGdwaW9fcmVnbWFwX2dldF9kaXJlY3Rpb247Cj4gKyAgICAgICAgICAgICAgIGNoaXAt
PmRpcmVjdGlvbl9pbnB1dCA9IGdwaW9fcmVnbWFwX2RpcmVjdGlvbl9pbnB1dDsKPiArICAgICAg
ICAgICAgICAgY2hpcC0+ZGlyZWN0aW9uX291dHB1dCA9IGdwaW9fcmVnbWFwX2RpcmVjdGlvbl9v
dXRwdXQ7Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgaWYgKGdwaW8tPmlycV9kb21haW4pCj4g
KyAgICAgICAgICAgICAgIGNoaXAtPnRvX2lycSA9IGdwaW9fcmVnbWFwX3RvX2lycTsKPiArCj4g
KyAgICAgICByZXQgPSBncGlvY2hpcF9hZGRfZGF0YShjaGlwLCBkKTsKPiArICAgICAgIGlmIChy
ZXQgPCAwKQo+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9hbGxvYzsKPiArCj4gKyAgICAgICBy
ZXR1cm4gMDsKPiArCj4gK2Vycl9hbGxvYzoKPiArICAgICAgIGtmcmVlKGQpOwo+ICsgICAgICAg
cmV0dXJuIHJldDsKPiArfQo+ICtFWFBPUlRfU1lNQk9MX0dQTChncGlvX3JlZ21hcF9yZWdpc3Rl
cik7Cj4gKwo+ICsvKioKPiArICogZ3Bpb19yZWdtYXBfdW5yZWdpc3RlcigpIC0gVW5yZWdpc3Rl
ciBhIGdlbmVyaWMgcmVnbWFwIEdQSU8gY29udHJvbGxlcgo+ICsgKgo+ICsgKiBAZ3BpbzogZ3Bp
b19yZWdtYXAgZGV2aWNlIHRvIHVucmVnaXN0ZXIKPiArICovCj4gK3ZvaWQgZ3Bpb19yZWdtYXBf
dW5yZWdpc3RlcihzdHJ1Y3QgZ3Bpb19yZWdtYXAgKmdwaW8pCj4gK3sKPiArICAgICAgIGdwaW9j
aGlwX3JlbW92ZSgmZ3Bpby0+ZGF0YS0+Z3Bpb19jaGlwKTsKPiArICAgICAgIGtmcmVlKGdwaW8t
PmRhdGEpOwo+ICt9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKGdwaW9fcmVnbWFwX3VucmVnaXN0ZXIp
Owo+ICsKPiArc3RhdGljIHZvaWQgZGV2bV9ncGlvX3JlZ21hcF91bnJlZ2lzdGVyKHN0cnVjdCBk
ZXZpY2UgKmRldiwgdm9pZCAqcmVzKQo+ICt7Cj4gKyAgICAgICBncGlvX3JlZ21hcF91bnJlZ2lz
dGVyKCooc3RydWN0IGdwaW9fcmVnbWFwICoqKXJlcyk7Cj4gK30KPiArCj4gKy8qKgo+ICsgKiBk
ZXZtX2dwaW9fcmVnbWFwX3JlZ2lzdGVyKCkgLSByZXNvdXJjZSBtYW5hZ2VkIGdwaW9fcmVnbWFw
X3JlZ2lzdGVyKCkKPiArICoKPiArICogQGRldjogZGV2aWNlIHRoYXQgaXMgcmVnaXN0ZXJpbmcg
dGhpcyBHUElPIGRldmljZQo+ICsgKiBAZ3BpbzogZ3Bpb19yZWdtYXAgZGV2aWNlIHRvIHJlZ2lz
dGVyCj4gKyAqCj4gKyAqIE1hbmFnZWQgZ3Bpb19yZWdtYXBfcmVnaXN0ZXIoKS4gRm9yIGdlbmVy
aWMgcmVnbWFwIEdQSU8gZGV2aWNlIHJlZ2lzdGVyZWQgYnkKPiArICogdGhpcyBmdW5jdGlvbiwg
Z3Bpb19yZWdtYXBfdW5yZWdpc3RlcigpIGlzIGF1dG9tYXRpY2FsbHkgY2FsbGVkIG9uIGRyaXZl
cgo+ICsgKiBkZXRhY2guIFNlZSBncGlvX3JlZ21hcF9yZWdpc3RlcigpIGZvciBtb3JlIGluZm9y
bWF0aW9uLgo+ICsgKi8KPiAraW50IGRldm1fZ3Bpb19yZWdtYXBfcmVnaXN0ZXIoc3RydWN0IGRl
dmljZSAqZGV2LCBzdHJ1Y3QgZ3Bpb19yZWdtYXAgKmdwaW8pCj4gK3sKPiArICAgICAgIHN0cnVj
dCBncGlvX3JlZ21hcCAqKnB0cjsKPiArICAgICAgIGludCByZXQ7Cj4gKwo+ICsgICAgICAgcHRy
ID0gZGV2cmVzX2FsbG9jKGRldm1fZ3Bpb19yZWdtYXBfdW5yZWdpc3Rlciwgc2l6ZW9mKCpwdHIp
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIEdGUF9LRVJORUwpOwo+ICsgICAgICAgaWYg
KCFwdHIpCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+ICsKPiArICAgICAgIHJl
dCA9IGdwaW9fcmVnbWFwX3JlZ2lzdGVyKGdwaW8pOwo+ICsgICAgICAgaWYgKHJldCkgewo+ICsg
ICAgICAgICAgICAgICBkZXZyZXNfZnJlZShwdHIpOwo+ICsgICAgICAgICAgICAgICByZXR1cm4g
cmV0Owo+ICsgICAgICAgfQo+ICsKPiArICAgICAgICpwdHIgPSBncGlvOwo+ICsgICAgICAgZGV2
cmVzX2FkZChkZXYsIHB0cik7Cj4gKwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gK30KPiArRVhQT1JU
X1NZTUJPTF9HUEwoZGV2bV9ncGlvX3JlZ21hcF9yZWdpc3Rlcik7Cj4gKwo+ICtNT0RVTEVfQVVU
SE9SKCJNaWNoYWVsIFdhbGxlIDxtaWNoYWVsQHdhbGxlLmNjPiIpOwo+ICtNT0RVTEVfREVTQ1JJ
UFRJT04oIkdQSU8gZ2VuZXJpYyByZWdtYXAgZHJpdmVyIGNvcmUiKTsKPiArTU9EVUxFX0xJQ0VO
U0UoIkdQTCIpOwo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2dwaW8tcmVnbWFwLmggYi9p
bmNsdWRlL2xpbnV4L2dwaW8tcmVnbWFwLmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4
IDAwMDAwMDAwMDAwMC4uYWQ2Mzk1NWUwZTQzCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2luY2x1
ZGUvbGludXgvZ3Bpby1yZWdtYXAuaAo+IEBAIC0wLDAgKzEsODggQEAKPiArLyogU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSAqLwo+ICsKPiArI2lmbmRlZiBfTElOVVhfR1BJ
T19SRUdNQVBfSAo+ICsjZGVmaW5lIF9MSU5VWF9HUElPX1JFR01BUF9ICj4gKwo+ICtzdHJ1Y3Qg
Z3Bpb19yZWdtYXBfYWRkciB7Cj4gKyAgICAgICB1bnNpZ25lZCBpbnQgYWRkcjsKPiArICAgICAg
IGJvb2wgdmFsaWQ7Cj4gK307CgpJJ20gbm90IHF1aXRlIHN1cmUgd2hhdCB0aGUgbWVhbmluZyBi
ZWhpbmQgdGhlIHZhbGlkIGZpZWxkIGhlcmUgaXMuCldoZW4gd291bGQgd2UgcG90ZW50aWFsbHkg
c2V0IGl0IHRvIGZhbHNlPwoKPiArI2RlZmluZSBHUElPX1JFR01BUF9BRERSKF9hZGRyKSBcCj4g
KyAgICAgICAoKHN0cnVjdCBncGlvX3JlZ21hcF9hZGRyKSB7IC5hZGRyID0gX2FkZHIsIC52YWxp
ZCA9IHRydWUgfSkKPiArCj4gKy8qKgo+ICsgKiBzdHJ1Y3QgZ3Bpb19yZWdtYXAgLSBEZXNjcmlw
dGlvbiBvZiBhIGdlbmVyaWMgcmVnbWFwIGdwaW9fY2hpcC4KPiArICoKPiArICogQHBhcmVudDog
ICAgICAgICAgICBUaGUgcGFyZW50IGRldmljZQo+ICsgKiBAcmVnbWFwOiAgICAgICAgICAgIFRo
ZSByZWdtYXAgdXNlIHRvIGFjY2VzcyB0aGUgcmVnaXN0ZXJzCgpzL3VzZS91c2VkLwoKPiArICog
ICAgICAgICAgICAgICAgICAgICBnaXZlbiwgdGhlIG5hbWUgb2YgdGhlIGRldmljZSBpcyB1c2Vk
Cj4gKyAqIEBsYWJlbDogICAgICAgICAgICAgKE9wdGlvbmFsKSBEZXNjcmlwdGl2ZSBuYW1lIGZv
ciBHUElPIGNvbnRyb2xsZXIuCj4gKyAqICAgICAgICAgICAgICAgICAgICAgSWYgbm90IGdpdmVu
LCB0aGUgbmFtZSBvZiB0aGUgZGV2aWNlIGlzIHVzZWQuCj4gKyAqIEBuZ3BpbzogICAgICAgICAg
ICAgTnVtYmVyIG9mIEdQSU9zCj4gKyAqIEByZWdfZGF0X2Jhc2U6ICAgICAgKE9wdGlvbmFsKSAo
aW4pIHJlZ2lzdGVyIGJhc2UgYWRkcmVzcwo+ICsgKiBAcmVnX3NldF9iYXNlOiAgICAgIChPcHRp
b25hbCkgc2V0IHJlZ2lzdGVyIGJhc2UgYWRkcmVzcwo+ICsgKiBAcmVnX2Nscl9iYXNlOiAgICAg
IChPcHRpb25hbCkgY2xlYXIgcmVnaXN0ZXIgYmFzZSBhZGRyZXNzCj4gKyAqIEByZWdfZGlyX2lu
X2Jhc2U6ICAgKE9wdGlvbmFsKSBvdXQgc2V0dGluZyByZWdpc3RlciBiYXNlIGFkZHJlc3MKPiAr
ICogQHJlZ19kaXJfb3V0X2Jhc2U6ICAoT3B0aW9uYWwpIGluIHNldHRpbmcgcmVnaXN0ZXIgYmFz
ZSBhZGRyZXNzCj4gKyAqIEByZWdfc3RyaWRlOiAgICAgICAgICAgICAgICAoT3B0aW9uYWwpIE1h
eSBiZSBzZXQgaWYgdGhlIHJlZ2lzdGVycyAob2YgdGhlCj4gKyAqICAgICAgICAgICAgICAgICAg
ICAgc2FtZSB0eXBlLCBkYXQsIHNldCwgZXRjKSBhcmUgbm90IGNvbnNlY3V0aXZlLgo+ICsgKiBA
bmdwaW9fcGVyX3JlZzogICAgIE51bWJlciBvZiBHUElPcyBwZXIgcmVnaXN0ZXIKPiArICogQGly
cV9kb21haW46ICAgICAgICAgICAgICAgIChPcHRpb25hbCkgSVJRIGRvbWFpbiBpZiB0aGUgY29u
dHJvbGxlciBpcwo+ICsgKiAgICAgICAgICAgICAgICAgICAgIGludGVycnVwdC1jYXBhYmxlCj4g
KyAqIEByZWdfbWFza194bGF0ZTogICAgIChPcHRpb25hbCkgVHJhbnNsYXRlcyBiYXNlIGFkZHJl
c3MgYW5kIEdQSU8KPiArICogICAgICAgICAgICAgICAgICAgICBvZmZzZXQgdG8gYSByZWdpc3Rl
ci9iaXRtYXNrIHBhaXIuIElmIG5vdAo+ICsgKiAgICAgICAgICAgICAgICAgICAgIGdpdmVuIHRo
ZSBkZWZhdWx0IGdwaW9fcmVnbWFwX3NpbXBsZV94bGF0ZSgpCj4gKyAqICAgICAgICAgICAgICAg
ICAgICAgaXMgdXNlZC4KPiArICogQHRvX2lycTogICAgICAgICAgICAoT3B0aW9uYWwpIE1hcHMg
R1BJTyBvZmZzZXQgdG8gYSBpcnEgbnVtYmVyLgo+ICsgKiAgICAgICAgICAgICAgICAgICAgIEJ5
IGRlZmF1bHQgYXNzdW1lcyBhIGxpbmVhciBtYXBwaW5nIG9mIHRoZQo+ICsgKiAgICAgICAgICAg
ICAgICAgICAgIGdpdmVuIGlycV9kb21haW4uCj4gKyAqIEBkcml2ZXJfZGF0YTogICAgICAgUG9p
bnRlciB0byB0aGUgZHJpdmVycyBwcml2YXRlIGRhdGEuIE5vdCB1c2VkIGJ5Cj4gKyAqICAgICAg
ICAgICAgICAgICAgICAgZ3Bpby1yZWdtYXAuCj4gKyAqCj4gKyAqIFRoZSByZWdfbWFza194bGF0
ZSB0cmFuc2xhdGVzIGEgZ2l2ZW4gYmFzZSBhZGRyZXNzIGFuZCBHUElPIG9mZnNldCB0bwo+ICsg
KiByZWdpc3RlciBhbmQgbWFzayBwYWlyLiBUaGUgYmFzZSBhZGRyZXNzIGlzIG9uZSBvZiB0aGUg
Z2l2ZW4gcmVnXypfYmFzZS4KPiArICovCj4gK3N0cnVjdCBncGlvX3JlZ21hcCB7CgpJJ2QgcHJl
ZmVyIHRvIGZvbGxvdyBhIHBhdHRlcm4gc2VlbiBpbiBvdGhlciBzdWNoIEFQSXMgb2YgY2FsbGlu
ZyB0aGlzCnN0cnVjdHVyZSBncGlvX3JlZ21hcF9jb25maWcgYW5kIGNyZWF0aW5nIGFub3RoZXIg
cHJpdmF0ZSBzdHJ1Y3R1cmUKY2FsbGVkIGdwaW9fcmVnbWFwIHVzZWQgaW4gY2FsbGJhY2tzIHRo
YXQgd291bGQgb25seSBjb250YWluIG5lY2Vzc2FyeQpmaWVsZHMuCgo+ICsgICAgICAgc3RydWN0
IGRldmljZSAqcGFyZW50Owo+ICsgICAgICAgc3RydWN0IHJlZ21hcCAqcmVnbWFwOwo+ICsgICAg
ICAgc3RydWN0IGdwaW9fcmVnbWFwX2RhdGEgKmRhdGE7Cj4gKwo+ICsgICAgICAgY29uc3QgY2hh
ciAqbGFiZWw7Cj4gKyAgICAgICBpbnQgbmdwaW87Cj4gKwo+ICsgICAgICAgc3RydWN0IGdwaW9f
cmVnbWFwX2FkZHIgcmVnX2RhdF9iYXNlOwo+ICsgICAgICAgc3RydWN0IGdwaW9fcmVnbWFwX2Fk
ZHIgcmVnX3NldF9iYXNlOwo+ICsgICAgICAgc3RydWN0IGdwaW9fcmVnbWFwX2FkZHIgcmVnX2Ns
cl9iYXNlOwo+ICsgICAgICAgc3RydWN0IGdwaW9fcmVnbWFwX2FkZHIgcmVnX2Rpcl9pbl9iYXNl
Owo+ICsgICAgICAgc3RydWN0IGdwaW9fcmVnbWFwX2FkZHIgcmVnX2Rpcl9vdXRfYmFzZTsKPiAr
ICAgICAgIGludCByZWdfc3RyaWRlOwo+ICsgICAgICAgaW50IG5ncGlvX3Blcl9yZWc7Cj4gKyAg
ICAgICBzdHJ1Y3QgaXJxX2RvbWFpbiAqaXJxX2RvbWFpbjsKPiArCj4gKyAgICAgICBpbnQgKCpy
ZWdfbWFza194bGF0ZSkoc3RydWN0IGdwaW9fcmVnbWFwICpncGlvLCB1bnNpZ25lZCBpbnQgYmFz
ZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgb2Zmc2V0LCB1
bnNpZ25lZCBpbnQgKnJlZywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25l
ZCBpbnQgKm1hc2spOwo+ICsgICAgICAgaW50ICgqdG9faXJxKShzdHJ1Y3QgZ3Bpb19yZWdtYXAg
KmdwaW8sIHVuc2lnbmVkIGludCBvZmZzZXQpOwo+ICsKPiArICAgICAgIHZvaWQgKmRyaXZlcl9k
YXRhOwo+ICt9Owo+ICsKPiArc3RhdGljIGlubGluZSB2b2lkIGdwaW9fcmVnbWFwX3NldF9kcnZk
YXRhKHN0cnVjdCBncGlvX3JlZ21hcCAqZ3BpbywKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgdm9pZCAqZGF0YSkKPiArewo+ICsgICAgICAgZ3Bpby0+ZHJpdmVy
X2RhdGEgPSBkYXRhOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW5saW5lIHZvaWQgKmdwaW9fcmVnbWFw
X2dldF9kcnZkYXRhKHN0cnVjdCBncGlvX3JlZ21hcCAqZ3BpbykKPiArewo+ICsgICAgICAgcmV0
dXJuIGdwaW8tPmRyaXZlcl9kYXRhOwo+ICt9Cj4gKwo+ICtpbnQgZ3Bpb19yZWdtYXBfcmVnaXN0
ZXIoc3RydWN0IGdwaW9fcmVnbWFwICpncGlvKTsKPiArdm9pZCBncGlvX3JlZ21hcF91bnJlZ2lz
dGVyKHN0cnVjdCBncGlvX3JlZ21hcCAqZ3Bpbyk7Cj4gK2ludCBkZXZtX2dwaW9fcmVnbWFwX3Jl
Z2lzdGVyKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGdwaW9fcmVnbWFwICpncGlvKTsKPiAr
aW50IGdwaW9fcmVnbWFwX3NpbXBsZV94bGF0ZShzdHJ1Y3QgZ3Bpb19yZWdtYXAgKmdwaW8sIHVu
c2lnbmVkIGludCBiYXNlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQg
aW50IG9mZnNldCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCAq
cmVnLCB1bnNpZ25lZCBpbnQgKm1hc2spOwo+ICsKPiArI2VuZGlmIC8qIF9MSU5VWF9HUElPX1JF
R01BUF9IICovCj4gLS0KPiAyLjIwLjEKPgoKT3ZlcmFsbCBsb29rcyByZWFsbHkgbmljZS4gSSdt
IGhhcHB5IHdlJ2xsIGhhdmUgaXQgaW4gdjUuOC4KCkJlc3QgcmVnYXJkcywKQmFydG9zeiBHb2xh
c3pld3NraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
