Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2334135559
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:14:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsevmTtlYbUgZ/M6xnJrbH3Y7K+BtgonqSXf/+eeXFk=; b=YrSMbM9p/19o5j
	eDHuJmW7U8Ra+39N+a6V795+tNZXXag/+U0xMATEoKVNso1KGXgCY0KXYXnSZ4L4noh4ySYY6e3us
	sYAlK1sdfrL5LLJk9xncdf1AB/AzjrBMuhffGoesHgtHsYkZiH8/gy5GHpd6LvuKZV1NhkeAeOsM+
	dJd2g0++KPXh1Yen2PymBjWvclcV7ojO7cX2ddaAERjDceKysZokLUj1SlF3AwbFQC1zd8R4zBOuc
	vWioXuLL1b8kLamei2cDHWYLBgNAAq8bcs94nbPyyU7uAtnpPezvRyiOA7gEtjj8H/rPxOrVaUhnu
	NbDbMNpGnYCql809iCtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTtm-0007kP-1b; Thu, 09 Jan 2020 09:14:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTtN-0007ad-Pj
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:14:15 +0000
Received: by mail-wm1-x344.google.com with SMTP id 20so1936812wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 01:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=q4yS4IGenv3/gEDlUctN0Q4HaJsYtWMJsBPlv/baTQU=;
 b=TX/GkSfEBRFP1nnhEGSi1wG0knrm+FxWatwSTMUMCvy+sv3/OvCCdKYr514Rd4b26n
 bc3lSc93r52GhiMh5kA99zMZUkeAEzfDY8/rjSjX5k5zK6pMiECY/p8KP/Yd2TMC3Gs1
 +omuXnbsBSgCiiKB7yConsjrX5IVZCb85IQnavHVnJ832Z+fLBAHBSSEl3dyCKyiCT2A
 dc8XLcEyp6PFwH+NxnXYFstx5gn79ZyDu9ckL96qgdY+xxVFmztKeaqI5szIxrbAOWvg
 zVtqTHdPLi3pCW+UI39ml4oiAkgfOhqIooRm4oXpndCyXskqYHyneztO3bYD0iYQSKod
 76PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=q4yS4IGenv3/gEDlUctN0Q4HaJsYtWMJsBPlv/baTQU=;
 b=LFYianYTRHGwH8j3tmzL6JXoSDR3NmavmE3BnlBu++d1RZ0mjieDbELxZTj4co2k0y
 Jn1G9i5j8DCVfVEtIMLWHbtzthbRiYpWtAg17B6EBB2pefqhJiF7WvWVd5OMnJulzZ9A
 xcSvCw4F7Eh6/+VcTUVcW/mYWiM3TDXOWcpDJhZRt9TYLitV27O+uMEhRE5W5/Uaj9/g
 oxgjgbqiyFkyb8AmeqXRHYaVNP96u+w1cMIpkMiLnYVO3OVn7g5p67vpBv6aDTHwsaLR
 WJ8qPrH7SUInMpJdfdiF4jkC3CI7zlsYSJD/LbtWohCSx5+VvcAR8guvO+CzAyBU490D
 YDqA==
X-Gm-Message-State: APjAAAVKAkOl68F2h2mWI2TEWrLftX8zkSX5fU5ZTEweSEuZqZVoNY8K
 5wQE1x5ZYNuuD94pa7aX9fJqJzzEqFdsKCXUn0g=
X-Google-Smtp-Source: APXvYqw1Dr8ZnFhNDYyE8/xD6l0tv796f3qQo2kP+dYqYva7kvb44dgGurdSMGFOvo08reMnzvFpWtQqUZta7f406XM=
X-Received: by 2002:a1c:44d:: with SMTP id 74mr3638479wme.53.1578561252011;
 Thu, 09 Jan 2020 01:14:12 -0800 (PST)
MIME-Version: 1.0
References: <20200109072735.GA22886@embeddedor>
 <20200109074445.73n3vapjl4vfjtsu@pengutronix.de>
In-Reply-To: <20200109074445.73n3vapjl4vfjtsu@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 9 Jan 2020 10:14:00 +0100
Message-ID: <CAJiuCcdFiXVtECtVGz3N9oUM38ca=MDmdK4+T+peUKKzNr_5KQ@mail.gmail.com>
Subject: Re: [PATCH] pwm: sun4i: Fix inconsistent IS_ERR and PTR_ERR
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_011413_861147_F62FF8F2 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux PWM List <linux-pwm@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLCBHdXN0YXZvLAoKT24gVGh1LCA5IEphbiAyMDIwIGF0IDA4OjQ0LCBVd2UgS2xlaW5l
LUvDtm5pZwo8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IEhlbGxv
IEd1c3Rhdm8sCj4KPiBPbiBUaHUsIEphbiAwOSwgMjAyMCBhdCAwMToyNzozNUFNIC0wNjAwLCBH
dXN0YXZvIEEuIFIuIFNpbHZhIHdyb3RlOgo+ID4gRml4IGluY29uc2lzdGVudCBJU19FUlIgYW5k
IFBUUl9FUlIgaW4gc3VuNGlfcHdtX3Byb2JlKCkuCj4gPgo+ID4gVGhlIHByb3BlciBwb2ludGVy
cyB0byBiZSBwYXNzZWQgYXMgYXJndW1lbnRzIGFyZSBwd20tPmNsayBhbmQgcHdtLT5idXNfY2xr
LgoKVGhhbmtzIGZvciB0aGUgY2F0Y2guCgpBcyB0aGVzZSBwYXRjaGVzIGFyZSBzdGlsbCBpbiBu
ZXh0IHNob3VsZCB3ZSB1cGRhdGUgdGhlbSBvciBhcHBseSBhIGZpeCA/CgpSZWdhcmRzLApDbGVt
ZW50Cgo+ID4KPiA+IFRoaXMgYnVnIHdhcyBkZXRlY3RlZCB3aXRoIHRoZSBoZWxwIG9mIENvY2Np
bmVsbGUuCj4gPgo+ID4gRml4ZXM6IGI4ZDc0NjQ0ZjM0YSAoInB3bTogc3VuNGk6IFByZWZlciAi
bW9kIiBjbG9jayB0byB1bm5hbWVkIikKPiA+IEZpeGVzOiA1YjA5MGI0MzBkNzUgKCJwd206IHN1
bjRpOiBBZGQgYW4gb3B0aW9uYWwgcHJvYmUgZm9yIGJ1cyBjbG9jayIpCj4gPiBTaWduZWQtb2Zm
LWJ5OiBHdXN0YXZvIEEuIFIuIFNpbHZhIDxndXN0YXZvQGVtYmVkZGVkb3IuY29tPgo+ID4gLS0t
Cj4gPiAgZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgfCA2ICsrKy0tLQo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+IGlu
ZGV4IDFhZmQ0MWViZDNmZC4uYTgwNWMzNDdlZTg0IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9w
d20vcHdtLXN1bjRpLmMKPiA+ICsrKyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiBAQCAt
NDIzLDcgKzQyMyw3IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4gPiAgICAgICAgKi8KPiA+ICAgICAgIHB3bS0+Y2xrID0gZGV2bV9j
bGtfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYsICJtb2QiKTsKPiA+ICAgICAgIGlmIChJU19FUlIo
cHdtLT5jbGspKSB7Cj4gPiAtICAgICAgICAgICAgIGlmIChQVFJfRVJSKHB3bS0+cnN0KSAhPSAt
RVBST0JFX0RFRkVSKQo+ID4gKyAgICAgICAgICAgICBpZiAoUFRSX0VSUihwd20tPmNsaykgIT0g
LUVQUk9CRV9ERUZFUikKPgo+IEhvdyBlbWJhcnJhc3NpbmcgdGhhdCBJIGRpZG4ndCBub3RpY2Ug
dGhlc2UuIFRoYW5rcyBmb3IgY2F0Y2hpbmcuCj4KPiBSZXZpZXdlZC1ieTogVXdlIEtsZWluZS1L
w7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KPgo+IEJlc3QgcmVnYXJkcwo+
IFV3ZQo+Cj4gLS0KPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCBVd2UgS2xlaW5lLUvDtm5pZyAgICAgICAgICAgIHwKPiBJbmR1c3RyaWFsIExpbnV4IFNvbHV0
aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwczovL3d3dy5wZW5ndXRyb25peC5kZS8gfAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
