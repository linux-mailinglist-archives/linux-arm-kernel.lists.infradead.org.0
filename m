Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DD8EE972
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 21:27:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QtJ4TfBtkFkjTmlq54gqw7FX0EbZBVJKYCNsyY3Cxc=; b=e/+TmDQ8Tj0B16
	WkoEv/dNwTHklm8+iN6oXtyJ97Oo5OrtJyXgAruu95UJscLIlEWyyQaUTwGstZ40Me+C7d/I2se1w
	HfN5uKKHMldXYFSo5IXOS/Yr7G+JlyX5wRtuTDavjVwE8O7xj3GIjbt3nNwGi7mtxt38/mkSCltYD
	MNx2cfrwO1noZhaMu7YkzX1ZDYHK/6RR2wN5lA0aTM2HutzK16l3pxJnrHCjzNi3+c+DkXp8C1cfp
	I17eInfBNbUaiu0IiKfaVGhRtNgYB/2wg6RqjNXUB4SBDWWvGWdPGtUfMxHsrpCYA0nGP9ukrO/s6
	26Fpk49wC1pOtPfgZY6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRiwe-0007hK-OO; Mon, 04 Nov 2019 20:27:24 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRiwX-0007gv-79
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 20:27:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id c22so17512838wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 12:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=eJjvkA6yQtTeToMH+yY3H7r37OYyno8T+dCsD7mJkTU=;
 b=EMQErTP5d17itNFyu7PdbWPHp5cK5cAgkGaCMaQn40UGPEaMM5vMNV5+resGySYHgK
 472qO460HJpl2i0elMfXUaWmN60cMbH8uqzRe+/ikjz+2lBb+5zye4B639vJbbKQJsm1
 6RaIQ0Oke2Eiejz1MR+MkLoqNQWJsD/ZKT1WQGAtobEFDhsmLNo/vhFrEfw00p6XHEpW
 yH2fHc2SKp15EXElFkLM+saatYaCma/k4bPIYvntGIq89qGt29fa7rfV2UqfY5HSMKds
 BKVZoCGC+sMsHl+8lOZLFq1gmRl2rD4WqjYmm2ysVaMx+jRwPTV2bX3LG37lnRN8G6ie
 M1kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=eJjvkA6yQtTeToMH+yY3H7r37OYyno8T+dCsD7mJkTU=;
 b=WTXOYR1wK8toPE++9+Bq+tzBDCZNdVVyYu/M3btMTaJroufa4cBrWnPHzpk/8dfJoq
 UpwT1nbQfNAJa0wy7BUrNZWV/GhBdw1Ahjk2vQM16AalrlzRH9UzqF7cQ0giDxY6HkmJ
 iWY8HO8GzEsESJLuGujcIVZiLQQjepdbT9LFIrjSxdIjZ8jqjd2vuMYsUH9gRuL09BBU
 OnP2Q4UFX5vf9jsYYT4Pth/ZAlnaPtgiQ3P1W9IeWbkruUoZAm0gR5F45yJB0lYYRK/3
 2pg7hbGQLRSkfz5GbT97ygR2KrIR37etNFWiA4dustdfEhrhSuO4vbTe8+ddLc+ydbh3
 tydw==
X-Gm-Message-State: APjAAAVIKA9+GDDbgq8Tf6G2rTAtpcJshq2Fz35CS44RRfpqGv57G/W7
 Q8jHFGH6BRujY9zNjOAoke+dr67uG+IgfRWnwmc=
X-Google-Smtp-Source: APXvYqxjf+inmW1al3DpwnzHpMgXt++cFW9P4wSUXNazxLr52mi3+w60kogzNGZ8yDGlRlLJ3xXXb3OJFfLdA9g0azQ=
X-Received: by 2002:a1c:6405:: with SMTP id y5mr831127wmb.175.1572899235350;
 Mon, 04 Nov 2019 12:27:15 -0800 (PST)
MIME-Version: 1.0
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <CAJiuCcdxHDwoQYBsrjK5dcOtMDie62DzJ84NH+bZzYHHv49fEQ@mail.gmail.com>
 <20191104201052.bxzdues2y4aqkukd@pengutronix.de>
 <524459750.Kvg9uK5Sr7@jernej-laptop>
In-Reply-To: <524459750.Kvg9uK5Sr7@jernej-laptop>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 4 Nov 2019 21:27:04 +0100
Message-ID: <CAJiuCcfCo2QiKEvaRphcBkdTtFui3ympU9aikJTmXDa4OoiXZQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] pwm: sun4i: Add an optional probe for bus clock
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_122717_285754_E01C4C5F 
X-CRM114-Status: GOOD (  39.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIDQgTm92IDIwMTkgYXQgMjE6MTksIEplcm5laiDFoGtyYWJlYyA8amVybmVq
LnNrcmFiZWNAc2lvbC5uZXQ+IHdyb3RlOgo+Cj4gRG5lIHBvbmVkZWxqZWssIDA0LiBub3ZlbWJl
ciAyMDE5IG9iIDIxOjEwOjUyIENFVCBqZSBVd2UgS2xlaW5lLUvDtm5pZwo+IG5hcGlzYWwoYSk6
Cj4gPiBIZWxsbyBDbMOpbWVudCwKPiA+Cj4gPiBPbiBNb24sIE5vdiAwNCwgMjAxOSBhdCAwNzow
NzowMFBNICswMTAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiA+IE9uIE1vbiwgNCBOb3Yg
MjAxOSBhdCAwOToyNCwgVXdlIEtsZWluZS1Lw7ZuaWcKPiA+ID4KPiA+ID4gPHUua2xlaW5lLWtv
ZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gPiA+ID4gT24gU3VuLCBOb3YgMDMsIDIwMTkg
YXQgMDk6MzM6MzBQTSArMDEwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gPiA+ID4gRnJv
bTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gPiA+ID4KPiA+
ID4gPiA+IEg2IFBXTSBjb3JlIG5lZWRzIGJ1cyBjbG9jayB0byBiZSBlbmFibGVkIGluIG9yZGVy
IHRvIHdvcmsuCj4gPiA+ID4gPgo+ID4gPiA+ID4gQWRkIGFuIG9wdGlvbmFsIHByb2JlIGZvciBp
dCBhbmQgYSBmYWxsYmFjayBmb3IgcHJldmlvdXMKPiA+ID4gPiA+IGJpbmRpbmdzIHdpdGhvdXQg
bmFtZSBvbiBtb2R1bGUgY2xvY2suCj4gPiA+ID4gPgo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
SmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gPiA+ID4gU2lnbmVk
LW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+ID4gPiA+
IC0tLQo+ID4gPiA+ID4KPiA+ID4gPiA+ICBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyB8IDM2ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiA+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAzNiBpbnNlcnRpb25zKCspCj4gPiA+ID4gPgo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcHdtL3B3bS1zdW40aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ID4gPiA+
IGluZGV4IGQxOTRiOGViZGIwMC4uYjVlN2FjMzY0ZjU5IDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEv
ZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvcHdtL3B3bS1z
dW40aS5jCj4gPiA+ID4gPiBAQCAtNzgsNiArNzgsNyBAQCBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEg
ewo+ID4gPiA+ID4KPiA+ID4gPiA+ICBzdHJ1Y3Qgc3VuNGlfcHdtX2NoaXAgewo+ID4gPiA+ID4K
PiA+ID4gPiA+ICAgICAgIHN0cnVjdCBwd21fY2hpcCBjaGlwOwo+ID4gPiA+ID4KPiA+ID4gPiA+
ICsgICAgIHN0cnVjdCBjbGsgKmJ1c19jbGs7Cj4gPiA+ID4gPgo+ID4gPiA+ID4gICAgICAgc3Ry
dWN0IGNsayAqY2xrOwo+ID4gPiA+ID4gICAgICAgc3RydWN0IHJlc2V0X2NvbnRyb2wgKnJzdDsK
PiA+ID4gPiA+ICAgICAgIHZvaWQgX19pb21lbSAqYmFzZTsKPiA+ID4gPiA+Cj4gPiA+ID4gPiBA
QCAtMzY3LDYgKzM2OCwzMSBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlCj4gPiA+ID4gPiAqcGRldik+ID4KPiA+ID4gPiBBZGRpbmcgbW9yZSBjb250
ZXh0IGhlcmU6Cj4gPiA+ID4gfCAgICAgICBwd20tPmNsayA9IGRldm1fY2xrX2dldCgmcGRldi0+
ZGV2LCBOVUxMKTsKPiA+ID4gPiB8Cj4gPiA+ID4gPiAgICAgICBpZiAoSVNfRVJSKHB3bS0+Y2xr
KSkKPiA+ID4gPiA+Cj4gPiA+ID4gPiAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKHB3bS0+
Y2xrKTsKPiA+ID4gPiA+Cj4gPiA+ID4gPiArICAgICAvKiBHZXQgYWxsIGNsb2NrcyBhbmQgcmVz
ZXQgbGluZSAqLwo+ID4gPiA+ID4gKyAgICAgcHdtLT5jbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9u
YWwoJnBkZXYtPmRldiwgIm1vZCIpOwo+ID4gPiA+ID4gKyAgICAgaWYgKElTX0VSUihwd20tPmNs
aykpIHsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiZ2V0IGNs
b2NrIGZhaWxlZCAlbGRcbiIsCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgUFRSX0VS
Uihwd20tPmNsaykpOwo+ID4gPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihwd20t
PmNsayk7Cj4gPiA+ID4gPiArICAgICB9Cj4gPiA+ID4KPiA+ID4gPiBJIGd1ZXNzIHlvdSB3YW50
IHRvIGRyb3AgdGhlIGZpcnN0IGFzc2lnbm1lbnQgdG8gcHdtLT5jbGsuCj4gPiA+Cj4gPiA+IGRl
dm1fY2xrX2dldF9vcHRpb25hbCB3aWxsIHJldHVybiBOVUxMIGlmIHRoZXJlIGlzIG5vIGVudHJ5
LCBJIGRvbid0Cj4gPiA+IGdldCB3aGVyZSBJIG5lZWQgdG8gZHJvcCBpdCBhc3NpZ25tZW50Lgo+
ID4KPiA+IFdpdGggeW91ciBwYXRjaCB0aGUgY29kZSBsb29rcyBhcyBmb2xsb3dzOgo+ID4KPiA+
ICAgICAgIHB3bS0+Y2xrID0gZGV2bV9jbGtfZ2V0KCZwZGV2LT5kZXYsIE5VTEwpOwo+ID4gICAg
ICAgaWYgKElTX0VSUihwd20tPmNsaykpCj4gPiAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJS
KHB3bS0+Y2xrKTsKPiA+Cj4gPiAgICAgICAvKiBHZXQgYWxsIGNsb2NrcyBhbmQgcmVzZXQgbGlu
ZSAqLwo+ID4gICAgICAgcHdtLT5jbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwoJnBkZXYtPmRl
diwgIm1vZCIpOwo+Cj4gQWN0dWFsbHksIGl0J3MgdGhlIG90aGVyIHdheSBhcm91bmQsIGUuZy4g
Im1vZCIgY2xvY2sgaXMgY2hlY2tlZCBmaXJzdC4KClRoZSBmaXJzdCBkZXZtX2Nsa19nZXQgaXMg
aW5kZWVkIHdyb25nLCBJIHdpbGwgcmVtb3ZlIGl0IQoKPgo+ID4gICAgICAgLi4uCj4gPgo+ID4g
VGhlIGFzc2lnbm1lbnQgdG8gcHdtLT5jbGsgYWJvdmUgdGhlIGNvbW1lbnQgaXMgdGhlIG9uZSBJ
IHN1Z2dlc3RlZCB0bwo+ID4gZHJvcC4KPgo+IE5laXRoZXIgY2FuIGJlIGRyb3BwZWQuIERUIGZp
bGVzIGZvciBvdGhlciBTb0NzIGRvbid0IGhhdmUgY2xvY2stbmFtZXMKPiBwcm9wZXJ0eSwgc28g
c2VhcmNoIGZvciAibW9kIiBjbG9jayB3aWxsIGZhaWwgYW5kIHRoZW4gZmFsbGJhY2sgb3B0aW9u
IHdpdGhvdXQKPiBuYW1lIGlzIHVzZWQuCj4KPiBCZXN0IHJlZ2FyZHMsCj4gSmVybmVqCj4KPiA+
Cj4gPiA+ID4gPiArICAgICAvKiBGYWxsYmFjayBmb3Igb2xkIGR0YnMgd2l0aCBhIHNpbmdsZSBj
bG9jayBhbmQgbm8gbmFtZSAqLwo+ID4gPiA+ID4gKyAgICAgaWYgKCFwd20tPmNsaykgewo+ID4g
PiA+ID4gKyAgICAgICAgICAgICBwd20tPmNsayA9IGRldm1fY2xrX2dldCgmcGRldi0+ZGV2LCBO
VUxMKTsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgaWYgKElTX0VSUihwd20tPmNsaykpIHsKPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKCZwZGV2LT5kZXYsICJnZXQgY2xv
Y2sgZmFpbGVkICVsZFxuIiwKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IFBUUl9FUlIocHdtLT5jbGspKTsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICByZXR1
cm4gUFRSX0VSUihwd20tPmNsayk7Cj4gPiA+ID4gPiArICAgICAgICAgICAgIH0KPiA+ID4gPiA+
ICsgICAgIH0KPiA+ID4gPgo+ID4gPiA+IFRoZXJlIGlzIGEgc2xpZ2h0IGNoYW5nZSBvZiBiZWhh
dmlvdXIgaWYgSSdtIG5vdCBtaXN0YWtlbi4gSWYgeW91IGhhdmUKPiA+ID4gPgo+ID4gPiA+IHRo
aXM6Cj4gPiA+ID4gICAgICAgICBjbG9ja3MgPSA8JmNsazE+Owo+ID4gPiA+ICAgICAgICAgY2xv
Y2stbmFtZXMgPSAibW9kIjsKPiA+ID4gPgo+ID4gPiA+ICAgICAgICAgcHdtIHsKPiA+ID4gPgo+
ID4gPiA+ICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW40aS1hMTAt
cHdtIgo+ID4gPiA+ICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsazI+Owo+ID4gPiA+Cj4g
PiA+ID4gICAgICAgICB9Cj4gPiA+ID4KPiA+ID4gPiB5b3Ugbm93IHVzZSBjbGsxIGluc3RlYWQg
b2YgY2xrMiBiZWZvcmUuCj4gPiA+ID4KPiA+ID4gPiBBc3N1bWluZyB0aGlzIGlzIG9ubHkgYSB0
aGVvcmV0aWNhbCBwcm9ibGVtLCBhdCBsZWFzdCBwb2ludGluZyB0aGlzIG91dAo+ID4gPiA+IGlu
IHRoZSBjb21taXQgbG9nIHdvdWxkIGJlIGdvb2QgSSB0aGluay4KPiA+ID4KPiA+ID4gWWVzIGl0
J3MgY29ycmVjdCBhbmQgYXMgeW91IHNhaWQgdGhlIGRyaXZlciBkb24ndCBjaGVjayBmb3IgYSBj
b3JyZWN0Cj4gPiA+IGRldmljZSB0cmVlLCB0aGF0IHdoeSBpdCdzIG5vdyBvcHRpb25hbCBwcm9i
ZS4KPiA+ID4gTGV0J3MgYXNzdW1lIHRoYXQncyB0aGUgZGV2aWNlLXRyZWUgaXMgY29ycmVjdCwg
SSB3aWxsIGFkZCBhIGNvbW1lbnQKPiA+ID4gaW4gdGhlIGNvbW1pdCBsb2cuCj4gPgo+ID4gSWYg
dGhlIG1vZCBjbG9jayB3YXMgc2hhcmVkIGJ5IGFsbCBwZXJpcGhlcmFscyBvbiB0aGUgYnVzIHRo
aXMgd291bGQgYmUKPiA+IElNSE8gcXVpdGUgZWxlZ2FudC4gUHJvYmFibHkgaXQgZGVwZW5kcyBv
biB3aGF0IHlvdSBtZWFuIGJ5IHNheWluZwo+ID4gImluY29ycmVjdCIgaWYgdGhpcyBzbmlwcGV0
IGlzIGluY29ycmVjdC4gKEl0IGNhbiBiZSBwYXJ0IG9mIGEgdmFsaWQgZHRiCj4gPiB0aGF0IGV2
ZW4gY29tcGxpZXMgdG8gdGhlIGJpbmRpbmcgZG9jdW1lbnRhdGlvbi4gSG93ZXZlciB0aGF0J3Mg
bm90IGhvdwo+ID4gYW55IGV4aXN0aW5nIGFsbHdpbm5lciBoYXJkd2FyZSBsb29rcyBsaWtlLikg
QnV0IGxldCdzIHN0b3AgYXJndWluZyBhcwo+ID4gd2UgYWdyZWUgaXQncyBhIGNvcm5lciBjYXNl
IGFuZCBpZiB5b3UgbWVudGlvbiBpdCBpbiB0aGUgY29tbWl0IGxvZwo+ID4gd2UncmUgYm90aCBo
YXBweS4KPiA+Cj4gPiA+ID4gV2hhdCBpcyB0aGF0IGNsb2NrIHVzZWQgZm9yPyBJcyBpdCByZXF1
aXJlZCB0byBhY2Nlc3MgdGhlIGhhcmR3YXJlCj4gPiA+ID4gcmVnaXN0ZXJzPyBPciBpcyBpdCBv
bmx5IHJlcXVpcmVkIHdoaWxlIHRoZSBQV00gaXMgZW5hYmxlZD8gSWYgc28geW91Cj4gPiA+ID4g
Y291bGQgZW5hYmxlIHRoZSBjbG9jayBtb3JlIGZpbmVncmFpbmRlZC4KPiA+ID4KPiA+ID4gUmVn
YXJkaW5nIHRoZSBkYXRhc2hlZXQgaXQncyByZXF1aXJlZCB0byBhY2Nlc3MgdGhlIGhhcmR3YXJl
Lgo+ID4gPiBwYWdlIDI2MSA6Cj4gPiA+IGh0dHBzOi8vbGludXgtc3VueGkub3JnL0ZpbGU6QWxs
d2lubmVyX0g2X1YyMDBfVXNlcl9NYW51YWxfVjEuMS5wZGYKPiA+IFNvIGVuYWJsaW5nIHRoZSBi
dXMgY2xvY2sgaXMgY2FsbGVkICJvcGVuIEFQQjEgQnVzIGdhdGluZyIgaW4gdGhhdAo+ID4gbWFu
dWFsPyBJZiBJIHVuZGVyc3RhbmQgdGhhdCBjb3JyZWN0bHkgdGhlIGJ1cyBjbG9jayB0aGVuIG9u
bHkgbmVlZCB0bwo+ID4gYmUgb24gd2hpbGUgYWNjZXNzaW5nIHRoZSByZWdpc3RlcnMgYW5kIGNv
dWxkIGJlIGRpc2FibGVkIG9uY2UgdGhlCj4gPiBoYXJkd2FyZSBpcyBwcm9ncmFtbWVkIGFuZCBy
dW5uaW5nLgo+ID4KPiA+IENhbiB5b3UgcGxlYXNlIGRlc2NyaWJlIHRoYXQgaW4gYSBjb21tZW50
LiBTb21ldGhpbmcgbGlrZToKPiA+Cj4gPiAgICAgICAvKgo+ID4gICAgICAgICogV2UncmUga2Vl
cGluZyB0aGUgYnVzIGNsb2NrIG9uIGZvciB0aGUgc2FrZSBvZiBzaW1wbGljaXR5Lgo+ID4gICAg
ICAgICogQWN0dWFsbHkgaXQgb25seSBuZWVkcyB0byBiZSBvbiBmb3IgaGFyZHdhcmUgcmVnaXN0
ZXIKPiA+ICAgICAgICAqIGFjY2Vzc2VzLgo+ID4gICAgICAgICovCj4gPgo+ID4gc2hvdWxkIGJl
IGZpbmUuIFRoaXMgd2F5IGl0J3MgYXQgbGVhc3Qgb2J2aW91cyB0aGF0IHRoZSBoYW5kbGluZyBj
b3VsZAo+ID4gYmUgaW1wcm92ZWQuCj4gPgo+ID4gQmVzdCByZWdhcmRzCj4gPiBVd2UKPgo+Cj4K
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
