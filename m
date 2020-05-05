Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B241C56C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUyuynhNw+2JZRKfrxqSSdpc5qX8mX40e5JqCyeTsJA=; b=SQTyc73z26Y4GC
	+FRhcgK/13EwO6FgD/v1uUIN5YDsjRzbKURJ1TUnvCiH20TAAA1TB7h3yCO3E4HvYopUQNTq/UPbP
	tv6swfVZUU9jCTNkbgqWRiwdzDdiWIP/wZY+UYjhVoCSV5nyE1y4WZx6wqA7lNiV0VQ6X7FIQ7SXL
	TrhmJTr8MMjz9rIx4uSJMf+8Vka6suUVZvB08d4y8BE8HXFjpuWW1hfV+JdHQ06/ise6d0g1xFGtf
	eBJXmzkXdkLH/8qNwhndHsr5mn8ZRtXJOE1kSZowddAKJX38oFOxnjO/qbmF44/ZZV3aVL+0DukZG
	rVhtXtk6VlnR+cujp3/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxab-00087o-Tw; Tue, 05 May 2020 13:26:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxaV-00086h-Bn; Tue, 05 May 2020 13:26:20 +0000
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C52392083B;
 Tue,  5 May 2020 13:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588685179;
 bh=Cg3Aww/DWiRcPHXAAcy63wB+BBaJMxE4W5SjVqI52xM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Jl6xMq65m2X3WEe5EWx7+ejjvCPFF50UyIRkX3tbpEfiDyIj1915/uLUMrzdtJfaw
 6iqUX04UY73+GzpazFnWSkIkB5sok0LeDe9adoCvV8vdgJ9jAbOWhaT/RPnEuGXDM0
 FaX+THGQl4IkBFpR2xkMR512gckbveC1akdYSSOE=
Received: by mail-ej1-f50.google.com with SMTP id n17so1638182ejh.7;
 Tue, 05 May 2020 06:26:18 -0700 (PDT)
X-Gm-Message-State: AGi0PubPb/lCWZWe4becTGmiNvfbUaVLpbJ9XSsHjrqE1k5RVxuGsJdy
 coWekjNaPyOflFEZrUTM989kBf4qdW8FD4HPsg==
X-Google-Smtp-Source: APiQypJhGBe4KM2v2+R7Tdau70M9ldxuxhIcdizZA6GeTupSyTsy4bkN4GwbSWQLG63deM2MBxQgW+u07ypp/LcOr8Q=
X-Received: by 2002:a17:906:2ad4:: with SMTP id
 m20mr2786571eje.324.1588685177209; 
 Tue, 05 May 2020 06:26:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200504141408.60877-1-enric.balletbo@collabora.com>
 <20200504141408.60877-4-enric.balletbo@collabora.com>
In-Reply-To: <20200504141408.60877-4-enric.balletbo@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Tue, 5 May 2020 21:26:03 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9pFfrKjg6qD5fF0gnuj0aLG7DZh1k0htg=YZGaJE9Hww@mail.gmail.com>
Message-ID: <CAAOTY_9pFfrKjg6qD5fF0gnuj0aLG7DZh1k0htg=YZGaJE9Hww@mail.gmail.com>
Subject: Re: [PATCH 3/3] drm/mediatek: mtk_dpi: Use simple encoder
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_062619_441116_8F7D52C0 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEVucmljOgoKRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFi
b3JhLmNvbT4g5pa8IDIwMjDlubQ15pyINOaXpSDpgLHkuIAg5LiL5Y2IMTA6MTTlr6vpgZPvvJoK
Pgo+IFRoZSBtdGtfZHBpIGRyaXZlciB1c2VzIGFuIGVtcHR5IGltcGxlbWVudGF0aW9uIGZvciBp
dHMgZW5jb2Rlci4gUmVwbGFjZQo+IHRoZSBjb2RlIHdpdGggdGhlIGdlbmVyaWMgc2ltcGxlIGVu
Y29kZXIuCgpSZXZpZXdlZC1ieTogQ2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5nLmh1QGtlcm5lbC5v
cmc+Cgo+Cj4gU2lnbmVkLW9mZi1ieTogRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFs
bGV0Ym9AY29sbGFib3JhLmNvbT4KPiAtLS0KPgo+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsv
bXRrX2RwaS5jIHwgMTQgKysrLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L21lZGlhdGVrL210a19kcGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHBpLmMK
PiBpbmRleCBiYWFkMTk4YzY5ZWIuLjgwNzc4YjJhYWMyYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RwaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19kcGkuYwo+IEBAIC0yMCw2ICsyMCw3IEBACj4gICNpbmNsdWRlIDxkcm0vZHJtX2Jy
aWRnZS5oPgo+ICAjaW5jbHVkZSA8ZHJtL2RybV9jcnRjLmg+Cj4gICNpbmNsdWRlIDxkcm0vZHJt
X29mLmg+Cj4gKyNpbmNsdWRlIDxkcm0vZHJtX3NpbXBsZV9rbXNfaGVscGVyLmg+Cj4KPiAgI2lu
Y2x1ZGUgIm10a19kcGlfcmVncy5oIgo+ICAjaW5jbHVkZSAibXRrX2RybV9kZHBfY29tcC5oIgo+
IEBAIC01MTAsMTUgKzUxMSw2IEBAIHN0YXRpYyBpbnQgbXRrX2RwaV9zZXRfZGlzcGxheV9tb2Rl
KHN0cnVjdCBtdGtfZHBpICpkcGksCj4gICAgICAgICByZXR1cm4gMDsKPiAgfQo+Cj4gLXN0YXRp
YyB2b2lkIG10a19kcGlfZW5jb2Rlcl9kZXN0cm95KHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2Rl
cikKPiAtewo+IC0gICAgICAgZHJtX2VuY29kZXJfY2xlYW51cChlbmNvZGVyKTsKPiAtfQo+IC0K
PiAtc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZW5jb2Rlcl9mdW5jcyBtdGtfZHBpX2VuY29kZXJf
ZnVuY3MgPSB7Cj4gLSAgICAgICAuZGVzdHJveSA9IG10a19kcGlfZW5jb2Rlcl9kZXN0cm95LAo+
IC19Owo+IC0KPiAgc3RhdGljIGludCBtdGtfZHBpX2JyaWRnZV9hdHRhY2goc3RydWN0IGRybV9i
cmlkZ2UgKmJyaWRnZSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVtIGRy
bV9icmlkZ2VfYXR0YWNoX2ZsYWdzIGZsYWdzKQo+ICB7Cj4gQEAgLTU5MSw4ICs1ODMsOCBAQCBz
dGF0aWMgaW50IG10a19kcGlfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2Ug
Km1hc3Rlciwgdm9pZCAqZGF0YSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiAgICAg
ICAgIH0KPgo+IC0gICAgICAgcmV0ID0gZHJtX2VuY29kZXJfaW5pdChkcm1fZGV2LCAmZHBpLT5l
bmNvZGVyLCAmbXRrX2RwaV9lbmNvZGVyX2Z1bmNzLAo+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBEUk1fTU9ERV9FTkNPREVSX1RNRFMsIE5VTEwpOwo+ICsgICAgICAgcmV0ID0gZHJt
X3NpbXBsZV9lbmNvZGVyX2luaXQoZHJtX2RldiwgJmRwaS0+ZW5jb2RlciwKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIERSTV9NT0RFX0VOQ09ERVJfVE1EUyk7Cj4gICAg
ICAgICBpZiAocmV0KSB7Cj4gICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiRmFpbGVkIHRv
IGluaXRpYWxpemUgZGVjb2RlcjogJWRcbiIsIHJldCk7Cj4gICAgICAgICAgICAgICAgIGdvdG8g
ZXJyX3VucmVnaXN0ZXI7Cj4gLS0KPiAyLjI2LjIKPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
