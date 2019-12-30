Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE2012D192
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 16:44:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4E26VQ2lrIifVjIexPZ+OJ/YTu6YErrYvMzHOQ+Jdls=; b=oPXDnoAl0EOcT0
	feOIHSzoKmV/4uR/CA+vwoRr9EMoUDTl9a5t2kmwPdNBQIGDnKkn/bcScLILyzfhBFFw+Hgy5DbPZ
	G1l79ehE/6Z/mkYgyUyN8iM0/EdWysjOMuWU4vVwdUhXq5dT3E363WphHioT08slXa91Mg9zdEEqI
	/JGSpFq87zbn6hYUtMP0hLKfVbkM69RdXn4z/odL5kVfyB+Xr/4eXa26EjDwkzfiS/kgRdOHQfP+4
	4UByHWWZ1zyZ2ds1O3aFf3yZf5Fjm/XbYXdB8aA30+sup1RFVnys6mFbMFc5UrBacjBx9HdCTEcEO
	o0R8g4DAaL0QdI0g82BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilxDQ-0002KG-Hs; Mon, 30 Dec 2019 15:44:20 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilxDH-0002JH-6F
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 15:44:12 +0000
Received: by mail-ed1-f65.google.com with SMTP id c26so32911709eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 07:44:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=BqjpB17I4FAVcCVel4kRRM5u2ZSN97epJBsAntRnbvo=;
 b=JOWzAt7xMcqdPGSWdq2oZu1U9REiPkcshq0n/0FmbbCek9nveB4f5/qb+juCM+/mub
 GN4rzM23IG6ep+de1yGM3MTc63BmZ8jHldraarp7CfUrdZVDV82Pj83iMNVABMmbDrLx
 1TwciaHbqGg37TIChisuYj+YDkmGpiQ+TjXjd9m7qpBOWRrg+Dyji21BXlUOHuwnI3cz
 VWmKozqTph/yVGpbF2f89fbZl8574MepEeqLn8/K4oKybrh2BFUJuS+S5dOhUZqu6ikb
 2hU4NJINUh8eVFtev6CMI25xajcnWUsO1mvA7E9kj5QeDonUFLhp5nO4QVnwEoVTKx/M
 763A==
X-Gm-Message-State: APjAAAVzEVTM1ceNG/9mvAyog45KQ6jjNo07He3RX7T/LZHHFpl0lEw1
 dvYVLchvUrrbOJPr4q3xIh4=
X-Google-Smtp-Source: APXvYqxzo56maTlSxQsNU5A2SyQb7P5FV8UkAKWQclUCoOB2bQNqmZBjZSuWqej4dQDiaLucch6EvA==
X-Received: by 2002:a17:906:2649:: with SMTP id
 i9mr71611722ejc.120.1577720649214; 
 Mon, 30 Dec 2019 07:44:09 -0800 (PST)
Received: from pi3 ([194.230.155.138])
 by smtp.googlemail.com with ESMTPSA id t1sm5651917ejg.32.2019.12.30.07.44.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 07:44:08 -0800 (PST)
Date: Mon, 30 Dec 2019 16:44:05 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@samsung.com>
Subject: Re: [RFC PATCH v3 4/7] arm: dts: exynos: Add interconnect bindings
 for Exynos4412
Message-ID: <20191230154405.GC4918@pi3>
References: <20191220115653.6487-1-a.swigon@samsung.com>
 <CGME20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9@eucas1p1.samsung.com>
 <20191220115653.6487-5-a.swigon@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220115653.6487-5-a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_074411_232287_3E6EF0A1 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, b.zolnierkie@samsung.com, sw0312.kim@samsung.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBEZWMgMjAsIDIwMTkgYXQgMTI6NTY6NTBQTSArMDEwMCwgQXJ0dXIgxZp3aWdvxYQg
d3JvdGU6Cj4gVGhpcyBwYXRjaCBhZGRzIHRoZSBmb2xsb3dpbmcgcHJvcGVydGllcyB0byB0aGUg
RXh5bm9zNDQxMiBEVDoKPiAgIC0gZXh5bm9zLGludGVyY29ubmVjdC1wYXJlbnQtbm9kZTogdG8g
ZGVjbGFyZSBjb25uZWN0aW9ucyBiZXR3ZWVuCj4gICAgIG5vZGVzIGluIG9yZGVyIHRvIGd1YXJh
bnRlZSBQTSBRb1MgcmVxdWlyZW1lbnRzIGJldHdlZW4gbm9kZXM7Cj4gICAtICNpbnRlcmNvbm5l
Y3QtY2VsbHM6IHJlcXVpcmVkIGJ5IHRoZSBpbnRlcmNvbm5lY3QgZnJhbWV3b3JrLgo+IAo+IE5v
dGUgdGhhdCAjaW50ZXJjb25uZWN0LWNlbGxzIGlzIGFsd2F5cyB6ZXJvIGFuZCBub2RlIElEcyBh
cmUgbm90Cj4gaGFyZGNvZGVkIGFueXdoZXJlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFydHVyIMWa
d2lnb8WEIDxhLnN3aWdvbkBzYW1zdW5nLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMv
ZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kgfCA1ICsrKysrCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKykKClRoZSBvcmRlciBvZiBwYXRjaGVzIGlzIGNvbmZ1c2luZy4gUGF0
Y2hlcyA0IGFuZCA2IGFyZSBzcGxpdCAtIGRvIHRoZQpkZXBlbmQgb24gNT8gSSBkb3VidCBidXQu
Li4KCkFkanVzdCB0aGUgdGl0bGUgdG8gbWF0Y2ggdGhlIGNvbnRlbnRzIC0geW91IGFyZSBub3Qg
YWRkaW5nIGJpbmRpbmdzIGJ1dApwcm9wZXJ0aWVzIHRvIGJ1cyBub2Rlcy4gQWxzbyB0aGUgcHJl
Zml4IGlzIEFSTTogKGxvb2sgYXQgcmVjZW50CmNvbW1pdHMpLgoKPiAKPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kgYi9hcmNoL2Fy
bS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaQo+IGluZGV4IDRjZTNkNzdh
NjcwNC4uZDlkNzBlYWNmY2FmIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5v
czQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9z
NDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPiBAQCAtOTAsNiArOTAsNyBAQAo+ICAmYnVzX2RtYyB7
Cj4gIAlleHlub3MscHBtdS1kZXZpY2UgPSA8JnBwbXVfZG1jMF8zPiwgPCZwcG11X2RtYzFfMz47
Cj4gIAl2ZGQtc3VwcGx5ID0gPCZidWNrMV9yZWc+Owo+ICsJI2ludGVyY29ubmVjdC1jZWxscyA9
IDwwPjsKClRoaXMgZG9lcyBub3QgbG9vayBsaWtlIHByb3BlcnR5IG9mIE9kcm9pZCBidXQgRXh5
bm9zNDQxMiBvciBFeHlub3M0LgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
