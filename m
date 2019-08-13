Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7948F8B206
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 10:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LJhcM1dHv3lq2XNjB7/HNprICsqYkJpUMhMmozsmBU=; b=jMA2cD+gzMxeSN
	fGU+sIjQtw1sgwFTuYxq+NGq56Rk2Px4gZalcNdEpxG+vCKG7uJUnXFHwvN1BKUvDGyoV1xdvs+OO
	neW2XkprleE/ULY5I3sd3qHEFhL9ZtZcFXo9VbgV9/XwNH58okAspye+c1c4FwHM6w380q4NqXdNl
	C0YAkbUvbRzJ4mVp6QzmiWjNeA3h89bkN8e1aUD+uA/OS4MpQn4TgcuSU1mJRsBYv+ffdSp4p00Op
	PRlPSI9z3rh3+pSkEDzHlSeOwLqIv7T3Q5e+Rx7StnjH/5J8aYF+iAnoWRPNjwKkZrjEbHFZO3N4I
	Wh64i+t7cL25RYpV5sEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxRrq-00050f-Vg; Tue, 13 Aug 2019 08:09:18 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxRra-00050D-AB
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 08:09:03 +0000
Received: by mail-qt1-f195.google.com with SMTP id b11so5721454qtp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 01:09:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3QYn8xVPbDnU8yCH5QG2DkGvPPJ9yAG+CBaSbT63l5s=;
 b=qYmyyIFvuey7OzPfQyd7f67QLMCA9tzvBe74Ynk2rXp7AaMkuqpbBrThpoDzdZC7/8
 cAA3U7Jj09CzNbJG9vY4o7y3Bg4KsxyriDBGFkn/KRXssJc8hCshytZxDzWxjJqmV85y
 njEXq5C1Ayk8V+0G7900nOPrYClrx7fY/SeuNBcQytXoBPuQLThT4bvMF3mHLP+MooYK
 X9QQvpXYGvOfUAWYbosnW4Exh+80vtwnTcv/yXXHyRTNObHTZHHXHrG7qutgDCZ6WYjG
 M0Vmj+QNWAeVO5tBaxn7c1HT4IS840RrSQ1s4jBSYXJLr0e90VubIIebwAN8nWpZnAoZ
 K2/w==
X-Gm-Message-State: APjAAAXJTrATioNCoOfkEHQMtryjdlbp7xiGxFxfNU2Ar9gOK3KKKDAf
 VMXgFIDKZARmqbGwFt39uGmRIBJSHQ6pIsjZ6Dw=
X-Google-Smtp-Source: APXvYqzQY3jw5cidojWGquR6Ywd0UV4rVnIr4Q175ebPJlWm5I+ETbY/lAleI6WDMLSOu84QmW6hk+yfSbxvjbk+0xI=
X-Received: by 2002:ac8:117:: with SMTP id e23mr17771674qtg.18.1565683740433; 
 Tue, 13 Aug 2019 01:09:00 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565367567.git.agx@sigxcpu.org>
 <e0562d8bb4098dc4cdb4023b41fb75b312be22a5.1565367567.git.agx@sigxcpu.org>
In-Reply-To: <e0562d8bb4098dc4cdb4023b41fb75b312be22a5.1565367567.git.agx@sigxcpu.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 13 Aug 2019 10:08:44 +0200
Message-ID: <CAK8P3a3Vrd+sttJrQwD-jA9p_egG4x-hc41eGK8H-_aVm-uoYw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: imx8mq: add imx8mq iomux-gpr field defines
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_010902_355797_E7C52827 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBdWcgOSwgMjAxOSBhdCA2OjI0IFBNIEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNw
dS5vcmc+IHdyb3RlOgo+Cj4gVGhpcyBhZGRzIGFsbCB0aGUgZ3ByIHJlZ2lzdGVycyBhbmQgdGhl
IGRlZmluZSBuZWVkZWQgZm9yIHNlbGVjdGluZwo+IHRoZSBpbnB1dCBzb3VyY2UgaW4gdGhlIGlt
eC1ud2wgZHJtIGJyaWRnZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hA
c2lneGNwdS5vcmc+Cj4gKwo+ICsjZGVmaW5lIElPTVVYQ19HUFIwICAgIDB4MDAKPiArI2RlZmlu
ZSBJT01VWENfR1BSMSAgICAweDA0Cj4gKyNkZWZpbmUgSU9NVVhDX0dQUjIgICAgMHgwOAo+ICsj
ZGVmaW5lIElPTVVYQ19HUFIzICAgIDB4MGMKPiArI2RlZmluZSBJT01VWENfR1BSNCAgICAweDEw
Cj4gKyNkZWZpbmUgSU9NVVhDX0dQUjUgICAgMHgxNAo+ICsjZGVmaW5lIElPTVVYQ19HUFI2ICAg
IDB4MTgKPiArI2RlZmluZSBJT01VWENfR1BSNyAgICAweDFjCihtb3JlIG9mIHRoZSBzYW1lKQoK
aHVoPwoKPiArLyogaS5NWDhNcSBpb211eCBncHIgcmVnaXN0ZXIgZmllbGQgZGVmaW5lcyAqLwo+
ICsjZGVmaW5lIElNWDhNUV9HUFIxM19NSVBJX01VWF9TRUwgICAgICAgICAgICAgIEJJVCgyKQoK
SSB0aGluayB0aGlzIGRlZmluZSBzaG91bGQgcHJvYmFibHkgYmUgbG9jYWwgdG8gdGhlIHBpbmN0
cmwgZHJpdmVyLCB0bwplbnN1cmUgdGhhdCBubyBvdGhlciBkcml2ZXJzIGZpZGRsZSB3aXRoIHRo
ZSByZWdpc3RlcnMgbWFudWFsbHkuCgogICAgIEFybmQKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
