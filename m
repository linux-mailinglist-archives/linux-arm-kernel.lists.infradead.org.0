Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54ED2223BE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 16:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lywf7mkbHNGx+tgW10pxSGGGoJpOcu+P3RSbc5nR9h0=; b=ZR+ad+/1f3IiAo
	bLda+6XImvW4PLKcTUX1Heb0ug1dKk4lOqbFLjFx/QIx6euVm9rrAWCIp/AJHfyjx1ZsXL5a6V+Vy
	DyrZCA5EwfQtMMTeGbk6xw1SK43L3EJKUC+lcFB6M3sZuqi8Ob63toGS/xeXKyI75F/bGwIQicRve
	SH1WqJUJGllWoTsn9fcuDUFgdDJgEdzFQD6DsOm8/oyFI6Vu+mHPg8jzBFen3xOUUDrMDkckQEu3c
	jmo2Cn8ylpw1kS9ZPW6a8Y8bcknUuH+kR5i0p5yrmoM8z81K+aJcyMV0RoR44sMmCXxpP89OrzHQ0
	XLCRzD6EmZ/tQF1dWIqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS0ae-0000j3-1U; Sat, 18 May 2019 14:45:36 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS0aW-0000iF-Nw
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 14:45:30 +0000
Received: by mail-yb1-xb44.google.com with SMTP id t62so3830104ybi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 May 2019 07:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=77OQ/lkmsml6JIGkNy6mI1RRxZHIM2FsvrIfk0LDVxY=;
 b=AdfBwGcWiRp4t6iFzrle+NFQHOHvRbIYZrm7PG3CY9l5UcF25lNq5vlnLeAfP2591b
 G/yZTVDvUCuwq4ZxuLok25gP1xkPMFYYLWfKQ1D9Ehx09f3Lhk6tXhAU3tQNo083NFB8
 qnyP08CcF7XzMcjiJclm7q90np3/pNgT8uzZYfUzrqk6hfmiYU292fvtjB5dyI2OHe86
 4GGnQgRt88WUNSzckjwnDrhZlDw8p47U/U1Idw1JUZ0BjkFWXKO5HM9IUQsLOkKeXyrT
 rr809uMQ85jA3zuC2J0S6ZMZJ4KwFrgUE/dPyY8t8Eo+S/Z9710uagbZD2xSt4Cp5RP2
 WJQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=77OQ/lkmsml6JIGkNy6mI1RRxZHIM2FsvrIfk0LDVxY=;
 b=bSCdaSyr0pUuH6Vm1Me90OZTSos5u9BE1onFxPp2hNrxqcUFxnUfoscDMSdJd4sKlk
 y1vr6whaJYjyMZmNq46+MwcanrZFD1unZmKLW1E7LDz3BZccHXjUMl41fg/ZzhqCtAgw
 V3svMD+fpxtKDm2oO/1B2cRud6qFBZzgYfHqP58mBT1tmvtun4UNlKgixa9LuYp4XFLI
 8K5unzzQCNxZF65Dfc4TrYrpIB/T7ISe1JZoKRk5tjN0bRODgrdYSwXjkYxL4OAvSqoW
 0CznJr2wVeRS81QIVS0/C7HyATvxuuytJW/PCORhmZv5uwR5kCOPlA5sS8/6q4o3qLwt
 Ly4A==
X-Gm-Message-State: APjAAAXFGA/xYhPJGNAWBVakWEVGv2qU973e6V9M0nKd/Jrth0uExvB6
 XR3W0m3qZWceZiBncX7zRcRe47QR1GgWapjkF98=
X-Google-Smtp-Source: APXvYqz8Ud0fDXY9JxGkS+dy5NJLMTqLdeb9pIIxVKprfYnVIb0d0/+pRo/C+qYP+AaKVJMDPptDy2GlVYMckN6N6oE=
X-Received: by 2002:a25:b10f:: with SMTP id g15mr10782445ybj.82.1558190727257; 
 Sat, 18 May 2019 07:45:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190517184659.18828-1-peron.clem@gmail.com>
 <20190517184659.18828-2-peron.clem@gmail.com>
 <CAL_JsqKPazGn+g1zS4NMwvQZ_6GcAm0tgcOTqyQA0dz0+2dp3g@mail.gmail.com>
 <CAJiuCcdMxXAXYk=QpRwsvBUW0tvBVMqXvgx0Y7fAKP=ouyBnKQ@mail.gmail.com>
 <CAL_JsqJgo8NpK00ApBcdtYGW24yuqU=4EMna+r_07=dqceZyyg@mail.gmail.com>
In-Reply-To: <CAL_JsqJgo8NpK00ApBcdtYGW24yuqU=4EMna+r_07=dqceZyyg@mail.gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sat, 18 May 2019 16:45:10 +0200
Message-ID: <CAJiuCcfjEqS8BdYdwD22W4hhD27TTs7DPsiEErF_Xt+5Gdkewg@mail.gmail.com>
Subject: Re: [PATCH v5 1/6] drm: panfrost: add optional bus_clock
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_074528_806069_FBD6743A 
X-CRM114-Status: GOOD (  20.43  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Linux IOMMU <iommu@lists.linux-foundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBTYXQsIDE4IE1heSAyMDE5IGF0IDAwOjE3LCBSb2IgSGVycmluZyA8cm9iaCtkdEBr
ZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIEZyaSwgTWF5IDE3LCAyMDE5IGF0IDU6MDggUE0gQ2zD
qW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gSGkgUm9i
LAo+ID4KPiA+IE9uIEZyaSwgMTcgTWF5IDIwMTkgYXQgMjI6MDcsIFJvYiBIZXJyaW5nIDxyb2Jo
K2R0QGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBGcmksIE1heSAxNywgMjAxOSBh
dCAxOjQ3IFBNIENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+IHdyb3RlOgo+
ID4gPiA+Cj4gPiA+ID4gQWxsd2lubmVyIEg2IGhhcyBhbiBBUk0gTWFsaS1UNzIwIE1QMiB3aGlj
aCByZXF1aXJlZCBhIGJ1c19jbG9jay4KPiA+ID4gPgo+ID4gPiA+IEFkZCBhbiBvcHRpb25hbCBi
dXNfY2xvY2sgYXQgdGhlIGluaXQgb2YgdGhlIHBhbmZyb3N0IGRyaXZlci4KPiA+ID4gPgo+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+
Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9k
ZXZpY2UuYyB8IDI1ICsrKysrKysrKysrKysrKysrKysrKy0KPiA+ID4gPiAgZHJpdmVycy9ncHUv
ZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2RldmljZS5oIHwgIDEgKwo+ID4gPiA+ICAyIGZpbGVzIGNo
YW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gPgo+ID4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZGV2aWNlLmMgYi9k
cml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZGV2aWNlLmMKPiA+ID4gPiBpbmRleCAz
YjJiY2VkMWIwMTUuLjhkYTZlNjEyZDM4NCAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZGV2aWNlLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZGV2aWNlLmMKPiA+ID4gPiBAQCAtNDQsNyArNDQsOCBA
QCBzdGF0aWMgaW50IHBhbmZyb3N0X2Nsa19pbml0KHN0cnVjdCBwYW5mcm9zdF9kZXZpY2UgKnBm
ZGV2KQo+ID4gPiA+Cj4gPiA+ID4gICAgICAgICBwZmRldi0+Y2xvY2sgPSBkZXZtX2Nsa19nZXQo
cGZkZXYtPmRldiwgTlVMTCk7Cj4gPiA+ID4gICAgICAgICBpZiAoSVNfRVJSKHBmZGV2LT5jbG9j
aykpIHsKPiA+ID4gPiAtICAgICAgICAgICAgICAgZGV2X2VycihwZmRldi0+ZGV2LCAiZ2V0IGNs
b2NrIGZhaWxlZCAlbGRcbiIsIFBUUl9FUlIocGZkZXYtPmNsb2NrKSk7Cj4gPiA+ID4gKyAgICAg
ICAgICAgICAgIGRldl9lcnIocGZkZXYtPmRldiwgImdldCBjbG9jayBmYWlsZWQgJWxkXG4iLAo+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIFBUUl9FUlIocGZkZXYtPmNsb2NrKSk7Cj4g
PiA+Cj4gPiA+IFBsZWFzZSBkcm9wIHRoaXMgd2hpdGVzcGFjZSBjaGFuZ2UuCj4gPgo+ID4gU29y
cnksIEkgdGhvdWdodCBpdCB3YXMgb25seSBhIG1pc3Rha2UgaGVyZSwgSSB3aWxsIGRyb3AgaXQu
Cj4gPiBXaHkgYXJlIHRoZXkgc28gbWFueSBsaW5lcyBvdmVyIDgwIGNoYXJhY3RlcnM/Cj4KPiBJ
J2QgZ3Vlc3MgbW9zdCBhcmUgcHJpbnRzIGFuZC9vciBqdXN0IHNsaWdodGx5IG92ZXIuCj4KPiA+
IElzIHRoZXJlIGEgc3BlY2lmaWMgY29kaW5nIHN0eWxlIHRvIGZvbGxvdyA/Cj4KPiBZZXMsIGJ1
dCBnZW5lcmFsbHkgdGhlIDgwIGNoYXJhY3RlciB0aGluZyBpcyBtb3JlIGEgZ3VpZGFuY2UuIE5v
dAo+IGhhdmluZyB1bnJlbGF0ZWQgY2hhbmdlcyBpbiBhIHNpbmdsZSBjb21taXQgaXMgbW9yZSBv
ZiBhIGhhcmQgcnVsZS4KCk9rLCB0aGFua3MgZm9yIHRoZSBjbGFyaWZpY2F0aW9uLgoKQ2zDqW1l
bnQKCj4KPiBSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
