Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE2816AE3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:56:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WRKYu5hJu9nDCkfwA2/Czo50UIIfTr+tVxZu/Xyx1dc=; b=TI+45zwkmyJA0E3T8Pa7RFdxh3
	b3TNBJhoi8bnG8QPYmvvHuY911Hb5zHyQ3yMWHz6sBmhoYRvWiz89Mp6EFxKUpEyKqU4Po/d45nLM
	qFaig4KQ0wYXgXCWP3Csnwlv6mnVYsAFc1SCbXfV5HbF1c2104OG4T2OP0h3JAuLzjRabUsXSvyHc
	ByapLMWPR0Vppovz5Rs4V8/E3Nr3RjskmaePEdworoeJtU0YhM/3iFpsy6MikbcWrstRONxeXUBqw
	RQWGHAyNUFGNoqjMyecqoI/oa1aAIeVI9nsqmSfnbi7z8AAp+/Hsmpnk+QuVK64fcHkiONhozaa0j
	t4+GIl4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Hy3-0002er-85; Mon, 24 Feb 2020 17:56:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Hxu-0002eP-1D
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:56:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so2671457wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 09:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=w6HJLo4HNEhjrAC75LCFtEpF2YokFv4f0h9aX2ioA6Q=;
 b=r461G7W4mkzzDVQHOH5791k8LTOs3P/dajDeu0mnm7AwaknB3HhL2FlDDlLDqJ2ONc
 W7NV/bc37SCVmdeOacJ5mRpnqqDOT9HUmD/VK63iuNe3w6YWiwwALDytvcIgw5yFBzfZ
 rgo622xZMRqw2xk9rdf4ifygUVewCQbv/SuDoGfOgqsFKnrApuGHb4BYGmKfsQaFRdba
 hMTWagxsTPC++qc/NIcg4vgk21n5bQWAn7ewWvOEpuYjyQB/oog5btoqTrAypNAZNbEQ
 Xlk58QekM33Dm+/DhtO7QNz6ah3fd61UZuw5FxM0YzFQwEP/KJXo0jMYba/UixZsXPBB
 qsrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=w6HJLo4HNEhjrAC75LCFtEpF2YokFv4f0h9aX2ioA6Q=;
 b=IHgGYCT8bVm4eDJQi0BQASk1j4wphWw5eLKzEcflFIv9w/e05XzRCHdA0mZiKt1QdQ
 gURLXeTP6EjZu3pEzSWK0UhVO9cClgMVxZY8tJ2FINX5UWXlhe6OZFQ5ulZv25bj4PSy
 F3bp4K1eTvUrgROTTk+XG18ue3XvQOEStIV83aMmh9Sr26CQ5pDt0aICx/DaWIAFSbIs
 yjK/80ZXbk7sPmZjEQKxTWhGnaBJR8XUBDrx3qT8vbHqVLAiqKEegBd4snGNP/Oze8Uc
 iVbXBM6UdXuI9/TC+lpjKkwLJJZs6QYA4MUI0jK03zku4Esoe7FTAmyJR16WKc9hWkD6
 yMIg==
X-Gm-Message-State: APjAAAVOhX54lbo7cw8Tp+3/yjxjKH0EEgEY920CpzFF8MvvumT/Diwa
 JfyI4BcQLPlf7ldx9c2wIVBHAw==
X-Google-Smtp-Source: APXvYqyNaBabdXhA4D5PHTTHRGrLGwIZAN9qo855OTWC7IO+K/XOKu5WYmK/kIt908NMZ4DEtFYdMg==
X-Received: by 2002:a5d:448c:: with SMTP id j12mr66646319wrq.125.1582566980332; 
 Mon, 24 Feb 2020 09:56:20 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:545a:2a71:2add:41f7?
 ([2a01:e34:ed2f:f020:545a:2a71:2add:41f7])
 by smtp.googlemail.com with ESMTPSA id j5sm19886844wrw.24.2020.02.24.09.56.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Feb 2020 09:56:19 -0800 (PST)
Subject: Re: [PATCH v2] ARM: dts: sun8i-a83t: Add thermal trip points/cooling
 maps
To: =?UTF-8?Q?Ond=c5=99ej_Jirman?= <megous@megous.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20200224165417.334617-1-megous@megous.com>
 <2e4213a6-2aaf-641c-f741-9503f3ffd5fe@linaro.org>
 <20200224172328.yauwfgov664ayrd6@core.my.home>
 <20200224173940.huwpaqhrc5ngbmji@core.my.home>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <25a5dfb2-93bb-90c3-8156-0cfbed1f9995@linaro.org>
Date: Mon, 24 Feb 2020 18:56:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200224173940.huwpaqhrc5ngbmji@core.my.home>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_095622_100622_C165F46C 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: bootlin.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQvMDIvMjAyMCAxODozOSwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gT24gTW9uLCBGZWIg
MjQsIDIwMjAgYXQgMDY6MjM6MjhQTSArMDEwMCwgbWVnb3VzIGhsYXZuaSB3cm90ZToKPj4gSGks
IAo+Pgo+PiBPbiBNb24sIEZlYiAyNCwgMjAyMCBhdCAwNjowNjoyMFBNICswMTAwLCBEYW5pZWwg
TGV6Y2FubyB3cm90ZToKPj4+IE9uIDI0LzAyLzIwMjAgMTc6NTQsIE9uZHJlaiBKaXJtYW4gd3Jv
dGU6Cj4+Pj4gVGhpcyBlbmFibGVzIHBhc3NpdmUgY29vbGluZyBieSBkb3duLXJlZ3VsYXRpbmcg
Q1BVIHZvbHRhZ2UKPj4+PiAgCQkJY2xvY2tzID0gPCZjY3UgQ0xLX0MxQ1BVWD47Cj4+Pj4gQEAg
LTExODgsMTIgKzExODgsNjAgQEAgY3B1MF90aGVybWFsOiBjcHUwLXRoZXJtYWwgewo+Pj4+ICAJ
CQlwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MD47Cj4+Pj4gIAkJCXBvbGxpbmctZGVsYXkgPSA8
MD47Cj4+Pj4gIAkJCXRoZXJtYWwtc2Vuc29ycyA9IDwmdGhzIDA+Owo+Pj4+ICsKPj4+PiArCQkJ
dHJpcHMgewo+Pj4+ICsJCQkJJzogY3B1LWhvdCB7Cj4+Pj4gKwkJCQkJdGVtcGVyYXR1cmUgPSA8
ODAwMDA+Owo+Pj4+ICsJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47Cj4+Pj4gKwkJCQkJdHlwZSA9
ICJwYXNzaXZlIjsKPj4+PiArCQkJCX07Cj4+Pj4gKwo+Pj4+ICsJCQkJY3B1MF92ZXJ5X2hvdDog
Y3B1LXZlcnktaG90IHsKPj4+PiArCQkJCQl0ZW1wZXJhdHVyZSA9IDwxMDAwMDA+Owo+Pj4+ICsJ
CQkJCWh5c3RlcmVzaXMgPSA8MD47Cj4+Pj4gKwkJCQkJdHlwZSA9ICJjcml0aWNhbCI7Cj4+Pj4g
KwkJCQl9Owo+Pj4+ICsJCQl9Owo+Pj4+ICsKPj4+PiArCQkJY29vbGluZy1tYXBzIHsKPj4+PiAr
CQkJCWNwdS1ob3QtbGltaXQgewo+Pj4+ICsJCQkJCXRyaXAgPSA8JmNwdTBfaG90PjsKPj4+PiAr
CQkJCQljb29saW5nLWRldmljZSA9IDwmY3B1MCBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9f
TElNSVQ+LAo+Pj4+ICsJCQkJCQkJIDwmY3B1MSBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9f
TElNSVQ+LAo+Pj4+ICsJCQkJCQkJIDwmY3B1MiBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9f
TElNSVQ+LAo+Pj4+ICsJCQkJCQkJIDwmY3B1MyBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9f
TElNSVQ+Owo+Pj4+ICsJCQkJfTsKPj4+PiArCQkJfTsKPj4+PiAgCQl9Owo+Pj4+ICAKPj4+PiAg
CQljcHUxX3RoZXJtYWw6IGNwdTEtdGhlcm1hbCB7Cj4+Pj4gIAkJCXBvbGxpbmctZGVsYXktcGFz
c2l2ZSA9IDwwPjsKPj4+Cj4+PiBObyBwb2xsaW5nIHRvIG1pdGlnYXRlPwo+Pgo+PiBQb2xsaW5n
IHRvIG1pdGlnYXRlIHdoYXQ/Cj4+Cj4+IFRoZSBkcml2ZXIgaXMgdXNpbmcgaW50ZXJydXB0cyB3
aGVuZXZlciBuZXcgcmVhZGluZyBpcyBhdmFpbGFibGUsIGFuZAo+PiBub3RpZmllcyB0eiBvZiB0
aGUgY2hhbmdlLiBJIGRvbid0IGhhdmUgYSByZWFzb24gdG8gYmVsaWV2ZSBhbnkgbmV3Cj4+IHZh
bHVlcyBhcmUgYXZhaWxhYmxlIGZyb20gdGhlcm1hbCBzZW5zb3Igb3V0c2lkZSBvZiB0aGUgaW50
ZXJydXB0Cj4+IHBlcmlvZC4KPiAKPiBUbyBiZSBtb3JlIGNsZWFyLCBuZXcgdGVtcGVyYXR1cmVz
IGFyZSBhdmFpbGFibGUgZnJvbSB0aGUgdGhlcm1hbCBzZW5zb3IgZHJpdmVyCj4gYXQgdGhlIHJh
dGUgb2YgNCBwZXIgc2Vjb25kLCB3aGljaCBzaG91bGQgYmUgZW5vdWdoIHRvIGRvIHF1aWNrIGFk
anVzdG1lbnRzIHRvCj4gdGhlIHRoZXJtYWwgem9uZS9jb29saW5nIGRldmljZSBldmVuIGZvciBx
dWljayB0ZW1wZXJhdHVyZSByaXNlcy4KPiAKPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9s
aW51eC92NS42LXJjMy9zb3VyY2UvZHJpdmVycy90aGVybWFsL3N1bjhpX3RoZXJtYWwuYyNMNDQy
Cj4gCj4gVGhlcmUncyBubyBzbG93L2Zhc3QgcGVyaW9kIGRlcGVuZGluZyBvbiB3aGV0aGVyIHRo
ZSBjb29saW5nIGlzIGFjdGl2ZS4KPiBJdCdzIGFsd2F5cyBmYXN0IGFuZCBubyBwb2xsaW5nIG9m
IHRoZSB0aGVybWFsIHNlbnNvciBpcyBuZWVkZWQuCgpUaGFua3MgZm9yIHRoZSBjbGFyaWZpY2F0
aW9uLiBBbGwgc2Vuc29ycyBoYXZlIHRoZWlyIHNwZWNpZmljaXR5LgoKRG9lcyB0aGUgc2Vuc29y
IGFsbG93IHRvIGNyZWF0ZSBhIHRocmVzaG9sZCB0ZW1wZXJhdHVyZSB3aGVyZSBhbgppbnRlcnJ1
cHQgZmlyZXMgd2hlbiBjcm9zc2luZyB0aGUgYm91bmRhcnk/IFRoYXQgd291bGQgYmUgaW50ZXJl
c3RpbmcKZm9yIHBlcmZvcm1hbmNlIGFuZCBlbmVyZ3kgc2F2aW5nIHRvIGRpc2FibGUgdGhlIGlu
dGVycnVwdHMgdW50aWwKJ2NwdTBfaG90JyBpcyByZWFjaGVkLCBubz8KCi0tIAogPGh0dHA6Ly93
d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
Uk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9M
aW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0
ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
