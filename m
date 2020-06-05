Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA171EF1B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 08:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYBh9+2G1w8f+MPYRT5gbYbeB8NPT2N2zpy5b+T1dmM=; b=UfSJspguuGABE2
	QQnE0Lo32s29Jc/aYCC/6+5hkMbOavcbUYbAPtzP+DgB+1/VXyksqkiRFrlkQ92ICQrxcYFcgPFOU
	88+Haa7pvuZhmL/FcWDsdKRZhkFiwE/M/J5POMxhHUb04iK0A4/bAM9l9oL6N9VfXSYKQn0znMlwN
	4TRg2wqbBPwodAZ8u7oOYT9rLvkLXim97zCmUZfyPiI6hBuxGO0G2iNSI5MW2UqqzgMDhBZ/lYu79
	mWiJzKUsvSAj+IZQdODHcZLzBTgdLagrI0NT8p7LvU9dDl30LvPyYtT+9Ja6jaAo4MqAWGNfWQfsz
	Gp5MFWJ/Rj1N7kvrC+MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh6I4-00036g-Vd; Fri, 05 Jun 2020 06:57:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh6Hx-00036E-E9
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 06:57:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id l26so7366128wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 23:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=tz5BlR5JaV+ArYxa0HAqmVilkT6R8zR9JrCnLl9Yodo=;
 b=qw82uH6liAGFuBEV6hkyJqcUYBtUY4dcgnzButO12xrC67ecuHOe03IPstZhhMxpkg
 CoAUe7ix0w9VSDzB4R6LaZ9sUbPfjvRaxYMyMYeRp9nAIJfGM7wp5Ei9cVX6EnlUMfKI
 0jGYMDy/f68iPGczAsb9xq6xZxgStH3X/LXTNGJDpAUm3b7a4TRbEj8wIACimBuRAv40
 NlX6/ktlt84lJ+EqG2wFjKS81cdMxFeDDWNOG+TapLO6Fy6L8RDWwhDKNMmiDlhVKIUa
 GqxtR0PuVKCLaJBVEZZ2EffArw0dmDoRecAGRNlRyHlzphGVag+UBe1i+7I/2/XB9dA1
 qvEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=tz5BlR5JaV+ArYxa0HAqmVilkT6R8zR9JrCnLl9Yodo=;
 b=qNLQKulhktlt3FCp0GIA9NHR7ptGds+24SvothcVSYydjECyNVzS3tEpFuawOfPH2T
 0IRRRzuDxhZ6wZd9T5RthcgV1iA10gvFM91WLFs2cJHKr2DClBwfdbiB3GeiMx3cioT8
 p8pVEwrlEIsE6kl44VLGQRK+fayGqGLt99NYeM7ntph4PC2sdVHIYAhYUtxhQwZzbvYE
 zca8hwBzY0rGOh8Fp+PebfL0QDMKBw1euefVBmjV/ZaG7GXPRptopVofyhCiuO4Fn05R
 5zW5dgRWSMFlfPtqSvLXRdtoyWOMMMHU6fbLFRZA6jXwFlmNPQHrxxW5B1v+4r9MnbQS
 Dr3Q==
X-Gm-Message-State: AOAM532q0pKUrsbRMGyYt9108RlUzA5nmM+ydv93touSry8l3UHD/+5e
 Xdw0/yuOPGEIl01OV7Q7uEEGvQ==
X-Google-Smtp-Source: ABdhPJw+8D1o16iYVZ1h5gWKMqmnNIGt4AnryEE8VROc7MnMuuWA7+NmgtKq7OghGpEPR8xO5Fr4Zg==
X-Received: by 2002:a1c:80d4:: with SMTP id b203mr1181014wmd.138.1591340231562; 
 Thu, 04 Jun 2020 23:57:11 -0700 (PDT)
Received: from dell ([95.147.198.92])
 by smtp.gmail.com with ESMTPSA id t188sm5291530wmt.27.2020.06.04.23.57.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 23:57:10 -0700 (PDT)
Date: Fri, 5 Jun 2020 07:57:09 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Michael Walle <michael@walle.cc>, broonie@kernel.org
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200605065709.GD3714@dell>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604211039.12689-3-michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_235713_509171_FF106F67 
X-CRM114-Status: GOOD (  27.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFyaywgd2hhdCBkbyB5b3UgdGhpbms/CgpPbiBUaHUsIDA0IEp1biAyMDIwLCBNaWNoYWVsIFdh
bGxlIHdyb3RlOgoKPiBBZGQgdGhlIGNvcmUgc3VwcG9ydCBmb3IgdGhlIGJvYXJkIG1hbmFnZW1l
bnQgY29udHJvbGxlciBmb3VuZCBvbiB0aGUKPiBTTUFSQy1zQUwyOCBib2FyZC4gSXQgY29uc2lz
dHMgb2YgdGhlIGZvbGxvd2luZyBmdW5jdGlvbnM6Cj4gIC0gd2F0Y2hkb2cKPiAgLSBHUElPIGNv
bnRyb2xsZXIKPiAgLSBQV00gY29udHJvbGxlcgo+ICAtIGZhbiBzZW5zb3IKPiAgLSBpbnRlcnJ1
cHQgY29udHJvbGxlcgo+IAo+IEF0IHRoZSBtb21lbnQsIHRoaXMgY29udHJvbGxlciBpcyB1c2Vk
IG9uIHRoZSBLb250cm9uIFNNQVJDLXNBTDI4IGJvYXJkLgo+IAo+IFBsZWFzZSBub3RlIHRoYXQg
dGhlIE1GRCBkcml2ZXIgaXMgZGVmaW5lZCBhcyBib29sIGluIHRoZSBLY29uZmlnCj4gYmVjYXVz
ZSB0aGUgbmV4dCBwYXRjaCB3aWxsIGFkZCBpbnRlcnJ1cHQgc3VwcG9ydC4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBNaWNoYWVsIFdhbGxlIDxtaWNoYWVsQHdhbGxlLmNjPgo+IC0tLQo+ICBkcml2ZXJz
L21mZC9LY29uZmlnICAgIHwgMTkgKysrKysrKysrKwo+ICBkcml2ZXJzL21mZC9NYWtlZmlsZSAg
IHwgIDIgKysKPiAgZHJpdmVycy9tZmQvc2wyOGNwbGQuYyB8IDc5ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDEwMCBpbnNlcnRp
b25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21mZC9zbDI4Y3BsZC5jCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL0tjb25maWcgYi9kcml2ZXJzL21mZC9LY29uZmlnCj4g
aW5kZXggNGY4YjczZDkyZGYzLi41YzBjZDUxNGQxOTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9t
ZmQvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvbWZkL0tjb25maWcKPiBAQCAtMjEwOSw1ICsyMTA5
LDI0IEBAIGNvbmZpZyBTR0lfTUZEX0lPQzMKPiAgCSAgSWYgeW91IGhhdmUgYW4gU0dJIE9yaWdp
biwgT2N0YW5lLCBvciBhIFBDSSBJT0MzIGNhcmQsCj4gIAkgIHRoZW4gc2F5IFkuIE90aGVyd2lz
ZSBzYXkgTi4KPiAgCj4gK2NvbmZpZyBNRkRfU0wyOENQTEQKPiArCWJvb2wgIktvbnRyb24gc2wy
OCBjb3JlIGRyaXZlciIKCiJLb250cm9uIFNMMjggQ29yZSBEcml2ZXIiCgo+ICsJZGVwZW5kcyBv
biBJMkM9eQo+ICsJZGVwZW5kcyBvbiBPRgo+ICsJc2VsZWN0IFJFR01BUF9JMkMKPiArCXNlbGVj
dCBNRkRfQ09SRQo+ICsJaGVscAo+ICsJICBUaGlzIG9wdGlvbiBlbmFibGVzIHN1cHBvcnQgZm9y
IHRoZSBib2FyZCBtYW5hZ2VtZW50IGNvbnRyb2xsZXIKPiArCSAgZm91bmQgb24gdGhlIEtvbnRy
b24gc2wyOCBDUExELiBZb3UgaGF2ZSB0byBzZWxlY3QgaW5kaXZpZHVhbAoKSSBjYW4ndCBmaW5k
IGFueSByZWZlcmVuY2UgdG8gdGhlICJLb250cm9uIHNsMjggQ1BMRCIgb25saW5lLgoKSXMgdGhl
cmUgYSBkYXRhc2hlZXQ/Cgo+ICsJICBmdW5jdGlvbnMsIHN1Y2ggYXMgd2F0Y2hkb2csIEdQSU8s
IGV0YywgdW5kZXIgdGhlIGNvcnJlc3BvbmRpbmcgbWVudXMKPiArCSAgaW4gb3JkZXIgdG8gZW5h
YmxlIHRoZW0uCj4gKwo+ICsJICBDdXJyZW50bHkgc3VwcG9ydGVkIGJvYXJkcyBhcmU6Cj4gKwo+
ICsJCUtvbnRyb24gU01BUkMtc0FMMjgKPiArCj4gKwkgIFRvIGNvbXBpbGUgdGhpcyBkcml2ZXIg
YXMgYSBtb2R1bGUsIGNob29zZSBNIGhlcmU6IHRoZSBtb2R1bGUgd2lsbCBiZQo+ICsJICBjYWxs
ZWQgc2wyOGNwbGQuCj4gKwo+ICBlbmRtZW51Cj4gIGVuZGlmCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWZkL01ha2VmaWxlIGIvZHJpdmVycy9tZmQvTWFrZWZpbGUKPiBpbmRleCA5MzY3YTkyZjc5
NWEuLmJlNTlmYjQwYWEyOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21mZC9NYWtlZmlsZQo+ICsr
KyBiL2RyaXZlcnMvbWZkL01ha2VmaWxlCj4gQEAgLTI2NCwzICsyNjQsNSBAQCBvYmotJChDT05G
SUdfTUZEX1JPSE1fQkQ3MThYWCkJKz0gcm9obS1iZDcxOHg3Lm8KPiAgb2JqLSQoQ09ORklHX01G
RF9TVE1GWCkgCSs9IHN0bWZ4Lm8KPiAgCj4gIG9iai0kKENPTkZJR19TR0lfTUZEX0lPQzMpCSs9
IGlvYzMubwo+ICsKPiArb2JqLSQoQ09ORklHX01GRF9TTDI4Q1BMRCkJKz0gc2wyOGNwbGQubwo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9zbDI4Y3BsZC5jIGIvZHJpdmVycy9tZmQvc2wyOGNw
bGQuYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5hMjMxOTRi
YjZlZmEKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9tZmQvc2wyOGNwbGQuYwo+IEBA
IC0wLDAgKzEsNzkgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25s
eQo+ICsvKgo+ICsgKiBNRkQgY29yZSBmb3IgdGhlIHNsMjhjcGxkLgoKSWRlYWxseSB0aGlzIHdv
dWxkIG1hdGNoIHRoZSBLY29uZmlnIHN1YmplY3QgbGluZS4KCj4gKyAqIENvcHlyaWdodCAyMDE5
IEtvbnRyb24gRXVyb3BlIEdtYkgKClRoaXMgaXMgb3V0IG9mIGRhdGUuCgo+ICsgKi8KPiArCj4g
KyNpbmNsdWRlIDxsaW51eC9pMmMuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgo+
ICsjaW5jbHVkZSA8bGludXgva2VybmVsLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tZmQvY29yZS5o
Pgo+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9vZl9wbGF0
Zm9ybS5oPgo+ICsjaW5jbHVkZSA8bGludXgvcmVnbWFwLmg+Cj4gKwo+ICsjZGVmaW5lIFNMMjhD
UExEX1ZFUlNJT04JMHgwMwo+ICsjZGVmaW5lIFNMMjhDUExEX01JTl9SRVFfVkVSU0lPTiAxNAo+
ICsKPiArc3RydWN0IHNsMjhjcGxkIHsKPiArCXN0cnVjdCBkZXZpY2UgKmRldjsKPiArCXN0cnVj
dCByZWdtYXAgKnJlZ21hcDsKPiArfTsKCldoeSBkbyB5b3UgbmVlZCB0aGlzIHN0cnVjdHVyZT8K
Cj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcmVnbWFwX2NvbmZpZyBzbDI4Y3BsZF9yZWdtYXBfY29u
ZmlnID0gewo+ICsJLnJlZ19iaXRzID0gOCwKPiArCS52YWxfYml0cyA9IDgsCj4gKwkucmVnX3N0
cmlkZSA9IDEsCj4gK307Cj4gKwo+ICtzdGF0aWMgaW50IHNsMjhjcGxkX3Byb2JlKHN0cnVjdCBp
MmNfY2xpZW50ICppMmMpCj4gK3sKPiArCXN0cnVjdCBzbDI4Y3BsZCAqc2wyOGNwbGQ7Cj4gKwlz
dHJ1Y3QgZGV2aWNlICpkZXYgPSAmaTJjLT5kZXY7Cj4gKwl1bnNpZ25lZCBpbnQgY3BsZF92ZXJz
aW9uOwo+ICsJaW50IHJldDsKPiArCj4gKwlzbDI4Y3BsZCA9IGRldm1fa3phbGxvYyhkZXYsIHNp
emVvZigqc2wyOGNwbGQpLCBHRlBfS0VSTkVMKTsKPiArCWlmICghc2wyOGNwbGQpCj4gKwkJcmV0
dXJuIC1FTk9NRU07Cj4gKwo+ICsJc2wyOGNwbGQtPnJlZ21hcCA9IGRldm1fcmVnbWFwX2luaXRf
aTJjKGkyYywgJnNsMjhjcGxkX3JlZ21hcF9jb25maWcpOwo+ICsJaWYgKElTX0VSUihzbDI4Y3Bs
ZC0+cmVnbWFwKSkKPiArCQlyZXR1cm4gUFRSX0VSUihzbDI4Y3BsZC0+cmVnbWFwKTsKClRoaXMg
aXMgbm93IGEgc2hhcmVkIG1lbW9yeSBhbGxvY2F0b3IgYW5kIG5vdCBhbiBNRkQgYXQgYWxsLgoK
SSdtIGNsYW1waW5nIGRvd24gb24gdGhlc2UgdHlwZSBvZiBkcml2ZXJzIQoKUGxlYXNlIGZpbmQg
YSBiZXR0ZXIgd2F5IHRvIGFjY29tcGxpc2ggdGhpcy4KClBvdGVudGlhbGx5IHVzaW5nICJzaW1w
bGUtbWZkIiBhbmQgInNpbXBsZS1yZWdtYXAiLgoKVGhlIGZvcm1lciBhbHJlYWR5IGV4aXN0cyBh
bmQgZG9lcyB3aGF0IHlvdSB3YW50LiAgVGhlIGxhdHRlciBkb2Vzbid0CnlldCBleGlzdCwgYnV0
IGNvdWxkIHNvbHZlIHlvdXIgYW5kIGxvdHMgb2Ygb3RoZXIgY29udHJpYnV0b3Incwppc3N1ZXMu
CgpIZWNrIG1heWJlIEknbGwgaW1wbGVtZW50IGl0IG15c2VsZiBpZiB0aGlzIGtlZXBzIGhhcHBl
bmluZy4KCj4gKwlyZXQgPSByZWdtYXBfcmVhZChzbDI4Y3BsZC0+cmVnbWFwLCBTTDI4Q1BMRF9W
RVJTSU9OLCAmY3BsZF92ZXJzaW9uKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiAr
Cj4gKwlpZiAoY3BsZF92ZXJzaW9uIDwgU0wyOENQTERfTUlOX1JFUV9WRVJTSU9OKSB7Cj4gKwkJ
ZGV2X2VycihkZXYsICJ1bnN1cHBvcnRlZCBDUExEIHZlcnNpb24gJWRcbiIsIGNwbGRfdmVyc2lv
bik7Cj4gKwkJcmV0dXJuIC1FTk9ERVY7Cj4gKwl9Cj4gKwo+ICsJc2wyOGNwbGQtPmRldiA9IGRl
djsKPiArCWkyY19zZXRfY2xpZW50ZGF0YShpMmMsIHNsMjhjcGxkKTsKCklmIHRoZSBzdHJ1Y3Qg
ZGVmaW5pdGlvbiBpcyBpbiBoZXJlLCBob3cgZG8geW91IHVzZSBpdCBlbHNld2hlcmU/Cgo+ICsJ
ZGV2X2luZm8oZGV2LCAic3VjY2Vzc2Z1bGx5IHByb2JlZC4gQ1BMRCB2ZXJzaW9uICVkXG4iLCBj
cGxkX3ZlcnNpb24pOwo+ICsKPiArCXJldHVybiBkZXZtX29mX3BsYXRmb3JtX3BvcHVsYXRlKCZp
MmMtPmRldik7Cj4gK30KPiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHNs
MjhjcGxkX29mX21hdGNoW10gPSB7Cj4gKwl7IC5jb21wYXRpYmxlID0gImtvbnRyb24sc2wyOGNw
bGQtcjEiLCB9LAo+ICsJe30KPiArfTsKPiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgc2wyOGNw
bGRfb2ZfbWF0Y2gpOwo+ICsKPiArc3RhdGljIHN0cnVjdCBpMmNfZHJpdmVyIHNsMjhjcGxkX2Ry
aXZlciA9IHsKPiArCS5wcm9iZV9uZXcgPSBzbDI4Y3BsZF9wcm9iZSwKPiArCS5kcml2ZXIgPSB7
Cj4gKwkJLm5hbWUgPSAic2wyOGNwbGQiLAo+ICsJCS5vZl9tYXRjaF90YWJsZSA9IG9mX21hdGNo
X3B0cihzbDI4Y3BsZF9vZl9tYXRjaCksCj4gKwl9LAo+ICt9Owo+ICttb2R1bGVfaTJjX2RyaXZl
cihzbDI4Y3BsZF9kcml2ZXIpOwo+ICsKPiArTU9EVUxFX0RFU0NSSVBUSU9OKCJzbDI4Y3BsZCBN
RkQgQ29yZSBEcml2ZXIiKTsKPiArTU9EVUxFX0FVVEhPUigiTWljaGFlbCBXYWxsZSA8bWljaGFl
bEB3YWxsZS5jYz4iKTsKPiArTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOwoKLS0gCkxlZSBKb25lcyBb
5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIg
T3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29r
IHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
