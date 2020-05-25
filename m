Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1251E09A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 11:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIoA0AzDdBkWuhlGer7nc6POauz788Zj7ar2qVL8mHI=; b=ICruwubVpDuNpl
	iuf+prR6xbcFA6Y6ytlxkBFLH9YHyTwpOG3EnGzrSlusMoJP0ltW7CM9PP57sbrmErGuAk65GBnb0
	k9+WQOZYwjn6sl6/KyRjH6a7Wk4CPAaK1vo9xpGr1l6PCdrJRZupf7CfguglPgRxkn4ZMz/kVEVjs
	BuUY2A0Ab8AY0cPrSgufgYAxbvVUq3cp4ud/mLVp2P6g2sSRG/lEF1SUniaLMOefQDxWr7N/UuxQH
	G5/5+6n5GW/MKtem1GCJ24GAP8et1r+271aFzjvPsVhbcSsK2Uek8ifS/ReLl4Bzu06WRAT67aZ+0
	rIiBi0lfT4XfwnLxI+Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd93q-0006t4-Tx; Mon, 25 May 2020 09:06:18 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd93c-0006lf-Cc
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 09:06:06 +0000
Received: by mail-qk1-x744.google.com with SMTP id v79so6834404qkb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 02:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dPuZPyJHL9y310jCMBab1+wUqEyxBpL9sxzRpIMUcDw=;
 b=nO2zcmFBdCWzlGqLw1pR2ThUuz31GiwsX9FmLMPWXkIRbISIRdArAGzOKpkV7Qzv10
 5VetiQSFGmqqkEyKB7+SGACaU0qLz2m+9iyUgPiDy2IDRCPxhwFx8/5DMtWUHYRsjtlL
 0atWQF/ahgFhsYQYAzdXXs0aRQhob0wySOVyDYs2DXpouokBCqB6slqb/TvDM+I33ev8
 yk0brFmDMsprGHiwBPRLvyh/NVcy/OCFMiVYdFYc4bQaZFP6VvDRpzKRyp0zTf5FOVWN
 aSAJO9abuoljXUYQUaIMlrcVwRxlonf00RVbuDaEI1E+vkonNYosmqgXcWB0HgzUmBS7
 NMpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dPuZPyJHL9y310jCMBab1+wUqEyxBpL9sxzRpIMUcDw=;
 b=rQdTc4rjBgxP9UL4Cp2yijvmPozeBVTOGvcr25YDZnFBKdDJiMBJH5GuUy7OlDRhnF
 Y5y9NsEGTNFfVjldyHH2S+bEmLDl5VnYpMxJ2emRJe/J+oX/Fng4iWn17nJpJJaji4w2
 aDert+V47MZkyGalhWNNaC4E7mNo433tZvzvhu2DKQmv3ErjIl9ql3Zv5NPhZt99W4L6
 6NTTShLy3sk/cqSG5WhDLQZ84dHUHTFyZxbk7quY74jU1gGd3+CFsli1icYaQXrHfwFs
 +oVa5qbPWh+6S/kN8oJl7Qy4vg5tAkabQZj5j9JUEiKzN7OVyYKSK0J51RbzgVeh87Nn
 GDNw==
X-Gm-Message-State: AOAM532vg8SrQajobPBLuOJ96LZu/BVn6PNPnsCWKG5yAq3WW9nM0Jhr
 FnRa/DXEHV4H2+NlFYcbvnRYBdwLSKkHq0jmg0xNOg==
X-Google-Smtp-Source: ABdhPJwwogx5lD1d892oBsZ0UV12gKR+k0N+3QkhwPrACB1IANnU5OS7w1qWs680sMYLIO0JDYTSL1iYK1byj+QAdpM=
X-Received: by 2002:a37:5b47:: with SMTP id p68mr26336785qkb.120.1590397562647; 
 Mon, 25 May 2020 02:06:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-11-michael@walle.cc>
 <CAMpxmJV3XTOxuoKeV-z2d75qWqHkgvV9419tfe3idDeKwoeoLA@mail.gmail.com>
 <75bff2917be1badd36af9f980cf59d2c@walle.cc>
In-Reply-To: <75bff2917be1badd36af9f980cf59d2c@walle.cc>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Mon, 25 May 2020 11:05:51 +0200
Message-ID: <CAMpxmJXctc5cbrjSeJxa7DfmjiVsbyhqAbEKt-gtayKhQj0Cnw@mail.gmail.com>
Subject: Re: [PATCH v3 10/16] gpio: add a reusable generic gpio_chip using
 regmap
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_020604_461583_AD4ECE03 
X-CRM114-Status: GOOD (  23.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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

d3QuLCAxMiBtYWogMjAyMCBvIDE2OjQxIE1pY2hhZWwgV2FsbGUgPG1pY2hhZWxAd2FsbGUuY2M+
IG5hcGlzYcWCKGEpOgo+Cj4gPj4gKwo+ID4+ICtNT0RVTEVfQVVUSE9SKCJNaWNoYWVsIFdhbGxl
IDxtaWNoYWVsQHdhbGxlLmNjPiIpOwo+ID4+ICtNT0RVTEVfREVTQ1JJUFRJT04oIkdQSU8gZ2Vu
ZXJpYyByZWdtYXAgZHJpdmVyIGNvcmUiKTsKPiA+PiArTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOwo+
ID4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2dwaW8tcmVnbWFwLmggYi9pbmNsdWRlL2xp
bnV4L2dwaW8tcmVnbWFwLmgKPiA+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4+IGluZGV4IDAw
MDAwMDAwMDAwMC4uYTg2OGNiY2RlNmU5Cj4gPj4gLS0tIC9kZXYvbnVsbAo+ID4+ICsrKyBiL2lu
Y2x1ZGUvbGludXgvZ3Bpby1yZWdtYXAuaAo+ID4+IEBAIC0wLDAgKzEsNjkgQEAKPiA+PiArLyog
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSAqLwo+ID4+ICsKPiA+PiArI2lm
bmRlZiBfTElOVVhfR1BJT19SRUdNQVBfSAo+ID4+ICsjZGVmaW5lIF9MSU5VWF9HUElPX1JFR01B
UF9ICj4gPj4gKwo+ID4+ICtzdHJ1Y3QgZ3Bpb19yZWdtYXA7Cj4gPj4gKwo+ID4+ICsjZGVmaW5l
IEdQSU9fUkVHTUFQX0FERFJfWkVSTyAoKHVuc2lnbmVkIGxvbmcpKC0xKSkKPiA+PiArI2RlZmlu
ZSBHUElPX1JFR01BUF9BRERSKGFkZHIpICgoYWRkcikgPyA6IEdQSU9fUkVHTUFQX0FERFJfWkVS
TykKPiA+PiArCj4gPgo+ID4gV2hhdCBpZiB0aGUgYWRkciBpcyBhY3R1YWxseSAwPwo+Cj4gVGhl
biB0aGUgZHJpdmVyIGhhcyB0byBzZXQgR1BJT19SRUdNQVBfQUREUl9aRVJPIG9yIHVzZSB0aGUg
Y29udmVuaWVuY2UKPiBtYWNybyBHUElPX1JFR01BUF9BRERSLgo+Cj4gU28geW91IGNhbiBoYXZl
Cj4KPiAgICBzdHJ1Y3QgZ3Bpb19yZWdtYXBfY29uZmlnIGNvbmZpZyA9IHsgMCB9Owo+ICAgIGNv
bmZpZy5yZWdfZGF0X2Jhc2UgPSAweDEwOwo+ICAgIGNvbmZpZy5yZWdfZGlyX291dF9iYXNlID0g
MHgyMDsKPgo+IG9yCj4KPiAgICBjb25maWcucmVnX2RhdF9iYXNlID0gR1BJT19SRUdNQVBfQURE
Ul9aRVJPOwo+Cj4gb3IgaWYgeW91IGNhbid0IGJlIHN1cmUgaWYgdGhlIFJIUyB2YWx1ZSBtaWdo
dCBiZSB6ZXJvOgo+Cj4gICAgY29uZmlnLnJlZ19kYXRfYmFzZSA9IEdQSU9fUkVHTUFQX0FERFIo
cmVnKTsKPgo+Cj4gPiBNYXliZSBkcm9wIEdQSU9fUkVHTUFQX0FERFIgYW5kIHJlcXVpcmUgdXNl
cnMgdG8gc2V0IHVudXNlZCByZWdpc3RlcnMKPiA+IHRvIEdQSU9fUkVHTUFQX0FERFJfWkVSTz8K
Pgo+IFRoYXRzIGJhZCBiZWNhdXNlOgo+ICAgKiB5b3UnZCBoYXZlIHRvIHNldCBwbGVudHkgb2Yg
dW51c2VkIGJhc2UgcmVnaXN0ZXJzIGZvciBhIHNpbXBsZSBkcml2ZXIKPiAgICogaWYgdGhlcmUg
d2lsbCBiZSBhZGRpdGlvbmFsIHByb3BlcnRpZXMgaW4gdGhlIGZ1dHVyZSwgeW91IGhhdmUgdG8K
PiB0b3VjaAo+ICAgICBhbGwgb3RoZXIgZHJpdmVycywgYmVjYXVzZSB0aGV5IGFyZSBpbml0aWFs
aXplZCBhcyAwIChpZS4gdmFsaWQgcmVnCj4gMCkuCj4KPiA+PiArLyoqCj4gPj4gKyAqIHN0cnVj
dCBncGlvX3JlZ21hcF9jb25maWcgLSBEZXNjcmlwdGlvbiBvZiBhIGdlbmVyaWMgcmVnbWFwCj4g
Pj4gZ3Bpb19jaGlwLgo+ID4+ICsgKgo+ID4+ICsgKiBAcGFyZW50OiAgICAgICAgICAgIFRoZSBw
YXJlbnQgZGV2aWNlCj4gPj4gKyAqIEByZWdtYXA6ICAgICAgICAgICAgVGhlIHJlZ21hcCB1c2Vk
IHRvIGFjY2VzcyB0aGUgcmVnaXN0ZXJzCj4gPj4gKyAqICAgICAgICAgICAgICAgICAgICAgZ2l2
ZW4sIHRoZSBuYW1lIG9mIHRoZSBkZXZpY2UgaXMgdXNlZAo+ID4+ICsgKiBAbGFiZWw6ICAgICAg
ICAgICAgIChPcHRpb25hbCkgRGVzY3JpcHRpdmUgbmFtZSBmb3IgR1BJTwo+ID4+IGNvbnRyb2xs
ZXIuCj4gPj4gKyAqICAgICAgICAgICAgICAgICAgICAgSWYgbm90IGdpdmVuLCB0aGUgbmFtZSBv
ZiB0aGUgZGV2aWNlIGlzIHVzZWQuCj4gPj4gKyAqIEBuZ3BpbzogICAgICAgICAgICAgTnVtYmVy
IG9mIEdQSU9zCj4gPj4gKyAqIEByZWdfZGF0X2Jhc2U6ICAgICAgKE9wdGlvbmFsKSAoaW4pIHJl
Z2lzdGVyIGJhc2UgYWRkcmVzcwo+ID4+ICsgKiBAcmVnX3NldF9iYXNlOiAgICAgIChPcHRpb25h
bCkgc2V0IHJlZ2lzdGVyIGJhc2UgYWRkcmVzcwo+ID4+ICsgKiBAcmVnX2Nscl9iYXNlOiAgICAg
IChPcHRpb25hbCkgY2xlYXIgcmVnaXN0ZXIgYmFzZSBhZGRyZXNzCj4gPj4gKyAqIEByZWdfZGly
X2luX2Jhc2U6ICAgKE9wdGlvbmFsKSBvdXQgc2V0dGluZyByZWdpc3RlciBiYXNlIGFkZHJlc3MK
PiA+PiArICogQHJlZ19kaXJfb3V0X2Jhc2U6ICAoT3B0aW9uYWwpIGluIHNldHRpbmcgcmVnaXN0
ZXIgYmFzZSBhZGRyZXNzCj4gPgo+ID4gVGhlIHR3byBhYm92ZSBhcmUgaW52ZXJ0ZWQgSSB0aGlu
az8KPiBnb29kIGNhdGNoLgo+Cj4gPiBBbHNvOiB3aHkgdGhlIGxpbWl0YXRpb24gb2Ygb25seSBz
dXBwb3J0aW5nIG9uZSBhdCBhIHRpbWU/Cj4KPiB0aGV5IHNob3VsZCBiZSBleGNsdXNpdmUsIGVp
dGhlciB5b3UgaGF2ZSBhIHJlZ2lzdGVyIHdoZXJlIHlvdSBzZXQgdGhlCj4gb3V0cHV0IGJpdHMg
dG8gb25lLCBvciB0aGUgaW5wdXQgYml0cy4gTWF5YmUgdGhpcyBuZWVkIGEgYml0IG1vcmUKPiBj
b250ZXh0Cj4gYWJvdmUuIGluIGdwaW8tbW1pby5jIHlvdSBjYW4gc2V0IGJvdGggYW5kIGJvdGgg
YXJlIHVzZWQgaW4KPiBzZXRfZGlyZWN0aW9uKCksIGJ1dCBvbmx5IG9uZSBpcyByZWFkIGluIGdl
dF9kaXJlY3Rpb24oKS4KPgo+IFRoYXQgYmVpbmcgc2FpZCwgSSBoYXZlIG5vIHN0cm9uZyBvcGlu
aW9uIHdldGhlciB0aGV5IHNob3VsZCBiZQo+IGV4Y2x1c2l2ZQo+IG9yIG5vdCwgYmVzaWRlcyB0
aGUgc3ltbWV0cnkgb2Ygc2V0Xy9nZXRfZGlyZWN0aW9uKCkuCj4KPiAtbWljaGFlbAo+CgpTb3Jy
eSBmb3IgdGhlIGxhdGUgcmVzcG9uc2UsIHlvdXIgY29tbWVudHMgbWFrZSBzZW5zZSB0byBtZS4g
QXJlIHlvdQpnb2luZyB0byBzdWJtaXQgYSB2NCBiZWZvcmUgdGhlIHY1LjggbWVyZ2Ugd2luZG93
PwoKQmFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
