Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD8512A3EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 19:31:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WjpYusTuTrNMcOnTIe/2Sla5abeTXiYsibg9g3lNEVc=; b=J/wYLty+Kx4mjU
	w7RC+oRqUHWlbXtF9Bp7UJIq29pk/aDGyBPiATqS8IYXgbiWXgBEafi2VmRgegWMBdO8lgWhwWZyq
	Qi/IXZrCTIOepme008nJHIpwZjqbHph13ABY0rsDHYZWQm52To+oANIs95cKc86IXwJU7qO62s3gN
	BM/JgtfynXDsr0eN1ZGH/BWejC5ru70rSg7lWvT3yBUpLLF1pmI9hr6H/w6ezGf7Zh1E70AL05dzA
	PlWoP1vXrpw/FTwuUrZ/35kqRrEccY3c7eNBaIXxGSHjiB3y+KnuLp/J9+kauCybsrSb46OHxvXiW
	46fbWz6A6T0HZsuZBM5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijoxb-0004GZ-Tx; Tue, 24 Dec 2019 18:31:11 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijoxQ-0004G9-Tg
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 18:31:03 +0000
Received: by mail-wr1-x443.google.com with SMTP id c14so20422681wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 10:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wAw5WOf2bEvt5pRL1MYuAu8CM5vXA8BPYFF+l6mKaiE=;
 b=cYwTZo1f9VTC5TagEPzaD3+Idykvxq9LU3MPLtYeSVnhzs23WX8EVKeIEDywbdWb+K
 UsfmzNkKLb0akfSceNy/yysa4HryNWZfl9rFInshGSr58Lq0bqbXMG9nvj5hnsgtAZHv
 bDKjsv/USmUmUzOX9uzr4NuqwECXBwA2ayu2f5GLcuKZx40+78xMpl130W4Ng9QzzZz+
 ZOVMQAduoE/F/LmPozFcodiVZVGTVX+/FcX+xrbuYcRL5lPQm5+DTHcEo/L0efpzKsul
 GtF28MC8g2y2h3xkZJPG8v2ZbU1kanUPrHmN6hH5z8ad42VDC/xRRLah3yyc7pHMOkfO
 sBrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=wAw5WOf2bEvt5pRL1MYuAu8CM5vXA8BPYFF+l6mKaiE=;
 b=sL2VxFX1h1n5dzJZxf7SspxpaY/3Arf7A4rkfPutDg4cEuaV13VFxvdbaRI4c+bLz7
 k30cTHq2WRfOu7y7m8K7dA6UF2fUzQOlfVsxWRSMPiSo1WYdUd82qPnswqzBy2wVK7fg
 fGlABcSptalj/wY6j38136/uwYT39n1bL05R9CIjXua9jAyPvS5kS4wifwD3MTmi/Emz
 W6LxED3qMgWDi2rZ5rx5xiVI+Trl9XgFPBTWTNCwI3GwUfvSmU8pL8o5WhErPlSWkvG/
 YhPTjCgQTJFO/LLhKkLdpxXIGUgbQaLxtvVlWZgrm/+di/z/eTbyBMkab/OzRtwJReYk
 jnGw==
X-Gm-Message-State: APjAAAXUBT9qa7el9Be2CltG8PP2taiLbmdkvsBZMB9LNzqHgJsAh2nJ
 2gY/oAl90wtq95mTIIQ9CzGMzg==
X-Google-Smtp-Source: APXvYqyOOyAVLFWo/nLSIyHHbWCg3hsFTiLZxhcPXf6ymGikYxFkogC3dKZKFjF5I0mUz7FlIeO40w==
X-Received: by 2002:a05:6000:50:: with SMTP id
 k16mr35793935wrx.145.1577212258992; 
 Tue, 24 Dec 2019 10:30:58 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:bd3f:fbf4:2d47:b114?
 ([2a01:e34:ed2f:f020:bd3f:fbf4:2d47:b114])
 by smtp.googlemail.com with ESMTPSA id 2sm25616634wrq.31.2019.12.24.10.30.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Dec 2019 10:30:58 -0800 (PST)
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
To: Maxime Ripard <mripard@kernel.org>, Vasily Khoruzhick <anarsoul@gmail.com>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <20191219173321.bni4tbrhfkkphv7k@gilmour.lan>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <4015380d-33ef-312c-a886-6e8bf65c976a@linaro.org>
Date: Tue, 24 Dec 2019 19:30:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191219173321.bni4tbrhfkkphv7k@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_103101_096283_063292B2 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 =?UTF-8?Q?Ond=c5=99ej_Jirman?= <megous@megous.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkvMTIvMjAxOSAxODozMywgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiBIaSwKPiAKPiBPbiBU
aHUsIERlYyAxOSwgMjAxOSBhdCAwOToyODoxNkFNIC0wODAwLCBWYXNpbHkgS2hvcnV6aGljayB3
cm90ZToKPj4gVGhpcyBwYXRjaHNldCBhZGRzIGRyaXZlciBmb3IgdGhlcm1hbCBzZW5zb3IgaW4g
QTY0LCBBODNULCBIMywgSDUsCj4+IEg2IGFuZCBSNDAgU29Dcy4KPiAKPiBUaGFua3MgYWdhaW4g
Zm9yIHdvcmtpbmcgb24gdGhpcy4KPiAKPiBJJ2xsIG1lcmdlIHRoZSBEVCBwYXRjaGVzIHdoZW4g
dGhlIGRyaXZlciB3aWxsIGhhdmUgYmVlbiBtZXJnZWQuCgpJJ3ZlIGFwcGxpZWQgcGF0Y2hlcyAx
ICYgMi4KClRoZXkgYXJlIGluIHRoZSB0ZXN0aW5nIGJyYW5jaCBhbmQgd2lsbCBnbyB0byB0aGUg
bGludXgtbmV4dCBicmFuY2ggYXMKc29vbiBhcyB0aGUga2VybmVsY2kgcGFzc2VzLgoKCi0tIAog
PGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3
YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNv
bS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9v
cmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
