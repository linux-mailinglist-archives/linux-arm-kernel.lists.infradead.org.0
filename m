Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3569B19FADD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 18:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6u4/uc34FxD17AiDv1Thq04i6RM5p8eJCvN4BlbIkIY=; b=VC8Qpdqhh48ksg
	jehQTbrjbEuexcyCYdyCWeTFyoMGq42yPbKGyF2TLRTh4RxQF31Qz/HpJQq01J49xAdPdmpy/yGG3
	jpxxKBo2NyLSE85sem1vaPKXkOrZCO0yc/iqIBr3WmG4Rph28ZUvWrHk9GUkYuG10YjCVrKIdi76o
	XTe9ilsfPA/OwG+CFxFeNJPDRMCF8SSuCVuV9nR/xSf1u5bM446ipz4pjYiD8EJD7nfjivwM2yXK8
	67ioqigeFGWWg9h8L9nUMiV0kX4maFHDygUDXsxvTFW03HM8biA7UT+4gHPgFbzmjvykIOhXUb1rE
	ZHvnWESAKYK3Lm5PNhGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLV3n-0001oG-KC; Mon, 06 Apr 2020 16:57:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLV3Z-0001lB-02; Mon, 06 Apr 2020 16:57:07 +0000
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E138B249B9;
 Mon,  6 Apr 2020 16:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586192224;
 bh=d5WwVLVFEz/qBX2k9G3pvY8aj9ZG4dDXgjdXesFl72Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2b11M1QLOY7iK7uifO5nBAZ8bvKGbtsHtmiUXVepu4nMWJ0lllOwDjh4fNH5CYNy4
 vTkOZImNQDJ1CeOeKd3mhstdA7JBPeI9Urm+N6WZdTlN5YpCWrl59BsDqKRB5mTpmF
 QPESExpSgygqg6+fcOb//HQ/dAxJr5jzbnaJ5orw=
Received: by mail-ed1-f42.google.com with SMTP id w26so348303edu.7;
 Mon, 06 Apr 2020 09:57:03 -0700 (PDT)
X-Gm-Message-State: AGi0PuZWBstOeow8fA6X/pepQySu4C/PUrIjoUeHCCswe1m7DeBF8Qet
 8RdVWQXOEaPiOsrDwtY1TXrrvaHy/8LG9odsqw==
X-Google-Smtp-Source: APiQypJ/iPGF+cvIgkUgfRfcgINI0hY5iZiKWnX6gcKA9lAMAGbU4+kz269vsFd53VBSCqsVJta4Qo1yoqmPd7O1bkg=
X-Received: by 2002:a05:6402:b70:: with SMTP id
 cb16mr19702151edb.48.1586192222144; 
 Mon, 06 Apr 2020 09:57:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200406051131.225748-1-hsinyi@chromium.org>
In-Reply-To: <20200406051131.225748-1-hsinyi@chromium.org>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Tue, 7 Apr 2020 00:56:49 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9zKbSsYmq7BrQdu3h1zTNYcX3WiFjGaiB1=x8eUA4ogg@mail.gmail.com>
Message-ID: <CAAOTY_9zKbSsYmq7BrQdu3h1zTNYcX3WiFjGaiB1=x8eUA4ogg@mail.gmail.com>
Subject: Re: [PATCH] drm: mediatek: fix device passed to cmdq
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_095705_081612_9668B594 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Daniel Vetter <daniel@ffwll.ch>, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, CK Hu <ck.hu@mediatek.com>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEhzaW4tWWk6CgpIc2luLVlpIFdhbmcgPGhzaW55aUBjaHJvbWl1bS5vcmc+IOaWvCAyMDIw
5bm0NOaciDbml6Ug6YCx5LiAIOS4i+WNiDE6MTLlr6vpgZPvvJoKPgo+IGRybSBkZXZpY2UgaXMg
bm93IHByb2JlZCBmcm9tIG1tc3lzLiBXZSBuZWVkIHRvIHVzZSBtbXN5cyBkZXZpY2UgdG8gZ2V0
IGdjZQo+IG5vZGVzLiBGaXggZm9sbG93aW5nIGVycm9yczoKPgo+IFsgICAgMC43NDAwNjhdIG1l
ZGlhdGVrLWRybSBtZWRpYXRlay1kcm0uMS5hdXRvOiBlcnJvciAtMiBjYW4ndCBwYXJzZSBnY2Ut
Y2xpZW50LXJlZyBwcm9wZXJ0eSAoMCkKPiBbICAgIDAuNzQ4NzIxXSBtZWRpYXRlay1kcm0gbWVk
aWF0ZWstZHJtLjEuYXV0bzogZXJyb3IgLTIgY2FuJ3QgcGFyc2UgZ2NlLWNsaWVudC1yZWcgcHJv
cGVydHkgKDApCj4gLi4uCj4gWyAgICAyLjY1OTY0NV0gbWVkaWF0ZWstZHJtIG1lZGlhdGVrLWRy
bS4xLmF1dG86IGZhaWxlZCB0byByZXF1ZXN0IGNoYW5uZWwKPiBbICAgIDIuNjY2MjcwXSBtZWRp
YXRlay1kcm0gbWVkaWF0ZWstZHJtLjEuYXV0bzogZmFpbGVkIHRvIHJlcXVlc3QgY2hhbm5lbAoK
UmV2aWV3ZWQtYnk6IENodW4tS3VhbmcgSHUgPGNodW5rdWFuZy5odUBrZXJuZWwub3JnPgoKPgo+
IEZpeGVzOiAxZDM2NzU0MWFkZWQgKCJzb2MgLyBkcm06IG1lZGlhdGVrOiBGaXggbWVkaWF0ZWst
ZHJtIGRldmljZSBwcm9iaW5nIikKPiBTaWduZWQtb2ZmLWJ5OiBIc2luLVlpIFdhbmcgPGhzaW55
aUBjaHJvbWl1bS5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJt
X2NydGMuYyB8IDYgKysrKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Ry
di5jICB8IDMgKystCj4gIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJt
X2NydGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2NydGMuYwo+IGluZGV4
IDYxNWE1NGU2MGZlMi4uODYyMWYwMjg5Mzk5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfZHJtX2NydGMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRl
ay9tdGtfZHJtX2NydGMuYwo+IEBAIC04MjIsMTQgKzgyMiwxNiBAQCBpbnQgbXRrX2RybV9jcnRj
X2NyZWF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZHJtX2RldiwKPgo+ICAjaWYgSVNfUkVBQ0hBQkxF
KENPTkZJR19NVEtfQ01EUSkKPiAgICAgICAgIG10a19jcnRjLT5jbWRxX2NsaWVudCA9Cj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgY21kcV9tYm94X2NyZWF0ZShkZXYsIGRybV9jcnRjX2luZGV4
KCZtdGtfY3J0Yy0+YmFzZSksCj4gKyAgICAgICAgICAgICAgICAgICAgICAgY21kcV9tYm94X2Ny
ZWF0ZShtdGtfY3J0Yy0+bW1zeXNfZGV2LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZHJtX2NydGNfaW5kZXgoJm10a19jcnRjLT5iYXNlKSwKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDIwMDApOwo+ICAgICAgICAgaWYgKElTX0VS
UihtdGtfY3J0Yy0+Y21kcV9jbGllbnQpKSB7Cj4gICAgICAgICAgICAgICAgIGRldl9kYmcoZGV2
LCAibXRrX2NydGMgJWQgZmFpbGVkIHRvIGNyZWF0ZSBtYWlsYm94IGNsaWVudCwgd3JpdGluZyBy
ZWdpc3RlciBieSBDUFUgbm93XG4iLAo+ICAgICAgICAgICAgICAgICAgICAgICAgIGRybV9jcnRj
X2luZGV4KCZtdGtfY3J0Yy0+YmFzZSkpOwo+ICAgICAgICAgICAgICAgICBtdGtfY3J0Yy0+Y21k
cV9jbGllbnQgPSBOVUxMOwo+ICAgICAgICAgfQo+IC0gICAgICAgcmV0ID0gb2ZfcHJvcGVydHlf
cmVhZF91MzJfaW5kZXgoZGV2LT5vZl9ub2RlLCAibWVkaWF0ZWssZ2NlLWV2ZW50cyIsCj4gKyAg
ICAgICByZXQgPSBvZl9wcm9wZXJ0eV9yZWFkX3UzMl9pbmRleChtdGtfY3J0Yy0+bW1zeXNfZGV2
LT5vZl9ub2RlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIm1l
ZGlhdGVrLGdjZS1ldmVudHMiLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgZHJtX2NydGNfaW5kZXgoJm10a19jcnRjLT5iYXNlKSwKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICZtdGtfY3J0Yy0+Y21kcV9ldmVudCk7Cj4gICAgICAg
ICBpZiAocmV0KQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Ry
bV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5jCj4gaW5kZXgg
ZTJiYjBkMTllZjk5Li5kYzc4ZTg2YmNjYzAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L21lZGlhdGVrL210a19kcm1fZHJ2LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsv
bXRrX2RybV9kcnYuYwo+IEBAIC01MTcsNyArNTE3LDggQEAgc3RhdGljIGludCBtdGtfZHJtX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBnb3RvIGVycl9ub2RlOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIH0KPgo+
IC0gICAgICAgICAgICAgICAgICAgICAgIHJldCA9IG10a19kZHBfY29tcF9pbml0KGRldiwgbm9k
ZSwgY29tcCwgY29tcF9pZCwgTlVMTCk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0ID0g
bXRrX2RkcF9jb21wX2luaXQoZGV2LT5wYXJlbnQsIG5vZGUsIGNvbXAsCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29tcF9pZCwgTlVMTCk7Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgaWYgKHJldCkgewo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgb2Zfbm9kZV9wdXQobm9kZSk7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBnb3RvIGVycl9ub2RlOwo+IC0tCj4gMi4yNi4wLjI5Mi5nMzNlZjZiMmYzOC1nb29nCj4K
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGlu
dXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0Cj4gTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bWVkaWF0ZWsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
