Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DC313356F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 23:04:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9rNIe8mQ9QZ43W7aPky/gTARsnxVzazQ5+i3TMciMM=; b=bEZURMRraCKORu
	3vBt09d55c+rIcnK4L4yOAKswpy/P2SRGs2RnZpKCwroc9NUmxA4r0hsjdqAP3c8XSTYdbDs0B+wJ
	2P0kxTLZZ5kG0mF1uylCpUbpGM6hrnR625anUD2m8ndS5o2GvcsnPPsELb7hqHB8unXAQifzqL79T
	Dg5w16CaBPHG8j/reiXcPBt4YxerA2balaZeM9XCx1Z2tCBogU0XC8dymHsnugzoDbbMZpPcUm3Gf
	CUFELhY3MSB4JFtiho/MJ1cG2ROr+iOJKSd/etjRTw7eT+pe4ONBbXBoRgeeIwCYy+ci2Q3d07wWb
	gI9Y/eU+XC0cY9t8M/6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iowxU-0004Bh-7k; Tue, 07 Jan 2020 22:04:16 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iowxM-0004Ar-Rr; Tue, 07 Jan 2020 22:04:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E9BE52927FC
Message-ID: <4d5a896ee0f40908365800dcd0554eb39c5d68c1.camel@collabora.com>
Subject: Re: [PATCH v12 09/11] media: staging: dt-bindings: add Rockchip
 MIPI RX D-PHY yaml bindings
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Date: Tue, 07 Jan 2020 19:03:54 -0300
In-Reply-To: <2299954.gvZHxIxoM0@diego>
References: <20191227200116.2612137-1-helen.koike@collabora.com>
 <2549505.MsbA2le1sL@diego>
 <657de953782be2514849bc8bd12a3fbcb6794427.camel@collabora.com>
 <2299954.gvZHxIxoM0@diego>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_140409_245801_E74D62B9 
X-CRM114-Status: GOOD (  30.44  )
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
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 robh+dt@kernel.org, hans.verkuil@cisco.com,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 sakari.ailus@linux.intel.com, joacim.zetterling@gmail.com, mchehab@kernel.org,
 andrey.konovalov@linaro.org, jacob-chen@iotwrt.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDIwLTAxLTA3IGF0IDIyOjMwICswMTAwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBIaSBFemVxdWllbCwKPiAKPiBBbSBEaWVuc3RhZywgNy4gSmFudWFyIDIwMjAsIDE0OjIwOjEw
IENFVCBzY2hyaWViIEV6ZXF1aWVsIEdhcmNpYToKPiA+IEhpIEhlaWtvLCBMYXVyZW50LAo+ID4g
Cj4gPiBPbiBUdWUsIDIwMjAtMDEtMDcgYXQgMTA6MjggKzAxMDAsIEhlaWtvIFN0w7xibmVyIHdy
b3RlOgo+ID4gPiBBbSBEaWVuc3RhZywgNy4gSmFudWFyIDIwMjAsIDAzOjM3OjIxIENFVCBzY2hy
aWViIExhdXJlbnQgUGluY2hhcnQ6Cj4gPiA+ID4gT24gTW9uLCBKYW4gMDYsIDIwMjAgYXQgMTE6
MDY6MTJQTSAtMDMwMCwgRXplcXVpZWwgR2FyY2lhIHdyb3RlOgo+ID4gPiA+ID4gT24gVHVlLCAy
MDIwLTAxLTA3IGF0IDAyOjEwICswMjAwLCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+ID4gPiA+
ID4gPiBIaSBIZWxlbiwKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFRoYW5rIHlvdSBmb3IgdGhl
IHBhdGNoLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gT24gRnJpLCBEZWMgMjcsIDIwMTkgYXQg
MDU6MDE6MTRQTSAtMDMwMCwgSGVsZW4gS29pa2Ugd3JvdGU6Cj4gPiA+ID4gPiA+ID4gQWRkIHlh
bWwgRFQgYmluZGluZ3MgZm9yIFJvY2tjaGlwIE1JUEkgRC1QSFkgUlgKPiA+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gPiBUaGlzIHdhcyB0ZXN0ZWQgYW5kIHZlcmlmaWVkIHdpdGg6Cj4gPiA+ID4g
PiA+ID4gbXYgZHJpdmVycy9zdGFnaW5nL21lZGlhL3BoeS1yb2NrY2hpcC1kcGh5L0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAtbWlwaS0KPiA+ID4gPiA+ID4g
PiBkcGh5LnlhbWwgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvCj4gPiA+
ID4gPiA+ID4gbWFrZSBkdF9iaW5kaW5nX2NoZWNrIERUX1NDSEVNQV9GSUxFUz1Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLW1pcGktZHBoeS55YW1sCj4gPiA+
ID4gPiA+ID4gbWFrZSBkdGJzX2NoZWNrIERUX1NDSEVNQV9GSUxFUz1Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLW1pcGktZHBoeS55YW1sCj4gPiA+ID4gPiA+
ID4gCj4gPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSGVsZW4gS29pa2UgPGhlbGVuLmtvaWtl
QGNvbGxhYm9yYS5jb20+Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4g
PiA+ID4gCj4gPiA+ID4gPiA+ID4gQ2hhbmdlcyBpbiB2MTI6Cj4gPiA+ID4gPiA+ID4gLSBUaGUg
Y29tbWl0IHJlcGxhY2VzIHRoZSBmb2xsb3dpbmcgY29tbWl0IGluIHByZXZpb3VzIHNlcmllcyBu
YW1lZAo+ID4gPiA+ID4gPiA+IG1lZGlhOiBzdGFnaW5nOiBkdC1iaW5kaW5nczogRG9jdW1lbnQg
dGhlIFJvY2tjaGlwIE1JUEkgUlggRC1QSFkgYmluZGluZ3MKPiA+ID4gPiA+ID4gPiBUaGlzIG5l
dyBwYXRjaCBhZGRzIHlhbWwgYmluZGluZyBhbmQgd2FzIHZlcmlmaWVkIHdpdGgKPiA+ID4gPiA+
ID4gPiBtYWtlIGR0YnNfY2hlY2sgYW5kIG1ha2UgZHRfYmluZGluZ19jaGVjawo+ID4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiA+IENoYW5nZXMgaW4gdjExOiBOb25lCj4gPiA+ID4gPiA+ID4gQ2hh
bmdlcyBpbiB2MTA6Cj4gPiA+ID4gPiA+ID4gLSB1bnNxdWFzaAo+ID4gPiA+ID4gPiA+IAo+ID4g
PiA+ID4gPiA+IENoYW5nZXMgaW4gdjk6Cj4gPiA+ID4gPiA+ID4gLSBmaXggdGl0bGUgZGl2aXNp
b24gc3R5bGUKPiA+ID4gPiA+ID4gPiAtIHNxdWFzaAo+ID4gPiA+ID4gPiA+IC0gbW92ZSB0byBz
dGFnaW5nCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gQ2hhbmdlcyBpbiB2ODogTm9uZQo+
ID4gPiA+ID4gPiA+IENoYW5nZXMgaW4gdjc6Cj4gPiA+ID4gPiA+ID4gLSB1cGRhdGVkIGRvYyB3
aXRoIG5ldyBkZXNpZ24gYW5kIHRlc3RlZCBleGFtcGxlCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4g
PiA+ID4gIC4uLi9iaW5kaW5ncy9waHkvcm9ja2NoaXAtbWlwaS1kcGh5LnlhbWwgICAgICB8IDc1
ICsrKysrKysrKysrKysrKysrKysKPiA+ID4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDc1IGlu
c2VydGlvbnMoKykKPiA+ID4gPiA+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9waHktcm9ja2NoaXAtZHBoeS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3JvY2tjaGlwLW1pcGktZHBoeS55YW1sCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4g
PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9waHktcm9ja2NoaXAtZHBo
eS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLW1pcGktZHBo
eS55YW1sCj4gPiA+ID4gPiA+ID4gYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcGh5LQo+ID4gPiA+
ID4gPiA+IHJvY2tjaGlwLWRwaHkvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9yb2NrY2hpcC1taXBpLWRwaHkueWFtbAo+ID4gPiA+ID4gPiA+IG5ldyBmaWxlIG1vZGUgMTAw
NjQ0Cj4gPiA+ID4gPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5hZjk3ZjFiM2UwMDUKPiA+ID4g
PiA+ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5n
L21lZGlhL3BoeS1yb2NrY2hpcC1kcGh5L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcm9ja2NoaXAtbWlwaS1kcGh5LnlhbWwKPiA+ID4gPiA+ID4gPiBAQCAtMCwwICsxLDc1
IEBACj4gPiA+ID4gPiA+ID4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBP
UiBNSVQpCj4gPiA+ID4gPiA+ID4gKyVZQU1MIDEuMgo+ID4gPiA+ID4gPiA+ICstLS0KPiA+ID4g
PiA+ID4gPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvcm9ja2NoaXAt
bWlwaS1kcGh5LnlhbWwjCj4gPiA+ID4gPiA+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVl
Lm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4g
PiArdGl0bGU6IFJvY2tjaGlwIFNvQyBNSVBJIFJYMCBELVBIWSBEZXZpY2UgVHJlZSBCaW5kaW5n
cwo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gU2hvdWxkIHRoaXMgYmUgcy9SWDAvUlgvID8gT3Ig
ZG8geW91IGV4cGVjdCBkaWZmZXJlbnQgYmluZGluZ3MgZm9yIFJYMSA/Cj4gPiA+ID4gPiAKPiA+
ID4gPiA+IFRoZSBkcml2ZXIgY3VycmVudGx5IG9ubHkgc3VwcG9ydHMgUlgwLCBidXQgSSB0aGlu
ayB5b3UgYXJlIHJpZ2h0LAo+ID4gPiA+ID4gaXQgc2hvdWxkIHNheSBSWCBoZXJlLiBUaGlzIGJp
bmRpbmcgY291bGQgYmUgZXh0ZW5kZWQgZm9yIFJYMS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBM
b29raW5nIGF0IHRoZSBQSFkgZHJpdmVyLCBpdCBzZWVtcyB0byBoYW5kbGUgYWxsIFBIWXMgd2l0
aCBhIHNpbmdsZQo+ID4gPiA+ID4gPiBzdHJ1Y3QgZGV2aWNlLiBTaG91bGQgd2UgdGh1cyB1c2Ug
I3BoeS1jZWxscyA9IDwxPiB0byBzZWxlY3QgdGhlIFBIWSA/Cj4gPiA+ID4gPiAKPiA+ID4gPiA+
IEkgYW0gbm90IGZvbGxvd2luZyB0aGlzLiBUaGUgZHJpdmVyIGhhbmRsZXMganVzdCBvbmUgUEhZ
LiBFYWNoIFBIWQo+ID4gPiA+ID4gc2hvdWxkIGhhdmUgaXRzIG93biBub2RlLgo+ID4gPiA+IAo+
ID4gPiA+IExvb2tpbmcgYXQgdGhlIHJlZ2lzdGVycywgaXQgc2VlbXMgdGhhdCB0aGUgZGlmZmVy
ZW50IFBIWXMgYXJlCj4gPiA+ID4gaW50ZXJ0d2luZWQgYW5kIHdlIHdvdWxkIGNvdWxkIGhhdmUg
dHJvdWJsZSBoYW5kbGluZyB0aGUgZGlmZmVyZW50IFBIWXMKPiA+ID4gPiB3aXRoIGRpZmZlcmVu
dCBEVCBub2RlcyBhbmQgdGh1cyBzdHJ1Y3QgZGV2aWNlIGluc3RhbmNlcy4KPiA+ID4gCj4gPiA+
IEkgaGF2ZSB0byBjb25mZXNzIHRvIG5vdCBmb2xsb3dpbmcgX0FMTF8gb2YgdGhlIHRocmVhZHMs
IHNvIG1heSBzYXkKPiA+ID4gc29tZXRoaW5nIHN0dXBpZCwgYnV0IEkgZG9uJ3QgdGhpbmsgdGhl
IFBIWXMgYXJlIGludGVydHdpbmVkIHNvIG11Y2guCj4gPiA+IAo+ID4gPiBXaGVyZSBSWDAgaXMg
Y29udHJvbGxlZCBmcm9tIHRoZSAiR2VuZXJhbCBSZWdpc3RlciBGaWxlcyIgYWxvbmUKPiA+ID4g
W3JlZ2lzdGVyIGR1bXBpbmcgZ3JvdW5kIGZvciBzb2MgZGVzaWduZXJzXSwgdGhlIFRYMVJYMS1w
aHkKPiA+ID4gYWN0dWFsbHkgZ2V0cyBjb250cm9sbGVkIGZyb20gaW5zaWRlIHRoZSBkc2kxIHJl
Z2lzdGVyIGFyZWEgaXQgc2VlbXMuCj4gPiA+IAo+ID4gPiBTbyBpbiBteSBwcmV2aW91cyAoc3Rp
bGwgdW5zdWNlc3NmdWwpIHRlc3RzLCBJIHdhcyByb2xsaW5nIHdpdGggc29tZXRoaW5nIGxpa2UK
PiA+ID4gaHR0cHM6Ly9naXRodWIuY29tL21taW5kL2xpbnV4LXJvY2tjaGlwL2NvbW1pdC9lMGQ0
YjAzOTc2ZDJhYWI4NWE4YzE2MzBiZTkzN2VhMDAzYjVkZjg4Cj4gPiA+IAo+ID4gPiBXaXRoIHRo
ZSBhY3R1YWwgImxvZ2ljIiBwaWNrZWQgZnJvbSB0aGUgdmVuZG9yIGtlcm5lbCwgdGhhdCBqdXN0
IGRvdWJsZS0KPiA+ID4gbWFwcyB0aGUgZHNpMS1yZWdpc3RlcnMgaW4gYm90aCBkc2kgYW5kIGRw
aHkgZHJpdmVyLCB3aGljaCB3YXMgc3RyYW5nZS4KPiA+ID4gCj4gPiA+IAo+ID4gCj4gPiBEZXNj
cmliaW5nIGVhY2ggUEhZIGluIGl0cyBvd24gZGV2aWNlIG5vZGUgKGFzIHdlIGN1cnJlbnRseSBk
bykKPiA+IHJlc3VsdHMgaW46Cj4gPiAKPiA+ICAgICAgICAgbWlwaV9kcGh5X3R4MXJ4MTogbWlw
aS1kcGh5LXR4MXJ4MUBmZjk2ODAwMCB7Cj4gPiAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9
ICJyb2NrY2hpcCxyazMzOTktbWlwaS1kcGh5IjsKPiA+ICAgICAgICAgICAgICAgICByZWcgPSA8
MHgwIDB4ZmY5NjgwMDAgMHgwIDB4ODAwMD47Cj4gPiAgICAgICAgICAgICAgICAgcm9ja2NoaXAs
Z3JmID0gPCZncmY+Owo+ID4gICAgICAgICB9Owo+IAo+IDB4ZmY5NjgwMDAgYWN0dWFsbHkgcmVh
bGx5IGlzIHRoZSBkc2kxIGNvbnRyb2xsZXIsIHNvIHdlJ2xsIGFscmVhZHkKPiBoYXZlIGEgbm9k
ZSBmb3IgdGhhdCBhcmVhLiBUaGF0IGlzIHRoZSByZWFzb24gSSB3ZW50IHRoYXQgd2F5IHRvIG1h
a2UKPiB0aGUgcm9ja2NoaXAtZHNpIG9wdGlvbmFsbHkgYWxzbyBiZWhhdmUgYXMgcGh5LXByb3Zp
ZGVyLgo+IAo+IFNvIHdoZW4gaXQncyB1c2VkIGluIGNvbWJpbmF0aW9uIHdpdGggZHJtIGFuZCBh
IHBhbmVsIG9yIHNvIGl0IHdpbGwKPiBiZWhhdmUgYXMgZHNpIGNvbnRyb2xsZXIsIGJ1dCB3aGVu
IHJlcXVlc3RlZCB2aWEgdGhlIHBoeS1mcmFtZXdvcmsKPiBpdCB3aWxsIGV4cG9zZSB0aGUgZHBo
eSBmdW5jdGlvbmFsaXR5Lgo+IAoKSG0sIGFuZCB3aWxsIHRoaXMgZHJpdmVyIGFsc28gc3VwcG9y
dCBSWDE/Cgo+IAo+ID4gICAgICAgICBncmY6IHN5c2NvbkBmZjc3MDAwMCB7Cj4gPiAgICAgICAg
ICAgICAgICAgbWlwaV9kcGh5X3J4MDogbWlwaS1kcGh5LXJ4MCB7Cj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1taXBpLWRwaHkiOwo+ID4g
ICAgICAgICAgICAgICAgIH07Cj4gPiAgICAgICAgIH07Cj4gPiAKPiA+IFdoaWNoIGlzIG1pbGRs
eSB1Z2x5LCBhcyBpdCB1c2VzIHR3byBtZWNoYW5pc20gdG8gZGVzY3JpYmUKPiA+IHRoZSBHUkYg
cmVzb3VyY2UuIEluIGFkZGl0aW9uLCB0aGUgZHJpdmVyIHdpbGwgdGhlbiBfaW5mZXJfCj4gPiB3
aGljaCBkZXZpY2Ugbm9kZSBpcyBSWDAgYW5kIHdoaWNoIGlzIFRYMVJYMSwgZnJvbSB0aGlzLgo+
ID4gCj4gPiBQZXJoYXBzIExhdXJlbnQncyBwcm9wb3NhbCwgZGVzY3JpYmluZyBlYWNoIFBIWSBl
eHBsaWNpdGx5LAo+ID4gd291bGQgYmUgY2xlYW5lcj8KPiAKPiBzbyBJIHJlYWxseSB0aGluayB3
ZSBzaG91bGRuJ3QgbWVyZ2UgdGhlc2UgdHdvIHRoaW5ncyB0b2dldGhlciwKPiBlc3BlY2lhbGx5
IHRvIG5vdCBicmVhayB0aGUgZHNpMSBjb250cm9sbGVyIHBhcnQuCj4gCgpJIGRvbid0IHRoaW5r
IGl0IHdvdWxkIG5lY2VzYXJpbHkgYnJlYWsgdGhlIGRzaTEgY29udHJvbGxlciBwYXJ0LgoKWW91
IGNhbiBkZWNsYXJlIGJvdGggZGV2aWNlIG5vZGVzIGFzIHNoYXJpbmcgdGhlIGFkZHJlc3MgcmVn
aW9uLAphbmQgdGhlbiB0aGUgZHJpdmVyIGNhbiByZXF1ZXN0IHRoZSBJL08gcmVzb3VyY2Ugb25s
eSB3aGVuIGl0IG5lZWRzIHRvLAppLmUuIGluIHRoZSBQSFkgLmluaXQgaG9vay4KCkl0J3Mgbm90
IHN1cGVyIG5pY2UsIGJ1dCB0aGVyZSdzIG5vIHJlYWwgcmVhc29uIHR3byBkZXZpY2VzCmNhbid0
IHNoYXJlIGFuIEkvTyBtZW1vcnkgcmVzb3VyY2UuCgpJIGxpa2UgdGhpcyBhcHByb2FjaCBiZWNh
dXNlIGl0IGV4cG9zZXMgdGhlIGRpZmZlcmVudCBQSFlzCmV4cGxpY2l0bHksIGluc3RlYWQgb2Yg
aW1wbGljaXRseS4KClRoYW5rcywKRXplcXVpZWwKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
