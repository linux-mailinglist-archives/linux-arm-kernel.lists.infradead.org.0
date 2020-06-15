Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0355D1F8D68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 07:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jwEo4gJrQbFnaiu3M5tkvvgO7dz7eHIACk7XuqPb1fs=; b=VzW1kz/MPk8vTQ
	v6LOcIHCiIiID1M1Xf+hckwaHleM5Do1Go8JZmx5Bvw504JjYNb7BnU6joIxvNI6zDxYFu20Gu+t7
	vfK1eUVpvsCm2pa+B9aILsjI6OHcxExrEMDQAHnougvQUpy+oOa6HkuNen0FXGQ2xwQIjyJXk67BB
	Tp0ok7eeCb17G7tNwiE0ueO2c9F4IQOG4XenhW94bLhNNuLhHFsbfiBVU6p8aY5dK/Zlj9V63PDbQ
	1bx7gdzvSG5yxUsFPLj9g2HAyXWC8xtWYpNmbBzL+RYq6qfvC6oopCy0jhh7Ux/71jKKioQrdmADJ
	jOouYQenznO3yKKcldJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jki16-0001fY-DE; Mon, 15 Jun 2020 05:50:44 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jki0y-0001WD-Nr
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 05:50:38 +0000
Received: by mail-io1-xd42.google.com with SMTP id c8so16530015iob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 22:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EfP5hZSQNzjQqMkWc9LoRXc1AAXxZHM8N9PyJWorKz4=;
 b=OZpP7pmFsGmdxfS3l7uamNicZ8uQ9Nf8MR0kC6l/Pylv2f33o6F24h0bpzGfnyXBFW
 5WWD5ZdB4FbEP6XgNmVN/I/lu5Po/R06+vSXGDdATGWAASgmjZwTL7BjbDf8xSkX4bLn
 NvXWEBf0YYdsh5NZACwjgmMVIxKlBjvbArIrI7x81zZEP9jcjTPCwI+rYqtQKHnMkpd/
 PLUN7P2RBZQ+ofxirAEShpREIO9P2aOlf7/3c1iZ5/MK9NJ2OLO1XrpiNrA1SLuQTndi
 3mA9KZYkXv6PV/m0QxLN3Nz1rJsCxRpY0lRvU0xbHuXq00+yKGSdmyDRWY0GXXflXEf7
 xlXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EfP5hZSQNzjQqMkWc9LoRXc1AAXxZHM8N9PyJWorKz4=;
 b=R2UCsaJERdEiqvsOjddzjZwO2Ww/A77MXlW8xogUeQyXa4Jt2WbgGZxC6zEhTb1P71
 1I3TEpUpMtDzCHDAGml1JUK5Qt3hGdtddUNm3CXGhatyi24oQ9pfL++/c+357rH6o3sz
 dFN7w8FeW7UxsWVfq0fP4wauEodu/BtU7d8EDTKJSRjvLVoy7GJDTsVIIukQ/WMsOHlp
 t2h4w9PU39TEixfmluUDS40mkcXwAlXIRgxjPNmck2LlmiGFwCh19MZADG4Vp/e5vFRZ
 tpHht5JlZ+RFHh+qIAdZKHbONuO8Rb1z4osyJfLlS7FjK27b6wxXWezcrzTZZkTy9LO0
 rW3w==
X-Gm-Message-State: AOAM533bR1as2HhllSB/R6+5rPO+UHsuSdik54Ck3pV9ark5jTeXth72
 QWOL7BvUvpQwcod2G05kIqnEjd4WPfLKdJryf14=
X-Google-Smtp-Source: ABdhPJxz5YVDWt61fjYvqGw81By3kuArLbE5XdDIQNJvf/HKkZgzu8y6e9oqRac/mywKrTNKpTfgNMjzA98j5esPH4I=
X-Received: by 2002:a02:c9c5:: with SMTP id c5mr20110262jap.5.1592200235543;
 Sun, 14 Jun 2020 22:50:35 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200614062349epcas1p1e285479c1e6483708b62f93e70a453a4@epcas1p1.samsung.com>
 <20200614062339.87374-1-navid.emamdoost@gmail.com>
 <027d9eb5-a1c1-c329-72c3-a555b71f8677@samsung.com>
In-Reply-To: <027d9eb5-a1c1-c329-72c3-a555b71f8677@samsung.com>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Mon, 15 Jun 2020 00:50:24 -0500
Message-ID: <CAEkB2ESuG7omgvdEnfQ+hV_uWa1mhK=22VnN++TaFqOycaTc_A@mail.gmail.com>
Subject: Re: [PATCH] drm/exynos: fix ref count leak in mic_pre_enable
To: Inki Dae <inki.dae@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_225036_781221_CD4075C7 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [navid.emamdoost[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Qiushi Wu <wu000273@umn.edu>, David Airlie <airlied@linux.ie>,
 Kangjie Lu <kjlu@umn.edu>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 LKML <linux-kernel@vger.kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Stephen McCamant <smccaman@umn.edu>, linux-arm-kernel@lists.infradead.org,
 Navid Emamdoost <emamd001@umn.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBKdW4gMTQsIDIwMjAgYXQgNzo0NyBQTSBJbmtpIERhZSA8aW5raS5kYWVAc2Ftc3Vu
Zy5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiAyMC4gNi4gMTQuIOyYpO2bhCAzOjIz7JeQIE5hdmlk
IEVtYW1kb29zdCDsnbQo6rCAKSDsk7Qg6riAOgo+ID4gaW4gbWljX3ByZV9lbmFibGUsIHBtX3J1
bnRpbWVfZ2V0X3N5bmMgaXMgY2FsbGVkIHdoaWNoCj4gPiBpbmNyZW1lbnRzIHRoZSBjb3VudGVy
IGV2ZW4gaW4gY2FzZSBvZiBmYWlsdXJlLCBsZWFkaW5nIHRvIGluY29ycmVjdAo+ID4gcmVmIGNv
dW50LiBJbiBjYXNlIG9mIGZhaWx1cmUsIGRlY3JlbWVudCB0aGUgcmVmIGNvdW50IGJlZm9yZSBy
ZXR1cm5pbmcuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTmF2aWQgRW1hbWRvb3N0IDxuYXZpZC5l
bWFtZG9vc3RAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9l
eHlub3NfZHJtX21pYy5jIHwgMiArLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXh5
bm9zL2V4eW5vc19kcm1fbWljLmMgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1f
bWljLmMKPiA+IGluZGV4IGE4NmFiYzE3MzYwNS4uNjlmZjc0YzJjZWI1IDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX21pYy5jCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fbWljLmMKPiA+IEBAIC0yNzAsNyArMjcwLDcg
QEAgc3RhdGljIHZvaWQgbWljX3ByZV9lbmFibGUoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSkK
PiA+Cj4gPiAgICAgICByZXQgPSBwbV9ydW50aW1lX2dldF9zeW5jKG1pYy0+ZGV2KTsKPiA+ICAg
ICAgIGlmIChyZXQgPCAwKQo+ID4gLSAgICAgICAgICAgICBnb3RvIHVubG9jazsKPiA+ICsgICAg
ICAgICAgICAgZ290byB0dXJuX29mZjsKPgo+IEhvdyBhYm91dCBqdXN0IGNhbGxpbmcgcG1fcnVu
dGltZV9wdXRfbm9pZGxlKCk/Cj4KPiBpZiAocmV0IDwgMCkgewo+ICAgICAgICAgcG1fcnVudGlt
ZV9wdXRfbm9pZGxlKG1pYy0+ZGV2KTsKPiAgICAgICAgIGdvdG8gdW5sb2NrOwo+IH0KPgp2MiB3
YXMgc2VudC4KCj4gVGhhbmtzLAo+IElua2kgRGFlCj4KPiA+Cj4gPiAgICAgICBtaWNfc2V0X3Bh
dGgobWljLCAxKTsKPiA+Cj4gPgoKCgotLSAKTmF2aWQuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
