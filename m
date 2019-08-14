Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B74348CEFC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:05:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cG2UHA4ipVRO3r8H2Da75adwm1wDFa17XUBD2oNf7Hs=; b=LJC4O3RLj+WgBW
	8FvSwmJwqY2kohJv2e8wz1G8gdzhNVkIJUnHWHltFrpn7dlfjTLIFs6qxD0JBWcv8YiD3+DppSA6F
	/LRPoU5P0OU+GlFFTwj5M566GYAD/EGtW4nqVzMXVpHRD44FjpJ1L3aVWDU+emdun6LGecRXYVw0f
	5zvwImnE20UZFZ5+f+4B0yU+TtTLb/h67N1x9l57q5WahmLH5HDSn524rXGDmRanYW+Iq+k7pwYgo
	ua1894NGlnRjcnnVRLnLlBWBRizeqTl8YOLJqCVxip/Z3sxAWLkRoEWL4bxk/veZQYPJHP5JdKY97
	0J5/nbpo+ObC2OWAR0lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpD7-00010k-VX; Wed, 14 Aug 2019 09:04:50 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpCC-0000h5-Mv
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:03:54 +0000
Received: by mail-lj1-x244.google.com with SMTP id l14so14154088lje.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 02:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GeeM10QL+PlKdTTdajiUgNYKAysRWONknFw7/BXOzz8=;
 b=Q//okcr2qvIkPG7ZD9aY3pbMgMVby5WdUQloYY1Xo43qDpVOucUGR0elIoYXwKkL9j
 8Yktm6lev1ny9/U/0FYHfCO/3YeyggCJJzF/4LZfk1HfL3nk6YnK4StBEiSyCzyl3bGh
 cDj3CSfET2Z0euj5yT286HsXxwzXvdcRjXdJyCIKQ/lh+bM+Rj3onYGoqU3ZsQGka74/
 UqY4mCmgxQGxA7UavNxwPWkP38MG7iQkcoF4K1WvL3s2HogOD4zwT6f2ZKZMLZAkISIs
 2nl0+9XRC+noMVbCpLsadUjWuCYTIAYTcpwLDMS23T5ypWwzcTE7KlIfHoTdqxJW4gsF
 gLbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GeeM10QL+PlKdTTdajiUgNYKAysRWONknFw7/BXOzz8=;
 b=JkuDW2REq1RAjPK9HxL66oaNlK7Bd7BtOiaRfCEuGrEOYtNBtZmZVq7Cu3jZIjMFmk
 NUzpHT09FFhC7asUdr6nsQpz1cnxBrYrQ9ZPgdk2y0LLUgSiRkQ5Pn7jmzsQ3g31OuIv
 noBPZn/38c8uebNChC+jrjxkW7jlsFjaBSTuhVYKKUZpVpfWSionp0UQPK5hYR1hEuz6
 xjVZk02AqGJTk408zhLDRZ0Ldfx6J5ZKyGESbSxrEc+P3Ctk3ynYjkqQsK7Vmrk0n4K5
 ElW09HFm1gOhoVjPhcSFm8Q3vmYdXZW57FFJQACdqUy7+IxnXFy3o878PxInRdg5rUoi
 38Xg==
X-Gm-Message-State: APjAAAV2ozY7E6lqpDbuIETex5W7l5yTpaTbh1V7Q6jX/jqjx57z8rHj
 RfA54MNxRgTqA1mnEKTTPJKwO5UQQDiXcYUmVsE=
X-Google-Smtp-Source: APXvYqxZs4VpjO4Q/Y9NDFC8T6oU4FSnVEUWvGpuAB/Ra4r8IZP549jer0SM/xv1p3Gtrkbn3Q4Bb+PJb1sRPXpCRv8=
X-Received: by 2002:a2e:720c:: with SMTP id n12mr656662ljc.53.1565773430959;
 Wed, 14 Aug 2019 02:03:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-15-codekipper@gmail.com>
 <4297791.2mJM636zur@jernej-laptop>
In-Reply-To: <4297791.2mJM636zur@jernej-laptop>
From: Code Kipper <codekipper@gmail.com>
Date: Wed, 14 Aug 2019 11:03:39 +0200
Message-ID: <CAEKpxBmsLKt_mKFC3=wR9n+hK9njhh7drLV2EMrzKahv=s4dTw@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v5 14/15] ASoc: sun4i-i2s: Add 20, 24 and 32
 bit support
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_020352_927417_F6D4D178 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <maxime.ripard@free-electrons.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxNCBBdWcgMjAxOSBhdCAxMDoyOCwgSmVybmVqIMWga3JhYmVjIDxqZXJuZWouc2ty
YWJlY0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkhCj4KPiBEbmUgc3JlZGEsIDE0LiBhdmd1c3Qg
MjAxOSBvYiAwODowODo1MyBDRVNUIGplIGNvZGVraXBwZXJAZ21haWwuY29tCj4gbmFwaXNhbChh
KToKPiA+IEZyb206IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgo+ID4KPiA+
IEV4dGVuZCB0aGUgZnVuY3Rpb25hbGl0eSBvZiB0aGUgZHJpdmVyIHRvIGluY2x1ZGUgc3VwcG9y
dCBvZiAyMCBhbmQKPiA+IDI0IGJpdHMgcGVyIHNhbXBsZSBmb3IgdGhlIGVhcmxpZXIgU29Dcy4K
PiA+Cj4gPiBOZXdlciBTb0NzIGNhbiBhbHNvIGhhbmRsZSAzMmJpdCBzYW1wbGVzLgo+ID4KPiA+
IFNpZ25lZC1vZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgo+ID4g
LS0tCj4gPiAgc291bmQvc29jL3N1bnhpL3N1bjRpLWkycy5jIHwgMjEgKysrKysrKysrKysrKysr
KysrKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL3NvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYyBiL3Nv
dW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYwo+ID4gaW5kZXggYTcxOTY5MTY3MDUzLi5kM2M4Nzg5
ZjcwYmIgMTAwNjQ0Cj4gPiAtLS0gYS9zb3VuZC9zb2Mvc3VueGkvc3VuNGktaTJzLmMKPiA+ICsr
KyBiL3NvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYwo+ID4gQEAgLTY5MCw2ICs2OTAsMTEgQEAg
c3RhdGljIGludCBzdW40aV9pMnNfaHdfcGFyYW1zKHN0cnVjdCBzbmRfcGNtX3N1YnN0cmVhbQo+
ID4gKnN1YnN0cmVhbSwgY2FzZSAxNjoKPiA+ICAgICAgICAgICAgICAgd2lkdGggPSBETUFfU0xB
VkVfQlVTV0lEVEhfMl9CWVRFUzsKPiA+ICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiArICAgICBj
YXNlIDIwOgo+ID4gKyAgICAgY2FzZSAyNDoKPiA+ICsgICAgIGNhc2UgMzI6Cj4KPiBwYXJhbXNf
cGh5c2ljYWxfd2lkdGgoKSByZXR1cm5zIDMyIGFsc28gZm9yIDIwIGFuZCAyNC1iaXQgZm9ybWF0
cywgc28gZHJvcCAyMAo+IGFuZCAyNC4KQUNLCj4KPiBCZXN0IHJlZ2FyZHMsCj4gSmVybmVqCj4K
PiA+ICsgICAgICAgICAgICAgd2lkdGggPSBETUFfU0xBVkVfQlVTV0lEVEhfNF9CWVRFUzsKPiA+
ICsgICAgICAgICAgICAgYnJlYWs7Cj4gPiAgICAgICBkZWZhdWx0Ogo+ID4gICAgICAgICAgICAg
ICBkZXZfZXJyKGRhaS0+ZGV2LCAiVW5zdXBwb3J0ZWQgcGh5c2ljYWwgc2FtcGxlIHdpZHRoOgo+
ICVkXG4iLAo+ID4gICAgICAgICAgICAgICAgICAgICAgIHBhcmFtc19waHlzaWNhbF93aWR0aChw
YXJhbXMpKTsKPiA+IEBAIC0xMDE1LDYgKzEwMjAsMTMgQEAgc3RhdGljIGludCBzdW40aV9pMnNf
ZGFpX3Byb2JlKHN0cnVjdCBzbmRfc29jX2RhaQo+ID4gKmRhaSkgcmV0dXJuIDA7Cj4gPiAgfQo+
ID4KPiA+ICsjZGVmaW5lIFNVTjRJX0ZPUk1BVFMgICAgICAgIChTTkRSVl9QQ01fRk1UQklUX1Mx
Nl9MRSB8IFwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgU05EUlZfUENNX0ZNVEJJVF9TMjBf
TEUgfCBcCj4gPiArICAgICAgICAgICAgICAgICAgICAgIFNORFJWX1BDTV9GTVRCSVRfUzI0X0xF
KQo+ID4gKwo+ID4gKyNkZWZpbmUgU1VOOElfRk9STUFUUyAgICAgICAgKFNVTjRJX0ZPUk1BVFMg
fCBcCj4gPiArICAgICAgICAgICAgICAgICAgICAgIFNORFJWX1BDTV9GTVRCSVRfUzMyX0xFKQo+
ID4gKwo+ID4gIHN0YXRpYyBzdHJ1Y3Qgc25kX3NvY19kYWlfZHJpdmVyIHN1bjRpX2kyc19kYWkg
PSB7Cj4gPiAgICAgICAucHJvYmUgPSBzdW40aV9pMnNfZGFpX3Byb2JlLAo+ID4gICAgICAgLmNh
cHR1cmUgPSB7Cj4gPiBAQCAtMTAyMiwxNCArMTAzNCwxNCBAQCBzdGF0aWMgc3RydWN0IHNuZF9z
b2NfZGFpX2RyaXZlciBzdW40aV9pMnNfZGFpID0gewo+ID4gICAgICAgICAgICAgICAuY2hhbm5l
bHNfbWluID0gMiwKPiA+ICAgICAgICAgICAgICAgLmNoYW5uZWxzX21heCA9IDIsCj4gPiAgICAg
ICAgICAgICAgIC5yYXRlcyA9IFNORFJWX1BDTV9SQVRFXzgwMDBfMTkyMDAwLAo+ID4gLSAgICAg
ICAgICAgICAuZm9ybWF0cyA9IFNORFJWX1BDTV9GTVRCSVRfUzE2X0xFLAo+ID4gKyAgICAgICAg
ICAgICAuZm9ybWF0cyA9IFNVTjRJX0ZPUk1BVFMsCj4gPiAgICAgICB9LAo+ID4gICAgICAgLnBs
YXliYWNrID0gewo+ID4gICAgICAgICAgICAgICAuc3RyZWFtX25hbWUgPSAiUGxheWJhY2siLAo+
ID4gICAgICAgICAgICAgICAuY2hhbm5lbHNfbWluID0gMiwKPiA+ICAgICAgICAgICAgICAgLmNo
YW5uZWxzX21heCA9IDIsCj4gPiAgICAgICAgICAgICAgIC5yYXRlcyA9IFNORFJWX1BDTV9SQVRF
XzgwMDBfMTkyMDAwLAo+ID4gLSAgICAgICAgICAgICAuZm9ybWF0cyA9IFNORFJWX1BDTV9GTVRC
SVRfUzE2X0xFLAo+ID4gKyAgICAgICAgICAgICAuZm9ybWF0cyA9IFNVTjRJX0ZPUk1BVFMsCj4g
PiAgICAgICB9LAo+ID4gICAgICAgLm9wcyA9ICZzdW40aV9pMnNfZGFpX29wcywKPiA+ICAgICAg
IC5zeW1tZXRyaWNfcmF0ZXMgPSAxLAo+ID4gQEAgLTE1MDUsNiArMTUxNywxMSBAQCBzdGF0aWMg
aW50IHN1bjRpX2kyc19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlCj4gPiAqcGRldikgZ290
byBlcnJfcG1fZGlzYWJsZTsKPiA+ICAgICAgIH0KPiA+Cj4gPiArICAgICBpZiAoaTJzLT52YXJp
YW50LT5oYXNfZm10X3NldF9scmNrX3BlcmlvZCkgewo+ID4gKyAgICAgICAgICAgICBzb2NfZGFp
LT5wbGF5YmFjay5mb3JtYXRzID0gU1VOOElfRk9STUFUUzsKPiA+ICsgICAgICAgICAgICAgc29j
X2RhaS0+Y2FwdHVyZS5mb3JtYXRzID0gU1VOOElfRk9STUFUUzsKPiA+ICsgICAgIH0KPiA+ICsK
PiA+ICAgICAgIGlmICghb2ZfcHJvcGVydHlfcmVhZF91MzIocGRldi0+ZGV2Lm9mX25vZGUsCj4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJhbGx3aW5uZXIscGxheWJhY2stY2hh
bm5lbHMiLAo+ICZ2YWwpKSB7Cj4gPiAgICAgICAgICAgICAgIGlmICh2YWwgPj0gMiAmJiB2YWwg
PD0gOCkKPgo+Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
