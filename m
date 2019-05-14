Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEA61C6E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 12:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0JAnY7Zen5UTCeFDJGe+JflCe5VTqA8jfSzzxnll3k=; b=L6THZjRsIt67lT
	6cjCHlmSzk793roJeQLI7547mmEmmytsHro4fHo1ylWbr3kW+BBqFh+xIM1GLJVW6BJJXFNWChsSu
	dUVaBmtWHqBGtDAbzVwEj/HGd4DfbtNenx+WD5Nvs9BpPeNx5ttvnNQWnAJalyNPsu/2KQG7jUlhM
	UbF9dBD/9fhwY2A2Nxb3XXgc3z8p9Jlp/pXDW5LfqCZyzO0Yrw+PBrBffqz9Ntiz2OLkfGt4dgU9M
	Pj8lJSWfmoKBsWd3f6QDYaSn3jwVXfaKqTtFOixFL4NZKMcdLDK5CHmusiTHTyGm5goPLnVIefP6q
	WrQYGQ3PzUcuNTd9Qv/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQUWI-00056G-0W; Tue, 14 May 2019 10:18:50 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQUWA-00055u-OW
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 10:18:44 +0000
Received: by mail-ed1-f66.google.com with SMTP id w33so22080447edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 03:18:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ORyjFaWPbaw6KQxgFwnjj56eUspz8KmYIPTpXxpUWBU=;
 b=PANP/+G8QFUP669Dwr52yK3vs5eZH6FrwVskJskQo8WFD8jqiloilwTxCGxzwJYNII
 /9Sw6fmVKjs/ul0m2kPH4aRHrrEwZlKM3rJ+sBMrE13Cepl4I3TLqglavVqZYCDiZlKQ
 sr3OQ8lsVWWMn+k/Wma7k7unWGx58T5/ue+wMtKBfwgL8nRd9EQqR0W/H1ALTyvZ5Iua
 blbBkJEjseZUxXI5zkTB46GYN0C34VdWtHsiNSkbEFp6PlIvBIIAQMc5CBd5/d6ZHeL4
 Lyv1lSvBwnqMH3L5OjlCtsU2KKTCmYnk9+dRRaonQjgjVifQzqvT3MuoClk6p+BoVIQz
 I2AQ==
X-Gm-Message-State: APjAAAVanww1CxodMtH45sZVBXtFSaeDhyPRdQFZ+zg8X8nd46xJG+Is
 dhXd/CJaGwYm8aBrvPbbb/ikPu88dZE=
X-Google-Smtp-Source: APXvYqwafmCAOH18K9mLgn9mFxbwWTvwyKgLaX1WT5Nef3acRuRRgyKmGPOtq/lmN7gH/5pnHd3Gjw==
X-Received: by 2002:a50:acc1:: with SMTP id x59mr34802395edc.264.1557829120593; 
 Tue, 14 May 2019 03:18:40 -0700 (PDT)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id j3sm4174636edh.82.2019.05.14.03.18.39
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 03:18:40 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id w8so16104144wrl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 03:18:39 -0700 (PDT)
X-Received: by 2002:a5d:688f:: with SMTP id h15mr10564376wru.44.1557829119553; 
 Tue, 14 May 2019 03:18:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190512174608.10083-1-peron.clem@gmail.com>
 <20190512174608.10083-6-peron.clem@gmail.com>
 <CAMty3ZBTO9+9HLikR8=KgWZQBp+1yVgxQ_rD-E8WeJ8VvpuAcA@mail.gmail.com>
In-Reply-To: <CAMty3ZBTO9+9HLikR8=KgWZQBp+1yVgxQ_rD-E8WeJ8VvpuAcA@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 14 May 2019 18:18:27 +0800
X-Gmail-Original-Message-ID: <CAGb2v64QpH2uL3Q2=ePEaYhrB1_J5uNT4VnBssBgwbOB0NDD0Q@mail.gmail.com>
Message-ID: <CAGb2v64QpH2uL3Q2=ePEaYhrB1_J5uNT4VnBssBgwbOB0NDD0Q@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v4 5/8] arm64: dts: allwinner: Add mali GPU
 supply for Pine H64
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_031842_793033_AB7DF569 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMTMsIDIwMTkgYXQgMjoyOCBBTSBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxh
c29sdXRpb25zLmNvbT4gd3JvdGU6Cj4KPiBPbiBTdW4sIE1heSAxMiwgMjAxOSBhdCAxMToxNiBQ
TSA8cGVyb24uY2xlbUBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IEZyb206IENsw6ltZW50IFDD
qXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4gPgo+ID4gRW5hYmxlIGFuZCBhZGQgc3VwcGx5
IHRvIHRoZSBNYWxpIEdQVSBub2RlIG9uIHRoZQo+ID4gUGluZSBINjQgYm9hcmQuCj4gPgo+ID4g
U2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+
IC0tLQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2
NC5kdHMgfCA1ICsrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+ID4K
PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYt
cGluZS1oNjQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBp
bmUtaDY0LmR0cwo+ID4gaW5kZXggNDgwMjkwMmUxMjhmLi5lMTZhOGM2NzM4ZjkgMTAwNjQ0Cj4g
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtcGluZS1oNjQu
ZHRzCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtcGlu
ZS1oNjQuZHRzCj4gPiBAQCAtODUsNiArODUsMTEgQEAKPiA+ICAgICAgICAgc3RhdHVzID0gIm9r
YXkiOwo+ID4gIH07Cj4gPgo+ID4gKyZncHUgewo+ID4gKyAgICAgICBtYWxpLXN1cHBseSA9IDwm
cmVnX2RjZGNjPjsKPiA+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4KPiBJIHRo
aW5rIHdlIGNhbiBzcXVhc2ggYWxsIHRoZXNlIGJvYXJkIGR0cyBjaGFuZ2VzIGludG8gc2luZ2xl
IHBhdGNoLgoKWWVzLiBQbGVhc2UgZG8gc28gZm9yIGFsbCBwYXRjaGVzIHdpdGggdGhlIHNhbWUg
Y2hhbmdlcyBhcHBsaWVkIHRvIGRpZmZlcmVudApib2FyZHMsIGFuZCBhdXRob3JlZCBieSB0aGUg
c2FtZSBwZXJzb24uCgpDaGVuWXUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
