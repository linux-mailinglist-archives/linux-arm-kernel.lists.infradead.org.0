Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DCE4762E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 19:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BWOHDNPZV863TU9GaOPAlNeInC6qnJUa+jCWT9J4+c=; b=suOozDaqQ6rIPv
	/ED4ZQ5tYDM7Gk9KZMIEhEZz7ZMaQWv9Kp3bAOGtn46Xt33XqTxDsBzFGdDiF76SAG2HMq652UaxC
	t+36y20Bld5vy59cpbC9GE1b4SkvYGlzr9gTr5WwAvAv4tDiXmMoaVGYZ4CNA3wuQKr51OB0ASFld
	KPJxsda6EDEvt6yEFFbmnQA2trN1SXR/EojWpg7Q+vKWsWSdUV7Oo235bVCSjYXzbX7AhCUgd8stJ
	mFkn0CxrZ4d9XhJSx4qfdlHuJtPYkQzdFIm1RMGEufJsvu+BgiWDem8EUw7yEPQuqTWs9YvM9iZsn
	dYWl7ZsNwNWwCIAUDK2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcZGA-00009X-WB; Sun, 16 Jun 2019 17:48:07 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcZFo-00008I-Cr
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 17:47:46 +0000
Received: by mail-wm1-x342.google.com with SMTP id w9so2904191wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 10:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=k32GHXPQOSojycs+3f1EfADUcN8SPLsNXB1pAx3700A=;
 b=sZSXQ40il31HHkyUY7WfPrQ7A+Inu3+pL1PjJ+s8M4b64bquu2O5Xczr17R5UXUvUm
 keuqbIAe+ZjxGaA6AHzWuPhr7GEGzBOouYg2RE6pa6LJAShUc+zjo8ObdqsL+Nhgggon
 Ysw+1pq9ZEH97fggUQAvgga0fxc1p0gIp+Our0fNJ3nXfUrdCvjm+N90uYrpVVuFqrjr
 UYD/XPMdKTituDG0Zp+udUAskJPCDA5j9E8jmEdk+RFNbf1RFO+WoOzSjvQqEoTE2k6Y
 zoKfJR3L108H+5TgB8wZ45srKfZQnI55tFoiZ23S/JCEPiYYqx8+Qv4VjV6v//La3hFh
 x98w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=k32GHXPQOSojycs+3f1EfADUcN8SPLsNXB1pAx3700A=;
 b=stm6z6Ecqfc26xJtHbJ23P/qhhLUFzOnukNfT3L5Zg9Zn8y3yWUAOlCoUj88QzVcMM
 pbgRkPOdFVAATGNkiYIktQ7QitYWgKb6YM5SLkiu5Jnmur9DCGmczTcqyE3NFAAvoxJp
 UHDNkFR+iSC3sVyLrqKFovoJzVKW9HGR4oIoD6iPtCu6lcfvC6Y8Uz/ZzGn/khqNNnOT
 /LARg9Rf5L537H4k3IR17C9+I56TWZnagjgXxCrymZsAiR6PFKHoEYVa+QeCgiLCg735
 Bsc7bs6zKrGSiIiwZG9NRun9R477HOXSsoTqyLZZm36AZCTnqjSL1JfX+HBgNYjV1nWK
 cKBA==
X-Gm-Message-State: APjAAAUnw/ekxzCUhF8NMPN9X4lCwZDsGmS+zHNiCHO7Rj185SWbluBU
 6DoAWpV8W6Bn7haDVGSGT4u84A==
X-Google-Smtp-Source: APXvYqzUqWaPTHh0BJXtzSYmaLlaxeU16DnJpdyLhtS63jKadI3LwAnHD8/A6Z+pcYq2Y/Vn3NOMpw==
X-Received: by 2002:a1c:2e0a:: with SMTP id u10mr16672537wmu.92.1560707261532; 
 Sun, 16 Jun 2019 10:47:41 -0700 (PDT)
Received: from [192.168.0.41] (44.64.130.77.rev.sfr.net. [77.130.64.44])
 by smtp.googlemail.com with ESMTPSA id o126sm4060798wmo.1.2019.06.16.10.47.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 Jun 2019 10:47:40 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Fix multiple thermal zones
 conflict in rk3399.dtsi
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20190604165802.7338-1-daniel.lezcano@linaro.org>
 <5188064.YWmxIpmbGp@phil> <55b9018e-672e-522b-d0a0-c5655be0f353@linaro.org>
 <e5a4f850-27e0-cad3-04bd-6c004fca2b81@arm.com>
 <9bf85c22-f1ba-3dbc-0b67-17e124484fa1@linaro.org>
 <20190616093127.GC3826@kozik-lap>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <55da0654-ce67-b843-5ca4-37f63577b102@linaro.org>
Date: Sun, 16 Jun 2019 19:47:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190616093127.GC3826@kozik-lap>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_104744_435162_AD2813C9 
X-CRM114-Status: GOOD (  23.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Emil Renner Berthing <kernel@esmil.dk>,
 Viresh Kumar <viresh.kumar@linaro.org>, dianders@chromium.org,
 Tony Xie <tony.xie@rock-chips.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 manivannan.sadhasivam@linaro.org,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Kukjin Kim <kgene@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Randy Li <ayaka@soulik.info>,
 Vicente Bergas <vicencb@gmail.com>, edubezval@gmail.com,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTYvMDYvMjAxOSAxMTozMSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiBGcmks
IEp1biAxNCwgMjAxOSBhdCAwNDozMDoxM1BNICswMjAwLCBEYW5pZWwgTGV6Y2FubyB3cm90ZToK
Pj4gT24gMTQvMDYvMjAxOSAxNjowMiwgUm9iaW4gTXVycGh5IHdyb3RlOgo+Pj4gT24gMTQvMDYv
MjAxOSAxNDowMywgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+Pj4gT24gMTQvMDYvMjAxOSAxMToz
NSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4+Pj4+IEhpIERhbmllbCwKPj4+Pj4KPj4+Pj4gQW0g
RGllbnN0YWcsIDQuIEp1bmkgMjAxOSwgMTg6NTc6NTcgQ0VTVCBzY2hyaWViIERhbmllbCBMZXpj
YW5vOgo+Pj4+Pj4gQ3VycmVudGx5IHRoZSBjb21tb24gdGhlcm1hbCB6b25lcyBkZWZpbml0aW9u
cyBmb3IgdGhlIHJrMzM5OSBhc3N1bWVzCj4+Pj4+PiBtdWx0aXBsZSB0aGVybWFsIHpvbmVzIGFy
ZSBzdXBwb3J0ZWQgYnkgdGhlIGdvdmVybm9ycy4gVGhpcyBpcyBub3QgdGhlCj4+Pj4+PiBjYXNl
IGFuZCBlYWNoIHRoZXJtYWwgem9uZSBoYXMgaXRzIG93biBnb3Zlcm5vciBpbnN0YW5jZSBhY3Rp
bmcKPj4+Pj4+IGluZGl2aWR1YWxseSB3aXRob3V0IGNvbGxhYm9yYXRpb24gd2l0aCBvdGhlciBn
b3Zlcm5vcnMuCj4+Pj4+Pgo+Pj4+Pj4gQXMgdGhlIGNvb2xpbmcgZGV2aWNlIGZvciB0aGUgQ1BV
IGFuZCB0aGUgR1BVIHRoZXJtYWwgem9uZXMgaXMgdGhlCj4+Pj4+PiBzYW1lLCBlYWNoIGdvdmVy
bm9ycyB0YWtlIGRpZmZlcmVudCBkZWNpc2lvbnMgZm9yIHRoZSBzYW1lIGNvb2xpbmcKPj4+Pj4+
IGRldmljZSBsZWFkaW5nIHRvIGNvbmZsaWN0aW5nIGluc3RydWN0aW9ucyBhbmQgYW4gZXJyYXRp
YyBiZWhhdmlvci4KPj4+Pj4+Cj4+Pj4+PiBBcyB0aGUgY29vbGluZy1tYXBzIGlzIGFib3V0IHRv
IGJlY29tZSBhbiBvcHRpb25hbCBwcm9wZXJ0eSwgbGV0J3MKPj4+Pj4+IHJlbW92ZSB0aGUgY3B1
IGNvb2xpbmcgZGV2aWNlIG1hcCBmcm9tIHRoZSBHUFUgdGhlcm1hbCB6b25lLgo+Pj4+Pj4KPj4+
Pj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8u
b3JnPgo+Pj4+Pj4gLS0tCj4+Pj4+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS5kdHNpIHwgOSAtLS0tLS0tLS0KPj4+Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA5IGRlbGV0
aW9ucygtKQo+Pj4+Pj4KPj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS5kdHNpCj4+Pj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LmR0c2kKPj4+Pj4+IGluZGV4IDE5NmFjOWI3ODA3Ni4uZTEzNTdlMGY2MGY3IDEwMDY0
NAo+Pj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQo+
Pj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQo+Pj4+
Pj4gQEAgLTgyMSwxNSArODIxLDYgQEAKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB0eXBlID0gImNyaXRpY2FsIjsKPj4+Pj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IH07Cj4+Pj4+PiAtCj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb29saW5nLW1hcHMg
ewo+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtYXAwIHsKPj4+Pj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0cmlwID0gPCZncHVfYWxlcnQw
PjsKPj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb29saW5n
LWRldmljZSA9Cj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCA8JmNwdV9iMCBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAo+Pj4+
Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjcHVf
YjEgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPjsKPj4+Pj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07
Cj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+Pj4+IMKgwqDCoMKgwqAgfTsKPj4+Pj4K
Pj4+Pj4gbXkga25vd2xlZGdlIG9mIHRoZSB0aGVybWFsIGZyYW1ld29yayBpcyBub3QgdGhhdCBi
aWcsIGJ1dCB3aGF0IGFib3V0Cj4+Pj4+IHRoZQo+Pj4+PiByazMzOTktZGV2aWNlcyB3aGljaCBm
dXJ0aGVyIGRldGFpbCB0aGUgY29vbGluZy1tYXBzIGxpa2UKPj4+Pj4gcmszMzk5LWdydS1rZXZp
bgo+Pj4+PiBhbmQgdGhlIHJrMzM5OS1uYW5vcGMtdDQgd2l0aCBpdHMgZmFuLWhhbmRsaW5nIGlu
IHRoZSBjb29saW5nLW1hcHM/Cj4+Pj4KPj4+PiBUaGUgcmszMzk5LWdydS1rZXZpbiBpcyBjb3Jy
ZWN0Lgo+Pj4+Cj4+Pj4gVGhlIHJrMzM5OS1uYW5vcGMtdDQgaXMgbm90IGNvcnJlY3QgYmVjYXVz
ZSB0aGUgY3B1IGFuZCB0aGUgZ3B1IGFyZQo+Pj4+IHNoYXJpbmcgdGhlIHNhbWUgY29vbGluZyBk
ZXZpY2UgKHRoZSBmYW4pLiBUaGVyZSBhcmUgZGlmZmVyZW50Cj4+Pj4gY29uZmlndXJhdGlvbnM6
Cj4+Pj4KPj4+PiAxLiBUaGUgY3B1IGNvb2xpbmcgZGV2aWNlIGZvciB0aGUgQ1BVIGFuZCB0aGUg
ZmFuIGZvciB0aGUgR1BVCj4+Pj4KPj4+PiAyLiBEaWZmZXJlbnQgdHJpcCBwb2ludHMgb24gdGhl
IENQVSB0aGVybWFsIHpvbmUsIGVnLiBvbmUgdG8gZm9yIHRoZSBDUFUKPj4+PiBjb29saW5nIGRl
dmljZSBhbmQgYW5vdGhlciBvbmUgZm9yIHRoZSBmYW4uCj4+Pj4KPj4+PiBUaGVyZSBhcmUgc29t
ZSB2YXJpYW50IGZvciB0aGUgYWJvdmUuIElmIHRoaXMgYm9hcmQgaXMgbm90IG9uIGJhdHRlcnks
Cj4+Pj4geW91IG1heSB3YW50IHRvIGdpdmUgcHJpb3JpdHkgdG8gdGhlIHRocm91Z2hwdXQsIHNv
IGFjdGl2YXRlIHRoZSBmYW4KPj4+PiBmaXJzdCBhbmQgdGhlbiBjb29sIGRvd24gdGhlIENQVS4g
T3IgaWYgeW91IGFyZSBvbiBiYXR0ZXJ5LCB5b3UgbWF5IHdhbnQKPj4+PiB0byBpbnZlcnQgdGhl
IHRyaXAgcG9pbnRzLgo+Pj4+Cj4+Pj4gSW4gYW55IGNhc2UsIGl0IGlzIG5vdCBwb3NzaWJsZSB0
byBzaGFyZSB0aGUgc2FtZSBjb29saW5nIGRldmljZSBmb3IKPj4+PiBkaWZmZXJlbnQgdGhlcm1h
bCB6b25lcy4KPj4+Cj4+PiBPSywgdGhhbmtzIGZvciB0aGUgY2xhcmlmaWNhdGlvbi4gSSdsbCBn
ZXQgbXkgYm9hcmQgc2V0IHVwIGFnYWluIHRvCj4+PiBmaWd1cmUgb3V0IHRoZSBiZXN0IGZpeCBm
b3IgcmszMzk5LW5hbm9wYy10NCAoRldJVyBtb3N0IHVzZXJzIGFyZQo+Pj4gcHJvYmFibHkganVz
dCB1c2luZyBwYXNzaXZlIGNvb2xpbmcgb3IgYSBwbGFpbiBEQyBmYW4gYW55d2F5KS4gWW91IG1p
Z2h0Cj4+PiB3YW50IHRvIHJhaXNlIHRoaXMgaXNzdWUgd2l0aCB0aGUgbWFpbnRhaW5lcnMgb2YK
Pj4+IGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczU0MjItb2Ryb2lkeHUzLWNvbW1vbi5kdHNpLCBz
aW5jZSB0aGUKPj4+IGV2ZXJ5dGhpbmctc2hhcmVkLWJ5LWV2ZXJ5dGhpbmcgYXBwcm9hY2ggaW4g
dGhlcmUgd2FzIHdoYXQgSSB1c2VkIGFzIGEKPj4+IHJlZmVyZW5jZS4KPj4KPj4gQ2MnZWQ6IEt1
a2ppbiBLaW0gYW5kIEtyenlzenRvZiBLb3psb3dza2kKPj4KPj4gRWFzeSA6KQo+Pgo+IAo+IEFz
c3VtaW5nIHRoYXQgYWxsIHRyaXAtcG9pbnRzIGFyZSB0aGUgc2FtZSBiZXR3ZWVuIHRoZXJtYWwg
em9uZXMsIEkKPiB1bmRlcnN0YW5kIHRoYXQgc29sdXRpb24gY291bGQgYmUgdG8gaGF2ZSBvbmUg
dGhlcm1hbCB6b25lIHdpdGggdGhlcm1hbAo+IG11bHRpcGxlIHNlbnNvcnMgKHNvbWUgdGltZSBh
Z28gYmluZGluZ3MgZGlkIG5vdCBzdXBwb3J0IGl0KSBhbmQgYWxsCj4gY29vbGluZyBkZXZpY2Vz
PyBUaGVuIG9ubHkgb25lIGdvdmVybm9yIHdvdWxkIGJlIGFzc2lnbmVkPwoKVGhlIG11bHRpcGxl
IHNlbnNvcnMsIG11bHRpcGxlIHRoZXJtYWwgem9uZXMgYW5kIGdvdmVybm9ycyBkZWFsaW5nIHdp
dGgKZGlmZmVyZW50IGdyb3VwIG9mIHRoZW0gaXMgbm90IGltcGxlbWVudGVkIFt5ZXRdLiBCYXNp
Y2FsbHksIHlvdSBjYW4KY29uc2lkZXIgdGhlcmUgaXMgYSAxOjEgcmVsYXRpb25zaGlwIGJldHdl
ZW4gZWFjaCBvZiB0aGVtLgoKIG9uZSB0aGVybWFsIHpvbmUgPSBvbmUgc2Vuc29yID0gb25lIGNv
b2xpbmcgZGV2aWNlCgpHaXZlbiB0aGUgY29uZmlndXJhdGlvbiBhbmQgdGhlIGhhcmR3YXJlLCBp
dCB3b3VsZCBtYWtlIHNlbnNlIHRvIGNyZWF0ZQpvbmUgdGhlcm1hbCB6b25lIHBlciBjbHVzdGVy
LgoKVGhlcmUgaXMgb25lIGNsb2NrIGxpbmUgcGVyIGNsdXN0ZXIuIEl0IGlzIHBvc3NpYmxlIHRv
IGNyZWF0ZSB0d28gQ1BVCmNvb2xpbmcgZGV2aWNlcywgb25lIGZvciBlYWNoIGNsdXN0ZXIuCgpJ
TU8sIHRoZSBmYW4gZGVmaW5pdGlvbiBpcyBjb3JyZWN0IGV4Y2VwdCBpdCBzaG91bGQgYmUgYXNz
aWduZWQgdG8gb25lCnRoZXJtYWwgem9uZSBvbmx5LgoKT25lIGNvbmZpZ3VyYXRpb24gY291bGQg
YmU6Cgp0aGVybWFsLXpvbmVzIHsKCWxpdHRsZS10aGVybWFsLXpvbmU6IGxpdHRsZS10aGVybWFs
LXpvbmUgewoJCXRoZXJtYWwtc2Vuc29ycyA9IDwmdG11X2NwdTAgMD47CiAgICAgICAgICAgICAg
ICBwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MjUwPjsKICAgICAgICAgICAgICAgIHBvbGxpbmct
ZGVsYXkgPSA8MD47CgoJCXRyaXBzIHsKCQkJbHR6X2FsZXJ0MDogbHR6LWFsZXJ0LTAgewoJCQkJ
dGVtcGVyYXR1cmUgPSA8NTAwMDA+OwoJCQkJaHlzdGVyZXNpcyA9IDw1MDAwPjsKICAgICAgICAg
ICAgICAgICAgICAgICAgCXR5cGUgPSAiYWN0aXZlIjsKCQkJfTsKCgkJCWx0el9hbGVydDE6IGNw
dS1hbGVydC0xIHsKCQkJCXRlbXBlcmF0dXJlID0gPDYwMDAwPjsKCQkJCWh5c3RlcmVzaXMgPSA8
NTAwMD47CgkJCQl0eXBlID0gImFjdGl2ZSI7CgkJCX07CgoJCQlsdHpfYWxlcnQyOiBsdHotYWxl
cnQtMiB7CgkJCQl0ZW1wZXJhdHVyZSA9IDw3MDAwMD47CgkJCQloeXN0ZXJlc2lzID0gPDUwMDA+
OwoJCQkJdHlwZSA9ICJhY3RpdmUiOwoJCQl9OwoKCQkJbHR6X2FsZXJ0MzogbHR6LWFsZXJ0LTMg
ewoJCQkJdGVtcGVyYXR1cmUgPSA8NzUwMDA+OwoJCQkJaHlzdGVyZXNpcyA9IDwxMDAwMD47CgkJ
CQl0eXBlID0gInBhc3NpdmUiOwoJCQl9OwoKCQkJbHR6X2NyaXQwOiBsdHotY3JpdC0wIHsKCQkJ
CXRlbXBlcmF0dXJlID0gPDEyMDAwMD47CgkJCQloeXN0ZXJlc2lzID0gPDA+OwoJCQkJdHlwZSA9
ICJjcml0aWNhbCI7CgkJCX07CgkJfTsKCgkJY29vbGluZy1tYXBzIHsKCQkJbWFwMCB7CgkJCQl0
cmlwID0gPCZsdHpfYWxlcnQwPjsKCQkJCWNvb2xpbmctZGV2aWNlID0gPCZmYW4wIDAgMT47CgkJ
CX07CgoJCQltYXAxIHsKCQkJCXRyaXAgPSA8Jmx0el9hbGVydDE+OwoJCQkJY29vbGluZy1kZXZp
Y2UgPSA8JmZhbjAgMSAyPjsKCQkJfTsKCgkJCW1hcDIgewoJCQkJdHJpcCA9IDwmbHR6X2FsZXJ0
Mj47CgkJCQljb29saW5nLWRldmljZSA9IDwmZmFuMCAyIDM+OwoJCQl9OwoKCQkJbWFwMyB7CgkJ
CQl0cmlwID0gPCZsdHpfYWxlcnQzPjsKCQkJCWNvb2xpbmctZGV2aWNlID0gPCZjcHUwCgkJCQkJ
CVRIRVJNQUxfTk9fTElNSVQKCQkJCQkJVEhFUk1BTF9OT19MSU1JVD4sCgoJCQkJCQkgPCZjcHUx
CgkJCQkJCVRIRVJNQUxfTk9fTElNSVQKCQkJCQkJVEhFUk1BTF9OT19MSU1JVD4sCgoJCQkJCQkg
PCZjcHUyCgkJCQkJCVRIRVJNQUxfTk9fTElNSVQKCQkJCQkJVEhFUk1BTF9OT19MSU1JVD4sCgoJ
CQkJCQkgPCZjcHUzCgkJCQkJCVRIRVJNQUxfTk9fTElNSVQKCQkJCQkJVEhFUk1BTF9OT19MSU1J
VD4sCgkJCX07CgkJfTsKCX07CgoJYmlnLXRoZXJtYWwtem9uZTogYmlnLXRoZXJtYWwtem9uZSB7
CgoJCS8qIFRoZSBzYW1lIGFzIGxpdHRsZSwgZXhjZXB0IHRoZSBzZW5zb3IgYW5kIHRoZSBjcHUK
CQkgIGNvb2xpbmcgJmNwdTQsICZjcHU1LCAmY3B1NiwgJmNwdTcgKi8KCgl9Owp9OwoKClRoYXQg
c2FpZCwgdGhlIGlkbGUgaW5qZWN0aW9uIGNvb2xpbmcgZGV2aWNlIGlzIGZvciB0aGUgbW9tZW50
IGJlaW5nCmRldmVsb3BlZCBhbmQgdGhhdCB3b3VsZCBiZSBhIGdvb2Qgb3Bwb3J0dW5pdHkgdG8g
dGVzdCBhIHJlYWwgcGVyIGNwdQpjb29saW5nIGRldmljZSBhcyB0aGUgZXh5bm9zNTQyMiBoYXMg
YSBwZXIgY29yZSBzZW5zb3IuCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJv
Lm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJv
OiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0
cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFy
by5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
