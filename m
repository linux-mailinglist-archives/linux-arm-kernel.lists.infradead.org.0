Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CE72E096
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 17:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CUMH16/7hk53ljnGLI28qI8lDILPJ7af9YJ+rsloVA=; b=lpXe3rHfWcAkan
	ILUe2Yzgi/ke4igjtfc0gXrcybaDjprZ7Sz8IyxTMm32NNVQ4SeCTg6+n6rC0ROllwYsLeLUCXfZg
	yYK9jS9UHB9WFlZYUWOBq5tnfdZubEeblWtJW+4W5wW2Xik4+dy36ny85SNQbpDvjBsuiLBcmHv08
	rPw+NGhLOIo2nQFoUxG0ksByRH1d+NcycN7cmzSeT0iTPXIeEKz5cPtw3WOAvT7YUVEyKGKXmOdXu
	mCktcGa9ONOie6Dmf4juT5ItnyX+MryqgHzNS5MajzaER3PWdNjapJ3JZyqlkuru6HnGw0oWS4yUn
	dCxxwm8kbuSbzYZn7C+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW0D0-0000nD-Dt; Wed, 29 May 2019 15:09:42 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW0Ct-0000mF-Im
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 15:09:36 +0000
Received: by mail-io1-f68.google.com with SMTP id u13so2154156iop.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 08:09:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZnaDev0tj+heu2iB5lB6hq5yDeKgLXO4KFHMV/Qt+5k=;
 b=qDiqYiQPItRtRcpP3uPvQNoatzqHShlEXnE/gwqtUGc6aAkS3KXW4p1sV+k4+qNBap
 uiMo7uibpAvqhWH5gGBjWYG8CVM8t9LBYX1oKQtW13CYKU2cqe2Gi0Q2RHdNm2bMzNQg
 6Jm25H9AZ65DD4ju+slLuHLRLcJ1YCai7RVt3vd/7CXGNPhW3iG3H0XbvXgoON3dUjs/
 Qf2/7YsF5EiyylW9YjB7xr1da17nQaOom7cbxLyKN2q5Uz/SBIDU3DBHaavhJPCVF7mA
 myxesD0AixAN0iuzTIgz8hovXjAw/0FrUJNkqrwA1lh/Ke/Uh1gqrzBkDgmM8wvUV5cN
 +7RA==
X-Gm-Message-State: APjAAAUMobE1T+FdsIxOqi5AL5bzcOHIIrIw9EVWrVmxt6BDnYrZhnsj
 t/g4ki1gT6dmORhkbLELKNeL+kZqe9dIknoCYn8=
X-Google-Smtp-Source: APXvYqySOnocW0FtjyGqwuP2FQxhmxY7P/texfW33GuY5PwHsuap8yTRqkoaWNnTkj3NpjtfrGddYcbbqyuWzUYQqNA=
X-Received: by 2002:a6b:7:: with SMTP id 7mr828192ioa.253.1559142573556; Wed,
 29 May 2019 08:09:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190521161102.29620-1-peron.clem@gmail.com>
In-Reply-To: <20190521161102.29620-1-peron.clem@gmail.com>
From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Date: Wed, 29 May 2019 17:09:22 +0200
Message-ID: <CAAObsKD8bij1ANLqX6y11Y6mDEXiymNjrDkmHmvGWiFLKWu_FA@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] Allwinner H6 Mali GPU support
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_080935_612120_1BCFF60F 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomeu.vizoso[at]gmail.com)
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMSBNYXkgMjAxOSBhdCAxODoxMSwgQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVt
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KW3NuaXBdCj4gWyAgMzQ1LjIwNDgxM10gcGFuZnJvc3QgMTgw
MDAwMC5ncHU6IG1tdSBpcnEgc3RhdHVzPTEKPiBbICAzNDUuMjA5NjE3XSBwYW5mcm9zdCAxODAw
MDAwLmdwdTogVW5oYW5kbGVkIFBhZ2UgZmF1bHQgaW4gQVMwIGF0IFZBCj4gMHgwMDAwMDAwMDAy
NDAwNDAwCgpGcm9tIHdoYXQgSSBjYW4gc2VlIGhlcmUsIDB4MDAwMDAwMDAwMjQwMDQwMCBwb2lu
dHMgdG8gdGhlIGZpcnN0IGJ5dGUKb2YgdGhlIGZpcnN0IHN1Ym1pdHRlZCBqb2IgZGVzY3JpcHRv
ci4KClNvIG1hcHBpbmcgYnVmZmVycyBmb3IgdGhlIEdQVSBkb2Vzbid0IHNlZW0gdG8gYmUgd29y
a2luZyBhdCBhbGwgb24KNjQtYml0IFQtNzYwLgoKU3RldmVuLCBSb2JpbiwgZG8geW91IGhhdmUg
YW55IGlkZWEgb2Ygd2h5IHRoaXMgY291bGQgYmU/CgpUaGFua3MsCgpUb21ldQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
