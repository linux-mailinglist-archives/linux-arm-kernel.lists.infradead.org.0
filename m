Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 132C594E8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:44:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDIByakEakw8UXOVmzkzvcoOMxFpSvCLdH7t/IPIwXw=; b=cknV/uzjVs6j5o
	Ir1sC53dBfVMf715k6o7Xl8DUiyUhAB+aIbEJ4cldPw+HdGmh7PGXW8pNxcm9NnAL4Y/T3TK/LQCg
	BPWKBUOJ721k8zrxtajy7Gi2+lL/HrKZDcJhVzFweVJUmWNb0yQNJL78KEyKp6CnG3la215w3+cDH
	uDI6t2qgcnU+QZPnsnu7ajGxHh8LVEP89gczZNPrRoCO+dyKuatN+opq+8mWGNmLcYxW0X1jP5zf0
	Wze7KYgB8gBvrRongcYke0ZkKipfQZXxUKmOAc4k3cf69XwLN69eTgaKzpJXAYhIxn84zp+fh7pNu
	+br6QCx5vr+YtaFf4r+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hznZY-0007pV-BU; Mon, 19 Aug 2019 19:44:08 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hznZH-0007ox-4r
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:43:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id k1so304897wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 12:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sUvtR9FU4aRKV7SgEAXHiejDUtQv+K/PtGB87554ptQ=;
 b=tpyGBrXzqgrnpWQJ6cbC8VYrH+o11xOGbjJWQp98kDZ7CZO2V0vEDG/lfwiXEhiUko
 WJQvFzIquEXOOIo58SrvKErci5ofHkwB9CAxNG4BMJ+2O3bZ+yG5rrsxiQT0ORO/wyzi
 E3GCmpmzF/iv1Sw7uBeW/fkNVIlI49XDCTTAReE0C1c01zzWF+7AmD+mJDgpPhZX6ub5
 R0yy8g4MuL5xnI+HGLQVKY/Y6/HYMrQTs5rOzSB7H4qgdm/vuh8v0v6AXBSUy6nTEddT
 SAAMyWxb4TIR0ncFywrhG1ym0JEYwnSSMiI+mxVryruFYLZmj/ks7BBhSpjxbJizWGPQ
 QOlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=sUvtR9FU4aRKV7SgEAXHiejDUtQv+K/PtGB87554ptQ=;
 b=pY1SF94NsqYsh16LqaZUfdYeqWU71EfxeiDW/kwruhmRgOC9oEQAu5wnkAarbWtdR/
 t5+1WNovwGOK2zLFxg9uhx5/fthEgg5zVMYx2zHkNwKuLWo4En3OHUNYotdTkMVjXl+D
 7oPI25MDkVe/wvxUUtuIbOe87BftsuIcCMzkgxNKqazf0OoQHsukAr5FJfjpXMQvcPbL
 Uir0phrUS45LC0Mmvjbkfm948NbhKGBjfWFuGkkhVhpYFJJCfW5PLWCjysYOyloA1j/0
 m/3rhY6a9rsD1Ri14OE21z8XDKnYrHCDvL4W6vfvF4QIhXqvIHw0QKCQiFKhH3scL8zf
 rpow==
X-Gm-Message-State: APjAAAU7lfVuq/r1357WvEVYLWodcCQ6XXOQpDw7hhpjGcnUKwGdCWby
 jVCn+Axh2OnKe+9Zuzvu83RqpoTq+t8=
X-Google-Smtp-Source: APXvYqyQVcaEcuMR/uXEY0eLcxXMjwP9KrA2pCeo2yUMUDZPtiihJ1UFMYdv0UaZynrZojr1mMxicw==
X-Received: by 2002:a1c:c188:: with SMTP id r130mr21184763wmf.73.1566243829446; 
 Mon, 19 Aug 2019 12:43:49 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:4409:6127:8de8:4f9?
 ([2a01:e34:ed2f:f020:4409:6127:8de8:4f9])
 by smtp.googlemail.com with ESMTPSA id c15sm42985965wrb.80.2019.08.19.12.43.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 12:43:48 -0700 (PDT)
Subject: Re: [PATCH 03/11] clocksource: sun4i: Add missing compatibles
To: Maxime Ripard <maxime.ripard@bootlin.com>
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
 <20190722081229.22422-3-maxime.ripard@bootlin.com>
 <9df53981-d1b2-433c-e61f-7c000c71bc55@linaro.org>
 <20190812091631.j2pr7i2zeput3hrc@flea>
 <42ee55ee-258c-7588-fea3-db3c661a0156@linaro.org>
 <20190812112411.ty3npkq6ztbushhm@flea> <20190819133058.bujcawpw5rgsfp4g@flea>
 <0e36a6fe-33de-5af5-f4f9-4cedfc9d0cbf@linaro.org>
 <20190819191326.c27vmevrqkmjhfru@flea>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <b217183a-33c1-f384-e730-eb1903ca0d03@linaro.org>
Date: Mon, 19 Aug 2019 21:43:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190819191326.c27vmevrqkmjhfru@flea>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_124351_222902_63A920C4 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 tglx@linutronix.de, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkvMDgvMjAxOSAyMToxMywgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiBPbiBNb24sIEF1ZyAx
OSwgMjAxOSBhdCAwMzo0NTo0MFBNICswMjAwLCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPj4gT24g
MTkvMDgvMjAxOSAxNTozMCwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPj4+IE9uIE1vbiwgQXVnIDEy
LCAyMDE5IGF0IDAxOjI0OjExUE0gKzAyMDAsIE1heGltZSBSaXBhcmQgd3JvdGU6Cj4+Pj4gT24g
TW9uLCBBdWcgMTIsIDIwMTkgYXQgMTE6MjE6NTBBTSArMDIwMCwgRGFuaWVsIExlemNhbm8gd3Jv
dGU6Cj4+Pj4+IE9uIDEyLzA4LzIwMTkgMTE6MTYsIE1heGltZSBSaXBhcmQgd3JvdGU6Cj4+Pj4+
PiBIaSwKPj4+Pj4+Cj4+Pj4+PiBPbiBNb24sIEF1ZyAxMiwgMjAxOSBhdCAxMDo1OTo1MUFNICsw
MjAwLCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPj4+Pj4+PiBPbiAyMi8wNy8yMDE5IDEwOjEyLCBN
YXhpbWUgUmlwYXJkIHdyb3RlOgo+Pj4+Pj4+PiBOZXdlciBBbGx3aW5uZXIgU29DcyBoYXZlIGRp
ZmZlcmVudCBudW1iZXIgb2YgaW50ZXJydXB0cywgbGV0J3MgYWRkCj4+Pj4+Pj4+IGRpZmZlcmVu
dCBjb21wYXRpYmxlcyBmb3IgYWxsIG9mIHRoZW0gdG8gZGVhbCB3aXRoIHRoaXMgcHJvcGVybHku
Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1heGltZS5y
aXBhcmRAYm9vdGxpbi5jb20+Cj4+Pj4+Pj4KPj4+Pj4+PiBBY2tlZC1ieTogRGFuaWVsIExlemNh
bm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+Cj4+Pj4+Pgo+Pj4+Pj4gVGhhbmtzIQo+Pj4+
Pj4KPj4+Pj4+IENhbiB5b3UgbWVyZ2UgdGhpcyB0aHJvdWdoIHlvdXIgdHJlZSAoYWxvbmcgd2l0
aCB0aGUgYmluZGluZ3MpPyBJJ2xsCj4+Pj4+PiBtZXJnZSB0aGUgRFQgcGF0Y2hlcwo+Pj4+Pgo+
Pj4+PiBwYXRjaGVzIDEtNCB0aGVuID8KPj4+Pgo+Pj4+IFllcCwgdGhhbmtzIQo+Pj4KPj4+IFBp
bmc/Cj4+Cj4+IFRoZXkgYXJlIGFwcGxpZWQgOikKPiAKPiBPaCwgbXkgYmFkIDopCgpBY3R1YWxs
eSwgSSBzaG91bGQgaGF2ZSB0ZWxsIHlvdSB0aGV5IHdlcmUgYXBwbGllZC4KCj4gV2hlcmUgaXMg
eW91ciB0cmVlIHRoZXNlIGRheXM/IEkgY291bGRuJ3QgZmluZCBpdCBpbiBsaW51eC1uZXh0IGVp
dGhlcgoKaHR0cHM6Ly9naXQubGluYXJvLm9yZy9wZW9wbGUvZGFuaWVsLmxlemNhbm8vbGludXgu
Z2l0L2xvZy8/aD1jbG9ja2V2ZW50cy9uZXh0CgoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9y
Zy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9s
bG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vi
b29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDov
L3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
