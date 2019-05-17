Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE05421EDE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 22:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0sydH6+PBsOR5zg5No9HIMC95jdoKZZv/u/Ma7AULQ=; b=FOsesMl1M7n7qt
	bKiwTIBS4W19nUi3u231G71/dLXxKfihsNwk4xSOL+pFGJLzGZDYwTMo079eAk0VP6shgGVRY/Sf7
	ikGxmfuaa8rEYjr1AuRcL3mX3yFZPZvd/0d8KyJNUBaCxWet8edKTQJ8JsWuG2VDMjdSC0WxqMEJq
	R8yeZPbna180HrkHYMUfAGx/x5Hkf3F8JTooC40X4pIoaPNTxfxmr6usPBE7gX0BYqkIvmNef141z
	mrr8tt0cGtKajRtuF4o8FDoj7pvEa0LN7703XFRFDKwQ46gDrUPjTa6tLYzcQgNIkf1L6HUj3JaaJ
	/Ii42eYvhtwnxD+K7RYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRj8z-0002Wh-QL; Fri, 17 May 2019 20:07:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRj8t-0002WE-17
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 20:07:48 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9FCD421734
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 20:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558123666;
 bh=IkVGNrM3mkdkCp1ruLguz7iPAsoAAPm6bhm62l6C0l4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=D7KoCjgNCYuzAKFnaeZMIowcKdNjhe/bHfunIg0phnFQGUNm7Si+IswAnpAuc8H6I
 6Juv7ClQ+lDWVypoiyNPgrHPlYddKlyshbbCP2el4CrhQiWah4/LMWx6fgC/bWtuFU
 E4aSZreYUPIbR5Wj7iA7bqvpJU7ENIrsynXOu2+M=
Received: by mail-qt1-f178.google.com with SMTP id o7so9481267qtp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 13:07:46 -0700 (PDT)
X-Gm-Message-State: APjAAAUpCzc4OMxxbpSZ6+b/B/YMvD2s5ztPpPaNxRbj2qj1s/KDfp3w
 M/Js3oKIZCkxQIDt2YJUrW7NOJDYQfVggJEbWw==
X-Google-Smtp-Source: APXvYqyorKmxc+J4KVhOQBHBImhJm18kRJeWl2YZpK+ASt7DMCb593EYeTOi8eZBw90uGhvevJaQVOjh6CpzEWMWRDg=
X-Received: by 2002:ac8:2d48:: with SMTP id o8mr50643532qta.136.1558123665768; 
 Fri, 17 May 2019 13:07:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190517184659.18828-1-peron.clem@gmail.com>
 <20190517184659.18828-2-peron.clem@gmail.com>
In-Reply-To: <20190517184659.18828-2-peron.clem@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 17 May 2019 15:07:32 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKPazGn+g1zS4NMwvQZ_6GcAm0tgcOTqyQA0dz0+2dp3g@mail.gmail.com>
Message-ID: <CAL_JsqKPazGn+g1zS4NMwvQZ_6GcAm0tgcOTqyQA0dz0+2dp3g@mail.gmail.com>
Subject: Re: [PATCH v5 1/6] drm: panfrost: add optional bus_clock
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_130747_093597_312CA70B 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

T24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgMTo0NyBQTSBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPiB3cm90ZToKPgo+IEFsbHdpbm5lciBINiBoYXMgYW4gQVJNIE1hbGktVDcy
MCBNUDIgd2hpY2ggcmVxdWlyZWQgYSBidXNfY2xvY2suCj4KPiBBZGQgYW4gb3B0aW9uYWwgYnVz
X2Nsb2NrIGF0IHRoZSBpbml0IG9mIHRoZSBwYW5mcm9zdCBkcml2ZXIuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZGV2aWNlLmMgfCAyNSArKysrKysrKysrKysr
KysrKysrKystCj4gIGRyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kZXZpY2UuaCB8
ICAxICsKPiAgMiBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2Rldmlj
ZS5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2RldmljZS5jCj4gaW5kZXgg
M2IyYmNlZDFiMDE1Li44ZGE2ZTYxMmQzODQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3BhbmZyb3N0L3BhbmZyb3N0X2RldmljZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3BhbmZy
b3N0L3BhbmZyb3N0X2RldmljZS5jCj4gQEAgLTQ0LDcgKzQ0LDggQEAgc3RhdGljIGludCBwYW5m
cm9zdF9jbGtfaW5pdChzdHJ1Y3QgcGFuZnJvc3RfZGV2aWNlICpwZmRldikKPgo+ICAgICAgICAg
cGZkZXYtPmNsb2NrID0gZGV2bV9jbGtfZ2V0KHBmZGV2LT5kZXYsIE5VTEwpOwo+ICAgICAgICAg
aWYgKElTX0VSUihwZmRldi0+Y2xvY2spKSB7Cj4gLSAgICAgICAgICAgICAgIGRldl9lcnIocGZk
ZXYtPmRldiwgImdldCBjbG9jayBmYWlsZWQgJWxkXG4iLCBQVFJfRVJSKHBmZGV2LT5jbG9jaykp
Owo+ICsgICAgICAgICAgICAgICBkZXZfZXJyKHBmZGV2LT5kZXYsICJnZXQgY2xvY2sgZmFpbGVk
ICVsZFxuIiwKPiArICAgICAgICAgICAgICAgICAgICAgICBQVFJfRVJSKHBmZGV2LT5jbG9jaykp
OwoKUGxlYXNlIGRyb3AgdGhpcyB3aGl0ZXNwYWNlIGNoYW5nZS4KCj4gICAgICAgICAgICAgICAg
IHJldHVybiBQVFJfRVJSKHBmZGV2LT5jbG9jayk7Cj4gICAgICAgICB9Cj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
