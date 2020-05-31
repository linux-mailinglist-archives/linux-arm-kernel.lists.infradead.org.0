Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6494B1E9497
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 02:01:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWaV22iyD+2Wsi79nz5JFVO7sh8290HZZl5c/fLT2p4=; b=YcjJi7vQf3E5TK
	h2OuefupyMNmtinwj8VZYzApSCmJ1y0O/ADcBXDjW4LW09Ug68YWKEM2B25CRuJ0ZzrLp+Sf9oTFB
	d86EE3TtRQww4W+yWKE5P5kd9Y0Z+UBP+gEcVEAzjaQNojw1IVx1OzpdAzSmih7oWTRGSIlHNrsfH
	KPrAj05NA26Q1l3zRb5TTjROFpUTkhPuic2KZglqS1WXWy+HWT1jEYNvPvpJ5D5GjR/HLhqf5nVTg
	cr9uyAQG86gykHjX8+DnW5jLGChDD5LdpUdOZrCLhBt7SW6rTu8UA2pDojE0N9h2NQTGyOZRNIaqR
	cZOXWAPho/YyabShlT1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfBQB-0004rs-7v; Sun, 31 May 2020 00:01:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfBQ2-0004r2-RC
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 00:01:40 +0000
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31293207BB
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 31 May 2020 00:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590883298;
 bh=2p4SBOzIcxqldDQV+EgA8g75sZR4n3jmr6ytOgA1hPs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LAZ2ml8d4tllly6yUKcA/bFgxj/GgNzOm0gXCJCNiuDci5YuQ5r4pMox+T1OJYV72
 5PjXNv1Y5hW8w24ZrhtxIMQ3p8jB3cTQoOBZT4n+D+hRCfoeplyK67Lrya9geraBXN
 ab34i9F2dcOBC5NYC1slzpGFwKQ7Cuys08WeKMAk=
Received: by mail-lj1-f181.google.com with SMTP id m18so3739800ljo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 May 2020 17:01:38 -0700 (PDT)
X-Gm-Message-State: AOAM530gJikj7s+/Gt42JO7dobRrVfVgXsx/So1YSmaYTmfwoCoLnNv5
 7a1i9E4Zql3Ewrp3HP1PhdW3ZeyN26OEDAypMWY=
X-Google-Smtp-Source: ABdhPJzU/8i47JcqsMEUq8jJ7WZ2YavPcT4Y4tu7MIIVGyb75w7ekgPJ3jPOCNAUup5FQRQs5D0G9kNh1jYivsMC+Lo=
X-Received: by 2002:a2e:b5b0:: with SMTP id f16mr7700307ljn.100.1590883296477; 
 Sat, 30 May 2020 17:01:36 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200529163219eucas1p2d127fe3936921f53f6fe7902e7d14a3e@eucas1p2.samsung.com>
 <20200529163200.18031-1-s.nawrocki@samsung.com>
 <20200529163200.18031-2-s.nawrocki@samsung.com>
In-Reply-To: <20200529163200.18031-2-s.nawrocki@samsung.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Sun, 31 May 2020 09:01:00 +0900
X-Gmail-Original-Message-ID: <CAGTfZH1yM0KRaEF5VTs2juTm+yrK9VqQZxWjdNf_ffjGHWPLsg@mail.gmail.com>
Message-ID: <CAGTfZH1yM0KRaEF5VTs2juTm+yrK9VqQZxWjdNf_ffjGHWPLsg@mail.gmail.com>
Subject: Re: [RFC PATCH v5 1/6] dt-bindings: exynos-bus: Add documentation for
 interconnect properties
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_170138_921036_B1E59301 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3lsd2VzdGVyLAoKCk9uIFNhdCwgTWF5IDMwLCAyMDIwIGF0IDE6MzIgQU0gU3lsd2VzdGVy
IE5hd3JvY2tpCjxzLm5hd3JvY2tpQHNhbXN1bmcuY29tPiB3cm90ZToKPgo+IEFkZCBkb2N1bWVu
dGF0aW9uIGZvciBuZXcgb3B0aW9uYWwgcHJvcGVydGllcyBpbiB0aGUgZXh5bm9zIGJ1cyBub2Rl
czoKPiBzYW1zdW5nLGludGVyY29ubmVjdC1wYXJlbnQsICNpbnRlcmNvbm5lY3QtY2VsbHMuCj4g
VGhlc2UgcHJvcGVydGllcyBhbGxvdyB0byBzcGVjaWZ5IHRoZSBTb0MgaW50ZXJjb25uZWN0IHN0
cnVjdHVyZSB3aGljaAo+IHRoZW4gYWxsb3dzIHRoZSBpbnRlcmNvbm5lY3QgY29uc3VtZXIgZGV2
aWNlcyB0byByZXF1ZXN0IHNwZWNpZmljCj4gYmFuZHdpZHRoIHJlcXVpcmVtZW50cy4KPgo+IFNp
Z25lZC1vZmYtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBzYW1zdW5nLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBTeWx3ZXN0ZXIgTmF3cm9ja2kgPHMubmF3cm9ja2lAc2Ftc3VuZy5jb20+Cj4g
LS0tCj4gQ2hhbmdlcyBmb3IgdjU6Cj4gIC0gZXh5bm9zLGludGVyY29ubmVjdC1wYXJlbnQtbm9k
ZSByZW5hbWVkIHRvIHNhbXN1bmcsaW50ZXJjb25uZWN0LXBhcmVudAo+IC0tLQo+ICBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2ZnJlcS9leHlub3MtYnVzLnR4dCB8IDE1ICsr
KysrKysrKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZGV2ZnJlcS9leHlub3MtYnVzLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kZXZmcmVxL2V4eW5vcy1idXMudHh0Cj4gaW5kZXggZTcxZjc1Mi4uZTBkMmRhYSAxMDA2
NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2ZnJlcS9leHlu
b3MtYnVzLnR4dAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZm
cmVxL2V4eW5vcy1idXMudHh0Cj4gQEAgLTUxLDYgKzUxLDExIEBAIE9wdGlvbmFsIHByb3BlcnRp
ZXMgb25seSBmb3IgcGFyZW50IGJ1cyBkZXZpY2U6Cj4gIC0gZXh5bm9zLHNhdHVyYXRpb24tcmF0
aW86IHRoZSBwZXJjZW50YWdlIHZhbHVlIHdoaWNoIGlzIHVzZWQgdG8gY2FsaWJyYXRlCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgdGhlIHBlcmZvcm1hbmNlIGNvdW50IGFnYWluc3QgdG90YWwg
Y3ljbGUgY291bnQuCj4KPiArT3B0aW9uYWwgcHJvcGVydGllcyBmb3IgaW50ZXJjb25uZWN0IGZ1
bmN0aW9uYWxpdHkgKFFvUyBmcmVxdWVuY3kgY29uc3RyYWludHMpOgo+ICstIHNhbXN1bmcsaW50
ZXJjb25uZWN0LXBhcmVudDogcGhhbmRsZSB0byB0aGUgcGFyZW50IGludGVyY29ubmVjdCBub2Rl
OyBmb3IKPiArICBwYXNzaXZlIGRldmljZXMgc2hvdWxkIHBvaW50IHRvIHNhbWUgbm9kZSBhcyB0
aGUgZXh5bm9zLHBhcmVudC1idXMgcHJvcGVydHkuCj4gKy0gI2ludGVyY29ubmVjdC1jZWxsczog
c2hvdWxkIGJlIDAKPiArCj4gIERldGFpbGVkIGNvcnJlbGF0aW9uIGJldHdlZW4gc3ViLWJsb2Nr
cyBhbmQgcG93ZXIgbGluZSBhY2NvcmRpbmcgdG8gRXh5bm9zIFNvQzoKPiAgLSBJbiBjYXNlIG9m
IEV4eW5vczMyNTAsIHRoZXJlIGFyZSB0d28gcG93ZXIgbGluZSBhcyBmb2xsb3dpbmc6Cj4gICAg
ICAgICBWRERfTUlGIHwtLS0gRE1DCj4gQEAgLTE4NSw4ICsxOTAsOSBAQCBFeGFtcGxlMToKPiAg
ICAgICAgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPgo+ICBFeGFtcGxlMiA6Cj4gLSAgICAgICBUaGUgYnVzIG9mIERNQyAoRHluYW1p
YyBNZW1vcnkgQ29udHJvbGxlcikgYmxvY2sgaW4gZXh5bm9zMzI1MC5kdHNpCj4gLSAgICAgICBp
cyBsaXN0ZWQgYmVsb3c6Cj4gKyAgICAgICBUaGUgYnVzIG9mIERNQyAoRHluYW1pYyBNZW1vcnkg
Q29udHJvbGxlcikgYmxvY2sgaW4gZXh5bm9zMzI1MC5kdHNpIGlzCj4gKyAgICAgICBsaXN0ZWQg
YmVsb3cuIEFuIGludGVyY29ubmVjdCBwYXRoICJidXNfbGNkMCAtLSBidXNfbGVmdGJ1cyAtLSBi
dXNfZG1jIgo+ICsgICAgICAgaXMgZGVmaW5lZCBmb3IgZGVtb25zdHJhdGlvbiBwdXJwb3Nlcy4K
Pgo+ICAgICAgICAgYnVzX2RtYzogYnVzX2RtYyB7Cj4gICAgICAgICAgICAgICAgIGNvbXBhdGli
bGUgPSAic2Ftc3VuZyxleHlub3MtYnVzIjsKPiBAQCAtMzc2LDEyICszODIsMTUgQEAgRXhhbXBs
ZTIgOgo+ICAgICAgICAgJmJ1c19kbWMgewo+ICAgICAgICAgICAgICAgICBkZXZmcmVxLWV2ZW50
cyA9IDwmcHBtdV9kbWMwXzM+LCA8JnBwbXVfZG1jMV8zPjsKPiAgICAgICAgICAgICAgICAgdmRk
LXN1cHBseSA9IDwmYnVjazFfcmVnPjsgICAgICAvKiBWRERfTUlGICovCj4gKyAgICAgICAgICAg
ICAgICNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4gICAgICAgICAgICAgICAgIHN0YXR1cyA9
ICJva2F5IjsKPiAgICAgICAgIH07Cj4KPiAgICAgICAgICZidXNfbGVmdGJ1cyB7Cj4gICAgICAg
ICAgICAgICAgIGRldmZyZXEtZXZlbnRzID0gPCZwcG11X2xlZnRidXNfMz4sIDwmcHBtdV9yaWdo
dGJ1c18zPjsKPiAgICAgICAgICAgICAgICAgdmRkLXN1cHBseSA9IDwmYnVjazNfcmVnPjsKPiAr
ICAgICAgICAgICAgICAgc2Ftc3VuZyxpbnRlcmNvbm5lY3QtcGFyZW50ID0gPCZidXNfZG1jPjsK
PiArICAgICAgICAgICAgICAgI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPiAgICAgICAgICAg
ICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICAgICAgICAgfTsKPgo+IEBAIC0zOTIsNiArNDAxLDgg
QEAgRXhhbXBsZTIgOgo+Cj4gICAgICAgICAmYnVzX2xjZDAgewo+ICAgICAgICAgICAgICAgICBk
ZXZmcmVxID0gPCZidXNfbGVmdGJ1cz47Cj4gKyAgICAgICAgICAgICAgIHNhbXN1bmcsaW50ZXJj
b25uZWN0LXBhcmVudCA9IDwmYnVzX2xlZnRidXM+Owo+ICsgICAgICAgICAgICAgICAjaW50ZXJj
b25uZWN0LWNlbGxzID0gPDA+Owo+ICAgICAgICAgICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4g
ICAgICAgICB9Owo+Cj4gLS0KPiAyLjcuNAo+CgpJZiB5b3UgYWRkIHRoZSB1c2FnZSBleGFtcGxl
IGxpa2UgdGhlIG1peGVyIGRldmljZSBvZiBwYXRjaDUgdG8gdGhpcwpkdC1iaW5kaW5nIGRvY3Vt
ZW50LApJIHRoaW5rIGl0IGlzIHZlcnkgYmVuZWZpY2lhbCBhbmQgbW9yZSBoZWxwZnVsIGZvciB1
c2VyIG9mCmV4eW5vcy1idXMvZXh5bm9zLWdlbmVyaWMtaWNjLgoKQWNrZWQtYnk6IENoYW53b28g
Q2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tPgoKLS0KQmVzdCBSZWdhcmRzLApDaGFud29vIENo
b2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
