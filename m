Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84694ADD5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 18:36:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPq6Blt4fCd9t4qEYtT8UowMYX0ICk4l9V4AIK0mAWg=; b=lroJURxFxjbVbj
	9UlUzRfIMSVUBLIEBVaOB0VJtoqIl6FksPZabX5AvOXmh+RCP20q79scoywz1L/GcMLnYl6tjpXDL
	uzMMnnMrJdon2qfMasnENcyWEHE4oICPhUUXau2HCcCZ2zSsG5LAIEkz8zKypPaTxNy/dR2UolRo2
	W/YiZjOTuB0YlSu4RUXa0lc+KArJjm2RoT6pT1vw3/bDlefkrc35bt7M3krmnlAsBMaQHrXBRuWEX
	5tBoZNGwGOJVyO9mTGD2wmGP62Vw6IAP/p/yb9pbv4FAQSn6ifNVYvb0dDPtszda4FilwUQhB4HA0
	R0MuBsE1y2gcybXbjoUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Me1-0006mk-Ve; Mon, 09 Sep 2019 16:36:02 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Mdo-0006eb-2U
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 16:35:49 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 1DEAB80BF;
 Mon,  9 Sep 2019 16:36:17 +0000 (UTC)
Date: Mon, 9 Sep 2019 09:35:43 -0700
From: Tony Lindgren <tony@atomide.com>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
Subject: Re: [RFC] ARM: omap3: Enable HWMODS for HW Random Number Generator
Message-ID: <20190909163543.GQ52127@atomide.com>
References: <20190828150037.2640-1-aford173@gmail.com>
 <20190905230443.GA52127@atomide.com>
 <CAHCN7xL0fbr=Sv+b=0AuGB1PPhAAFdAFLEd_iBM+ZMTkUw5sHQ@mail.gmail.com>
 <CAHCN7xL-Gfxe0qF5w7BUsHnyhcNNpmCnchdKErnmiqggXfsLWw@mail.gmail.com>
 <20190909134033.s26eiurpat3iekse@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909134033.s26eiurpat3iekse@pali>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_093548_160884_EB733051 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Paul Walmsley <paul@pwsan.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Adam Ford <aford173@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiBQYWxpIFJvaMOhciA8cGFsaS5yb2hhckBnbWFpbC5jb20+IFsxOTA5MDkgMTM6NDFdOgo+IE9u
IE1vbmRheSAwOSBTZXB0ZW1iZXIgMjAxOSAwODozNzowOSBBZGFtIEZvcmQgd3JvdGU6Cj4gPiBJ
IGFwcGxpZWQgdGhpcyBvbiA1LjMgYW5kIGl0IGlzIHdvcmtpbmcuICBJIGFzc3VtZSB0aGUgc2Ft
ZSBpcyB0cnVlIGluIGZvci1uZXh0LgoKSG1tIEkgbm90aWNlZCBJIHN0b3BwZWQgZ2V0dGluZyBS
TkcgZGF0YSBhZnRlciBzZXZlcmFsIHJtbW9kIG1vZHByb2JlCmN5Y2xlcywgb3Igc2V2ZXJhbCBo
ZCAvZGV2L3JhbmRvbSByZWFkcy4gQW55Ym9keSBlbHNlIHNlZWluZyB0aGF0PwoKPiA+IERvIHlv
dSB3YW50IHRvIHN1Ym1pdCBhIGZvcm1hbCBwYXRjaD8gIEkgIGNhbiBtYXJrIGl0IGFzICd0ZXN0
ZWQtYnknCj4gPiBUaGlzIHJlYWxseSBoZWxwcyBzcGVlZCB1cCB0aGUgc3RhcnR1cCBzZXF1ZW5j
ZSBvbiBib2FyZHMgd2l0aCBzc2hkCj4gPiBiZWNhdXNlIGl0IGRlbGF5cyBmb3IgbmVhcmx5IDgw
IHNlY29uZHMgd2FpdGluZyBmb3IgZW50cm9weSB3aXRob3V0Cj4gPiB0aGUgaHdybmcuCj4gCj4g
SGkhIFdoZW4gYXBwbHlpbmcgYSBwYXRjaCwgY291bGQgeW91IHBsZWFzZSBkaXNhYmxlIHRoaXMg
cm5nIGZvciBuOTAwPwo+IAo+IEluIG9tYXAzLW45MDAuZHRzIGZvciBybmcgc2hvdWxkIGJlIHN0
YXR1cyA9ICJkaXNhYmxlZCIgKGFzIFRvbnkgYWxyZWFkeQo+IHdyb3RlKSwgc2ltaWxhcmx5IGxp
a2UgZm9yIGFlcy4KClllYWggSSdsbCBwb3N0IGEgcHJvcGVyIHBhdGNoIGFmdGVyIC1yYzEuCgpS
ZWdhcmRzLAoKVG9ueQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
