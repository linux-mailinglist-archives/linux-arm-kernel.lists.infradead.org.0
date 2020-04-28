Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AAC1BC173
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6k0AC3btJfIyxhclvqhmhpMzW7Nn71kPA6gHyslWO4=; b=rJkkDZVl/Uw5+Z
	4Ami2UHJR2arLdXNsKLuD7jhpYWjcgsK3ScqacYZwZsbDEftYg+xgcaW5i2sS24Kj6gq3m2ExQXEn
	9wLun3qRtWwhTGPmkoORNqL6n7c6zhXpMq7zASkDmsG95lj+v4tbgRYWDNyPe+ZnhGrvdXR+xxSPb
	IQZ3FRmQo9et0+76wM4wRAMRdnomUJHoJqxp8KxyAiDQk26ypV1ccZmRT2rYDc5RqhSY0ceSxEu6L
	QCkV4fUPLliLtNte5QZ3XKKPznuNvXUEMhk/bLVUf8/jinBq3Rd8s5cjw96HTH6yw6Tm+Jph37J3P
	AoVW0uoaq0NHfT6auGhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRLx-0000Gl-NP; Tue, 28 Apr 2020 14:36:53 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRLn-0000Fd-9a
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:36:44 +0000
Received: by mail-io1-xd44.google.com with SMTP id u11so23140820iow.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 07:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VPA9Kxr39ERnqwIoc2UJSAp5IoBA3dbxr68iA+juyP0=;
 b=FwnL/1+AgacLVrzfCLrLz36o10+EmBtDT+Vx71m9oQ+I8Ep9EruaY8kVJkEYTxwWXr
 9mOoV34Me4r25FtQL4YIVI1WVIVyNTGJK3zSm5wkSCPHE+jnDdwe8NCx9Zz/Iyqozj4x
 Ru/LBFO5YLFEmUqcxt3LPB/c+vkH0Gq2GNhQFwD/3Om8Pufxq/LBJGmYKrJI2cgyygFA
 /KDRbpoVEG3SaE2JJ1Sl/nF5C1H4Disv6rZrIdh6EUgw/R53UwhrWWCzxwA8WJVh/hUy
 JPoJ0VP1t3RZs7VoNBMzXnRTP2nnt1Cw16eNbJ98uAjMlPANVBDzEt5854f2gIwdTT4i
 c67w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VPA9Kxr39ERnqwIoc2UJSAp5IoBA3dbxr68iA+juyP0=;
 b=BcVVWX1jy9ABWN/t0a1ZrSyNEsZbyvVNnNyFGHahc9X+RYzVhLedj/BALyzk7NaKQC
 LUcqf5CX9qrxstfF+vRiVCjq/QBgvTXetDBNfNX+ShiDNMbdibYtHznpOjsLBzZDnx07
 P5d5lG6EoHYMfBzE3rApK4XJ7/Qolr61OHcx0K8DQ2jfkCf26hxOYOpeUwO6AAq2IumL
 AG6lDWS096b1RaAgfWD15ZbSSnhjJUy4Qd3X7zinp/vpFMToBkg0iIIjx+d8cdSdhxoH
 7gD5r396U8sDQpb/cmFAbjXkGo4ZCcCfPtYKyjUYMPeqATOx2//qIs+fIYlyuNFSRl6x
 9VQw==
X-Gm-Message-State: AGi0PuZ4uMPM4mGhdTJmTsXxm2Jgii5U3OrnY8h+ISwt9S6e6CjTDNMQ
 rkVMYkvTKc13vrQq5MjXDO2nLgbBfmeCw6Ud9Us=
X-Google-Smtp-Source: APiQypJWKcOZwolIsn7a73yc4aMqWx+mk2KAdEK/HRRLB/AFX92WYN4FJ4pKWxX8TsolxV933sbSRmnXvsBuyeUoSoo=
X-Received: by 2002:a5d:84d4:: with SMTP id z20mr15044943ior.36.1588084601133; 
 Tue, 28 Apr 2020 07:36:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200426104115.22630-1-peron.clem@gmail.com>
 <20200426104115.22630-8-peron.clem@gmail.com>
 <20200428081444.vddwswsorl5tf7yp@gilmour.lan>
In-Reply-To: <20200428081444.vddwswsorl5tf7yp@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 28 Apr 2020 16:36:30 +0200
Message-ID: <CAJiuCcf6xzB+HhV4GSOuawi3FJDeA4dvHXkKMV36+UF8gLLj7w@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] arm64: dts: sun50i-h6: Add HDMI audio to H6 DTSI
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_073643_332609_0A2C0CB4 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gVHVlLCAyOCBBcHIgMjAyMCBhdCAxMDoxNCwgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lQGNlcm5vLnRlY2g+IHdyb3RlOgo+Cj4gT24gU3VuLCBBcHIgMjYsIDIwMjAgYXQgMTI6
NDE6MTVQTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gRnJvbTogSmVybmVqIFNr
cmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4KPiA+IEFkZCBhIHNpbXBsZS1zb3Vu
ZGNhcmQgdG8gbGluayBhdWRpbyBiZXR3ZWVuIEhETUkgYW5kIEkyUy4KPiA+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBNYXJjdXMgQ29vcGVyIDxjb2Rla2lwcGVyQGdtYWlsLmNvbT4KPiA+IFNpZ25l
ZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4gPiAtLS0K
PiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSB8IDMxICsr
KysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKykK
PiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBp
LWg2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+
ID4gaW5kZXggYTVlZTY4Mzg4YmQzLi41NThmZTYzNzM5Y2IgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+ID4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKPiA+IEBAIC04OCw2ICs4OCwy
NCBAQAo+ID4gICAgICAgICAgICAgICAgICAgICAgIChHSUNfQ1BVX01BU0tfU0lNUExFKDQpIHwg
SVJRX1RZUEVfTEVWRUxfSElHSCk+Owo+ID4gICAgICAgfTsKPiA+Cj4gPiArICAgICBzb3VuZF9o
ZG1pOiBzb3VuZCB7Cj4gPiArICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAic2ltcGxlLWF1ZGlv
LWNhcmQiOwo+ID4gKyAgICAgICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxmb3JtYXQgPSAiaTJz
IjsKPiA+ICsgICAgICAgICAgICAgc2ltcGxlLWF1ZGlvLWNhcmQsbmFtZSA9ICJhbGx3aW5uZXIt
aGRtaSI7Cj4KPiBJdCBkb2Vzbid0IHNlZW0gdG8gYmUgb24gcHVycG9zZSwgYnV0IHRoZSBuYW1l
IGlzIGRpZmZlcmVudCBmcm9tIHRoZSBvdGhlcgo+IHNlcmllcyB5b3Ugc2VudC4KCkluZGVlZCwg
SSBoYXZlIHNlbnQgdGhpcyBzZXJpZSBiZWZvcmUgbG9va2luZyBhdCB0aGUgb3RoZXIuCgpJIHdp
bGwgY2hhbmdlIHRoaXMgdG8ga2VlcCBjb2hlcmVuY3ksIG9uY2Ugd2UgYWdyZWUgb24gdGhlIGNv
cnJlY3QgY2FyZCBuYW1lLgoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LApDbGVtZW50Cgo+Cj4gTWF4
aW1lCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
