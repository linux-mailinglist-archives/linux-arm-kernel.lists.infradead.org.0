Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE53A03A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 15:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rHC75AVyAXjdpawaqhFrXePBsJymFGQk/dl+lf/3Fc=; b=jNlYXFACzwXes4
	P1BfG9altwNQfclS3XC0S0eZ+oLKFC/xL0soGmT9QIw1FEtcGS7cnGKqGumEA6RXIpM8yGF9La8/n
	OWZiJ9BGEpeAKORBe5e9nWnV2t8F4NJ6bDbpKCJX4mdeXFbHEx7Gb5E9GFw8tQvwvnc71Djl75emA
	jcXrPEMhVYIwbioOO03Y0dsdUSFYv+DJWSoJPGnFpekWDrXbL9sdt5rR2lcJZ+q876OB46CpA5XVB
	quhpUcDuZ7BOJKndCwSaaeSwjG9O+xkLWYsXSbALfWS6yqipXOdV9tkwVDAPqs/8i9qaE+44aZEYh
	yH6tEd699D/dWbA77HWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2yI1-0005nK-R6; Wed, 28 Aug 2019 13:47:09 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yHq-0005mF-0C
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 13:46:59 +0000
Received: by mail-ed1-f65.google.com with SMTP id s15so142134edx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 06:46:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zyNoxyVItTkE7KkpzOzDQs+Ze+MdA8PTrGpUeQ6qzjg=;
 b=iT9ojdvoNoNYGEDnhIt+mmQJTTs35yRtC05zz2STjUvwOokQIm50pJzxYj+OXEIfJc
 4YyrnriyXCWh3DvrMPnVC0UeOx2HrpuZ1cPSAkXOtGaVvXwevkDiUKavbu2kq0IOa6nU
 7KN1SdDBkuvR65OdoY5ft79IzEtSP5V6WRXozoTQ4CCil7z/7NpJ44U3Wbt4rsZ2a4N1
 pd9GFRnND9wNJlH1OaxtewS+P0XHHggyQizAHyRe3x6YGDnMJZAodqUvXVEni8DrWpe5
 O5UG+HJOIaHOluPJf+J+Fe+emK4an54HpiaklQtyOB1TBMF6VQSFRGu3TdUcYY5tJHAj
 /zrQ==
X-Gm-Message-State: APjAAAVa32X1/YW9XXvToZ+MXHdOEYrPKYvku2+01EjR701eHgedoVdi
 NsHAr6XgQJcwEJpDnevD8bCuMDgzNdk=
X-Google-Smtp-Source: APXvYqyZf+P7dIESiZ8KMNqzDAi+Z6Fskp4fvVtRJ0pAIz9AziScxd5SHKd4tPHkn/TJIDkdxjXBCQ==
X-Received: by 2002:a50:84e4:: with SMTP id 91mr4135427edq.105.1567000016163; 
 Wed, 28 Aug 2019 06:46:56 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53])
 by smtp.gmail.com with ESMTPSA id e4sm470345edy.74.2019.08.28.06.46.54
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Aug 2019 06:46:54 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id s18so2609721wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 06:46:54 -0700 (PDT)
X-Received: by 2002:a5d:568e:: with SMTP id f14mr4694015wrv.167.1567000013782; 
 Wed, 28 Aug 2019 06:46:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190825150558.15173-1-alejandro.gonzalez.correo@gmail.com>
 <CACRpkdazfe3gJr6Q+X05GzxPuKtUg0M780SPA_oR5bd+-xBPvA@mail.gmail.com>
 <CAGb2v67e8EiS-LUuhAyPc57nWd4iOBEWC_SZbH801Lzi4QWGyg@mail.gmail.com>
 <20190828134334.qzuwodoxmw7ov5yg@flea>
In-Reply-To: <20190828134334.qzuwodoxmw7ov5yg@flea>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 28 Aug 2019 21:46:43 +0800
X-Gmail-Original-Message-ID: <CAGb2v67hS1a2iNJYgc97vwpg6hZwxjoxRhdMb5PjHmMrOC1jNA@mail.gmail.com>
Message-ID: <CAGb2v67hS1a2iNJYgc97vwpg6hZwxjoxRhdMb5PjHmMrOC1jNA@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH] mmc: sunxi: fix unusuable eMMC on some
 H6 boards by disabling DDR
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_064658_051057_D657BE8F 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 =?UTF-8?Q?Alejandro_Gonz=C3=A1lez?= <alejandro.gonzalez.correo@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBdWcgMjgsIDIwMTkgYXQgOTo0MyBQTSBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gV2VkLCBBdWcgMjgsIDIwMTkgYXQgMDk6Mjk6MzJQTSAr
MDgwMCwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+ID4gT24gV2VkLCBBdWcgMjgsIDIwMTkgYXQgODo1
MiBQTSBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4g
Pgo+ID4gPiBPbiBTdW4sIEF1ZyAyNSwgMjAxOSBhdCA1OjA2IFBNIEFsZWphbmRybyBHb256w6Fs
ZXoKPiA+ID4gPGFsZWphbmRyby5nb256YWxlei5jb3JyZW9AZ21haWwuY29tPiB3cm90ZToKPiA+
ID4KPiA+ID4gPiBKZXJuZWogU2tyYWJlYyBjb21wYXJlZCB0aGUgQlNQIGRyaXZlciB3aXRoIHRo
aXMKPiA+ID4gPiBkcml2ZXIsIGFuZCBmb3VuZCB0aGF0IHRoZSBCU1AgZHJpdmVyIGNvbmZpZ3Vy
ZXMgcGluY3RybCB0byBvcGVyYXRlIGF0Cj4gPiA+ID4gMS44IFYgd2hlbiBlbnRlcmluZyBERFIg
bW9kZSAoYWx0aG91Z2ggMy4zIFYgb3BlcmF0aW9uIGlzIHN1cHBvcnRlZCksIHdoaWxlCj4gPiA+
ID4gdGhlIG1haW5saW5lIGtlcm5lbCBsYWNrcyBhbnkgbWVjaGFuaXNtIHRvIHN3aXRjaCB2b2x0
YWdlcyBkeW5hbWljYWxseS4KPiA+Cj4gPiBBRkFJSyBUaGUgUGluZSBINjQgZG9lcyBub3QgaGF2
ZSB0aGUgYWJpbGl0eSB0byBzd2l0Y2ggSS9PIHZvbHRhZ2VzLiBJdCBpcwo+ID4gZml4ZWQgdG8g
ZWl0aGVyIDEuOFYgKHRoZSBkZWZhdWx0IGJhc2VkIG9uIHRoZSBzY2hlbWF0aWNzKSBvciAzLjNW
Lgo+Cj4gU2hvdWxkIHRoYXQgYmUgaGFuZGxlZCBhdCB0aGUgYm9hcmQgbGV2ZWwgdGhlbiBtYXli
ZT8KClllYWguIFlvdSdkIHNwZWNpZnkgd2hpY2ggb25lIHVzaW5nIHZxbW1jLXN1cHBseSBpbiB0
aGUgbW1jIG5vZGUgYW5kCnZjYy1wYy1zdXBwbHkKaW4gdGhlIHBpbmN0cmwgbm9kZS4KCkNoZW5Z
dQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
