Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0EB1C2221
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 03:24:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ex1/8f6/BUCbw8fs+rTgdhQu1fjxVTYfycd7uoAofa8=; b=PTju9puwawzPft
	0dkKJotZzuzaIqU9JMvsCvtFTna5ElD7bbzbqxz8mIGkRW59Z342L86AxNe4lauVamFxfCKTic5Io
	vayyWc/R9T6oKNCBft+kjHIh20KPKWQ6UYxOxcNQSsw9p3Z6Ej/gzPfAkgv0M/SO5N6rSl2lhqTOt
	z6vrYAAmhUXZOJ4SsWe1+7Yr23TwdnCj1N0gEVyXa+ETWvXh4+lClzRAGQogMX6nXE4nfCwrghNp0
	QubVX5AjB8lCrWlVcss1ZqzQOw/mX6e1gAp1FD31qYIk5FGDMfKro+2XkHicbKRszzFNVZWWL3DI/
	sPchgGWOzmHXEjIn8lwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUgso-0003si-Ah; Sat, 02 May 2020 01:23:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUgsg-0003rh-VL; Sat, 02 May 2020 01:23:52 +0000
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5E33B24956;
 Sat,  2 May 2020 01:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588382630;
 bh=fKedIT7NCjjtN+WZ+I/uAQkL+Kk76kfwMU8EfUxLit0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2AU2x8aC7YuhK/uBVFA1aIW4u4+DqhdT73DwkckBsRhs4FWqZbRugm2hrOLAMUdCJ
 kO/F4ugCLOvHIxCX40P2aYXsKiMLlJZYCbtwZQeOPbcq3Ovk3ukFe9Dz1AWr+vt/x1
 b/NNHg2IinE81Fc9sU4ud1VdAEY0uDluxBYy62bw=
Received: by mail-ed1-f54.google.com with SMTP id s10so8615342edy.9;
 Fri, 01 May 2020 18:23:50 -0700 (PDT)
X-Gm-Message-State: AGi0PuZD405uKzn2Nm3F9+L1ghVLXHrmAChsGUZMrAbAdg9AyfIXl7fF
 kgCs/igflMVIgB1+jZcBNJ5cDWvXxKruIRexzQ==
X-Google-Smtp-Source: APiQypKfu4S78pn6Hni94rL6h97guVNLRCNyuj3ph+4DeSmaCsksPyugFgEcYB5B3sAmS1GpdvZ7InYPlctsgiiekeE=
X-Received: by 2002:a05:6402:1f6:: with SMTP id
 i22mr6043564edy.271.1588382628798; 
 Fri, 01 May 2020 18:23:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200501152335.1805790-1-enric.balletbo@collabora.com>
 <20200501152335.1805790-4-enric.balletbo@collabora.com>
In-Reply-To: <20200501152335.1805790-4-enric.balletbo@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sat, 2 May 2020 09:23:38 +0800
X-Gmail-Original-Message-ID: <CAAOTY__grEXBPJjYveiEDFZ4-XjGr=sBpciK4zhFXfd=4OBZNA@mail.gmail.com>
Message-ID: <CAAOTY__grEXBPJjYveiEDFZ4-XjGr=sBpciK4zhFXfd=4OBZNA@mail.gmail.com>
Subject: Re: [PATCH v4 3/7] drm/mediatek: mtk_dsi: Rename bridge to next_bridge
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_182351_048646_8EDD0E7C 
X-CRM114-Status: GOOD (  18.69  )
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
 Collabora Kernel ML <kernel@collabora.com>, Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEVucmljOgoKRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFi
b3JhLmNvbT4g5pa8IDIwMjDlubQ15pyIMeaXpSDpgLHkupQg5LiL5Y2IMTE6MjPlr6vpgZPvvJoK
Pgo+IFRoaXMgaXMgcmVhbGx5IGEgY29zbWV0aWMgY2hhbmdlIGp1c3QgdG8gbWFrZSBhIGJpdCBt
b3JlIHJlYWRhYmxlIHRoZQo+IGNvZGUgYWZ0ZXIgY29udmVydCB0aGUgZHJpdmVyIHRvIGRybV9i
cmlkZ2UuIFRoZSBicmlkZ2UgdmFyaWFibGUgbmFtZQo+IHdpbGwgYmUgdXNlZCBieSB0aGUgZW5j
b2RlciBkcm1fYnJpZGdlLCBhbmQgdGhlIGNoYWluZWQgYnJpZGdlIHdpbGwgYmUKPiBuYW1lZCBu
ZXh0X2JyaWRnZS4KClJldmlld2VkLWJ5OiBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2Vy
bmVsLm9yZz4KCj4KPiBTaWduZWQtb2ZmLWJ5OiBFbnJpYyBCYWxsZXRibyBpIFNlcnJhIDxlbnJp
Yy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgo+IFJldmlld2VkLWJ5OiBMYXVyZW50IFBpbmNoYXJ0
IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+Cj4gQWNrZWQtYnk6IFNhbSBSYXZu
Ym9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KPiAtLS0KPgo+IENoYW5nZXMgaW4gdjQ6IE5vbmUKPiBD
aGFuZ2VzIGluIHYzOgo+IC0gUmVwbGFjZSBzL2JyaWRnZS9uZXh0IGJyaWRnZS8gZm9yIGNvbW1l
bnQuIChMYXVyZW50IFBpbmNoYXJ0KQo+Cj4gQ2hhbmdlcyBpbiB2MjogTm9uZQo+Cj4gIGRyaXZl
cnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMgfCAxMSArKysrKystLS0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVk
aWF0ZWsvbXRrX2RzaS5jCj4gaW5kZXggY2ZhNDVkNmFiZDc0Li4zN2I4ZDdmZmQ4MzUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMKPiBAQCAtMTgyLDcgKzE4Miw3IEBAIHN0cnVj
dCBtdGtfZHNpIHsKPiAgICAgICAgIHN0cnVjdCBkcm1fZW5jb2RlciBlbmNvZGVyOwo+ICAgICAg
ICAgc3RydWN0IGRybV9jb25uZWN0b3IgY29ubjsKPiAgICAgICAgIHN0cnVjdCBkcm1fcGFuZWwg
KnBhbmVsOwo+IC0gICAgICAgc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZTsKPiArICAgICAgIHN0
cnVjdCBkcm1fYnJpZGdlICpuZXh0X2JyaWRnZTsKPiAgICAgICAgIHN0cnVjdCBwaHkgKnBoeTsK
Pgo+ICAgICAgICAgdm9pZCBfX2lvbWVtICpyZWdzOwo+IEBAIC05MDIsOSArOTAyLDEwIEBAIHN0
YXRpYyBpbnQgbXRrX2RzaV9jcmVhdGVfY29ubl9lbmMoc3RydWN0IGRybV9kZXZpY2UgKmRybSwg
c3RydWN0IG10a19kc2kgKmRzaSkKPiAgICAgICAgICAqLwo+ICAgICAgICAgZHNpLT5lbmNvZGVy
LnBvc3NpYmxlX2NydGNzID0gMTsKPgo+IC0gICAgICAgLyogSWYgdGhlcmUncyBhIGJyaWRnZSwg
YXR0YWNoIHRvIGl0IGFuZCBsZXQgaXQgY3JlYXRlIHRoZSBjb25uZWN0b3IgKi8KPiAtICAgICAg
IGlmIChkc2ktPmJyaWRnZSkgewo+IC0gICAgICAgICAgICAgICByZXQgPSBkcm1fYnJpZGdlX2F0
dGFjaCgmZHNpLT5lbmNvZGVyLCBkc2ktPmJyaWRnZSwgTlVMTCwgMCk7Cj4gKyAgICAgICAvKiBJ
ZiB0aGVyZSdzIGEgbmV4dCBicmlkZ2UsIGF0dGFjaCB0byBpdCBhbmQgbGV0IGl0IGNyZWF0ZSB0
aGUgY29ubmVjdG9yICovCj4gKyAgICAgICBpZiAoZHNpLT5uZXh0X2JyaWRnZSkgewo+ICsgICAg
ICAgICAgICAgICByZXQgPSBkcm1fYnJpZGdlX2F0dGFjaCgmZHNpLT5lbmNvZGVyLCBkc2ktPm5l
eHRfYnJpZGdlLCBOVUxMLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAwKTsKPiAgICAgICAgICAgICAgICAgaWYgKHJldCkgewo+ICAgICAgICAgICAgICAgICAgICAg
ICAgIERSTV9FUlJPUigiRmFpbGVkIHRvIGF0dGFjaCBicmlkZ2UgdG8gZHJtXG4iKTsKPiAgICAg
ICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9lbmNvZGVyX2NsZWFudXA7Cj4gQEAgLTExODUs
NyArMTE4Niw3IEBAIHN0YXRpYyBpbnQgbXRrX2RzaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+ICAgICAgICAgfQo+Cj4gICAgICAgICByZXQgPSBkcm1fb2ZfZmluZF9wYW5l
bF9vcl9icmlkZ2UoZGV2LT5vZl9ub2RlLCAwLCAwLAo+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICZkc2ktPnBhbmVsLCAmZHNpLT5icmlkZ2UpOwo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZkc2ktPnBhbmVsLCAmZHNpLT5uZXh0
X2JyaWRnZSk7Cj4gICAgICAgICBpZiAocmV0KQo+ICAgICAgICAgICAgICAgICBnb3RvIGVycl91
bnJlZ2lzdGVyX2hvc3Q7Cj4KPiAtLQo+IDIuMjYuMgo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
