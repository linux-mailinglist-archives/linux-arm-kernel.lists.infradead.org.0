Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D843B155
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ro1/MbIWu8bwGgmrLGnMRIOWClwjal7xCJRp803dr/4=; b=WZVNsbB1hLJYSU
	MUfVi7eTImoAIdoJy8k9aUm6Z/AfJCziK/3zcvHuXD+9dll93azfmS3WTkzOQlzO3nYKpjH5NnX4/
	qM0z8NfoDoABTovRE5fEik0e1GZx2/r7taFgrAwJ6ZJLJ9iQ1ZHf0Tl2IA1XsyMK7O+38ZK3pzHas
	C0xzdD6SdietcgHeYcDnGyTYY2W8dOaEakCXJuozjm/J8d0DmLdBQJ0HMYXv3Uch/DaC4KRE17fgM
	L9barU/1IVdmjYMZcKZS0qA1B1gQPFoD/4bPItikHdi95THlipDTTq2lT1cURPnLmcwJlRGLUq2n/
	+UIvD45kUuAOGDFvZnJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haG6i-0002YN-Uq; Mon, 10 Jun 2019 08:56:49 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haG5j-0002Vz-U3
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:55:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id r18so8284491wrm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 01:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=GpySo1g8LDVz9k5a5vKZQ7sUTfsxzgZnBVStPDXVsTE=;
 b=TLJxZMAGuxy/AarP67BjcpuFCdXmgR43IKr0+QKdb6Ol6EwjkgW464DzS62DwAo+dO
 4l3D0glt/AANh00dpOKeX5lgOGgnaHX5MLKI65hRHi1lyXRAlxo+62OuFKkD2ZaRQmV/
 rI8WIiHsmp51LUX4YV67upchYnpEWrPy/SORxZ7qXCtZ2qHX3OSg2GFqUgV0Qmye4QRn
 vHth3Dz6FslHlbL0Hr2s3SDTPwXw4Rw1HdBy85K9V5tOqQ5Vt0wKY5E3wp4wLIRhsXug
 FNL3oCKSL/XBHtVjEY+6D6WgGpP7i050rJ6/+HHW2jGvqbrA7bIIrN60uwfYlIt2VUPj
 LJcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=GpySo1g8LDVz9k5a5vKZQ7sUTfsxzgZnBVStPDXVsTE=;
 b=fLjO1N7YZOcsXW5QgOyFFsHllfzcUaqJHydQt8CbDm08J7RK9PXJeYeRjVlKmG87Nh
 3RMpllZIHcxANvfkLoc1XBiye5AAkbeen75jM/AX7mekCR06PGoQ3lZNmw6/K2PRFK3j
 G0iRf8kjvOQ/BoJbJpW3ldsdeIcQUL2lCeuWY7WmrITEcoJMBfaXZjedtyAM7gmyRO1K
 uQQnkJytD1d4cvit3F6foytCFwvUlCiyoUsVMeTb3bTh/g0FWAd0dOwhavpVfe0GjTBn
 ivnHGu66MPciDjL+Kbi3qO4bEGJH4PEQoF3pu8DVS/oW/BW6qn2N+oohxrBlakL51Dd8
 bTQw==
X-Gm-Message-State: APjAAAUG8N+qYtT0JFv7kq6WLZIr79lCZcPkSpRZTNk7ZEcrdYt8HX5m
 stFrsIw88uD63hXx48Ko5RDg6w==
X-Google-Smtp-Source: APXvYqyjQYjI9vIrm/FNhIBXPO/+5VtKCSvydqLfAPGAnBQLd3gOIGqGaZYrgEZEfWBncvk0AvMC2A==
X-Received: by 2002:adf:aa09:: with SMTP id p9mr23598944wrd.59.1560156944579; 
 Mon, 10 Jun 2019 01:55:44 -0700 (PDT)
Received: from dell ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id x129sm13809283wmg.44.2019.06.10.01.55.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 01:55:44 -0700 (PDT)
Date: Mon, 10 Jun 2019 09:55:42 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v3 4/8] pinctrl: qcom: sdm845: Provide ACPI support
Message-ID: <20190610085542.GL4797@dell>
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190610084213.1052-4-lee.jones@linaro.org>
 <CAKv+Gu_s7i8JC4cv-dJMvm1_0cGzzhzf+Dxu0rxcF7iugF=vHg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu_s7i8JC4cv-dJMvm1_0cGzzhzf+Dxu0rxcF7iugF=vHg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_015549_488589_42047406 
X-CRM114-Status: GOOD (  28.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c <linux-i2c@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Jeffrey Hugo <jlhugo@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxMCBKdW4gMjAxOSwgQXJkIEJpZXNoZXV2ZWwgd3JvdGU6Cgo+IE9uIE1vbiwgMTAg
SnVuIDIwMTkgYXQgMTA6NDIsIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+IHdyb3Rl
Ogo+ID4KPiA+IFRoaXMgcGF0Y2ggcHJvdmlkZXMgYmFzaWMgc3VwcG9ydCBmb3IgYm9vdGluZyB3
aXRoIEFDUEkgaW5zdGVhZAo+ID4gb2YgdGhlIGN1cnJlbnRseSBzdXBwb3J0ZWQgRGV2aWNlIFRy
ZWUuICBXaGVuIGRvaW5nIHNvIHRoZXJlIGFyZSBhCj4gPiBjb3VwbGUgb2YgZGlmZmVyZW5jZXMg
d2hpY2ggd2UgbmVlZCB0byB0YWtlbiBpbnRvIGNvbnNpZGVyYXRpb24uCj4gPgo+ID4gRmlyc3Rs
eSwgdGhlIFNETTg1MCBBQ1BJIHRhYmxlcyBvbWl0IGluZm9ybWF0aW9uIHBlcnRhaW5pbmcgdG8g
dGhlCj4gPiA0IHJlc2VydmVkIEdQSU9zIG9uIHRoZSBwbGF0Zm9ybS4gIElmIExpbnV4IGF0dGVt
cHRzIHRvIHRvdWNoLwo+ID4gaW5pdGlhbGlzZSBhbnkgb2YgdGhlc2UgbGluZXMsIHRoZSBmaXJt
d2FyZSB3aWxsIHJlc3RhcnQgdGhlCj4gPiBwbGF0Zm9ybS4KPiA+Cj4gPiBTZWNvbmRseSwgd2hl
biBib290aW5nIHdpdGggQUNQSSwgaXQgaXMgZXhwZWN0ZWQgdGhhdCB0aGUgZmlybXdhcmUKPiA+
IHdpbGwgc2V0LXVwIHRoaW5ncyBsaWtlOyBSZWd1bGF0b3JzLCBDbG9ja3MsIFBpbiBGdW5jdGlv
bnMsIGV0YyBpbgo+ID4gdGhlaXIgaWRlYWwgY29uZmlndXJhdGlvbi4gIFRodXMsIHRoZSBwb3Nz
aWJsZSBQaW4gRnVuY3Rpb25zCj4gPiBhdmFpbGFibGUgdG8gdGhpcyBwbGF0Zm9ybSBhcmUgbm90
IGFkdmVydGlzZWQgd2hlbiBwcm92aWRpbmcgdGhlCj4gPiBoaWdoZXIgR1BJT0QvUGluY3RybCBB
UElzIHdpdGggcGluIGluZm9ybWF0aW9uLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25l
cyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gCj4gRm9yIHRoZSBBQ1BJIHByb2JpbmcgYm9pbGVy
cGxhdGU6Cj4gQWNrZWQtYnk6IEFyZCBCaWVzaGV1dmVsIDxhcmQuYmllc2hldXZlbEBsaW5hcm8u
b3JnPgo+IAo+ICpIb3dldmVyKiwgSSByZWFsbHkgZG9uJ3QgbGlrZSBoYXJkY29kaW5nIHJlc2Vy
dmVkIEdQSU9zIGxpa2UgdGhpcy4KPiBXaGF0IGd1YXJhbnRlZSBkbyB3ZSBoYXZlIHRoYXQgZWFj
aCBhbmQgZXZlcnkgQUNQSSBzeXN0ZW0KPiBpbmNvcnBvcmF0aW5nIHRoZSBRQ09NMDIxNyBkZXZp
Y2UgaGFzIHRoZSBleGFjdCBzYW1lIGxpc3Qgb2YgcmVzZXJ2ZWQKPiBHUElPcz8KClRoaXMgaXMg
U0RNODQ1IHNwZWNpZmljLCBzbyB0aGUgY2hhbmNlcyBhcmUgcmVkdWNlZC4KCkhvd2V2ZXIsIGlm
IGFub3RoZXIgU0RNODQ1IHZhcmlhbnQgZG9lcyBjcm9wIHVwLCBhbHNvIGxhY2tpbmcgdGhlCiJn
cGlvcyIgcHJvcGVydHksIHdlIHdpbGwgaGF2ZSB0byBmaW5kIGFub3RoZXIgZGlmZmVyZW50aWF0
aW5nIGZhY3RvcgpiZXR3ZWVuIHRoZW0gYW5kIGNvbmR1Y3Qgc29tZSBtYXRjaGluZy4gIFdoYXQg
ZWxzZSBjYW4geW91IGRvIHdpdGgKcGxhdGZvcm1zIHN1cHBvcnRpbmcgbm9uLWNvbXBsZXRlL25v
bi1mb3J0aGNvbWluZyBBQ1BJIHRhYmxlcz8KCj4gPiAtLS0KPiA+ICBkcml2ZXJzL3BpbmN0cmwv
cWNvbS9LY29uZmlnICAgICAgICAgIHwgIDIgKy0KPiA+ICBkcml2ZXJzL3BpbmN0cmwvcWNvbS9w
aW5jdHJsLXNkbTg0NS5jIHwgMzYgKysrKysrKysrKysrKysrKysrKysrKysrKystCj4gPiAgMiBm
aWxlcyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwvcWNvbS9LY29uZmlnIGIvZHJpdmVycy9waW5jdHJs
L3Fjb20vS2NvbmZpZwo+ID4gaW5kZXggMmU2NmFiNzJjMTBiLi5hYWZiZTkzMjQyNGYgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL3BpbmN0cmwvcWNvbS9LY29uZmlnCj4gPiArKysgYi9kcml2ZXJz
L3BpbmN0cmwvcWNvbS9LY29uZmlnCj4gPiBAQCAtMTY4LDcgKzE2OCw3IEBAIGNvbmZpZyBQSU5D
VFJMX1NETTY2MAo+ID4KPiA+ICBjb25maWcgUElOQ1RSTF9TRE04NDUKPiA+ICAgICAgICAgdHJp
c3RhdGUgIlF1YWxjb21tIFRlY2hub2xvZ2llcyBJbmMgU0RNODQ1IHBpbiBjb250cm9sbGVyIGRy
aXZlciIKPiA+IC0gICAgICAgZGVwZW5kcyBvbiBHUElPTElCICYmIE9GCj4gPiArICAgICAgIGRl
cGVuZHMgb24gR1BJT0xJQiAmJiAoT0YgfHwgQUNQSSkKPiA+ICAgICAgICAgc2VsZWN0IFBJTkNU
UkxfTVNNCj4gPiAgICAgICAgIGhlbHAKPiA+ICAgICAgICAgICBUaGlzIGlzIHRoZSBwaW5jdHJs
LCBwaW5tdXgsIHBpbmNvbmYgYW5kIGdwaW9saWIgZHJpdmVyIGZvciB0aGUKPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BpbmN0cmwvcWNvbS9waW5jdHJsLXNkbTg0NS5jIGIvZHJpdmVycy9waW5j
dHJsL3Fjb20vcGluY3RybC1zZG04NDUuYwo+ID4gaW5kZXggYzk3ZjIwZmNhNWZkLi45OGE0Mzhk
YmE3MTEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BpbmN0cmwvcWNvbS9waW5jdHJsLXNkbTg0
NS5jCj4gPiArKysgYi9kcml2ZXJzL3BpbmN0cmwvcWNvbS9waW5jdHJsLXNkbTg0NS5jCj4gPiBA
QCAtMyw2ICszLDcgQEAKPiA+ICAgKiBDb3B5cmlnaHQgKGMpIDIwMTYtMjAxOCwgVGhlIExpbnV4
IEZvdW5kYXRpb24uIEFsbCByaWdodHMgcmVzZXJ2ZWQuCj4gPiAgICovCj4gPgo+ID4gKyNpbmNs
dWRlIDxsaW51eC9hY3BpLmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ID4gICNp
bmNsdWRlIDxsaW51eC9vZi5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2Uu
aD4KPiA+IEBAIC0xMjc3LDYgKzEyNzgsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBtc21fcGlu
Z3JvdXAgc2RtODQ1X2dyb3Vwc1tdID0gewo+ID4gICAgICAgICBVRlNfUkVTRVQodWZzX3Jlc2V0
LCAweDk5ZjAwMCksCj4gPiAgfTsKPiA+Cj4gPiArc3RhdGljIGNvbnN0IGludCBzZG04NDVfYWNw
aV9yZXNlcnZlZF9ncGlvc1tdID0gewo+ID4gKyAgICAgICAwLCAxLCAyLCAzLCA4MSwgODIsIDgz
LCA4NCwgLTEKPiA+ICt9Owo+ID4gKwo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXNtX3BpbmN0
cmxfc29jX2RhdGEgc2RtODQ1X3BpbmN0cmwgPSB7Cj4gPiAgICAgICAgIC5waW5zID0gc2RtODQ1
X3BpbnMsCj4gPiAgICAgICAgIC5ucGlucyA9IEFSUkFZX1NJWkUoc2RtODQ1X3BpbnMpLAo+ID4g
QEAgLTEyODcsMTEgKzEyOTIsMzkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBtc21fcGluY3RybF9z
b2NfZGF0YSBzZG04NDVfcGluY3RybCA9IHsKPiA+ICAgICAgICAgLm5ncGlvcyA9IDE1MCwKPiA+
ICB9Owo+ID4KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG1zbV9waW5jdHJsX3NvY19kYXRhIHNk
bTg0NV9hY3BpX3BpbmN0cmwgPSB7Cj4gPiArICAgICAgIC5waW5zID0gc2RtODQ1X3BpbnMsCj4g
PiArICAgICAgIC5ucGlucyA9IEFSUkFZX1NJWkUoc2RtODQ1X3BpbnMpLAo+ID4gKyAgICAgICAu
Z3JvdXBzID0gc2RtODQ1X2dyb3VwcywKPiA+ICsgICAgICAgLm5ncm91cHMgPSBBUlJBWV9TSVpF
KHNkbTg0NV9ncm91cHMpLAo+ID4gKyAgICAgICAucmVzZXJ2ZWRfZ3Bpb3MgPSBzZG04NDVfYWNw
aV9yZXNlcnZlZF9ncGlvcywKPiA+ICsgICAgICAgLm5ncGlvcyA9IDE1MCwKPiA+ICt9Owo+ID4g
Kwo+ID4gIHN0YXRpYyBpbnQgc2RtODQ1X3BpbmN0cmxfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPiA+ICB7Cj4gPiAtICAgICAgIHJldHVybiBtc21fcGluY3RybF9wcm9iZShw
ZGV2LCAmc2RtODQ1X3BpbmN0cmwpOwo+ID4gKyAgICAgICBpbnQgcmV0Owo+ID4gKwo+ID4gKyAg
ICAgICBpZiAocGRldi0+ZGV2Lm9mX25vZGUpIHsKPiA+ICsgICAgICAgICAgICAgICByZXQgPSBt
c21fcGluY3RybF9wcm9iZShwZGV2LCAmc2RtODQ1X3BpbmN0cmwpOwo+ID4gKyAgICAgICB9IGVs
c2UgaWYgKGhhc19hY3BpX2NvbXBhbmlvbigmcGRldi0+ZGV2KSkgewo+ID4gKyAgICAgICAgICAg
ICAgIHJldCA9IG1zbV9waW5jdHJsX3Byb2JlKHBkZXYsICZzZG04NDVfYWNwaV9waW5jdHJsKTsK
PiA+ICsgICAgICAgfSBlbHNlIHsKPiA+ICsgICAgICAgICAgICAgICBkZXZfZXJyKCZwZGV2LT5k
ZXYsICJEVCBhbmQgQUNQSSBkaXNhYmxlZFxuIik7Cj4gPiArICAgICAgICAgICAgICAgcmV0dXJu
IC1FSU5WQUw7Cj4gPiArICAgICAgIH0KPiA+ICsKPiA+ICsgICAgICAgcmV0dXJuIHJldDsKPiA+
ICB9Cj4gPgo+ID4gKyNpZiBDT05GSUdfQUNQSQo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgYWNw
aV9kZXZpY2VfaWQgc2RtODQ1X3BpbmN0cmxfYWNwaV9tYXRjaFtdID0gewo+ID4gKyAgICAgICB7
ICJRQ09NMDIxNyJ9LAo+ID4gKyAgICAgICB7IH0sCj4gPiArfTsKPiA+ICtNT0RVTEVfREVWSUNF
X1RBQkxFKGFjcGksIHNkbTg0NV9waW5jdHJsX2FjcGlfbWF0Y2gpOwo+ID4gKyNlbmRpZgo+ID4g
Kwo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHNkbTg0NV9waW5jdHJsX29m
X21hdGNoW10gPSB7Cj4gPiAgICAgICAgIHsgLmNvbXBhdGlibGUgPSAicWNvbSxzZG04NDUtcGlu
Y3RybCIsIH0sCj4gPiAgICAgICAgIHsgfSwKPiA+IEBAIC0xMzAyLDYgKzEzMzUsNyBAQCBzdGF0
aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBzZG04NDVfcGluY3RybF9kcml2ZXIgPSB7Cj4gPiAg
ICAgICAgICAgICAgICAgLm5hbWUgPSAic2RtODQ1LXBpbmN0cmwiLAo+ID4gICAgICAgICAgICAg
ICAgIC5wbSA9ICZtc21fcGluY3RybF9kZXZfcG1fb3BzLAo+ID4gICAgICAgICAgICAgICAgIC5v
Zl9tYXRjaF90YWJsZSA9IHNkbTg0NV9waW5jdHJsX29mX21hdGNoLAo+ID4gKyAgICAgICAgICAg
ICAgIC5hY3BpX21hdGNoX3RhYmxlID0gQUNQSV9QVFIoc2RtODQ1X3BpbmN0cmxfYWNwaV9tYXRj
aCksCj4gPiAgICAgICAgIH0sCj4gPiAgICAgICAgIC5wcm9iZSA9IHNkbTg0NV9waW5jdHJsX3By
b2JlLAo+ID4gICAgICAgICAucmVtb3ZlID0gbXNtX3BpbmN0cmxfcmVtb3ZlLAo+ID4KCi0tIApM
ZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFy
by5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJv
OiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
