Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B2B1CF4CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMnc9INDvaBILAVSMmihg/u4g1ucyrzbfJrKkXRoRX4=; b=CdUHb27KkK7P9K
	gZDmPCIw4uz9ZRGN+R93rSUPpupHemBnyEYk+eT9Zx1Rv2UQ6uoRIYEAkeSXCZSViAbxXlVERbx4n
	+21bMb0sgmORT5w7Z/jUr5Nnm0uHQVRUcIshm5x7QLzednh9+o1jSdn46qWusrjyHiTaUl1o6MmR7
	khtLbiKfUa9HmDu6NTgihhjWm/oY77qKDqWTUxloKvgLjFU49KGUQPM+axGFRBPiRZwKo5hLPBXgp
	jxPlRlV8wWwGhja7v+e1kz2gjcZmvoKnQPYyeaiAElC2GvV5VYtRxsWV+cbda6SZyf5INNqWzK5il
	W+H2hxlUFPHnSQkxQKFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYULF-0000ah-8J; Tue, 12 May 2020 12:49:01 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUKu-0000Sh-0P
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 12:48:46 +0000
Received: by mail-qk1-x743.google.com with SMTP id n14so13340283qke.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 05:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VjtW18trSHOOQ++iWlwEWrR0XUPVdV8/Se9flzmcddU=;
 b=VDjCkcy744H4FUDc+3CK+CCNWBxtS8oooYdO73NxXTzs0vH05D1k+ZyGgm5P37+ei0
 /WDDcrP5sdHuopYQ0wGI4lH+cvg9XvEqhYDbygWeM9T3izl8OFPytZL1hRfydIlW5EWW
 6ZXw42jBkkm9xEeUB3DrPHQoQPYEmdFaGyYmEGC/Ogrd14GwV9V2eWwI6r5G1YL0M3Bl
 VisJEDF+mD7RcV9UIqo5RR6GBraQdarrW2U6KHdpyRG1ffiDID089zYWWUZKWjj+opzp
 dNRE9ELS9n3/WzDDI/xuoFhDRXiVCWmbaQ53O7G+kn8MtxcfgeC42A2r+PEQCZEdJN45
 xpxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VjtW18trSHOOQ++iWlwEWrR0XUPVdV8/Se9flzmcddU=;
 b=BRz+layrP02M5NkMJj5d1cKHFpVnvlr6GKmi5jzyiP7fJnQ0Tls+2Y+Qpv/cnPWTGC
 IxVYQbo6xeAqKMcXB/pAJyXE5l9NFAtPNxGJU6dJBazg+aiCTSDMyu7IGvczwTPrJzXB
 3FKcPtgszvtKh05ayN85pqwAu219UsNPgJ5BXbUEnaiReyy3gKoXQ3Mk5zSLc3eXqqN+
 dVBJDc2VA1bG3VvbmZCW8XhpftVv/GYm1DVb7EblX7PvWgiVBj/HFFmCzt+t1dn2jGMZ
 J40P+d10iUHlmtsZvbGpVNoqH9XqxfsO2xpT5vfD4i2LayW5UZEF10rgXAgIWtJ6nsif
 bsJg==
X-Gm-Message-State: AOAM533zJ+OtjLcfvpPt9Kzeyqq+InCPgJ4qIDAZ0OUr2WfykvKnpIyY
 t963XXc+axG7h2NdAcKKo3dEHoGKsUVkNoelih7EfQ==
X-Google-Smtp-Source: ABdhPJypfSLdSXb97/x4iYLpOr03nuCvuTkApoi503zg7GYi87aDkvdl/FNkhSV0p2F06CJhcuItiCx/mthD9grVnJg=
X-Received: by 2002:a05:620a:6bc:: with SMTP id
 i28mr4012799qkh.330.1589287718069; 
 Tue, 12 May 2020 05:48:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-11-michael@walle.cc>
In-Reply-To: <20200423174543.17161-11-michael@walle.cc>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Tue, 12 May 2020 14:48:27 +0200
Message-ID: <CAMpxmJV3XTOxuoKeV-z2d75qWqHkgvV9419tfe3idDeKwoeoLA@mail.gmail.com>
Subject: Re: [PATCH v3 10/16] gpio: add a reusable generic gpio_chip using
 regmap
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_054840_099811_DFCC8C7C 
X-CRM114-Status: GOOD (  29.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>,
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

Y3p3LiwgMjMga3dpIDIwMjAgbyAxOTo0NiBNaWNoYWVsIFdhbGxlIDxtaWNoYWVsQHdhbGxlLmNj
PiBuYXBpc2HFgihhKToKPgo+IFRoZXJlIGFyZSBxdWl0ZSBhIGxvdCBzaW1wbGUgR1BJTyBjb250
cm9sbGVyIHdoaWNoIGFyZSB1c2luZyByZWdtYXAgdG8KPiBhY2Nlc3MgdGhlIGhhcmR3YXJlLiBU
aGlzIGRyaXZlciB0cmllcyB0byBiZSBhIGJhc2UgdG8gdW5pZnkgZXhpc3RpbmcKPiBjb2RlIGlu
dG8gb25lIHBsYWNlLiBUaGlzIHdvbid0IGNvdmVyIGV2ZXJ5dGhpbmcgYnV0IGl0IHNob3VsZCBi
ZSBhIGdvb2QKPiBzdGFydGluZyBwb2ludC4KPgo+IEl0IGRvZXMgbm90IGltcGxlbWVudCBpdHMg
b3duIGlycV9jaGlwIGJlY2F1c2UgdGhlcmUgaXMgYWxyZWFkeSBhCj4gZ2VuZXJpYyBvbmUgZm9y
IHJlZ21hcCBiYXNlZCBkZXZpY2VzLiBJbnN0ZWFkLCB0aGUgaXJxX2NoaXAgd2lsbCBiZQo+IGlu
c3RhbnRpYXRlZCBpbiB0aGUgcGFyZW50IGRyaXZlciBhbmQgaXRzIGlycSBkb21haW4gd2lsbCBi
ZSBhc3NvY2lhdGUKPiB0byB0aGlzIGRyaXZlci4KPgo+IEZvciBub3cgaXQgY29uc2lzdHMgb2Yg
dGhlIHVzdWFsIHJlZ2lzdGVycywgbGlrZSBzZXQgKGFuZCBhbiBvcHRpb25hbAo+IGNsZWFyKSBk
YXRhIHJlZ2lzdGVyLCBhbiBpbnB1dCByZWdpc3RlciBhbmQgZGlyZWN0aW9uIHJlZ2lzdGVycy4K
PiBPdXQtb2YtdGhlLWJveCwgaXQgc3VwcG9ydHMgY29uc2VjdXRpdmUgcmVnaXN0ZXIgbWFwcGlu
Z3MgYW5kIG1hcHBpbmdzCj4gd2hlcmUgdGhlIHJlZ2lzdGVycyBoYXZlIGdhcHMgYmV0d2VlbiB0
aGVtIHdpdGggYSBsaW5lYXIgbWFwcGluZyBiZXR3ZWVuCj4gR1BJTyBvZmZzZXQgYW5kIGJpdCBw
b3NpdGlvbi4gRm9yIHdlaXJkZXIgbWFwcGluZ3MgdGhlIHVzZXIgY2FuIHJlZ2lzdGVyCj4gaXRz
IG93biAueGxhdGUoKS4KPgo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgV2FsbGUgPG1pY2hhZWxA
d2FsbGUuY2M+Cj4gLS0tCgpUaGlzIGxvb2tzIGdvb2QgdG8gbWUuIFBsZWFzZSBzZWUgc29tZSBu
aXRzIGJlbG93LgoKPiAgZHJpdmVycy9ncGlvL0tjb25maWcgICAgICAgIHwgICA0ICsKPiAgZHJp
dmVycy9ncGlvL01ha2VmaWxlICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9ncGlvL2dwaW8tcmVn
bWFwLmMgIHwgMzQzICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBpbmNs
dWRlL2xpbnV4L2dwaW8tcmVnbWFwLmggfCAgNjkgKysrKysrKysKPiAgNCBmaWxlcyBjaGFuZ2Vk
LCA0MTcgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncGlvL2dw
aW8tcmVnbWFwLmMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvZ3Bpby1yZWdt
YXAuaAo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3Bpby9LY29uZmlnIGIvZHJpdmVycy9ncGlv
L0tjb25maWcKPiBpbmRleCA4ZWYyMTc5ZmI5OTkuLmFlM2E0OWEyZTk3MCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwaW8vS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvZ3Bpby9LY29uZmlnCj4gQEAg
LTczLDYgKzczLDEwIEBAIGNvbmZpZyBHUElPX0dFTkVSSUMKPiAgICAgICAgIGRlcGVuZHMgb24g
SEFTX0lPTUVNICMgT25seSBmb3IgSU9NRU0gZHJpdmVycwo+ICAgICAgICAgdHJpc3RhdGUKPgo+
ICtjb25maWcgR1BJT19SRUdNQVAKPiArICAgICAgIGRlcGVuZHMgb24gUkVHTUFQCj4gKyAgICAg
ICB0cmlzdGF0ZQo+ICsKPiAgIyBwdXQgZHJpdmVycyBpbiB0aGUgcmlnaHQgc2VjdGlvbiwgaW4g
YWxwaGFiZXRpY2FsIG9yZGVyCj4KPiAgIyBUaGlzIHN5bWJvbCBpcyBzZWxlY3RlZCBieSBib3Ro
IEkyQyBhbmQgU1BJIGV4cGFuZGVycwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwaW8vTWFrZWZp
bGUgYi9kcml2ZXJzL2dwaW8vTWFrZWZpbGUKPiBpbmRleCBiMmNmYzIxYTk3ZjMuLjkzZTEzOWZk
ZmE1NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwaW8vTWFrZWZpbGUKPiArKysgYi9kcml2ZXJz
L2dwaW8vTWFrZWZpbGUKPiBAQCAtMTIsNiArMTIsNyBAQCBvYmotJChDT05GSUdfR1BJT19TWVNG
UykgICAgICArPSBncGlvbGliLXN5c2ZzLm8KPiAgb2JqLSQoQ09ORklHX0dQSU9fQUNQSSkgICAg
ICAgICAgICAgICAgKz0gZ3Bpb2xpYi1hY3BpLm8KPgo+ICAjIERldmljZSBkcml2ZXJzLiBHZW5l
cmFsbHkga2VlcCBsaXN0IHNvcnRlZCBhbHBoYWJldGljYWxseQo+ICtvYmotJChDT05GSUdfR1BJ
T19SRUdNQVApICAgICAgKz0gZ3Bpby1yZWdtYXAubwo+ICBvYmotJChDT05GSUdfR1BJT19HRU5F
UklDKSAgICAgKz0gZ3Bpby1nZW5lcmljLm8KPgo+ICAjIGRpcmVjdGx5IHN1cHBvcnRlZCBieSBn
cGlvLWdlbmVyaWMKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncGlvL2dwaW8tcmVnbWFwLmMgYi9k
cml2ZXJzL2dwaW8vZ3Bpby1yZWdtYXAuYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXgg
MDAwMDAwMDAwMDAwLi4wNDkzOWMwYTIyZjkKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVy
cy9ncGlvL2dwaW8tcmVnbWFwLmMKPiBAQCAtMCwwICsxLDM0MyBAQAo+ICsvLyBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4gKy8qCj4gKyAqIHJlZ21hcCBiYXNlZCBnZW5l
cmljIEdQSU8gZHJpdmVyCj4gKyAqCj4gKyAqIENvcHlyaWdodCAyMDE5IE1pY2hhZWwgV2FsbGUg
PG1pY2hhZWxAd2FsbGUuY2M+Cj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgPGxpbnV4L2dwaW8vZHJp
dmVyLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9ncGlvLXJlZ21hcC5oPgo+ICsjaW5jbHVkZSA8bGlu
dXgva2VybmVsLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiArI2luY2x1ZGUgPGxp
bnV4L3JlZ21hcC5oPgo+ICsKPiArc3RydWN0IGdwaW9fcmVnbWFwIHsKPiArICAgICAgIHN0cnVj
dCBkZXZpY2UgKnBhcmVudDsKPiArICAgICAgIHN0cnVjdCByZWdtYXAgKnJlZ21hcDsKPiArICAg
ICAgIHN0cnVjdCBncGlvX2NoaXAgZ3Bpb19jaGlwOwo+ICsKPiArICAgICAgIGludCByZWdfc3Ry
aWRlOwo+ICsgICAgICAgaW50IG5ncGlvX3Blcl9yZWc7Cj4gKyAgICAgICB1bnNpZ25lZCBpbnQg
cmVnX2RhdF9iYXNlOwo+ICsgICAgICAgdW5zaWduZWQgaW50IHJlZ19zZXRfYmFzZTsKPiArICAg
ICAgIHVuc2lnbmVkIGludCByZWdfY2xyX2Jhc2U7Cj4gKyAgICAgICB1bnNpZ25lZCBpbnQgcmVn
X2Rpcl9pbl9iYXNlOwo+ICsgICAgICAgdW5zaWduZWQgaW50IHJlZ19kaXJfb3V0X2Jhc2U7Cj4g
Kwo+ICsgICAgICAgaW50ICgqcmVnX21hc2tfeGxhdGUpKHN0cnVjdCBncGlvX3JlZ21hcCAqZ3Bp
bywgdW5zaWduZWQgaW50IGJhc2UsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5z
aWduZWQgaW50IG9mZnNldCwgdW5zaWduZWQgaW50ICpyZWcsCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdW5zaWduZWQgaW50ICptYXNrKTsKPiArCj4gKyAgICAgICB2b2lkICpkcml2
ZXJfZGF0YTsKPiArfTsKPiArCj4gK3N0YXRpYyB1bnNpZ25lZCBpbnQgZ3Bpb19yZWdtYXBfYWRk
cih1bnNpZ25lZCBpbnQgYWRkcikKPiArewo+ICsgICAgICAgcmV0dXJuIChhZGRyID09IEdQSU9f
UkVHTUFQX0FERFJfWkVSTykgPyAwIDogYWRkcjsKPiArfQo+ICsKPiArLyoqCj4gKyAqIGdwaW9f
cmVnbWFwX3NpbXBsZV94bGF0ZSgpIC0gdHJhbnNsYXRlIGJhc2Uvb2Zmc2V0IHRvIHJlZy9tYXNr
Cj4gKyAqCj4gKyAqIFVzZSBhIHNpbXBsZSBsaW5lYXIgbWFwcGluZyB0byB0cmFuc2xhdGUgdGhl
IG9mZnNldCB0byB0aGUgYml0bWFzay4KPiArICovCj4gK3N0YXRpYyBpbnQgZ3Bpb19yZWdtYXBf
c2ltcGxlX3hsYXRlKHN0cnVjdCBncGlvX3JlZ21hcCAqZ3BpbywKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgYmFzZSwgdW5zaWduZWQgaW50IG9mZnNl
dCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgKnJl
ZywgdW5zaWduZWQgaW50ICptYXNrKQo+ICt7Cj4gKyAgICAgICB1bnNpZ25lZCBpbnQgbGluZSA9
IG9mZnNldCAlIGdwaW8tPm5ncGlvX3Blcl9yZWc7Cj4gKyAgICAgICB1bnNpZ25lZCBpbnQgc3Ry
aWRlID0gb2Zmc2V0IC8gZ3Bpby0+bmdwaW9fcGVyX3JlZzsKPiArCj4gKyAgICAgICAqcmVnID0g
YmFzZSArIHN0cmlkZSAqIGdwaW8tPnJlZ19zdHJpZGU7Cj4gKyAgICAgICAqbWFzayA9IEJJVChs
aW5lKTsKPiArCj4gKyAgICAgICByZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCBncGlv
X3JlZ21hcF9nZXQoc3RydWN0IGdwaW9fY2hpcCAqY2hpcCwgdW5zaWduZWQgaW50IG9mZnNldCkK
PiArewo+ICsgICAgICAgc3RydWN0IGdwaW9fcmVnbWFwICpncGlvID0gZ3Bpb2NoaXBfZ2V0X2Rh
dGEoY2hpcCk7Cj4gKyAgICAgICB1bnNpZ25lZCBpbnQgYmFzZSwgdmFsLCByZWcsIG1hc2s7Cj4g
KyAgICAgICBpbnQgcmV0Owo+ICsKPiArICAgICAgIC8qIHdlIG1pZ2h0IG5vdCBoYXZlIGFuIG91
dHB1dCByZWdpc3RlciBpZiB3ZSBhcmUgaW5wdXQgb25seSAqLwo+ICsgICAgICAgaWYgKGdwaW8t
PnJlZ19kYXRfYmFzZSkKPiArICAgICAgICAgICAgICAgYmFzZSA9IGdwaW9fcmVnbWFwX2FkZHIo
Z3Bpby0+cmVnX2RhdF9iYXNlKTsKPiArICAgICAgIGVsc2UKPiArICAgICAgICAgICAgICAgYmFz
ZSA9IGdwaW9fcmVnbWFwX2FkZHIoZ3Bpby0+cmVnX3NldF9iYXNlKTsKPiArCj4gKyAgICAgICBy
ZXQgPSBncGlvLT5yZWdfbWFza194bGF0ZShncGlvLCBiYXNlLCBvZmZzZXQsICZyZWcsICZtYXNr
KTsKPiArICAgICAgIGlmIChyZXQpCj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gKwo+
ICsgICAgICAgcmV0ID0gcmVnbWFwX3JlYWQoZ3Bpby0+cmVnbWFwLCByZWcsICZ2YWwpOwo+ICsg
ICAgICAgaWYgKHJldCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArCj4gKyAgICAg
ICByZXR1cm4gKHZhbCAmIG1hc2spID8gMSA6IDA7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIGdw
aW9fcmVnbWFwX3NldChzdHJ1Y3QgZ3Bpb19jaGlwICpjaGlwLCB1bnNpZ25lZCBpbnQgb2Zmc2V0
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgdmFsKQo+ICt7Cj4gKyAgICAgICBz
dHJ1Y3QgZ3Bpb19yZWdtYXAgKmdwaW8gPSBncGlvY2hpcF9nZXRfZGF0YShjaGlwKTsKPiArICAg
ICAgIHVuc2lnbmVkIGludCBiYXNlID0gZ3Bpb19yZWdtYXBfYWRkcihncGlvLT5yZWdfc2V0X2Jh
c2UpOwo+ICsgICAgICAgdW5zaWduZWQgaW50IHJlZywgbWFzazsKPiArCj4gKyAgICAgICBncGlv
LT5yZWdfbWFza194bGF0ZShncGlvLCBiYXNlLCBvZmZzZXQsICZyZWcsICZtYXNrKTsKPiArICAg
ICAgIGlmICh2YWwpCj4gKyAgICAgICAgICAgICAgIHJlZ21hcF91cGRhdGVfYml0cyhncGlvLT5y
ZWdtYXAsIHJlZywgbWFzaywgbWFzayk7Cj4gKyAgICAgICBlbHNlCj4gKyAgICAgICAgICAgICAg
IHJlZ21hcF91cGRhdGVfYml0cyhncGlvLT5yZWdtYXAsIHJlZywgbWFzaywgMCk7Cj4gK30KPiAr
Cj4gK3N0YXRpYyB2b2lkIGdwaW9fcmVnbWFwX3NldF93aXRoX2NsZWFyKHN0cnVjdCBncGlvX2No
aXAgKmNoaXAsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWdu
ZWQgaW50IG9mZnNldCwgaW50IHZhbCkKPiArewo+ICsgICAgICAgc3RydWN0IGdwaW9fcmVnbWFw
ICpncGlvID0gZ3Bpb2NoaXBfZ2V0X2RhdGEoY2hpcCk7Cj4gKyAgICAgICB1bnNpZ25lZCBpbnQg
YmFzZSwgcmVnLCBtYXNrOwo+ICsKPiArICAgICAgIGlmICh2YWwpCj4gKyAgICAgICAgICAgICAg
IGJhc2UgPSBncGlvX3JlZ21hcF9hZGRyKGdwaW8tPnJlZ19zZXRfYmFzZSk7Cj4gKyAgICAgICBl
bHNlCj4gKyAgICAgICAgICAgICAgIGJhc2UgPSBncGlvX3JlZ21hcF9hZGRyKGdwaW8tPnJlZ19j
bHJfYmFzZSk7Cj4gKwo+ICsgICAgICAgZ3Bpby0+cmVnX21hc2tfeGxhdGUoZ3BpbywgYmFzZSwg
b2Zmc2V0LCAmcmVnLCAmbWFzayk7Cj4gKyAgICAgICByZWdtYXBfd3JpdGUoZ3Bpby0+cmVnbWFw
LCByZWcsIG1hc2spOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGdwaW9fcmVnbWFwX2dldF9kaXJl
Y3Rpb24oc3RydWN0IGdwaW9fY2hpcCAqY2hpcCwKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdW5zaWduZWQgaW50IG9mZnNldCkKPiArewo+ICsgICAgICAgc3RydWN0IGdw
aW9fcmVnbWFwICpncGlvID0gZ3Bpb2NoaXBfZ2V0X2RhdGEoY2hpcCk7Cj4gKyAgICAgICB1bnNp
Z25lZCBpbnQgYmFzZSwgdmFsLCByZWcsIG1hc2s7Cj4gKyAgICAgICBpbnQgaW52ZXJ0LCByZXQ7
Cj4gKwo+ICsgICAgICAgaWYgKGdwaW8tPnJlZ19kaXJfb3V0X2Jhc2UpIHsKPiArICAgICAgICAg
ICAgICAgYmFzZSA9IGdwaW9fcmVnbWFwX2FkZHIoZ3Bpby0+cmVnX2Rpcl9vdXRfYmFzZSk7Cj4g
KyAgICAgICAgICAgICAgIGludmVydCA9IDA7Cj4gKyAgICAgICB9IGVsc2UgaWYgKGdwaW8tPnJl
Z19kaXJfaW5fYmFzZSkgewo+ICsgICAgICAgICAgICAgICBiYXNlID0gZ3Bpb19yZWdtYXBfYWRk
cihncGlvLT5yZWdfZGlyX2luX2Jhc2UpOwo+ICsgICAgICAgICAgICAgICBpbnZlcnQgPSAxOwo+
ICsgICAgICAgfSBlbHNlIHsKPiArICAgICAgICAgICAgICAgcmV0dXJuIEdQSU9fTElORV9ESVJF
Q1RJT05fSU47Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgcmV0ID0gZ3Bpby0+cmVnX21hc2tf
eGxhdGUoZ3BpbywgYmFzZSwgb2Zmc2V0LCAmcmVnLCAmbWFzayk7Cj4gKyAgICAgICBpZiAocmV0
KQo+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ICsKPiArICAgICAgIHJldCA9IHJlZ21h
cF9yZWFkKGdwaW8tPnJlZ21hcCwgcmVnLCAmdmFsKTsKPiArICAgICAgIGlmIChyZXQpCj4gKyAg
ICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gKwo+ICsgICAgICAgaWYgKCEhKHZhbCAmIG1hc2sp
IF4gaW52ZXJ0KQo+ICsgICAgICAgICAgICAgICByZXR1cm4gR1BJT19MSU5FX0RJUkVDVElPTl9P
VVQ7Cj4gKyAgICAgICBlbHNlCj4gKyAgICAgICAgICAgICAgIHJldHVybiBHUElPX0xJTkVfRElS
RUNUSU9OX0lOOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGdwaW9fcmVnbWFwX3NldF9kaXJlY3Rp
b24oc3RydWN0IGdwaW9fY2hpcCAqY2hpcCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgdW5zaWduZWQgaW50IG9mZnNldCwgYm9vbCBvdXRwdXQpCj4gK3sKPiArICAgICAg
IHN0cnVjdCBncGlvX3JlZ21hcCAqZ3BpbyA9IGdwaW9jaGlwX2dldF9kYXRhKGNoaXApOwo+ICsg
ICAgICAgdW5zaWduZWQgaW50IGJhc2UsIHZhbCwgcmVnLCBtYXNrOwo+ICsgICAgICAgaW50IGlu
dmVydCwgcmV0Owo+ICsKPiArICAgICAgIGlmIChncGlvLT5yZWdfZGlyX291dF9iYXNlKSB7Cj4g
KyAgICAgICAgICAgICAgIGJhc2UgPSBncGlvX3JlZ21hcF9hZGRyKGdwaW8tPnJlZ19kaXJfb3V0
X2Jhc2UpOwo+ICsgICAgICAgICAgICAgICBpbnZlcnQgPSAwOwo+ICsgICAgICAgfSBlbHNlIGlm
IChncGlvLT5yZWdfZGlyX2luX2Jhc2UpIHsKPiArICAgICAgICAgICAgICAgYmFzZSA9IGdwaW9f
cmVnbWFwX2FkZHIoZ3Bpby0+cmVnX2Rpcl9pbl9iYXNlKTsKPiArICAgICAgICAgICAgICAgaW52
ZXJ0ID0gMTsKPiArICAgICAgIH0gZWxzZSB7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiAwOwo+
ICsgICAgICAgfQo+ICsKPiArICAgICAgIHJldCA9IGdwaW8tPnJlZ19tYXNrX3hsYXRlKGdwaW8s
IGJhc2UsIG9mZnNldCwgJnJlZywgJm1hc2spOwo+ICsgICAgICAgaWYgKHJldCkKPiArICAgICAg
ICAgICAgICAgcmV0dXJuIHJldDsKPiArCj4gKyAgICAgICBpZiAoIWludmVydCkKPiArICAgICAg
ICAgICAgICAgdmFsID0gKG91dHB1dCkgPyBtYXNrIDogMDsKPiArICAgICAgIGVsc2UKPiArICAg
ICAgICAgICAgICAgdmFsID0gKG91dHB1dCkgPyAwIDogbWFzazsKPiArCj4gKyAgICAgICByZXR1
cm4gcmVnbWFwX3VwZGF0ZV9iaXRzKGdwaW8tPnJlZ21hcCwgcmVnLCBtYXNrLCB2YWwpOwo+ICt9
Cj4gKwo+ICtzdGF0aWMgaW50IGdwaW9fcmVnbWFwX2RpcmVjdGlvbl9pbnB1dChzdHJ1Y3QgZ3Bp
b19jaGlwICpjaGlwLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVu
c2lnbmVkIGludCBvZmZzZXQpCj4gK3sKPiArICAgICAgIHJldHVybiBncGlvX3JlZ21hcF9zZXRf
ZGlyZWN0aW9uKGNoaXAsIG9mZnNldCwgZmFsc2UpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGdw
aW9fcmVnbWFwX2RpcmVjdGlvbl9vdXRwdXQoc3RydWN0IGdwaW9fY2hpcCAqY2hpcCwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IG9mZnNldCwg
aW50IHZhbHVlKQo+ICt7Cj4gKyAgICAgICBncGlvX3JlZ21hcF9zZXQoY2hpcCwgb2Zmc2V0LCB2
YWx1ZSk7Cj4gKwo+ICsgICAgICAgcmV0dXJuIGdwaW9fcmVnbWFwX3NldF9kaXJlY3Rpb24oY2hp
cCwgb2Zmc2V0LCB0cnVlKTsKPiArfQo+ICsKPiArdm9pZCBncGlvX3JlZ21hcF9zZXRfZHJ2ZGF0
YShzdHJ1Y3QgZ3Bpb19yZWdtYXAgKmdwaW8sIHZvaWQgKmRhdGEpCj4gK3sKPiArICAgICAgIGdw
aW8tPmRyaXZlcl9kYXRhID0gZGF0YTsKPiArfQo+ICtFWFBPUlRfU1lNQk9MX0dQTChncGlvX3Jl
Z21hcF9zZXRfZHJ2ZGF0YSk7Cj4gKwo+ICt2b2lkICpncGlvX3JlZ21hcF9nZXRfZHJ2ZGF0YShz
dHJ1Y3QgZ3Bpb19yZWdtYXAgKmdwaW8pCj4gK3sKPiArICAgICAgIHJldHVybiBncGlvLT5kcml2
ZXJfZGF0YTsKPiArfQo+ICtFWFBPUlRfU1lNQk9MX0dQTChncGlvX3JlZ21hcF9nZXRfZHJ2ZGF0
YSk7Cj4gKwo+ICsvKioKPiArICogZ3Bpb19yZWdtYXBfcmVnaXN0ZXIoKSAtIFJlZ2lzdGVyIGEg
Z2VuZXJpYyByZWdtYXAgR1BJTyBjb250cm9sbGVyCj4gKyAqCj4gKyAqIEBncGlvOiBncGlvX3Jl
Z21hcCBkZXZpY2UgdG8gcmVnaXN0ZXIKPiArICoKPiArICogUmV0dXJucyAwIG9uIHN1Y2Nlc3Mg
b3IgYW4gZXJybm8gb24gZmFpbHVyZS4KPiArICovCj4gK3N0cnVjdCBncGlvX3JlZ21hcCAqZ3Bp
b19yZWdtYXBfcmVnaXN0ZXIoY29uc3Qgc3RydWN0IGdwaW9fcmVnbWFwX2NvbmZpZyAqY29uZmln
KQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZ3Bpb19yZWdtYXAgKmdwaW87Cj4gKyAgICAgICBzdHJ1
Y3QgZ3Bpb19jaGlwICpjaGlwOwo+ICsgICAgICAgaW50IHJldDsKPiArCj4gKyAgICAgICBpZiAo
IWNvbmZpZy0+cGFyZW50KQo+ICsgICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRUlOVkFM
KTsKPiArCj4gKyAgICAgICBpZiAoIWNvbmZpZy0+bmdwaW8pCj4gKyAgICAgICAgICAgICAgIHJl
dHVybiBFUlJfUFRSKC1FSU5WQUwpOwo+ICsKPiArICAgICAgIC8qIHdlIG5lZWQgYXQgbGVhc3Qg
b25lICovCj4gKyAgICAgICBpZiAoIWNvbmZpZy0+cmVnX2RhdF9iYXNlICYmICFjb25maWctPnJl
Z19zZXRfYmFzZSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Cj4g
Kwo+ICsgICAgICAgLyogd2UgZG9uJ3Qgc3VwcG9ydCBoYXZpbmcgYm90aCByZWdpc3RlcnMgc2lt
dWxhbmlvdXNseSBmb3Igbm93ICovCj4gKyAgICAgICBpZiAoY29uZmlnLT5yZWdfZGlyX291dF9i
YXNlICYmIGNvbmZpZy0+cmVnX2Rpcl9pbl9iYXNlKQo+ICsgICAgICAgICAgICAgICByZXR1cm4g
RVJSX1BUUigtRUlOVkFMKTsKPiArCj4gKyAgICAgICBncGlvID0ga3phbGxvYyhzaXplb2YoKmdw
aW8pLCBHRlBfS0VSTkVMKTsKPiArICAgICAgIGlmICghZ3BpbykKPiArICAgICAgICAgICAgICAg
cmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4gKwo+ICsgICAgICAgZ3Bpby0+cGFyZW50ID0gY29u
ZmlnLT5wYXJlbnQ7Cj4gKyAgICAgICBncGlvLT5yZWdtYXAgPSBjb25maWctPnJlZ21hcDsKPiAr
ICAgICAgIGdwaW8tPm5ncGlvX3Blcl9yZWcgPSBjb25maWctPm5ncGlvX3Blcl9yZWc7Cj4gKyAg
ICAgICBncGlvLT5yZWdfc3RyaWRlID0gY29uZmlnLT5yZWdfc3RyaWRlOwo+ICsgICAgICAgZ3Bp
by0+cmVnX21hc2tfeGxhdGUgPSBjb25maWctPnJlZ19tYXNrX3hsYXRlOwo+ICsgICAgICAgZ3Bp
by0+cmVnX3NldF9iYXNlID0gY29uZmlnLT5yZWdfc2V0X2Jhc2U7Cj4gKyAgICAgICBncGlvLT5y
ZWdfY2xyX2Jhc2UgPSBjb25maWctPnJlZ19jbHJfYmFzZTsKPiArICAgICAgIGdwaW8tPnJlZ19k
aXJfaW5fYmFzZSA9IGNvbmZpZy0+cmVnX2Rpcl9pbl9iYXNlOwo+ICsgICAgICAgZ3Bpby0+cmVn
X2Rpcl9vdXRfYmFzZSA9IGNvbmZpZy0+cmVnX2Rpcl9vdXRfYmFzZTsKPiArCj4gKyAgICAgICAv
KiBpZiBub3Qgc2V0LCBhc3N1bWUgdGhlcmUgaXMgb25seSBvbmUgcmVnaXN0ZXIgKi8KPiArICAg
ICAgIGlmICghZ3Bpby0+bmdwaW9fcGVyX3JlZykKPiArICAgICAgICAgICAgICAgZ3Bpby0+bmdw
aW9fcGVyX3JlZyA9IGNvbmZpZy0+bmdwaW87Cj4gKwo+ICsgICAgICAgLyogaWYgbm90IHNldCwg
YXNzdW1lIHRoZXkgYXJlIGNvbnNlY3V0aXZlICovCj4gKyAgICAgICBpZiAoIWdwaW8tPnJlZ19z
dHJpZGUpCj4gKyAgICAgICAgICAgICAgIGdwaW8tPnJlZ19zdHJpZGUgPSAxOwo+ICsKPiArICAg
ICAgIGlmICghZ3Bpby0+cmVnX21hc2tfeGxhdGUpCj4gKyAgICAgICAgICAgICAgIGdwaW8tPnJl
Z19tYXNrX3hsYXRlID0gZ3Bpb19yZWdtYXBfc2ltcGxlX3hsYXRlOwo+ICsKPiArICAgICAgIGNo
aXAgPSAmZ3Bpby0+Z3Bpb19jaGlwOwo+ICsgICAgICAgY2hpcC0+cGFyZW50ID0gY29uZmlnLT5w
YXJlbnQ7Cj4gKyAgICAgICBjaGlwLT5iYXNlID0gLTE7Cj4gKyAgICAgICBjaGlwLT5uZ3BpbyA9
IGNvbmZpZy0+bmdwaW87Cj4gKyAgICAgICBjaGlwLT5jYW5fc2xlZXAgPSB0cnVlOwo+ICsKPiAr
ICAgICAgIGlmICghY2hpcC0+bGFiZWwpCj4gKyAgICAgICAgICAgICAgIGNoaXAtPmxhYmVsID0g
ZGV2X25hbWUoY29uZmlnLT5wYXJlbnQpOwo+ICsgICAgICAgZWxzZQo+ICsgICAgICAgICAgICAg
ICBjaGlwLT5sYWJlbCA9IGNvbmZpZy0+bGFiZWw7Cj4gKwo+ICsgICAgICAgY2hpcC0+Z2V0ID0g
Z3Bpb19yZWdtYXBfZ2V0Owo+ICsgICAgICAgaWYgKGdwaW8tPnJlZ19zZXRfYmFzZSAmJiBncGlv
LT5yZWdfY2xyX2Jhc2UpCj4gKyAgICAgICAgICAgICAgIGNoaXAtPnNldCA9IGdwaW9fcmVnbWFw
X3NldF93aXRoX2NsZWFyOwo+ICsgICAgICAgZWxzZSBpZiAoZ3Bpby0+cmVnX3NldF9iYXNlKQo+
ICsgICAgICAgICAgICAgICBjaGlwLT5zZXQgPSBncGlvX3JlZ21hcF9zZXQ7Cj4gKwo+ICsgICAg
ICAgaWYgKGdwaW8tPnJlZ19kaXJfaW5fYmFzZSB8fCBncGlvLT5yZWdfZGlyX291dF9iYXNlKSB7
Cj4gKyAgICAgICAgICAgICAgIGNoaXAtPmdldF9kaXJlY3Rpb24gPSBncGlvX3JlZ21hcF9nZXRf
ZGlyZWN0aW9uOwo+ICsgICAgICAgICAgICAgICBjaGlwLT5kaXJlY3Rpb25faW5wdXQgPSBncGlv
X3JlZ21hcF9kaXJlY3Rpb25faW5wdXQ7Cj4gKyAgICAgICAgICAgICAgIGNoaXAtPmRpcmVjdGlv
bl9vdXRwdXQgPSBncGlvX3JlZ21hcF9kaXJlY3Rpb25fb3V0cHV0Owo+ICsgICAgICAgfQo+ICsK
PiArICAgICAgIHJldCA9IGdwaW9jaGlwX2FkZF9kYXRhKGNoaXAsIGdwaW8pOwo+ICsgICAgICAg
aWYgKHJldCA8IDApIHsKPiArICAgICAgICAgICAgICAga2ZyZWUoZ3Bpbyk7CgpNYXliZSBhZGQg
YSBzZWNvbmQgbGFiZWwgYXQgdGhlIGVuZCBvZiB0aGUgZnVuY3Rpb24/Cgo+ICsgICAgICAgICAg
ICAgICByZXR1cm4gRVJSX1BUUihyZXQpOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIGlmIChj
b25maWctPmlycV9kb21haW4pIHsKPiArICAgICAgICAgICAgICAgcmV0ID0gZ3Bpb2NoaXBfaXJx
Y2hpcF9hZGRfZG9tYWluKGNoaXAsIGNvbmZpZy0+aXJxX2RvbWFpbik7Cj4gKyAgICAgICAgICAg
ICAgIGlmIChyZXQgPCAwKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ICsg
ICAgICAgfQo+ICsKPiArICAgICAgIHJldHVybiBncGlvOwo+ICsKPiArZXJyOgo+ICsgICAgICAg
Z3Bpb2NoaXBfcmVtb3ZlKGNoaXApOwo+ICsgICAgICAga2ZyZWUoZ3Bpbyk7Cj4gKyAgICAgICBy
ZXR1cm4gRVJSX1BUUihyZXQpOwo+ICt9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKGdwaW9fcmVnbWFw
X3JlZ2lzdGVyKTsKPiArCj4gKy8qKgo+ICsgKiBncGlvX3JlZ21hcF91bnJlZ2lzdGVyKCkgLSBV
bnJlZ2lzdGVyIGEgZ2VuZXJpYyByZWdtYXAgR1BJTyBjb250cm9sbGVyCj4gKyAqCj4gKyAqIEBn
cGlvOiBncGlvX3JlZ21hcCBkZXZpY2UgdG8gdW5yZWdpc3Rlcgo+ICsgKi8KPiArdm9pZCBncGlv
X3JlZ21hcF91bnJlZ2lzdGVyKHN0cnVjdCBncGlvX3JlZ21hcCAqZ3BpbykKPiArewo+ICsgICAg
ICAgZ3Bpb2NoaXBfcmVtb3ZlKCZncGlvLT5ncGlvX2NoaXApOwo+ICsgICAgICAga2ZyZWUoZ3Bp
byk7Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwoZ3Bpb19yZWdtYXBfdW5yZWdpc3Rlcik7Cj4g
Kwo+ICtzdGF0aWMgdm9pZCBkZXZtX2dwaW9fcmVnbWFwX3VucmVnaXN0ZXIoc3RydWN0IGRldmlj
ZSAqZGV2LCB2b2lkICpyZXMpCj4gK3sKPiArICAgICAgIGdwaW9fcmVnbWFwX3VucmVnaXN0ZXIo
KihzdHJ1Y3QgZ3Bpb19yZWdtYXAgKiopcmVzKTsKPiArfQo+ICsKPiArLyoqCj4gKyAqIGRldm1f
Z3Bpb19yZWdtYXBfcmVnaXN0ZXIoKSAtIHJlc291cmNlIG1hbmFnZWQgZ3Bpb19yZWdtYXBfcmVn
aXN0ZXIoKQo+ICsgKgo+ICsgKiBAZGV2OiBkZXZpY2UgdGhhdCBpcyByZWdpc3RlcmluZyB0aGlz
IEdQSU8gZGV2aWNlCj4gKyAqIEBncGlvOiBncGlvX3JlZ21hcCBkZXZpY2UgdG8gcmVnaXN0ZXIK
PiArICoKPiArICogTWFuYWdlZCBncGlvX3JlZ21hcF9yZWdpc3RlcigpLiBGb3IgZ2VuZXJpYyBy
ZWdtYXAgR1BJTyBkZXZpY2UgcmVnaXN0ZXJlZCBieQo+ICsgKiB0aGlzIGZ1bmN0aW9uLCBncGlv
X3JlZ21hcF91bnJlZ2lzdGVyKCkgaXMgYXV0b21hdGljYWxseSBjYWxsZWQgb24gZHJpdmVyCj4g
KyAqIGRldGFjaC4gU2VlIGdwaW9fcmVnbWFwX3JlZ2lzdGVyKCkgZm9yIG1vcmUgaW5mb3JtYXRp
b24uCj4gKyAqLwo+ICtzdHJ1Y3QgZ3Bpb19yZWdtYXAgKmRldm1fZ3Bpb19yZWdtYXBfcmVnaXN0
ZXIoc3RydWN0IGRldmljZSAqZGV2LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgZ3Bpb19yZWdtYXBfY29uZmlnICpjb25maWcpCj4g
K3sKPiArICAgICAgIHN0cnVjdCBncGlvX3JlZ21hcCAqKnB0ciwgKmdwaW87Cj4gKwo+ICsgICAg
ICAgcHRyID0gZGV2cmVzX2FsbG9jKGRldm1fZ3Bpb19yZWdtYXBfdW5yZWdpc3Rlciwgc2l6ZW9m
KCpwdHIpLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIEdGUF9LRVJORUwpOwo+ICsgICAg
ICAgaWYgKCFwdHIpCj4gKyAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwo+
ICsKPiArICAgICAgIGdwaW8gPSBncGlvX3JlZ21hcF9yZWdpc3Rlcihjb25maWcpOwo+ICsKPiAr
ICAgICAgIGlmICghSVNfRVJSKGdwaW8pKSB7Cj4gKyAgICAgICAgICAgICAgICpwdHIgPSBncGlv
Owo+ICsgICAgICAgICAgICAgICBkZXZyZXNfYWRkKGRldiwgcHRyKTsKPiArICAgICAgIH0gZWxz
ZSB7Cj4gKyAgICAgICAgICAgICAgIGRldnJlc19mcmVlKHB0cik7Cj4gKyAgICAgICB9Cj4gKwo+
ICsgICAgICAgcmV0dXJuIGdwaW87Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwoZGV2bV9ncGlv
X3JlZ21hcF9yZWdpc3Rlcik7Cj4gKwo+ICtNT0RVTEVfQVVUSE9SKCJNaWNoYWVsIFdhbGxlIDxt
aWNoYWVsQHdhbGxlLmNjPiIpOwo+ICtNT0RVTEVfREVTQ1JJUFRJT04oIkdQSU8gZ2VuZXJpYyBy
ZWdtYXAgZHJpdmVyIGNvcmUiKTsKPiArTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOwo+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL2xpbnV4L2dwaW8tcmVnbWFwLmggYi9pbmNsdWRlL2xpbnV4L2dwaW8tcmVn
bWFwLmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uYTg2OGNi
Y2RlNmU5Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2luY2x1ZGUvbGludXgvZ3Bpby1yZWdtYXAu
aAo+IEBAIC0wLDAgKzEsNjkgQEAKPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0y
LjAtb25seSAqLwo+ICsKPiArI2lmbmRlZiBfTElOVVhfR1BJT19SRUdNQVBfSAo+ICsjZGVmaW5l
IF9MSU5VWF9HUElPX1JFR01BUF9ICj4gKwo+ICtzdHJ1Y3QgZ3Bpb19yZWdtYXA7Cj4gKwo+ICsj
ZGVmaW5lIEdQSU9fUkVHTUFQX0FERFJfWkVSTyAoKHVuc2lnbmVkIGxvbmcpKC0xKSkKPiArI2Rl
ZmluZSBHUElPX1JFR01BUF9BRERSKGFkZHIpICgoYWRkcikgPyA6IEdQSU9fUkVHTUFQX0FERFJf
WkVSTykKPiArCgpXaGF0IGlmIHRoZSBhZGRyIGlzIGFjdHVhbGx5IDA/IE1heWJlIGRyb3AgR1BJ
T19SRUdNQVBfQUREUiBhbmQKcmVxdWlyZSB1c2VycyB0byBzZXQgdW51c2VkIHJlZ2lzdGVycyB0
byBHUElPX1JFR01BUF9BRERSX1pFUk8/Cgo+ICsvKioKPiArICogc3RydWN0IGdwaW9fcmVnbWFw
X2NvbmZpZyAtIERlc2NyaXB0aW9uIG9mIGEgZ2VuZXJpYyByZWdtYXAgZ3Bpb19jaGlwLgo+ICsg
Kgo+ICsgKiBAcGFyZW50OiAgICAgICAgICAgIFRoZSBwYXJlbnQgZGV2aWNlCj4gKyAqIEByZWdt
YXA6ICAgICAgICAgICAgVGhlIHJlZ21hcCB1c2VkIHRvIGFjY2VzcyB0aGUgcmVnaXN0ZXJzCj4g
KyAqICAgICAgICAgICAgICAgICAgICAgZ2l2ZW4sIHRoZSBuYW1lIG9mIHRoZSBkZXZpY2UgaXMg
dXNlZAo+ICsgKiBAbGFiZWw6ICAgICAgICAgICAgIChPcHRpb25hbCkgRGVzY3JpcHRpdmUgbmFt
ZSBmb3IgR1BJTyBjb250cm9sbGVyLgo+ICsgKiAgICAgICAgICAgICAgICAgICAgIElmIG5vdCBn
aXZlbiwgdGhlIG5hbWUgb2YgdGhlIGRldmljZSBpcyB1c2VkLgo+ICsgKiBAbmdwaW86ICAgICAg
ICAgICAgIE51bWJlciBvZiBHUElPcwo+ICsgKiBAcmVnX2RhdF9iYXNlOiAgICAgIChPcHRpb25h
bCkgKGluKSByZWdpc3RlciBiYXNlIGFkZHJlc3MKPiArICogQHJlZ19zZXRfYmFzZTogICAgICAo
T3B0aW9uYWwpIHNldCByZWdpc3RlciBiYXNlIGFkZHJlc3MKPiArICogQHJlZ19jbHJfYmFzZTog
ICAgICAoT3B0aW9uYWwpIGNsZWFyIHJlZ2lzdGVyIGJhc2UgYWRkcmVzcwo+ICsgKiBAcmVnX2Rp
cl9pbl9iYXNlOiAgIChPcHRpb25hbCkgb3V0IHNldHRpbmcgcmVnaXN0ZXIgYmFzZSBhZGRyZXNz
Cj4gKyAqIEByZWdfZGlyX291dF9iYXNlOiAgKE9wdGlvbmFsKSBpbiBzZXR0aW5nIHJlZ2lzdGVy
IGJhc2UgYWRkcmVzcwoKVGhlIHR3byBhYm92ZSBhcmUgaW52ZXJ0ZWQgSSB0aGluaz8gQWxzbzog
d2h5IHRoZSBsaW1pdGF0aW9uIG9mIG9ubHkKc3VwcG9ydGluZyBvbmUgYXQgYSB0aW1lPwoKPiAr
ICogQHJlZ19zdHJpZGU6ICAgICAgICAgICAgICAgIChPcHRpb25hbCkgTWF5IGJlIHNldCBpZiB0
aGUgcmVnaXN0ZXJzIChvZiB0aGUKPiArICogICAgICAgICAgICAgICAgICAgICBzYW1lIHR5cGUs
IGRhdCwgc2V0LCBldGMpIGFyZSBub3QgY29uc2VjdXRpdmUuCj4gKyAqIEBuZ3Bpb19wZXJfcmVn
OiAgICAgTnVtYmVyIG9mIEdQSU9zIHBlciByZWdpc3Rlcgo+ICsgKiBAaXJxX2RvbWFpbjogICAg
ICAgICAgICAgICAgKE9wdGlvbmFsKSBJUlEgZG9tYWluIGlmIHRoZSBjb250cm9sbGVyIGlzCj4g
KyAqICAgICAgICAgICAgICAgICAgICAgaW50ZXJydXB0LWNhcGFibGUKPiArICogQHJlZ19tYXNr
X3hsYXRlOiAgICAgKE9wdGlvbmFsKSBUcmFuc2xhdGVzIGJhc2UgYWRkcmVzcyBhbmQgR1BJTwo+
ICsgKiAgICAgICAgICAgICAgICAgICAgIG9mZnNldCB0byBhIHJlZ2lzdGVyL2JpdG1hc2sgcGFp
ci4gSWYgbm90Cj4gKyAqICAgICAgICAgICAgICAgICAgICAgZ2l2ZW4gdGhlIGRlZmF1bHQgZ3Bp
b19yZWdtYXBfc2ltcGxlX3hsYXRlKCkKPiArICogICAgICAgICAgICAgICAgICAgICBpcyB1c2Vk
Lgo+ICsgKgo+ICsgKiBUaGUgcmVnX21hc2tfeGxhdGUgdHJhbnNsYXRlcyBhIGdpdmVuIGJhc2Ug
YWRkcmVzcyBhbmQgR1BJTyBvZmZzZXQgdG8KPiArICogcmVnaXN0ZXIgYW5kIG1hc2sgcGFpci4g
VGhlIGJhc2UgYWRkcmVzcyBpcyBvbmUgb2YgdGhlIGdpdmVuIHJlZ18qX2Jhc2UuCj4gKyAqCj4g
KyAqIEFsbCBiYXNlIGFkZHJlc3NlcyBtYXkgaGF2ZSB0aGUgc3BlY2lhbCB2YWx1ZSBHUElPX1JF
R01BUF9BRERSX1pFUk8KPiArICogd2hpY2ggZm9yY2VzIHRoZSBhZGRyZXNzIHRvIHRoZSB2YWx1
ZSAwLgo+ICsgKi8KPiArc3RydWN0IGdwaW9fcmVnbWFwX2NvbmZpZyB7Cj4gKyAgICAgICBzdHJ1
Y3QgZGV2aWNlICpwYXJlbnQ7Cj4gKyAgICAgICBzdHJ1Y3QgcmVnbWFwICpyZWdtYXA7Cj4gKwo+
ICsgICAgICAgY29uc3QgY2hhciAqbGFiZWw7Cj4gKyAgICAgICBpbnQgbmdwaW87Cj4gKwo+ICsg
ICAgICAgdW5zaWduZWQgaW50IHJlZ19kYXRfYmFzZTsKPiArICAgICAgIHVuc2lnbmVkIGludCBy
ZWdfc2V0X2Jhc2U7Cj4gKyAgICAgICB1bnNpZ25lZCBpbnQgcmVnX2Nscl9iYXNlOwo+ICsgICAg
ICAgdW5zaWduZWQgaW50IHJlZ19kaXJfaW5fYmFzZTsKPiArICAgICAgIHVuc2lnbmVkIGludCBy
ZWdfZGlyX291dF9iYXNlOwo+ICsgICAgICAgaW50IHJlZ19zdHJpZGU7Cj4gKyAgICAgICBpbnQg
bmdwaW9fcGVyX3JlZzsKPiArICAgICAgIHN0cnVjdCBpcnFfZG9tYWluICppcnFfZG9tYWluOwo+
ICsKPiArICAgICAgIGludCAoKnJlZ19tYXNrX3hsYXRlKShzdHJ1Y3QgZ3Bpb19yZWdtYXAgKmdw
aW8sIHVuc2lnbmVkIGludCBiYXNlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVu
c2lnbmVkIGludCBvZmZzZXQsIHVuc2lnbmVkIGludCAqcmVnLAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHVuc2lnbmVkIGludCAqbWFzayk7Cj4gK307Cj4gKwo+ICtzdHJ1Y3QgZ3Bp
b19yZWdtYXAgKmdwaW9fcmVnbWFwX3JlZ2lzdGVyKGNvbnN0IHN0cnVjdCBncGlvX3JlZ21hcF9j
b25maWcgKmNvbmZpZyk7Cj4gK3ZvaWQgZ3Bpb19yZWdtYXBfdW5yZWdpc3RlcihzdHJ1Y3QgZ3Bp
b19yZWdtYXAgKmdwaW8pOwo+ICtzdHJ1Y3QgZ3Bpb19yZWdtYXAgKmRldm1fZ3Bpb19yZWdtYXBf
cmVnaXN0ZXIoc3RydWN0IGRldmljZSAqZGV2LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgZ3Bpb19yZWdtYXBfY29uZmlnICpjb25m
aWcpOwo+ICt2b2lkIGdwaW9fcmVnbWFwX3NldF9kcnZkYXRhKHN0cnVjdCBncGlvX3JlZ21hcCAq
Z3Bpbywgdm9pZCAqZGF0YSk7Cj4gK3ZvaWQgKmdwaW9fcmVnbWFwX2dldF9kcnZkYXRhKHN0cnVj
dCBncGlvX3JlZ21hcCAqZ3Bpbyk7Cj4gKwo+ICsjZW5kaWYgLyogX0xJTlVYX0dQSU9fUkVHTUFQ
X0ggKi8KPiAtLQo+IDIuMjAuMQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
