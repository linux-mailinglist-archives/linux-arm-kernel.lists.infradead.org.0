Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A32FF8D1DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IHQr1uVYhk9LQl9BSkezAKAr0ZSXKSWOa2mbJ0KAx4Y=; b=SC74nREaqoibin
	12XJ7sCWWaT6EZVQryoxOVhXbmWoaCQoiClCwqu/Pn9M8tupXY8GT9QHqqKamFmooJrqqLcDyNsfx
	qFMCENAvSunaulAQVpoyP9xea+0F9bBgac5Fq8sSnGAKKhEmEI5q9Hdt9bafCwbvf8O0cOiShEtZv
	sjVItrmFg+JKthPdzjfly2hsi3sW1bO+KXcd+CnBe7+pLx4QaLxyz2yyVoPdP56Xc9iIKRvadDDCy
	cqpQYHouIPIaaL8dnIajd/x2z3mBYEsD7rtf1HGH79gnflauJk2W47v8mOaR7wgxJj5+fmtVGt4M/
	ZuAl7TZTcY8Z0StqzJfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrDx-0001Eq-7p; Wed, 14 Aug 2019 11:13:49 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxr9V-0006Rd-IG
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:09:15 +0000
Received: by mail-lj1-x241.google.com with SMTP id h15so10728060ljg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 04:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3dv3b99Hy2Xyxj9GiynSK24D1VsCVw66oVAGEMPYy2w=;
 b=kElqKQBVqmVhlYT4jAbn7O4tiAQrKlBEjOVKYkQbJsdOlWzYRc3BMChJ9w3gTjx7Vl
 h3TcDnEJTn7p2hcvbbhG6hn5+9Cy1iMypbXFZOvTjwZhJrnBhzsqlAKh66iVW2CXHF6W
 eOC//yVM5B3Qscykjy+TH1Yu7vpQ96oLw4T7D7NeFPK2/OpwJlhYiyQbJR/nxkFMH76f
 7UmDduIdWsyLmm54s/n4b4oeFpBzihVtv7dFwWhkUWimRKgmjH72B1U+/5RpMootiIRc
 2FXUnDt9vk4K+95Ad16zEC3MQOxNTMoPUo05lnhMyAloUzMwXWRgZYPpqI8Xgw1emtZs
 Rfyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3dv3b99Hy2Xyxj9GiynSK24D1VsCVw66oVAGEMPYy2w=;
 b=H4x5lhNpmMjpnGehNAIZ6Q7zuxpjHNW6tbuXzZ0EFjNQh6Ku9erVhfNDxuCpD4KP94
 oV8M5iXexxMwgmHjbKM5GrrxYNqL+/eEPzSlyugNwWcE0DmAJAcWML0iJKlaz2+MRSK3
 gj45K8BCKGvYvnLXDjCCQCdN2kt49FrVOqCUfzpDFjaCe4TV2ioCYiXDhRCMC8QcGI4y
 xtaAGeL+TaKErSjX8/X+qH7zro/Mgt55MJspRh6e9dJn5Zwc272/xZJTKoYvb6dSCS54
 cefbyby7Hc1GCWKPJde0/bfVZFwzT07d/WJsfEz3tkPzqcOWM3x6WWNz/zeGeGAkK9dI
 ChCw==
X-Gm-Message-State: APjAAAV+nUhw7w9Jem7nxv3tqSuJI3G1xNBrESHLBJWT5JabjxgRFsqy
 JE6iMhbP78iDyCe4CuTLOON8IRNhPYKP+9tiUCo=
X-Google-Smtp-Source: APXvYqxZ1SK+MhQi0KpHjbL1d9GcGg2f+ePXEyRIfkmmPY8Qwk4BA6zN/SMw4V0yr5Fno94IkHZaRgveZnkJttEqVe8=
X-Received: by 2002:a2e:9582:: with SMTP id w2mr2007403ljh.194.1565780950904; 
 Wed, 14 Aug 2019 04:09:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-12-codekipper@gmail.com>
 <13079463.kjevBeenX1@jernej-laptop>
In-Reply-To: <13079463.kjevBeenX1@jernej-laptop>
From: Code Kipper <codekipper@gmail.com>
Date: Wed, 14 Aug 2019 13:08:59 +0200
Message-ID: <CAEKpxBnLfpUdnksxVVrJt7TESsLq=fnkezBnRZsC1kHRrDrSOQ@mail.gmail.com>
Subject: Re: [PATCH v5 11/15] ASoC: sun4i-i2s: Add support for H6 I2S
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_040913_705442_D24C84CD 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

T24gV2VkLCAxNCBBdWcgMjAxOSBhdCAwOTo1NywgSmVybmVqIMWga3JhYmVjIDxqZXJuZWouc2ty
YWJlY0BzaW9sLm5ldD4gd3JvdGU6Cj4KPiBIaSEKPgo+IERuZSBzcmVkYSwgMTQuIGF2Z3VzdCAy
MDE5IG9iIDA4OjA4OjUwIENFU1QgamUgY29kZWtpcHBlckBnbWFpbC5jb20KPiBuYXBpc2FsKGEp
Ogo+ID4gRnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4K
PiA+IEg2IEkyUyBpcyB2ZXJ5IHNpbWlsYXIgdG8gdGhhdCBpbiBIMywgZXhjZXB0IGl0IHN1cHBv
cnRzIHVwIHRvIDE2Cj4gPiBjaGFubmVscy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWog
U2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4KPiBZb3VyIFNpZ25lZC1vZmYtYnkg
aXMgbWlzc2luZyBoZXJlIGFuZCBvbiBhbGwgb3RoZXIgcGF0Y2hlcyBtYWRlIG9yaWdpbmFsbHkg
YnkKPiBtZS4KQUNLCj4KPiBCZXN0IHJlZ2FyZHMsCj4gSmVybmVqCj4KPiA+IC0tLQo+ID4gIHNv
dW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYyB8IDE0OCArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTQ4IGluc2VydGlvbnMoKykKPiA+Cj4g
PiBkaWZmIC0tZ2l0IGEvc291bmQvc29jL3N1bnhpL3N1bjRpLWkycy5jIGIvc291bmQvc29jL3N1
bnhpL3N1bjRpLWkycy5jCj4gPiBpbmRleCA2ZGUzY2I0MWFhZjYuLmE4ZDk4Njk2ZmU3YyAxMDA2
NDQKPiA+IC0tLSBhL3NvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYwo+ID4gKysrIGIvc291bmQv
c29jL3N1bnhpL3N1bjRpLWkycy5jCj4gPiBAQCAtMTIxLDYgKzEyMSwyMSBAQAo+ID4gICNkZWZp
bmUgU1VOOElfSTJTX1JYX0NIQU5fU0VMX1JFRyAgICAweDU0Cj4gPiAgI2RlZmluZSBTVU44SV9J
MlNfUlhfQ0hBTl9NQVBfUkVHICAgIDB4NTgKPiA+Cj4gPiArLyogRGVmaW5lcyByZXF1aXJlZCBm
b3Igc3VuNTBpLWg2IHN1cHBvcnQgKi8KPiA+ICsjZGVmaW5lIFNVTjUwSV9INl9JMlNfVFhfQ0hB
Tl9TRUxfT0ZGU0VUX01BU0sgICAgICAgIEdFTk1BU0soMjEsIDIwKQo+ID4gKyNkZWZpbmUgU1VO
NTBJX0g2X0kyU19UWF9DSEFOX1NFTF9PRkZTRVQob2Zmc2V0KSAgICAgKChvZmZzZXQpIDw8IDIw
KQo+ID4gKyNkZWZpbmUgU1VONTBJX0g2X0kyU19UWF9DSEFOX1NFTF9NQVNLICAgICAgICAgICAg
ICAgR0VOTUFTSygxOSwgMTYpCj4gPiArI2RlZmluZSBTVU41MElfSDZfSTJTX1RYX0NIQU5fU0VM
KGNoYW4pICAgICAgICAgICAgICAoKGNoYW4gLSAxKSA8PCAxNikKPiA+ICsjZGVmaW5lIFNVTjUw
SV9INl9JMlNfVFhfQ0hBTl9FTl9NQVNLICAgICAgICAgICAgICAgIEdFTk1BU0soMTUsIDApCj4g
PiArI2RlZmluZSBTVU41MElfSDZfSTJTX1RYX0NIQU5fRU4obnVtX2NoYW4pICAgKCgoMSA8PCBu
dW1fY2hhbikgLSAxKSkKPiA+ICsKPiA+ICsjZGVmaW5lIFNVTjUwSV9INl9JMlNfVFhfQ0hBTl9N
QVAwX1JFRyAgICAgICAweDQ0Cj4gPiArI2RlZmluZSBTVU41MElfSDZfSTJTX1RYX0NIQU5fTUFQ
MV9SRUcgICAgICAgMHg0OAo+ID4gKwo+ID4gKyNkZWZpbmUgU1VONTBJX0g2X0kyU19SWF9DSEFO
X1NFTF9SRUcgICAgICAgIDB4NjQKPiA+ICsjZGVmaW5lIFNVTjUwSV9INl9JMlNfUlhfQ0hBTl9N
QVAwX1JFRyAgICAgICAweDY4Cj4gPiArI2RlZmluZSBTVU41MElfSDZfSTJTX1JYX0NIQU5fTUFQ
MV9SRUcgICAgICAgMHg2Qwo+ID4gKwo+ID4gIHN0cnVjdCBzdW40aV9pMnM7Cj4gPgo+ID4gIC8q
Kgo+ID4gQEAgLTQ0MCw2ICs0NTUsMjUgQEAgc3RhdGljIHZvaWQgc3VuOGlfaTJzX3NldF9yeGNo
YW5vZmZzZXQoY29uc3Qgc3RydWN0Cj4gPiBzdW40aV9pMnMgKmkycykgU1VOOElfSTJTX1RYX0NI
QU5fT0ZGU0VUKGkycy0+b2Zmc2V0KSk7Cj4gPiAgfQo+ID4KPiA+ICtzdGF0aWMgdm9pZCBzdW41
MGlfaDZfaTJzX3NldF90eGNoYW5vZmZzZXQoY29uc3Qgc3RydWN0IHN1bjRpX2kycyAqaTJzLCBp
bnQKPiA+IG91dHB1dCkgK3sKPiA+ICsgICAgIGlmIChvdXRwdXQgPj0gMCAmJiBvdXRwdXQgPCA0
KSB7Cj4gPiArICAgICAgICAgICAgIHJlZ21hcF91cGRhdGVfYml0cyhpMnMtPnJlZ21hcCwKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNVTjhJX0kyU19UWF9DSEFOX1NFTF9S
RUcgKwo+IChvdXRwdXQgKiA0KSwKPiA+ICsKPiBTVU41MElfSDZfSTJTX1RYX0NIQU5fU0VMX09G
RlNFVF9NQVNLLAo+ID4gKwo+IFNVTjUwSV9INl9JMlNfVFhfQ0hBTl9TRUxfT0ZGU0VUKGkycy0+
b2Zmc2V0KSk7Cj4gPiArICAgICB9Cj4gPiArCj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyB2b2lk
IHN1bjUwaV9oNl9pMnNfc2V0X3J4Y2hhbm9mZnNldChjb25zdCBzdHJ1Y3Qgc3VuNGlfaTJzICpp
MnMpCj4gPiArewo+ID4gKyAgICAgcmVnbWFwX3VwZGF0ZV9iaXRzKGkycy0+cmVnbWFwLAo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgIFNVTjUwSV9INl9JMlNfUlhfQ0hBTl9TRUxfUkVHLAo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIFNVTjUwSV9INl9JMlNfVFhfQ0hBTl9TRUxfT0ZG
U0VUX01BU0ssCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgU1VONTBJX0g2X0kyU19UWF9D
SEFOX1NFTF9PRkZTRVQoaTJzLQo+ID5vZmZzZXQpKTsKPiA+ICt9Cj4gPiArCj4gPiAgc3RhdGlj
IHZvaWQgc3VuOGlfaTJzX3NldF90eGNoYW5lbihjb25zdCBzdHJ1Y3Qgc3VuNGlfaTJzICppMnMs
IGludCBvdXRwdXQsCj4gPiBpbnQgY2hhbm5lbCkKPiA+ICB7Cj4gPiBAQCAtNDU5LDYgKzQ5Mywy
NiBAQCBzdGF0aWMgdm9pZCBzdW44aV9pMnNfc2V0X3J4Y2hhbmVuKGNvbnN0IHN0cnVjdAo+ID4g
c3VuNGlfaTJzICppMnMsIGludCBjaGFubmVsKSBTVU44SV9JMlNfVFhfQ0hBTl9FTihjaGFubmVs
KSk7Cj4gPiAgfQo+ID4KPiA+ICsKPiA+ICtzdGF0aWMgdm9pZCBzdW41MGlfaDZfaTJzX3NldF90
eGNoYW5lbihjb25zdCBzdHJ1Y3Qgc3VuNGlfaTJzICppMnMsIGludAo+ID4gb3V0cHV0LCArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IGNoYW5uZWwpCj4gPiArewo+ID4g
KyAgICAgaWYgKG91dHB1dCA+PSAwICYmIG91dHB1dCA8IDQpIHsKPiA+ICsgICAgICAgICAgICAg
cmVnbWFwX3VwZGF0ZV9iaXRzKGkycy0+cmVnbWFwLAo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgU1VOOElfSTJTX1RYX0NIQU5fU0VMX1JFRyArCj4gKG91dHB1dCAqIDQpLAo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU1VONTBJX0g2X0kyU19UWF9DSEFO
X0VOX01BU0ssCj4gPiArCj4gU1VONTBJX0g2X0kyU19UWF9DSEFOX0VOKGNoYW5uZWwpKTsKPiA+
ICsgICAgIH0KPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIHZvaWQgc3VuNTBpX2g2X2kyc19zZXRf
cnhjaGFuZW4oY29uc3Qgc3RydWN0IHN1bjRpX2kycyAqaTJzLCBpbnQKPiA+IGNoYW5uZWwpICt7
Cj4gPiArICAgICByZWdtYXBfdXBkYXRlX2JpdHMoaTJzLT5yZWdtYXAsCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgU1VONTBJX0g2X0kyU19SWF9DSEFOX1NFTF9SRUcsCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgU1VONTBJX0g2X0kyU19UWF9DSEFOX0VOX01BU0ssCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgU1VONTBJX0g2X0kyU19UWF9DSEFOX0VOKGNoYW5uZWwpKTsK
PiA+ICt9Cj4gPiArCj4gPiAgc3RhdGljIHZvaWQgc3VuNGlfaTJzX3NldF90eGNoYW5zZWwoY29u
c3Qgc3RydWN0IHN1bjRpX2kycyAqaTJzLCBpbnQKPiA+IG91dHB1dCwgaW50IGNoYW5uZWwpCj4g
PiAgewo+ID4gQEAgLTQ5NSw2ICs1NDksMjUgQEAgc3RhdGljIHZvaWQgc3VuOGlfaTJzX3NldF9y
eGNoYW5zZWwoY29uc3Qgc3RydWN0Cj4gPiBzdW40aV9pMnMgKmkycywgaW50IGNoYW5uZWwpIFNV
TjhJX0kyU19UWF9DSEFOX1NFTChjaGFubmVsKSk7Cj4gPiAgfQo+ID4KPiA+ICtzdGF0aWMgdm9p
ZCBzdW41MGlfaDZfaTJzX3NldF90eGNoYW5zZWwoY29uc3Qgc3RydWN0IHN1bjRpX2kycyAqaTJz
LCBpbnQKPiA+IG91dHB1dCwgKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlu
dCBjaGFubmVsKQo+ID4gK3sKPiA+ICsgICAgIGlmIChvdXRwdXQgPj0gMCAmJiBvdXRwdXQgPCA0
KSB7Cj4gPiArICAgICAgICAgICAgIHJlZ21hcF91cGRhdGVfYml0cyhpMnMtPnJlZ21hcCwKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNVTjhJX0kyU19UWF9DSEFOX1NFTF9S
RUcgKwo+IChvdXRwdXQgKiA0KSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IFNVTjUwSV9INl9JMlNfVFhfQ0hBTl9TRUxfTUFTSywKPiA+ICsKPiBTVU41MElfSDZfSTJTX1RY
X0NIQU5fU0VMKGNoYW5uZWwpKTsKPiA+ICsgICAgIH0KPiA+ICt9Cj4gPiArCj4gPiArc3RhdGlj
IHZvaWQgc3VuNTBpX2g2X2kyc19zZXRfcnhjaGFuc2VsKGNvbnN0IHN0cnVjdCBzdW40aV9pMnMg
KmkycywgaW50Cj4gPiBjaGFubmVsKSArewo+ID4gKyAgICAgcmVnbWFwX3VwZGF0ZV9iaXRzKGky
cy0+cmVnbWFwLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIFNVTjUwSV9INl9JMlNfUlhf
Q0hBTl9TRUxfUkVHLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIFNVTjUwSV9INl9JMlNf
VFhfQ0hBTl9TRUxfTUFTSywKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICBTVU41MElfSDZf
STJTX1RYX0NIQU5fU0VMKGNoYW5uZWwpKTsKPiA+ICt9Cj4gPiArCj4gPiAgc3RhdGljIHZvaWQg
c3VuNGlfaTJzX3NldF90eGNoYW5tYXAoY29uc3Qgc3RydWN0IHN1bjRpX2kycyAqaTJzLCBpbnQK
PiA+IG91dHB1dCwgaW50IGNoYW5uZWwpCj4gPiAgewo+ID4gQEAgLTUyMCw2ICs1OTMsMjAgQEAg
c3RhdGljIHZvaWQgc3VuOGlfaTJzX3NldF9yeGNoYW5tYXAoY29uc3Qgc3RydWN0Cj4gPiBzdW40
aV9pMnMgKmkycywgaW50IGNoYW5uZWwpIHJlZ21hcF93cml0ZShpMnMtPnJlZ21hcCwKPiA+IFNV
TjhJX0kyU19SWF9DSEFOX01BUF9SRUcsIGNoYW5uZWwpOwo+ID4gIH0KPiA+Cj4gPiArc3RhdGlj
IHZvaWQgc3VuNTBpX2g2X2kyc19zZXRfdHhjaGFubWFwKGNvbnN0IHN0cnVjdCBzdW40aV9pMnMg
KmkycywgaW50Cj4gPiBvdXRwdXQsICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBpbnQgY2hhbm5lbCkKPiA+ICt7Cj4gPiArICAgICBpZiAob3V0cHV0ID49IDAgJiYgb3V0cHV0
IDwgNCkgewo+ID4gKyAgICAgICAgICAgICByZWdtYXBfd3JpdGUoaTJzLT5yZWdtYXAsCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICBTVU41MElfSDZfSTJTX1RYX0NIQU5fTUFQMV9SRUcg
KyAob3V0cHV0Cj4gKiA4KSwgY2hhbm5lbCk7Cj4gPiArICAgICB9Cj4gPiArfQo+ID4gKwo+ID4g
K3N0YXRpYyB2b2lkIHN1bjUwaV9oNl9pMnNfc2V0X3J4Y2hhbm1hcChjb25zdCBzdHJ1Y3Qgc3Vu
NGlfaTJzICppMnMsIGludAo+ID4gY2hhbm5lbCkgK3sKPiA+ICsgICAgIHJlZ21hcF93cml0ZShp
MnMtPnJlZ21hcCwgU1VONTBJX0g2X0kyU19SWF9DSEFOX01BUDFfUkVHLCBjaGFubmVsKTsKPiA+
ICt9Cj4gPiArCj4gPiAgc3RhdGljIGludCBzdW40aV9pMnNfaHdfcGFyYW1zKHN0cnVjdCBzbmRf
cGNtX3N1YnN0cmVhbSAqc3Vic3RyZWFtLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzdHJ1Y3Qgc25kX3BjbV9od19wYXJhbXMgKnBhcmFtcywKPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgc3RydWN0IHNuZF9zb2NfZGFpICpkYWkpCj4gPiBAQCAtOTk2LDYgKzEwODMs
MjIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCByZWdfZGVmYXVsdAo+ID4gc3VuOGlfaTJzX3JlZ19k
ZWZhdWx0c1tdID0geyB7IFNVTjhJX0kyU19SWF9DSEFOX01BUF9SRUcsIDB4MDAwMDAwMDAgfSwK
PiA+ICB9Owo+ID4KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ19kZWZhdWx0IHN1bjUwaV9p
MnNfcmVnX2RlZmF1bHRzW10gPSB7Cj4gPiArICAgICB7IFNVTjRJX0kyU19DVFJMX1JFRywgMHgw
MDA2MDAwMCB9LAo+ID4gKyAgICAgeyBTVU40SV9JMlNfRk1UMF9SRUcsIDB4MDAwMDAwMzMgfSwK
PiA+ICsgICAgIHsgU1VONElfSTJTX0ZNVDFfUkVHLCAweDAwMDAwMDMwIH0sCj4gPiArICAgICB7
IFNVTjRJX0kyU19GSUZPX0NUUkxfUkVHLCAweDAwMDQwMGYwIH0sCj4gPiArICAgICB7IFNVTjRJ
X0kyU19ETUFfSU5UX0NUUkxfUkVHLCAweDAwMDAwMDAwIH0sCj4gPiArICAgICB7IFNVTjRJX0ky
U19DTEtfRElWX1JFRywgMHgwMDAwMDAwMCB9LAo+ID4gKyAgICAgeyBTVU44SV9JMlNfQ0hBTl9D
RkdfUkVHLCAweDAwMDAwMDAwIH0sCj4gPiArICAgICB7IFNVTjhJX0kyU19UWF9DSEFOX1NFTF9S
RUcsIDB4MDAwMDAwMDAgfSwKPiA+ICsgICAgIHsgU1VONTBJX0g2X0kyU19UWF9DSEFOX01BUDBf
UkVHLCAweDAwMDAwMDAwIH0sCj4gPiArICAgICB7IFNVTjUwSV9INl9JMlNfVFhfQ0hBTl9NQVAx
X1JFRywgMHgwMDAwMDAwMCB9LAo+ID4gKyAgICAgeyBTVU41MElfSDZfSTJTX1JYX0NIQU5fU0VM
X1JFRywgMHgwMDAwMDAwMCB9LAo+ID4gKyAgICAgeyBTVU41MElfSDZfSTJTX1JYX0NIQU5fTUFQ
MF9SRUcsIDB4MDAwMDAwMDAgfSwKPiA+ICsgICAgIHsgU1VONTBJX0g2X0kyU19SWF9DSEFOX01B
UDFfUkVHLCAweDAwMDAwMDAwIH0sCj4gPiArfTsKPiA+ICsKPiA+ICBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHJlZ21hcF9jb25maWcgc3VuNGlfaTJzX3JlZ21hcF9jb25maWcgPSB7Cj4gPiAgICAgICAu
cmVnX2JpdHMgICAgICAgPSAzMiwKPiA+ICAgICAgIC5yZWdfc3RyaWRlICAgICA9IDQsCj4gPiBA
QCAtMTAyMyw2ICsxMTI2LDE5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcmVnbWFwX2NvbmZpZwo+
ID4gc3VuOGlfaTJzX3JlZ21hcF9jb25maWcgPSB7IC52b2xhdGlsZV9yZWcgICAgID0gc3VuOGlf
aTJzX3ZvbGF0aWxlX3JlZywKPiA+ICB9Owo+ID4KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHJl
Z21hcF9jb25maWcgc3VuNTBpX2kyc19yZWdtYXBfY29uZmlnID0gewo+ID4gKyAgICAgLnJlZ19i
aXRzICAgICAgID0gMzIsCj4gPiArICAgICAucmVnX3N0cmlkZSAgICAgPSA0LAo+ID4gKyAgICAg
LnZhbF9iaXRzICAgICAgID0gMzIsCj4gPiArICAgICAubWF4X3JlZ2lzdGVyICAgPSBTVU41MElf
SDZfSTJTX1JYX0NIQU5fTUFQMV9SRUcsCj4gPiArICAgICAuY2FjaGVfdHlwZSAgICAgPSBSRUdD
QUNIRV9GTEFULAo+ID4gKyAgICAgLnJlZ19kZWZhdWx0cyAgID0gc3VuNTBpX2kyc19yZWdfZGVm
YXVsdHMsCj4gPiArICAgICAubnVtX3JlZ19kZWZhdWx0cyAgICAgICA9IEFSUkFZX1NJWkUoc3Vu
NTBpX2kyc19yZWdfZGVmYXVsdHMpLAo+ID4gKyAgICAgLndyaXRlYWJsZV9yZWcgID0gc3VuNGlf
aTJzX3dyX3JlZywKPiA+ICsgICAgIC5yZWFkYWJsZV9yZWcgICA9IHN1bjhpX2kyc19yZF9yZWcs
Cj4gPiArICAgICAudm9sYXRpbGVfcmVnICAgPSBzdW44aV9pMnNfdm9sYXRpbGVfcmVnLAo+ID4g
K307Cj4gPiArCj4gPiAgc3RhdGljIGludCBzdW40aV9pMnNfcnVudGltZV9yZXN1bWUoc3RydWN0
IGRldmljZSAqZGV2KQo+ID4gIHsKPiA+ICAgICAgIHN0cnVjdCBzdW40aV9pMnMgKmkycyA9IGRl
dl9nZXRfZHJ2ZGF0YShkZXYpOwo+ID4gQEAgLTExOTcsNiArMTMxMywzNCBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IHN1bjRpX2kyc19xdWlya3MKPiA+IHN1bjUwaV9hNjRfY29kZWNfaTJzX3F1aXJr
cyA9IHsgLnNldF9yeGNoYW5tYXAgICAgICAgICAgICAgICAgPQo+IHN1bjRpX2kyc19zZXRfcnhj
aGFubWFwLAo+ID4gIH07Cj4gPgo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc3VuNGlfaTJzX3F1
aXJrcyBzdW41MGlfaDZfaTJzX3F1aXJrcyA9IHsKPiA+ICsgICAgIC5oYXNfcmVzZXQgICAgICAg
ICAgICAgID0gdHJ1ZSwKPiA+ICsgICAgIC5yZWdfb2Zmc2V0X3R4ZGF0YSAgICAgID0gU1VOOElf
STJTX0ZJRk9fVFhfUkVHLAo+ID4gKyAgICAgLnN1bjRpX2kyc19yZWdtYXAgICAgICAgPSAmc3Vu
NTBpX2kyc19yZWdtYXBfY29uZmlnLAo+ID4gKyAgICAgLmhhc19mbXRfc2V0X2xyY2tfcGVyaW9k
ID0gdHJ1ZSwKPiA+ICsgICAgIC5oYXNfY2hjZmcgICAgICAgICAgICAgID0gdHJ1ZSwKPiA+ICsg
ICAgIC5oYXNfY2hzZWxfdHhfY2hlbiAgICAgID0gdHJ1ZSwKPiA+ICsgICAgIC5oYXNfY2hzZWxf
b2Zmc2V0ICAgICAgID0gdHJ1ZSwKPiA+ICsgICAgIC5maWVsZF9jbGtkaXZfbWNsa19lbiAgID0g
UkVHX0ZJRUxEKFNVTjRJX0kyU19DTEtfRElWX1JFRywgOCwgOCksCj4gPiArICAgICAuZmllbGRf
Zm10X3dzcyAgICAgICAgICA9IFJFR19GSUVMRChTVU40SV9JMlNfRk1UMF9SRUcsCj4gMCwgMiks
Cj4gPiArICAgICAuZmllbGRfZm10X3NyICAgICAgICAgICA9IFJFR19GSUVMRChTVU40SV9JMlNf
Rk1UMF9SRUcsIDQsIDYpLAo+ID4gKyAgICAgLmZpZWxkX2ZtdF9iY2xrICAgICAgICAgPSBSRUdf
RklFTEQoU1VONElfSTJTX0ZNVDBfUkVHLAo+IDcsIDcpLAo+ID4gKyAgICAgLmZpZWxkX2ZtdF9s
cmNsayAgICAgICAgPSBSRUdfRklFTEQoU1VONElfSTJTX0ZNVDBfUkVHLCAxOSwgMTkpLAo+ID4g
KyAgICAgLmZpZWxkX2ZtdF9tb2RlICAgICAgICAgPSBSRUdfRklFTEQoU1VONElfSTJTX0NUUkxf
UkVHLCA0LAo+IDUpLAo+ID4gKyAgICAgLmZpZWxkX2ZtdF9zZXh0ICAgICAgICAgPSBSRUdfRklF
TEQoU1VONElfSTJTX0ZNVDFfUkVHLAo+IDQsIDUpLAo+ID4gKyAgICAgLmdldF9zciAgICAgICAg
ICAgICAgICAgPSBzdW44aV9pMnNfZ2V0X3NyX3dzcywKPiA+ICsgICAgIC5nZXRfd3NzICAgICAg
ICAgICAgICAgID0gc3VuOGlfaTJzX2dldF9zcl93c3MsCj4gPiArICAgICAuc2V0X2Zvcm1hdCAg
ICAgICAgICAgICA9IHN1bjhpX2kyc19zZXRfZm9ybWF0LAo+ID4gKyAgICAgLnNldF90eGNoYW5v
ZmZzZXQgICAgICAgPSBzdW41MGlfaDZfaTJzX3NldF90eGNoYW5vZmZzZXQsCj4gPiArICAgICAu
c2V0X3J4Y2hhbm9mZnNldCAgICAgICA9IHN1bjUwaV9oNl9pMnNfc2V0X3J4Y2hhbm9mZnNldCwK
PiA+ICsgICAgIC5zZXRfdHhjaGFuZW4gICAgICAgICAgID0gc3VuNTBpX2g2X2kyc19zZXRfdHhj
aGFuZW4sCj4gPiArICAgICAuc2V0X3J4Y2hhbmVuICAgICAgICAgICA9IHN1bjUwaV9oNl9pMnNf
c2V0X3J4Y2hhbmVuLAo+ID4gKyAgICAgLnNldF90eGNoYW5zZWwgICAgICAgICAgPSBzdW41MGlf
aDZfaTJzX3NldF90eGNoYW5zZWwsCj4gPiArICAgICAuc2V0X3J4Y2hhbnNlbCAgICAgICAgICA9
IHN1bjUwaV9oNl9pMnNfc2V0X3J4Y2hhbnNlbCwKPiA+ICsgICAgIC5zZXRfdHhjaGFubWFwICAg
ICAgICAgID0gc3VuNTBpX2g2X2kyc19zZXRfdHhjaGFubWFwLAo+ID4gKyAgICAgLnNldF9yeGNo
YW5tYXAgICAgICAgICAgPSBzdW41MGlfaDZfaTJzX3NldF9yeGNoYW5tYXAsCj4gPiArfTsKPiA+
ICsKPiA+ICBzdGF0aWMgaW50IHN1bjRpX2kyc19pbml0X3JlZ21hcF9maWVsZHMoc3RydWN0IGRl
dmljZSAqZGV2LAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3Qgc3VuNGlfaTJzICppMnMpCj4gPiAgewo+ID4gQEAgLTEzODksNiArMTUzMywxMCBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBzdW40aV9pMnNfbWF0Y2hbXSA9Cj4gPiB7IC5j
b21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktYTY0LWNvZGVjLWkycyIsCj4gPiAgICAgICAg
ICAgICAgIC5kYXRhID0gJnN1bjUwaV9hNjRfY29kZWNfaTJzX3F1aXJrcywKPiA+ICAgICAgIH0s
Cj4gPiArICAgICB7Cj4gPiArICAgICAgICAgICAgIC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixz
dW41MGktaDYtaTJzIiwKPiA+ICsgICAgICAgICAgICAgLmRhdGEgPSAmc3VuNTBpX2g2X2kyc19x
dWlya3MsCj4gPiArICAgICB9LAo+ID4gICAgICAge30KPiA+ICB9Owo+ID4gIE1PRFVMRV9ERVZJ
Q0VfVEFCTEUob2YsIHN1bjRpX2kyc19tYXRjaCk7Cj4KPgo+Cj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
