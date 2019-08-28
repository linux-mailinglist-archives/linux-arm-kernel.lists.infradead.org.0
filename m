Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E4D9FE7C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 11:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x4iJ0yb91jkFBUtj5jNXNOtTUHkc0mRA2nexTKT3aHw=; b=Dths3mWWy/i8zq
	lphf1eVCRFh5X0byQFjilylTGqfEQjo91qGrHu2xWYWcxpZFuzs/ygLjX66y7stPg+6LKUsMOeOVM
	mvSmobWlWj8GQ8R5pgsfcgwkiCUL8DZ9+6/+5flW8ouPtlDAtm44tjNyUHX1M7l6sVPpCEQ1jsiPX
	08qvUmWVQE4qiM4av5Mlp7BXtumXLF59GU6gesRgrMTuUpIKDTFa0uoivibMtdaRmJyUf5He+Ei0h
	+i/fsbXSTx/BFqyIANB6uzUa4/WhjEwTS2f+ve8Zh5ydLIYvuLApg5Z91HtnbOMRIMzOHJpOAa0tL
	cbnHT/JilTVpY/E8g7Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2uHJ-0004fd-R5; Wed, 28 Aug 2019 09:30:09 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2uH1-0004eG-B5; Wed, 28 Aug 2019 09:29:53 +0000
Received: by mail-ed1-x542.google.com with SMTP id m44so2210388edd.9;
 Wed, 28 Aug 2019 02:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qiN6p9okEKj9xdhJ0LZDhO1PJ727sCo2qhZBTgeuDyE=;
 b=DGF4w+XNsyemhh95b/8GlLeHhob7j64p/scq8+UdVf2NABOlXSAjccc/nhDGMqcIAa
 WLXLjP8tJy3bLoAUAeFdU2EvhHALom7C0ijrQoU2ll4rXOEzawA/CwPsyh9UQa9cITnn
 /Mv5O6O5G6qwNZuU3YlPNPOe5M2luCGlPSX/XYJR75GW/rYBtY0OWn3NVrMUnN36f1Qh
 LjSx6mEdTTAG78DpRgJ07RkIW1DjVO01QrSEWk/FTm73g0BDNBjhjXxE3sM5fSVrz5Wt
 3k85eG6h35zOOZE/Q2CIyVEc4vBpZyBb+u3pz7QOaQgt39gPN+T+rpXYO532woWuIvzY
 9hFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=qiN6p9okEKj9xdhJ0LZDhO1PJ727sCo2qhZBTgeuDyE=;
 b=ThhZfKBGwzbHA8OV5DydYRoVPcK+DJhNVP53vRkW6UB5PZqSnsmSgoR1GUpMb+Iu5v
 dh8dSiNac5bV6iaqXZbCJJ1Tv2Ms8YHjVQDGjeUJ5vYEMZ6C30ZOl4FLBaUkJgsVguOc
 qVG4v0eiGpueOePbkeh3KbXmedwjA9PvUgX6BvbG0KRjZXs5EqwUK41Pw8mrS0D8GuGX
 BgC4bQTiIvtTuVxeJpW1Pnz1OICfDhcRF1GyklY70RMK9dQnq9952YOTxiCYwARoTfH/
 Pgk+IJiSIZAudWKnMGlWMFy4zmXlR1s0nkpVKnp1DNyDhQ5i/LKjEdBafiV2ftvHqcPV
 PfIw==
X-Gm-Message-State: APjAAAXSZ/wPhMjFbTXYXTgdMz5CtXNvCUR6joDRHS2PewRZjlgk9tGa
 32qntN/v+MhPXVmcgFbjfTejvtoELK8=
X-Google-Smtp-Source: APXvYqwqf3DSQkZaGGeQXD2tzOl4846RmC+67vL/b2KvA5o8AH0/SsdOORIPx1iY6ku3R2X16RLjvQ==
X-Received: by 2002:a17:906:81cb:: with SMTP id
 e11mr2220211ejx.37.1566984588922; 
 Wed, 28 Aug 2019 02:29:48 -0700 (PDT)
Received: from ziggy.stardust ([95.169.228.146])
 by smtp.gmail.com with ESMTPSA id g3sm343770edv.9.2019.08.28.02.29.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Aug 2019 02:29:48 -0700 (PDT)
Subject: Re: [PATCH net-next v4 3/3] dt-bindings: net: ethernet: Update mt7622
 docs and dts to reflect the new phylink API
To: =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Nelson Chang <nelson.chang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>
References: <20190825174341.20750-1-opensource@vdorst.com>
 <20190825174341.20750-4-opensource@vdorst.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 jrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <e45565b1-bb63-66af-16f6-5c7c1094dd67@gmail.com>
Date: Wed, 28 Aug 2019 11:29:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190825174341.20750-4-opensource@vdorst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_022951_844764_D24A5B94 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 linux-mips@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-mediatek@lists.infradead.org, Stefan Roese <sr@denx.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGF2aWQsCgpPbiAyNS8wOC8yMDE5IDE5OjQzLCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cj4g
VGhpcyBwYXRjaCB0aGUgcmVtb3ZlcyB0aGUgcmVjZW50bHkgYWRkZWQgbWVkaWF0ZWsscGh5c3Bl
ZWQgcHJvcGVydHkuCj4gVXNlIHRoZSBmaXhlZC1saW5rIHByb3BlcnR5IHNwZWVkID0gPDI1MDA+
IHRvIHNldCB0aGUgcGh5IGluIDIuNUdiaXQuCj4gU2VlIG10NzYyMi1iYW5hbmFwaS1icGktcjY0
LmR0cyBmb3IgYSB3b3JraW5nIGV4YW1wbGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogUmVuw6kgdmFu
IERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+Cj4gLS0KPiB2My0+djQ6Cj4gKiBubyBjaGFu
Z2UKPiB2Mi0+djM6Cj4gKiBubyBjaGFuZ2UKPiB2MS0+djI6Cj4gKiBTR01JSSBwb3J0IG9ubHkg
c3VwcG9ydCBCQVNFLVggYXQgMi41R2JpdC4KPiAtLS0KPiAgLi4uL2FybS9tZWRpYXRlay9tZWRp
YXRlayxzZ21paXN5cy50eHQgICAgICAgIHwgIDIgLS0KPiAgLi4uL2R0cy9tZWRpYXRlay9tdDc2
MjItYmFuYW5hcGktYnBpLXI2NC5kdHMgIHwgMjggKysrKysrKysrKysrKy0tLS0tLQo+ICBhcmNo
L2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210NzYyMi5kdHNpICAgICAgfCAgMSAtCj4gIDMgZmls
ZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpUaGFua3MgZm9y
IHRha2luZyB0aGlzIHBhdGNoLiBGb3IgdGhlIG5leHQgdGltZSwgcGxlYXNlIG1ha2Ugc3VyZSB0
aGF0IGR0c1tpXQpwYXRjaGVzIGFyZSBpbmRlcGVuZGVudCBmcm9tIHRoZSBiaW5kaW5nIGRlc2Ny
aXB0aW9uLCBhcyBkdHNbaV0gc2hvdWxkIGdvCnRocm91Z2ggbXkgdHJlZS4gTm8gcHJvYmxlbSBm
b3IgdGhpcyByb3VuZCwganVzdCBzYXlpbmcgZm9yIHRoZSBmdXR1cmUuCgpSZWdhcmRzLApNYXR0
aGlhcwoKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2FybS9tZWRpYXRlay9tZWRpYXRlayxzZ21paXN5cy50eHQgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvYXJtL21lZGlhdGVrL21lZGlhdGVrLHNnbWlpc3lzLnR4dAo+IGluZGV4
IGY1NTE4ZjI2YTkxNC4uMzBjYjY0NWMwZTU0IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbWVkaWF0ZWsvbWVkaWF0ZWssc2dtaWlzeXMudHh0Cj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9tZWRpYXRlay9tZWRp
YXRlayxzZ21paXN5cy50eHQKPiBAQCAtOSw4ICs5LDYgQEAgUmVxdWlyZWQgUHJvcGVydGllczoK
PiAgCS0gIm1lZGlhdGVrLG10NzYyMi1zZ21paXN5cyIsICJzeXNjb24iCj4gIAktICJtZWRpYXRl
ayxtdDc2Mjktc2dtaWlzeXMiLCAic3lzY29uIgo+ICAtICNjbG9jay1jZWxsczogTXVzdCBiZSAx
Cj4gLS0gbWVkaWF0ZWsscGh5c3BlZWQ6IFNob3VsZCBiZSBvbmUgb2YgImF1dG8iLCAiMTAwMCIg
b3IgIjI1MDAiIHRvIG1hdGNoIHVwCj4gLQkJICAgICB0aGUgY2FwYWJpbGl0eSBvZiB0aGUgdGFy
Z2V0IFBIWS4KPiAgCj4gIFRoZSBTR01JSVNZUyBjb250cm9sbGVyIHVzZXMgdGhlIGNvbW1vbiBj
bGsgYmluZGluZyBmcm9tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9j
ay9jbG9jay1iaW5kaW5ncy50eHQKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9t
ZWRpYXRlay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L21lZGlhdGVrL210NzYyMi1iYW5hbmFwaS1icGktcjY0LmR0cwo+IGluZGV4IDcxMGM1YzNkODdk
My4uODNlMTA1OTFlMGU1IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0
ZWsvbXQ3NjIyLWJhbmFuYXBpLWJwaS1yNjQuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9tZWRpYXRlay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5kdHMKPiBAQCAtMTE1LDI0ICsxMTUs
MzQgQEAKPiAgfTsKPiAgCj4gICZldGggewo+IC0JcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
PiAtCXBpbmN0cmwtMCA9IDwmZXRoX3BpbnM+Owo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICsJZ21h
YzA6IG1hY0AwIHsKPiArCQljb21wYXRpYmxlID0gIm1lZGlhdGVrLGV0aC1tYWMiOwo+ICsJCXJl
ZyA9IDwwPjsKPiArCQlwaHktbW9kZSA9ICIyNTAwYmFzZS14IjsKPiArCj4gKwkJZml4ZWQtbGlu
ayB7Cj4gKwkJCXNwZWVkID0gPDI1MDA+Owo+ICsJCQlmdWxsLWR1cGxleDsKPiArCQkJcGF1c2U7
Cj4gKwkJfTsKPiArCX07Cj4gIAo+ICAJZ21hYzE6IG1hY0AxIHsKPiAgCQljb21wYXRpYmxlID0g
Im1lZGlhdGVrLGV0aC1tYWMiOwo+ICAJCXJlZyA9IDwxPjsKPiAtCQlwaHktaGFuZGxlID0gPCZw
aHk1PjsKPiArCQlwaHktbW9kZSA9ICJyZ21paSI7Cj4gKwo+ICsJCWZpeGVkLWxpbmsgewo+ICsJ
CQlzcGVlZCA9IDwxMDAwPjsKPiArCQkJZnVsbC1kdXBsZXg7Cj4gKwkJCXBhdXNlOwo+ICsJCX07
Cj4gIAl9Owo+ICAKPiAtCW1kaW8tYnVzIHsKPiArCW1kaW86IG1kaW8tYnVzIHsKPiAgCQkjYWRk
cmVzcy1jZWxscyA9IDwxPjsKPiAgCQkjc2l6ZS1jZWxscyA9IDwwPjsKPiAtCj4gLQkJcGh5NTog
ZXRoZXJuZXQtcGh5QDUgewo+IC0JCQlyZWcgPSA8NT47Cj4gLQkJCXBoeS1tb2RlID0gInNnbWlp
IjsKPiAtCQl9Owo+ICAJfTsKPiAgfTsKPiAgCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvbWVkaWF0ZWsvbXQ3NjIyLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVr
L210NzYyMi5kdHNpCj4gaW5kZXggZDFlMTNkMzQwZTI2Li5kYWM1MWU5ODIwNGMgMTAwNjQ0Cj4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc2MjIuZHRzaQo+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3NjIyLmR0c2kKPiBAQCAtOTMxLDYgKzkzMSw1
IEBACj4gIAkJCSAgICAgInN5c2NvbiI7Cj4gIAkJcmVnID0gPDAgMHgxYjEyODAwMCAwIDB4MzAw
MD47Cj4gIAkJI2Nsb2NrLWNlbGxzID0gPDE+Owo+IC0JCW1lZGlhdGVrLHBoeXNwZWVkID0gIjI1
MDAiOwo+ICAJfTsKPiAgfTsKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
