Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B1EF1A1D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 16:34:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4SIc5F3iqETQ5/OP76pczdZZUheEDDB4LWGKN3l3A20=; b=saVvynLVFJJ3XC
	OOa9y8wHwGxaO0nF0lLzKyfSnIxPtRC23wuDQPzX5TbMmQDLIuIZbfT9k0DKAACGrGmRSw03m3vPo
	8SAoRtaahY6g3KEQkBxe2mB8SRbd3k0ap119Hkjqx8AJvB7v+n4cuJLbZu/CFXFgYAOBCWqLJ+7DE
	N1rRwalDCTXnMWaYBGRF2Mzaoa7+gee0QQYfPFL4y60j3yHXWZ3jjxAV3noUTktkwfDLXwcYrRjgB
	1YqxkxJ+RjSxY+ka7twLC8XwXnku6kFF/nq6wrNGMlBPQ1+sYD4rnA0ZAWqBPKkNWW/UV4cXz3V18
	eclCZzQqKYKAsQK5c9qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNKL-0005XP-Co; Wed, 06 Nov 2019 15:34:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNKD-0005Wi-Eh; Wed, 06 Nov 2019 15:34:27 +0000
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7895222C5;
 Wed,  6 Nov 2019 15:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573054465;
 bh=7o0q1tVU34dCkR+noOARbHQNLo/UWxe38206TY8hDCQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CoUNr07iSKhqHPQYnHgovAiFPeBTlPbuKlIlyB1ltw17DY4h0GUk69z0sH9UCrkwg
 QjSAKTQgidRAO2Sn0st+dAqdeImPVslmG40Ug8tl5jdYPapSS3OLGYLaJqd3ZYOxMC
 e/fp5kQL9QBc0OXKGEMS4kFmWLHFdgdIF/OprUEE=
Received: by mail-qk1-f170.google.com with SMTP id m4so24919883qke.9;
 Wed, 06 Nov 2019 07:34:24 -0800 (PST)
X-Gm-Message-State: APjAAAUc0WbagzOoYBrVdfAbQpiod6tTWipDpvxfHIv/Ia3Z5B77ecWp
 9f38GFUxGw7BrJ3BQg3j8nlo7LhdrZkdJAlmkA==
X-Google-Smtp-Source: APXvYqw9sZsv2T4oRf/Kp1rPs5zLb4jFoqRUQy1D9khdGgEpEV2otZx+yv/nP+agw/RJymCxuNf+KXq8PP0l1j+ppZs=
X-Received: by 2002:a05:620a:226:: with SMTP id
 u6mr2467840qkm.393.1573054464031; 
 Wed, 06 Nov 2019 07:34:24 -0800 (PST)
MIME-Version: 1.0
References: <20191104013932.22505-1-afaerber@suse.de>
 <20191104013932.22505-2-afaerber@suse.de>
 <CAL_JsqL3NOstoa5ZY1JE9e3Ay=WTmz153H-KbHErhi-GBX-5GA@mail.gmail.com>
 <82d17114302562e0c553e2ea936974f77734e86b.camel@suse.de>
In-Reply-To: <82d17114302562e0c553e2ea936974f77734e86b.camel@suse.de>
From: Rob Herring <robh@kernel.org>
Date: Wed, 6 Nov 2019 09:34:12 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLDFefWVdiPuAktctuBpBeOvG-OVhX2aZn=UaiN55nodg@mail.gmail.com>
Message-ID: <CAL_JsqLDFefWVdiPuAktctuBpBeOvG-OVhX2aZn=UaiN55nodg@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: gpu: mali-midgard: Tidy up conversion to
 YAML
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_073425_512411_C9DF7A54 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Guillaume Gardet <guillaume.gardet@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-realtek-soc@lists.infradead.org, David Airlie <airlied@linux.ie>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBOb3YgNiwgMjAxOSBhdCA5OjA3IEFNIEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJA
c3VzZS5kZT4gd3JvdGU6Cj4KPiBBbSBNaXR0d29jaCwgZGVuIDA2LjExLjIwMTksIDA4OjI0IC0w
NjAwIHNjaHJpZWIgUm9iIEhlcnJpbmc6Cj4gPiBPbiBTdW4sIE5vdiAzLCAyMDE5IGF0IDc6NDAg
UE0gQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgo+ID4gd3JvdGU6Cj4gPiA+IElu
c3RlYWQgb2YgZ3JvdXBpbmcgYWxwaGFiZXRpY2FsbHkgYnkgdGhpcmQtcGFydHkgdmVuZG9yLCBs
ZWFkaW5nCj4gPiA+IHRvCj4gPiA+IG9uZS1lbGVtZW50IGVudW1zLCBzb3J0IGJ5IE1hbGkgbW9k
ZWwgbnVtYmVyLCBhcyBkb25lIGZvciBVdGdhcmQuCj4gPiA+Cj4gPiA+IFRoaXMgYWxyZWFkeSBh
bGxvd3MgdXMgdG8gZGUtZHVwbGljYXRlIHR3byAiYXJtLG1hbGktdDc2MCIgc2VjdGlvbnMKPiA+
ID4gYW5kCj4gPiA+IHdpbGwgbWFrZSBpdCBlYXNpZXIgdG8gYWRkIG5ldyB2ZW5kb3IgY29tcGF0
aWJsZXMuCj4gPgo+ID4gVGhhdCB3YXMgdGhlIGludGVudC4gTm90IHN1cmUgaG93IEkgbWVzc2Vk
IHRoYXQgdXAuLi4KPiA+Cj4gPiBUaGlzIHBhdGNoIGlzIHByb2JsZW1hdGljIGJlY2F1c2UgdGhl
cmUncyBjaGFuZ2VzIGluIGFybS1zb2MganVuby9kdAo+ID4gYnJhbmNoIGFuZCB0aGVyZSdzIG5v
dyBhIHBhdGNoIGZvciBleHlub3M1NDIwICh0NjI4KS4gSSdkIHByb3Bvc2UgSQo+ID4gYXBwbHkg
dGhpcyBzdWNoIHRoYXQgd2UgZG9uJ3QgZ2V0IGEgbWVyZ2UgY29uZmxpY3Qgd2l0aCBqdW5vL2R0
IGFuZAo+ID4gd2UKPiA+IGZpbmlzaCByZXNvcnRpbmcgYWZ0ZXIgcmMxIChvciB3aGVuIGJvdGgg
YnJhbmNoZXMgYXJlIGluIExpbnVzJwo+ID4gdHJlZSkuCj4KPiBUaGlzIHNlcmllcyBoYXMgZGVw
ZW5kZW5jaWVzIGZvciB0aGUgUmVhbHRlay1zaWRlIFJGQyBwYXRjaGVzIGFuZCBpcwo+IG5vdCB5
ZXQgcmVhZHkgdG8gbWVyZ2UsIHNvIHlvdSBjYW4gdGFrZSB0aGlzIHByZXAgUEFUQ0ggdGhyb3Vn
aCB5b3VyCj4gdHJlZSBmb3IgdjUuNiBwcm9iYWJseSwgb3IgZmVlbCBmcmVlIHRvIHJlYmFzZS9y
ZXdvcmsgYXMgeW91IHNlZSBmaXQgLQo+IEknZCBqdXN0IGFwcHJlY2lhdGUgYmVpbmcgY3JlZGl0
ZWQgYXQgbGVhc3QgdmlhIFJlcG9ydGVkLWJ5LiA6KQoKSSB3YXMgYXNzdW1pbmcgdGhlIG5vbi1S
RkMgcGF0Y2hlcyBhcmUgZ29vZCB0byBnbywgc28gSSB3YXMgZ29pbmcgdG8KcGljayB1cCAxLCAy
LCBhbmQgNy4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
