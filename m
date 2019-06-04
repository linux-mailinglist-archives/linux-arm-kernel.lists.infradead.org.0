Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FED2346E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p14jobBPLBBbp7W/u0YX327PNFjJMBhTynW7FMaUlFg=; b=sAyC/lIAdwI9xs
	AilhC3q469RrqqPFouavcbJ/s6hZrHrNQPyTsy3t0slBi8r8X7Lr+rj6Ag4l4I7PxxIhkFMouKcPX
	0uwbN1+jluQBwI3770QlNuJo0CNV2vunWEAp8/VJnIiALGT0BLc0pkRhZBcmCvwkKEQ2fA6RK9QvA
	GtNG5SMoseEwKy1VNG3vkPV57VTCRU4irZxMgZdY4fUWS7fGsRcXWoueVpH3iqrpHJI9t4mwN1/xP
	JAtKP2TsQaG4fbG+Ul7tUyMfHn5HWxWjZSn57mk434lsmAUxXwNfN5MGit8wPXFJnKoEKTrfc9zam
	ui5t4A/7qr6V3s8HTTUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8dj-0000Vg-KJ; Tue, 04 Jun 2019 12:34:07 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8db-0000Uo-N1
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:34:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1559651635; bh=BxxySmvFXnZjtb/3jRvUJ5xAJWsfsR3yPsxl6YMjSdM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XZ/J6YzqPnmG5/SSvTvNnIbG0FUOkSx2ZzQtC2SWzbRGDLTHYkE/9TjTjVyQbLjwx
 47yTGEb8HeV2BYxRL9AEQDawcAw4Xg5XA3dxUN+GjP2OZnpImMdeH2zuif20Li4lz3
 84MgE3lXOKt37uWn9fPy3MVThkkGtU93JB4rXP6Y=
Date: Tue, 4 Jun 2019 14:33:55 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v3 10/12] arm64: dts: allwinner: h6:
 Add IR receiver node
Message-ID: <20190604123355.m47ufmhtzuzfvmp7@core.my.home>
Mail-Followup-To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
References: <20190528161440.27172-1-peron.clem@gmail.com>
 <20190528161440.27172-11-peron.clem@gmail.com>
 <20190530145550.amalnxmx7kpokykv@core.my.home>
 <CAJiuCce7nHSktVsDKcR8GLRpD3WrN5yP3Nb_Hbu_Q9NjUQbSMw@mail.gmail.com>
 <20190531124630.q2guo54kjfzr7rkn@core.my.home>
 <CAJiuCcdMftAjCwk2_naE9VBGGqS=OY9xcqv6+5pDX2Z8O=L28w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCcdMftAjCwk2_naE9VBGGqS=OY9xcqv6+5pDX2Z8O=L28w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_053400_245982_21B4B4F5 
X-CRM114-Status: GOOD (  28.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2zDqW1lbnQsCgpPbiBNb24sIEp1biAwMywgMjAxOSBhdCAwOTo1ODoyM1BNICswMjAwLCBD
bMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gSGkgT25kcmVqLAo+IAo+IE9uIEZyaSwgMzEgTWF5IDIw
MTkgYXQgMTQ6NDYsIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4gd3JvdGU6Cj4g
Pgo+ID4gSGVsbG8gQ2zDqW1lbnQsCj4gPgo+ID4gT24gRnJpLCBNYXkgMzEsIDIwMTkgYXQgMTI6
MjU6MzJBTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gPiBIaSBPbmRyZWosCj4g
PiA+Cj4gPiA+IE9uIFRodSwgMzAgTWF5IDIwMTkgYXQgMTY6NTUsIE9uZMWZZWogSmlybWFuIDxt
ZWdvdXNAbWVnb3VzLmNvbT4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBIZWxsbyBDbMOpbWVudCwK
PiA+ID4gPgo+ID4gPiA+IE9uIFR1ZSwgTWF5IDI4LCAyMDE5IGF0IDA2OjE0OjM4UE0gKzAyMDAs
IENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+ID4gPiA+IEFsbHdpbm5lciBINiBJUiBpcyBzaW1p
bGFyIHRvIEEzMSBhbmQgY2FuIHVzZSBzYW1lIGRyaXZlci4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBB
ZGQgc3VwcG9ydCBmb3IgaXQuCj4gPiA+ID4gPgo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2zD
qW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+
ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIHwgMTkgKysr
KysrKysrKysrKysrKysrKwo+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25z
KCspCj4gPiA+ID4gPgo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
c3VuNTBpLWg2LmR0c2kKPiA+ID4gPiA+IGluZGV4IDE2YzVjM2QwZmQ4MS4uNjQ5Y2JkZmU0NTJl
IDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LmR0c2kKPiA+ID4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNi5kdHNpCj4gPiA+ID4gPiBAQCAtNjQ3LDYgKzY0NywyNSBAQAo+ID4gPiA+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGlucyA9ICJQTDAiLCAiUEwxIjsKPiA+ID4g
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZ1bmN0aW9uID0gInNfaTJjIjsKPiA+
ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgIHJfaXJfcnhfcGluOiByLWlyLXJ4LXBpbiB7Cj4gPiA+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwaW5zID0gIlBMOSI7Cj4gPiA+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBmdW5jdGlvbiA9ICJzX2Npcl9yeCI7Cj4gPiA+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgfTsKPiA+
ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgcl9pcjogaXJANzA0MDAwMCB7Cj4gPiA+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImFsbHdpbm5l
cixzdW41MGktaDYtaXIiLAo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICJhbGx3aW5uZXIsc3VuNmktYTMxLWlyIjsKPiA+ID4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDA3MDQwMDAwIDB4NDAwPjsKPiA+ID4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSAxMDkg
SVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBjbG9ja3MgPSA8JnJfY2N1IENMS19SX0FQQjFfSVI+LAo+ID4gPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZyX2NjdSBDTEtfSVI+Owo+ID4gPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYXBiIiwgImlyIjsK
PiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlc2V0cyA9IDwmcl9jY3Ug
UlNUX1JfQVBCMV9JUj47Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBw
aW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcGluY3RybC0wID0gPCZyX2lyX3J4X3Bpbj47Cj4gPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gPiA+ID4gICAgICAg
ICAgICAgICB9Owo+ID4gPiA+Cj4gPiA+ID4gUGxlYXNlIG1ha2UgYSBjb21tZW50IGhlcmUsIHRo
YXQgdGhpcyBpcyBrbm93biBicm9rZW4gb24gc29tZSBib2FyZHMgYW5kIG1heQo+ID4gPiA+IHJl
c3VsdCBJUlEgZmxvb2QgaWYgZW5hYmxlZC4gT3RoZXJ3aXNlIG5vb25lIHdpbGwga25vdy4KPiA+
ID4KPiA+ID4gSSdtIHBsYW5uaW5nIHRvIHNlbmQgYSB2NCBuZXh0IHdlZWsgd2l0aCB0aGUgSVJR
X05PTkUgcmV0dXJuIGFzIE1heGltZQo+ID4gPiBzdWdnZXN0ZWQgaXQuCj4gPiA+IGh0dHBzOi8v
Z2l0aHViLmNvbS9jbGVtZW50cGVyb24vbGludXgvdHJlZS9oNl9pcl92NAo+ID4gPgo+ID4gPiBC
dXQgbWF5YmUgd2UgY291bGQgYWxzbyB1c2UgdGhlIGJpdCA1IG9mIHRoZSBJUlEgc3RhdHVzLgo+
ID4KPiA+IFRoYW5rcywgdGhhdCdzIG5pY2UsIGJ1dCB0aGF0IHdpbGwgbm90IG1ha2UgdGhlIEhX
IHdvcmsuIFRoYXQgd2lsbCBqdXN0IGRpc2FibGUKPiA+IGl0LiBUaGUgY29tbWVudCBpcyBzdGls
bCBuZWNlc3NhcnkuCj4gSSBoYXZlIHB1c2hlZCBhIG5ldyB2ZXJzaW9uIG9uIG15IGdpdGh1Yi4K
PiBodHRwczovL2dpdGh1Yi5jb20vY2xlbWVudHBlcm9uL2xpbnV4L2NvbW1pdHMvaDZfaXJfdjQK
PiAKPiBJIHdpbGwgc3VibWl0IGl0LCBpZiB5b3UgYXJlIG9rIHdpdGggaXQuCgp0aGUgY2hhbmdl
cyBtYWtlIGl0IHdvcnNlLiBDb25zb2xlIGlzIGZsb29kZWQgd2l0aCAiVGVtcG9yYXJpbHkgZGlz
YWJsZSBJUlEiCmFuZCBvdGhlciBzeW1wdG9tcyBhcmUgdGhlIHNhbWUgYXMgSSBkZXNjcmliZWQg
YmVmb3JlLiBJbnRlcnJ1cHRzIGFyZSBub3QKZGlzYWJsZWQgaW4gYSBhbnkgcmVhc29uYWJsZSB0
aW1lLiAoSSd2ZSB3YWl0ZWQgZm9yIG1vcmUgPiA1bWlucyBhbHJlYWR5LikKCllvdSBwcm9iYWJs
eSBuZWVkIHRvIGRpc2FibGUgaW50ZXJydXB0cyByaWdodCBhd2F5LCBub3Qgd2FpdCBmb3IgMTAw
ayBmYWlsdXJlcy4KCnRoYW5rIHlvdSBhbmQgcmVnYXJkcywKCW8uCgo+IFRoYW5rcywKPiBDbMOp
bWVudAo+IAo+ID4KPiA+IHRoYW5rIHlvdSwKPiA+ICAgICAgICAgby4KPiA+Cj4gPiA+IFJlZ2Fy
ZHMsIENsZW1lbnQKPiA+ID4KPiA+ID4gPgo+ID4gPiA+IHRoYW5rcywKPiA+ID4gPiAgICAgICAg
IG8uCj4gPiA+ID4KPiA+ID4gPiA+ICAgICAgICAgICAgICAgcl9pMmM6IGkyY0A3MDgxNDAwIHsK
PiA+ID4gPiA+IC0tCj4gPiA+ID4gPiAyLjIwLjEKPiA+ID4gPiA+Cj4gPiA+ID4gPgo+ID4gPiA+
ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4g
PiA+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gPiA+ID4gPiBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+ID4gPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo+ID4gPgo+ID4gPiAtLQo+ID4g
PiBZb3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRv
IHRoZSBHb29nbGUgR3JvdXBzICJsaW51eC1zdW54aSIgZ3JvdXAuCj4gPiA+IFRvIHVuc3Vic2Ny
aWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNl
bmQgYW4gZW1haWwgdG8gbGludXgtc3VueGkrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4K
PiA+ID4gVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHdlYiwgdmlzaXQgaHR0cHM6Ly9n
cm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2xpbnV4LXN1bnhpL0NBSml1Q2NlN25IU2t0VnNES2NS
OEdMUnBEM1dyTjV5UDNOYl9IYnVfUTlOalVRYlNNdyU0MG1haWwuZ21haWwuY29tLgo+ID4gPiBG
b3IgbW9yZSBvcHRpb25zLCB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2Qvb3B0b3V0
Lgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
