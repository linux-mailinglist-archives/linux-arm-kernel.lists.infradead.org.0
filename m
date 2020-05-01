Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FDD1C12D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 15:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BxQjWV4KX4i5aacOAL4vPlsf0rC27z7XDbWbGo9TOTg=; b=OjafxpcudtBtxr
	06/1hSF86DWfPHXh9ePUXZuaIkDi/nB9KXenWhB9DmoOoPp8Ychgunja1TAjuqAEFjTrwPX8kBpfU
	Dmg9gRVbFT/aExS4CZiajFKL+vSSzPdWj8d24QI2XREIUrT1Ays5KT5d4jMh6zPpNJ67Hb3Esp6Y3
	m0xOF8lBgzmX2e/gJto1Y1zjuQSPYqWtPpXsp2mBnQKbBYxQOvWAKKmc9G7NZA/t5dTVHo/AXzGoe
	fU2vglDOCT5EBsLQmXRdyR57HTlCmMgnS5vfiuy3PZxWV8aEWStM8uolhH/Ae4zgS+lkqP6nGvacP
	Nv8UJNceGKXCxntA9lVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUVez-0001ih-0Y; Fri, 01 May 2020 13:24:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUVes-0001hm-6v; Fri, 01 May 2020 13:24:51 +0000
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 965C424965;
 Fri,  1 May 2020 13:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588339489;
 bh=d8OPxjX6yuJbdOTlfUXM7Zvc614YcSXkktA7q5/FxRY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=oRiwD0Q+jvvpP6sMUM7uXKK++I/eOZnt6Ikrp6rtJBAPD/6vZl/OFq4Uxzqg573dr
 HXTT0bMxoz2GibxZPq00kqvlqfP1GYpMyc+LbA3Tf2Ofs9mJFJf4NsfNvEueN0i/ZY
 ldEXuawf8h0p2ODo+BCBInJ2O4GxSh/bcIMpNLxQ=
Received: by mail-ed1-f42.google.com with SMTP id r16so7260199edw.5;
 Fri, 01 May 2020 06:24:49 -0700 (PDT)
X-Gm-Message-State: AGi0PuZmGCjzNBUt3je6jE9B/RgkhwGG2LBhlt4fju8snioIfut9nAw5
 SecMW5orTyxVs5j76fJN1hreKMaAIg4ISoiFzA==
X-Google-Smtp-Source: APiQypKel2U1e5MRHXKLL7Rnuz1U41FBCv2Ii6mcl2FuZrvIApbgp6jSgjZ93cS0z2rzE3pcCu/kvy2F5YvYBuZXTp0=
X-Received: by 2002:aa7:dd95:: with SMTP id g21mr3461314edv.148.1588339487975; 
 Fri, 01 May 2020 06:24:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200417150614.2631786-1-enric.balletbo@collabora.com>
 <20200417150614.2631786-6-enric.balletbo@collabora.com>
In-Reply-To: <20200417150614.2631786-6-enric.balletbo@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Fri, 1 May 2020 21:24:34 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9Gc9uCtfcp+qo=KnVOYfyjw4rDpe15A1q6G2A-iXpSow@mail.gmail.com>
Message-ID: <CAAOTY_9Gc9uCtfcp+qo=KnVOYfyjw4rDpe15A1q6G2A-iXpSow@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] drm/mediatek: mtk_dsi: Use simple encoder
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_062450_289834_452BFCDA 
X-CRM114-Status: GOOD (  16.22  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
b3JhLmNvbT4g5pa8IDIwMjDlubQ05pyIMTfml6Ug6YCx5LqUIOS4i+WNiDExOjA25a+r6YGT77ya
Cj4KPiBUaGUgbXRrX2RzaSBkcml2ZXIgdXNlcyBhbiBlbXB0eSBpbXBsZW1lbnRhdGlvbiBmb3Ig
aXRzIGVuY29kZXIuIFJlcGxhY2UKPiB0aGUgY29kZSB3aXRoIHRoZSBnZW5lcmljIHNpbXBsZSBl
bmNvZGVyLgoKUmV2aWV3ZWQtYnk6IENodW4tS3VhbmcgSHUgPGNodW5rdWFuZy5odUBrZXJuZWwu
b3JnPgoKPgo+IFNpZ25lZC1vZmYtYnk6IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJh
bGxldGJvQGNvbGxhYm9yYS5jb20+Cj4gUmV2aWV3ZWQtYnk6IExhdXJlbnQgUGluY2hhcnQgPGxh
dXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KPiAtLS0KPgo+IENoYW5nZXMgaW4gdjM6
IE5vbmUKPiBDaGFuZ2VzIGluIHYyOiBOb25lCj4KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19kc2kuYyB8IDE0ICsrKy0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5j
Cj4gaW5kZXggODY5YWUwYTJlOWY4Li5kNjg2OTRmZjAwZGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfZHNpLmMKPiBAQCAtMjIsNiArMjIsNyBAQAo+ICAjaW5jbHVkZSA8ZHJtL2RybV9w
YW5lbC5oPgo+ICAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPgo+ICAjaW5jbHVkZSA8ZHJtL2Ry
bV9wcm9iZV9oZWxwZXIuaD4KPiArI2luY2x1ZGUgPGRybS9kcm1fc2ltcGxlX2ttc19oZWxwZXIu
aD4KPgo+ICAjaW5jbHVkZSAibXRrX2RybV9kZHBfY29tcC5oIgo+Cj4gQEAgLTc4OCwxNSArNzg5
LDYgQEAgc3RhdGljIHZvaWQgbXRrX291dHB1dF9kc2lfZGlzYWJsZShzdHJ1Y3QgbXRrX2RzaSAq
ZHNpKQo+ICAgICAgICAgZHNpLT5lbmFibGVkID0gZmFsc2U7Cj4gIH0KPgo+IC1zdGF0aWMgdm9p
ZCBtdGtfZHNpX2VuY29kZXJfZGVzdHJveShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpCj4g
LXsKPiAtICAgICAgIGRybV9lbmNvZGVyX2NsZWFudXAoZW5jb2Rlcik7Cj4gLX0KPiAtCj4gLXN0
YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2VuY29kZXJfZnVuY3MgbXRrX2RzaV9lbmNvZGVyX2Z1bmNz
ID0gewo+IC0gICAgICAgLmRlc3Ryb3kgPSBtdGtfZHNpX2VuY29kZXJfZGVzdHJveSwKPiAtfTsK
PiAtCj4gIHN0YXRpYyBpbnQgbXRrX2RzaV9jcmVhdGVfY29ubl9lbmMoc3RydWN0IGRybV9kZXZp
Y2UgKmRybSwgc3RydWN0IG10a19kc2kgKmRzaSk7Cj4gIHN0YXRpYyB2b2lkIG10a19kc2lfZGVz
dHJveV9jb25uX2VuYyhzdHJ1Y3QgbXRrX2RzaSAqZHNpKTsKPgo+IEBAIC0xMTQwLDggKzExMzIs
OCBAQCBzdGF0aWMgaW50IG10a19kc2lfZW5jb2Rlcl9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpk
cm0sIHN0cnVjdCBtdGtfZHNpICpkc2kpCj4gIHsKPiAgICAgICAgIGludCByZXQ7Cj4KPiAtICAg
ICAgIHJldCA9IGRybV9lbmNvZGVyX2luaXQoZHJtLCAmZHNpLT5lbmNvZGVyLCAmbXRrX2RzaV9l
bmNvZGVyX2Z1bmNzLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEUk1fTU9ERV9F
TkNPREVSX0RTSSwgTlVMTCk7Cj4gKyAgICAgICByZXQgPSBkcm1fc2ltcGxlX2VuY29kZXJfaW5p
dChkcm0sICZkc2ktPmVuY29kZXIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBEUk1fTU9ERV9FTkNPREVSX0RTSSk7Cj4gICAgICAgICBpZiAocmV0KSB7Cj4gICAgICAg
ICAgICAgICAgIERSTV9FUlJPUigiRmFpbGVkIHRvIGVuY29kZXIgaW5pdCB0byBkcm1cbiIpOwo+
ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+IC0tCj4gMi4yNS4xCj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
