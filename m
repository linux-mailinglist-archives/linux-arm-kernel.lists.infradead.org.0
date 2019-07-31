Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E967C159
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:30:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32x2pGbTBmdRMxwB9o2BJ3QTPuKMZH0Lb/1H9mBGC8Q=; b=I21YklQBAR2kqq
	6b7/x0t0H9oLAhQX8N/TcBzq2NNp4UdIa7rs4uulMVoOkloY52Gd4QkMqwlL+JulhwDdvkSY0mjdA
	dc6IJM/S4TkXctDh7rpGyZZAONhD8eiHWp39PnJjlrbAxObmgW+3qcipw4dnssfBjIOv9aWgbO0bI
	ZxJaZqt13siVDE74eT/I+qrFGqXgy4uoVveZ5OI1X7dMrl2zftyxmHZcop9N/DU0NoSDgpn2PwnWc
	nQOOO1rmY5jsNXgJV1GBUflGHILurO7cjXRSUKjLBwigJbUNGsgYpXOjiByD29S0yT5x4k+EfRLhW
	GdwpccfHEY2rEaQNkFaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnkJ-0002MO-6m; Wed, 31 Jul 2019 12:30:19 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnk2-0001ks-QS
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:30:05 +0000
X-Originating-IP: 88.168.111.231
Received: from localhost (lpr83-1-88-168-111-231.fbx.proxad.net
 [88.168.111.231]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 364B860015;
 Wed, 31 Jul 2019 12:29:54 +0000 (UTC)
Date: Wed, 31 Jul 2019 14:29:53 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v4 6/9] ASoC: sun4i-i2s: Add multi-lane
 functionality
Message-ID: <20190731122953.2u3iabd6gkn7jv7k@flea>
References: <20190603174735.21002-1-codekipper@gmail.com>
 <CAP03XepJVPge5sz4WcmK8pp2jHAPJdGb6v6A3R0DzSf5O6qj-g@mail.gmail.com>
 <CAEKpxBmxAQKgDhvjpczAWwNtNhYRs07wjMSnr8nqHk1XxMT=nw@mail.gmail.com>
 <2092329.vleAuWJ0xl@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2092329.vleAuWJ0xl@jernej-laptop>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053003_212798_9D0CF939 
X-CRM114-Status: GOOD (  28.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Christopher Obbard <chris@64studio.com>, Chen-Yu Tsai <wens@csie.org>,
 Liam Girdwood <lgirdwood@gmail.com>, codekipper@gmail.com,
 linux-sunxi@googlegroups.com, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMDc6NTc6MTBQTSArMDIwMCwgSmVybmVqIMWga3JhYmVj
IHdyb3RlOgo+IERuZSB0b3JlaywgMDQuIGp1bmlqIDIwMTkgb2IgMTE6Mzg6NDQgQ0VTVCBqZSBD
b2RlIEtpcHBlciBuYXBpc2FsKGEpOgo+ID4gT24gVHVlLCA0IEp1biAyMDE5IGF0IDExOjAyLCBD
aHJpc3RvcGhlciBPYmJhcmQgPGNocmlzQDY0c3R1ZGlvLmNvbT4gd3JvdGU6Cj4gPiA+IE9uIFR1
ZSwgNCBKdW4gMjAxOSBhdCAwOTo0MywgQ29kZSBLaXBwZXIgPGNvZGVraXBwZXJAZ21haWwuY29t
PiB3cm90ZToKPiA+ID4gPiBPbiBUdWUsIDQgSnVuIDIwMTkgYXQgMDk6NTgsIE1heGltZSBSaXBh
cmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+Cj4gd3JvdGU6Cj4gPiA+ID4gPiBPbiBNb24s
IEp1biAwMywgMjAxOSBhdCAwNzo0NzozMlBNICswMjAwLCBjb2Rla2lwcGVyQGdtYWlsLmNvbSB3
cm90ZToKPiA+ID4gPiA+ID4gRnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5j
b20+Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFRoZSBpMnMgYmxvY2sgc3VwcG9ydHMgbXVsdGkt
bGFuZSBpMnMgb3V0cHV0IGhvd2V2ZXIgdGhpcwo+ID4gPiA+ID4gPiBmdW5jdGlvbmFsaXR5Cj4g
PiA+ID4gPiA+IGlzIG9ubHkgcG9zc2libGUgaW4gZWFybGllciBTb0NzIHdoZXJlIHRoZSBwaW5z
IGFyZSBleHBvc2VkIGFuZCBmb3IKPiA+ID4gPiA+ID4gdGhlIGkycyBibG9jayB1c2VkIGZvciBI
RE1JIGF1ZGlvIG9uIHRoZSBsYXRlciBTb0NzLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBUbyBl
bmFibGUgdGhpcyBmdW5jdGlvbmFsaXR5LCBhbiBvcHRpb25hbCBwcm9wZXJ0eSBoYXMgYmVlbiBh
ZGRlZCB0bwo+ID4gPiA+ID4gPiB0aGUgYmluZGluZ3MuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+
IFNpZ25lZC1vZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgo+ID4g
PiA+ID4KPiA+ID4gPiA+IEknZCBsaWtlIHRvIGhhdmUgTWFyaydzIGlucHV0IG9uIHRoaXMsIGJ1
dCBJJ20gcmVhbGx5IHdvcnJpZWQgYWJvdXQKPiA+ID4gPiA+IHRoZSBpbnRlcmFjdGlvbiB3aXRo
IHRoZSBwcm9wZXIgVERNIHN1cHBvcnQuCj4gPiA+ID4gPgo+ID4gPiA+ID4gT3VyIGZ1bmRhbWVu
dGFsIGlzc3VlIGlzIHRoYXQgdGhlIGNvbnRyb2xsZXIgY2FuIGhhdmUgdXAgdG8gOAo+ID4gPiA+
ID4gY2hhbm5lbHMsIGJ1dCBlaXRoZXIgb24gNCBsaW5lcyAoaW5zdGVhZCBvZiAxKSwgb3IgOCBj
aGFubmVscyBvbiAxCj4gPiA+ID4gPiAobGlrZSBwcm9wZXIgVERNKSAob3IgYW55IGNvbWJpbmF0
aW9uIGJldHdlZW4gdGhlIHR3bywgYnV0IHRoYXQgc2hvdWxkCj4gPiA+ID4gPiBiZSBwcmV0dHkg
cmFyZSkuCj4gPiA+ID4KPiA+ID4gPiBJIHVuZGVyc3RhbmQuLi5tYXliZSB0aGUgVERNIG5lZWRz
IHRvIGJlIGV4dGVuZGVkIHRvIHN1cHBvcnQgdGhpcyB0bwo+ID4gPiA+IGNvbnNpZGVyIGNoYW5u
ZWwgbWFwcGluZyBhbmQgbXVsdGlwbGUgdHJhbnNmZXIgbGluZXMuIEkgd2FzIHRoaW5raW5nCj4g
PiA+ID4gYWJvdXQgdGhlIGxhdGVyIHdoZW4gc29tZW9uZSB3YXMgcmVxdWVzdGluZyBzdXBwb3J0
IG9uIElJUkMgYSB3aGlsZQo+ID4gPiA+IGFnbywgSSB0aG91Z2h0IG1hc2tpbmcgbWlnaHQgb2Yg
YmVlbiBhIHNvbHV0aW9uLiBUaGVzZSBjYW4gd2FpdCBhcyB0aGUKPiA+ID4gPiBvbmx5IGNvbnN1
bWVyIGF0IHRoZSBtb21lbnQgaXMgTGlicmVFTEVDIGFuZCB3ZSBjYW4gcGF0Y2ggaXQgdGhlcmUu
Cj4gPiA+Cj4gPiA+IEhpIE1hcmN1cywKPiA+ID4KPiA+ID4gRldJVywgdGhlIFRJIE1jQVNQIGRy
aXZlciBoYXMgc3VwcG9ydCBmb3IgVERNICYgKGkgdGhpbms/KSBtdWx0aXBsZQo+ID4gPiB0cmFu
c2ZlciBsaW5lcyB3aGljaCBhcmUgY2FsbGVkIHNlcmlhbGl6ZXJzLgo+ID4gPiBNYXliZSB0aGlz
IGNhbiBoZWxwIHdpdGggaW5zcGlyYXRpb24/Cj4gPiA+IHNlZQo+ID4gPiBodHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJl
ZS9zCj4gPiA+IG91bmQvc29jL3RpL2RhdmluY2ktbWNhc3AuYyBzYW1wbGUgRFRTOgo+ID4gPgo+
ID4gPiAmbWNhc3AwIHsKPiA+ID4KPiA+ID4gICAgICNzb3VuZC1kYWktY2VsbHMgPSA8MD47Cj4g
PiA+ICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiA+ICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1
bHQiOwo+ID4gPiAgICAgcGluY3RybC0wID0gPCZtY2FzcDBfcGlucz47Cj4gPiA+Cj4gPiA+ICAg
ICBvcC1tb2RlID0gPDA+Owo+ID4gPiAgICAgdGRtLXNsb3RzID0gPDg+Owo+ID4gPiAgICAgc2Vy
aWFsLWRpciA9IDwKPiA+ID4KPiA+ID4gICAgICAgICAyIDAgMSAwCj4gPiA+ICAgICAgICAgMCAw
IDAgMAo+ID4gPiAgICAgICAgIDAgMCAwIDAKPiA+ID4gICAgICAgICAwIDAgMCAwCj4gPiA+ICAg
ICA+Cj4gPiA+ICAgICA+Owo+ID4gPgo+ID4gPiAgICAgdHgtbnVtLWV2dCA9IDwxPjsKPiA+ID4g
ICAgIHJ4LW51bS1ldnQgPSA8MT47Cj4gPiA+Cj4gPiA+IH07Cj4gPiA+Cj4gPiA+IENoZWVycyEK
PiA+Cj4gPiBUaGFua3MsIHRoaXMgbG9va3MgZ29vZC4KPgo+IEkgd291bGQgcmVhbGx5IGxpa2Ug
dG8gc2VlIHRoaXMgaXNzdWUgcmVzb2x2ZWQsIGJlY2F1c2UgSERNSSBhdWRpbyBzdXBwb3J0IGlu
Cj4gbWFpbmxpbmUgTGludXggZm9yIHRob3NlIFNvQ3MgaXMgbG9uZyBvdmVyZHVlLgo+Cj4gSG93
ZXZlciwgdGhlcmUgaXMgYSBwb3NzaWJpbGl0eSB0byBzdGlsbCBhZGQgSERNSSBhdWRpbyBzdXBv
cnQgKHN0ZXJlbyBvbmx5KQo+IGV2ZW4gaWYgdGhpcyBpc3N1ZSBpcyBub3QgY29tcGxldGVseSBz
b2x2ZWQuIElmIHdlIGFncmVlIHRoYXQgY29uZmlndXJhdGlvbiBvZgo+IGNoYW5uZWxzIHdvdWxk
IGJlIHNvbHZlZCB3aXRoIGFkZGl0aW9uYWwgcHJvcGVydHkgYXMgQ2hyaXN0b3BoZXIgc3VnZ2Vz
dGVkLAo+IHN1cHBvcnQgZm9yID4yIGNoYW5uZWxzIGNhbiBiZSBsZWZ0IGZvciBhIGxhdGVyIHRp
bWUgd2hlbiBzdXBwb3J0IGZvciB0aGF0Cj4gcHJvcGVydHkgd291bGQgYmUgaW1wbGVtZW50ZWQu
IEN1cnJlbnRseSwgc3RlcmVvIEhETUkgYXVkaW8gc3VwcG9ydCBjYW4gYmUKPiBhZGRlZCB3aXRo
IGEgZmV3IHBhdGNoZXMuCj4KPiBJIHRoaW5rIGFsbCBJMlMgY29yZXMgYXJlIHJlYWxseSB0aGUg
c2FtZSwgbm8gbWF0dGVyIGlmIGludGVybmFsbHkgY29ubmVjdGVkCj4gdG8gSERNSSBjb250cm9s
bGVyIG9yIHJvdXRlZCB0byBwaW5zLCBzbyBpdCB3b3VsZCBtYWtlIHNlbnNlIHRvIHVzZSBzYW1l
Cj4gY29tcGF0aWJsZSBmb3IgYWxsIG9mIHRoZW0uIEl0J3MganVzdCB0aGF0IHRob3NlIEkyUyBj
b3JlcyB3aGljaCBhcmUgcm91dGVkIHRvCj4gcGlucyBjYW4gdXNlIG9ubHkgb25lIGxhbmUgYW5k
ID4yIGNoYW5uZWxzIGNhbiBiZSB1c2VkIG9ubHkgaW4gVERNIG1vZGUgb2YKPiBvcGVyYXRpb24s
IGlmIEkgdW5kZXJzdGFuZCB0aGlzIGNvcnJlY3RseS4KPgo+IE5ldyBwcm9wZXJ0eSB3b3VsZCBo
YXZlIHRvIGJlIG9wdGlvbmFsLCBzbyBpdCdzIG9taXNzaW9uIHdvdWxkIHJlc3VsdCBpbiBzYW1l
Cj4gY2hhbm5lbCBjb25maWd1cmF0aW9uIGFzIGl0IGlzIGFscmVhZHkgcHJlc2VudCwgdG8gcHJl
c2VydmUgY29tcGF0aWJpbGl0eSB3aXRoCj4gb2xkIGRldmljZSB0cmVlcy4gQW5kIHRoaXMgbW9k
ZSBpcyBhbHJlYWR5IHN1ZmZpY2llbnQgZm9yIHN0ZXJlbyBIRE1JIGF1ZGlvCj4gc3VwcG9ydC4K
ClllYWgsIGl0IGxvb2tzIGxpa2UgYSBnb29kIHBsYW4uCgo+IFNpZGUgbm90ZTogSERNSSBhdWRp
byB3aXRoIGN1cnJlbnQgc3VuNGktaTJzIGRyaXZlciBoYXMgYSBkZWxheSAoYWJvdXQgYQo+IHNl
Y29uZCksIHN1cHBvc2VkbHkgYmVjYXVzZSBEVyBIRE1JIGNvbnRyb2xsZXIgYXV0b21hdGljYWxs
eSBnZW5lcmF0ZXMgQ1RTCj4gdmFsdWUgYmFzZWQgb24gSTJTIGNsb2NrIChhdXRvIENUUyB2YWx1
ZSBnZW5lcmF0aW9uIGlzIGVuYWJsZWQgcGVyIERlc2lnbldhcmUKPiByZWNvbWVuZGF0aW9uIGZv
ciBEVyBIRE1JIEkyUyBpbnRlcmZhY2UpLgoKSXMgdGhhdCBhIGNvbnN0YW50IGRlbGF5IGR1cmlu
ZyB0aGUgYXVkaW8gcGxheWJhY2ssIG9yIG9ubHkgYXQgc3RhcnR1cD8KCj4gSTJTIGRyaXZlciBm
cm9tIEJTUCBMaW51eCBzb2x2ZXMgdGhhdCBieSBoYXZpbmcgSTJTIGNsb2NrIG91dHB1dAo+IGVu
YWJsZWQgYWxsIHRoZSB0aW1lLiBTaG91bGQgdGhpcyBiZSBmbGFnZ2VkIHdpdGggc29tZSBhZGRp
dGlvbmFsCj4gcHJvcGVydHkgaW4gRFQ/CgpJJ2Qgc2F5IHRoYXQgaWYgdGhlIGNvZGVjIGhhcyB0
aGF0IHJlcXVpcmVtZW50LCB0aGVuIGl0IHNob3VsZCBiZQpiZXR3ZWVuIHRoZSBjb2RlYyBhbmQg
dGhlIERBSSwgdGhlIERUIGRvZXNuJ3QgcmVhbGx5IGhhdmUgYW55dGhpbmcgdG8KZG8gd2l0aCB0
aGlzLgoKTWF4aW1lCgotLQpNYXhpbWUgUmlwYXJkLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFu
ZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
