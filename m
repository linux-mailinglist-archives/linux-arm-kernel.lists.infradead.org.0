Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 480BD89736
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 08:35:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13ZayMF4Afeb74fo9pBx/b4T55wB2zripn9uozLnzHI=; b=a2UWhTkxGMtTGa
	kF5CZXl12utNhkInEv5GYLZrw8v+0MCHe2Fw5J6T6W3NRfl08WlFafBTvJeIr4/NeNteC0PPXfIO+
	Lt7yhPPyF9X57+aVl9Sg/0N2dTWVhynwUAR1uU10y9UNsmR5I90gXp+9dcNQDAcFIH7Ekun9kRaQR
	eJTh/Xt5Fk3aCx/tRkubvyQ6efcJSLHogSQ16s8fafWKVVeBzhGA+Ckpc120a5uEOD+VZeSljvIvI
	Q/2M12pcNWkLyACxfWQil2baVbxfXWi7mbbRU7NzdzJySdVIfOIOoVm/9WplgvGAg8EVa+oxOFESV
	OP3Ws7jn89aK9J6nhobg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx3vO-0001N8-55; Mon, 12 Aug 2019 06:35:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx3v6-0000bT-9o
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 06:35:05 +0000
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE01D214C6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 06:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565591703;
 bh=FDH4N0xh7Fwa7gaXhJaHOOg7qvvBLShzHcWko2nwNJU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2Je1iR/p45ngVV/8voc5pWJs1X09knzNcaDwIkPS3Zu76WYAIPWXDNiKw5M6wgzj7
 zBjx/7/0jehu4GB3B0xp2TxAbr1GQ/6zI+ukgt65P4RqZ/rSeORZjjjH+Zit5sVt83
 l75VHZIgzm4DArOUi+I0ql+z1xyz7HegjlbAQz6I=
Received: by mail-wr1-f43.google.com with SMTP id t16so13435960wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 23:35:02 -0700 (PDT)
X-Gm-Message-State: APjAAAXdjtvf0lUVSJamOU9pPMv36OyQdNE5wcZbL8qrSdl+arduikB2
 4/v7kyB814XMydr4h8TarVNAx5xp6lMYs65sjE4=
X-Google-Smtp-Source: APXvYqwbKaJYYzJA4RMxQdCBE3g3AVDdQm3Y0rriEny5AYeBlG/2L+w5b4yTCa+e4D7SSgwuQz3nhFtp2i+V1Pd4cOI=
X-Received: by 2002:adf:dbce:: with SMTP id e14mr29948995wrj.9.1565591701429; 
 Sun, 11 Aug 2019 23:35:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190811203144.5999-1-peron.clem@gmail.com>
 <20190811203144.5999-2-peron.clem@gmail.com>
 <CAGb2v67T3h_KTVZ20NVWNd78xqCa2ZhYiCJr4oOwYjUM3OaZXA@mail.gmail.com>
In-Reply-To: <CAGb2v67T3h_KTVZ20NVWNd78xqCa2ZhYiCJr4oOwYjUM3OaZXA@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 12 Aug 2019 14:34:50 +0800
X-Gmail-Original-Message-ID: <CAGb2v67N5Ykzo6myKqrNMgu6PCH2pJTzw9JJ5t0MGP_p=0ae9g@mail.gmail.com>
Message-ID: <CAGb2v67N5Ykzo6myKqrNMgu6PCH2pJTzw9JJ5t0MGP_p=0ae9g@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v5 1/3] arm64: dts: allwinner: Add SPDIF
 node for Allwinner H6
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_233504_396907_A2C68EF2 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgMTI6NTIgUE0gQ2hlbi1ZdSBUc2FpIDx3ZW5zQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiBNb24sIEF1ZyAxMiwgMjAxOSBhdCA0OjMxIEFN
IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IFRo
ZSBBbGx3aW5uZXIgSDYgaGFzIGEgU1BESUYgY29udHJvbGxlciBjYWxsZWQgT1dBIChPbmUgV2ly
ZSBBdWRpbykuCj4gPgo+ID4gT25seSBvbmUgcGlubXV4aW5nIGlzIGF2YWlsYWJsZSBzbyBzZXQg
aXQgYXMgZGVmYXVsdC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBl
cm9uLmNsZW1AZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3
aW5uZXIvc3VuNTBpLWg2LmR0c2kgfCAzOCArKysrKysrKysrKysrKysrKysrKwo+ID4gIDEgZmls
ZSBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0
cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKPiA+IGluZGV4IDc2MjhhN2M4MzA5Ni4uNjc3ZWIz
NzQ2NzhkIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LmR0c2kKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi5kdHNpCj4gPiBAQCAtODMsNiArODMsMjQgQEAKPiA+ICAgICAgICAgICAgICAgICBtZXRo
b2QgPSAic21jIjsKPiA+ICAgICAgICAgfTsKPiA+Cj4gPiArICAgICAgIHNvdW5kLXNwZGlmIHsK
PiA+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInNpbXBsZS1hdWRpby1jYXJkIjsKPiA+
ICsgICAgICAgICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxuYW1lID0gInN1bjUwaS1oNi1zcGRp
ZiI7Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgc2ltcGxlLWF1ZGlvLWNhcmQsY3B1IHsKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgIHNvdW5kLWRhaSA9IDwmc3BkaWY+Owo+ID4gKyAgICAg
ICAgICAgICAgIH07Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgc2ltcGxlLWF1ZGlvLWNhcmQs
Y29kZWMgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgc291bmQtZGFpID0gPCZzcGRpZl9v
dXQ+Owo+ID4gKyAgICAgICAgICAgICAgIH07Cj4gPiArICAgICAgIH07Cj4gPiArCj4gPiArICAg
ICAgIHNwZGlmX291dDogc3BkaWYtb3V0IHsKPiA+ICsgICAgICAgICAgICAgICAjc291bmQtZGFp
LWNlbGxzID0gPDA+Owo+ID4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAibGludXgsc3Bk
aWYtZGl0IjsKPiA+ICsgICAgICAgfTsKPiA+ICsKPgo+IFdlJ3ZlIGFsd2F5cyBoYWQgdGhpcyBw
YXJ0IGluIHRoZSBib2FyZCBkdHMuIEl0IGlzbid0IHJlbGV2YW50IHRvIGJvYXJkcwo+IHRoYXQg
ZG9uJ3QgaGF2ZSBTUERJRiBvdXRwdXQuCj4KPiBBbHNvLCBub3Qgc28gcmVsZXZhbnQgaGVyZSwg
YnV0IHRoZXJlIGFyZSBkaWZmZXJlbnQgc2ltcGxlIHNvdW5kIGNhcmQKPiBjb25zdHJ1Y3RzLiBT
b21lIHN1cHBvcnQgbXVsdGlwbGUgYXVkaW8gc3RyZWFtcyB3aXRoIGR5bmFtaWMgUENNIHJvdXRp
bmcuCj4gSG93IHRoZXNlIGFyZSBjb25maWd1cmVkIHJlYWxseSBkZXBlbmRzIG9uIHdoYXQgaW50
ZXJmYWNlcyBhcmUgdXNhYmxlLgo+Cj4gU28ga2VlcGluZyB0aGlzIGF0IHRoZSBib2FyZCBsZXZl
bCBpcyBJTU8gYSBiZXR0ZXIgY2hvaWNlLgoKRm9yZ290IHRvIG1lbnRpb24uIEJvdGggcGF0Y2hl
cyBhbmQgYWxsIHBhcnRzIGluIHRoaXMgcGF0Y2ggYXJlIE9LLiBJdCdzCmp1c3QgdGhlIHBhcnRz
IHRoZSBuZWVkIHRvIGJlIG1vdmVkLgoKCj4gQ2hlbll1Cj4KPgo+ID4gICAgICAgICB0aW1lciB7
Cj4gPiAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhcm0sYXJtdjgtdGltZXIiOwo+ID4g
ICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1BQSSAxMwo+ID4gQEAgLTI4Miw2ICsz
MDAsMTEgQEAKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYmlhcy1wdWxsLXVw
Owo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICBzcGRpZl90eF9waW46IHNwZGlmLXR4LXBpbiB7Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHBpbnMgPSAiUEg3IjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgZnVuY3Rpb24gPSAic3BkaWYiOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
fTsKPiA+ICsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIHVhcnQwX3BoX3BpbnM6IHVhcnQw
LXBoLXBpbnMgewo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwaW5zID0gIlBI
MCIsICJQSDEiOwo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmdW5jdGlvbiA9
ICJ1YXJ0MCI7Cj4gPiBAQCAtNDExLDYgKzQzNCwyMSBAQAo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgfTsKPiA+ICAgICAgICAgICAgICAgICB9Owo+ID4KPiA+ICsgICAgICAgICAgICAgICBz
cGRpZjogc3BkaWZANTA5MzAwMCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAjc291bmQt
ZGFpLWNlbGxzID0gPDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9
ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXNwZGlmIjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
IHJlZyA9IDwweDA1MDkzMDAwIDB4NDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGlu
dGVycnVwdHMgPSA8R0lDX1NQSSAyMSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2N1IENMS19CVVNfU1BESUY+LCA8JmNjdSBDTEtf
U1BESUY+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYXBiIiwg
InNwZGlmIjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJlc2V0cyA9IDwmY2N1IFJTVF9C
VVNfU1BESUY+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZG1hcyA9IDwmZG1hIDI+Owo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZG1hLW5hbWVzID0gInR4IjsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JnNwZGlmX3R4X3Bpbj47Cj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gKyAgICAgICAgICAgICAgIH07
Cj4gPiArCj4gPiAgICAgICAgICAgICAgICAgdXNiMm90ZzogdXNiQDUxMDAwMDAgewo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LW11
c2IiLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJhbGx3aW5uZXIs
c3VuOGktYTMzLW11c2IiOwo+ID4gLS0KPiA+IDIuMjAuMQo+ID4KPiA+IC0tCj4gPiBZb3UgcmVj
ZWl2ZWQgdGhpcyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBHb29n
bGUgR3JvdXBzICJsaW51eC1zdW54aSIgZ3JvdXAuCj4gPiBUbyB1bnN1YnNjcmliZSBmcm9tIHRo
aXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWls
IHRvIGxpbnV4LXN1bnhpK3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb20uCj4gPiBUbyB2aWV3
IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2ViLCB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29nbGUu
Y29tL2QvbXNnaWQvbGludXgtc3VueGkvMjAxOTA4MTEyMDMxNDQuNTk5OS0yLXBlcm9uLmNsZW0l
NDBnbWFpbC5jb20uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
