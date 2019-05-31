Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B0B30E57
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 14:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0gMAhCxOgEsIJoEVz5OH7OtFDJhsrIuntMa2zJEvlA=; b=cgKIt1u/fERvHR
	UICgQ1XByKryJJ4GI04HhULawLFC4U3tLri+kZXjkmmbGEqflT80UZXuXdA+yok8nQOs7lEQibyaV
	bMRJDTbt8vym5+4dsolraTvgYIZnhIYs8MrLP439m6FjvqKPQyn46+ZSkqmdjV2VGD250auHu8Aht
	tLZiMvUZUdg5bFFGXBSHLO61Fe6qwaKNyVW69PtAh/GcaYvKsXDRbQcfhW4DHRp8w9YSZX24TZdJP
	WTxSyzANO7MjtwlYnjRdSVGpy17CVaZxPWhXzOiT1vGYsjpib4alR1YyCICfHFjKlAekqulv51H9p
	NUam3v7sUKTjm6f03rTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWgvn-00015g-9D; Fri, 31 May 2019 12:46:47 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWgve-00014g-Jj
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 12:46:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1559306791; bh=Vq6PHN+aRiKBxc4hddRHLSZfiSd9bUvG627zPC4o9vY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r7SNqaIwNqwOb9guoWHE+5kcqm8Eu7YcYIULLPtYivZ8AwmvJo/eJZGEmRO1PppSD
 sTdI0zKF207BU/1eEZQuURPmnPPtCk//a5UQlBB0RqHTU9jsBnN14mUimA6O4If6tq
 3YsMz2n2ah8SkyCqn84s9ElTauLkHFeD0Xypwu1E=
Date: Fri, 31 May 2019 14:46:30 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v3 10/12] arm64: dts: allwinner: h6:
 Add IR receiver node
Message-ID: <20190531124630.q2guo54kjfzr7rkn@core.my.home>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCce7nHSktVsDKcR8GLRpD3WrN5yP3Nb_Hbu_Q9NjUQbSMw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_054638_981874_259386D6 
X-CRM114-Status: GOOD (  25.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

SGVsbG8gQ2zDqW1lbnQsCgpPbiBGcmksIE1heSAzMSwgMjAxOSBhdCAxMjoyNTozMkFNICswMjAw
LCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gSGkgT25kcmVqLAo+IAo+IE9uIFRodSwgMzAgTWF5
IDIwMTkgYXQgMTY6NTUsIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4gd3JvdGU6
Cj4gPgo+ID4gSGVsbG8gQ2zDqW1lbnQsCj4gPgo+ID4gT24gVHVlLCBNYXkgMjgsIDIwMTkgYXQg
MDY6MTQ6MzhQTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gPiBBbGx3aW5uZXIg
SDYgSVIgaXMgc2ltaWxhciB0byBBMzEgYW5kIGNhbiB1c2Ugc2FtZSBkcml2ZXIuCj4gPiA+Cj4g
PiA+IEFkZCBzdXBwb3J0IGZvciBpdC4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2zDqW1l
bnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSB8IDE5ICsrKysrKysrKysrKysr
KysrKysKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCj4gPiA+IGlu
ZGV4IDE2YzVjM2QwZmQ4MS4uNjQ5Y2JkZmU0NTJlIDEwMDY0NAo+ID4gPiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+ID4gPiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+ID4gPiBAQCAtNjQ3LDYgKzY0
NywyNSBAQAo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwaW5zID0gIlBMMCIs
ICJQTDEiOwo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmdW5jdGlvbiA9ICJz
X2kyYyI7Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gPiArCj4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICByX2lyX3J4X3Bpbjogci1pci1yeC1waW4gewo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBwaW5zID0gIlBMOSI7Cj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGZ1bmN0aW9uID0gInNfY2lyX3J4IjsKPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgIH07Cj4gPiA+ICsgICAgICAgICAgICAgfTsKPiA+ID4gKwo+ID4gPiArICAgICAg
ICAgICAgIHJfaXI6IGlyQDcwNDAwMDAgewo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBjb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYtaXIiLAo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImFsbHdpbm5lcixzdW42aS1hMzEt
aXIiOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwNzA0MDAw
MCAweDQwMD47Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludGVycnVwdHMg
PSA8R0lDX1NQSSAxMDkgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmcl9jY3UgQ0xLX1JfQVBCMV9JUj4sCj4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmcl9jY3UgQ0xLX0lSPjsKPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYXBiIiwgImly
IjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVzZXRzID0gPCZyX2NjdSBS
U1RfUl9BUEIxX0lSPjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cGluY3RybC0wID0gPCZyX2lyX3J4X3Bpbj47Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiA+ICAgICAgICAgICAgICAgfTsKPiA+Cj4g
PiBQbGVhc2UgbWFrZSBhIGNvbW1lbnQgaGVyZSwgdGhhdCB0aGlzIGlzIGtub3duIGJyb2tlbiBv
biBzb21lIGJvYXJkcyBhbmQgbWF5Cj4gPiByZXN1bHQgSVJRIGZsb29kIGlmIGVuYWJsZWQuIE90
aGVyd2lzZSBub29uZSB3aWxsIGtub3cuCj4gCj4gSSdtIHBsYW5uaW5nIHRvIHNlbmQgYSB2NCBu
ZXh0IHdlZWsgd2l0aCB0aGUgSVJRX05PTkUgcmV0dXJuIGFzIE1heGltZQo+IHN1Z2dlc3RlZCBp
dC4KPiBodHRwczovL2dpdGh1Yi5jb20vY2xlbWVudHBlcm9uL2xpbnV4L3RyZWUvaDZfaXJfdjQK
PiAKPiBCdXQgbWF5YmUgd2UgY291bGQgYWxzbyB1c2UgdGhlIGJpdCA1IG9mIHRoZSBJUlEgc3Rh
dHVzLgoKVGhhbmtzLCB0aGF0J3MgbmljZSwgYnV0IHRoYXQgd2lsbCBub3QgbWFrZSB0aGUgSFcg
d29yay4gVGhhdCB3aWxsIGp1c3QgZGlzYWJsZQppdC4gVGhlIGNvbW1lbnQgaXMgc3RpbGwgbmVj
ZXNzYXJ5LgoKdGhhbmsgeW91LAoJby4KCj4gUmVnYXJkcywgQ2xlbWVudAo+IAo+ID4KPiA+IHRo
YW5rcywKPiA+ICAgICAgICAgby4KPiA+Cj4gPiA+ICAgICAgICAgICAgICAgcl9pMmM6IGkyY0A3
MDgxNDAwIHsKPiA+ID4gLS0KPiA+ID4gMi4yMC4xCj4gPiA+Cj4gPiA+Cj4gPiA+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+IGxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0Cj4gPiA+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+ID4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwKPiAKPiAtLSAKPiBZb3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJlY2F1
c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBHb29nbGUgR3JvdXBzICJsaW51eC1zdW54aSIg
Z3JvdXAuCj4gVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2Vpdmlu
ZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBsaW51eC1zdW54aSt1bnN1YnNjcmli
ZUBnb29nbGVncm91cHMuY29tLgo+IFRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIs
IHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9saW51eC1zdW54aS9DQUpp
dUNjZTduSFNrdFZzREtjUjhHTFJwRDNXck41eVAzTmJfSGJ1X1E5TmpVUWJTTXclNDBtYWlsLmdt
YWlsLmNvbS4KPiBGb3IgbW9yZSBvcHRpb25zLCB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29nbGUu
Y29tL2Qvb3B0b3V0LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
