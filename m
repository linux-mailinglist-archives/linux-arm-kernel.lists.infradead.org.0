Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A06F32ABB4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 20:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zr8rtRkKMh7JV9tXWoF1SftGdVAYa9bUy/co3DbnP+E=; b=LBi5nJ82MRgvA1
	mWqM31ZOlRnIVqBXd60y108K9aINyaXp/EsVkHT7DHg0a9ck6mSI9e2EWc8ZFqxK6GiLLcHMBUBif
	pjvBULT4Vm8PawMkyja5KSGbwsh+HeYiY/DOI+ndhHFSgqJ0OTFKSsyyFi6o2xVU3pk2XtdkujXgx
	NsKiI9p1KCLQll9E5T1UYQtj30kmB1UEUC8iGpFmqdG5FQTKZGjd1FA+za+VgLNvvjBmx1YJG4F/X
	AlMTCNLaahTs78DQfO/99n/uMTfV+tz72RFRIMpL7ZR6mbk+7Qr383W7NaVzQ8YvPw95vYV9iFvPS
	lZRXNVqXCnjO3yJX7jlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUyBW-0004Im-SV; Sun, 26 May 2019 18:47:54 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUyBQ-0004IJ-4S
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 18:47:49 +0000
Received: by mail-yb1-xb42.google.com with SMTP id x7so5764816ybg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 11:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dH+6euD3B/9U0jUYqmwCTtJnJvDIWL4nGrMm/sJmAbk=;
 b=q1uQWPIXf6n7CSZVMkB81U0t5u4wk16K6Z4bYxaUjaY6GyKMNeUNBq1UregxK9PZJD
 5pG/s/7VAQS0uBM0QzSa6AFpPBr1HXM7KPbb1z3etQgMn31w3cf1hoi4PTCAOVIHAWFE
 x7uKPAMdYaWCGVuAn/dXAX2Sg8IJSFXCr2bf28Nx8M6yi731QAJm9TttmwRJ+7uIStDR
 cykxfVwBxPxXYXD6G/8PjJwDWBS93kHa4sXAB6SM7c2NIH64KBqzu9kT26/h6HULwJIF
 7wvkLvKxaywz/7T9bac3bCb8TRciPUKT3XO8PzdaSGfe3qIYAcTzJBuRvYR2doocDDuW
 oBMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dH+6euD3B/9U0jUYqmwCTtJnJvDIWL4nGrMm/sJmAbk=;
 b=Fys+TF8xcgv2CW2MEByf8cQh5OfjL/M/21BzPMnp01WFbTF068x+6AFIdDaaFXKajo
 QX243PlOukVsBE3+zqNnVZGvqwR27nRCj5kuniad+gqq6KUkBe0CQhxwlmXHnWHFXf8N
 sh/3rhwo2fYqNlCt9SyZ6srQXfch1hm4lnfgh5RItX53CoV+jxdWTKVy0n7Umr2A98/g
 W/31QSZwTrfeMqmloPEQjLPK7N1We4eAqMqu6CORRdsFx06I6Fq3hxdhhNVpVLzhlbz0
 N9NRFXl1Ua6egyHRLaagmJB1Y4c/G12XRKkHZMdvne3gaUoD6yC9NgcH5aSWW5zYdiSu
 wRMg==
X-Gm-Message-State: APjAAAWgaHrodTO7iDggicpb+385jM97EAALFaewvFJdYgv9oNzho1us
 IvZG0br7U+kWhw7FoZ7nywa+zEeSFVUXd/QsYTo=
X-Google-Smtp-Source: APXvYqxyveUEULLdiXn9xTempg9RokzTgBzz+s8S8SgwFeVu0aCdcbHIFT8+mi573Ck83EXCxT0cCvaTPPxJknmnL0U=
X-Received: by 2002:a25:340e:: with SMTP id b14mr13139570yba.82.1558896466232; 
 Sun, 26 May 2019 11:47:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190525162323.20216-1-peron.clem@gmail.com>
 <20190525162323.20216-2-peron.clem@gmail.com>
 <20190526182220.hgajlcyssujjkmiu@flea>
In-Reply-To: <20190526182220.hgajlcyssujjkmiu@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 26 May 2019 20:47:35 +0200
Message-ID: <CAJiuCcf4d-5-U++wQ4wkrcSSk_SyeuHnxyz0DMvHaS4YuOsx3A@mail.gmail.com>
Subject: Re: [PATCH v3 1/7] dt-bindings: sound: sun4i-spdif: Add Allwinner H6
 compatible
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_114748_199983_3707F8E3 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Rob Herring <robh@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gU3VuLCAyNiBNYXkgMjAxOSBhdCAyMDoyMiwgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBPbiBTYXQsIE1heSAyNSwgMjAx
OSBhdCAwNjoyMzoxN1BNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBBbGx3aW5u
ZXIgSDYgaGFzIGEgU1BESUYgY29udHJvbGxlciB3aXRoIGFuIGluY3JlYXNlIG9mIHRoZSBmaWZv
Cj4gPiBzaXplIGFuZCBhIHNsaWdoZXIgZGlmZmVyZW5jZSBpbiBtZW1vcnkgbWFwcGluZyBjb21w
YXJlIHRvIEgzL0E2NC4KPiA+Cj4gPiBUaGlzIG1ha2UgaXQgbm90IGNvbXBhdGlibGUgd2l0aCB0
aGUgcHJldmlvdXMgZ2VuZXJhdGlvbi4KPiA+Cj4gPiBJbnRyb2R1Y2UgYSBzcGVjaWZpYyBiaW5k
aW5ncyBmb3IgSDYgU29DLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8
cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4gPiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhA
a2VybmVsLm9yZz4KPiA+IEFja2VkLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJv
b3RsaW4uY29tPgo+ID4gLS0tCj4gPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3NvdW5kL3N1bnhpLHN1bjRpLXNwZGlmLnR4dCB8IDMgKystCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvc3VueGksc3VuNGktc3BkaWYudHh0
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL3N1bnhpLHN1bjRpLXNw
ZGlmLnR4dAo+ID4gaW5kZXggMGM2NGEyMDljMmU5Li5jMGZiYjUwYTRkZjkgMTAwNjQ0Cj4gPiAt
LS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvc3VueGksc3VuNGkt
c3BkaWYudHh0Cj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291
bmQvc3VueGksc3VuNGktc3BkaWYudHh0Cj4gPiBAQCAtNywxMCArNywxMSBAQCBGb3Igbm93IG9u
bHkgcGxheWJhY2sgaXMgc3VwcG9ydGVkLgo+ID4KPiA+ICBSZXF1aXJlZCBwcm9wZXJ0aWVzOgo+
ID4KPiA+IC0gIC0gY29tcGF0aWJsZSAgICAgICAgICAgICAgIDogc2hvdWxkIGJlIG9uZSBvZiB0
aGUgZm9sbG93aW5nOgo+ID4gKyAgLSBjb21wYXRpYmxlICAgICAgICAgICAgICAgOiBTaG91bGQg
YmUgb25lIG9mIHRoZSBmb2xsb3dpbmc6Cj4gPiAgICAgIC0gImFsbHdpbm5lcixzdW40aS1hMTAt
c3BkaWYiOiBmb3IgdGhlIEFsbHdpbm5lciBBMTAgU29DCj4gPiAgICAgIC0gImFsbHdpbm5lcixz
dW42aS1hMzEtc3BkaWYiOiBmb3IgdGhlIEFsbHdpbm5lciBBMzEgU29DCj4gPiAgICAgIC0gImFs
bHdpbm5lcixzdW44aS1oMy1zcGRpZiI6IGZvciB0aGUgQWxsd2lubmVyIEgzIFNvQwo+ID4gKyAg
ICAtICJhbGx3aW5uZXIsc3VuNTBpLWg2LXNwZGlmIjogZm9yIHRoZSBhbGx3aW5uZXIgSDYgU29D
Cj4KPiBUaGlzIHdvbid0IGFwcGx5IGFueW1vcmUgb24gdG9wIG9mIG5leHQsIHdlJ3ZlIG1vdmVk
IHRvIGEgWUFNTAo+IHNjaGVtYXMuCgpJbmRlZWQgSSBoYXZlIGJhc2VkIHRoaXMgc2VyaWVzIG9u
IHN1bnhpIGluc3RlYWQgb2Ygc291bmQuClRoYW5rcyBmb3IgcG9pbnRpbmcgb3V0IHRoYXQuCkNs
w6ltZW50Cgo+Cj4gTWF4aW1lCj4KPiAtLQo+IE1heGltZSBSaXBhcmQsIEJvb3RsaW4KPiBFbWJl
ZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCj4gaHR0cHM6Ly9ib290bGluLmNvbQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
