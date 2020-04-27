Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 064A11BA84E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 17:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pk5BcBpQfTCxxlR1E5624aCaLRAUkWxIDSD3bcdo87w=; b=tbI9+B2CLjJjDE
	+Vf9Y8qLVe4qub+1XgZ/7Zb+Rk4Idwak9NrBsZ3Woy9oSCnBXgPFMOeSjCWenJh/vJy68XX0wgu3F
	b7Drel9lrj0F/UcwjhHlcZK0SFhrYNfNzrSw4FMc2Nw7DdBVA/0TJh17jbJcCL9yKCbleKR7OBYY3
	C4Nv3Mvau+m1HvPXK39wawdWpFaeDuVy4Vz2nesZ+a2yRvRO1SmHEfRPEhyGGWFCg9AGcyN534r4Y
	Wm0xGfQOGfItP0HuL0ZiN2umqtPrd4c0vtdDbv6HBaBb3HzirigStFpOd2y2X8CUn7vdD+RniCKUO
	cPG+9Wtq0atNwAfDQbkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT5xn-0007Yu-R3; Mon, 27 Apr 2020 15:46:31 +0000
Received: from mail-ej1-f66.google.com ([209.85.218.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT5xf-0007Xs-Q5
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 15:46:25 +0000
Received: by mail-ej1-f66.google.com with SMTP id q8so14506359eja.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 08:46:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=vN8ZtTEMOm40Zgoqr2j2go1H/JlhYwioxL2VoPsyXMo=;
 b=dvLSKbFAmAGcIcWKzjeF847ayFmG9gCvVxjUcDTuExdus5gCtYTQoFwOgH9AWBPy41
 L3H1b+l8iWpxdt9n0TyDfUZMS/b4Y5A++uMqMrlM6kUQW9Cl3oQOmo8+/bLK5BgYm8l5
 x6OO0dz85teIAGFrFrpDuwwvmjjgbYHifFWU+4ltek0HZulp4YXQnive7eOXJMQO3j4G
 pibxDfN4IWPeO6ZmJcUPn+l+vurMdGfecXMCJUci3rnKOo/zRUurC+dDPFBJ7osqnUyK
 h0TcTHTOLFkTh1CNXdLtLVTw8aPF4wlHWmBJq1NwAbQY2zOLHWmDzGxvbAMZh1We+YKz
 3iKQ==
X-Gm-Message-State: AGi0PubpqbibCZMv4MJfQMPpkuEAI+FTKVKSKYYQfGy14wd/rEVoF8sH
 O4KsBWbFf0K9QujwVt/QGso=
X-Google-Smtp-Source: APiQypJaGHIqdott9ULGc1vIvIC2hB4wMVjvSOJwybdeeq2XFdtUhgVC8YxEO2xmFZWEXRWg3+ZkRg==
X-Received: by 2002:a17:906:3713:: with SMTP id
 d19mr19332049ejc.111.1588002380871; 
 Mon, 27 Apr 2020 08:46:20 -0700 (PDT)
Received: from pi3 ([194.230.155.237])
 by smtp.googlemail.com with ESMTPSA id v14sm1947180edx.67.2020.04.27.08.46.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 08:46:20 -0700 (PDT)
Date: Mon, 27 Apr 2020 17:46:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH v7 08/12] arm: dts: s5pv210: Add node for SGX 540
Message-ID: <20200427154617.GA1798@pi3>
References: <cover.1587760454.git.hns@goldelico.com>
 <3fd18c747426e15fd1f3500b9c4adce2db9ddd0c.1587760454.git.hns@goldelico.com>
 <NYBE9Q.YH08US7A7DC3@crapouillou.net>
 <BN6PR04MB0660A180D2069848E5C03D7EA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN6PR04MB0660A180D2069848E5C03D7EA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_084623_845829_BCDF1288 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org,
 Paul Burton <paulburton@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 James Hogan <jhogan@kernel.org>, devicetree@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, letux-kernel@openphoenux.org,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgMjYsIDIwMjAgYXQgMDc6NTc6MTJBTSAtMDcwMCwgSm9uYXRoYW4gQmFra2Vy
IHdyb3RlOgo+IEhpIFBhdWwsCj4gCj4gT24gMjAyMC0wNC0yNiA1OjU2IGEubS4sIFBhdWwgQ2Vy
Y3VlaWwgd3JvdGU6Cj4gPiAKPiA+IAo+ID4gTGUgdmVuLiAyNCBhdnJpbCAyMDIwIMOgIDIyOjM0
LCBILiBOaWtvbGF1cyBTY2hhbGxlciA8aG5zQGdvbGRlbGljby5jb20+IGEgw6ljcml0IDoKPiA+
PiBGcm9tOiBKb25hdGhhbiBCYWtrZXIgPHhjLXJhY2VyMkBsaXZlLmNhPgo+ID4+Cj4gPj4gQWxs
IHM1cHYyMTAgZGV2aWNlcyBoYXZlIGEgUG93ZXJWUiBTR1ggNTQwIChyZXZpc2lvbiAxMjApIGF0
dGFjaGVkLgo+ID4+Cj4gPj4gVGhlcmUgaXMgbm8gZXh0ZXJuYWwgcmVndWxhdG9yIGZvciBpdCBz
byBpdCBjYW4gYmUgZW5hYmxlZCBieSBkZWZhdWx0Lgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTog
Sm9uYXRoYW4gQmFra2VyIDx4Yy1yYWNlcjJAbGl2ZS5jYT4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBI
LiBOaWtvbGF1cyBTY2hhbGxlciA8aG5zQGdvbGRlbGljby5jb20+Cj4gPj4gLS0tCj4gPj4gwqBh
cmNoL2FybS9ib290L2R0cy9zNXB2MjEwLmR0c2kgfCAxMyArKysrKysrKysrKysrCj4gPj4gwqAx
IGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAu
ZHRzaQo+ID4+IGluZGV4IDJhZDY0MmY1MWZkOS4uYWJiZGRhMjA1YzFiIDEwMDY0NAo+ID4+IC0t
LSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAuZHRzaQo+ID4+ICsrKyBiL2FyY2gvYXJtL2Jv
b3QvZHRzL3M1cHYyMTAuZHRzaQo+ID4+IEBAIC01MTIsNiArNTEyLDE5IEBAIHZpYzM6IGludGVy
cnVwdC1jb250cm9sbGVyQGYyMzAwMDAwIHsKPiA+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
I2ludGVycnVwdC1jZWxscyA9IDwxPjsKPiA+PiDCoMKgwqDCoMKgwqDCoMKgIH07Cj4gPj4KPiA+
PiArwqDCoMKgwqDCoMKgwqAgZ3B1OiBncHVAZjMwMDAwMDAgewo+ID4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGNvbXBhdGlibGUgPSAic2Ftc3VuZyxzNXB2MjEwLXNneDU0MC0xMjAiOwoKVGhp
cyBzaG91bGQgbm90IHBhc3MgdGhlIGJpbmRpbmdzIGNoZWNrIGJlY2F1c2UgeW91IG1pc3NlZCBs
YXN0CmNvbXBhdGlibGVzLgoKPiA+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHhm
MzAwMDAwMCAweDEwMDAwPjsKPiA+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHQt
cGFyZW50ID0gPCZ2aWMyPjsKPiA+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHRz
ID0gPDEwPjsKPiA+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJjb3Jl
IjsKPiA+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JmNsb2NrcyBDTEtfRzNE
PjsKPiA+PiArCj4gPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXNzaWduZWQtY2xvY2tzID0g
PCZjbG9ja3MgTU9VVF9HM0Q+LCA8JmNsb2NrcyBET1VUX0czRD47Cj4gPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MD4sIDw2NjcwMDAwMD47Cj4gPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmY2xvY2tz
IE1PVVRfTVBMTD47Cj4gPiAKPiA+IFdoYXQgYXJlIHRoZXNlIGNsb2NrcyBmb3IsIGFuZCB3aHkg
YXJlIHRoZXkgcmVwYXJlbnRlZCAvIHJlY2xvY2tlZD8KPiA+IAo+ID4gU2hvdWxkbid0IHRoZXkg
YmUgcGFzc2VkIHRvICdjbG9ja3MnIGFzIHdlbGw/Cj4gPiAKPiA+IC1QYXVsCj4gPiAKPiAKPiBU
aGUgRzNEIGNsb2NrIHN5c3RlbSBjYW4gaGF2ZSBtdWx0aXBsZSBwYXJlbnRzLCBhbmQgZm9yIHN0
YWJsZSBvcGVyYXRpb24KPiBpdCdzIHJlY29tbWVuZGVkIHRvIHVzZSB0aGUgTVBMTCBjbG9jayBh
cyB0aGUgcGFyZW50ICh3aGljaCBpbiB0dXJuCj4gaXMgYWN0dWFsbHkgYSBtdXggYXMgd2VsbCku
ICBNT1VUX0czRCBpcyBzaW1wbHkgdGhlIG11eCBmb3IgQ0xLX0czRAo+IChTR1ggY29yZSBjbG9j
ayksIERPVVRfRzNEIGlzIHRoZSBkaXZpZGVyLiAgRE9VVF9HM0QgY291bGQgZXF1YWxseSBiZSBD
TEtfRzNECj4gKGFuZCBwcm9iYWJseSBzaG91bGQgYmUsIGZvciByZWFkYWJpbGl0eSkgYXMgQ0xL
X0czRCBpcyBzaW1wbHkgdGhlIGdhdGUgYW5kCj4gRE9VVF9HM0QgaXMgdGhlIGRpdmlkZXIgZm9y
IGl0LgoKR29vZCBwb2ludCwgaXQgc2hvdWxkIGJlIENMS19HM0QgaW5zdGVhZCBvZiBET1VULiAg
Q2FuIHlvdSBmaXggdGhpcyBhcwp3ZWxsPwoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
