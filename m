Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 912AA15243
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 19:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CZ0d6rXNnLJtpvlKV1324EUxIW/dAQMhWHCLsVy7I0=; b=b50sGhB8Tz1tGc
	9rmyUufeWdJoI70QB9MjB7QoyEWJTxfhfofGzgj3RW47ZEgHtdAsNdJ7+3sk11/gO1m+smcR/5tno
	ukPCqPeoca6e0hwvYEWA5Gos8TUwFI/YbAHk40VvBPdRhIRc5jO5RworWtfelRRzguk45dP7ZaYM7
	UTErXZfcCV51WuvpK+p068oZz2QHnFHk/JQvmGpnrY1pox616GHOdOoGJ0Q4JAI5F62n+QyJarlxB
	Va4980knUg302H8DjorfaHBZqjWKhsU1lbQRzqPAybdnu7iFzA9uL0lmnfEfObGu6azjF67K8t8Fl
	tkrQq6vbIVYXrgnMIRNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNh6r-0001JV-R4; Mon, 06 May 2019 17:09:01 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNh6i-0001Ib-UH
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 17:08:54 +0000
Received: by mail-it1-x143.google.com with SMTP id a190so21525304ite.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 10:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+zAOIWhESqGIGUXIxvhr5jCceYW4d7dPv26f0+6ppZQ=;
 b=FwpGHEEaQHeypZ6YAHiRFR4DLy25S5IYuo/+PhOatl65HSuOM6neo4+oD42BsbKY22
 PE8q+knMcEXRiblfp+jUayBhft3AmqPSCfQnS/AFyPDC1LeScEfaZFiP/b8p23S9wnWQ
 XDEHt29RnBBjFp8AcFZHcV9JRDJnSr3A9mkzCHyKFApkZ+tbAPIIiEmyE6vPcRx6BTKy
 LMLmpwdRpxhCy7RJrSkJAwSSGrdJh6SbrUz7Y5uHlxJnD8WTxaq/sif7JEZSa/oyc/PS
 2pUgDlVyOafIoHUHqVIxTodpMM/BW9ZEf4Y0EDRgG6makqDW5vHA2eC6AL9CN07e0I8y
 aR2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+zAOIWhESqGIGUXIxvhr5jCceYW4d7dPv26f0+6ppZQ=;
 b=S5ZynWmEtGLCX2wuNvEuWkUi8SHnb+Jumx61Ryu1/CIF4UQNIYlX6bifxG+egA7DXN
 ehRBg5aSkn9+P5k+cezHlEIRWOkc8lv8YjxcAshEyxu9E5o18JDPagL8I3liBDTKPYGQ
 hINXRW0D7IWq7hYy9I0HLI47hfys3Vyepo+xLjzAxot52kAVntvjUu0C3Bun0wEhxKkM
 I9wVsIwL0kKkbgKVfTrXPzI0al/4yvqCEOClVAa9oeQPqOyb3ER/U6EMUEbaLeYR3H+Z
 sytuTqr/IR7pVRI5VxPwwwO1n5ojt4EaODCUfDPIZ1ZhWuBuImg/++roFu996kmFqNuo
 nQxA==
X-Gm-Message-State: APjAAAUtVA6loPdHMRITinRTksERE+tFDJ0GiStoyT/0WY3lKskqI7Nj
 izatex2kyrz5pqrR/swMD+8DQmBH4EVxQoic+Os=
X-Google-Smtp-Source: APXvYqwzdk3uznrvfpSXElhPh2UUfM29ZywDM63ZfmZvhTlO1uPQKUyZEirrHpdzDW34btdGM9Fpy+0MKV6HS6aBk6k=
X-Received: by 2002:a24:93c2:: with SMTP id y185mr18158143itd.95.1557162531449; 
 Mon, 06 May 2019 10:08:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
 <20190503072813.2719-2-tiny.windzz@gmail.com>
 <20190505162215.3594f77d@archlinux> <20190506122807.4u323iys74jddcet@flea>
 <282ccf0979e6c58effd0e177917bdf824c32f64e.camel@aosc.io>
In-Reply-To: <282ccf0979e6c58effd0e177917bdf824c32f64e.camel@aosc.io>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Tue, 7 May 2019 01:08:39 +0800
Message-ID: <CAEExFWusPoxtkGCoA+3gXq69cXZEfjZW+UpHW_0UfrcjpLmaXg@mail.gmail.com>
Subject: Re: [PATCH 1/7] iio: adc: sun4i-gpadc: rework for support multiple
 thermal sensor
To: Icenowy Zheng <icenowy@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_100853_002002_D63DB0F8 
X-CRM114-Status: GOOD (  33.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 lars@metafoo.de, Maxime Ripard <maxime.ripard@bootlin.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-iio@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>, robh+dt@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, pmeerw@pmeerw.net,
 knaack.h@gmx.de, Lee Jones <lee.jones@linaro.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgNywgMjAxOSBhdCAxMjo1MiBBTSBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFv
c2MuaW8+IHdyb3RlOgo+Cj4g5ZyoIDIwMTktMDUtMDbkuIDnmoQgMTQ6MjggKzAyMDDvvIxNYXhp
bWUgUmlwYXJk5YaZ6YGT77yaCj4gPiBIaSwKPiA+Cj4gPiBPbiBTdW4sIE1heSAwNSwgMjAxOSBh
dCAwNDoyMjoxNVBNICswMTAwLCBKb25hdGhhbiBDYW1lcm9uIHdyb3RlOgo+ID4gPiBPbiBGcmks
ICAzIE1heSAyMDE5IDAzOjI4OjA3IC0wNDAwCj4gPiA+IFlhbmd0YW8gTGkgPHRpbnkud2luZHp6
QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+ID4gRm9yIHNvbWUgU09DcywgdGhlcmUgYXJl
IG1vcmUgdGhhbiBvbmUgdGhlcm1hbCBzZW5zb3IsIGFuZCB0aGVyZQo+ID4gPiA+IGFyZQo+ID4g
PiA+IGN1cnJlbnRseSBmb3VyIHNlbnNvcnMgb24gdGhlIEE4MC4gU28gd2UgbmVlZCB0byBkbyBz
b21lIHdvcmsgaW4KPiA+ID4gPiBvcmRlcgo+ID4gPiA+IHRvIHN1cHBvcnQgbXVsdGlwbGUgdGhl
cm1hbCBzZW5zb3JzOgo+ID4gPiA+Cj4gPiA+ID4gICAxKSBhZGQgc2Vuc29yX2NvdW50IGluIGdw
YWRjX2RhdGEuCj4gPiA+ID4gICAyKSBpbnRyb2R1Y2Ugc3VuNGlfc2Vuc29yX3R6ZCBpbiBzdW40
aV9ncGFkY19paW8sIHRvIHN1cHBvcnQKPiA+ID4gPiBtdWx0aXBsZQo+ID4gPiA+ICAgICAgdGhl
cm1hbF96b25lX2RldmljZSBhbmQgZGlzdGluZ3Vpc2ggYmV0d2VlbiBkaWZmZXJlbnQKPiA+ID4g
PiBzZW5zb3JzLgo+ID4gPiA+ICAgMykgbW9kaWZ5IHJlYWQgdGVtcGVyYXR1cmUgYW5kIGluaXRp
YWxpemF0aW9uIGZ1bmN0aW9uLgo+ID4gPgo+ID4gPiBUaGlzIGNvbW1lbnQgZG9lc24ndCBtZW50
aW9uIHRoZSBkZXZtIGNoYW5nZS4gSWYgaXQgaGFkIGl0IHdvdWxkCj4gPiA+IGhhdmUKPiA+ID4g
cmFpc2VkIGltbWVkaWF0ZSBhbGFybSBiZWxscy4KPiA+ID4KPiA+ID4gSSdtIGFsc28gbm90IGtl
ZW4gb24gdGhlIHdlYiBvZiBwb2ludGVycyB0aGF0IHRoaXMgZHJpdmVyIGlzCj4gPiA+IHN0ZWFk
aWx5Cj4gPiA+IGV2b2x2aW5nLiAgSSBjYW4ndCBpbW1lZGlhdGVseSBzZWUgaG93IHRvIHJlZHVj
ZSB0aGF0IGNvbXBsZXhpdHkKPiA+ID4gaG93ZXZlci4KPiA+Cj4gPiBTbyBJIG1pZ2h0IGJlIHJl
c3BvbnNpYmxlIGZvciB0aGF0LCBhbmQgbG9va2luZyBiYWNrLCB0aGlzIGhhcyBiZWVuIGEKPiA+
IG1pc3Rha2UuCj4gPgo+ID4gVGhpcyBkcml2ZXIgd2FzIGluaXRhbGx5IHB1dCB0b2dldGhlciB0
byBzdXBwb3J0IGEgY29udHJvbGxlciBmb3VuZAo+ID4gaW4KPiA+IG9sZGVyIChBMTAgdXAgdG8g
QTMxKSBBbGx3aW5uZXIgU29Dcy4gVGhpcyBjb250cm9sbGVyIGhhZCBhbiBBREMKPiA+IGRyaXZl
ciB0aGF0IGNvdWxkIGJlIG9wZXJhdGVkIGFzIGEgdG91Y2hzY3JlZW4gY29udHJvbGxlciwgYW5k
IHdhcwo+ID4gcHJvdmlkaW5nIGEgQ1BVIHRlbXBlcmF0dXJlIHNlbnNvciBhbmQgYSBnZW5lcmFs
IHB1cnBvc2UgQURDLgo+ID4KPiA+IEhvd2V2ZXIsIHdlIGFscmVhZHkgaGFkIGEgZHJpdmVyIGZv
ciB0aGF0IGNvbnRyb2xsZXIgaW4gZHJpdmVycy9pbnB1dAo+ID4gdG8gcmVwb3J0IHRoZSBDUFUg
dGVtcGVyYXR1cmUsIGFuZCB0aGUgb25lIGluIElJTyB3YXMgaW50cm9kdWNlZCB0bwo+ID4gc3Vw
cG9ydCB0aGUgZ2VuZXJhbCBwdXJwb3NlIEFEQyAoYW5kIHRoZSBDUFUgdGVtcGVyYXR1cmUpLiBU
aGUgbG9uZwo+ID4gdGVybSBnb2FsIHdhcyB0byBhZGQgdGhlIHRvdWNoc2NyZWVuIGZlYXR1cmUg
YXMgd2VsbCBldmVudHVhbGx5IHNvCj4gPiB0aGF0IHdlIGNvdWxkIHJlbW92ZSB0aGUgb25lIGlu
IGRyaXZlcnMvaW5wdXQuIFRoYXQgZGlkbid0IGhhcHBlbi4KPiA+Cj4gPiBBdCB0aGUgc2FtZSB0
aW1lLCB0aGUgQWxsd2lubmVyIGhhcmR3YXJlIHNsb3dseSBldm9sdmVkIHRvIHJlbW92ZSB0aGUK
PiA+IHRvdWNoc2NyZWVuIGFuZCBBREMgZmVhdHVyZXMsIGFuZCBvbmx5IGtlZXAgdGhlIENQVSB0
ZW1wZXJhdHVyZQo+ID4gcmVhZG91dC4gSXQgdGhlbiBldm9sdmVkIGZ1cnRoZXIgb24gdG8gc3Vw
cG9ydCBtdWx0aXBsZSB0ZW1wZXJhdHVyZXMKPiA+IChmb3IgZGlmZmVyZW50IGNsdXN0ZXJzLCB0
aGUgR1BVLCBhbmQgc28gb24pLgo+ID4KPiA+IFNvLCB0b2RheSwgd2UncmUgaW4gYSBzaXR1YXRp
b24gd2hlcmUgSSB3YXMgcHVzaGluZyBldmVyeXRoaW5nIGludG8KPiA+IHRoYXQgSUlPIGRyaXZl
cnMgc2luY2UgdGhlcmUgd2FzIHNpbWlsaXJhdGllcyBiZXR3ZWVuIGFsbCB0aGUKPiA+IGdlbmVy
YXRpb25zLCBidXQgdGhlIGZhY3QgdGhhdCB3ZSBoYXZlIHRvIHN1cHBvcnQgc28gbWFueSBvZGQg
Y2FzZXMKPiA+IChEVCBiaW5kaW5ncyBjb21wYXRpYmlsaXR5LCBjb250cm9sbGVycyB3aXRoIGFu
ZCB3aXRob3V0IEFEQywgZXRjKQo+ID4gdGhhdCBpdCBiZWNvbWVzIGEgcmVhbCBtZXNzLgo+ID4K
PiA+IEFuZCB0aGF0IG1lc3MgaXNuJ3QgcmVhbGx5IHVzZWQgYnkgYW55Ym9keSwgc2luY2Ugd2Ug
d2FudCB0byBoYXZlIHRoZQo+ID4gdG91Y2hzY3JlZW4uCj4gPgo+ID4gVGhlcmUncyBvbmx5IG9u
ZSBTb0MgdGhhdCBpcyBzdXBwb3J0ZWQgb25seSBieSB0aGF0IGRyaXZlciwgd2hpY2ggaXMKPiA+
IHRoZSBBMzMgdGhhdCBvbmx5IGhhZCBhIENQVSB0ZW1wZXJhdHVyZSByZWFkb3V0LCBhbmQgaXMg
c3RpbGwgcHJldHR5Cj4gPiBzaW1pbGFyIHRvIHRoZSBsYXRlc3QgU29DIGZyb20gQWxsd2lubmVy
ICh0aGF0IGlzIHN1cHBvcnRlZCBieSB0aGlzCj4gPiBzZXJpZXMpLgo+ID4KPiA+IEkgZ3Vlc3Ms
IGZvciBldmVyeW9uZSdzIHNhbml0eSBhbmQgaW4gb3JkZXIgdG8gbm90IHN0YWxsIHRoaXMKPiA+
IGZ1cnRoZXIsCj4gPiBpdCB3b3VsZCBqdXN0IGJlIGJldHRlciB0byBjcmVhdGUgYW4gaHdtb24g
ZHJpdmVyIGZvciB0aGUgQTMzIChhbmQKPiA+IG9ud2FyZHMsIGluY2x1ZGluZyB0aGUgSDYpIGZv
ciB0aGUgU29DIHRoYXQganVzdCBoYXZlIHRoZSB0ZW1wZXJhdHVyZQo+ID4gcmVhZG91dCBmZWF0
dXJlLiBBbmQgZm9yIHRoZSBvbGRlciBTb0MsIHdlIGp1c3Qga2VlcCB0aGUgb2xkZXIgZHJpdmVy
Cj4gPiB1bmRlciBpbnB1dC8uIE9uY2UgdGhlIEEzMyBpcyBzdXBwb3J0ZWQsIHdlJ2xsIHJlbW92
ZSB0aGUgZHJpdmVyIGluCj4gPiBJSU8gKGFuZCB0aGUgcmVsYXRlZCBiaXRzIGluIGRyaXZlcnMv
bWZkKS4KCmEgaHdtb24gZHJpdmVyIG9yIGEgdGhlcm1hbCBkcml2ZXLvvJ8KCj4KPiBJIHRoaW5r
IGEgdGhlcm1hbCBkcml2ZXIgaXMgYmV0dGVyLgoKVGhpcyBpcyB3aGF0IEkgaG9wZSB0byBzZWUg
YSBmZXcgbW9udGhzIGFnby4KCj4KPiBPdGhlciBTb0NzJyB0aGVybWFsIHNlbnNvciBkcml2ZXJz
IGFyZSBhbGwgdGhlcm1hbCBkcml2ZXJzLgo+Cj4gPgo+ID4gQXJtYmlhbiBhbHJlYWR5IGhhcyBh
IGRyaXZlciBmb3IgdGhhdCB0aGV5IG5ldmVyIHVwc3RyZWFtZWQgaWlyYywgc28KPiA+IGl0IG1p
Z2h0IGJlIGEgZ29vZCBzdGFydGluZyBwb2ludCwgYW5kIHdlIHdvdWxkIGFkZCB0aGUgc3VwcG9y
dCBmb3IKPiA+IHRoZSBINi4gSG93IGRvZXMgdGhhdCBzb3VuZD8KPgo+IEkgdGhpbmsgdGhlIGRl
dmVsb3BlciBhYmFuZG9uZWQgdG8gdXBzdHJlYW0gaXQgYmVjYXVzZSBvZiB0aGUgcHJldmlvdXMK
PiBwcm9ibGVtIDstKQo+Cj4gTWF5YmUgaXQgY2FuIGJlIHRha2VuIGFuZCBhZGQgQTMzJkg2IHN1
cHBvcnQuCgpJZiBPSywgSSBhbSBnb2luZyB0byBzdGFydCBzb21lIHRoZXJtYWwgZHJpdmVyIHdv
cmsgdGhpcyB3ZWVrZW5kLiAgOiApCgpDaGVlcnMsCllhbmd0YW8KCj4KPiA+Cj4gPiBTb3JyeSBm
b3Igd2FzdGluZyBldmVyeWJvZHkncyB0aW1lIG9uIHRoaXMuCj4gPgo+ID4gTWF4aW1lCj4gPgo+
ID4gLS0KPiA+IE1heGltZSBSaXBhcmQsIEJvb3RsaW4KPiA+IEVtYmVkZGVkIExpbnV4IGFuZCBL
ZXJuZWwgZW5naW5lZXJpbmcKPiA+IGh0dHBzOi8vYm9vdGxpbi5jb20KPiA+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdAo+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4g
PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
