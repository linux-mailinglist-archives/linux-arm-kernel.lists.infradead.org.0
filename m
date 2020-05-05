Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2238C1C56C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PcJezSgvgHHGszmh55K5rdlz+JGmydzc5Pr+8N5M6I=; b=sLQFU8vH7moC5v
	3dm1P8QjvNmdc8kMHziQm5c3aNu18F1B2+omp5yuCHzIrkhkUUOX81kgcxvX4LIzCigwUxgGPtGYt
	suaV8MvpY+AM00bbi7sOyOEPusHlTWth7QYQFVJiJ2ZGL0W8C5MkYlk1yrei+5iFbQrf8o40P2qUw
	ZszJdaOF7K4evYeLGxs+7N59FvAo2JKaZj7RoGDhagyIb23PWR6cZZ1kftsUwW21XZXe7e/Pp918S
	QtCYZD0wcz06rRqfZFG+MrXDaEnnvkl1M2BFXdx+8U3rnXrR7SzUV/ydU5VukB/d5Z167aSVNm/xi
	7Pp7EkliIOBeSSTWMZQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxZX-0005Xp-VV; Tue, 05 May 2020 13:25:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxZF-0004qp-HI; Tue, 05 May 2020 13:25:03 +0000
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78EFF215A4;
 Tue,  5 May 2020 13:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588685100;
 bh=Rac7y5rYSK/2G4X72RSjogk7F2/1A77BkfY4aonMNHE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=i5xHfyBiuY7p3DIDikoONdvivQLQ4kFoUccnvcJjFvhJv1HKqhIO1mf1meaLdx+2n
 1i52/G4OxRdFuW6VaiyUE7nR7/tQPKjvGlAde5qF2T8Af5nG/vVWTQ8pOq44RNLASN
 r9288oja66bgZ4akeUN8C1WjZHZMIBknn7sB+hGY=
Received: by mail-ej1-f49.google.com with SMTP id n17so1634294ejh.7;
 Tue, 05 May 2020 06:25:00 -0700 (PDT)
X-Gm-Message-State: AGi0PuZguNDWM24HtakJW+VGqlTfChUPdjES52AmANGT/cOMUAcID+Hm
 bz0HLkMSW+C1HMinJelJ8Wsr+YV5eczcVJB8TQ==
X-Google-Smtp-Source: APiQypLJ2xfzocGLFFYqsJeJ4aQuzD3rk0l4tQD4X9JUcGCFrXJoKm4Ml5gb0eu1ufwRXvYazmB6synEUoz0VY1lpns=
X-Received: by 2002:a17:906:7717:: with SMTP id
 q23mr2732910ejm.38.1588685098796; 
 Tue, 05 May 2020 06:24:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200504141408.60877-1-enric.balletbo@collabora.com>
 <20200504141408.60877-3-enric.balletbo@collabora.com>
In-Reply-To: <20200504141408.60877-3-enric.balletbo@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Tue, 5 May 2020 21:24:45 +0800
X-Gmail-Original-Message-ID: <CAAOTY_8ZV3UDanHDnVmUESPfaNBjwFBKi9-i7ctSFVWGOHAR2g@mail.gmail.com>
Message-ID: <CAAOTY_8ZV3UDanHDnVmUESPfaNBjwFBKi9-i7ctSFVWGOHAR2g@mail.gmail.com>
Subject: Re: [PATCH 2/3] drm/mediatek: mtk_dpi: Convert to bridge driver
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_062501_628496_539550DE 
X-CRM114-Status: GOOD (  18.03  )
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
Pgo+IENvbnZlcnQgbXRrX2RwaSB0byBhIGJyaWRnZSBkcml2ZXIgd2l0aCBidWlsdC1pbiBlbmNv
ZGVyIHN1cHBvcnQgZm9yCj4gY29tcGF0aWJpbGl0eSB3aXRoIGV4aXN0aW5nIGNvbXBvbmVudCBk
cml2ZXJzLgoKUmV2aWV3ZWQtYnk6IENodW4tS3VhbmcgSHUgPGNodW5rdWFuZy5odUBrZXJuZWwu
b3JnPgoKPgo+IFNpZ25lZC1vZmYtYnk6IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJh
bGxldGJvQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19kcGkuYyB8IDY2ICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKSwgMzIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9t
ZWRpYXRlay9tdGtfZHBpLmMKPiBpbmRleCA3MTEyMTI1ZGMzZDEuLmJhYWQxOThjNjllYiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RwaS5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcGkuYwo+IEBAIC02MSw2ICs2MSw3IEBAIGVudW0g
bXRrX2RwaV9vdXRfY29sb3JfZm9ybWF0IHsKPiAgc3RydWN0IG10a19kcGkgewo+ICAgICAgICAg
c3RydWN0IG10a19kZHBfY29tcCBkZHBfY29tcDsKPiAgICAgICAgIHN0cnVjdCBkcm1fZW5jb2Rl
ciBlbmNvZGVyOwo+ICsgICAgICAgc3RydWN0IGRybV9icmlkZ2UgYnJpZGdlOwo+ICAgICAgICAg
c3RydWN0IGRybV9icmlkZ2UgKm5leHRfYnJpZGdlOwo+ICAgICAgICAgdm9pZCBfX2lvbWVtICpy
ZWdzOwo+ICAgICAgICAgc3RydWN0IGRldmljZSAqZGV2Owo+IEBAIC03Nyw5ICs3OCw5IEBAIHN0
cnVjdCBtdGtfZHBpIHsKPiAgICAgICAgIGludCByZWZjb3VudDsKPiAgfTsKPgo+IC1zdGF0aWMg
aW5saW5lIHN0cnVjdCBtdGtfZHBpICptdGtfZHBpX2Zyb21fZW5jb2RlcihzdHJ1Y3QgZHJtX2Vu
Y29kZXIgKmUpCj4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IG10a19kcGkgKmJyaWRnZV90b19kcGko
c3RydWN0IGRybV9icmlkZ2UgKmIpCj4gIHsKPiAtICAgICAgIHJldHVybiBjb250YWluZXJfb2Yo
ZSwgc3RydWN0IG10a19kcGksIGVuY29kZXIpOwo+ICsgICAgICAgcmV0dXJuIGNvbnRhaW5lcl9v
ZihiLCBzdHJ1Y3QgbXRrX2RwaSwgYnJpZGdlKTsKPiAgfQo+Cj4gIGVudW0gbXRrX2RwaV9wb2xh
cml0eSB7Cj4gQEAgLTUxOCw1MCArNTE5LDQ0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Vu
Y29kZXJfZnVuY3MgbXRrX2RwaV9lbmNvZGVyX2Z1bmNzID0gewo+ICAgICAgICAgLmRlc3Ryb3kg
PSBtdGtfZHBpX2VuY29kZXJfZGVzdHJveSwKPiAgfTsKPgo+IC1zdGF0aWMgYm9vbCBtdGtfZHBp
X2VuY29kZXJfbW9kZV9maXh1cChzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIsCj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5
X21vZGUgKm1vZGUsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3Ry
dWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUpCj4gK3N0YXRpYyBpbnQgbXRrX2Rw
aV9icmlkZ2VfYXR0YWNoKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UsCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgZW51bSBkcm1fYnJpZGdlX2F0dGFjaF9mbGFncyBmbGFncykK
PiAgewo+IC0gICAgICAgcmV0dXJuIHRydWU7Cj4gKyAgICAgICBzdHJ1Y3QgbXRrX2RwaSAqZHBp
ID0gYnJpZGdlX3RvX2RwaShicmlkZ2UpOwo+ICsKPiArICAgICAgIHJldHVybiBkcm1fYnJpZGdl
X2F0dGFjaChicmlkZ2UtPmVuY29kZXIsIGRwaS0+bmV4dF9icmlkZ2UsCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgJmRwaS0+YnJpZGdlLCBmbGFncyk7Cj4gIH0KPgo+IC1zdGF0
aWMgdm9pZCBtdGtfZHBpX2VuY29kZXJfbW9kZV9zZXQoc3RydWN0IGRybV9lbmNvZGVyICplbmNv
ZGVyLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2Rp
c3BsYXlfbW9kZSAqbW9kZSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUpCj4gK3N0YXRpYyB2b2lkIG10
a19kcGlfYnJpZGdlX21vZGVfc2V0KHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UsCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAq
bW9kZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBkcm1f
ZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlKQo+ICB7Cj4gLSAgICAgICBzdHJ1Y3QgbXRrX2Rw
aSAqZHBpID0gbXRrX2RwaV9mcm9tX2VuY29kZXIoZW5jb2Rlcik7Cj4gKyAgICAgICBzdHJ1Y3Qg
bXRrX2RwaSAqZHBpID0gYnJpZGdlX3RvX2RwaShicmlkZ2UpOwo+Cj4gICAgICAgICBkcm1fbW9k
ZV9jb3B5KCZkcGktPm1vZGUsIGFkanVzdGVkX21vZGUpOwo+ICB9Cj4KPiAtc3RhdGljIHZvaWQg
bXRrX2RwaV9lbmNvZGVyX2Rpc2FibGUoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKQo+ICtz
dGF0aWMgdm9pZCBtdGtfZHBpX2JyaWRnZV9kaXNhYmxlKHN0cnVjdCBkcm1fYnJpZGdlICpicmlk
Z2UpCj4gIHsKPiAtICAgICAgIHN0cnVjdCBtdGtfZHBpICpkcGkgPSBtdGtfZHBpX2Zyb21fZW5j
b2RlcihlbmNvZGVyKTsKPiArICAgICAgIHN0cnVjdCBtdGtfZHBpICpkcGkgPSBicmlkZ2VfdG9f
ZHBpKGJyaWRnZSk7Cj4KPiAgICAgICAgIG10a19kcGlfcG93ZXJfb2ZmKGRwaSk7Cj4gIH0KPgo+
IC1zdGF0aWMgdm9pZCBtdGtfZHBpX2VuY29kZXJfZW5hYmxlKHN0cnVjdCBkcm1fZW5jb2RlciAq
ZW5jb2RlcikKPiArc3RhdGljIHZvaWQgbXRrX2RwaV9icmlkZ2VfZW5hYmxlKHN0cnVjdCBkcm1f
YnJpZGdlICpicmlkZ2UpCj4gIHsKPiAtICAgICAgIHN0cnVjdCBtdGtfZHBpICpkcGkgPSBtdGtf
ZHBpX2Zyb21fZW5jb2RlcihlbmNvZGVyKTsKPiArICAgICAgIHN0cnVjdCBtdGtfZHBpICpkcGkg
PSBicmlkZ2VfdG9fZHBpKGJyaWRnZSk7Cj4KPiAgICAgICAgIG10a19kcGlfcG93ZXJfb24oZHBp
KTsKPiAgICAgICAgIG10a19kcGlfc2V0X2Rpc3BsYXlfbW9kZShkcGksICZkcGktPm1vZGUpOwo+
ICB9Cj4KPiAtc3RhdGljIGludCBtdGtfZHBpX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2VuY29k
ZXIgKmVuY29kZXIsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJt
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkKPiAtewo+IC0gICAgICAg
cmV0dXJuIDA7Cj4gLX0KPiAtCj4gLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2VuY29kZXJfaGVs
cGVyX2Z1bmNzIG10a19kcGlfZW5jb2Rlcl9oZWxwZXJfZnVuY3MgPSB7Cj4gLSAgICAgICAubW9k
ZV9maXh1cCA9IG10a19kcGlfZW5jb2Rlcl9tb2RlX2ZpeHVwLAo+IC0gICAgICAgLm1vZGVfc2V0
ID0gbXRrX2RwaV9lbmNvZGVyX21vZGVfc2V0LAo+IC0gICAgICAgLmRpc2FibGUgPSBtdGtfZHBp
X2VuY29kZXJfZGlzYWJsZSwKPiAtICAgICAgIC5lbmFibGUgPSBtdGtfZHBpX2VuY29kZXJfZW5h
YmxlLAo+IC0gICAgICAgLmF0b21pY19jaGVjayA9IG10a19kcGlfYXRvbWljX2NoZWNrLAo+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IGRybV9icmlkZ2VfZnVuY3MgbXRrX2RwaV9icmlkZ2VfZnVuY3Mg
PSB7Cj4gKyAgICAgICAuYXR0YWNoID0gbXRrX2RwaV9icmlkZ2VfYXR0YWNoLAo+ICsgICAgICAg
Lm1vZGVfc2V0ID0gbXRrX2RwaV9icmlkZ2VfbW9kZV9zZXQsCj4gKyAgICAgICAuZGlzYWJsZSA9
IG10a19kcGlfYnJpZGdlX2Rpc2FibGUsCj4gKyAgICAgICAuZW5hYmxlID0gbXRrX2RwaV9icmlk
Z2VfZW5hYmxlLAo+ICB9Owo+Cj4gIHN0YXRpYyB2b2lkIG10a19kcGlfc3RhcnQoc3RydWN0IG10
a19kZHBfY29tcCAqY29tcCkKPiBAQCAtNjAyLDE2ICs1OTcsMTMgQEAgc3RhdGljIGludCBtdGtf
ZHBpX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIsIHZvaWQg
KmRhdGEpCj4gICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGluaXRpYWxp
emUgZGVjb2RlcjogJWRcbiIsIHJldCk7Cj4gICAgICAgICAgICAgICAgIGdvdG8gZXJyX3VucmVn
aXN0ZXI7Cj4gICAgICAgICB9Cj4gLSAgICAgICBkcm1fZW5jb2Rlcl9oZWxwZXJfYWRkKCZkcGkt
PmVuY29kZXIsICZtdGtfZHBpX2VuY29kZXJfaGVscGVyX2Z1bmNzKTsKPgo+ICAgICAgICAgLyog
Q3VycmVudGx5IERQSTAgaXMgZml4ZWQgdG8gYmUgZHJpdmVuIGJ5IE9WTDEgKi8KPiAgICAgICAg
IGRwaS0+ZW5jb2Rlci5wb3NzaWJsZV9jcnRjcyA9IEJJVCgxKTsKPgo+IC0gICAgICAgcmV0ID0g
ZHJtX2JyaWRnZV9hdHRhY2goJmRwaS0+ZW5jb2RlciwgZHBpLT5uZXh0X2JyaWRnZSwgTlVMTCwg
MCk7Cj4gLSAgICAgICBpZiAocmV0KSB7Cj4gLSAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAi
RmFpbGVkIHRvIGF0dGFjaCBicmlkZ2U6ICVkXG4iLCByZXQpOwo+ICsgICAgICAgcmV0ID0gZHJt
X2JyaWRnZV9hdHRhY2goJmRwaS0+ZW5jb2RlciwgJmRwaS0+YnJpZGdlLCBOVUxMLCAwKTsKPiAr
ICAgICAgIGlmIChyZXQpCj4gICAgICAgICAgICAgICAgIGdvdG8gZXJyX2NsZWFudXA7Cj4gLSAg
ICAgICB9Cj4KPiAgICAgICAgIGRwaS0+Yml0X251bSA9IE1US19EUElfT1VUX0JJVF9OVU1fOEJJ
VFM7Cj4gICAgICAgICBkcGktPmNoYW5uZWxfc3dhcCA9IE1US19EUElfT1VUX0NIQU5ORUxfU1dB
UF9SR0I7Cj4gQEAgLTc2OCw4ICs3NjAsMTUgQEAgc3RhdGljIGludCBtdGtfZHBpX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4KPiAgICAgICAgIHBsYXRmb3JtX3NldF9kcnZk
YXRhKHBkZXYsIGRwaSk7Cj4KPiArICAgICAgIGRwaS0+YnJpZGdlLmZ1bmNzID0gJm10a19kcGlf
YnJpZGdlX2Z1bmNzOwo+ICsgICAgICAgZHBpLT5icmlkZ2Uub2Zfbm9kZSA9IGRldi0+b2Zfbm9k
ZTsKPiArICAgICAgIGRwaS0+YnJpZGdlLnR5cGUgPSBEUk1fTU9ERV9DT05ORUNUT1JfRFBJOwo+
ICsKPiArICAgICAgIGRybV9icmlkZ2VfYWRkKCZkcGktPmJyaWRnZSk7Cj4gKwo+ICAgICAgICAg
cmV0ID0gY29tcG9uZW50X2FkZChkZXYsICZtdGtfZHBpX2NvbXBvbmVudF9vcHMpOwo+ICAgICAg
ICAgaWYgKHJldCkgewo+ICsgICAgICAgICAgICAgICBkcm1fYnJpZGdlX3JlbW92ZSgmZHBpLT5i
cmlkZ2UpOwo+ICAgICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBhZGQgY29t
cG9uZW50OiAlZFxuIiwgcmV0KTsKPiAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiAgICAg
ICAgIH0KPiBAQCAtNzc5LDcgKzc3OCwxMCBAQCBzdGF0aWMgaW50IG10a19kcGlfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPgo+ICBzdGF0aWMgaW50IG10a19kcGlfcmVtb3Zl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIHsKPiArICAgICAgIHN0cnVjdCBtdGtf
ZHBpICpkcGkgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKPiArCj4gICAgICAgICBjb21w
b25lbnRfZGVsKCZwZGV2LT5kZXYsICZtdGtfZHBpX2NvbXBvbmVudF9vcHMpOwo+ICsgICAgICAg
ZHJtX2JyaWRnZV9yZW1vdmUoJmRwaS0+YnJpZGdlKTsKPgo+ICAgICAgICAgcmV0dXJuIDA7Cj4g
IH0KPiAtLQo+IDIuMjYuMgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
