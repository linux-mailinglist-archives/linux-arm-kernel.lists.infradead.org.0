Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6539FEEB1A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 22:29:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2tkWkeH/W5cT/5mGqRKeplb2IdtyWjy/NkKddaD7ow=; b=AWbkpSp0TfrFzC
	8HeFTB5D4V3RMnABOaq+Fvt7iKLCBGdgVO+onUwKQmqTemFQqDhjcTUKZ4RmZ9ij199orjl0zewtI
	mCY4sMAiOsmhoFMI8h62rM9KxURc5spevthqht+z0HLeFezTw2S0zpaB3XE+LcNWmSHr62CBtWX1y
	bwwnSDrgnfotyW/wwADQTT8C6ECwAQOiiL6KXPum8HEFqnTGp1qMufT5GhQHiCTMU7xjzKgLWJNhn
	z8j1NQQp/A/ZbFhodjk321SSfG1nrv3wDgT9Hm3DUuq4kc9FPuRWDaaIg1iZK1bhX4h8ibpIuI/Tj
	A1tGUf+fj3xnN8nhRBMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRjuX-0003Q4-4t; Mon, 04 Nov 2019 21:29:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRjuN-0003PY-Ta
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 21:29:09 +0000
Received: by mail-wm1-x344.google.com with SMTP id z19so13508363wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 13:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Tp7E0KMvbL6BOAUu2NNrtQeKJbNH0Cxz/NvxU3jQlik=;
 b=PtstzIB3y4gOTVfBvLknyAu6/bRt6HO26iBUPi+jtjtcHKqtC3BAX5Vglcl36CTDXk
 vdyO63PGHx/jlldvBKhG8dxzO7elOem1o6UxjLObum4u9ajaoYO15TOxkzTfyi9+RJHj
 8OQSze8CiegkGhAtfI3YvVvmgWMysT+QVDDuxjtgzHuQ4Puuj5RAelKdHfv8VvA95X/9
 HEgwmpl6TybsMjv1V37wNav+xhxMHOHetk02mcJCJc12/4hedag2qv6OhSzyzep+xrjV
 aMz2z1v45p9bp93fv6GljUmPm9IfNkk8wxwViMJJJhPGskW53ydGxQTTzjsNzJljfi0G
 3jrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Tp7E0KMvbL6BOAUu2NNrtQeKJbNH0Cxz/NvxU3jQlik=;
 b=LqZgAYLUhgNzCLGZqehYF/BZizOA3KX3EPOE/qYcyOtA6OGtBnnDmkR14QGPDQts55
 HdhLpiqsbi3at0zgwzTa5qzosdMvezFklYrPIC+pvDJzXMZn+mKlotyaUzccSyOnoQ9P
 ic1iIwIXAj0okPV/TbdaJpYjz/Dnjd6do1h2+zunUgxpLLms1scaK+EzUySG1g6RVx84
 c0L/UJTJ3zHOlwfgpg73DOgZdYHNkHPYlziObTRC0zrNxxjQCj566oU1Ky8r3DWAMeWr
 o0P3ptjSMPHjaIzBcBOBw1BeO8b9SjtayaGFlzc7ZEmeEKKHYcDpfRebLW59lPPLV3i9
 EngA==
X-Gm-Message-State: APjAAAW7zCPvmMJ9WGqQX0VnVKzWY/74FXXd/gyUVLvp2+7GMejvLZtQ
 RCF5fRg/F296Z0T1yFmNQtFyb5zfnwJw6dGOFh4=
X-Google-Smtp-Source: APXvYqyn++80Z0P0IqvOwdBOky/MrB6MAOFkJrrpZmla4Vmh4glLP0MhXJPlaBoPF3H93AUZ23e4xWA86T3r+VljyWI=
X-Received: by 2002:a05:600c:228e:: with SMTP id
 14mr937906wmf.119.1572902945693; 
 Mon, 04 Nov 2019 13:29:05 -0800 (PST)
MIME-Version: 1.0
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <20191103203334.10539-5-peron.clem@gmail.com>
 <20191104083835.m2pd4fvhn2ze6bjt@pengutronix.de>
In-Reply-To: <20191104083835.m2pd4fvhn2ze6bjt@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 4 Nov 2019 22:28:54 +0100
Message-ID: <CAJiuCccjgtMcJa-pZCB_DGN6L8m9bDTgQRoV6WUKPSjv8kn8vA@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] pwm: sun4i: Add support to output source clock
 directly
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_132907_956957_F140068A 
X-CRM114-Status: GOOD (  31.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlCgpPbiBNb24sIDQgTm92IDIwMTkgYXQgMDk6MzgsIFV3ZSBLbGVpbmUtS8O2bmlnCjx1
LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gT24gU3VuLCBOb3YgMDMs
IDIwMTkgYXQgMDk6MzM6MzFQTSArMDEwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gRnJv
bTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4KPiA+IFBXTSBj
b3JlIGhhcyBhbiBvcHRpb24gdG8gYnlwYXNzIHdob2xlIGxvZ2ljIGFuZCBvdXRwdXQgdW5jaGFu
Z2VkIHNvdXJjZQo+ID4gY2xvY2sgYXMgUFdNIG91dHB1dC4gVGhpcyBpcyBhY2hpZXZlZCBieSBl
bmFibGluZyBieXBhc3MgYml0Lgo+ID4KPiA+IE5vdGUgdGhhdCB3aGVuIGJ5cGFzcyBpcyBlbmFi
bGVkLCBubyBvdGhlciBzZXR0aW5nIGhhcyBhbnkgbWVhbmluZywgbm90Cj4gPiBldmVuIGVuYWJs
ZSBiaXQuCj4gPgo+ID4gVGhpcyBtb2RlIG9mIG9wZXJhdGlvbiBpcyBuZWVkZWQgdG8gYWNoaWV2
ZSBoaWdoIGVub3VnaCBmcmVxdWVuY3kgdG8KPiA+IHNlcnZlIGFzIGNsb2NrIHNvdXJjZSBmb3Ig
QUMyMDAgY2hpcCwgd2hpY2ggaXMgaW50ZWdyYXRlZCBpbnRvIHNhbWUKPiA+IHBhY2thZ2UgYXMg
SDYgU29DLgo+Cj4gSSB0aGluayB0aGUgLCBzaG91bGQgYmUgZHJvcHBlZC4KPgo+ID4gU2lnbmVk
LW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gU2ln
bmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+IC0t
LQo+ID4gIGRyaXZlcnMvcHdtL3B3bS1zdW40aS5jIHwgMzkgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKystCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLXN1bjRp
LmMgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gaW5kZXggYjVlN2FjMzY0ZjU5Li4yNDQx
NTc0Njc0ZDkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gKysr
IGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+IEBAIC0zLDYgKzMsMTAgQEAKPiA+ICAgKiBE
cml2ZXIgZm9yIEFsbHdpbm5lciBzdW40aSBQdWxzZSBXaWR0aCBNb2R1bGF0aW9uIENvbnRyb2xs
ZXIKPiA+ICAgKgo+ID4gICAqIENvcHlyaWdodCAoQykgMjAxNCBBbGV4YW5kcmUgQmVsbG9uaSA8
YWxleGFuZHJlLmJlbGxvbmlAZnJlZS1lbGVjdHJvbnMuY29tPgo+ID4gKyAqCj4gPiArICogTGlt
aXRhdGlvbnM6Cj4gPiArICogLSBXaGVuIG91dHB1dGluZyB0aGUgc291cmNlIGNsb2NrIGRpcmVj
dGx5LCB0aGUgUFdNIGxvZ2ljIHdpbGwgYmUgYnlwYXNzZWQKPiA+ICsgKiAgIGFuZCB0aGUgY3Vy
cmVudGx5IHJ1bm5pbmcgcGVyaW9kIGlzIG5vdCBndWFyYW50ZWQgdG8gYmUgY29tcGxldGVkCj4K
PiBUeXBvOiBndWFyYW50ZWQgIC0+IGd1YXJhbnRlZWQKPgo+ID4gICAqLwo+ID4KPiA+ICAjaW5j
bHVkZSA8bGludXgvYml0b3BzLmg+Cj4gPiBAQCAtNzMsNiArNzcsNyBAQCBzdGF0aWMgY29uc3Qg
dTMyIHByZXNjYWxlcl90YWJsZVtdID0gewo+ID4KPiA+ICBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEg
ewo+ID4gICAgICAgYm9vbCBoYXNfcHJlc2NhbGVyX2J5cGFzczsKPiA+ICsgICAgIGJvb2wgaGFz
X2RpcmVjdF9tb2RfY2xrX291dHB1dDsKPiA+ICAgICAgIHVuc2lnbmVkIGludCBucHdtOwo+ID4g
IH07Cj4gPgo+ID4gQEAgLTExOCw2ICsxMjMsMjAgQEAgc3RhdGljIHZvaWQgc3VuNGlfcHdtX2dl
dF9zdGF0ZShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsCj4gPgo+ID4gICAgICAgdmFsID0gc3VuNGlf
cHdtX3JlYWRsKHN1bjRpX3B3bSwgUFdNX0NUUkxfUkVHKTsKPiA+Cj4gPiArICAgICAvKgo+ID4g
KyAgICAgICogUFdNIGNoYXB0ZXIgaW4gSDYgbWFudWFsIGhhcyBhIGRpYWdyYW0gd2hpY2ggZXhw
bGFpbnMgdGhhdCBpZiBieXBhc3MKPiA+ICsgICAgICAqIGJpdCBpcyBzZXQsIG5vIG90aGVyIHNl
dHRpbmcgaGFzIGFueSBtZWFuaW5nLiBFdmVuIG1vcmUsIGV4cGVyaW1lbnQKPiA+ICsgICAgICAq
IHByb3ZlZCB0aGF0IGFsc28gZW5hYmxlIGJpdCBpcyBpZ25vcmVkIGluIHRoaXMgY2FzZS4KPiA+
ICsgICAgICAqLwo+ID4gKyAgICAgaWYgKCh2YWwgJiBCSVRfQ0goUFdNX0JZUEFTUywgcHdtLT5o
d3B3bSkpICYmCj4gPiArICAgICAgICAgZGF0YS0+aGFzX2RpcmVjdF9tb2RfY2xrX291dHB1dCkg
ewo+ID4gKyAgICAgICAgICAgICBzdGF0ZS0+cGVyaW9kID0gRElWX1JPVU5EX0NMT1NFU1RfVUxM
KE5TRUNfUEVSX1NFQywgY2xrX3JhdGUpOwo+ID4gKyAgICAgICAgICAgICBzdGF0ZS0+ZHV0eV9j
eWNsZSA9IHN0YXRlLT5wZXJpb2QgLyAyOwo+ID4gKyAgICAgICAgICAgICBzdGF0ZS0+cG9sYXJp
dHkgPSBQV01fUE9MQVJJVFlfTk9STUFMOwo+ID4gKyAgICAgICAgICAgICBzdGF0ZS0+ZW5hYmxl
ZCA9IHRydWU7Cj4gPiArICAgICAgICAgICAgIHJldHVybjsKPiA+ICsgICAgIH0KPgo+IE5vdCBz
dXJlIGhvdyB0aGUgcmVzdCBvZiBzdW40aV9wd21fZ2V0X3N0YXRlIGJlaGF2ZXMsIGJ1dCBJIHdv
dWxkIHByZWZlcgo+IHRvIGxldCAuZ2V0X3N0YXRlKCkgcm91bmQgdXAgd2hpY2ggdG9nZXRoZXIg
d2l0aCAuYXBwbHlfc3RhdGUoKSByb3VuZGluZwo+IGRvd24geWllbGRzIHNvdW5kIGJlaGF2aW91
ci4KT2sKPgo+ID4gKwo+ID4gICAgICAgaWYgKChQV01fUkVHX1BSRVNDQUwodmFsLCBwd20tPmh3
cHdtKSA9PSBQV01fUFJFU0NBTF9NQVNLKSAmJgo+ID4gICAgICAgICAgIHN1bjRpX3B3bS0+ZGF0
YS0+aGFzX3ByZXNjYWxlcl9ieXBhc3MpCj4gPiAgICAgICAgICAgICAgIHByZXNjYWxlciA9IDE7
Cj4gPiBAQCAtMjAzLDcgKzIyMiw4IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX2FwcGx5KHN0cnVj
dCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKPiA+ICB7Cj4gPiAgICAg
ICBzdHJ1Y3Qgc3VuNGlfcHdtX2NoaXAgKnN1bjRpX3B3bSA9IHRvX3N1bjRpX3B3bV9jaGlwKGNo
aXApOwo+ID4gICAgICAgc3RydWN0IHB3bV9zdGF0ZSBjc3RhdGU7Cj4gPiAtICAgICB1MzIgY3Ry
bDsKPiA+ICsgICAgIHUzMiBjdHJsLCBjbGtfcmF0ZTsKPiA+ICsgICAgIGJvb2wgYnlwYXNzOwo+
ID4gICAgICAgaW50IHJldDsKPiA+ICAgICAgIHVuc2lnbmVkIGludCBkZWxheV91czsKPiA+ICAg
ICAgIHVuc2lnbmVkIGxvbmcgbm93Owo+ID4gQEAgLTIxOCw2ICsyMzgsMTYgQEAgc3RhdGljIGlu
dCBzdW40aV9wd21fYXBwbHkoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2Rldmlj
ZSAqcHdtLAo+ID4gICAgICAgICAgICAgICB9Cj4gPiAgICAgICB9Cj4gPgo+ID4gKyAgICAgLyoK
PiA+ICsgICAgICAqIEFsdGhvdWdoIGl0IHdvdWxkIG1ha2UgbXVjaCBtb3JlIHNlbnNlIHRvIGNo
ZWNrIGZvciBieXBhc3MgaW4KPiA+ICsgICAgICAqIHN1bjRpX3B3bV9jYWxjdWxhdGUoKSwgdmFs
dWUgb2YgYnlwYXNzIGJpdCBhbHNvIGRlcGVuZHMgb24gImVuYWJsZWQiLgo+ID4gKyAgICAgICog
UGVyaW9kIGlzIGFsbG93ZWQgdG8gYmUgcm91bmRlZCB1cCBvciBkb3duLgo+ID4gKyAgICAgICov
Cj4gPiArICAgICBjbGtfcmF0ZSA9IGNsa19nZXRfcmF0ZShzdW40aV9wd20tPmNsayk7Cj4gPiAr
ICAgICBieXBhc3MgPSAoKHN0YXRlLT5wZXJpb2QgKiBjbGtfcmF0ZSA+PSBOU0VDX1BFUl9TRUMg
JiYKPiA+ICsgICAgICAgICAgICAgICAgc3RhdGUtPnBlcmlvZCAqIGNsa19yYXRlIDwgTlNFQ19Q
RVJfU0VDICsgY2xrX3JhdGUpICYmCj4gPiArICAgICAgICAgICAgICAgc3RhdGUtPmVuYWJsZWQp
Owo+Cj4gSSBndWVzcyB0aGUgY29tcGlsZXIgaXMgc21hcnQgZW5vdWdoIGhlcmUsIGJ1dCBjaGVj
a2luZyBmb3IKPiBzdGF0ZS0+ZW5hYmxlZCBpcyBjaGVhcGVyIHRoYW4gdGhlIG90aGVyIGNoZWNr
cywgc28gcHV0dGluZyB0aGlzIGF0IHRoZQo+IHN0YXJ0IG9mIHRoZSBleHByZXNzaW9uIHNlZW1z
IHNlbnNpYmxlLgo+Cj4gVGhlIGNvbW1lbnQgZG9lc24ndCBtYXRjaCB0aGUgY29kZS4gWW91IGRv
bid0IHJvdW5kIHVwIHN0YXRlLT5wZXJpb2QuCj4gKFRoaXMgaXMgZ29vZCwgcGxlYXNlIGZpeCB0
aGUgY29tbWVudC4pIEkgdGhpbmsgZHJvcHBpbmcgdGhlIGNoZWNrCj4KPiAgICAgICAgIHN0YXRl
LT5wZXJpb2QgKiBjbGtfcmF0ZSA8IE5TRUNfUEVSX1NFQyArIGNsa19yYXRlCj4KPiB3b3VsZCBi
ZSBmaW5lLCB0b28uCk9rCgo+Cj4gSSdkIGxpa2UgdG8gaGF2ZSBhIGNoZWNrIGZvcgo+Cj4gICAg
ICAgICBzdGF0ZS0+ZHV0eV9jeWNsZSAqIGNsa19yYXRlID49IE5TRUNfUEVSX1NFQyAvIDIgJiYK
PiAgICAgICAgIHN0YXRlLT5kdXR5X2N5Y2xlICogY2xrX3JhdGUgPCBOU0VDX1BFUl9TRUMKPgo+
IGhlcmUuIElmIHRoaXMgaXNuJ3QgdHJ1ZSByYXRoZXIgZGlzYWJsZSB0aGUgUFdNIG9yIG91dHB1
dCBhIDEwMCUgZHV0eQo+IGN5Y2xlIHdpdGggYSBsYXJnZXIgcGVyaW9kLgoKV2h5IG5vdCBqdXN0
IGhhdmluZyB0aGUgZHV0eV9jeWNsZSBpcyA1MCUgb25seSA/CnN0YXRlLT5kdXR5X2N5Y2xlICog
MiA9PSBzdGF0ZS0+cGVyaW9kOwoKUmVnYXJkcywKQ2xlbWVudAoKPgo+ID4gKwo+ID4gICAgICAg
c3Bpbl9sb2NrKCZzdW40aV9wd20tPmN0cmxfbG9jayk7Cj4gPiAgICAgICBjdHJsID0gc3VuNGlf
cHdtX3JlYWRsKHN1bjRpX3B3bSwgUFdNX0NUUkxfUkVHKTsKPiA+Cj4KPiBCZXN0IHJlZ2FyZHMK
PiBVd2UKPgo+IC0tCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgVXdlIEtsZWluZS1Lw7ZuaWcgICAgICAgICAgICB8Cj4gSW5kdXN0cmlhbCBMaW51eCBTb2x1
dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
