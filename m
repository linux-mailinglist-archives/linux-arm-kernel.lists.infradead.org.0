Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DA91A77E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 11:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wib5pW1NaFzAvsu1mypdvfN7Xn3E4q3k/WYP0QgE88o=; b=nw6siJsJ4ihM1D
	PwbQUdgQO+iOgROxuFroJW+m4VprYh0IAsxvgDp0oshmyyhwteHZTuuWHmh5H9pCgZXs27lrEIJ9+
	OYUdETwpB2e5jQC51uTbqbkVa0ueKuUjiK6O94KWfG7lBImNo7tkCRFnrA1w16GOc9tgdRT1+L+Jo
	95nfEDTY5sICn0nCUHopihTpHxm+26IxcjOAhsOGoNjOLqqMn5PpSbUGcoX5gBZdk1lDp8uTbC5Yt
	4dnpUwvkuBK+Eh3nzhC7vzk9gav8d2AnyR2IO9XO+aK4vp+cz+ZijGiLWgDT+nnlfALbHPm106seu
	CGY2aKDbSphM3I55ljig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIGq-0007l0-NH; Tue, 14 Apr 2020 09:54:20 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOID4-0004CK-FU
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 09:50:29 +0000
Received: by mail-qk1-x741.google.com with SMTP id b62so12512855qkf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 02:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/DhJ4EzT/qK/S+BlKlO4uoMzq/4I59+oyG4OzepvYlA=;
 b=yJpe/IZa7MG2vVVoYih+Gt4OkeMZMIvXQy0ofjG6eCtenRILevCwunlUaag128HxX0
 llUMyq9HY/d0RA/S0LzMJe749ahbdp6VIi1IRrO3LzEQMi9DEgG1QfFESgbczZg4zbqx
 xmwE3xvH7zCCy39akXq6NFDYZmW4Y8zcHs2wRX9BnXCq4zt7G/xnAccSNXX/Y2c0b+dL
 dxysTNdJ2ZLkdH4xkyQGJUTeHnfYgrJjHIAPmN000ubmzePf6Q4XA0WtiZvlRZiaUOiQ
 wOsikaEjb1PlflvbiZOzGTYL+e6HEifR7zEi+mpmfAWgAKqALFp+lIxpz1jPSVhW7O+2
 KjGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/DhJ4EzT/qK/S+BlKlO4uoMzq/4I59+oyG4OzepvYlA=;
 b=YO0gqZVMMXBj0T+BGQpcj0ZzY6STt8HpbN5EzcppkUjlxmot8OuX8mVr4B8An14IeZ
 HjqsKiCIhSl58J9zeOTW1MtPBK001cRAETotATL03Kr2gXa0Q9ac/a5zv5aNzjdrxcdQ
 ajLYB//r71+CDAnAWH038b2VEDyDeInbmT+BuPKM4ZpccnXKV71UAyJKQfbvOmNjEx/g
 YzLI5aFVE7SLjcHUr4QQnpqUdTpnX8jDJoCHc9akvzz8zRJyDyivDM21xliQVwdWV1c3
 6qthJqgTi1mMtbA/l1lsywLZdqxPv84ttGeP9VFJHD2QmMnF9ZOm4N2S7iFFNBgUMb++
 FgGQ==
X-Gm-Message-State: AGi0PuYag4uI0nPu8iTtKJiuB0bzlCvNv/8HAzlIvyoj9wkod47oalRb
 mAI4yQQ+qi9RWpCSccwMaos5t8PScesZF4/VbVNa/g==
X-Google-Smtp-Source: APiQypLRnSNRTZ7adXEhjoANPp4O6Cddg20KUv7l9FAno3ZccIj+4u1/MYSt+Ss+59XVof24kucbUMpsSRx+R0RnkaI=
X-Received: by 2002:a05:620a:1289:: with SMTP id
 w9mr5503980qki.263.1586857822917; 
 Tue, 14 Apr 2020 02:50:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-11-michael@walle.cc>
 <CAMpxmJVE3PgVCxkQ-ryc5=KSrKcpdmk1cnJUxJBz9QFCx-e_+A@mail.gmail.com>
 <80bd8661ec8a1f5eda3f09a267846eaa@walle.cc>
In-Reply-To: <80bd8661ec8a1f5eda3f09a267846eaa@walle.cc>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Tue, 14 Apr 2020 11:50:11 +0200
Message-ID: <CAMpxmJVC7e9JnHzBo-h8M1+KmcA32=Rvxo7+znH=-kAbcCr_LQ@mail.gmail.com>
Subject: Re: [PATCH v2 10/16] gpio: add a reusable generic gpio_chip using
 regmap
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_025026_696626_0BDA2807 
X-CRM114-Status: GOOD (  40.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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

cG9uLiwgNiBrd2kgMjAyMCBvIDEyOjEwIE1pY2hhZWwgV2FsbGUgPG1pY2hhZWxAd2FsbGUuY2M+
IG5hcGlzYcWCKGEpOgo+Cj4KPiBIaSBCYXJ0b3N6LCBIaSBNYXJrIEJyb3duLAo+Cj4gQW0gMjAy
MC0wNC0wNiAwOTo0Nywgc2NocmllYiBCYXJ0b3N6IEdvbGFzemV3c2tpOgo+ID4gY3p3LiwgMiBr
d2kgMjAyMCBvIDIyOjM3IE1pY2hhZWwgV2FsbGUgPG1pY2hhZWxAd2FsbGUuY2M+IG5hcGlzYcWC
KGEpOgo+ID4+Cj4gPj4gVGhlcmUgYXJlIHF1aXRlIGEgbG90IHNpbXBsZSBHUElPIGNvbnRyb2xs
ZXIgd2hpY2ggYXJlIHVzaW5nIHJlZ21hcCB0bwo+ID4+IGFjY2VzcyB0aGUgaGFyZHdhcmUuIFRo
aXMgZHJpdmVyIHRyaWVzIHRvIGJlIGEgYmFzZSB0byB1bmlmeSBleGlzdGluZwo+ID4+IGNvZGUg
aW50byBvbmUgcGxhY2UuIFRoaXMgd29uJ3QgY292ZXIgZXZlcnl0aGluZyBidXQgaXQgc2hvdWxk
IGJlIGEKPiA+PiBnb29kCj4gPj4gc3RhcnRpbmcgcG9pbnQuCj4gPj4KPiA+PiBJdCBkb2VzIG5v
dCBpbXBsZW1lbnQgaXRzIG93biBpcnFfY2hpcCBiZWNhdXNlIHRoZXJlIGlzIGFscmVhZHkgYQo+
ID4+IGdlbmVyaWMgb25lIGZvciByZWdtYXAgYmFzZWQgZGV2aWNlcy4gSW5zdGVhZCwgdGhlIGly
cV9jaGlwIHdpbGwgYmUKPiA+PiBpbnN0YW5jaWF0ZWQgaW4gdGhlIHBhcmVudCBkcml2ZXIgYW5k
IGl0cyBpcnEgZG9tYWluIHdpbGwgYmUgYXNzb2NpYXRlCj4gPj4gdG8gdGhpcyBkcml2ZXIuCj4g
Pj4KPiA+PiBGb3Igbm93IGl0IGNvbnNpc3RzIG9mIHRoZSB1c3VhbCByZWdpc3RlcnMsIGxpa2Ug
c2V0IChhbmQgYW4gb3B0aW9uYWwKPiA+PiBjbGVhcikgZGF0YSByZWdpc3RlciwgYW4gaW5wdXQg
cmVnaXN0ZXIgYW5kIGRpcmVjdGlvbiByZWdpc3RlcnMuCj4gPj4gT3V0LW9mLXRoZS1ib3gsIGl0
IHN1cHBvcnRzIGNvbnNlY3V0aXZlIHJlZ2lzdGVyIG1hcHBpbmdzIGFuZCBtYXBwaW5ncwo+ID4+
IHdoZXJlIHRoZSByZWdpc3RlcnMgaGF2ZSBnYXBzIGJldHdlZW4gdGhlbSB3aXRoIGEgbGluZWFy
IG1hcHBpbmcKPiA+PiBiZXR3ZWVuCj4gPj4gR1BJTyBvZmZzZXQgYW5kIGJpdCBwb3NpdGlvbi4g
Rm9yIHdlaXJkZXIgbWFwcGluZ3MgdGhlIHVzZXIgY2FuCj4gPj4gcmVnaXN0ZXIKPiA+PiBpdHMg
b3duIC54bGF0ZSgpLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBXYWxsZSA8bWlj
aGFlbEB3YWxsZS5jYz4KPiA+Cj4gPiBIaSBNaWNoYWVsLAo+ID4KPiA+IFRoYW5rcyBmb3IgZG9p
bmcgdGhpcyEgV2hlbiBsb29raW5nIGF0IG90aGVyIGdlbmVyaWMgZHJpdmVyczoKPiA+IGdwaW8t
bW1pbyBhbmQgZ3Bpby1yZWcgSSBjYW4gc2VlIHRoZXJlIGFyZSBzb21lIGNvcm5lci1jYXNlcyBh
bmQgbW9yZQo+ID4gc3BlY2lmaWMgY29uZmlndXJhdGlvbiBvcHRpb25zIHdlIGNvdWxkIGFkZAo+
Cj4gSSBkaWRuJ3Qgd2FudCB0byBjb3B5IGV2ZXJ5IGJpdCB3aXRob3V0IGJlaW5nIGFibGUgdG8g
dGVzdCBpdC4KPgoKU3VyZSwgSSBkaWRuJ3QgbWVhbiB3ZSBuZWVkIHRvIGRvIGl0IG5vdyAtIGp1
c3Qgc2V0IGl0IGFzIHRoZSBmdXR1cmUgZ29hbC4KCj4gPiBidXQgaXQncyBub3QgYSBibG9ja2Vy
LAo+ID4gd2UnbGwgcHJvYmFibHkgYmUgZXh0ZW5kaW5nIHRoaXMgb25lIGFzIHdlIGNvbnZlcnQg
bW9yZSBkcml2ZXJzIHRvCj4gPiB1c2luZyBpdC4KPgo+IGNvcnJlY3QsIHRoYXQgd2FzIGFsc28g
bXkgcGxhbi4KPgo+ID4gUGVyc29uYWxseSBJJ2QgbG92ZSB0byBzZWUgZ3Bpby1tbWlvIGFuZCBn
cGlvLXJlZyByZW1vdmVkCj4gPiBhbmQgcmVwbGFjZWQgYnkgYSBzaW5nbGUsIGdlbmVyaWMgcmVn
bWFwIGludGVyZmFjZSBldmVudHVhbGx5Lgo+Cj4gYWdyZWVkLgo+Cj4KCltzbmlwIV0KCj4gPj4g
Kwo+ID4+ICsvKioKPiA+PiArICogZ3Bpb19yZWdtYXBfc2ltcGxlX3hsYXRlKCkgLSB0cmFuc2xh
dGUgYmFzZS9vZmZzZXQgdG8gcmVnL21hc2sKPiA+PiArICoKPiA+PiArICogVXNlIGEgc2ltcGxl
IGxpbmVhciBtYXBwaW5nIHRvIHRyYW5zbGF0ZSB0aGUgb2Zmc2V0IHRvIHRoZQo+ID4+IGJpdG1h
c2suCj4gPj4gKyAqLwo+ID4+ICtpbnQgZ3Bpb19yZWdtYXBfc2ltcGxlX3hsYXRlKHN0cnVjdCBn
cGlvX3JlZ21hcCAqZ3BpbywgdW5zaWduZWQgaW50Cj4gPj4gYmFzZSwKPiA+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBvZmZzZXQsCj4gPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgKnJlZywgdW5zaWduZWQgaW50ICptYXNrKQo+
ID4+ICt7Cj4gPj4gKyAgICAgICB1bnNpZ25lZCBpbnQgbGluZSA9IG9mZnNldCAlIGdwaW8tPm5n
cGlvX3Blcl9yZWc7Cj4gPj4gKyAgICAgICB1bnNpZ25lZCBpbnQgc3RyaWRlID0gb2Zmc2V0IC8g
Z3Bpby0+bmdwaW9fcGVyX3JlZzsKPiA+PiArCj4gPj4gKyAgICAgICAqcmVnID0gYmFzZSArIHN0
cmlkZSAqIGdwaW8tPnJlZ19zdHJpZGU7Cj4gPj4gKyAgICAgICAqbWFzayA9IEJJVChsaW5lKTsK
PiA+PiArCj4gPj4gKyAgICAgICByZXR1cm4gMDsKPiA+PiArfQo+ID4+ICtFWFBPUlRfU1lNQk9M
X0dQTChncGlvX3JlZ21hcF9zaW1wbGVfeGxhdGUpOwo+ID4KPiA+IFdoeSBkb2VzIHRoaXMgbmVl
ZCB0byBiZSBleHBvcnRlZD8KPgo+IE1oLCB0aGUgaWRlYSB3YXMgdGhhdCBhIHVzZXIgY291bGQg
YWxzbyBzZXQgdGhpcyB4bGF0ZSgpIGJ5IGhpbXNlbGYgKGZvcgo+IHdoYXRldmVyIHJlYXNvbiku
IEJ1dCBzaW5jZSBpdCBpcyB0aGUgZGVmYXVsdCwgaXQgaXMgbm90IHJlYWxseQo+IG5lY2Vzc2Fy
eS4KPiBUaGF0IGJlaW5nIHNhaWQsIEkgZG9uJ3QgY2FyZSBpZiBpdHMgb25seSBsb2NhbCB0byB0
aGlzIG1vZHVsZS4KPgoKTGV0J3Mgb25seSBleHBvcnQgc3ltYm9scyB0aGF0IGhhdmUgZXh0ZXJu
YWwgdXNlcnMgdGhlbi4KCltzbmlwIV0KCj4gPj4gKwo+ID4+ICtNT0RVTEVfQVVUSE9SKCJNaWNo
YWVsIFdhbGxlIDxtaWNoYWVsQHdhbGxlLmNjPiIpOwo+ID4+ICtNT0RVTEVfREVTQ1JJUFRJT04o
IkdQSU8gZ2VuZXJpYyByZWdtYXAgZHJpdmVyIGNvcmUiKTsKPiA+PiArTU9EVUxFX0xJQ0VOU0Uo
IkdQTCIpOwo+ID4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2dwaW8tcmVnbWFwLmggYi9p
bmNsdWRlL2xpbnV4L2dwaW8tcmVnbWFwLmgKPiA+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4+
IGluZGV4IDAwMDAwMDAwMDAwMC4uYWQ2Mzk1NWUwZTQzCj4gPj4gLS0tIC9kZXYvbnVsbAo+ID4+
ICsrKyBiL2luY2x1ZGUvbGludXgvZ3Bpby1yZWdtYXAuaAo+ID4+IEBAIC0wLDAgKzEsODggQEAK
PiA+PiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSAqLwo+ID4+ICsK
PiA+PiArI2lmbmRlZiBfTElOVVhfR1BJT19SRUdNQVBfSAo+ID4+ICsjZGVmaW5lIF9MSU5VWF9H
UElPX1JFR01BUF9ICj4gPj4gKwo+ID4+ICtzdHJ1Y3QgZ3Bpb19yZWdtYXBfYWRkciB7Cj4gPj4g
KyAgICAgICB1bnNpZ25lZCBpbnQgYWRkcjsKPiA+PiArICAgICAgIGJvb2wgdmFsaWQ7Cj4gPj4g
K307Cj4gPgo+ID4gSSdtIG5vdCBxdWl0ZSBzdXJlIHdoYXQgdGhlIG1lYW5pbmcgYmVoaW5kIHRo
ZSB2YWxpZCBmaWVsZCBoZXJlIGlzLgo+ID4gV2hlbiB3b3VsZCB3ZSBwb3RlbnRpYWxseSBzZXQg
aXQgdG8gZmFsc2U/Cj4KPiBTb21lIGJhc2UgYWRkcmVzc2VzIGFyZSBvcHRpb25hbCwgYnV0IG9u
IHRoZSBvdGhlciBoYW5kLCBhIGJhc2UgYWRkcmVzcwo+IG9mIDAgY291bGQgYWxzbyBiZSB2YWxp
ZC4gU28gSSBjYW5ub3QgdXNlIDAgYXMgYW4gaW5kaWNhdG9yIHdoZXRoZXIgYQo+IGJhc2UgYWRk
cmVzcyBpcyBzZXQgb3Igbm90LiBUaGUgZ2VuZXJpYyBtbWlvIGRyaXZlciBoYXMgc29tZSBzcGVj
aWFsCj4gY2FzZSBmb3IgdGhlIGFjayBiYXNlLCB3aGVyZSB0aGVyZSBpcyBhIHVzZV9hY2sgZmxh
ZyB3aGljaCBmb3JjZXMgdG8KPiB1c2UgdGhlIGFjayByZWdpc3RlciBldmVuIGlmIGl0cyB6ZXJv
LiBTbyBJJ3ZlIGhhZCBhIGxvb2sgYXQgdGhlIGtlcm5lbAo+IGlmIHRoZXJlIGlzIGEgYmV0dGVy
IGlkaW9tIGZvciB0aGF0LCBidXQgSSBoYXZlbid0IGZvdW5kIGFueXRoaW5nLgo+Cj4gU28gdGhl
IGJlc3QgZnJvbSBhIHVzZXIgcGVyc3BlY3RpdmUgSSd2ZSBjb3VsZCBjb21lIHVwIHdpdGggd2Fz
Ogo+Cj4gICAgLT5iYXNlX3JlZyA9IEdQSU9fUkVHTUFQX0FERFIoYWRkcik7Cj4KPiBJJ20gb3Bl
biBmb3Igc3VnZ2VzdGlvbnMuCj4KCk1heWJlIHNldHRpbmcgdGhlIHBvaW50ZXIgdG8gRVJSX1BU
UigtRU5PRU5UKSB3aGljaCB3aWxsIHJlc3VsdCBpbgpJU19FUlIoKSByZXR1cm5pbmcgdHJ1ZT8K
Cj4gPgo+ID4+ICsjZGVmaW5lIEdQSU9fUkVHTUFQX0FERFIoX2FkZHIpIFwKPiA+PiArICAgICAg
ICgoc3RydWN0IGdwaW9fcmVnbWFwX2FkZHIpIHsgLmFkZHIgPSBfYWRkciwgLnZhbGlkID0gdHJ1
ZSB9KQo+ID4+ICsKPiA+PiArLyoqCj4gPj4gKyAqIHN0cnVjdCBncGlvX3JlZ21hcCAtIERlc2Ny
aXB0aW9uIG9mIGEgZ2VuZXJpYyByZWdtYXAgZ3Bpb19jaGlwLgo+ID4+ICsgKgo+ID4+ICsgKiBA
cGFyZW50OiAgICAgICAgICAgIFRoZSBwYXJlbnQgZGV2aWNlCj4gPj4gKyAqIEByZWdtYXA6ICAg
ICAgICAgICAgVGhlIHJlZ21hcCB1c2UgdG8gYWNjZXNzIHRoZSByZWdpc3RlcnMKPiA+Cj4gPiBz
L3VzZS91c2VkLwo+ID4KPiA+PiArICogICAgICAgICAgICAgICAgICAgICBnaXZlbiwgdGhlIG5h
bWUgb2YgdGhlIGRldmljZSBpcyB1c2VkCj4gPj4gKyAqIEBsYWJlbDogICAgICAgICAgICAgKE9w
dGlvbmFsKSBEZXNjcmlwdGl2ZSBuYW1lIGZvciBHUElPCj4gPj4gY29udHJvbGxlci4KPiA+PiAr
ICogICAgICAgICAgICAgICAgICAgICBJZiBub3QgZ2l2ZW4sIHRoZSBuYW1lIG9mIHRoZSBkZXZp
Y2UgaXMgdXNlZC4KPiA+PiArICogQG5ncGlvOiAgICAgICAgICAgICBOdW1iZXIgb2YgR1BJT3MK
PiA+PiArICogQHJlZ19kYXRfYmFzZTogICAgICAoT3B0aW9uYWwpIChpbikgcmVnaXN0ZXIgYmFz
ZSBhZGRyZXNzCj4gPj4gKyAqIEByZWdfc2V0X2Jhc2U6ICAgICAgKE9wdGlvbmFsKSBzZXQgcmVn
aXN0ZXIgYmFzZSBhZGRyZXNzCj4gPj4gKyAqIEByZWdfY2xyX2Jhc2U6ICAgICAgKE9wdGlvbmFs
KSBjbGVhciByZWdpc3RlciBiYXNlIGFkZHJlc3MKPiA+PiArICogQHJlZ19kaXJfaW5fYmFzZTog
ICAoT3B0aW9uYWwpIG91dCBzZXR0aW5nIHJlZ2lzdGVyIGJhc2UgYWRkcmVzcwo+ID4+ICsgKiBA
cmVnX2Rpcl9vdXRfYmFzZTogIChPcHRpb25hbCkgaW4gc2V0dGluZyByZWdpc3RlciBiYXNlIGFk
ZHJlc3MKPiA+PiArICogQHJlZ19zdHJpZGU6ICAgICAgICAgICAgICAgIChPcHRpb25hbCkgTWF5
IGJlIHNldCBpZiB0aGUgcmVnaXN0ZXJzCj4gPj4gKG9mIHRoZQo+ID4+ICsgKiAgICAgICAgICAg
ICAgICAgICAgIHNhbWUgdHlwZSwgZGF0LCBzZXQsIGV0YykgYXJlIG5vdCBjb25zZWN1dGl2ZS4K
PiA+PiArICogQG5ncGlvX3Blcl9yZWc6ICAgICBOdW1iZXIgb2YgR1BJT3MgcGVyIHJlZ2lzdGVy
Cj4gPj4gKyAqIEBpcnFfZG9tYWluOiAgICAgICAgICAgICAgICAoT3B0aW9uYWwpIElSUSBkb21h
aW4gaWYgdGhlCj4gPj4gY29udHJvbGxlciBpcwo+ID4+ICsgKiAgICAgICAgICAgICAgICAgICAg
IGludGVycnVwdC1jYXBhYmxlCj4gPj4gKyAqIEByZWdfbWFza194bGF0ZTogICAgIChPcHRpb25h
bCkgVHJhbnNsYXRlcyBiYXNlIGFkZHJlc3MgYW5kIEdQSU8KPiA+PiArICogICAgICAgICAgICAg
ICAgICAgICBvZmZzZXQgdG8gYSByZWdpc3Rlci9iaXRtYXNrIHBhaXIuIElmIG5vdAo+ID4+ICsg
KiAgICAgICAgICAgICAgICAgICAgIGdpdmVuIHRoZSBkZWZhdWx0IGdwaW9fcmVnbWFwX3NpbXBs
ZV94bGF0ZSgpCj4gPj4gKyAqICAgICAgICAgICAgICAgICAgICAgaXMgdXNlZC4KPiA+PiArICog
QHRvX2lycTogICAgICAgICAgICAoT3B0aW9uYWwpIE1hcHMgR1BJTyBvZmZzZXQgdG8gYSBpcnEg
bnVtYmVyLgo+ID4+ICsgKiAgICAgICAgICAgICAgICAgICAgIEJ5IGRlZmF1bHQgYXNzdW1lcyBh
IGxpbmVhciBtYXBwaW5nIG9mIHRoZQo+ID4+ICsgKiAgICAgICAgICAgICAgICAgICAgIGdpdmVu
IGlycV9kb21haW4uCj4gPj4gKyAqIEBkcml2ZXJfZGF0YTogICAgICAgUG9pbnRlciB0byB0aGUg
ZHJpdmVycyBwcml2YXRlIGRhdGEuIE5vdCB1c2VkCj4gPj4gYnkKPiA+PiArICogICAgICAgICAg
ICAgICAgICAgICBncGlvLXJlZ21hcC4KPiA+PiArICoKPiA+PiArICogVGhlIHJlZ19tYXNrX3hs
YXRlIHRyYW5zbGF0ZXMgYSBnaXZlbiBiYXNlIGFkZHJlc3MgYW5kIEdQSU8gb2Zmc2V0Cj4gPj4g
dG8KPiA+PiArICogcmVnaXN0ZXIgYW5kIG1hc2sgcGFpci4gVGhlIGJhc2UgYWRkcmVzcyBpcyBv
bmUgb2YgdGhlIGdpdmVuCj4gPj4gcmVnXypfYmFzZS4KPiA+PiArICovCj4gPj4gK3N0cnVjdCBn
cGlvX3JlZ21hcCB7Cj4gPgo+ID4gSSdkIHByZWZlciB0byBmb2xsb3cgYSBwYXR0ZXJuIHNlZW4g
aW4gb3RoZXIgc3VjaCBBUElzIG9mIGNhbGxpbmcgdGhpcwo+ID4gc3RydWN0dXJlIGdwaW9fcmVn
bWFwX2NvbmZpZyBhbmQgY3JlYXRpbmcgYW5vdGhlciBwcml2YXRlIHN0cnVjdHVyZQo+ID4gY2Fs
bGVkIGdwaW9fcmVnbWFwIHVzZWQgaW4gY2FsbGJhY2tzIHRoYXQgd291bGQgb25seSBjb250YWlu
IG5lY2Vzc2FyeQo+ID4gZmllbGRzLgo+Cj4gc29tZXRoaW5nIGxpa2UgdGhlIGZvbGxvd2luZz8K
Pgo+IHN0cnVjdCBncGlvX3JlZ21hcCAqZ3Bpb19yZWdtYXBfcmVnaXN0ZXIoc3RydWN0IGdwaW9f
cmVnbWFwX2NvbmZpZyAqKQo+Cj4gYnV0IGlmIHRoYXQgc3RydWN0dXJlIGlzIHByaXZhdGUsIGhv
dyBjYW4gYSBjYWxsYmFjayBhY2Nlc3MgaW5kaXZpZHVhbAo+IGVsZW1lbnRzPyBPciBkbyB5b3Ug
bWVhbiBwcml2YXRlIGluICJsb2NhbCB0byB0aGUgZ3BpbyBkcml2ZXJzIj8KPgoKRWl0aGVyIG1h
a2luZyB0aGUgc3RydWN0dXJlIGxvY2FsIHRvIGRyaXZlcnMvZ3BpbyBvciBtYWtpbmcgaXQKZW50
aXJlbHkgb3BhcXVlIGFuZCBwcm92aWRpbmcgYWNjZXNzb3IgZnVuY3Rpb25zLiBEZXBlbmRpbmcg
b24gaG93Cm11Y2ggb2YgdGhlIHN0cnVjdHVyZSBvbmUgbWF5IHdhbnQgdG8gYWNjZXNzLgoKPiBB
bHNvIEkgd2FzIHVuc3VyZSBhYm91dCB0aGUgbmFtaW5nLCBlZy4gc29tZSB1c2UKPiBzdHVmZl9y
ZWdpc3RlcigpL3N0dWZmX3VucmVnaXN0ZXIoKSBhbmQgc29tZSBzdHVmZl9hZGQoKS9zdHVmZl9y
ZW1vdmUoKS4KPgoKcmVnaXN0ZXIvdW5yZWdpc3RlciBpcyBmaW5lIHdpdGggbWUuCgpCYXJ0Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
