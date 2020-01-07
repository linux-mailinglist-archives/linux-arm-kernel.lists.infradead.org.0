Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA31F132776
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 14:20:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yiSnCaukGmCJExt/vTmrDEkMCKLKjI01c/2bEyt+fbg=; b=ZCLna6N4WMikoJ
	lHwHp5ERjne4qHmsGoZnIh++Hpz41UoP8qBrUlrDMfgejZBhcw6B7x0BwudXHla6TkqWYgRriRoV9
	Ryrq/m4bh6RiCjL31szPdBVzIquFmeKHb/uKAM3qVs0fQl5jw6/JGXrQlhZk3tyNzsb1O4MNi7prK
	0wKmHaXMU6z7vm1Fd06Ok03tz5B+qhT/SsTHH0AMDMyoMzRMt256rUPRC+paVEPpviywWFPjJ40hw
	Po5g1p5K2YFSRkgv0PzRyD8TSv+8UwlwNfzjSkujqzU+DmYMAdrlqBye/OebiWaecNjSgNfEe++qG
	UJSkYampnQWPbFGnvauA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioomi-00081k-S9; Tue, 07 Jan 2020 13:20:36 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iooma-00080X-Si; Tue, 07 Jan 2020 13:20:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 75A0B2909E6
Message-ID: <657de953782be2514849bc8bd12a3fbcb6794427.camel@collabora.com>
Subject: Re: [PATCH v12 09/11] media: staging: dt-bindings: add Rockchip
 MIPI RX D-PHY yaml bindings
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>
Date: Tue, 07 Jan 2020 10:20:10 -0300
In-Reply-To: <2549505.MsbA2le1sL@diego>
References: <20191227200116.2612137-1-helen.koike@collabora.com>
 <cfd5156f09358a428d0c40cfcd17d688e0225f2b.camel@collabora.com>
 <20200107023721.GG22189@pendragon.ideasonboard.com>
 <2549505.MsbA2le1sL@diego>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_052029_217465_A8B8BDBD 
X-CRM114-Status: GOOD (  25.70  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 tfiga@chromium.org, linux-rockchip@lists.infradead.org,
 Helen Koike <helen.koike@collabora.com>, robh+dt@kernel.org,
 hans.verkuil@cisco.com, linux-arm-kernel@lists.infradead.org,
 sakari.ailus@linux.intel.com, joacim.zetterling@gmail.com, mchehab@kernel.org,
 andrey.konovalov@linaro.org, jacob-chen@iotwrt.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sIExhdXJlbnQsCgpPbiBUdWUsIDIwMjAtMDEtMDcgYXQgMTA6MjggKzAxMDAsIEhl
aWtvIFN0w7xibmVyIHdyb3RlOgo+IEFtIERpZW5zdGFnLCA3LiBKYW51YXIgMjAyMCwgMDM6Mzc6
MjEgQ0VUIHNjaHJpZWIgTGF1cmVudCBQaW5jaGFydDoKPiA+IE9uIE1vbiwgSmFuIDA2LCAyMDIw
IGF0IDExOjA2OjEyUE0gLTAzMDAsIEV6ZXF1aWVsIEdhcmNpYSB3cm90ZToKPiA+ID4gT24gVHVl
LCAyMDIwLTAxLTA3IGF0IDAyOjEwICswMjAwLCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+ID4g
PiA+IEhpIEhlbGVuLAo+ID4gPiA+IAo+ID4gPiA+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgo+
ID4gPiA+IAo+ID4gPiA+IE9uIEZyaSwgRGVjIDI3LCAyMDE5IGF0IDA1OjAxOjE0UE0gLTAzMDAs
IEhlbGVuIEtvaWtlIHdyb3RlOgo+ID4gPiA+ID4gQWRkIHlhbWwgRFQgYmluZGluZ3MgZm9yIFJv
Y2tjaGlwIE1JUEkgRC1QSFkgUlgKPiA+ID4gPiA+IAo+ID4gPiA+ID4gVGhpcyB3YXMgdGVzdGVk
IGFuZCB2ZXJpZmllZCB3aXRoOgo+ID4gPiA+ID4gbXYgZHJpdmVycy9zdGFnaW5nL21lZGlhL3Bo
eS1yb2NrY2hpcC1kcGh5L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9j
a2NoaXAtbWlwaS0KPiA+ID4gPiA+IGRwaHkueWFtbCAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS8KPiA+ID4gPiA+IG1ha2UgZHRfYmluZGluZ19jaGVjayBEVF9TQ0hFTUFf
RklMRVM9RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcC1taXBp
LWRwaHkueWFtbAo+ID4gPiA+ID4gbWFrZSBkdGJzX2NoZWNrIERUX1NDSEVNQV9GSUxFUz1Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLW1pcGktZHBoeS55YW1s
Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEhlbGVuIEtvaWtlIDxoZWxlbi5r
b2lrZUBjb2xsYWJvcmEuY29tPgo+ID4gPiA+ID4gCj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+IAo+
ID4gPiA+ID4gQ2hhbmdlcyBpbiB2MTI6Cj4gPiA+ID4gPiAtIFRoZSBjb21taXQgcmVwbGFjZXMg
dGhlIGZvbGxvd2luZyBjb21taXQgaW4gcHJldmlvdXMgc2VyaWVzIG5hbWVkCj4gPiA+ID4gPiBt
ZWRpYTogc3RhZ2luZzogZHQtYmluZGluZ3M6IERvY3VtZW50IHRoZSBSb2NrY2hpcCBNSVBJIFJY
IEQtUEhZIGJpbmRpbmdzCj4gPiA+ID4gPiBUaGlzIG5ldyBwYXRjaCBhZGRzIHlhbWwgYmluZGlu
ZyBhbmQgd2FzIHZlcmlmaWVkIHdpdGgKPiA+ID4gPiA+IG1ha2UgZHRic19jaGVjayBhbmQgbWFr
ZSBkdF9iaW5kaW5nX2NoZWNrCj4gPiA+ID4gPiAKPiA+ID4gPiA+IENoYW5nZXMgaW4gdjExOiBO
b25lCj4gPiA+ID4gPiBDaGFuZ2VzIGluIHYxMDoKPiA+ID4gPiA+IC0gdW5zcXVhc2gKPiA+ID4g
PiA+IAo+ID4gPiA+ID4gQ2hhbmdlcyBpbiB2OToKPiA+ID4gPiA+IC0gZml4IHRpdGxlIGRpdmlz
aW9uIHN0eWxlCj4gPiA+ID4gPiAtIHNxdWFzaAo+ID4gPiA+ID4gLSBtb3ZlIHRvIHN0YWdpbmcK
PiA+ID4gPiA+IAo+ID4gPiA+ID4gQ2hhbmdlcyBpbiB2ODogTm9uZQo+ID4gPiA+ID4gQ2hhbmdl
cyBpbiB2NzoKPiA+ID4gPiA+IC0gdXBkYXRlZCBkb2Mgd2l0aCBuZXcgZGVzaWduIGFuZCB0ZXN0
ZWQgZXhhbXBsZQo+ID4gPiA+ID4gCj4gPiA+ID4gPiAgLi4uL2JpbmRpbmdzL3BoeS9yb2NrY2hp
cC1taXBpLWRwaHkueWFtbCAgICAgIHwgNzUgKysrKysrKysrKysrKysrKysrKwo+ID4gPiA+ID4g
IDEgZmlsZSBjaGFuZ2VkLCA3NSBpbnNlcnRpb25zKCspCj4gPiA+ID4gPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9waHktcm9ja2NoaXAtZHBoeS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLW1pcGktZHBoeS55YW1sCj4gPiA+
ID4gPiAKPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcGh5LXJv
Y2tjaGlwLWRwaHkvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hp
cC1taXBpLWRwaHkueWFtbAo+ID4gPiA+ID4gYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcGh5LQo+
ID4gPiA+ID4gcm9ja2NoaXAtZHBoeS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L3JvY2tjaGlwLW1pcGktZHBoeS55YW1sCj4gPiA+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+ID4gPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5hZjk3ZjFiM2UwMDUKPiA+ID4gPiA+IC0t
LSAvZGV2L251bGwKPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9waHktcm9j
a2NoaXAtZHBoeS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlw
LW1pcGktZHBoeS55YW1sCj4gPiA+ID4gPiBAQCAtMCwwICsxLDc1IEBACj4gPiA+ID4gPiArIyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKPiA+ID4gPiA+ICslWUFN
TCAxLjIKPiA+ID4gPiA+ICstLS0KPiA+ID4gPiA+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9zY2hlbWFzL3BoeS9yb2NrY2hpcC1taXBpLWRwaHkueWFtbCMKPiA+ID4gPiA+ICskc2NoZW1h
OiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiA+ID4gPiA+
ICsKPiA+ID4gPiA+ICt0aXRsZTogUm9ja2NoaXAgU29DIE1JUEkgUlgwIEQtUEhZIERldmljZSBU
cmVlIEJpbmRpbmdzCj4gPiA+ID4gCj4gPiA+ID4gU2hvdWxkIHRoaXMgYmUgcy9SWDAvUlgvID8g
T3IgZG8geW91IGV4cGVjdCBkaWZmZXJlbnQgYmluZGluZ3MgZm9yIFJYMSA/Cj4gPiA+IAo+ID4g
PiBUaGUgZHJpdmVyIGN1cnJlbnRseSBvbmx5IHN1cHBvcnRzIFJYMCwgYnV0IEkgdGhpbmsgeW91
IGFyZSByaWdodCwKPiA+ID4gaXQgc2hvdWxkIHNheSBSWCBoZXJlLiBUaGlzIGJpbmRpbmcgY291
bGQgYmUgZXh0ZW5kZWQgZm9yIFJYMS4KPiA+ID4gCj4gPiA+ID4gTG9va2luZyBhdCB0aGUgUEhZ
IGRyaXZlciwgaXQgc2VlbXMgdG8gaGFuZGxlIGFsbCBQSFlzIHdpdGggYSBzaW5nbGUKPiA+ID4g
PiBzdHJ1Y3QgZGV2aWNlLiBTaG91bGQgd2UgdGh1cyB1c2UgI3BoeS1jZWxscyA9IDwxPiB0byBz
ZWxlY3QgdGhlIFBIWSA/Cj4gPiA+IAo+ID4gPiBJIGFtIG5vdCBmb2xsb3dpbmcgdGhpcy4gVGhl
IGRyaXZlciBoYW5kbGVzIGp1c3Qgb25lIFBIWS4gRWFjaCBQSFkKPiA+ID4gc2hvdWxkIGhhdmUg
aXRzIG93biBub2RlLgo+ID4gCj4gPiBMb29raW5nIGF0IHRoZSByZWdpc3RlcnMsIGl0IHNlZW1z
IHRoYXQgdGhlIGRpZmZlcmVudCBQSFlzIGFyZQo+ID4gaW50ZXJ0d2luZWQgYW5kIHdlIHdvdWxk
IGNvdWxkIGhhdmUgdHJvdWJsZSBoYW5kbGluZyB0aGUgZGlmZmVyZW50IFBIWXMKPiA+IHdpdGgg
ZGlmZmVyZW50IERUIG5vZGVzIGFuZCB0aHVzIHN0cnVjdCBkZXZpY2UgaW5zdGFuY2VzLgo+IAo+
IEkgaGF2ZSB0byBjb25mZXNzIHRvIG5vdCBmb2xsb3dpbmcgX0FMTF8gb2YgdGhlIHRocmVhZHMs
IHNvIG1heSBzYXkKPiBzb21ldGhpbmcgc3R1cGlkLCBidXQgSSBkb24ndCB0aGluayB0aGUgUEhZ
cyBhcmUgaW50ZXJ0d2luZWQgc28gbXVjaC4KPiAKPiBXaGVyZSBSWDAgaXMgY29udHJvbGxlZCBm
cm9tIHRoZSAiR2VuZXJhbCBSZWdpc3RlciBGaWxlcyIgYWxvbmUKPiBbcmVnaXN0ZXIgZHVtcGlu
ZyBncm91bmQgZm9yIHNvYyBkZXNpZ25lcnNdLCB0aGUgVFgxUlgxLXBoeQo+IGFjdHVhbGx5IGdl
dHMgY29udHJvbGxlZCBmcm9tIGluc2lkZSB0aGUgZHNpMSByZWdpc3RlciBhcmVhIGl0IHNlZW1z
Lgo+IAo+IFNvIGluIG15IHByZXZpb3VzIChzdGlsbCB1bnN1Y2Vzc2Z1bCkgdGVzdHMsIEkgd2Fz
IHJvbGxpbmcgd2l0aCBzb21ldGhpbmcgbGlrZQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9tbWluZC9s
aW51eC1yb2NrY2hpcC9jb21taXQvZTBkNGIwMzk3NmQyYWFiODVhOGMxNjMwYmU5MzdlYTAwM2I1
ZGY4OAo+IAo+IFdpdGggdGhlIGFjdHVhbCAibG9naWMiIHBpY2tlZCBmcm9tIHRoZSB2ZW5kb3Ig
a2VybmVsLCB0aGF0IGp1c3QgZG91YmxlLQo+IG1hcHMgdGhlIGRzaTEtcmVnaXN0ZXJzIGluIGJv
dGggZHNpIGFuZCBkcGh5IGRyaXZlciwgd2hpY2ggd2FzIHN0cmFuZ2UuCj4gCj4gCgpEZXNjcmli
aW5nIGVhY2ggUEhZIGluIGl0cyBvd24gZGV2aWNlIG5vZGUgKGFzIHdlIGN1cnJlbnRseSBkbykK
cmVzdWx0cyBpbjoKCiAgICAgICAgbWlwaV9kcGh5X3R4MXJ4MTogbWlwaS1kcGh5LXR4MXJ4MUBm
Zjk2ODAwMCB7CiAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1t
aXBpLWRwaHkiOwogICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweGZmOTY4MDAwIDB4MCAweDgw
MDA+OwogICAgICAgICAgICAgICAgcm9ja2NoaXAsZ3JmID0gPCZncmY+OwogICAgICAgIH07Cgog
ICAgICAgIGdyZjogc3lzY29uQGZmNzcwMDAwIHsKICAgICAgICAgICAgICAgIG1pcGlfZHBoeV9y
eDA6IG1pcGktZHBoeS1yeDAgewogICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0g
InJvY2tjaGlwLHJrMzM5OS1taXBpLWRwaHkiOwogICAgICAgICAgICAgICAgfTsKICAgICAgICB9
OwoKV2hpY2ggaXMgbWlsZGx5IHVnbHksIGFzIGl0IHVzZXMgdHdvIG1lY2hhbmlzbSB0byBkZXNj
cmliZQp0aGUgR1JGIHJlc291cmNlLiBJbiBhZGRpdGlvbiwgdGhlIGRyaXZlciB3aWxsIHRoZW4g
X2luZmVyXwp3aGljaCBkZXZpY2Ugbm9kZSBpcyBSWDAgYW5kIHdoaWNoIGlzIFRYMVJYMSwgZnJv
bSB0aGlzLgoKUGVyaGFwcyBMYXVyZW50J3MgcHJvcG9zYWwsIGRlc2NyaWJpbmcgZWFjaCBQSFkg
ZXhwbGljaXRseSwKd291bGQgYmUgY2xlYW5lcj8KClRoYW5rcywKRXplcXVpZWwKCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
