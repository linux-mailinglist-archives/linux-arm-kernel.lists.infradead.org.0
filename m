Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E298522024
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 00:17:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tige0pGOtciieO33f2O4tkTIKZ+H3I+kgeRSHfcdcuk=; b=Z4xMevYKTJmVFN
	/jGSp1bBDa0hHPZCWop9dukc6LveORkjxfMzZII3t6KSFXYSDrd7OPtm8FwOdmQhTbx1ZfdgoCANd
	7HIziTlUUKZ7gutNBmx6SU9GYVo1tN345oeuBcXsqekjEU0MR3a7+6oQKuiy8p8kyeGpdlduQCmEC
	IF6OXWoLMl2zMcMz/IEmmqSePsY6MCSQ31e78RzzrjibqaFVNGkxkShhrCXa1lkpUWC95Sb19L6T1
	9LEEaB+XvMxQWSr/QnWbQlsLv2jOPqK6Tc4/mfqnIOTsiQIE+r5psM59EcBTHIdAobdkASGVr/0pd
	14kx7Bx/9I6/qre44n0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRlA5-0001dt-CJ; Fri, 17 May 2019 22:17:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRl9y-0001dM-G7
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 22:17:03 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 004552087E
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 22:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558131422;
 bh=Ub9ywDgQMywBRcVcnaiqdLyL6nucWm3LLTrW2H19UiE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=GlQ47fjelVwOIBUNPfQPVtZRplhCOXFbklJArqlwOt3X8cNAekcwtl4ovf9ekowFT
 rxpRgSRuXfWsJi3oreP7IxF7trBEOA8EwhrlnBkfayec6e1QgrAOOIVTLxn0iIO7Tg
 lW21oFAasHZtJPuV4K/PqeO4ZKdt5jwVfXM6iDII=
Received: by mail-qt1-f177.google.com with SMTP id y42so9823150qtk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 15:17:01 -0700 (PDT)
X-Gm-Message-State: APjAAAV2xlR+3PhuSFO8scngMZq0z0tabv5wYLQWSoP0rJv6/ZfdCNxF
 j33vcRkaBZbmEBS4tgXowI0zeofdOwdwhOjiCg==
X-Google-Smtp-Source: APXvYqwEyGCXsMdPpd1yKLh5mRTBHM7bqH+ylSdbW3LBM0kM6/GbLYmB3yx3l3fr7fSVgCiND3V4w1ysUhkmpeQirXM=
X-Received: by 2002:a0c:8aad:: with SMTP id 42mr48554064qvv.200.1558131421268; 
 Fri, 17 May 2019 15:17:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190517184659.18828-1-peron.clem@gmail.com>
 <20190517184659.18828-2-peron.clem@gmail.com>
 <CAL_JsqKPazGn+g1zS4NMwvQZ_6GcAm0tgcOTqyQA0dz0+2dp3g@mail.gmail.com>
 <CAJiuCcdMxXAXYk=QpRwsvBUW0tvBVMqXvgx0Y7fAKP=ouyBnKQ@mail.gmail.com>
In-Reply-To: <CAJiuCcdMxXAXYk=QpRwsvBUW0tvBVMqXvgx0Y7fAKP=ouyBnKQ@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 17 May 2019 17:16:49 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJgo8NpK00ApBcdtYGW24yuqU=4EMna+r_07=dqceZyyg@mail.gmail.com>
Message-ID: <CAL_JsqJgo8NpK00ApBcdtYGW24yuqU=4EMna+r_07=dqceZyyg@mail.gmail.com>
Subject: Re: [PATCH v5 1/6] drm: panfrost: add optional bus_clock
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_151702_573501_3237342D 
X-CRM114-Status: GOOD (  20.33  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
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

T24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgNTowOCBQTSBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPiB3cm90ZToKPgo+IEhpIFJvYiwKPgo+IE9uIEZyaSwgMTcgTWF5IDIwMTkg
YXQgMjI6MDcsIFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+
IE9uIEZyaSwgTWF5IDE3LCAyMDE5IGF0IDE6NDcgUE0gQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5j
bGVtQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IEFsbHdpbm5lciBINiBoYXMgYW4gQVJN
IE1hbGktVDcyMCBNUDIgd2hpY2ggcmVxdWlyZWQgYSBidXNfY2xvY2suCj4gPiA+Cj4gPiA+IEFk
ZCBhbiBvcHRpb25hbCBidXNfY2xvY2sgYXQgdGhlIGluaXQgb2YgdGhlIHBhbmZyb3N0IGRyaXZl
ci4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVt
QGdtYWlsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFu
ZnJvc3RfZGV2aWNlLmMgfCAyNSArKysrKysrKysrKysrKysrKysrKystCj4gPiA+ICBkcml2ZXJz
L2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZGV2aWNlLmggfCAgMSArCj4gPiA+ICAyIGZpbGVz
IGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4KPiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kZXZpY2UuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kZXZpY2UuYwo+ID4gPiBpbmRleCAzYjJi
Y2VkMWIwMTUuLjhkYTZlNjEyZDM4NCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3BhbmZyb3N0L3BhbmZyb3N0X2RldmljZS5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9w
YW5mcm9zdC9wYW5mcm9zdF9kZXZpY2UuYwo+ID4gPiBAQCAtNDQsNyArNDQsOCBAQCBzdGF0aWMg
aW50IHBhbmZyb3N0X2Nsa19pbml0KHN0cnVjdCBwYW5mcm9zdF9kZXZpY2UgKnBmZGV2KQo+ID4g
Pgo+ID4gPiAgICAgICAgIHBmZGV2LT5jbG9jayA9IGRldm1fY2xrX2dldChwZmRldi0+ZGV2LCBO
VUxMKTsKPiA+ID4gICAgICAgICBpZiAoSVNfRVJSKHBmZGV2LT5jbG9jaykpIHsKPiA+ID4gLSAg
ICAgICAgICAgICAgIGRldl9lcnIocGZkZXYtPmRldiwgImdldCBjbG9jayBmYWlsZWQgJWxkXG4i
LCBQVFJfRVJSKHBmZGV2LT5jbG9jaykpOwo+ID4gPiArICAgICAgICAgICAgICAgZGV2X2Vycihw
ZmRldi0+ZGV2LCAiZ2V0IGNsb2NrIGZhaWxlZCAlbGRcbiIsCj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgIFBUUl9FUlIocGZkZXYtPmNsb2NrKSk7Cj4gPgo+ID4gUGxlYXNlIGRyb3AgdGhp
cyB3aGl0ZXNwYWNlIGNoYW5nZS4KPgo+IFNvcnJ5LCBJIHRob3VnaHQgaXQgd2FzIG9ubHkgYSBt
aXN0YWtlIGhlcmUsIEkgd2lsbCBkcm9wIGl0Lgo+IFdoeSBhcmUgdGhleSBzbyBtYW55IGxpbmVz
IG92ZXIgODAgY2hhcmFjdGVycz8KCkknZCBndWVzcyBtb3N0IGFyZSBwcmludHMgYW5kL29yIGp1
c3Qgc2xpZ2h0bHkgb3Zlci4KCj4gSXMgdGhlcmUgYSBzcGVjaWZpYyBjb2Rpbmcgc3R5bGUgdG8g
Zm9sbG93ID8KClllcywgYnV0IGdlbmVyYWxseSB0aGUgODAgY2hhcmFjdGVyIHRoaW5nIGlzIG1v
cmUgYSBndWlkYW5jZS4gTm90CmhhdmluZyB1bnJlbGF0ZWQgY2hhbmdlcyBpbiBhIHNpbmdsZSBj
b21taXQgaXMgbW9yZSBvZiBhIGhhcmQgcnVsZS4KClJvYgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
