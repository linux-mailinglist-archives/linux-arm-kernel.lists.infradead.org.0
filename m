Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B532111A68F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:14:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LraccdV1j3/29zYr/G0YiTQ4cQwWPJVneG+MkK1ue6U=; b=VKrmZmOfrQAuV7
	mOinkAbXBpzgGemAbEp+qK0sgbW4ZvKfLA6zWOvOdkcz4CTmjv5oyHRAux8+7pHKMXINoLPskV3gY
	rU4E8JNjCABf9gEswH4m67j1s/N8rjlIM5H3SMChzGfitnocR40frnl3eQjGn7bn+qv2/RIyFZTgu
	AXNmmzVdygaeFqbIQVAwNLCfLVY6Hemt4HIN5quaViwjxLNyT/5MA5IZUv2MtKvPOcUSjeiING6t0
	z6HpNLmEZ0+H5YGSGBdxdloYov8luK+51+hNu3RwTwoGXG2jYhL+sIpHEvN6r62bi+2Jh+5yT6QUx
	aUUQvxxcTVNsDrGv7bXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iey4s-0000zQ-Hz; Wed, 11 Dec 2019 09:14:38 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iey4k-0000yj-4V
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:14:32 +0000
Received: by mail-qv1-xf44.google.com with SMTP id t7so5428770qve.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 01:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=r0gVQXuC6a8DJTUTEo5suxWb6NqvG3m1Y5eO4L17BxU=;
 b=bNjp2CSwAwJBRkHlE21fA2+oQHaa1seGpALK5gMpFZBRUweh616cc6A6NjuV3+jP7t
 g+avl1kCd9byKb6OLRWoCARmcnjUMCDWZEVNMYHwcwq2N14q+0Zs5gKmbn2v8QLkXlTu
 qYT1j3fhiE+HvHPvq+5C8dY3pDcfH8rPaHt6qHrXYFCzpU3tQuLtDKmRQXWEU0wL1bu3
 XD9Fpr5nzGis98WDLXJ2dEtgi9E9jwJki0nduViVaSEEfNJCDk7B2WzJW4nUmbeKRtSE
 EwrMoY4b/3ywG1wFw8EbFjXcoFkI0JmL0qp722LB/JC0izmuz7ikSSrBNnztdHuLMnYW
 93cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=r0gVQXuC6a8DJTUTEo5suxWb6NqvG3m1Y5eO4L17BxU=;
 b=RpOcwr/cSO78Rl6Qh/q8ZxdhBxHwOjrumU2OEkdLAaKlgXJYT1FYzsmUznQXVsHvix
 BNYADbdwrK5Bpf0RYu8gsQjVrVOUYrh0hYL/fL6iyxca3C7erF+76a5BI+bz3pCiovJj
 qEwEgyC0AO8DdVt3Sn8smE4hEu/1dLhsFgZxOkxDBrU+a7I3lU/xhldy5nie4LWCreVX
 SKm30K1TrNA/ps9/A4M//U7/o/O4hqPQwHMSb0FCqYerVdLcx8Y0Qs1isefOCt3vJDDC
 u/G3o3/ZEVmLjallPWFnUXSymx8/M1rC6qMA8SPATckTXUj4U4qjF2XBdn8ntskBFEML
 PYIw==
X-Gm-Message-State: APjAAAXxWlDT4eV/3u8yFU4HSRX64SbLWdMofay4z02WUTcPVV7/b6uh
 8GPr6r1P9tNo9ZaTRLrOiR8SJkkOutuCKTPd0tL/cQ==
X-Google-Smtp-Source: APXvYqzjKg+vHur/oJLRJqO8JGriJMPsHU3Yxw2c45bVX3cqASfK5p6p7v8TgWUig6+CE+I07XNmKBR7AxR/u500qXY=
X-Received: by 2002:a0c:f990:: with SMTP id t16mr1951160qvn.134.1576055669090; 
 Wed, 11 Dec 2019 01:14:29 -0800 (PST)
MIME-Version: 1.0
References: <20191210195414.705239-1-arnd@arndb.de>
 <01669f6c5d0e40c7a410da2dcce6c9e825e4a1d4.camel@alliedtelesis.co.nz>
In-Reply-To: <01669f6c5d0e40c7a410da2dcce6c9e825e4a1d4.camel@alliedtelesis.co.nz>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 11 Dec 2019 10:14:18 +0100
Message-ID: <CAMpxmJVuN5vqA1j0ddpctJQJJMPu1EnakduO2rJnBo3Ao==Enw@mail.gmail.com>
Subject: Re: [PATCH] gpio: xgs-iproc: remove __exit annotation for
 iproc_gpio_remove
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_011430_333457_D02DCD5D 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "arnd@arndb.de" <arnd@arndb.de>,
 "scott.branden@broadcom.com" <scott.branden@broadcom.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "yoshihiro.shimoda.uh@renesas.com" <yoshihiro.shimoda.uh@renesas.com>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

d3QuLCAxMCBncnUgMjAxOSBvIDIxOjI0IENocmlzIFBhY2toYW0KPENocmlzLlBhY2toYW1AYWxs
aWVkdGVsZXNpcy5jby5uej4gbmFwaXNhxYIoYSk6Cj4KPiBPbiBUdWUsIDIwMTktMTItMTAgYXQg
MjA6NTQgKzAxMDAsIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4gPiBXaGVuIGJ1aWx0IGludG8gdGhl
IGtlcm5lbCwgdGhlIGRyaXZlciBjYXVzZXMgYSBsaW5rIHByb2JsZW06Cj4gPgo+ID4gYGlwcm9j
X2dwaW9fcmVtb3ZlJyByZWZlcmVuY2VkIGluIHNlY3Rpb24gYC5kYXRhJyBvZiBkcml2ZXJzL2dw
aW8vZ3Bpby14Z3MtaXByb2MubzogZGVmaW5lZCBpbiBkaXNjYXJkZWQgc2VjdGlvbiBgLmV4aXQu
dGV4dCcgb2YgZHJpdmVycy9ncGlvL2dwaW8teGdzLWlwcm9jLm8KPiA+Cj4gPiBSZW1vdmUgdGhl
IGluY29ycmVjdCBhbm5vdGF0aW9uLgo+ID4KPiA+IEZpeGVzOiA2YTQxYjZjNWZjMjAgKCJncGlv
OiBBZGQgeGdzLWlwcm9jIGRyaXZlciIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBBcm5kIEJlcmdtYW5u
IDxhcm5kQGFybmRiLmRlPgo+Cj4gUmV2aWV3ZWQtYnk6IENocmlzIFBhY2toYW0gPGNocmlzLnBh
Y2toYW1AYWxsaWVkdGVsZXNpcy5jby5uej4KPgo+IFdoYXQncyB0aGUgY3VycmVudCBiZXN0IHBy
YWN0aWNlIHcuci50Ll9faW5pdCBhbmQgX19leGl0PyBJIHNlZW0gdG8KPiBoYXZlIG1lc3NlZCB0
aGlzIHVwIG9uIG11bHRpcGxlIGZyb250cy4KPgoKQXBwbGllZCBmb3IgZml4ZXMuCgpCYXJ0b3N6
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
