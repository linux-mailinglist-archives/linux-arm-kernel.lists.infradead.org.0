Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 177961C12C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 15:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=boou3g1rivlrLc+IBONP6HuibIX5WeAoEFw8vX5kcmw=; b=YAysxyfK1Mz71V
	DhpR4AGyNjjD6lYRgludu4C/xZvbyiHuSgiIFpixIEp+h18TJ4CWnyXdPuWO60TUA/SHQdNLSBcH/
	05bY+Ow5cSOnnZ9SGoX+rfsF9BzeBqCHy2EWrSN/E7997BzSPfYqn6YHz12sGbAdbdyyHqEjcExCN
	+x5eX7XhozFspHQ2+mxhPT5Gn0lrRYllWuMjUATbvNfupJ3HaAUhO1Uh0XaZKdDiIyTqjaxb6Uj26
	4ijjPotlFT1i35Pey7RUHnCCQ2ypgltyX9FwvEHPEEVtE+sLgLa41POQndjBQjYNRGXVNGE5sKERb
	nLsEnhoCOxNHLwh2Mv/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUVcL-00012z-QF; Fri, 01 May 2020 13:22:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUVcC-00011g-M7; Fri, 01 May 2020 13:22:06 +0000
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 07BFB24954;
 Fri,  1 May 2020 13:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588339324;
 bh=FiimbkqFnjmC2xnhT8xRMf1+qKdE7XRvufOkGvNa1FY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HvnO9yna5TWnLYTjDylC0X8aGKnLwQPuRBiXUfPqDgqolRE08Nyu2wdfMX0fvd8+t
 iG8YOhLdwzEm2ZMdW9ikhZn0jKNPYekjFTM7Rnd4vE913OfOTczNjFwXLfaQeXqyxM
 D0YwAicXXdDuWsV+9R67UUwKJC1krNgbC11iO+oE=
Received: by mail-ej1-f43.google.com with SMTP id x1so7444879ejd.8;
 Fri, 01 May 2020 06:22:03 -0700 (PDT)
X-Gm-Message-State: AGi0PubS35YuOxVwZLJiWqyiQjodiu+qf6Yq+AUXfIyPLO4WkpiDOtEF
 xiERML2q6+rDgEbwiFcbN1bj+DzLM25c0kLNeA==
X-Google-Smtp-Source: APiQypIl3gBr7lZocFLW1gar0arYtJWjboax4hKeSZ4BY9SY75ypgsnZSc5nuRVr1dbcjoOLhiO2F/63abGFRjTVv/U=
X-Received: by 2002:a17:906:eb90:: with SMTP id
 mh16mr3169239ejb.201.1588339322257; 
 Fri, 01 May 2020 06:22:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200417150614.2631786-1-enric.balletbo@collabora.com>
 <20200417150614.2631786-5-enric.balletbo@collabora.com>
In-Reply-To: <20200417150614.2631786-5-enric.balletbo@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Fri, 1 May 2020 21:21:48 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-nzdS-jg2pgpM1ksrsQVewB2AEB8TihHcCB-MJd+qFfw@mail.gmail.com>
Message-ID: <CAAOTY_-nzdS-jg2pgpM1ksrsQVewB2AEB8TihHcCB-MJd+qFfw@mail.gmail.com>
Subject: Re: [PATCH v3 4/7] drm/mediatek: mtk_dsi: Convert to bridge driver
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_062204_762041_49BE51CF 
X-CRM114-Status: GOOD (  21.29  )
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
Cj4KPiBDb252ZXJ0IG10a19kc2kgdG8gYSBicmlkZ2UgZHJpdmVyIHdpdGggYnVpbHQtaW4gZW5j
b2RlciBzdXBwb3J0IGZvcgo+IGNvbXBhdGliaWxpdHkgd2l0aCBleGlzdGluZyBjb21wb25lbnQg
ZHJpdmVycy4KPgo+IFNpZ25lZC1vZmYtYnk6IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmlj
LmJhbGxldGJvQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4KPiBDaGFuZ2VzIGluIHYzOgo+IC0gQWRk
IHRoZSBicmlkZ2UudHlwZS4gKExhdXJlbnQgUGluY2hhcnQpCj4KPiBDaGFuZ2VzIGluIHYyOiBO
b25lCj4KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYyB8IDkzICsrKysrKysr
KysrKysrKysrKysrKystLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNjkgaW5zZXJ0aW9ucygr
KSwgMjQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMKPiBpbmRl
eCAzN2I4ZDdmZmQ4MzUuLjg2OWFlMGEyZTlmOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2RzaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19kc2kuYwo+IEBAIC0xODAsNiArMTgwLDcgQEAgc3RydWN0IG10a19kc2kgewo+ICAgICAgICAg
c3RydWN0IGRldmljZSAqZGV2Owo+ICAgICAgICAgc3RydWN0IG1pcGlfZHNpX2hvc3QgaG9zdDsK
PiAgICAgICAgIHN0cnVjdCBkcm1fZW5jb2RlciBlbmNvZGVyOwo+ICsgICAgICAgc3RydWN0IGRy
bV9icmlkZ2UgYnJpZGdlOwo+ICAgICAgICAgc3RydWN0IGRybV9jb25uZWN0b3IgY29ubjsKPiAg
ICAgICAgIHN0cnVjdCBkcm1fcGFuZWwgKnBhbmVsOwo+ICAgICAgICAgc3RydWN0IGRybV9icmlk
Z2UgKm5leHRfYnJpZGdlOwo+IEBAIC0yMDUsOSArMjA2LDkgQEAgc3RydWN0IG10a19kc2kgewo+
ICAgICAgICAgY29uc3Qgc3RydWN0IG10a19kc2lfZHJpdmVyX2RhdGEgKmRyaXZlcl9kYXRhOwo+
ICB9Owo+Cj4gLXN0YXRpYyBpbmxpbmUgc3RydWN0IG10a19kc2kgKmVuY29kZXJfdG9fZHNpKHN0
cnVjdCBkcm1fZW5jb2RlciAqZSkKPiArc3RhdGljIGlubGluZSBzdHJ1Y3QgbXRrX2RzaSAqYnJp
ZGdlX3RvX2RzaShzdHJ1Y3QgZHJtX2JyaWRnZSAqYikKPiAgewo+IC0gICAgICAgcmV0dXJuIGNv
bnRhaW5lcl9vZihlLCBzdHJ1Y3QgbXRrX2RzaSwgZW5jb2Rlcik7Cj4gKyAgICAgICByZXR1cm4g
Y29udGFpbmVyX29mKGIsIHN0cnVjdCBtdGtfZHNpLCBicmlkZ2UpOwo+ICB9Cj4KPiAgc3RhdGlj
IGlubGluZSBzdHJ1Y3QgbXRrX2RzaSAqY29ubmVjdG9yX3RvX2RzaShzdHJ1Y3QgZHJtX2Nvbm5l
Y3RvciAqYykKPiBAQCAtNzk2LDMyICs3OTcsNDMgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1f
ZW5jb2Rlcl9mdW5jcyBtdGtfZHNpX2VuY29kZXJfZnVuY3MgPSB7Cj4gICAgICAgICAuZGVzdHJv
eSA9IG10a19kc2lfZW5jb2Rlcl9kZXN0cm95LAo+ICB9Owo+Cj4gLXN0YXRpYyBib29sIG10a19k
c2lfZW5jb2Rlcl9tb2RlX2ZpeHVwKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlciwKPiAtICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3Bs
YXlfbW9kZSAqbW9kZSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBz
dHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSkKPiArc3RhdGljIGludCBtdGtf
ZHNpX2NyZWF0ZV9jb25uX2VuYyhzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLCBzdHJ1Y3QgbXRrX2Rz
aSAqZHNpKTsKPiArc3RhdGljIHZvaWQgbXRrX2RzaV9kZXN0cm95X2Nvbm5fZW5jKHN0cnVjdCBt
dGtfZHNpICpkc2kpOwo+ICsKPiArc3RhdGljIGludCBtdGtfZHNpX2JyaWRnZV9hdHRhY2goc3Ry
dWN0IGRybV9icmlkZ2UgKmJyaWRnZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBlbnVtIGRybV9icmlkZ2VfYXR0YWNoX2ZsYWdzIGZsYWdzKQo+ICt7Cj4gKyAgICAgICBzdHJ1
Y3QgbXRrX2RzaSAqZHNpID0gYnJpZGdlX3RvX2RzaShicmlkZ2UpOwo+ICsKPiArICAgICAgIHJl
dHVybiBtdGtfZHNpX2NyZWF0ZV9jb25uX2VuYyhicmlkZ2UtPmRldiwgZHNpKTsKPiArfQo+ICsK
PiArc3RhdGljIHZvaWQgbXRrX2RzaV9icmlkZ2VfZGV0YWNoKHN0cnVjdCBkcm1fYnJpZGdlICpi
cmlkZ2UpCj4gIHsKPiAtICAgICAgIHJldHVybiB0cnVlOwo+ICsgICAgICAgc3RydWN0IG10a19k
c2kgKmRzaSA9IGJyaWRnZV90b19kc2koYnJpZGdlKTsKPiArCj4gKyAgICAgICBtdGtfZHNpX2Rl
c3Ryb3lfY29ubl9lbmMoZHNpKTsKPiAgfQo+Cj4gLXN0YXRpYyB2b2lkIG10a19kc2lfZW5jb2Rl
cl9tb2RlX3NldChzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIsCj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlLAo+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9k
ZSAqYWRqdXN0ZWQpCj4gK3N0YXRpYyB2b2lkIG10a19kc2lfYnJpZGdlX21vZGVfc2V0KHN0cnVj
dCBkcm1fYnJpZGdlICpicmlkZ2UsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUsCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVz
dGVkKQo+ICB7Cj4gLSAgICAgICBzdHJ1Y3QgbXRrX2RzaSAqZHNpID0gZW5jb2Rlcl90b19kc2ko
ZW5jb2Rlcik7Cj4gKyAgICAgICBzdHJ1Y3QgbXRrX2RzaSAqZHNpID0gYnJpZGdlX3RvX2RzaShi
cmlkZ2UpOwo+Cj4gICAgICAgICBkcm1fZGlzcGxheV9tb2RlX3RvX3ZpZGVvbW9kZShhZGp1c3Rl
ZCwgJmRzaS0+dm0pOwo+ICB9Cj4KPiAtc3RhdGljIHZvaWQgbXRrX2RzaV9lbmNvZGVyX2Rpc2Fi
bGUoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKQo+ICtzdGF0aWMgdm9pZCBtdGtfZHNpX2Jy
aWRnZV9kaXNhYmxlKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UpCj4gIHsKPiAtICAgICAgIHN0
cnVjdCBtdGtfZHNpICpkc2kgPSBlbmNvZGVyX3RvX2RzaShlbmNvZGVyKTsKPiArICAgICAgIHN0
cnVjdCBtdGtfZHNpICpkc2kgPSBicmlkZ2VfdG9fZHNpKGJyaWRnZSk7Cj4KPiAgICAgICAgIG10
a19vdXRwdXRfZHNpX2Rpc2FibGUoZHNpKTsKPiAgfQo+Cj4gLXN0YXRpYyB2b2lkIG10a19kc2lf
ZW5jb2Rlcl9lbmFibGUoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKQo+ICtzdGF0aWMgdm9p
ZCBtdGtfZHNpX2JyaWRnZV9lbmFibGUoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSkKPiAgewo+
IC0gICAgICAgc3RydWN0IG10a19kc2kgKmRzaSA9IGVuY29kZXJfdG9fZHNpKGVuY29kZXIpOwo+
ICsgICAgICAgc3RydWN0IG10a19kc2kgKmRzaSA9IGJyaWRnZV90b19kc2koYnJpZGdlKTsKPgo+
ICAgICAgICAgbXRrX291dHB1dF9kc2lfZW5hYmxlKGRzaSk7Cj4gIH0KPiBAQCAtODMzLDExICs4
NDUsMTIgQEAgc3RhdGljIGludCBtdGtfZHNpX2Nvbm5lY3Rvcl9nZXRfbW9kZXMoc3RydWN0IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiAgICAgICAgIHJldHVybiBkcm1fcGFuZWxfZ2V0X21v
ZGVzKGRzaS0+cGFuZWwsIGNvbm5lY3Rvcik7Cj4gIH0KPgo+IC1zdGF0aWMgY29uc3Qgc3RydWN0
IGRybV9lbmNvZGVyX2hlbHBlcl9mdW5jcyBtdGtfZHNpX2VuY29kZXJfaGVscGVyX2Z1bmNzID0g
ewo+IC0gICAgICAgLm1vZGVfZml4dXAgPSBtdGtfZHNpX2VuY29kZXJfbW9kZV9maXh1cCwKPiAt
ICAgICAgIC5tb2RlX3NldCA9IG10a19kc2lfZW5jb2Rlcl9tb2RlX3NldCwKPiAtICAgICAgIC5k
aXNhYmxlID0gbXRrX2RzaV9lbmNvZGVyX2Rpc2FibGUsCj4gLSAgICAgICAuZW5hYmxlID0gbXRr
X2RzaV9lbmNvZGVyX2VuYWJsZSwKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fYnJpZGdlX2Z1
bmNzIG10a19kc2lfYnJpZGdlX2Z1bmNzID0gewo+ICsgICAgICAgLmF0dGFjaCA9IG10a19kc2lf
YnJpZGdlX2F0dGFjaCwKPiArICAgICAgIC5kZXRhY2ggPSBtdGtfZHNpX2JyaWRnZV9kZXRhY2gs
Cj4gKyAgICAgICAuZGlzYWJsZSA9IG10a19kc2lfYnJpZGdlX2Rpc2FibGUsCj4gKyAgICAgICAu
ZW5hYmxlID0gbXRrX2RzaV9icmlkZ2VfZW5hYmxlLAo+ICsgICAgICAgLm1vZGVfc2V0ID0gbXRr
X2RzaV9icmlkZ2VfbW9kZV9zZXQsCj4gIH07Cj4KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1f
Y29ubmVjdG9yX2Z1bmNzIG10a19kc2lfY29ubmVjdG9yX2Z1bmNzID0gewo+IEBAIC0xMTIzLDYg
KzExMzYsMzQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBtaXBpX2RzaV9ob3N0X29wcyBtdGtfZHNp
X29wcyA9IHsKPiAgICAgICAgIC50cmFuc2ZlciA9IG10a19kc2lfaG9zdF90cmFuc2ZlciwKPiAg
fTsKPgo+ICtzdGF0aWMgaW50IG10a19kc2lfZW5jb2Rlcl9pbml0KHN0cnVjdCBkcm1fZGV2aWNl
ICpkcm0sIHN0cnVjdCBtdGtfZHNpICpkc2kpCj4gK3sKPiArICAgICAgIGludCByZXQ7Cj4gKwo+
ICsgICAgICAgcmV0ID0gZHJtX2VuY29kZXJfaW5pdChkcm0sICZkc2ktPmVuY29kZXIsICZtdGtf
ZHNpX2VuY29kZXJfZnVuY3MsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERSTV9N
T0RFX0VOQ09ERVJfRFNJLCBOVUxMKTsKCkknbSBhIGJpdCBjb25mdXNlZCBoZXJlLiBkcm1fZW5j
b2Rlcl9pbml0KCkgZXhpc3QgaGVyZSBhbmQgaW4KbXRrX2RzaV9jcmVhdGVfY29ubl9lbmMoKS4g
RG8geW91IHBsYW4gdG8gaW5pdCBlbmNvZHIgdHdpY2U/Cgo+ICsgICAgICAgaWYgKHJldCkgewo+
ICsgICAgICAgICAgICAgICBEUk1fRVJST1IoIkZhaWxlZCB0byBlbmNvZGVyIGluaXQgdG8gZHJt
XG4iKTsKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArICAgICAgIH0KPiArCj4gKyAg
ICAgICAvKgo+ICsgICAgICAgICogQ3VycmVudGx5IGRpc3BsYXkgZGF0YSBwYXRocyBhcmUgc3Rh
dGljYWxseSBhc3NpZ25lZCB0byBhIGNydGMgZWFjaC4KPiArICAgICAgICAqIGNydGMgMCBpcyBP
VkwwIC0+IENPTE9SMCAtPiBBQUwgLT4gT0QgLT4gUkRNQTAgLT4gVUZPRSAtPiBEU0kwCj4gKyAg
ICAgICAgKi8KPiArICAgICAgIGRzaS0+ZW5jb2Rlci5wb3NzaWJsZV9jcnRjcyA9IDE7Cj4gKwo+
ICsgICAgICAgcmV0ID0gZHJtX2JyaWRnZV9hdHRhY2goJmRzaS0+ZW5jb2RlciwgJmRzaS0+YnJp
ZGdlLCBOVUxMLCAwKTsKPiArICAgICAgIGlmIChyZXQpCj4gKyAgICAgICAgICAgICAgIGdvdG8g
ZXJyX2NsZWFudXBfZW5jb2RlcjsKPiArCj4gKyAgICAgICByZXR1cm4gMDsKPiArCj4gK2Vycl9j
bGVhbnVwX2VuY29kZXI6Cj4gKyAgICAgICBkcm1fZW5jb2Rlcl9jbGVhbnVwKCZkc2ktPmVuY29k
ZXIpOwo+ICsgICAgICAgcmV0dXJuIHJldDsKPiArfQo+ICsKPiAgc3RhdGljIGludCBtdGtfZHNp
X2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIsIHZvaWQgKmRh
dGEpCj4gIHsKPiAgICAgICAgIGludCByZXQ7Cj4gQEAgLTExMzYsMTEgKzExNzcsOSBAQCBzdGF0
aWMgaW50IG10a19kc2lfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2UgKm1h
c3Rlciwgdm9pZCAqZGF0YSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiAgICAgICAg
IH0KPgo+IC0gICAgICAgcmV0ID0gbXRrX2RzaV9jcmVhdGVfY29ubl9lbmMoZHJtLCBkc2kpOwo+
IC0gICAgICAgaWYgKHJldCkgewo+IC0gICAgICAgICAgICAgICBEUk1fRVJST1IoIkVuY29kZXIg
Y3JlYXRlIGZhaWxlZCB3aXRoICVkXG4iLCByZXQpOwo+ICsgICAgICAgcmV0ID0gbXRrX2RzaV9l
bmNvZGVyX2luaXQoZHJtLCBkc2kpOwo+ICsgICAgICAgaWYgKHJldCkKPiAgICAgICAgICAgICAg
ICAgZ290byBlcnJfdW5yZWdpc3RlcjsKPiAtICAgICAgIH0KPgo+ICAgICAgICAgcmV0dXJuIDA7
Cj4KPiBAQCAtMTE1NSw3ICsxMTk0LDYgQEAgc3RhdGljIHZvaWQgbXRrX2RzaV91bmJpbmQoc3Ry
dWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIsCj4gICAgICAgICBzdHJ1Y3Qg
ZHJtX2RldmljZSAqZHJtID0gZGF0YTsKPiAgICAgICAgIHN0cnVjdCBtdGtfZHNpICpkc2kgPSBk
ZXZfZ2V0X2RydmRhdGEoZGV2KTsKPgo+IC0gICAgICAgbXRrX2RzaV9kZXN0cm95X2Nvbm5fZW5j
KGRzaSk7CgpUaGVyZSBpcyBtdGtfZHNpX2VuY29kZXJfaW5pdCgpIGluIGJpbmQoKSwgd2h5IG5v
IG10a19kc2lfZW5jb2Rlcl91bmluaXQoKSBoZXJlPwoKUmVnYXJkcywKQ2h1bi1LdWFuZy4KCj4g
ICAgICAgICBtdGtfZGRwX2NvbXBfdW5yZWdpc3Rlcihkcm0sICZkc2ktPmRkcF9jb21wKTsKPiAg
fQo+Cj4gQEAgLTEyNjUsNiArMTMwMywxMiBAQCBzdGF0aWMgaW50IG10a19kc2lfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPgo+ICAgICAgICAgcGxhdGZvcm1fc2V0X2RydmRh
dGEocGRldiwgZHNpKTsKPgo+ICsgICAgICAgZHNpLT5icmlkZ2UuZnVuY3MgPSAmbXRrX2RzaV9i
cmlkZ2VfZnVuY3M7Cj4gKyAgICAgICBkc2ktPmJyaWRnZS5vZl9ub2RlID0gZGV2LT5vZl9ub2Rl
Owo+ICsgICAgICAgZHNpLT5icmlkZ2UudHlwZSA9IERSTV9NT0RFX0NPTk5FQ1RPUl9EU0k7Cj4g
Kwo+ICsgICAgICAgZHJtX2JyaWRnZV9hZGQoJmRzaS0+YnJpZGdlKTsKPiArCj4gICAgICAgICBy
ZXQgPSBjb21wb25lbnRfYWRkKCZwZGV2LT5kZXYsICZtdGtfZHNpX2NvbXBvbmVudF9vcHMpOwo+
ICAgICAgICAgaWYgKHJldCkgewo+ICAgICAgICAgICAgICAgICBkZXZfZXJyKCZwZGV2LT5kZXYs
ICJmYWlsZWQgdG8gYWRkIGNvbXBvbmVudDogJWRcbiIsIHJldCk7Cj4gQEAgLTEyODMsNiArMTMy
Nyw3IEBAIHN0YXRpYyBpbnQgbXRrX2RzaV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPiAgICAgICAgIHN0cnVjdCBtdGtfZHNpICpkc2kgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0
YShwZGV2KTsKPgo+ICAgICAgICAgbXRrX291dHB1dF9kc2lfZGlzYWJsZShkc2kpOwo+ICsgICAg
ICAgZHJtX2JyaWRnZV9yZW1vdmUoJmRzaS0+YnJpZGdlKTsKPiAgICAgICAgIGNvbXBvbmVudF9k
ZWwoJnBkZXYtPmRldiwgJm10a19kc2lfY29tcG9uZW50X29wcyk7Cj4gICAgICAgICBtaXBpX2Rz
aV9ob3N0X3VucmVnaXN0ZXIoJmRzaS0+aG9zdCk7Cj4KPiAtLQo+IDIuMjUuMQo+CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
