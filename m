Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85722FE4C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdYfcBbjq53BpCgCJwvQoem7gvot/CQTZpJcAipvbZ4=; b=n0Ft2eh0TSPZhl
	G4zaj0lgQGS6vaNaHRn4qqu1Y7TKMcXPbpvPQHrjzf7v0607W6UCCzeiOcg60VoqJMXfTyZ+9FwJF
	wbQdiuqofB42AzMIMIqLE14yZ+WINZI9ltgLyHjMqqQjdCiay5buocf+qxuTlkHmJd5FoiJO5NJjn
	HnHD25tYzBVVjegYiO132H+/x/jjOJgfNofeS/Jwvl+5jng/lNzAwXBzQIGRFDysA1FXNYYIsKCpy
	479BCkC1eecY2dZjzVY61cS0YLDV16cqYHp5bkjHR/Zx5JsEeRwX0G/AtaGwOkt2xKVuWNiXOTZw/
	edDbgCk1L7Cm3uX2M7lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVg9L-00039t-4q; Fri, 15 Nov 2019 18:16:51 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVg9C-00039U-UF; Fri, 15 Nov 2019 18:16:44 +0000
Received: by mail-il1-f193.google.com with SMTP id a7so9941845ild.6;
 Fri, 15 Nov 2019 10:16:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rKdLjfAH1h2JYCzXLa2uKNlLJWREL+e9FB64JDOkPEo=;
 b=SV5NpAceThCWRpVy6JnUHqlg6N9YN4VJUoA0yyNRZItJZe1geUos/QxVwOFwHQDBbV
 hhM5qsNh0IzJ4ZUuKxFTTUqx3kmMqeuEfWPTPB5hlkeHgiOeooJP9U+4dc75c8y9rhdY
 U2a9TddyR/UBEway0HurwldJFbfK7goWBk95Ey0fBZ0tMHwyDA+eO6Ir7bM2p8niRcV/
 hS0+5cBXG+NZBQIjRvbOthu3Bj/h28sPv5EOEY/r8+R/7Bw0J1lklJ0Wv+EYKCYajAjL
 MI9zyy2yihdf8UYegzm8Xd+jZwMcZ/n0nHUsqLTwu4UZp6/ZNwkLmZXxBUVFGRgFar5B
 y4VA==
X-Gm-Message-State: APjAAAVET2fhmcJRWcESNM5a2tIUYpLVT3kf8GYT62F6tlOTpifdShco
 u2+eDsIhPf8CXKQlnP7vWlNB2G2KouHq1IcQyQc=
X-Google-Smtp-Source: APXvYqwdBJ8rNtN+EZdewVmchYbVuye3g8V5/SEW3mhTUGjUBd6v26ZhMBNZbxiFVwipN8ZIsSBw8LNVvdEOSPaXau0=
X-Received: by 2002:a92:8605:: with SMTP id g5mr2238459ild.172.1573841801481; 
 Fri, 15 Nov 2019 10:16:41 -0800 (PST)
MIME-Version: 1.0
References: <20191115180825.10526-1-matwey@sai.msu.ru>
 <1708909.MJzrS8JzXa@diego>
In-Reply-To: <1708909.MJzrS8JzXa@diego>
From: "Matwey V. Kornilov" <matwey@sai.msu.ru>
Date: Fri, 15 Nov 2019 21:16:29 +0300
Message-ID: <CAJs94EYGmU3RYEP0bd387XEN=B_zA8rwGkJeSVqWycNPO95r=w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable PCIe for Radxa Rock Pi 4
 board
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_101642_974965_06E1EECF 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matwey.kornilov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

0L/RgiwgMTUg0L3QvtGP0LEuIDIwMTkg0LMuINCyIDIxOjE0LCBIZWlrbyBTdMO8Ym5lciA8aGVp
a29Ac250ZWNoLmRlPjoKPgo+IEhpIE1hdHdleSwKPgo+IEFtIEZyZWl0YWcsIDE1LiBOb3ZlbWJl
ciAyMDE5LCAxOTowODoyMSBDRVQgc2NocmllYiBNYXR3ZXkgVi4gS29ybmlsb3Y6Cj4gPiBSYWR4
YSBSb2NrIFBpIDQgaXMgZXF1aXBwZWQgd2l0aCBNLjIgUENJZSBzbG90LAo+ID4gc28gZW5hYmxl
IFBDSWUgZm9yIHRoZSBib2FyZC4KPiA+Cj4gPiBUaGUgY2hhbmdlcyBoYXMgYmVlbiB0ZXN0ZWQg
d2l0aCBJbnRlbCBTU0QgNjYwcCBzZXJpZXMgZGV2aWNlLgo+ID4KPiA+ICAgICAwMTowMC4wIENs
YXNzIDAxMDg6IERldmljZSA4MDg2OmYxYTggKHJldiAwMykKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5
OiBNYXR3ZXkgVi4gS29ybmlsb3YgPG1hdHdleUBzYWkubXN1LnJ1Pgo+ID4gLS0tCj4gPiAgYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay1waS00LmR0cyB8IDE0ICsrKysr
KysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKPiA+Cj4gPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay1waS00
LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2stcGktNC5kdHMK
PiA+IGluZGV4IDFhZTFlYmQ0ZWZkZC4uOWMyOTI3ZmFiYTQxIDEwMDY0NAo+ID4gLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay1waS00LmR0cwo+ID4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay1waS00LmR0cwo+ID4gQEAg
LTQ2Myw2ICs0NjMsMjAgQEAKPiA+ICAgICAgIHBtdTE4MzAtc3VwcGx5ID0gPCZ2Y2NfM3YwPjsK
PiA+ICB9Owo+ID4KPiA+ICsmcGNpZV9waHkgewo+ID4gKyAgICAgc3RhdHVzID0gIm9rYXkiOwo+
ID4gK307Cj4gPiArCj4gPiArJnBjaWUwIHsKPiA+ICsgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+
ICsKPiA+ICsgICAgIGVwLWdwaW9zID0gPCZncGlvNCBSS19QRDMgR1BJT19BQ1RJVkVfSElHSD47
Cj4gPiArICAgICBudW0tbGFuZXMgPSA8ND47Cj4gPiArICAgICBwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwo+ID4gKyAgICAgcGluY3RybC0wID0gPCZwY2llX2Nsa3JlcW5iX2NwbT47Cj4gPiAr
ICAgICBtYXgtbGluay1zcGVlZCA9IDwyPjsKPgo+IHRoZSBSb2NrUGkgc2NoZW1hdGljcyBzaG91
bGQgYmUgYXZhaWxhYmxlLCBzbyBjb3VsZCB5b3UgYWxzbyBjaGVjawo+IHRoZSBzdXBwbHkgcmVn
dWxhdG9ycyBhbmQgYWRkIHRoZW0gcGxlYXNlPwo+Cj4gVGhhbmtzCj4gSGVpa28KCkhpLAoKV2hh
dCBkbyB5b3UgbWVhbj8gcGNpZSAzLjN2IHJlZ3VsYXRvciBpcyBhbHJlYWR5IGluIGR0cy4gSSd2
ZSBjaGVja2VkCnRoYXQgaXRzIGdwaW8gaXMgY29ycmVjdGx5IGNvbmZpZ3VyZWQuCgo+Cj4KPiA+
ICt9Owo+ID4gKwo+ID4gICZwaW5jdHJsIHsKPiA+ICAgICAgIGJ0IHsKPiA+ICAgICAgICAgICAg
ICAgYnRfZW5hYmxlX2g6IGJ0LWVuYWJsZS1oIHsKPiA+Cj4KPgo+Cj4KCgotLSAKV2l0aCBiZXN0
IHJlZ2FyZHMsCk1hdHdleSBWLiBLb3JuaWxvdi4KU3Rlcm5iZXJnIEFzdHJvbm9taWNhbCBJbnN0
aXR1dGUsIExvbW9ub3NvdiBNb3Njb3cgU3RhdGUgVW5pdmVyc2l0eSwgUnVzc2lhCjExOTIzNCwg
TW9zY293LCBVbml2ZXJzaXRldHNreSBwci1rIDEzLCArNyAoNDk1KSA5MzkyMzgyCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
