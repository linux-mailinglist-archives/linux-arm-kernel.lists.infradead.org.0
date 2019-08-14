Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 292018CEF4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8p9FGrILcQzRPwvNgZ2Bt5zLRCrPsdxTPJ2AERMNa8Y=; b=mElAjj3TKie4LX
	iAFvZWjHvuwbPQm/eTsqxke3ZzIAkEXYwzrg/Qw81MYAyQkQYqZSluTWkCuZ7KPLcW8jnUj6d04Ph
	SbeAi1bpOayfD3Ij7/SjV0s3EmEYOS7z7j+6imh1Dm0t0Ai3cBzUc4LxgY2t/An97+OarCpoNbqJO
	r+D+3fvZNOj3h0vONeDRSNAlGz5PJNMKUjnaAywwdmC312Klo7X9NAlXmKGoypxK5qlxhWCQ5Ky3d
	cFIEDVeeAnmcaVbJwBUCy3aTwLmjrLnHlvjn8jAW2rgxKE7m8nDOBGvgDtPNT+CK4e3abDBrelYR0
	iL/mmOCoKszgK36fhh4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpBw-0000QI-Lc; Wed, 14 Aug 2019 09:03:36 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpBW-0000P7-1e
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:03:13 +0000
Received: by mail-lj1-x241.google.com with SMTP id r9so104092032ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 02:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HGGsA7jJbuHeLKCTTStxYTVLGBd6wnCss83qHowgbjU=;
 b=W96oK3cplk+LETGgfrUx025DuWIVN07yy7YAIfAoynHMDXa6+xVaV/sYZjvar/1zKv
 XFAzJLyCpaXbHaI0Jj7zDzkRdxJ9/+ygX+T0rBz87g8xxWGYlIkKq2NYMFeVDw01G0yI
 GtiPNL8KjexuBM4mZ/qYmpZhQdRnXw7yFImlxTSJC9eRa/u2mQSnfcyFBtPfu/PFh+wO
 9aBxFRZnTIvpV4ukI+9FPT1Xpjn66WdT7Ht3WpXpkcscVYLynKrBWSVpNMMU6H4T9EP9
 2Hy1ufq+tqognp6wU0Z6Y9XMYtJB+zBv4k8uPklw2vIhTD6XRwUS2gkgak2pKssb7fQ0
 BZjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HGGsA7jJbuHeLKCTTStxYTVLGBd6wnCss83qHowgbjU=;
 b=nMivHBIq5i+1wM9eOxBi2ncBD720FvRgJD31LbmE4Sumyj9Ot5nQjMnvbUDFeHOcJZ
 7QwG4QLV/YYHuCY91oF+WcI4C2pCvq1h78OxdDL1neKISauowu4KLpBUWiPUR99Ptvz5
 jmSleBOzJaG+1D+ujxbCZMNaTmDrX/c9yTyTkzYeptI2yTu4WA38Q9Zo7hgx10wbR5ov
 pCuFZ0DWuHdBMNcIqgF1+IGWBJXDame8MpuTvMThVjHQ/TO60Nake/FTBRYePjSTQ+2C
 sb2HH23wmTdkV9pbeeXS2Q5xLKM8ObjAgYK3q6aNYZLsElBX2LeeyBWvdqkIZbUUPGYz
 zBLA==
X-Gm-Message-State: APjAAAUWvpS6zucaM0xLYjqzDX17kmamxvE/A6WddlpX/eASnYCaYp/H
 1nZva1sjtF0/C5WHAx52HzwJe8YTN1xepyvJIYo=
X-Google-Smtp-Source: APXvYqyW1xPosjpGG4nDcVQ4sN08u61lmr1tOzbLSoAlD3n5ZJrmw1nQj2fpjXRQgr8vSPVXMkST0bIshq4hM+ESxOg=
X-Received: by 2002:a2e:3c12:: with SMTP id j18mr8727511lja.50.1565773385844; 
 Wed, 14 Aug 2019 02:03:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-16-codekipper@gmail.com>
 <3741744.8c7tOhJ1tT@jernej-laptop>
In-Reply-To: <3741744.8c7tOhJ1tT@jernej-laptop>
From: Code Kipper <codekipper@gmail.com>
Date: Wed, 14 Aug 2019 11:02:54 +0200
Message-ID: <CAEKpxBnNzH3KANfaY7p0qv=XTAyHAk3YSWqFbt_hpWat+xSBxw@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v5 15/15] ASoC: sun4i-i2s: Adjust regmap
 settings
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_020312_471694_2B32FFC4 
X-CRM114-Status: GOOD (  20.64  )
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

T24gV2VkLCAxNCBBdWcgMjAxOSBhdCAxMDozOCwgSmVybmVqIMWga3JhYmVjIDxqZXJuZWouc2ty
YWJlY0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkhCj4KPiBEbmUgc3JlZGEsIDE0LiBhdmd1c3Qg
MjAxOSBvYiAwODowODo1NCBDRVNUIGplIGNvZGVraXBwZXJAZ21haWwuY29tCj4gbmFwaXNhbChh
KToKPiA+IEZyb206IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgo+ID4KPiA+
IEJ5cGFzcyB0aGUgcmVnbWFwIGNhY2hlIHdoZW4gZmx1c2hpbmcgdGhlIGkycyBGSUZPcyBhbmQg
bW9kaWZ5IHRoZSB0YWJsZXMKPiA+IHRvIHJlZmxlY3QgdGhpcy4KPiA+Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBNYXJjdXMgQ29vcGVyIDxjb2Rla2lwcGVyQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIHNv
dW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYyB8IDMxICsrKysrKysrKystLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25z
KC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL3NvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYyBiL3Nv
dW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYwo+ID4gaW5kZXggZDNjODc4OWY3MGJiLi5lY2ZjMWVk
NzkzNzkgMTAwNjQ0Cj4gPiAtLS0gYS9zb3VuZC9zb2Mvc3VueGkvc3VuNGktaTJzLmMKPiA+ICsr
KyBiL3NvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYwo+ID4gQEAgLTg3Niw5ICs4NzYsMTEgQEAg
c3RhdGljIGludCBzdW40aV9pMnNfc2V0X2ZtdChzdHJ1Y3Qgc25kX3NvY19kYWkgKmRhaSwKPiA+
IHVuc2lnbmVkIGludCBmbXQpIHN0YXRpYyB2b2lkIHN1bjRpX2kyc19zdGFydF9jYXB0dXJlKHN0
cnVjdCBzdW40aV9pMnMKPiA+ICppMnMpCj4gPiAgewo+ID4gICAgICAgLyogRmx1c2ggUlggRklG
TyAqLwo+ID4gKyAgICAgcmVnY2FjaGVfY2FjaGVfYnlwYXNzKGkycy0+cmVnbWFwLCB0cnVlKTsK
PiA+ICAgICAgIHJlZ21hcF91cGRhdGVfYml0cyhpMnMtPnJlZ21hcCwgU1VONElfSTJTX0ZJRk9f
Q1RSTF9SRUcsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgU1VONElfSTJTX0ZJRk9fQ1RS
TF9GTFVTSF9SWCwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICBTVU40SV9JMlNfRklGT19D
VFJMX0ZMVVNIX1JYKTsKPiA+ICsgICAgIHJlZ2NhY2hlX2NhY2hlX2J5cGFzcyhpMnMtPnJlZ21h
cCwgZmFsc2UpOwo+Cj4gRGlkIHlvdSB0cnkgd2l0aCByZWdtYXBfd3JpdGVfYml0cygpIGluc3Rl
YWQ/IFRoaXMgZnVuY3Rpb24gd2lsbAo+IHVuY29uZGl0aW9uYWxseSB3cml0ZSBiaXRzIHNvIGl0
J3MgbmljZXIgc29sdXRpb24sIGJlY2F1c2UgeW91IGRvbid0IGhhdmUgdG8KPiB1c2UgcmVnY2Fj
aGVfY2FjaGVfYnlwYXNzKCkuCgpJIGRpZG4ndC4uLi53aXRoIGFsbCB0aGUgcmV3b3JrIEkndmUg
YXZvaWRlZCBtZXNzaW5nIHdpdGggdGhpcyBjaGFuZ2UuCk5vdyB0aGF0IHRoZSBkdXN0CmhhcyBz
ZXR0bGVkLCBJIGNhbiBnbyBiYWNrIHRvIGxvb2sgYXQgdGhpcy4KVGhhbmtzLApDSwo+Cj4gPgo+
ID4gICAgICAgLyogQ2xlYXIgUlggY291bnRlciAqLwo+ID4gICAgICAgcmVnbWFwX3dyaXRlKGky
cy0+cmVnbWFwLCBTVU40SV9JMlNfUlhfQ05UX1JFRywgMCk7Cj4gPiBAQCAtODk3LDkgKzg5OSwx
MSBAQCBzdGF0aWMgdm9pZCBzdW40aV9pMnNfc3RhcnRfY2FwdHVyZShzdHJ1Y3Qgc3VuNGlfaTJz
Cj4gPiAqaTJzKSBzdGF0aWMgdm9pZCBzdW40aV9pMnNfc3RhcnRfcGxheWJhY2soc3RydWN0IHN1
bjRpX2kycyAqaTJzKQo+ID4gIHsKPiA+ICAgICAgIC8qIEZsdXNoIFRYIEZJRk8gKi8KPiA+ICsg
ICAgIHJlZ2NhY2hlX2NhY2hlX2J5cGFzcyhpMnMtPnJlZ21hcCwgdHJ1ZSk7Cj4gPiAgICAgICBy
ZWdtYXBfdXBkYXRlX2JpdHMoaTJzLT5yZWdtYXAsIFNVTjRJX0kyU19GSUZPX0NUUkxfUkVHLAo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgIFNVTjRJX0kyU19GSUZPX0NUUkxfRkxVU0hfVFgs
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgU1VONElfSTJTX0ZJRk9fQ1RSTF9GTFVTSF9U
WCk7Cj4gPiArICAgICByZWdjYWNoZV9jYWNoZV9ieXBhc3MoaTJzLT5yZWdtYXAsIGZhbHNlKTsK
Pgo+IERpdHRvLgo+Cj4gPgo+ID4gICAgICAgLyogQ2xlYXIgVFggY291bnRlciAqLwo+ID4gICAg
ICAgcmVnbWFwX3dyaXRlKGkycy0+cmVnbWFwLCBTVU40SV9JMlNfVFhfQ05UX1JFRywgMCk7Cj4g
PiBAQCAtMTA1MywxMyArMTA1Nyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc25kX3NvY19jb21w
b25lbnRfZHJpdmVyCj4gPiBzdW40aV9pMnNfY29tcG9uZW50ID0gewo+ID4KPiA+ICBzdGF0aWMg
Ym9vbCBzdW40aV9pMnNfcmRfcmVnKHN0cnVjdCBkZXZpY2UgKmRldiwgdW5zaWduZWQgaW50IHJl
ZykKPiA+ICB7Cj4gPiAtICAgICBzd2l0Y2ggKHJlZykgewo+ID4gLSAgICAgY2FzZSBTVU40SV9J
MlNfRklGT19UWF9SRUc6Cj4gPiAtICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiA+IC0KPiA+
IC0gICAgIGRlZmF1bHQ6Cj4gPiAtICAgICAgICAgICAgIHJldHVybiB0cnVlOwo+ID4gLSAgICAg
fQo+ID4gKyAgICAgcmV0dXJuIHRydWU7Cj4KPiBXaHkgZGlkIHlvdSBjaGFuZ2UgdGhpcz8gTWFu
dWFsIG1lbnRpb25zIHRoYXQgU1VONElfSTJTX0ZJRk9fVFhfUkVHIGlzIHdyaXRlLQo+IG9ubHkg
cmVnaXN0ZXIuIEV2ZW4gaWYgaXQgY2FuIGJlIHJlYWQsIHRoZW4gaXQncyBiZXR0ZXIgdG8gcmVt
b3ZlIHdob2xlCj4gZnVuY3Rpb24sIHdoaWNoIHdpbGwgYXV0b21hdGljYWxseSBtZWFuIHRoYXQg
YWxsIHJlZ2lzdGVycyBjYW4gYmUgcmVhZC4KPgo+Cj4gPiAgfQo+ID4KPiA+ICBzdGF0aWMgYm9v
bCBzdW40aV9pMnNfd3JfcmVnKHN0cnVjdCBkZXZpY2UgKmRldiwgdW5zaWduZWQgaW50IHJlZykK
PiA+IEBAIC0xMDc4LDYgKzEwNzYsOCBAQCBzdGF0aWMgYm9vbCBzdW40aV9pMnNfdm9sYXRpbGVf
cmVnKHN0cnVjdCBkZXZpY2UgKmRldiwKPiA+IHVuc2lnbmVkIGludCByZWcpIHsKPiA+ICAgICAg
IHN3aXRjaCAocmVnKSB7Cj4gPiAgICAgICBjYXNlIFNVTjRJX0kyU19GSUZPX1JYX1JFRzoKPiA+
ICsgICAgIGNhc2UgU1VONElfSTJTX0ZJRk9fVFhfUkVHOgo+ID4gKyAgICAgY2FzZSBTVU40SV9J
MlNfRklGT19TVEFfUkVHOgo+ID4gICAgICAgY2FzZSBTVU40SV9JMlNfSU5UX1NUQV9SRUc6Cj4g
PiAgICAgICBjYXNlIFNVTjRJX0kyU19SWF9DTlRfUkVHOgo+ID4gICAgICAgY2FzZSBTVU40SV9J
MlNfVFhfQ05UX1JFRzoKPgo+IFNVTjRJX0kyU19GSUZPX0NUUkxfUkVHIHNob3VsZCBiZSBwdXQg
aGVyZSwgYmVjYXVzZSBpdCBoYXMgdHdvIGJpdHMgd2hpY2gKPiByZXR1cm5zIHRvIDAgaW1tZWRp
YXRlbHkgYWZ0ZXIgdGhleSBhcmUgc2V0IHRvIDEuCj4KPiBCZXN0IHJlZ2FyZHMsCj4gSmVybmVq
Cj4KPiA+IEBAIC0xMDg4LDIzICsxMDg4LDEyIEBAIHN0YXRpYyBib29sIHN1bjRpX2kyc192b2xh
dGlsZV9yZWcoc3RydWN0IGRldmljZQo+ID4gKmRldiwgdW5zaWduZWQgaW50IHJlZykgfQo+ID4g
IH0KPiA+Cj4gPiAtc3RhdGljIGJvb2wgc3VuOGlfaTJzX3JkX3JlZyhzdHJ1Y3QgZGV2aWNlICpk
ZXYsIHVuc2lnbmVkIGludCByZWcpCj4gPiAtewo+ID4gLSAgICAgc3dpdGNoIChyZWcpIHsKPiA+
IC0gICAgIGNhc2UgU1VOOElfSTJTX0ZJRk9fVFhfUkVHOgo+ID4gLSAgICAgICAgICAgICByZXR1
cm4gZmFsc2U7Cj4gPiAtCj4gPiAtICAgICBkZWZhdWx0Ogo+ID4gLSAgICAgICAgICAgICByZXR1
cm4gdHJ1ZTsKPiA+IC0gICAgIH0KPiA+IC19Cj4gPiAtCj4gPiAgc3RhdGljIGJvb2wgc3VuOGlf
aTJzX3ZvbGF0aWxlX3JlZyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCByZWcpCj4g
PiAgewo+ID4gICAgICAgaWYgKHJlZyA9PSBTVU44SV9JMlNfSU5UX1NUQV9SRUcpCj4gPiAgICAg
ICAgICAgICAgIHJldHVybiB0cnVlOwo+ID4gICAgICAgaWYgKHJlZyA9PSBTVU44SV9JMlNfRklG
T19UWF9SRUcpCj4gPiAtICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiA+ICsgICAgICAgICAg
ICAgcmV0dXJuIHRydWU7Cj4gPgo+ID4gICAgICAgcmV0dXJuIHN1bjRpX2kyc192b2xhdGlsZV9y
ZWcoZGV2LCByZWcpOwo+ID4gIH0KPiA+IEBAIC0xMTc1LDcgKzExNjQsNyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IHJlZ21hcF9jb25maWcKPiA+IHN1bjhpX2kyc19yZWdtYXBfY29uZmlnID0geyAu
cmVnX2RlZmF1bHRzICAgICA9IHN1bjhpX2kyc19yZWdfZGVmYXVsdHMsCj4gPiAgICAgICAubnVt
X3JlZ19kZWZhdWx0cyAgICAgICA9IEFSUkFZX1NJWkUoc3VuOGlfaTJzX3JlZ19kZWZhdWx0cyks
Cj4gPiAgICAgICAud3JpdGVhYmxlX3JlZyAgPSBzdW40aV9pMnNfd3JfcmVnLAo+ID4gLSAgICAg
LnJlYWRhYmxlX3JlZyAgID0gc3VuOGlfaTJzX3JkX3JlZywKPiA+ICsgICAgIC5yZWFkYWJsZV9y
ZWcgICA9IHN1bjRpX2kyc19yZF9yZWcsCj4gPiAgICAgICAudm9sYXRpbGVfcmVnICAgPSBzdW44
aV9pMnNfdm9sYXRpbGVfcmVnLAo+ID4gIH07Cj4gPgo+ID4gQEAgLTExODgsNyArMTE3Nyw3IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgcmVnbWFwX2NvbmZpZwo+ID4gc3VuNTBpX2kyc19yZWdtYXBf
Y29uZmlnID0geyAucmVnX2RlZmF1bHRzICAgID0gc3VuNTBpX2kyc19yZWdfZGVmYXVsdHMsCj4g
PiAgICAgICAubnVtX3JlZ19kZWZhdWx0cyAgICAgICA9IEFSUkFZX1NJWkUoc3VuNTBpX2kyc19y
ZWdfZGVmYXVsdHMpLAo+ID4gICAgICAgLndyaXRlYWJsZV9yZWcgID0gc3VuNGlfaTJzX3dyX3Jl
ZywKPiA+IC0gICAgIC5yZWFkYWJsZV9yZWcgICA9IHN1bjhpX2kyc19yZF9yZWcsCj4gPiArICAg
ICAucmVhZGFibGVfcmVnICAgPSBzdW40aV9pMnNfcmRfcmVnLAo+ID4gICAgICAgLnZvbGF0aWxl
X3JlZyAgID0gc3VuOGlfaTJzX3ZvbGF0aWxlX3JlZywKPiA+ICB9Owo+Cj4KPgo+CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
