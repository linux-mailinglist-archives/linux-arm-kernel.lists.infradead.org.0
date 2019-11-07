Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6A5F2BC0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=moVeKKrcNKpY8QOMKODUkwHzdNg5Od4AZzyZAazFXJI=; b=MPWYgfpWz5pnLC
	OTRx6im+LZw8Mp/rkfoceCPhOHxRseR6LUB+4Siyl5K5PG1fEoQ4LGaJKT3S2tHzHVauYDAGjUO8/
	nForod+Cs+Z+ZJxkmaPqGHgPJ7yNG7vgvRVDzAaoeTf/IvJowduxCyza42ELJK6EPmcuy+Nv0tTqV
	gKLQ2e61lCTTy3j5L8krfK8DoXtLkYUbFOVOxlo3tla/nT3Fi2SgVmhRqEnpmooP91cdWGi9B4NS8
	NTthuIP8YrT+soNL5zLsVHv9E8cvK/8kXdgEfHzYI9ubPR7WTTgj/sO74SbKiX3AMQ0agT37HRtT+
	ksvHJ9VA4FpUPfK7Kppw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSedo-0008T2-CP; Thu, 07 Nov 2019 10:03:48 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSedX-0008SI-Te; Thu, 07 Nov 2019 10:03:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1C88CB2EE;
 Thu,  7 Nov 2019 10:03:28 +0000 (UTC)
Subject: Re: [PATCH 1/7] dt-bindings: gpu: mali-midgard: Tidy up conversion to
 YAML
To: Rob Herring <robh@kernel.org>
References: <20191104013932.22505-1-afaerber@suse.de>
 <20191104013932.22505-2-afaerber@suse.de>
 <CAL_JsqL3NOstoa5ZY1JE9e3Ay=WTmz153H-KbHErhi-GBX-5GA@mail.gmail.com>
 <82d17114302562e0c553e2ea936974f77734e86b.camel@suse.de>
 <CAL_JsqLDFefWVdiPuAktctuBpBeOvG-OVhX2aZn=UaiN55nodg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <3c9d7a8c-94e4-60b9-9a84-f368e227666e@suse.de>
Date: Thu, 7 Nov 2019 11:03:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLDFefWVdiPuAktctuBpBeOvG-OVhX2aZn=UaiN55nodg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_020332_102166_14C2DA11 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

QW0gMDYuMTEuMTkgdW0gMTY6MzQgc2NocmllYiBSb2IgSGVycmluZzoKPiBPbiBXZWQsIE5vdiA2
LCAyMDE5IGF0IDk6MDcgQU0gQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPiB3cm90
ZToKPj4gQW0gTWl0dHdvY2gsIGRlbiAwNi4xMS4yMDE5LCAwODoyNCAtMDYwMCBzY2hyaWViIFJv
YiBIZXJyaW5nOgo+Pj4gVGhpcyBwYXRjaCBpcyBwcm9ibGVtYXRpYyBiZWNhdXNlIHRoZXJlJ3Mg
Y2hhbmdlcyBpbiBhcm0tc29jIGp1bm8vZHQKPj4+IGJyYW5jaCBhbmQgdGhlcmUncyBub3cgYSBw
YXRjaCBmb3IgZXh5bm9zNTQyMCAodDYyOCkuIEknZCBwcm9wb3NlIEkKPj4+IGFwcGx5IHRoaXMg
c3VjaCB0aGF0IHdlIGRvbid0IGdldCBhIG1lcmdlIGNvbmZsaWN0IHdpdGgganVuby9kdCBhbmQK
Pj4+IHdlCj4+PiBmaW5pc2ggcmVzb3J0aW5nIGFmdGVyIHJjMSAob3Igd2hlbiBib3RoIGJyYW5j
aGVzIGFyZSBpbiBMaW51cycKPj4+IHRyZWUpLgo+Pgo+PiBUaGlzIHNlcmllcyBoYXMgZGVwZW5k
ZW5jaWVzIGZvciB0aGUgUmVhbHRlay1zaWRlIFJGQyBwYXRjaGVzIGFuZCBpcwo+PiBub3QgeWV0
IHJlYWR5IHRvIG1lcmdlLCBzbyB5b3UgY2FuIHRha2UgdGhpcyBwcmVwIFBBVENIIHRocm91Z2gg
eW91cgo+PiB0cmVlIGZvciB2NS42IHByb2JhYmx5LCBvciBmZWVsIGZyZWUgdG8gcmViYXNlL3Jl
d29yayBhcyB5b3Ugc2VlIGZpdCAtCj4+IEknZCBqdXN0IGFwcHJlY2lhdGUgYmVpbmcgY3JlZGl0
ZWQgYXQgbGVhc3QgdmlhIFJlcG9ydGVkLWJ5LiA6KQo+IAo+IEkgd2FzIGFzc3VtaW5nIHRoZSBu
b24tUkZDIHBhdGNoZXMgYXJlIGdvb2QgdG8gZ28sIHNvIEkgd2FzIGdvaW5nIHRvCj4gcGljayB1
cCAxLCAyLCBhbmQgNy4KCkFjdHVhbGx5IDEsIDIgYW5kIDQgc2hvdWxkIGJlIGdvb2QgdG8gZ287
IDcgaWYgeW91IGZpeCB0aGUgc3ViamVjdCBvciBpZgpJIHJlc3Bpbi4gQWxzbyA2IGlmIHlvdSBj
YW4gaGF2ZSBzb21lb25lIGNoZWNrIHRoYXQgbm8gbmV3IHByb3BlcnRpZXMKd2lsbCBiZSBuZWVk
ZWQgZm9yIDQ3MCAobm8gTGludXggZHJpdmVyIHN1cHBvcnQgeWV0KS4KCkFsbCBidXQgMSBhc3N1
bWluZyB5b3UnbGwgYmUgb2theSB0byBhZGQgU29DLXNwZWNpZmljIHJlc3RyaWN0aW9ucyBvbgpj
bG9ja3MvcmVzZXRzL2RvbWFpbnMgbGF0ZXIsIG9uY2Ugd2UndmUgZnVsbHkgZmlndXJlZCBpdCBv
dXQgKGNmLiBjb3ZlcgpsZXR0ZXIgZm9yIGN1cnJlbnQgZXJyb3JzIC0gbG9va2luZyBpbnRvIHBv
d2VyIGRvbWFpbnMgbmV4dCkuCgpSZWdhcmRzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBT
b2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2Vy
bWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
