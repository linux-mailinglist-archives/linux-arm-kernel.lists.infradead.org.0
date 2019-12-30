Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0398212D2B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 18:30:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZSa4FjlQL54RVB5SDRc9HSiKKad4LEO9BQj4k2iGij4=; b=rj1kDaNgb/akUJ
	K3AGC0muk2HzOeZnVf5uJsIgOwbuB91f8ru+UvL9nsjqdNSIWqTfqoylrUvfou2lAO3srIJ7HPsum
	UxLqipsx7T08x3LvjEhYXYfh3JKDKpHPjD0VbaX0FkQr3u3JssHImpkgY9QhqgEaSlj3Vmzy4w+8t
	lFuLakdx+bUNsH07RUQgiQOf3GiVmkQMM3LtNPMwBBeqSU3y8a7cngDeb1VAhd3kCOQ2FaYEctuyU
	jGtkDL13n3xtwah+DWT+TfYCalRfUrEUH5YOr8NPjQT28IQZDWw2IJ7W1cHZl71wbPJ3gfx8ZKCO2
	qlR+ZdL9DN+H19IRpGdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilyrw-0003hF-6p; Mon, 30 Dec 2019 17:30:16 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilyre-0003fq-Pd
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 17:30:00 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 87C948027;
 Mon, 30 Dec 2019 17:30:31 +0000 (UTC)
Date: Mon, 30 Dec 2019 09:29:48 -0800
From: Tony Lindgren <tony@atomide.com>
To: =?utf-8?B?QW5kcsOp?= Hentschel <nerv@dawncrow.de>
Subject: Re: [PATCH] ARM: dts: Add omap3-echo
Message-ID: <20191230172948.GL35479@atomide.com>
References: <20191224161005.28083-1-nerv@dawncrow.de>
 <20191224184503.GK35479@atomide.com>
 <60412339-53BF-4DC1-8AF6-4FB0E75D429C@goldelico.com>
 <53e6cbbd-1094-cba2-4942-981502a738d4@dawncrow.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53e6cbbd-1094-cba2-4942-981502a738d4@dawncrow.de>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_092958_874348_B699EE98 
X-CRM114-Status: GOOD (  20.74  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux@arm.linux.org.uk,
 "H. Nikolaus Schaller" <hns@goldelico.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bcousson@baylibre.com, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiBBbmRyw6kgSGVudHNjaGVsIDxuZXJ2QGRhd25jcm93LmRlPiBbMTkxMjI3IDE0OjI5XToKPiBB
bSAyNS4xMi4xOSB1bSAxODowMSBzY2hyaWViIEguIE5pa29sYXVzIFNjaGFsbGVyOgo+ID4gSSB0
aGluayB0aGUgYW0zNzAzIGlzIGEgZG0zNzMwIChvbWFwMzYzMCkgd2hlcmUgdGhlIFNHWCBhbmQg
dGhlCj4gPiBEU1AgaGF2ZSBub3QgcGFzc2VkIHByb2R1Y3Rpb24gdGVzdCBhbmQgYXJlICJkaXNh
YmxlZCIgYnkgZUZ1c2VzLgo+ID4gVGhpcyBpcyBhIGNvbW1vbiBwcm9jZWR1cmUgaW4gc2lsaWNv
biBwcm9kdWN0aW9uIHRvIGluY3JlYXNlIHlpZWxkLgo+ID4gCj4gPiBUaGVyZWZvcmUsIHRoZXJl
IGlzIGEgcmVnaXN0ZXIgd2hpY2ggYWxsb3dzIHRvIGR5bmFtaWNhbGx5IGRldGVybWluZQo+ID4g
d2hhdCBjb21wb25lbnRzIChTR1ggYW5kIERTUCkgYXJlIGF2YWlsYWJsZSBvbiBhIHNwZWNpZmlj
IFNvQyBjaGlwLgo+ID4gU2VlICJUYWJsZSAxLTYuIENoaXAgSWRlbnRpZmljYXRpb24iIGluIHRo
ZSBjb21tb24KPiA+ICJBTS9ETTM3eCBNdWx0aW1lZGlhIERldmljZSBUUk0iLgo+ID4gCj4gPiBT
dWNoIGJpdHMgZXhpc3RzIGZvciBvbWFwMzR4eCBhbmQgZm9yIG9tYXAzNnh4IChha2EgYW0zN3h4
L2RtMzd4eCkuCj4gPiAKPiA+IFRoYXQgd2F5IHRoZXJlIGlzIG5vIG5lZWQgdG8gZGlzYWJsZS9l
bmFibGUgc2d4IHRocm91Z2ggZGV2aWNlIHRyZWUKPiA+IHZhcmlhdGlvbnMgYW5kIGludHJvZHVj
aW5nIG1vcmUgY29tcGxleGl0eSBieSBpbnRyb2R1Y2luZyBtb3JlIGFuZCBtb3JlCj4gPiBEVFMg
Zm9yIHZhcmlhbnRzIChhbTM3MDMuZHRzaSwgYW0zNzE1LmR0c2ksIGRtMzcyMC5kdHNpLCBkbTM3
MzAuZHRzaT8pLgo+ID4gCj4gPiBCVFc6IHdoYXQgYWJvdXQgYSBib2FyZCB0aGF0IGlzL3dhcyBw
cm9kdWNlZCBpbiBlaXRoZXIgYW0zNzAzIG9yIGRtMzczMAo+ID4gdmFyaWFudHM/IENhbiB0aGV5
IHN0aWxsIHNoYXJlIGFuIG9tYXAzNnh4LmR0c2kgYmFzZWQgRFRCPwo+ID4gCj4gPiBTbyBJTUhP
IGlmIHRoZXJlIGlzIGFuIGlzc3VlIHdpdGggc2d4IGVuYWJsZWQgb24gYW0zNzAzIGJ1dCBubyBT
R1gKPiA+IGhhcmR3YXJlIGF2YWlsYWJsZSBvbiBhIHNwZWNpZmljIFNvQywgdGhlIHN5c2Mgc2V0
dXAgc2hvdWxkIHNvbWVob3cgcmVhZAo+ID4gdGhlIGJpdHMgYW5kIGVmZmVjdGl2ZWx5IGRpc2Fi
bGUgYWxsIFNHWCByZWxhdGVkIHNldHVwIGlmIGl0IGlzIG5vdAo+ID4gYXZhaWxhYmxlIG9uIHRo
ZSBTb0MuIElmIEkgcmVtZW1iZXIgY29ycmVjdGx5LCBzb21lIG9sZGVyIGh3bW9kcyBkaWQKPiA+
IHN1Y2ggdGhpbmdzIGJ5IGNoZWNraW5nIFNvQyB2YXJpYW50IGJpdHMuCj4gCj4gSSBsaWtlIHRo
ZSBpZGVhLCBidXQgSSdtIG5vdCBpbiB0aGUgcG9zaXRpb24gdG8gdm90ZSBmb3IgaXQgYW5kIEkg
ZG9uJ3QKPiB1bmRlcnN0YW5kIHRoZSBzeXNjIGNvZGUgZW5vdWdoIHRvIGltcGxlbWVudCB0aGF0
LgoKV2UgY2FuIGVhc2lseSBkbyBib3RoLiBTbyBubyB3b3JyaWVzLCBJIGNhbiBlYXNpbHkgYWRk
IFNvQyBjYXBhYmlsaXRlcwpzdXBwb3J0IGF0IHNvbWUgcG9pbnQuCgo+IEFtIDI1LjEyLjE5IHVt
IDEzOjUzIHNjaHJpZWIgQWRhbSBGb3JkOgo+ID4gT24gV2VkLCBEZWMgMjUsIDIwMTkgYXQgNjow
NSBBTSBBbmRyw6kgSGVudHNjaGVsIDxuZXJ2QGRhd25jcm93LmRlPiB3cm90ZToKPiA+PiBBbmQg
dGhlbiBpbmNsdWRlIGFtMzcwMy5kdHNpIGluIG9tYXAzNnh4LmR0c2kgYmVmb3JlIHNneCBzdXBw
b3J0Pwo+ID4gSSBjYW4gc2VlIHZhbHVlIGluIGhhdmluZyBhIDM3MDMgYmFzZSBhbmQgaW5jbHVk
aW5nIHRoYXQgaW4gdGhlIDM2eHgKPiA+IHdpdGggU0dYIGFuZCBEU1Agbm9kZXMsIGJ1dCB3aHkg
bm90IGp1cyBtYWtlIFNHWCBkaXNhYmxlZCBieSBkZWZhdWx0Lgo+ID4gVGhvc2Ugd2hvIHdhbnQv
bmVlZCBpdCBjYW4gZW5hYmxlIGl0IG9uIGEgcGVyLWJvYXJkIGJhc2lzLgo+ID4+IE9yIHdvdWxk
IGl0IGJlIGJldHRlciB0byBoYXZlIHNneCBzdXBwb3J0IGluIGEgc2VwYXJhdGUgZHRzaT8KPiA+
IAo+ID4gSSBhbSBub3Qgc3VyZSBob3cgbXVjaCBEU1Agc3R1ZmYgaXMgaW4gdGhlcmUsIGJ1dCB0
aGUgRE0zNzMwIGlzIHRoZQo+ID4gQU0zNzAzICsgRFNQIGFuZCAzRC4KPiAKPiBGb3IgY2xhcmlm
aWNhdGlvbiB0aGlzIHJlZHVjZWQgdGFibGUgc2hvdWxkIGhlbHA6Cj4gICAgICBETTM3MzAgfCBE
TTM3MjUgfCBBTTM3MTUgfCBBTTM3MDMKPiBEU1AgICAgWCAgICB8ICAgWCAgICB8ICAgICAgICB8
ICAgIAo+IFNHWCAgICBYICAgIHwgICAgICAgIHwgICBYICAgIHwgICAgCj4gCj4gV2hlcmUgWCBp
cyAic3VwcG9ydGVkIgoKQW5kIGxldCdzIGFsc28gYWRkIG1pbmltYWwgZG0zNzI1LmR0c2ksIGFt
MzcxNS5kdHNpIGFuZCBhbTM3MDMuZHRzaQp0byBtYWtlIHRoaW5ncyBzaW1wbGUuIFRoZSBkZXZp
Y2UgdHJlZSBpcyBzdXBwb3NlZCB0byBkZXNjcmliZSB0aGUKaGFyZHdhcmUsIGFuZCBpbiBtb3N0
IGNhc2VzIHRoZSBTb0MgdmVyc2lvbiBpcyBmaXhlZCBhbmQgbmVlZCBubwpkeW5hbWljIGRldGVj
dGlvbi4KCkFuZHLDqSwgY2FuIHlvdSBwbGVhc2UgYWRkIHRob3NlIHRocmVlIGR0c2kgZmlsZXMg
c2luY2UgeW91IGhhdmUgYXQKbGVhc3Qgb25lIHRlc3QgY2FzZT8gOikKClJlZ2FyZHMsCgpUb255
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
