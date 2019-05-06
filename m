Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9571451D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 09:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kJWt85q/1qXfElpwQ2R6K5WbbomTqCmx/8xRRTI514=; b=Jqk94Q8qZ0vjCR
	EEB5zCU1WznqGAi22ngBLPGWrop/wqwMo318z91YeRR3mYNRRbKN7GRSsK/O/ysI6HIIaLSvvT8Zs
	BOwEWrbSDP1R6RUMY27jhitRW1lO+tcvapMakROjtOvqmLi4nSiklRNQe4RMXCq8CYMS8514AD52j
	GUf0h2dlsuqrURm4wk0S0MNJVX8eolbA8OvPmM+GFIXe/yon+Sf/EeQT5zRswP+STJK8pwer/P8+y
	M48UEVCxTynGnF4ZdTQ+YH8QqPmwGUo3Lc/zbUe5ULTOX67hhbbGPrOtuur3/aXEa/JiDJ2jkqgjo
	yuqwxAKsKzyfCobaeQaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNY0s-0008HP-N0; Mon, 06 May 2019 07:26:14 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNY0h-0008Ag-CG
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 07:26:06 +0000
Received: by mail-qt1-x841.google.com with SMTP id d13so13628295qth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 00:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WNzn2D4LRFx0zq3ZMJPIJy2EHlJS0W/qRQO2E0djUbU=;
 b=BNjPq9C+fBd/dv+/34M6FL3Z2Pm8FqkPX6Z0HermdNoQMhO2azmmLW0MQfnj03p0b7
 G6hf2mwmU8G01N1ZkBrVVnNTG3r/otxtMeOTBFZyxhj9vjvZCeYarFlh3Z+YyBY0s7Q/
 n5Ij8Ly4cHNdL1GIhiFJUJEIk2EyVcRbn5+YyKfmsJgOjDdssNnRASzFPFZlWcaJ1nZL
 6qsOPoYcGCuqWRDZU55zWXSw6lOexvFw8+spMo1mmr7iFZQvKXYQdHz2IovIeSjmrZGM
 B4ttVnpCIIV/hKVyr9iZSiQvZCjroyPAYOk7dvqikc9cLkahrr/tOydJFEwW4Kjn48A2
 qiAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WNzn2D4LRFx0zq3ZMJPIJy2EHlJS0W/qRQO2E0djUbU=;
 b=pebKUk5s5iHq8hlnSawC/hzE0NKpZcOaN9j3JllhqQYJaMzo8lOS4Cfu6KWlQzNuf5
 rfP1deYjuUmQObjL6d79pei1XywywN6b3mnFVG3etXVR9XA8NBKmsyk7L2KAcP0N18Or
 gHiwbqYT0ircznDNW1r0KxSbPkK98MUKvVsjs0Iy73kIcHpbTzZQVF1s13hZXjvbRttx
 sCj2LNmctus+MvDWM5gXZgD/f4W/22UfQNmRIDd8RSGDJ3aQ1JGZZIGZpMA31D3+AVCb
 tidV2VfzImOm4NK0Jn0Nq0WIe1qnBtmWa3Ds2IuhUDTvSvHZrCyFXZUhQKOvYjDPHH4s
 BzJA==
X-Gm-Message-State: APjAAAXL924yN0QPCdDnyY2dMBzM0GTl7rgYSTHm8nFvxUJU/rQnyYje
 XW/JlFNxkJarjh2b4UBKuFUL7FSiF53WyJwO/ZPu6g==
X-Google-Smtp-Source: APXvYqw4GFj4q4UVpUiDKBHF6OghiHzU5JrTfWPLaCo7KAV2UX+jBKeVBbLTsVkPr/PjAhKVuoZEyF0uUBi9eKD6m8o=
X-Received: by 2002:aed:3fad:: with SMTP id s42mr20026506qth.335.1557127562156; 
 Mon, 06 May 2019 00:26:02 -0700 (PDT)
MIME-Version: 1.0
References: <1556114601-30936-1-git-send-email-fabien.dessenne@st.com>
 <1556114601-30936-3-git-send-email-fabien.dessenne@st.com>
 <03f53dcc-816f-c017-f420-5eacc1fa486d@st.com>
In-Reply-To: <03f53dcc-816f-c017-f420-5eacc1fa486d@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Mon, 6 May 2019 09:25:51 +0200
Message-ID: <CA+M3ks6bGqux=D+8PgEn9ovGBEbUzkWSshB81Zy1OTG+U4Ww-w@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/stm: ltdc: return appropriate error code during
 probe
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_002603_463471_1CC3232D 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Fabien DESSENNE <fabien.dessenne@st.com>,
 Yannick FERTRE <yannick.fertre@st.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Vincent ABRIOU <vincent.abriou@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgdmVuLiAyNiBhdnIuIDIwMTkgw6AgMTQ6MzAsIFBoaWxpcHBlIENPUk5VIDxwaGlsaXBwZS5j
b3JudUBzdC5jb20+IGEgw6ljcml0IDoKPgo+IEhpIEZhYmllbiwKPiBhbmQgdGhhbmsgeW91IGZv
ciB5b3VyIHBhdGNoLAo+Cj4gQWNrZWQtYnk6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBwZS5jb3Ju
dUBzdC5jb20+Cj4KPiBQaGlsaXBwZSA6LSkKPgo+IE9uIDQvMjQvMTkgNDowMyBQTSwgRmFiaWVu
IERlc3Nlbm5lIHdyb3RlOgo+ID4gRHVyaW5nIHByb2JlLCByZXR1cm4gdGhlICJjbGtfZ2V0IiBl
cnJvciB2YWx1ZSBpbnN0ZWFkIG9mIC1FTk9ERVYuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRmFi
aWVuIERlc3Nlbm5lIDxmYWJpZW4uZGVzc2VubmVAc3QuY29tPgoKQXBwbGllZCBvbiBkcm0tbWlz
Yy1uZXh0LgpUaGFua3MsCkJlbmphbWluCgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9z
dG0vbHRkYy5jIHwgNSArKystLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3Rt
L2x0ZGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCj4gPiBpbmRleCA1MjFiYTgzLi45
NzkxMmUyIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMKPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCj4gPiBAQCAtMTE0NSw4ICsxMTQ1LDkgQEAg
aW50IGx0ZGNfbG9hZChzdHJ1Y3QgZHJtX2RldmljZSAqZGRldikKPiA+Cj4gPiAgICAgICBsZGV2
LT5waXhlbF9jbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAibGNkIik7Cj4gPiAgICAgICBpZiAoSVNf
RVJSKGxkZXYtPnBpeGVsX2NsaykpIHsKPiA+IC0gICAgICAgICAgICAgRFJNX0VSUk9SKCJVbmFi
bGUgdG8gZ2V0IGxjZCBjbG9ja1xuIik7Cj4gPiAtICAgICAgICAgICAgIHJldHVybiAtRU5PREVW
Owo+ID4gKyAgICAgICAgICAgICBpZiAoUFRSX0VSUihsZGV2LT5waXhlbF9jbGspICE9IC1FUFJP
QkVfREVGRVIpCj4gPiArICAgICAgICAgICAgICAgICAgICAgRFJNX0VSUk9SKCJVbmFibGUgdG8g
Z2V0IGxjZCBjbG9ja1xuIik7Cj4gPiArICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKGxkZXYt
PnBpeGVsX2Nsayk7Cj4gPiAgICAgICB9Cj4gPgo+ID4gICAgICAgaWYgKGNsa19wcmVwYXJlX2Vu
YWJsZShsZGV2LT5waXhlbF9jbGspKSB7Cj4gPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
