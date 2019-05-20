Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8717423BE1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6zhmgVh+BeI/SH5wc1McHCR/I1VATZVlEnL6y9pOfs=; b=WvX1gOh1QRC7Zp
	CBv6dbSbAVWEn7cNGFJyjICxMCSvwmFTH0KmOyvIFWgfW8N5d/672ugNTwqlJ3MyKZzVCLUQ9/rgB
	6P3u46pfQWNdyffhoXTlVAdAbvcckXUkric0p0pYaEiw3LKc+Br+uA9egqrtfgLne4nufuXaIjXj1
	2h0rRyVLsagiLydpSOGF3Fv8LPJknXovShy0DjC6POsDRrgcwBmF2DsR4fBovth53GP26LI45arzN
	+vh+X/UoExeIOOerpGLzO4AEGoeV053SHwl52SA9sP5C4I6zFJpVft4/JFO06JtCeoyFvDH28oti/
	rGjBWMsa5YrJN8dB0PXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSk4f-0003sj-Ey; Mon, 20 May 2019 15:19:37 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSk4Y-0003sM-Do
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 15:19:31 +0000
Received: by mail-yw1-xc42.google.com with SMTP id e68so6010443ywf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 08:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=plhElv+BUriUXkpSQXoRKCyimftsR0KZ9zPI/uX0VTQ=;
 b=g39fxCpP9jJ+hCzPERmfMVo1Ed4LieWjnbbF/wkeYiIRg/N0UscK7Q5MCGnojUCn6p
 A1FP94Fr43XeRPFA6q/WlPlOSQITHWQ4cqfvlpZq65nT5DzPAejfPlgmMyJrYy/PvfjV
 miI0HU5g0v4AwnjpQeLCHH9jDzcgLFn+VC+GbTe2j8/WvrOTZm9ipAm3Vn3V4w/h/Vot
 8YkjSbBlbpv5aYTZ3F4Nokl8+Flm43x5+NZWUiHwD1c52YH9SbbEhVJCHj9Xv+nsQI1B
 OCm05MS1tOSwpWfH+p2PxVuVVQAnrOsKvk8S5vkwJoVKdYx5y5FMLp244JrFtfTfX16x
 oGGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=plhElv+BUriUXkpSQXoRKCyimftsR0KZ9zPI/uX0VTQ=;
 b=RbFlqZcP4pu5FGrrAae0yocJ5oBhiXZxM+CUTnrXd6Z34Adk2DwqmADGDcP2ZKSqnA
 DbvsB3O8/SvyUJIuhzmLy3Fec5Q21A3CsEiGi9l2S4SI39WAayJhHYypfCNemHB/bJHm
 VVmZoZZvJ9tyFXhEu7KfqzBANPlFlh/fEDu3xnBFf/gWBnfNXHRyX9jWAQQBsPntM6T0
 oPHeIHqiKZT6xFXCqfu7sonojs1pTON6GSS8D4nzMBH+hNN9k7MVFH6rSHtTIaEZI/wL
 FF+nKkYGOllA++zNHNPDGGeWwh43dz0MfNRpOrQ4zl8f5PCyii3zxLYjykoF4mnMtbv/
 FBAw==
X-Gm-Message-State: APjAAAXzfpqVEeL4TNKwibOxekNUwW75T31J0KODLPsxDo/x9XpZhMt/
 ttp1K3Cj30/tqfJ7dbnz8mZz6HSVS2gJU0FoMBw=
X-Google-Smtp-Source: APXvYqwU/0+XEhwYF+YlLZjzvLcGA3xe1OksHMiGFtm34/k1x/2galfCzg4w8Pmv+zx4UnYDt1r8ZsHWOdXIM2EFcAw=
X-Received: by 2002:a0d:ea4c:: with SMTP id t73mr35484753ywe.472.1558365569102; 
 Mon, 20 May 2019 08:19:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190518152355.11134-1-peron.clem@gmail.com>
 <20190518152355.11134-4-peron.clem@gmail.com>
In-Reply-To: <20190518152355.11134-4-peron.clem@gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 20 May 2019 17:19:17 +0200
Message-ID: <CAJiuCcdNmf3+xj+KE4yihZk67QV7Ds8UTjzQ6JsPp=2KLJgOZg@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] arm64: dts: allwinner: h6: add r_watchog node
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, 
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_081930_462105_DD86DF5B 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: devicetree <devicetree@vger.kernel.org>, linux-watchdog@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gU2F0LCAxOCBNYXkgMjAxOSBhdCAxNzoyNCwgQ2zDqW1lbnQgUMOpcm9u
IDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBBbGx3aW5uZXIgSDYgaGFzIGEgcl93
YXRjaGRvZyBzaW1pbGFyIHRvIEE2NC4KPgo+IERlY2xhcmUgaXQgaW4gdGhlIGRldmljZS10cmVl
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNv
bT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kg
fCA4ICsrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPgo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCj4gaW5kZXggNjBiNDdm
MjNiMmY1Li4yNzY0N2U0OTYyNjkgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktaDYuZHRzaQo+IEBAIC02MzIsNiArNjMyLDE0IEBACj4gICAgICAgICAgICAg
ICAgICAgICAgICAgI3Jlc2V0LWNlbGxzID0gPDE+Owo+ICAgICAgICAgICAgICAgICB9Owo+Cj4g
KyAgICAgICAgICAgICAgIHJfd2F0Y2hkb2c6IHdhdGNoZG9nQDcwMjA0MDAgewo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi13ZHQiLAo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiYWxsd2lubmVyLHN1bjUwaS1h
NjQtd2R0IiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImFsbHdpbm5l
cixzdW42aS1hMzEtd2R0IjsKPiArICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwNzAy
MDQwMCAweDIwPjsKPiArICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19T
UEkgMTAzIElSUV9UWVBFX0xFVkVMX0hJR0g+OwoKSnVzdCB3YW50IHRvIHBvaW50IG91dCB0aGF0
IGkgaGF2ZSB1c2VkIHRoZSBzYW1lIGJpbmRpbmdzIGZvciBXRFQgYW5kIFJfV0RULgpJIHRoaW5r
IGl0IHdvdWxkIGJlIGJldHRlciB0byBhbHNvIGludHJvZHVjZSBhIGJpbmRpbmdzIGxpa2UKImFs
bHdpbm5lcixzdW41MGktaDYtci13ZHQiLCAiYWxsd2lubmVyLHN1bjZpLWEzMS13ZHQiOwoKV2Ug
ZG9uJ3QgaGF2ZSBhY2Nlc3MgdG8gdGhlIGRhdGFzaGVldCBvZiB0aGlzIElQIGJ1dCB3ZSBjYW4g
c3Ryb25nbHkKc3VwcG9zZSB0aGF0IHdkdCBhbmQgci13ZHQgYXJlIHRoZSBzYW1lLgoKV2hhdCBk
byB5b3UgdGhpbms/CgpSZWdhcmRzLApDbGVtZW50CgoKPiArICAgICAgICAgICAgICAgfTsKPiAr
Cj4gICAgICAgICAgICAgICAgIHJfaW50YzogaW50ZXJydXB0LWNvbnRyb2xsZXJANzAyMTAwMCB7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBp
LWg2LXItaW50YyIsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJhbGx3
aW5uZXIsc3VuNmktYTMxLXItaW50YyI7Cj4gLS0KPiAyLjE3LjEKPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
