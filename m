Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDF512448B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:30:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DH5RpVLv/wOP29lQtKgeB9jkMXijKRcxgt6Tn0nZbRo=; b=uiu0ZnWwOqzMZA
	Am78LSlOxEcBrwXkIjPerZCGuChx/c+uQok/0UpgR0sxuZGSvZWMojnOG/nHKVctxhSz/DndBBp+D
	n65EDlDlyXDYaQ6K7hVyhzuPXBIK8mjstIZ5x62Pa6i95mUB+QgQfu0Iy950/PiituHfA4yqDBPlB
	Whk5YBHt0TNjhNaXOwsC0S8A7U4u+4KqweEhMV8dot1x46mJfKK3Ubm8CcS6Jm7T1/6VIxVgBwLDk
	Iv0m6JsVtGEAtU2G+EpskGyQY0F70X8XyiAGmsG/ys6NQyhFz6RmbLxuc/p4a+k+XqMinVG0iiLFz
	wDyF7zO5jNR6gu61C0/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWas-0005Av-MV; Wed, 18 Dec 2019 10:30:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWab-0005AJ-5F
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:29:59 +0000
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 988C921D7D
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 10:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576664996;
 bh=LGcb8cnFWGkw86lBWLB3UZi0UBqoubV9Pp+oAqiza8E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=uM/Yti6AWOGb7bH82Q7InZdS5UQXLTgs+SWPeY0rRsqktnvvi7NWSDacAduH5qJFt
 lL15KK2/Sjr6+qg9nXPdrPOBQ0vmfn+csBa5j4pE9273djANnmjB4ztD1O+122tOgM
 4s/J+BKq74NgGWhYDYu05SfokdHYtCOYITO+F/cg=
Received: by mail-lf1-f46.google.com with SMTP id b15so1316777lfc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 02:29:55 -0800 (PST)
X-Gm-Message-State: APjAAAW6xkCbjkTPy3PY/wnd155wCfkTvjI6wmuKkif9fvF+068Lnynn
 RAfWt85SHHQ9WFT5H2I9fQ2f14kymfdSZHElju4=
X-Google-Smtp-Source: APXvYqzBJ09TMimebaMqjq1w4hCCNfntpaiQy0BZALfmTdvtx5+3C6M5ho+6KpUaiWhClthOlZdTol2BvRgQbWKG4S4=
X-Received: by 2002:ac2:531b:: with SMTP id c27mr1233746lfh.91.1576664993732; 
 Wed, 18 Dec 2019 02:29:53 -0800 (PST)
MIME-Version: 1.0
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142329eucas1p299762f99dd55a5d625633ceec84219f9@eucas1p2.samsung.com>
 <20190919142236.4071-9-a.swigon@samsung.com>
 <693e250d-9656-df67-9685-188020b43542@samsung.com>
 <eecc5d38-f6ab-b1ea-1a08-0afb2dcddbef@samsung.com>
 <2008dca684ccb1dd740e6e6b88e56727d0d1c435.camel@samsung.com>
In-Reply-To: <2008dca684ccb1dd740e6e6b88e56727d0d1c435.camel@samsung.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Wed, 18 Dec 2019 19:29:16 +0900
X-Gmail-Original-Message-ID: <CAGTfZH1=gk1jm4wmX+xMZfkrPR_UDumaDEfmddrpbig4VnN8FQ@mail.gmail.com>
Message-ID: <CAGTfZH1=gk1jm4wmX+xMZfkrPR_UDumaDEfmddrpbig4VnN8FQ@mail.gmail.com>
Subject: Re: [RFC PATCH v2 08/11] arm: dts: exynos: Add parents and
 #interconnect-cells to Exynos4412
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_022957_250095_4CC3A328 
X-CRM114-Status: GOOD (  30.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, georgi.djakov@linaro.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkKCjIwMTnrhYQgMTLsm5QgMTjsnbwgKOyImCkg7Jik7ZuEIDc6MTgsIEFydHVyIMWad2lnb8WE
IDxhLnN3aWdvbkBzYW1zdW5nLmNvbT7ri5jsnbQg7J6R7ISxOgo+Cj4gSGksCj4KPiBPbiBNb24s
IDIwMTktMTItMTYgYXQgMTE6NTkgKzA5MDAsIENoYW53b28gQ2hvaSB3cm90ZToKPiA+IEhpLAo+
ID4KPiA+IE9uIDEyLzE2LzE5IDk6NTEgQU0sIENoYW53b28gQ2hvaSB3cm90ZToKPiA+ID4gT24g
OS8xOS8xOSAxMToyMiBQTSwgQXJ0dXIgxZp3aWdvxYQgd3JvdGU6Cj4gPiA+ID4gRnJvbTogQXJ0
dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4gPiA+ID4KPiA+ID4g
PiBUaGlzIHBhdGNoIGFkZHMgdHdvIGZpZWxkcyB0byB0aGUgRXh5bm9zNDQxMiBEVFM6Cj4gPiA+
ID4gICAtIHBhcmVudDogdG8gZGVjbGFyZSBjb25uZWN0aW9ucyBiZXR3ZWVuIG5vZGVzIHRoYXQg
YXJlIG5vdCBpbiBhCj4gPiA+ID4gICAgIHBhcmVudC1jaGlsZCByZWxhdGlvbiBpbiBkZXZmcmVx
Owo+ID4gPiA+ICAgLSAjaW50ZXJjb25uZWN0LWNlbGxzOiByZXF1aXJlZCBieSB0aGUgaW50ZXJj
b25uZWN0IGZyYW1ld29yay4KPiA+ID4gPgo+ID4gPiA+IFBsZWFzZSBub3RlIHRoYXQgI2ludGVy
Y29ubmVjdC1jZWxscyBpcyBhbHdheXMgemVybyBhbmQgbm9kZSBJRHMgYXJlIG5vdAo+ID4gPiA+
IGhhcmRjb2RlZCBhbnl3aGVyZS4gVGhlIGFib3ZlLW1lbnRpb25lZCBwYXJlbnQtY2hpbGQgcmVs
YXRpb24gaW4gZGV2ZnJlcQo+ID4gPiA+IG1lYW5zIHRoYXQgdGhlcmUgaXMgYSBzaGFyZWQgcG93
ZXIgbGluZSAoJ2RldmZyZXEnIHByb3BlcnR5KS4gVGhlICdwYXJlbnQnCj4gPiA+ID4gcHJvcGVy
dHkgb25seSBzaWduaWZpZXMgYW4gaW50ZXJjb25uZWN0IGNvbm5lY3Rpb24uCj4gPiA+ID4KPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1z
dW5nLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQx
Mi1vZHJvaWQtY29tbW9uLmR0c2kgfCAxICsKPiA+ID4gPiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5
bm9zNDQxMi5kdHNpICAgICAgICAgICAgICAgfCA5ICsrKysrKysrKwo+ID4gPiA+ICAyIGZpbGVz
IGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9h
cmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaSBiL2FyY2gvYXJt
L2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCj4gPiA+ID4gaW5kZXggZWE1
NWYzNzdkMTdjLi5iZGQ2MWFlODYxMDMgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvYXJjaC9hcm0vYm9v
dC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPiA+ID4gPiArKysgYi9hcmNoL2Fy
bS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaQo+ID4gPiA+IEBAIC0xMDYs
NiArMTA2LDcgQEAKPiA+ID4gPiAgJmJ1c19sZWZ0YnVzIHsKPiA+ID4gPiAgIGRldmZyZXEtZXZl
bnRzID0gPCZwcG11X2xlZnRidXNfMz4sIDwmcHBtdV9yaWdodGJ1c18zPjsKPiA+ID4gPiAgIHZk
ZC1zdXBwbHkgPSA8JmJ1Y2szX3JlZz47Cj4gPiA+ID4gKyBwYXJlbnQgPSA8JmJ1c19kbWM+Owo+
ID4gPgo+ID4gPiBBcyBJIG1lbnRpb25lZCBvbiBvdGhlciByZXBseSwKPiA+ID4gSSdtIG5vdCBz
dXJlIHRvIHVzZSB0aGUgc3BlY2lmaWMgJ3BhcmVudCcgcHJvcGVydHkgdG8gbWFrZQo+ID4gPiB0
aGUgY29ubmVjdGlvbiBiZXR3ZWVuIGJ1c2VzLiBJZiBwb3NzaWJsZSwgeW91IGJldHRlciB0bwo+
ID4gPiB1c2UgdGhlIHN0YW5kYXJkIHdheSBsaWtlIE9GIGdyYXBoLiBFeGNlcHQgZm9yIG1ha2lu
Zwo+ID4gPiB0aGUgY29ubmVjdGlvbiBiZXR3ZWVuIGJ1c2VzIGJ5ICdwYXJlbnQnIHByb3BlcnR5
LAo+ID4gPiBsb29rcyBnb29kIHRvIG1lLgo+ID4KPiA+IEkgdHJpZWQgdG8gdGhpbmsgaXQgY29u
dGludW91c2x5LiBJIHdpdGhkcmF3IHRoZSBteSBvcGluaW9uCj4gPiB1c2luZyBPRiBncmFwaC4g
SWYgeW91IG1ha2UgdGhlIHByb3BlcnR5IG5hbWUgbGlrZSB0aGUgZm9sbG93aW5nCj4gPiBleGFt
cGxlLCBpdCBpcyBwb3NzaWJsZSBmb3IgZXh5bm9zLgo+ID4gLSBleHlub3MsaW50ZXJjb25uZWN0
LXBhcmVudC1ub2RlID0gPCZidXNfZG1jPjsgb3Igb3RoZXIgcHJvcGVyIG5hbWUuCj4gPgo+ID4g
UmVnYXJkbGVzcyBvZiBleGlzdGluZyAnZGV2ZnJlcScgcHJvcGVydHksIEkgdGhpbmsgeW91IGJl
dHRlciB0bwo+ID4gbWFrZSB0aGUgY29ubmVjdGlvbiBiZXR3ZWVuIGJ1c2VzIGZvciBvbmx5IGlu
dGVyY29ubmVjdCBhcyBmb2xsb3dpbmcKPiA+IGV4YW1wbGU6IFRoaXMgbWFrZSBpdCBwb3NzaWJs
ZSB1c2VyIGNhbiBkcmF3IHRoZSBjb3JyZWN0IHRyZWUgYnkgdHJhY2tpbmcKPiA+IHRoZSAnZXh5
bm9zLGludGVyY29ubmVjdC1wYXJlbnQtbm9kZScgdmFsdWUuCj4KPiBPSywgZm9yIHYzIEkgd2ls
bCBhZGQgJ2V4eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50LW5vZGUnIHRvIGJ1c19kbWMsCj4gYnVz
X2xlZnRidXMgYW5kIGJ1c19kaXNwbGF5IGFzIHlvdSBzdWdnZXN0ZWQgYmVsb3cgYW5kIGNoYW5n
ZSB0aGUgY29kZQo+IHNvIHRoYXQgdGhlICdkZXZmcmVxJyAob3IgdGhlIHVwY29taW5nICdleHlu
b3MscGFyZW50LWJ1cycpIHByb3BlcnR5IGlzCj4gbm90IHRha2VuIGludG8gYWNjb3VudC4KCkkn
ZCBsaWtlIHlvdSB0byBtYWtlIHRoZSB2MyBiYXNlZCBvbiBteSBwYXRjaGVzWzFdClsxXSAgaHR0
cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvMTIvMTcvMjEKLSBbUEFUQ0ggMC85XSBQTSAvIGRldmZy
ZXE6IFJlbW92ZSBkZXByZWNhdGVkICdkZXZmcmVxJyBhbmQKJ2RldmZyZXEtZXZlbnRzJyBwcm9w
ZXJ0aWVzCgpJIHVwbG9hZGVkIHRoZSBwYXRjaGVzIHRvIGRldmZyZXEtdGVzdGluZyBicmFuY2hb
Ml0KWzJdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2No
YW53b28vbGludXguZ2l0L2xvZy8/aD1kZXZmcmVxLXRlc3RpbmcKCgo+Cj4gPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kgYi9hcmNo
L2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaQo+ID4gaW5kZXggZWE1
NWYzNzdkMTdjLi41M2Y4N2Y0NmUxNjEgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybS9ib290L2R0
cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaQo+ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9k
dHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPiA+IEBAIC05MCw2ICs5MCw3IEBACj4g
PiAgJmJ1c19kbWMgewo+ID4gICAgICAgICBkZXZmcmVxLWV2ZW50cyA9IDwmcHBtdV9kbWMwXzM+
LCA8JnBwbXVfZG1jMV8zPjsKPiA+ICAgICAgICAgdmRkLXN1cHBseSA9IDwmYnVjazFfcmVnPjsK
PiA+ICsgICAgICAgI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPiA+ICAgICAgICAgc3RhdHVz
ID0gIm9rYXkiOwo+ID4gIH07Cj4gPgo+ID4gQEAgLTEwNiw2ICsxMDcsOCBAQAo+ID4gICZidXNf
bGVmdGJ1cyB7Cj4gPiAgICAgICAgIGRldmZyZXEtZXZlbnRzID0gPCZwcG11X2xlZnRidXNfMz4s
IDwmcHBtdV9yaWdodGJ1c18zPjsKPiA+ICAgICAgICAgdmRkLXN1cHBseSA9IDwmYnVjazNfcmVn
PjsKPiA+ICsgICAgICAgZXh5bm9zLGludGVyY29ubmVjdC1wYXJlbnQtbm9kZSA9IDwmYnVzX2Rt
Yz47Cj4gPiArICAgICAgICNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4gPiAgICAgICAgIHN0
YXR1cyA9ICJva2F5IjsKPiA+ICB9Owo+ID4KPiA+IEBAIC0xMTYsNiArMTE5LDggQEAKPiA+Cj4g
PiAgJmJ1c19kaXNwbGF5IHsKPiA+ICAgICAgICAgZGV2ZnJlcSA9IDwmYnVzX2xlZnRidXM+Owo+
ID4gKyAgICAgICBleHlub3MsaW50ZXJjb25uZWN0LXBhcmVudC1ub2RlID0gPCZidXNfbGVmdGJ1
cz47Cj4gPiArICAgICAgICNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4gPiAgICAgICAgIHN0
YXR1cyA9ICJva2F5IjsKPiA+ICB9Owo+ID4KPiA+Cj4gPiA+Cj4gPiA+Cj4gPiA+ID4gICBzdGF0
dXMgPSAib2theSI7Cj4gPiA+ID4gIH07Cj4gPiA+ID4KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9z
NDQxMi5kdHNpCj4gPiA+ID4gaW5kZXggZDIwZGIyZGZlOGUyLi5hNzBhNjcxYWNhY2QgMTAwNjQ0
Cj4gPiA+ID4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpCj4gPiA+ID4g
KysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpCj4gPiA+ID4gQEAgLTM5MCw2
ICszOTAsNyBAQAo+ID4gPiA+ICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2xvY2sgQ0xL
X0RJVl9ETUM+Owo+ID4gPiA+ICAgICAgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImJ1cyI7
Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2Rt
Y19vcHBfdGFibGU+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICNpbnRlcmNvbm5lY3QtY2Vs
bHMgPSA8MD47Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsK
PiA+ID4gPiAgICAgICAgICAgfTsKPiA+ID4gPgo+ID4gPiA+IEBAIC0zOTgsNiArMzk5LDcgQEAK
PiA+ID4gPiAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsb2NrIENMS19ESVZfQUNQPjsK
PiA+ID4gPiAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMiOwo+ID4gPiA+ICAg
ICAgICAgICAgICAgICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19hY3Bfb3BwX3RhYmxl
PjsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+
ID4gPiA+ICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiA+ID4gICAg
ICAgICAgIH07Cj4gPiA+ID4KPiA+ID4gPiBAQCAtNDA2LDYgKzQwOCw3IEBACj4gPiA+ID4gICAg
ICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtfRElWX0MyQz47Cj4gPiA+ID4gICAg
ICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYnVzIjsKPiA+ID4gPiAgICAgICAgICAgICAg
ICAgICBvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZidXNfZG1jX29wcF90YWJsZT47Cj4gPiA+ID4g
KyAgICAgICAgICAgICAgICAgI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPiA+ID4gPiAgICAg
ICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gPiA+ICAgICAgICAgICB9Owo+
ID4gPiA+Cj4gPiA+ID4gQEAgLTQ1OSw2ICs0NjIsNyBAQAo+ID4gPiA+ICAgICAgICAgICAgICAg
ICAgIGNsb2NrcyA9IDwmY2xvY2sgQ0xLX0RJVl9HREw+Owo+ID4gPiA+ICAgICAgICAgICAgICAg
ICAgIGNsb2NrLW5hbWVzID0gImJ1cyI7Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgb3BlcmF0
aW5nLXBvaW50cy12MiA9IDwmYnVzX2xlZnRidXNfb3BwX3RhYmxlPjsKPiA+ID4gPiArICAgICAg
ICAgICAgICAgICAjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+ID4gPiA+ICAgICAgICAgICAg
ICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiA+ID4gICAgICAgICAgIH07Cj4gPiA+ID4K
PiA+ID4gPiBAQCAtNDY3LDYgKzQ3MSw3IEBACj4gPiA+ID4gICAgICAgICAgICAgICAgICAgY2xv
Y2tzID0gPCZjbG9jayBDTEtfRElWX0dEUj47Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgY2xv
Y2stbmFtZXMgPSAiYnVzIjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICBvcGVyYXRpbmctcG9p
bnRzLXYyID0gPCZidXNfbGVmdGJ1c19vcHBfdGFibGU+Owo+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAg
c3RhdHVzID0gImRpc2FibGVkIjsKPiA+ID4gPiAgICAgICAgICAgfTsKPiA+ID4gPgo+ID4gPiA+
IEBAIC00NzUsNiArNDgwLDcgQEAKPiA+ID4gPiAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8
JmNsb2NrIENMS19BQ0xLMTYwPjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1l
cyA9ICJidXMiOwo+ID4gPiA+ICAgICAgICAgICAgICAgICAgIG9wZXJhdGluZy1wb2ludHMtdjIg
PSA8JmJ1c19kaXNwbGF5X29wcF90YWJsZT47Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgI2lu
dGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICBzdGF0dXMg
PSAiZGlzYWJsZWQiOwo+ID4gPiA+ICAgICAgICAgICB9Owo+ID4gPiA+Cj4gPiA+ID4gQEAgLTQ4
Myw2ICs0ODksNyBAQAo+ID4gPiA+ICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2xvY2sg
Q0xLX0FDTEsxMzM+Owo+ID4gPiA+ICAgICAgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImJ1
cyI7Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVz
X2ZzeXNfb3BwX3RhYmxlPjsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAjaW50ZXJjb25uZWN0
LWNlbGxzID0gPDA+Owo+ID4gPiA+ICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxl
ZCI7Cj4gPiA+ID4gICAgICAgICAgIH07Cj4gPiA+ID4KPiA+ID4gPiBAQCAtNDkxLDYgKzQ5OCw3
IEBACj4gPiA+ID4gICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtfQUNMSzEw
MD47Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYnVzIjsKPiA+ID4g
PiAgICAgICAgICAgICAgICAgICBvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZidXNfcGVyaV9vcHBf
dGFibGU+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8
MD47Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ID4g
PiAgICAgICAgICAgfTsKPiA+ID4gPgo+ID4gPiA+IEBAIC00OTksNiArNTA3LDcgQEAKPiA+ID4g
PiAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsb2NrIENMS19TQ0xLX01GQz47Cj4gPiA+
ID4gICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYnVzIjsKPiA+ID4gPiAgICAgICAg
ICAgICAgICAgICBvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZidXNfbGVmdGJ1c19vcHBfdGFibGU+
Owo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4g
PiA+ID4gICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ID4gPiAgICAg
ICAgICAgfTsKPiA+ID4gPgo+ID4gPiA+Cj4gPiA+Cj4gPiA+Cj4gPgo+Cj4gQmVzdCByZWdhcmRz
LAo+IC0tCj4gQXJ0dXIgxZp3aWdvxYQKPiBTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kCj4g
U2Ftc3VuZyBFbGVjdHJvbmljcwo+Cj4KCgotLQpCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
