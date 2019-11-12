Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6237F8D3A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 11:49:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnnWmP2w6dYYBmGq3dE+y5fjIJUPz4CZ/ZC5rIA1udw=; b=toL96RrjpqT8Jg
	jNxPWnExNi2+sxPhFINGHGDsX8INGN0CRu9sQ1zsIE+dS5xs84WqncSPfjtEZc5Wi3qSX5eN3vJfQ
	RVDLHa3Uwsfrymuxfb+WQ6IQfx4l6iKGjkM7wgXa2yLCyV53FX6o/tVtdjlWOOOwXTbsucX+Ynh3C
	R7TvxOZFmBnuwQCRya3r29mwS3kEwdUNGBAf4QH0VZ5ndsdh5XK6MBSBihXcbyBqKgEjA2IfnJwFG
	8mdbKkFpfvDbuiZOm9lrSDALKHbRXyDwnji13ITsGb/eAuKFucX40ouD2NhEscr/SxQ4FRpMCgBpG
	n7ptKyoGW74do1MKDKhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUTja-00007i-Ur; Tue, 12 Nov 2019 10:49:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUTjP-00006B-G3
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 10:49:09 +0000
Received: by mail-wm1-x343.google.com with SMTP id l1so2581742wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 02:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=cGBOxzPSbBShIku6cnlQrmVn7eBeOMTad4fgKmfaiFg=;
 b=Euto9/lQ4Xwt8ZRKGQSpeBv2obGwPp0u/+pHm60h9VTX/05YlZOdCRCI1JzXVpLwm5
 l3g5u9AFmtrm3QcRsRuxM1XCIckSOBQlVGjQfackXRDKAGPfxGCGPr2ts4qmE3SI7Lfa
 qyt0jnRdqJhvES9HKhPlZxKoPX4Q0FbVDo2FOC4Yzl+Bl6Xf3IPU/0ngPAt6xaCWtibg
 UTc8mO7c9XiPGZ0CWumWdpueA3Ij/0fnZhjAvhY3vrWGa4BjuE60H6SiPQn9SD+rn953
 yVVMks7re251j1u6UBWrXfef46kcrzBmy8gCmxIv2xCOGSjIP9dlaZzQrTTtl7GEk6u6
 0lDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=cGBOxzPSbBShIku6cnlQrmVn7eBeOMTad4fgKmfaiFg=;
 b=Ghes27LzTmqbRHbFmOAtgP7vMYCGP8JKEDY+sSrSaY+jV37uWvBbjXmQhaRYDQ7hth
 mhakgF66HrsfFQ3J0Dce+ZvO/Bbd3WdE3FktDWX/o1VKNf/J1zXuXLXzIFFPZqyWLA/U
 EkemutLxftTOCReRK6itTlfYmT9t+FnIgQyrYasq2hn8weUoewR+xch4G2pTNMylCcZY
 osYIyZvSaah1mjsj/gFYfspgZ9yLHBu+/K44Rky0DMx44irBAcs3kHCMi3dq0D3E31vi
 7FhFj6yHNK2ZDNLqPCICbK+JJ++k8+6FXGxjWsMc0Y9VYtiMFY/3v/HcQRxW6XEkgJHZ
 mJNA==
X-Gm-Message-State: APjAAAUMBvQIIBmnKEeljdTHaf/ILpiLK9+Ww/Ob6agrmIzqsSzwskdT
 3MDvTwrFlTQdNU5ncMks86YyPg==
X-Google-Smtp-Source: APXvYqzZj+j6WLZsmzeULWLgYPCNF9UMEvYlEH8Wd9m5JB3mfTBRFsR7TnMXmSIlEe9absXUaF8dMQ==
X-Received: by 2002:a05:600c:2202:: with SMTP id
 z2mr3210310wml.162.1573555745515; 
 Tue, 12 Nov 2019 02:49:05 -0800 (PST)
Received: from dell ([2.27.35.135])
 by smtp.gmail.com with ESMTPSA id n65sm4341325wmf.28.2019.11.12.02.49.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 02:49:05 -0800 (PST)
Date: Tue, 12 Nov 2019 10:48:56 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH] base: soc: Export soc_device_to_device() helper
Message-ID: <20191112104856.GQ3218@dell>
References: <20191103013645.9856-3-afaerber@suse.de>
 <20191111045609.7026-1-afaerber@suse.de>
 <20191111052741.GB3176397@kroah.com>
 <586fa37c-6292-aca4-fa7c-73064858afaf@suse.de>
 <20191111064040.GA3502217@kroah.com>
 <a88442df-dc6b-07e5-8dee-9e308bdda450@suse.de>
 <20191112052347.GA1197504@kroah.com>
 <20191112072926.isjxfa4ci6akhx56@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112072926.isjxfa4ci6akhx56@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_024907_547314_A8D2C948 
X-CRM114-Status: GOOD (  27.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-realtek-soc@lists.infradead.org, Tony Lindgren <tony@atomide.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Kevin Hilman <khilman@baylibre.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 linux-amlogic@lists.infradead.org, linux-omap@vger.kernel.org,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxMiBOb3YgMjAxOSwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cgo+IE9uIFR1ZSwg
Tm92IDEyLCAyMDE5IGF0IDA2OjIzOjQ3QU0gKzAxMDAsIEdyZWcgS3JvYWgtSGFydG1hbiB3cm90
ZToKPiA+IE9uIE1vbiwgTm92IDExLCAyMDE5IGF0IDA5OjEwOjQxUE0gKzAxMDAsIEFuZHJlYXMg
RsOkcmJlciB3cm90ZToKPiA+ID4gQW0gMTEuMTEuMTkgdW0gMDc6NDAgc2NocmllYiBHcmVnIEty
b2FoLUhhcnRtYW46Cj4gPiA+ID4gT24gTW9uLCBOb3YgMTEsIDIwMTkgYXQgMDY6NDI6MDVBTSAr
MDEwMCwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+ID4gPiA+PiBIaSBHcmVnLAo+ID4gPiA+Pgo+
ID4gPiA+PiBBbSAxMS4xMS4xOSB1bSAwNjoyNyBzY2hyaWViIEdyZWcgS3JvYWgtSGFydG1hbjoK
PiA+ID4gPj4+IE9uIE1vbiwgTm92IDExLCAyMDE5IGF0IDA1OjU2OjA5QU0gKzAxMDAsIEFuZHJl
YXMgRsOkcmJlciB3cm90ZToKPiA+ID4gPj4+PiBVc2Ugb2Ygc29jX2RldmljZV90b19kZXZpY2Uo
KSBpbiBkcml2ZXIgbW9kdWxlcyBjYXVzZXMgYSBidWlsZCBmYWlsdXJlLgo+ID4gPiA+Pj4+IEdp
dmVuIHRoYXQgdGhlIGhlbHBlciBpcyBuaWNlbHkgZG9jdW1lbnRlZCBpbiBpbmNsdWRlL2xpbnV4
L3N5c19zb2MuaCwKPiA+ID4gPj4+PiBsZXQncyBleHBvcnQgaXQgYXMgR1BMIHN5bWJvbC4KPiA+
ID4gPj4+Cj4gPiA+ID4+PiBJIHRob3VnaHQgd2Ugd2VyZSBmaXhpbmcgdGhlIHNvYyBkcml2ZXJz
IHRvIG5vdCBuZWVkIHRoaXMuICBXaGF0Cj4gPiA+ID4+PiBoYXBwZW5lZCB0byB0aGF0IGVmZm9y
dD8gIEkgdGhvdWdodCBJIGhhZCBwYXRjaGVzIGluIG15IHRyZWUgKG9yCj4gPiA+ID4+PiBzb21l
b25lJ3MgdHJlZSkgdGhhdCBkaWQgc29tZSBvZiB0aGlzIHdvcmsgYWxyZWFkeSwgc3VjaCB0aGF0
IHRoaXMKPiA+ID4gPj4+IHN5bWJvbCBpc24ndCBuZWVkZWQgYW55bW9yZS4KPiA+ID4gPj4KPiA+
ID4gPj4gSSBkbyBzdGlsbCBzZWUgdGhpcyBmdW5jdGlvbiB1c2VkIGluIG5leHQtMjAxOTExMDgg
aW4gZHJpdmVycy9zb2MvLgo+ID4gPiA+Pgo+ID4gPiA+PiBJJ2xsIGJlIGhhcHB5IHRvIGFkanVz
dCBteSBSRkMgZHJpdmVyIGlmIHNvbWVvbmUgcG9pbnRzIG1lIHRvIGhvdyEKPiA+ID4gPiAKPiA+
ID4gPiBMb29rIGF0IGMzMWU3MzEyMWY0YyAoImJhc2U6IHNvYzogSGFuZGxlIGN1c3RvbSBzb2Mg
aW5mb3JtYXRpb24gc3lzZnMKPiA+ID4gPiBlbnRyaWVzIikgZm9yIGhvdyB5b3UgY2FuIGp1c3Qg
dXNlIHRoZSBkZWZhdWx0IGF0dHJpYnV0ZXMgZm9yIHRoZSBzb2MgdG8KPiA+ID4gPiBjcmVhdGUg
dGhlIG5lZWRlZCBzeXNmcyBmaWxlcywgaW5zdGVhZCBvZiBoYXZpbmcgdG8gZG8gaXQgImJ5IGhh
bmQiCj4gPiA+ID4gd2hpY2ggaXMgcmFjeSBhbmQgaW5jb3JyZWN0Lgo+ID4gPiAKPiA+ID4gVW5y
ZWxhdGVkLgo+ID4gPiAKPiA+ID4gPj4gR2l2ZW4gdGhlIGN1cnJlbnQgc3RydWN0IGxheW91dCwg
YSB0eXBlIGNhc3QgbWlnaHQgd29yayAoYnV0IHVnbHkpLgo+ID4gPiA+PiBPciBpZiB3ZSBzdGF5
IHdpdGggbXkgY3VycmVudCBSRkMgZHJpdmVyIGRlc2lnbiwgd2UgY291bGQgdXNlIHRoZQo+ID4g
PiA+PiBwbGF0Zm9ybV9kZXZpY2UgaW5zdGVhZCBvZiB0aGUgc29jX2RldmljZSAod2hpY2ggd291
bGQgY2x1dHRlciB0aGUKPiA+ID4gPj4gc2NyZWVuIG1vcmUgdGhhbiAic29jIHNvYzA6Iikgb3Ig
cmVzb3J0IHRvIHByX2luZm8oKSB3L28gZGV2aWNlLgo+ID4gPiA+IAo+ID4gPiA+IEljaywgbm8s
IGRvbid0IGNhc3QgYmxpbmRseS4gIFdoYXQgZG8geW91IG5lZWQgdGhlIHBvaW50ZXIgZm9yPyAg
SXMgdGhpcwo+ID4gPiA+IGZvciBpbi10cmVlIGNvZGU/Cj4gPiA+IAo+ID4gPiBObywgYW4gUkZD
IHBhdGNoc2V0OiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMjI0MjYxLwo+
ID4gPiAKPiA+ID4gQXMgSSBpbmRpY2F0ZWQgYWJvdmUsIEkgdXNlZCBpdCBmb3IgYSBkZXZfaW5m
bygpLCB3aGljaCBJIGNhbiBlYXNpbHkKPiA+ID4gYXZvaWQgYnkgdXNpbmcgcHJfaW5mbygpIGlu
c3RlYWQ6Cj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvcmVhbHRlay9jaGlw
LmMgYi9kcml2ZXJzL3NvYy9yZWFsdGVrL2NoaXAuYwo+ID4gPiBpbmRleCBlNTA3OGM2NzMxZmQu
LmY5MzgwZTgzMTY1OSAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9zb2MvcmVhbHRlay9jaGlw
LmMKPiA+ID4gKysrIGIvZHJpdmVycy9zb2MvcmVhbHRlay9jaGlwLmMKPiA+ID4gQEAgLTE3OCw4
ICsxNzgsNyBAQCBzdGF0aWMgaW50IHJ0ZF9zb2NfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPiA+ID4gCj4gPiA+ICAgICAgICAgcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwg
c29jX2Rldik7Cj4gPiA+IAo+ID4gPiAtICAgICAgIGRldl9pbmZvKHNvY19kZXZpY2VfdG9fZGV2
aWNlKHNvY19kZXYpLAo+ID4gPiAtICAgICAgICAgICAgICAgIiVzICVzICgweCUwOHgpIHJldiAl
cyAoMHglMDh4KSBkZXRlY3RlZFxuIiwKPiA+ID4gKyAgICAgICBwcl9pbmZvKCIlcyAlcyAoMHgl
MDh4KSByZXYgJXMgKDB4JTA4eCkgZGV0ZWN0ZWRcbiIsCj4gPiA+ICAgICAgICAgICAgICAgICBz
b2NfZGV2X2F0dHItPmZhbWlseSwgc29jX2Rldl9hdHRyLT5zb2NfaWQsIGNoaXBfaWQsCj4gPiA+
ICAgICAgICAgICAgICAgICBzb2NfZGV2X2F0dHItPnJldmlzaW9uLCBjaGlwX3Jldik7Cj4gPiAK
PiA+IEZpcnN0IG9mZiwgdGhlIGRyaXZlciBzaG91bGQgbm90IGJlIHNwaXR0aW5nIG91dCBub2lz
ZSBmb3Igd2hlbiBhbGwgZ29lcwo+ID4gd2VsbCBsaWtlIHRoaXMgOikKPiAKPiBJIGRpZG4ndCBm
b2xsb3cgdGhlIGRpc2N1c3Npb24gY2xvc2VseSwgYnV0IEkgdGhpbmsgSSB3YW50IHRvIG9iamVj
dAo+IGhlcmUgYSBiaXQuIFdoaWxlIEkgYWdyZWUgdGhhdCBlYWNoIGRyaXZlciBlbWl0dGluZyBz
b21lIHN0dWZmIHRvIHRoZQo+IGxvZyBidWZmZXIgaXMgaGFyZGx5IGhlbHBmdWwsIHNlZWluZyB0
aGUgZXhhY3QgU29DIGRldGFpbHMgaXMgaW5kZWVkCj4gdXNlZnVsIGF0IHRpbWVzLiBXaXRoIG15
IERlYmlhbiBrZXJuZWwgdGVhbSBtZW1iZXIgaGF0IG9uLCBJJ2Qgc2F5Cj4ga2VlcCB0aGlzIGlu
Zm9ybWF0aW9uLiBUaGlzIHdheSB0aGUgU29DIGRldGFpbHMgbWFrZSBpdCBpbnRvIGtlcm5lbCBi
dWcKPiByZXBvcnRzIHdpdGhvdXQgZWZmb3J0IG9uIG91ciBzaWRlLgoKUmlnaHQuIEZyb20gbXkg
YW5nbGUgd2UgYXJlIHN0YXJ0aW5nIHRvIGJlIHdheSB0b28gYWdncmVzc2l2ZSB3aXRoIHRoZQpw
b2ludCBhYm91dCBub3QgcHJpbnRpbmcgaW5mb3JtYXRpb24gdG8gdGhlIGtlcm5lbCBsb2cuIElu
IG9ubHkgYQpzbWFsbCBzZXQgb2YgY2FzZXMgZG9lcyB0aGlzIGFjdHVhbGx5IGNhdXNlIGFuIGlz
c3VlIGkuZS4gd2l0aApwbGF0Zm9ybXMgY29udGFpbmluZyBzbyBtYW55IGRldmljZXMgdGhhdCBw
cmludGluZyBpbmZvcm1hdGlvbiBmcm9tCmVhY2ggb2YgdGhlbSBkb2VzIHNpZ25pZmljYW50bHkg
aW5jcmVhc2UgYm9vdCB0aW1lcy4gSW4gbXkgd29ybGQgb2YKc21hbGwgZWxlY3Ryb25pY3MgSSd2
ZSBiZWVuIGdyZWF0bHkgaGluZGVyZWQgYnkgdGhlIGxhY2sgb2YKaW5mb3JtYXRpb24sIHN1Y2gg
dGhhdCBpdCBoYXMgY29zdCBkYXlzIG9mIGVuZ2luZWVyaW5nIHRyeWluZyB0byB0cmFjawpkb3du
IGZpY3RpdGlvdXMgYnVncyBhbmQgdGhlIGxpa2UuCgpGb3IgcGxhdGZvcm1zIHdoZXJlIHByaW50
aW5nIHVzZWZ1bCBpbmZvcm1hdGlvbiBjdWxtaW5hdGVzIGluIG5lZ2F0aXZlCmVmZmVjdHMsIHBl
cmhhcHMgc2ltcGx5IGxvd2VyIHRoZWlyIGxvZyBsZXZlbCwgcmF0aGVyIHRoYW4gc3VmZm9jYXRl
CmFsbCBwbGF0Zm9ybXMuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNl
cyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
