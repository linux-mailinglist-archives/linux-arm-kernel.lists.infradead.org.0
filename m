Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B36AEE699
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 18:50:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JDUYYoOYR8nujkD7QKn1ft428z2WOVAfgTAw25MFSkY=; b=qQ9CFKRAYxa0d2
	ug6Uhh7Uwkfbd/sRgK7jp5qiD8MioihEeyba7EHbRncnmZbEzqRj4RPoZUFhai2AnjlbhVn2cPHcs
	aFZgc8bHEJ8rBwN0iyBrSxg2JpinmtyJhOcoHMAPnvQvDiJoZWrjHln1vlyXzGVwN86LekL3gCJr4
	vvcWKXRxozMCYJ9XzDz3s5c+JIpNhdkc0juUR+uyq4VNeHAL8KtLKvsuHlEdsecS1SCcKnjH03Xbh
	WNfW/cXO4p0eUDP79unlr26X7GYVhO2ZFle9TM52ujYdzf5AJ/pYYLuzIaIUnY2vlOUhSBROSANy4
	w4hs+x5pHdfA65y0CoOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgUh-00075u-Tx; Mon, 04 Nov 2019 17:50:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgUb-00075X-A5
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 17:50:18 +0000
Received: by mail-wr1-x443.google.com with SMTP id e6so16308107wrw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 09:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=m94FYTExTuK3Mfiu36VL06K2ivGj3SQOoQZxQ/LDw2c=;
 b=cr0DotEmhjNmnCMQXTyhOY2KyKrQak+kBGAXu2Kxf/WFotSGU/E3UHz3vLBBzElv9Z
 RXahCdVzNwqaWjNR1NVUnULozga+oIO7hfV8YVpOF+S8pBiBOkJAb/kWeEFj0ydy2pXQ
 CEV0VElav1xCD0qfDPwQie5UoD/aL3xvbRSRKCwgvRxDEmGSfd7O6irvCWfYX5328Ndn
 o0scwGV+72tfu0tL0NxZ3K+nx/+W2rt5nUF1EQgKT3ztd+wMp+RbWM419FDsmmMqgPzH
 xOJMsOvf4U9netx0WYcWLaDvS/F+nM2PZ4dAYLYNfsbKuwmtF/jCzXcQ44af+lTsErYl
 ELmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=m94FYTExTuK3Mfiu36VL06K2ivGj3SQOoQZxQ/LDw2c=;
 b=pMoBazf+Lz1Zs0mKRgtw7TPuvAsnQo/gRocDzy/u78rwky681hFiab/ioUTsTpc2zJ
 4XsqpvxKpimZK3Q2rcOOt3jMEC7i/h5xGjwvwkqH5RbcNjLJplrrLSwLMGIptPa0pD4p
 mHr+VJO2kjmFl2xSN2N4S3Qg1yUJezkPkUOw2/+pRQMn9ta1LPZviPky0TBNA7H89PXQ
 SRePewiEJF2CbHh2cVyBsfAmVRhQZYxxIYky3d7t80ycS2iUCM4gf4ESYVZtf41Emrlu
 oYE5kotl2gJ9yFchoR4ioeRAp4KyoC/wkWXj/T+o0XPENBLPR3btH51Rz77OBXVHnKHm
 0Xjw==
X-Gm-Message-State: APjAAAWqHuWIOYRKqJYMeQb2A5Icv2Jq5Bz0gzDjBH6lmRUcGhuWvG3Q
 y0/WrY+JQOkM/QhfBwc2hJECg53YviEuDy8eAlI=
X-Google-Smtp-Source: APXvYqwlmheL10KRkZaC8TiycingWU/KdZ9jEWxiWxUEKoexcK5EdWf6Y7aSbQLpvNsAFVsuhvFwI6EPxiqiRGviaUM=
X-Received: by 2002:a5d:4b42:: with SMTP id w2mr23682320wrs.360.1572889815473; 
 Mon, 04 Nov 2019 09:50:15 -0800 (PST)
MIME-Version: 1.0
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <20191103203334.10539-3-peron.clem@gmail.com>
 <20191104081157.373v22atswsaktbe@pengutronix.de>
In-Reply-To: <20191104081157.373v22atswsaktbe@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 4 Nov 2019 18:50:04 +0100
Message-ID: <CAJiuCcfEjE9qWqKyv5kyW_hTwO=L8eCuSoBEBvLZYm9JAV0O-w@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] pwm: sun4i: Add an optional probe for reset line
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_095017_352127_41ABD0D0 
X-CRM114-Status: GOOD (  25.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCA0IE5vdiAyMDE5IGF0IDA5OjExLCBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVpbmUt
a29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IEhlbGxvLAo+Cj4gYWRkaW5nIFBoaWxp
cHAgWmFiZWwgKD0gcmVzZXQgY29udHJvbGxlciBtYWludGFpbmVyKSB0byBDYzogYW5kIHNvIEkn
bQo+IG5vdCBzdHJpcHBpbmcgdGhlIHVuY29tbWVudGVkIHBhcnRzIG9mIHRoZSBwYXRjaC4KPgo+
IE9uIFN1biwgTm92IDAzLCAyMDE5IGF0IDA5OjMzOjI5UE0gKzAxMDAsIENsw6ltZW50IFDDqXJv
biB3cm90ZToKPiA+IEZyb206IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5l
dD4KPiA+Cj4gPiBINiBQV00gY29yZSBuZWVkcyBkZWFzc2VydGVkIHJlc2V0IGxpbmUgaW4gb3Jk
ZXIgdG8gd29yay4KPiA+Cj4gPiBBZGQgYW4gb3B0aW9uYWwgcHJvYmUgZm9yIGl0Lgo+ID4KPiA+
IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4K
PiA+IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+
Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyB8IDMyICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1zdW40
aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+IGluZGV4IDZmNTg0MGExYTgyZC4uZDE5
NGI4ZWJkYjAwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ICsr
KyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiBAQCAtMTYsNiArMTYsNyBAQAo+ID4gICNp
bmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1f
ZGV2aWNlLmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L3B3bS5oPgo+ID4gKyNpbmNsdWRlIDxsaW51
eC9yZXNldC5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4gPiAgI2luY2x1ZGUgPGxp
bnV4L3NwaW5sb2NrLmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L3RpbWUuaD4KPiA+IEBAIC03OCw2
ICs3OSw3IEBAIHN0cnVjdCBzdW40aV9wd21fZGF0YSB7Cj4gPiAgc3RydWN0IHN1bjRpX3B3bV9j
aGlwIHsKPiA+ICAgICAgIHN0cnVjdCBwd21fY2hpcCBjaGlwOwo+ID4gICAgICAgc3RydWN0IGNs
ayAqY2xrOwo+ID4gKyAgICAgc3RydWN0IHJlc2V0X2NvbnRyb2wgKnJzdDsKPiA+ICAgICAgIHZv
aWQgX19pb21lbSAqYmFzZTsKPiA+ICAgICAgIHNwaW5sb2NrX3QgY3RybF9sb2NrOwo+ID4gICAg
ICAgY29uc3Qgc3RydWN0IHN1bjRpX3B3bV9kYXRhICpkYXRhOwo+ID4gQEAgLTM2NSw2ICszNjcs
MjAgQEAgc3RhdGljIGludCBzdW40aV9wd21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPiA+ICAgICAgIGlmIChJU19FUlIocHdtLT5jbGspKQo+ID4gICAgICAgICAgICAgICBy
ZXR1cm4gUFRSX0VSUihwd20tPmNsayk7Cj4gPgo+ID4gKyAgICAgcHdtLT5yc3QgPSBkZXZtX3Jl
c2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYsIE5VTEwpOwo+ID4gKyAgICAgaWYg
KElTX0VSUihwd20tPnJzdCkpIHsKPiA+ICsgICAgICAgICAgICAgaWYgKFBUUl9FUlIocHdtLT5y
c3QpID09IC1FUFJPQkVfREVGRVIpCj4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIFBU
Ul9FUlIocHdtLT5yc3QpOwo+ID4gKyAgICAgICAgICAgICBkZXZfaW5mbygmcGRldi0+ZGV2LCAi
bm8gcmVzZXQgY29udHJvbCBmb3VuZFxuIik7Cj4KPiBJIHdvdWxkIGRlZ3JhZGUgdGhpcyB0byBh
IGRldl9kYmcuIE90aGVyd2lzZSB0aGlzIHNwYW1zIHRoZSBsb2cgZm9yIGFsbAo+IHVuYWZmZWN0
ZWQgbWFjaGluZXMuIGRldm1fcmVzZXRfY29udHJvbF9nZXRfb3B0aW9uYWwoKSBpcyBkZWZpbmVk
IGluIGEKPiBzZWN0aW9uIHRoYXQgaGFzIGEgY29tbWVudCAiVGhlc2UgaW5saW5lIGZ1bmN0aW9u
IGNhbGxzIHdpbGwgYmUgcmVtb3ZlZAo+IG9uY2UgYWxsIGNvbnN1bWVycyBoYXZlIGJlZW4gbW92
ZWQgb3ZlciB0byB0aGUgbmV3IGV4cGxpY2l0IEFQSS4iLCBzbyBJCj4gZ3Vlc3MgeW91IHdhbnQg
ZGV2bV9yZXNldF9jb250cm9sX2dldF9vcHRpb25hbF9leGNsdXNpdmUgb3IgZXZlbgo+IGRldm1f
cmVzZXRfY29udHJvbF9nZXRfb3B0aW9uYWxfc2hhcmVkIGhlcmUuClRoYW5rcyBmb3IgcG9pbnRp
bmcgdGhpcywgSSB3aWxsIGNoYW5nZSBpdC4KCj4KPiBAUGhpbGlwcDogbWF5YmUgYSBjaGVjayBp
biBjaGVja3BhdGNoIHRoYXQgd2FybnMgYWJvdXQgaW50cm9kdWN0aW9uIG9mCj4gc3VjaCBuZXcg
aW5zdGFuY2VzIHdvdWxkIGJlIGdvb2Q/IQo+Cj4gPiArICAgICB9Cj4gPiArCj4gPiArICAgICAv
KiBEZWFzc2VydCByZXNldCAqLwo+ID4gKyAgICAgcmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2Vy
dChwd20tPnJzdCk7Cj4gPiArICAgICBpZiAocmV0KSB7Cj4gPiArICAgICAgICAgICAgIGRldl9l
cnIoJnBkZXYtPmRldiwgIkNhbm5vdCBkZWFzc2VydCByZXNldCBjb250cm9sXG4iKTsKPiA+ICsg
ICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ICsgICAgIH0KPiA+ICsKPiA+ICAgICAgIHB3bS0+
Y2hpcC5kZXYgPSAmcGRldi0+ZGV2Owo+ID4gICAgICAgcHdtLT5jaGlwLm9wcyA9ICZzdW40aV9w
d21fb3BzOwo+ID4gICAgICAgcHdtLT5jaGlwLmJhc2UgPSAtMTsKPiA+IEBAIC0zNzcsMTkgKzM5
MywzMSBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ID4gICAgICAgcmV0ID0gcHdtY2hpcF9hZGQoJnB3bS0+Y2hpcCk7Cj4gPiAgICAg
ICBpZiAocmV0IDwgMCkgewo+ID4gICAgICAgICAgICAgICBkZXZfZXJyKCZwZGV2LT5kZXYsICJm
YWlsZWQgdG8gYWRkIFBXTSBjaGlwOiAlZFxuIiwgcmV0KTsKPiA+IC0gICAgICAgICAgICAgcmV0
dXJuIHJldDsKPiA+ICsgICAgICAgICAgICAgZ290byBlcnJfcHdtX2FkZDsKPiA+ICAgICAgIH0K
PiA+Cj4gPiAgICAgICBwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBwd20pOwo+ID4KPiA+ICAg
ICAgIHJldHVybiAwOwo+ID4gKwo+ID4gK2Vycl9wd21fYWRkOgo+ID4gKyAgICAgcmVzZXRfY29u
dHJvbF9hc3NlcnQocHdtLT5yc3QpOwo+ID4gKwo+ID4gKyAgICAgcmV0dXJuIHJldDsKPiA+ICB9
Cj4gPgo+ID4gIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+ID4gIHsKPiA+ICAgICAgIHN0cnVjdCBzdW40aV9wd21fY2hpcCAqcHdtID0g
cGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4gPiArICAgICBpbnQgcmV0Owo+ID4gKwo+ID4g
KyAgICAgcmV0ID0gcHdtY2hpcF9yZW1vdmUoJnB3bS0+Y2hpcCk7Cj4gPiArICAgICBpZiAocmV0
KQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gKwo+ID4gKyAgICAgcmVzZXRfY29u
dHJvbF9hc3NlcnQocHdtLT5yc3QpOwo+ID4KPiA+IC0gICAgIHJldHVybiBwd21jaGlwX3JlbW92
ZSgmcHdtLT5jaGlwKTsKPiA+ICsgICAgIHJldHVybiAwOwo+ID4gIH0KPiA+Cj4gPiAgc3RhdGlj
IHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgc3VuNGlfcHdtX2RyaXZlciA9IHsKPgo+IEJlc3QgcmVn
YXJkcwo+IFV3ZQo+Cj4gLS0KPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCBVd2UgS2xlaW5lLUvDtm5pZyAgICAgICAgICAgIHwKPiBJbmR1c3RyaWFsIExpbnV4
IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAg
fAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
